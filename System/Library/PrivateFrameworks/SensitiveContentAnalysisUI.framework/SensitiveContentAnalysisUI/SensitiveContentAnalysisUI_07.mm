uint64_t sub_1BC6E8E0C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_1BC759A80();
  swift_unknownObjectRetain();
  sub_1BC677DDC(v2 + 16);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  sub_1BC6E86E8(a2, v2 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState_config);
  sub_1BC6E86E8(a2, v7);
  Callbacks.init(container:config:)(a1, v7, v17);
  sub_1BC6980C0(a2);
  v8 = (v2 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks);
  v9 = v17[11];
  v8[10] = v17[10];
  v8[11] = v9;
  v8[12] = v17[12];
  v10 = v17[7];
  v8[6] = v17[6];
  v8[7] = v10;
  v11 = v17[9];
  v8[8] = v17[8];
  v8[9] = v11;
  v12 = v17[3];
  v8[2] = v17[2];
  v8[3] = v12;
  v13 = v17[5];
  v8[4] = v17[4];
  v8[5] = v13;
  v14 = v17[1];
  *v8 = v17[0];
  v8[1] = v14;
  return v2;
}

uint64_t sub_1BC6E909C()
{
  sub_1BC677DDC(v0 + 16);
  sub_1BC6980C0(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState_config);
  v1 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 176);
  v10[10] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 160);
  v10[11] = v1;
  v10[12] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 192);
  v2 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 112);
  v10[6] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 96);
  v10[7] = v2;
  v3 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 144);
  v10[8] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 128);
  v10[9] = v3;
  v4 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 48);
  v10[2] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 32);
  v10[3] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 80);
  v10[4] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 64);
  v10[5] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks + 16);
  v10[0] = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState__callbacks);
  v10[1] = v6;
  sub_1BC69811C(v10);
  v7 = OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState___observationRegistrar;
  v8 = sub_1BC759A90();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return swift_deallocClassInstance();
}

uint64_t sub_1BC6E9198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = a1;
  *&v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC08, &qword_1BC768D40);
  sub_1BC75B640();
  sub_1BC6E86E8(*v36 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI32RemoteInterventionViewController10InnerState_config, v8);

  RemoteView.init(_:)(v8, a3);
  KeyPath = swift_getKeyPath();
  v37 = a1;
  *&v38 = a2;
  v10 = sub_1BC75B640();
  (*(**v36 + 184))(&v23, v10);

  *&v36[152] = v32;
  *&v36[168] = v33;
  *&v36[184] = v34;
  *&v36[200] = v35;
  *&v36[88] = v28;
  *&v36[104] = v29;
  *&v36[120] = v30;
  *&v36[136] = v31;
  *&v36[24] = v24;
  *&v36[40] = v25;
  *&v36[56] = v26;
  *&v36[72] = v27;
  *v36 = KeyPath;
  *&v36[8] = v23;
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDDC10, &unk_1BC768D70) + 36);
  v12 = *&v36[176];
  *(v11 + 160) = *&v36[160];
  *(v11 + 176) = v12;
  *(v11 + 192) = *&v36[192];
  v13 = *&v36[112];
  *(v11 + 96) = *&v36[96];
  *(v11 + 112) = v13;
  v14 = *&v36[144];
  *(v11 + 128) = *&v36[128];
  *(v11 + 144) = v14;
  v15 = *&v36[48];
  *(v11 + 32) = *&v36[32];
  *(v11 + 48) = v15;
  v16 = *&v36[80];
  *(v11 + 64) = *&v36[64];
  *(v11 + 80) = v16;
  v17 = *&v36[16];
  *v11 = *v36;
  *(v11 + 16) = v17;
  v47 = v32;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v18 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  *(v11 + 208) = *&v36[208];
  v37 = KeyPath;
  v38 = v18;
  sub_1BC6E944C(v36, v22);
  sub_1BC66008C(&v37, &unk_1EBCDD870, &unk_1BC767848);
  v19 = sub_1BC75A980();
  LOBYTE(KeyPath) = sub_1BC75B020();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC20, qword_1BC768D80);
  v21 = a3 + *(result + 36);
  *v21 = v19;
  *(v21 + 8) = KeyPath;
  return result;
}

uint64_t sub_1BC6E944C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD870, &unk_1BC767848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteInterventionViewController.__allocating_init(facade:workflow:type:contextDictionary:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  v22 = objc_allocWithZone(v5);
  sub_1BC6E53B4(a3);
  v23 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_1BC6E3EAC(a2, a4, v15, 1, v12, v21);
  ObjectType = swift_getObjectType();
  sub_1BC6E86E8(v21, v19);
  v25 = (*(ObjectType + 96))(a1, v19);
  sub_1BC6980C0(v21);
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t RemoteInterventionViewController.init(facade:workflow:type:contextDictionary:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InterventionConfig(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1BC6E53B4(a3);
  v20 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_1BC6E3EAC(a2, a4, v13, 1, v10, v19);
  ObjectType = swift_getObjectType();
  sub_1BC6E86E8(v19, v17);
  v22 = (*(ObjectType + 96))(a1, v17);
  sub_1BC6980C0(v19);
  swift_deallocPartialClassInstance();
  return v22;
}

uint64_t RemoteInterventionViewController.init(facade:typeErasedConfig:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-v5];
  v7 = type metadata accessor for InterventionConfig(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-v12];
  sub_1BC65F494(a2, v19);
  v14 = swift_dynamicCast();
  v15 = *(v8 + 56);
  if (v14)
  {
    v15(v6, 0, 1, v7);
    sub_1BC66FCA4(v6, v13);
    ObjectType = swift_getObjectType();
    sub_1BC6E86E8(v13, v11);
    v17 = (*(ObjectType + 96))(a1, v11);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1BC6980C0(v13);
    swift_deallocPartialClassInstance();
    return v17;
  }

  else
  {
    v15(v6, 1, 1, v7);
    sub_1BC66008C(v6, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC6E9EA0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1BC6EA4EC(a1, a2);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

id RemoteInterventionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BC75BB30();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RemoteInterventionViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteInterventionViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static RemoteInterventionViewController.typeErasedConfig(workflow:contextDictionary:type:options:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6E53B4(a3);
  v14 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  a4[3] = type metadata accessor for InterventionConfig(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);

  return sub_1BC6E3EAC(a1, a2, v13, 1, v10, boxed_opaque_existential_1);
}

uint64_t sub_1BC6EA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  v5 = a4(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

void sub_1BC6EA4EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6E86E8(a2, v7);
  type metadata accessor for RemoteInterventionViewController.InnerState(0);
  v8 = swift_allocObject();
  v9 = swift_unknownObjectRetain();
  sub_1BC6E8E0C(v9, v7);
  *&v2[OBJC_IVAR___SCUIRemoteInterventionViewController_innerState] = v8;
  v51 = v8;

  sub_1BC75B630();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC58, &qword_1BC768ED8));
  v11 = sub_1BC75AD20();
  *&v3[OBJC_IVAR___SCUIRemoteInterventionViewController_controller] = v11;
  v12 = type metadata accessor for RemoteInterventionViewController();
  v50.receiver = v3;
  v50.super_class = v12;
  v13 = v11;
  v14 = objc_msgSendSuper2(&v50, sel_initWithNibName_bundle_, 0, 0);
  [v14 addChildViewController_];
  v15 = [v13 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  v17 = [v14 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = [v13 view];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  [v17 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC768CD0;
  v21 = [v14 view];

  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = [v21 leadingAnchor];

  v23 = [v13 view];
  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v20 + 32) = v26;
  v27 = [v14 view];

  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = [v27 trailingAnchor];

  v29 = [v13 view];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v20 + 40) = v32;
  v33 = [v14 view];

  if (!v33)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = [v33 topAnchor];

  v35 = [v13 view];
  if (!v35)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = [v34 constraintEqualToAnchor_];
  *(v20 + 48) = v38;
  v39 = [v14 view];

  if (!v39)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v40 = [v39 bottomAnchor];

  v41 = [v13 view];
  if (!v41)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v42 = v41;
  v43 = objc_opt_self();
  v44 = [v42 bottomAnchor];

  v45 = [v40 constraintEqualToAnchor_];
  *(v20 + 56) = v45;
  sub_1BC6EB470();
  v46 = sub_1BC75BCF0();

  [v43 activateConstraints_];

  v47 = [v13 view];
  if (v47)
  {
    v48 = [objc_opt_self() clearColor];
    [v47 setBackgroundColor_];

    [v13 didMoveToParentViewController_];
    sub_1BC6980C0(a2);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t _s26SensitiveContentAnalysisUI32RemoteInterventionViewControllerC8workflow20fromTypeErasedConfigSo24SCUIInterventionWorkflowVyp_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3];
  v5 = type metadata accessor for InterventionConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(a1, v13);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v10(v4, 0, 1, v5);
    sub_1BC66FCA4(v4, v8);
    v11 = sub_1BC6E4800();
    sub_1BC6980C0(v8);
    return v11;
  }

  else
  {
    v10(v4, 1, 1, v5);
    sub_1BC66008C(v4, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisUI32RemoteInterventionViewControllerC17contextDictionary20fromTypeErasedConfigSDys11AnyHashableVypGyp_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3];
  v5 = type metadata accessor for InterventionConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(a1, v13);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v10(v4, 0, 1, v5);
    sub_1BC66FCA4(v4, v8);
    v11 = *&v8[*(v5 + 28)];

    sub_1BC6980C0(v8);
    return v11;
  }

  else
  {
    v10(v4, 1, 1, v5);
    sub_1BC66008C(v4, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisUI32RemoteInterventionViewControllerC16interventionType04fromJ12ErasedConfigSo016SCUIInterventionJ0Vyp_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3];
  v5 = type metadata accessor for InterventionConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(a1, v13);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v10(v4, 0, 1, v5);
    sub_1BC66FCA4(v4, v8);
    v11 = sub_1BC6E4990();
    sub_1BC6980C0(v8);
    return v11;
  }

  else
  {
    v10(v4, 1, 1, v5);
    sub_1BC66008C(v4, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC6EB108(uint64_t a1)
{
  result = type metadata accessor for InterventionConfig(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BC759A90();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BC6EB1E8(uint64_t *a1, int a2)
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

uint64_t sub_1BC6EB230(uint64_t result, int a2, int a3)
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

unint64_t sub_1BC6EB27C()
{
  result = qword_1EBCDDC38;
  if (!qword_1EBCDDC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDC20, qword_1BC768D80);
    sub_1BC6EB308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDC38);
  }

  return result;
}

unint64_t sub_1BC6EB308()
{
  result = qword_1EBCDDC40;
  if (!qword_1EBCDDC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCDDC10, &unk_1BC768D70);
    sub_1BC6EB3C4(&qword_1EBCDCD90, type metadata accessor for RemoteView, &protocol conformance descriptor for RemoteView);
    sub_1BC6EB40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDC40);
  }

  return result;
}

uint64_t sub_1BC6EB3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC6EB40C()
{
  result = qword_1EBCDDC50;
  if (!qword_1EBCDDC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCDD870, &unk_1BC767848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDC50);
  }

  return result;
}

unint64_t sub_1BC6EB470()
{
  result = qword_1EDDCDFA0;
  if (!qword_1EDDCDFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDCDFA0);
  }

  return result;
}

uint64_t sub_1BC6EB4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v35 = a4;
  v41 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for SensitiveContentRedactor(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BC75A960();
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v33 - v16;
  v17 = sub_1BC6EB9E8();
  v48 = a4;
  v49 = v17;
  WitnessTable = swift_getWitnessTable();
  v46 = v15;
  v47 = WitnessTable;
  v37 = &opaque type descriptor for <<opaque return type of View.prefetchSensitiveContentPolicy()>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v33 - v18;
  sub_1BC660024(a1, &v14[v12[10]], &qword_1EBCDC970, &unk_1BC763180);
  sub_1BC6F4438(a2, &v14[v12[11]], _s6LayoutVMa);
  KeyPath = swift_getKeyPath();
  PolicyProperty.init()(&v14[v12[5]]);
  sub_1BC759D90();
  v33 = sub_1BC633134(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  v21 = sub_1BC75A740();
  LOBYTE(a1) = v22;
  *v14 = KeyPath;
  v14[8] = 0;
  v23 = &v14[v12[6]];
  *v23 = swift_getKeyPath();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = &v14[v12[7]];
  *v24 = swift_getKeyPath();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = &v14[v12[8]];
  *v25 = v21;
  v25[8] = a1 & 1;
  v26 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_1BC660024(v11, v39, &qword_1EBCDBC50, &qword_1BC762D70);
  sub_1BC75B630();
  sub_1BC66008C(v11, &qword_1EBCDBC50, &qword_1BC762D70);
  v27 = &v14[v12[12]];
  v45 = 0;
  sub_1BC75B630();
  v28 = v47;
  *v27 = v46;
  *(v27 + 1) = v28;
  v29 = v36;
  MEMORY[0x1BFB25FF0](v14, v41, v12, v35);
  sub_1BC6F5504(v14, type metadata accessor for SensitiveContentRedactor);
  v30 = WitnessTable;
  View.prefetchSensitiveContentPolicy()(v15, WitnessTable);
  (*(v42 + 8))(v29, v15);
  sub_1BC759D80();
  v46 = v15;
  v47 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = OpaqueTypeMetadata2;
  sub_1BC75B210();

  return (*(v40 + 8))(v19, v31);
}

unint64_t sub_1BC6EB9E8()
{
  result = qword_1EDDD1680[0];
  if (!qword_1EDDD1680[0])
  {
    type metadata accessor for SensitiveContentRedactor(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD1680);
  }

  return result;
}

uint64_t sub_1BC6EBA60(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v8 = a3;
  swift_retain_n();
  swift_retain_n();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);

  return sub_1BC75B740();
}

uint64_t sub_1BC6EBB64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1BC759CA0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  sub_1BC660024(a1, v9, &qword_1EBCDC998, &qword_1BC7641A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BC66008C(v9, &qword_1EBCDC998, &qword_1BC7641A0);
    v22 = a2;
    v23 = v20;
    v24 = a4;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAA8, &qword_1BC763840);
    return sub_1BC75B710();
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v22 = a2;
    v23 = v20;
    v24 = a4;
    sub_1BC694F54();
    (*(v11 + 16))(v14, v16, v10);
    v18 = a4;

    v21 = sub_1BC75BFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAA8, &qword_1BC763840);
    sub_1BC75B710();

    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_1BC6EBE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BC6F4B38(a1, a3, _s6LayoutV4ModeOMa);
  result = _s6LayoutVMa(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1BC6EBE54@<X0>(uint64_t a1@<X8>)
{
  rawValue = SCUISensitiveContentOverlayOptions.forcingInternalOptions()().rawValue;
  sub_1BC756110();
  _s6LayoutV4ModeOMa(0);
  swift_storeEnumTagMultiPayload();
  result = _s6LayoutVMa(0);
  *(a1 + *(result + 20)) = rawValue;
  return result;
}

uint64_t sub_1BC6EBED8()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SensitiveContentRedactor(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1BC75BF70();
    v8 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void (*sub_1BC6EC028(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0) - 8) + 64);
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 1) + 64));
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for SensitiveContentRedactor(0);
  sub_1BC660024(v1 + *(v9 + 40), v8, &qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1BFB262E0](v6);
  return sub_1BC6EC168;
}

void sub_1BC6EC168(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_1BC660024(*(a1 + 8), v3, &qword_1EBCDC998, &qword_1BC7641A0);
    sub_1BC75B710();
    sub_1BC66008C(v2, &qword_1EBCDC970, &unk_1BC763180);
    v5 = v4;
    v6 = &qword_1EBCDC998;
    v7 = &qword_1BC7641A0;
  }

  else
  {
    sub_1BC75B710();
    v6 = &qword_1EBCDC970;
    v7 = &unk_1BC763180;
    v5 = v2;
  }

  sub_1BC66008C(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_1BC6EC240()
{
  v0 = _s5StateOMa(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BC759EE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  type metadata accessor for SensitiveContentRedactor(0);
  PolicyProperty.wrappedValue.getter(v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1BC66008C(v9, &unk_1EBCDBD90, &unk_1BC75F850);
    v10 = 0;
  }

  else
  {
    sub_1BC759E50();
    sub_1BC633134(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
    v10 = sub_1BC75C170();
    v11 = *(v4 + 8);
    v11(v6, v3);
    v11(v9, v3);
  }

  sub_1BC6EC550(v2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  if ((*(*(v12 - 8) + 48))(v2, 3, v12))
  {
    sub_1BC6F5504(v2, _s5StateOMa);
  }

  else
  {
    v13 = *(v12 + 48);
    v14 = sub_1BC759CA0();
    (*(*(v14 - 8) + 8))(&v2[v13], v14);
    (*(v4 + 8))(v2, v3);
    if (v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BC6EC550@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_1BC759CA0();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_1BC759EE0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  type metadata accessor for SensitiveContentRedactor(0);
  v37 = v1;
  PolicyProperty.wrappedValue.getter(v11);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v35 = v8;
    v36 = a1;
    v34 = *(v13 + 32);
    v34(v18, v11, v12);
    sub_1BC759DF0();
    sub_1BC633134(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
    v23 = sub_1BC75C170();
    v24 = *(v13 + 8);
    v24(v16, v12);
    if (v23)
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
      MEMORY[0x1BFB262E0](v25);
      v27 = v38;
      v26 = v39;
      if ((*(v38 + 48))(v5, 1, v39) == 1)
      {
        v24(v18, v12);
        sub_1BC66008C(v5, &qword_1EBCDC998, &qword_1BC7641A0);
LABEL_10:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
        v20 = *(*(v19 - 8) + 56);
        v21 = v36;
        v22 = 3;
        return v20(v21, v22, 3, v19);
      }

      v28 = v35;
      v37 = *(v27 + 32);
      v37(v35, v5, v26);
      if (sub_1BC759BB0())
      {
        v29 = v26;
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
        v31 = *(v30 + 48);
        v32 = v36;
        v34(v36, v18, v12);
        v37(&v32[v31], v28, v29);
        return (*(*(v30 - 8) + 56))(v32, 0, 3, v30);
      }

      (*(v27 + 8))(v28, v26);
    }

    v24(v18, v12);
    goto LABEL_10;
  }

  sub_1BC66008C(v11, &unk_1EBCDBD90, &unk_1BC75F850);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1;
  v22 = 1;
  return v20(v21, v22, 3, v19);
}

uint64_t sub_1BC6ECA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v52 - v6;
  v7 = type metadata accessor for SensitiveContentRedactor(0);
  v8 = v7 - 8;
  v56 = *(v7 - 8);
  v62 = *(v56 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC78, &qword_1BC769238);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC80, &qword_1BC769240);
  v15 = *(v14 - 8);
  v59 = v14;
  v60 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v52 - v16;
  v17 = sub_1BC75B810();
  v19 = v18;
  v20 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC88, &qword_1BC769248) + 36)];
  sub_1BC6ECF60(v3, v20);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC90, &qword_1BC769250) + 36));
  *v21 = v17;
  v21[1] = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC98, &qword_1BC769258);
  v23 = *(*(v22 - 8) + 16);
  v54 = v13;
  v23(v13, a1, v22);
  v24 = &v13[*(v11 + 36)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCA0, &qword_1BC769260);
  sub_1BC6EC550(&v24[*(v25 + 40)]);
  v55 = type metadata accessor for SensitiveContentRedactor;
  v26 = v10;
  v52 = v10;
  sub_1BC6F4438(v3, v10, type metadata accessor for SensitiveContentRedactor);
  v27 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v28 = swift_allocObject();
  v56 = type metadata accessor for SensitiveContentRedactor;
  sub_1BC6F4B38(v26, v28 + v27, type metadata accessor for SensitiveContentRedactor);
  sub_1BC75BDF0();
  *v24 = &unk_1BC769278;
  *(v24 + 1) = v28;
  v29 = v3;
  v30 = v3 + *(v8 + 56);
  v31 = *v30;
  v32 = *(v30 + 8);
  v66 = v31;
  v67 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B660();
  v33 = v63;
  v34 = v64;
  LODWORD(v3) = v65;
  v35 = v58;
  sub_1BC6F1E10(v58);
  v36 = sub_1BC6F4C6C();
  v37 = v57;
  v38 = v3;
  v40 = v53;
  v39 = v54;
  View.intervention(isPresented:with:)(v33, v34, v38, v35, v53, v36, v57);

  sub_1BC66008C(v35, &qword_1EBCDC250, &qword_1BC761340);
  sub_1BC66008C(v39, &qword_1EBCDDC78, &qword_1BC769238);
  v41 = v52;
  sub_1BC6F4438(v29, v52, v55);
  v42 = swift_allocObject();
  sub_1BC6F4B38(v41, v42 + v27, v56);
  v63 = v40;
  v64 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v61;
  v45 = v59;
  View.onShowContent(_:)(sub_1BC6F53DC, v42, v59, OpaqueTypeConformance2);

  (*(v60 + 8))(v37, v45);
  v46 = sub_1BC75B7F0();
  v48 = v47;
  v49 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCB0, &qword_1BC769290) + 36);
  sub_1BC6F2B1C(v29, v49);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCB8, &unk_1BC769298);
  v51 = (v49 + *(result + 36));
  *v51 = v46;
  v51[1] = v48;
  return result;
}

uint64_t sub_1BC6ECF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v259 = a2;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCC8, &qword_1BC7692D0);
  MEMORY[0x1EEE9AC00](v237);
  v238 = &v192 - v3;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCD0, &qword_1BC7692D8);
  MEMORY[0x1EEE9AC00](v258);
  v239 = &v192 - v4;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCD8, &qword_1BC7692E0);
  MEMORY[0x1EEE9AC00](v207);
  v208 = &v192 - v5;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCE0, &qword_1BC7692E8);
  MEMORY[0x1EEE9AC00](v231);
  v209 = &v192 - v6;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCE8, &qword_1BC7692F0);
  MEMORY[0x1EEE9AC00](v206);
  v213 = (&v192 - v7);
  v8 = sub_1BC759D50();
  v247 = *(v8 - 8);
  v248 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v200 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCF0, &qword_1BC7692F8);
  MEMORY[0x1EEE9AC00](v228);
  v230 = &v192 - v10;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCF8, &qword_1BC769300);
  MEMORY[0x1EEE9AC00](v211);
  v212 = &v192 - v11;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD00, &qword_1BC769308);
  MEMORY[0x1EEE9AC00](v229);
  v214 = &v192 - v12;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD08, &qword_1BC769310);
  MEMORY[0x1EEE9AC00](v253);
  v232 = &v192 - v13;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD10, &qword_1BC769318);
  MEMORY[0x1EEE9AC00](v210);
  v202 = &v192 - v14;
  v196 = sub_1BC759C40();
  v195 = *(v196 - 8);
  v15 = MEMORY[0x1EEE9AC00](v196);
  v194 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v193 = &v192 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v199 = &v192 - v19;
  v20 = type metadata accessor for SensitiveContentRedactor(0);
  v224 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v225 = v21;
  v226 = &v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v219 = &v192 - v23;
  v215 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v24 = MEMORY[0x1EEE9AC00](v215);
  v201 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v218 = (&v192 - v26);
  v221 = type metadata accessor for VideoCallOverlayBackground(0);
  MEMORY[0x1EEE9AC00](v221);
  v222 = &v192 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD18, &qword_1BC769320);
  MEMORY[0x1EEE9AC00](v227);
  v223 = &v192 - v28;
  v234 = sub_1BC759FE0();
  v233 = *(v234 - 8);
  v29 = MEMORY[0x1EEE9AC00](v234);
  v220 = &v192 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v198 = &v192 - v32;
  v197 = v33;
  MEMORY[0x1EEE9AC00](v31);
  v217 = &v192 - v34;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD20, &qword_1BC769328);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v192 - v35;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD28, &qword_1BC769330);
  MEMORY[0x1EEE9AC00](v244);
  v205 = &v192 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v245 = &v192 - v38;
  v254 = type metadata accessor for SensitiveContentOverlay.Background(0);
  MEMORY[0x1EEE9AC00](v254);
  v246 = (&v192 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD30, &qword_1BC769338);
  MEMORY[0x1EEE9AC00](v255);
  v257 = &v192 - v40;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD38, &qword_1BC769340);
  MEMORY[0x1EEE9AC00](v249);
  v251 = &v192 - v41;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD40, &qword_1BC769348);
  MEMORY[0x1EEE9AC00](v240);
  v242 = &v192 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD48, &qword_1BC769350);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v192 - v44;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD50, &qword_1BC769358);
  MEMORY[0x1EEE9AC00](v241);
  v47 = &v192 - v46;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD58, &qword_1BC769360);
  MEMORY[0x1EEE9AC00](v250);
  v243 = &v192 - v48;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD60, &qword_1BC769368);
  MEMORY[0x1EEE9AC00](v256);
  v252 = &v192 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD68, &qword_1BC769370);
  v51 = v50 - 8;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v192 - v52;
  v54 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v192 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s5StateOMa(0);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v59 = &v192 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6EC550(v59);
  v216 = v20;
  v60 = *(v20 + 44);
  v235 = a1;
  v61 = a1 + v60;
  sub_1BC6F4438(a1 + v60, v56, _s6LayoutVMa);
  v62 = &v53[*(v51 + 56)];
  sub_1BC6F4B38(v59, v53, _s5StateOMa);
  sub_1BC6F4B38(v56, v62, _s6LayoutV4ModeOMa);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v64 = *(*(v63 - 8) + 48);
  v236 = v53;
  v65 = v64(v53, 3, v63);
  if (v65 > 1)
  {
    if (v65 == 2)
    {
      v264 = 7;
      v78 = *(v61 + *(v54 + 20));
      v79 = v245;
      (*(v247 + 56))(v245, 1, 1, v248);
      v80 = v246;
      SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v264, v78, v79, v246);
      sub_1BC6F4438(v80, v238, type metadata accessor for SensitiveContentOverlay.Background);
      swift_storeEnumTagMultiPayload();
      sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
      v81 = v239;
      sub_1BC75AE00();
      sub_1BC660024(v81, v257, &qword_1EBCDDCD0, &qword_1BC7692D8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F55D4();
      sub_1BC6F5C5C();
      sub_1BC75AE00();
      sub_1BC66008C(v81, &qword_1EBCDDCD0, &qword_1BC7692D8);
      sub_1BC6F5504(v80, type metadata accessor for SensitiveContentOverlay.Background);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
      sub_1BC75AE00();
      sub_1BC660024(v47, v242, &qword_1EBCDDD50, &qword_1BC769358);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F56EC();
      sub_1BC6F57A8();
      v88 = v243;
      sub_1BC75AE00();
      sub_1BC66008C(v47, &qword_1EBCDDD50, &qword_1BC769358);
      sub_1BC660024(v88, v251, &qword_1EBCDDD58, &qword_1BC769360);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F5660();
      sub_1BC6F5A08();
      v89 = v252;
      sub_1BC75AE00();
      sub_1BC66008C(v88, &qword_1EBCDDD58, &qword_1BC769360);
      sub_1BC660024(v89, v257, &qword_1EBCDDD60, &qword_1BC769368);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F55D4();
      sub_1BC6F5C5C();
      sub_1BC75AE00();
      sub_1BC66008C(v89, &qword_1EBCDDD60, &qword_1BC769368);
    }

    v82 = v62;
    return sub_1BC6F5504(v82, _s6LayoutV4ModeOMa);
  }

  if (v65)
  {
    v260 = 2;
    v83 = *(v61 + *(v54 + 20));
    v84 = v245;
    (*(v247 + 56))(v245, 1, 1, v248);
    v85 = v246;
    SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v260, v83, v84, v246);
    sub_1BC6F4438(v85, v45, type metadata accessor for SensitiveContentOverlay.Background);
    swift_storeEnumTagMultiPayload();
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
    sub_1BC75AE00();
    sub_1BC660024(v47, v242, &qword_1EBCDDD50, &qword_1BC769358);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F56EC();
    sub_1BC6F57A8();
    v86 = v243;
    sub_1BC75AE00();
    sub_1BC66008C(v47, &qword_1EBCDDD50, &qword_1BC769358);
    sub_1BC660024(v86, v251, &qword_1EBCDDD58, &qword_1BC769360);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5660();
    sub_1BC6F5A08();
    v87 = v252;
    sub_1BC75AE00();
    sub_1BC66008C(v86, &qword_1EBCDDD58, &qword_1BC769360);
    sub_1BC660024(v87, v257, &qword_1EBCDDD60, &qword_1BC769368);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F55D4();
    sub_1BC6F5C5C();
    sub_1BC75AE00();
    sub_1BC66008C(v87, &qword_1EBCDDD60, &qword_1BC769368);
    sub_1BC6F5504(v85, type metadata accessor for SensitiveContentOverlay.Background);
    v82 = v62;
    return sub_1BC6F5504(v82, _s6LayoutV4ModeOMa);
  }

  v192 = *(v63 + 48);
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v263 = 3;
        v98 = *(v61 + *(v54 + 20));
        v99 = v245;
        (*(v247 + 56))(v245, 1, 1, v248);
        v100 = v246;
        SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v263, v98, v99, v246);
        sub_1BC6F4438(v100, v238, type metadata accessor for SensitiveContentOverlay.Background);
        swift_storeEnumTagMultiPayload();
        sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
        v101 = v239;
        sub_1BC75AE00();
        sub_1BC660024(v101, v257, &qword_1EBCDDCD0, &qword_1BC7692D8);
        swift_storeEnumTagMultiPayload();
        sub_1BC6F55D4();
        sub_1BC6F5C5C();
        sub_1BC75AE00();
        sub_1BC66008C(v101, &qword_1EBCDDCD0, &qword_1BC7692D8);
        v102 = v100;
      }

      else
      {
        v261 = 4;
        v162 = *(v61 + *(v54 + 20));
        v163 = v245;
        (*(v247 + 56))(v245, 1, 1, v248);
        v164 = v246;
        SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v261, v162, v163, v246);
        sub_1BC6F4438(v164, v204, type metadata accessor for SensitiveContentOverlay.Background);
        swift_storeEnumTagMultiPayload();
        sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
        sub_1BC6F5864();
        v165 = v205;
        sub_1BC75AE00();
        sub_1BC660024(v165, v242, &qword_1EBCDDD28, &qword_1BC769330);
        swift_storeEnumTagMultiPayload();
        sub_1BC6F56EC();
        sub_1BC6F57A8();
        v166 = v243;
        sub_1BC75AE00();
        sub_1BC66008C(v165, &qword_1EBCDDD28, &qword_1BC769330);
        sub_1BC660024(v166, v251, &qword_1EBCDDD58, &qword_1BC769360);
        swift_storeEnumTagMultiPayload();
        sub_1BC6F5660();
        sub_1BC6F5A08();
        v167 = v252;
        sub_1BC75AE00();
        sub_1BC66008C(v166, &qword_1EBCDDD58, &qword_1BC769360);
        sub_1BC660024(v167, v257, &qword_1EBCDDD60, &qword_1BC769368);
        swift_storeEnumTagMultiPayload();
        sub_1BC6F55D4();
        sub_1BC6F5C5C();
        sub_1BC75AE00();
        sub_1BC66008C(v167, &qword_1EBCDDD60, &qword_1BC769368);
        v102 = v164;
      }

      sub_1BC6F5504(v102, type metadata accessor for SensitiveContentOverlay.Background);
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v67 = v247;
      v68 = v200;
      v69 = v62;
      v70 = v248;
      (*(v247 + 32))(v200, v69, v248);
      v71 = sub_1BC75B810();
      v72 = v213;
      *v213 = v71;
      *(v72 + 8) = v73;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD78, &qword_1BC769388);
      sub_1BC6F1154(v235, v68, v72 + *(v74 + 44));
      sub_1BC660024(v72, v208, &qword_1EBCDDCE8, &qword_1BC7692F0);
      swift_storeEnumTagMultiPayload();
      sub_1BC633C54(&qword_1EDDCDFF0, &qword_1EBCDDCE8, &qword_1BC7692F0, MEMORY[0x1E6981880]);
      v75 = v209;
      sub_1BC75AE00();
      sub_1BC660024(v75, v230, &qword_1EBCDDCE0, &qword_1BC7692E8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F5A94();
      sub_1BC6F5BAC();
      v76 = v232;
      sub_1BC75AE00();
      sub_1BC66008C(v75, &qword_1EBCDDCE0, &qword_1BC7692E8);
      sub_1BC660024(v76, v251, &qword_1EBCDDD08, &qword_1BC769310);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F5660();
      sub_1BC6F5A08();
      v77 = v252;
      sub_1BC75AE00();
      sub_1BC66008C(v76, &qword_1EBCDDD08, &qword_1BC769310);
      sub_1BC660024(v77, v257, &qword_1EBCDDD60, &qword_1BC769368);
      swift_storeEnumTagMultiPayload();
      sub_1BC6F55D4();
      sub_1BC6F5C5C();
      sub_1BC75AE00();
      sub_1BC66008C(v77, &qword_1EBCDDD60, &qword_1BC769368);
      sub_1BC66008C(v72, &qword_1EBCDDCE8, &qword_1BC7692F0);
      (*(v67 + 8))(v68, v70);
LABEL_25:
      v168 = sub_1BC759CA0();
      v169 = v236;
      (*(*(v168 - 8) + 8))(&v236[v192], v168);
      v170 = sub_1BC759EE0();
      return (*(*(v170 - 8) + 8))(v169, v170);
    }

    v149 = sub_1BC75B810();
    v150 = v213;
    *v213 = v149;
    *(v150 + 8) = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD78, &qword_1BC769388);
    v262 = 0;
    v152 = *(v61 + *(v54 + 20));
    v153 = v245;
    (*(v247 + 56))(v245, 1, 1, v248);
    v154 = v246;
    SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v262, v152, v153, v246);
    v155 = v226;
    sub_1BC6F4438(v235, v226, type metadata accessor for SensitiveContentRedactor);
    v156 = (*(v224 + 80) + 16) & ~*(v224 + 80);
    v157 = swift_allocObject();
    sub_1BC6F4B38(v155, v157 + v156, type metadata accessor for SensitiveContentRedactor);
    v158 = sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
    View.onShowContent(_:)(sub_1BC6F6770, v157, v254, v158);

    sub_1BC6F5504(v154, type metadata accessor for SensitiveContentOverlay.Background);
    v143 = &qword_1EBCDDCE8;
    v144 = &qword_1BC7692F0;
    sub_1BC660024(v150, v208, &qword_1EBCDDCE8, &qword_1BC7692F0);
    swift_storeEnumTagMultiPayload();
    sub_1BC633C54(&qword_1EDDCDFF0, &qword_1EBCDDCE8, &qword_1BC7692F0, MEMORY[0x1E6981880]);
    v159 = v209;
    sub_1BC75AE00();
    sub_1BC660024(v159, v230, &qword_1EBCDDCE0, &qword_1BC7692E8);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5A94();
    sub_1BC6F5BAC();
    v160 = v232;
    sub_1BC75AE00();
    sub_1BC66008C(v159, &qword_1EBCDDCE0, &qword_1BC7692E8);
    sub_1BC660024(v160, v251, &qword_1EBCDDD08, &qword_1BC769310);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5660();
    sub_1BC6F5A08();
    v161 = v252;
    sub_1BC75AE00();
    sub_1BC66008C(v160, &qword_1EBCDDD08, &qword_1BC769310);
    sub_1BC660024(v161, v257, &qword_1EBCDDD60, &qword_1BC769368);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F55D4();
    sub_1BC6F5C5C();
    sub_1BC75AE00();
    sub_1BC66008C(v161, &qword_1EBCDDD60, &qword_1BC769368);
    v148 = v150;
LABEL_22:
    sub_1BC66008C(v148, v143, v144);
    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    v103 = *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48));
    v104 = v233;
    v105 = *(v233 + 32);
    v247 = v233 + 32;
    v248 = v105;
    v106 = v217;
    v107 = v62;
    v108 = v234;
    (v105)(v217, v107, v234);
    v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
    v246 = *(v104 + 16);
    v110 = v218;
    (v246)(v218, v106, v108);
    *(v110 + v109) = v103;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
    v111 = v235;
    v112 = v219;
    sub_1BC75B640();
    v113 = v222;
    sub_1BC679E64(v110, v112, v222);
    v114 = v226;
    sub_1BC6F4438(v111, v226, type metadata accessor for SensitiveContentRedactor);
    v115 = (*(v224 + 80) + 16) & ~*(v224 + 80);
    v116 = v115 + v225;
    v117 = swift_allocObject();
    sub_1BC6F4B38(v114, v117 + v115, type metadata accessor for SensitiveContentRedactor);
    v118 = sub_1BC633134(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground, &protocol conformance descriptor for VideoCallOverlayBackground);
    View.onShowContent(_:)(sub_1BC6F6770, v117, v221, v118);

    sub_1BC6F5504(v113, type metadata accessor for VideoCallOverlayBackground);
    sub_1BC6F4438(v111, v114, type metadata accessor for SensitiveContentRedactor);
    v119 = v198;
    v120 = v234;
    (v246)(v198, v217, v234);
    v121 = v233;
    v122 = (v116 + *(v233 + 80)) & ~*(v233 + 80);
    v123 = swift_allocObject();
    sub_1BC6F4B38(v114, v123 + v115, type metadata accessor for SensitiveContentRedactor);
    (v248)(v123 + v122, v119, v120);
    v124 = v223;
    v125 = &v223[*(v227 + 36)];
    sub_1BC75A860();
    sub_1BC75BDF0();
    *v125 = &unk_1BC7693A8;
    *(v125 + 1) = v123;
    sub_1BC660024(v124, v204, &qword_1EBCDDD18, &qword_1BC769320);
    swift_storeEnumTagMultiPayload();
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
    sub_1BC6F5864();
    v126 = v205;
    sub_1BC75AE00();
    sub_1BC660024(v126, v242, &qword_1EBCDDD28, &qword_1BC769330);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F56EC();
    sub_1BC6F57A8();
    v127 = v243;
    sub_1BC75AE00();
    sub_1BC66008C(v126, &qword_1EBCDDD28, &qword_1BC769330);
    sub_1BC660024(v127, v251, &qword_1EBCDDD58, &qword_1BC769360);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5660();
    sub_1BC6F5A08();
    v128 = v252;
    sub_1BC75AE00();
    sub_1BC66008C(v127, &qword_1EBCDDD58, &qword_1BC769360);
    sub_1BC660024(v128, v257, &qword_1EBCDDD60, &qword_1BC769368);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F55D4();
    sub_1BC6F5C5C();
    sub_1BC75AE00();
    sub_1BC66008C(v128, &qword_1EBCDDD60, &qword_1BC769368);
    sub_1BC66008C(v124, &qword_1EBCDDD18, &qword_1BC769320);
    (*(v121 + 8))(v217, v120);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v129 = *v62;
    v130 = v218;
    *v218 = *v62;
    v254 = v129;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
    v131 = v235;
    v132 = v219;
    sub_1BC75B640();
    v133 = v222;
    sub_1BC679E64(v130, v132, v222);
    v134 = v226;
    sub_1BC6F4438(v131, v226, type metadata accessor for SensitiveContentRedactor);
    v135 = (*(v224 + 80) + 16) & ~*(v224 + 80);
    v136 = v135 + v225;
    v137 = swift_allocObject();
    sub_1BC6F4B38(v134, v137 + v135, type metadata accessor for SensitiveContentRedactor);
    v138 = sub_1BC633134(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground, &protocol conformance descriptor for VideoCallOverlayBackground);
    v139 = v223;
    View.onShowContent(_:)(sub_1BC6F6770, v137, v221, v138);

    sub_1BC6F5504(v133, type metadata accessor for VideoCallOverlayBackground);
    sub_1BC6F4438(v131, v134, type metadata accessor for SensitiveContentRedactor);
    v140 = swift_allocObject();
    sub_1BC6F4B38(v134, v140 + v135, type metadata accessor for SensitiveContentRedactor);
    *(v140 + ((v136 + 7) & 0xFFFFFFFFFFFFFFF8)) = v254;
    v141 = v139;
    v142 = &v139[*(v227 + 36)];
    sub_1BC75A860();
    sub_1BC75BDF0();
    *v142 = &unk_1BC769398;
    *(v142 + 1) = v140;
    v143 = &qword_1EBCDDD18;
    v144 = &qword_1BC769320;
    sub_1BC660024(v141, v212, &qword_1EBCDDD18, &qword_1BC769320);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5B20();
    sub_1BC6F5864();
    v145 = v214;
    sub_1BC75AE00();
    sub_1BC660024(v145, v230, &qword_1EBCDDD00, &qword_1BC769308);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5A94();
    sub_1BC6F5BAC();
    v146 = v232;
    sub_1BC75AE00();
    sub_1BC66008C(v145, &qword_1EBCDDD00, &qword_1BC769308);
    sub_1BC660024(v146, v251, &qword_1EBCDDD08, &qword_1BC769310);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F5660();
    sub_1BC6F5A08();
    v147 = v252;
    sub_1BC75AE00();
    sub_1BC66008C(v146, &qword_1EBCDDD08, &qword_1BC769310);
    sub_1BC660024(v147, v257, &qword_1EBCDDD60, &qword_1BC769368);
    swift_storeEnumTagMultiPayload();
    sub_1BC6F55D4();
    sub_1BC6F5C5C();
    sub_1BC75AE00();
    sub_1BC66008C(v147, &qword_1EBCDDD60, &qword_1BC769368);
    v148 = v141;
    goto LABEL_22;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30);
  v92 = *(v62 + *(v91 + 48));
  (*(v233 + 32))(v220, v62, v234);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v94 = v199;
  MEMORY[0x1BFB262E0](v93);
  v95 = sub_1BC759CA0();
  v248 = *(v95 - 8);
  v96 = v248[6](v94, 1, v95);
  v254 = v95;
  if (v96)
  {
    sub_1BC66008C(v94, &qword_1EBCDC998, &qword_1BC7641A0);
  }

  else
  {
    v171 = v193;
    sub_1BC759C90();
    sub_1BC66008C(v94, &qword_1EBCDC998, &qword_1BC7641A0);
    v172 = v194;
    sub_1BC759C30();
    sub_1BC633134(&qword_1EBCDBF78, MEMORY[0x1E697B3F0], MEMORY[0x1E697B408]);
    v173 = v196;
    sub_1BC75C170();
    v174 = *(v195 + 8);
    v174(v172, v173);
    v174(v171, v173);
  }

  v97 = v212;
  v175 = *(v91 + 48);
  v176 = v201;
  (*(v233 + 16))(v201, v220, v234);
  *(v176 + v175) = v92;
  swift_storeEnumTagMultiPayload();
  v177 = v218;
  sub_1BC6F4438(v176, v218, type metadata accessor for VideoCallOverlayBackground.Kind);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  v178 = v235;
  v179 = v219;
  sub_1BC75B640();
  v180 = v222;
  sub_1BC679E64(v177, v179, v222);
  v181 = v226;
  sub_1BC6F4438(v178, v226, type metadata accessor for SensitiveContentRedactor);
  v182 = (*(v224 + 80) + 16) & ~*(v224 + 80);
  v183 = swift_allocObject();
  sub_1BC6F4B38(v181, v183 + v182, type metadata accessor for SensitiveContentRedactor);
  v184 = sub_1BC633134(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground, &protocol conformance descriptor for VideoCallOverlayBackground);
  v185 = v202;
  View.onShowContent(_:)(sub_1BC6F6770, v183, v221, v184);

  sub_1BC6F5504(v180, type metadata accessor for VideoCallOverlayBackground);
  v186 = (v185 + *(v210 + 36));
  *v186 = sub_1BC6F0748;
  v186[1] = 0;
  v186[2] = 0;
  v186[3] = 0;
  sub_1BC660024(v185, v97, &qword_1EBCDDD10, &qword_1BC769318);
  swift_storeEnumTagMultiPayload();
  sub_1BC6F5B20();
  sub_1BC6F5864();
  v187 = v214;
  sub_1BC75AE00();
  sub_1BC660024(v187, v230, &qword_1EBCDDD00, &qword_1BC769308);
  swift_storeEnumTagMultiPayload();
  sub_1BC6F5A94();
  sub_1BC6F5BAC();
  v188 = v232;
  sub_1BC75AE00();
  sub_1BC66008C(v187, &qword_1EBCDDD00, &qword_1BC769308);
  sub_1BC660024(v188, v251, &qword_1EBCDDD08, &qword_1BC769310);
  swift_storeEnumTagMultiPayload();
  sub_1BC6F5660();
  sub_1BC6F5A08();
  v189 = v252;
  sub_1BC75AE00();
  sub_1BC66008C(v188, &qword_1EBCDDD08, &qword_1BC769310);
  sub_1BC660024(v189, v257, &qword_1EBCDDD60, &qword_1BC769368);
  swift_storeEnumTagMultiPayload();
  sub_1BC6F55D4();
  sub_1BC6F5C5C();
  sub_1BC75AE00();
  sub_1BC66008C(v189, &qword_1EBCDDD60, &qword_1BC769368);
  sub_1BC66008C(v185, &qword_1EBCDDD10, &qword_1BC769318);
  sub_1BC6F5504(v176, type metadata accessor for VideoCallOverlayBackground.Kind);
  (*(v233 + 8))(v220, v234);
  v190 = v236;
  (v248[1])(&v236[v192], v254);
  v191 = sub_1BC759EE0();
  return (*(*(v191 - 8) + 8))(v190, v191);
}

uint64_t sub_1BC6EFD54()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for AnalyticsUIContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  if (sub_1BC6EC240())
  {
    v14 = v0 + *(v1 + 48);
    v16 = *(v14 + 8);
    v28 = *v14;
    v15 = v28;
    v29 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
    sub_1BC75B640();
    v26 = v15;
    v27 = v16;
    v25 = (v30 & 1) == 0;
    sub_1BC75B650();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
    sub_1BC75B640();
    if ((*(v8 + 48))(v13, 1, v7))
    {
      sub_1BC66008C(v13, &qword_1EBCDBC50, &qword_1BC762D70);
    }

    else
    {
      sub_1BC6F4438(v13, v10, type metadata accessor for AnalyticsUIContext);
      sub_1BC66008C(v13, &qword_1EBCDBC50, &qword_1BC762D70);
      AnalyticsUIContext.collectContentInteractionEvent(state:)(2);
      sub_1BC6F5504(v10, type metadata accessor for AnalyticsUIContext);
    }

    v17 = sub_1BC75BE10();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_1BC6F4438(v0, &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SensitiveContentRedactor);
    sub_1BC75BDE0();
    v18 = sub_1BC75BDD0();
    v19 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    *(v20 + 16) = v18;
    *(v20 + 24) = v21;
    sub_1BC6F4B38(v3, v20 + v19, type metadata accessor for SensitiveContentRedactor);
    sub_1BC652910(0, 0, v6, &unk_1BC7693E8, v20);
  }
}

uint64_t sub_1BC6F0154(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v2[4] = swift_task_alloc();
  v3 = sub_1BC759CA0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1BC75BDE0();
  v2[8] = sub_1BC75BDD0();
  v5 = sub_1BC75BD80();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC6F0280, v5, v4);
}

uint64_t sub_1BC6F0280()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  type metadata accessor for SensitiveContentRedactor(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1BFB262E0](v4);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[4];

    sub_1BC66008C(v5, &qword_1EBCDC998, &qword_1BC7641A0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[3];
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    v16 = 1;
    static SensitiveContentTipState.donate(tipState:)(&v16);
    v0[11] = sub_1BC6EBED8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
    v9 = sub_1BC759FE0();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    v0[12] = v12;
    *(v12 + 16) = xmmword_1BC761600;
    (*(v10 + 16))(v12 + v11, v8, v9);
    KeyPath = swift_getKeyPath();
    v0[13] = KeyPath;
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_1BC6F051C;
    v15 = v0[7];

    return MEMORY[0x1EEDD8B68](v15, KeyPath, v12, 3000000000000000000, 0, 0);
  }
}

uint64_t sub_1BC6F051C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1BC6F676C;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1BC6F06B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC6F06B0()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BC6F0748()
{
  v0 = sub_1BC75A0A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E697B620], v0);
  sub_1BC75A090();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BC6F0830(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1BC759C40();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v2[12] = swift_task_alloc();
  v4 = sub_1BC759CA0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_1BC75BDE0();
  v2[16] = sub_1BC75BDD0();
  v6 = sub_1BC75BD80();
  v2[17] = v6;
  v2[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BC6F09C4, v6, v5);
}

uint64_t sub_1BC6F09C4()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  type metadata accessor for SensitiveContentRedactor(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1BFB262E0](v4);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[12];

    sub_1BC66008C(v5, &qword_1EBCDC998, &qword_1BC7641A0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    sub_1BC759C30();
    v12 = sub_1BC759C80();
    sub_1BC6F0E60(v8, v9);
    v13 = *(v11 + 8);
    v13(v9, v10);
    v13(v8, v10);
    v12(v0 + 2, 0);
    v18 = 2;
    static SensitiveContentTipState.donate(tipState:)(&v18);
    v0[19] = sub_1BC6EBED8();
    KeyPath = swift_getKeyPath();
    v0[20] = KeyPath;
    v15 = swift_task_alloc();
    v0[21] = v15;
    *v15 = v0;
    v15[1] = sub_1BC6F0C44;
    v16 = v0[15];
    v17 = v0[7];

    return MEMORY[0x1EEDD8B68](v16, KeyPath, v17, 3000000000000000000, 0, 0);
  }
}

uint64_t sub_1BC6F0C44()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BC6F6768;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1BC6F0DB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC6F0DB4()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BC6F0E60(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
  v4 = MEMORY[0x1EEE9AC00](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v8 = sub_1BC759C40();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x1E697B3F0];
  v25 = sub_1BC633134(&qword_1EBCDBF78, MEMORY[0x1E697B3F0], MEMORY[0x1E697B408]);
  sub_1BC75C180();
  v17 = v16;
  v18 = v28;
  sub_1BC633134(&qword_1EBCDCA70, v17, MEMORY[0x1E697B3F8]);
  v26 = a2;
  v19 = sub_1BC75BAB0();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_1BC75C190();
  }

  v22 = v29;
  sub_1BC6F5564(v7, v29);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_1BC6F1154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = type metadata accessor for SensitiveContentRedactor(0);
  v6 = v5 - 8;
  v23 = *(v5 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SensitiveContentOverlay.Background(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v14 = a1 + *(v6 + 52);
  v15 = *(v14 + *(_s6LayoutVMa(0) + 20));
  v16 = sub_1BC759D50();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, a2, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  SensitiveContentOverlay.Background.init(style:options:contentDescription:)(&v25, v15, v10, v13);
  sub_1BC6F4438(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SensitiveContentRedactor);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_1BC6F4B38(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SensitiveContentRedactor);
  v20 = sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
  View.onShowContent(_:)(sub_1BC6F65B8, v19, v11, v20);

  return sub_1BC6F5504(v13, type metadata accessor for SensitiveContentOverlay.Background);
}

uint64_t sub_1BC6F1444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21[1] = a2;
  v21[0] = a1;
  v21[3] = a9;
  sub_1BC75AA10();
  v15 = sub_1BC75A960();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v21 - v17;
  v21[6] = a5;
  v21[7] = a6;
  v21[8] = a7;
  v21[9] = a8;
  v21[10] = a3;
  v21[11] = a4;
  sub_1BC75B3E0();
  WitnessTable = swift_getWitnessTable();
  v21[12] = a7;
  v21[13] = WitnessTable;
  swift_getWitnessTable();
  sub_1BC75B2A0();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1BC6F15EC(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1BC75ABB0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  _s6LayoutV4ModeOMa(0);
  v1[11] = swift_task_alloc();
  _s6LayoutVMa(0);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  _s5StateOMa(0);
  v1[16] = swift_task_alloc();
  v4 = sub_1BC759CA0();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = sub_1BC759EE0();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[25] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6F18E0, v7, v6);
}

uint64_t sub_1BC6F18E0()
{
  v1 = v0[16];

  sub_1BC6EC550(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  if ((*(*(v2 - 8) + 48))(v1, 3, v2))
  {
    sub_1BC6F5504(v0[16], _s5StateOMa);
    goto LABEL_12;
  }

  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v29 = v0[23];
  v30 = v0[19];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  v38 = v0[13];
  v35 = v0[14];
  v36 = v0[11];
  v32 = v0[12];
  v33 = v0[9];
  v34 = v0[8];
  v31 = v0[4];
  v11 = *(v2 + 48);
  (*(v5 + 32))(v3, v10, v4);
  (*(v8 + 32))(v6, v10 + v11, v7);
  (*(v5 + 16))(v29, v3, v4);
  (*(v8 + 16))(v30, v6, v7);
  v12 = type metadata accessor for SensitiveContentRedactor(0);
  sub_1BC6F4438(v31 + *(v12 + 44), v32, _s6LayoutVMa);
  sub_1BC6F4B38(v32, v36, _s6LayoutV4ModeOMa);
  sub_1BC663D18(v29, v30, &unk_1F3B2BA28, v36, v9);
  (*(v33 + 56))(v9, 0, 1, v34);
  v37 = v12;
  sub_1BC660024(v9, v35, &qword_1EBCDBC50, &qword_1BC762D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  sub_1BC75B650();
  sub_1BC66008C(v9, &qword_1EBCDBC50, &qword_1BC762D70);
  sub_1BC75B640();
  v13 = (*(v33 + 48))(v38, 1, v34);
  v14 = v0[13];
  if (v13)
  {
    sub_1BC66008C(v14, &qword_1EBCDBC50, &qword_1BC762D70);
  }

  else
  {
    v15 = v0[10];
    v16 = v0[13];
    sub_1BC6F4438(v14, v15, type metadata accessor for AnalyticsUIContext);
    sub_1BC66008C(v16, &qword_1EBCDBC50, &qword_1BC762D70);
    AnalyticsUIContext.collectContentInteractionEvent(state:)(0);
    sub_1BC6F5504(v15, type metadata accessor for AnalyticsUIContext);
  }

  v17 = v0[4] + *(v37 + 28);
  v19 = *v17;
  v18 = *(v17 + 8);
  if (*(v17 + 16) == 1)
  {
    sub_1BC63302C(v19, v18);
    if (v19 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];

  sub_1BC75BF70();
  v23 = sub_1BC75AFC0();
  sub_1BC75A4B0();

  sub_1BC75ABA0();
  swift_getAtKeyPath();
  sub_1BC6F4B28(v19, v18, 0, sub_1BC635480);
  (*(v21 + 8))(v20, v22);
  v19 = v0[2];
  v18 = v0[3];
  if (v19 != 1)
  {
LABEL_10:
    sub_1BC71CC90(v19);
    sub_1BC635468(v19, v18);
  }

LABEL_11:
  v24 = v0[24];
  v25 = v0[21];
  v26 = v0[22];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v26 + 8))(v24, v25);
LABEL_12:

  v27 = v0[1];

  return v27();
}

uint64_t sub_1BC6F1E10@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v85 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v69 - v5;
  v6 = sub_1BC759D50();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC759FE0();
  v80 = *(v8 - 8);
  v81 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v78 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v69 - v11;
  v89 = _s6LayoutV4ModeOMa(0);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v88 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for InterventionConfig.Layout(0);
  v15 = MEMORY[0x1EEE9AC00](v86);
  v84 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v87 = (&v69 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v69 - v19;
  v21 = sub_1BC759EE0();
  v92 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v83 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v91 = &v69 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v69 - v26;
  v28 = sub_1BC759CA0();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v82 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v69 - v32;
  v34 = type metadata accessor for SensitiveContentRedactor(0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1BFB262E0](v35);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v36 = &qword_1EBCDC998;
    v37 = &qword_1BC7641A0;
    v38 = v27;
  }

  else
  {
    (*(v29 + 32))(v33, v27, v28);
    v39 = v29;
    PolicyProperty.wrappedValue.getter(v20);
    v40 = v92;
    if ((*(v92 + 48))(v20, 1, v21) != 1)
    {
      v43 = v1;
      v44 = v21;
      v45 = v39;
      v46 = v91;
      (*(v40 + 32))(v91, v20, v44);
      v47 = v88;
      sub_1BC6F4438(v43 + *(v34 + 44), v88, _s6LayoutVMa);
      v48 = v90;
      sub_1BC6F4B38(v47, v90, _s6LayoutV4ModeOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v73 = v44;
      v72 = v43;
      if (EnumCaseMultiPayload > 2)
      {
        v42 = v93;
        if ((EnumCaseMultiPayload - 5) < 2)
        {
          (*(v40 + 8))(v46, v44);
          (*(v45 + 8))(v33, v28);
          v41 = 1;
          goto LABEL_19;
        }

        v71 = v34;
        v70 = v33;
        if (EnumCaseMultiPayload == 3)
        {
          v54 = v48;
          v56 = v74;
          v55 = v75;
          v57 = v77;
          (*(v74 + 32))(v77, v54, v75);
          (*(v45 + 16))(v82, v33, v28);
          v58 = v76;
          (*(v56 + 16))(v76, v57, v55);
          (*(v56 + 56))(v58, 0, 1, v55);
          v53 = v87;
          sub_1BC759DC0();
          (*(v56 + 8))(v77, v55);
        }

        else
        {
          v53 = v87;
          (*(v45 + 16))(v87, v33, v28);
        }
      }

      else
      {
        v71 = v34;
        v70 = v33;
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v89 = *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48));
            v50 = v79;
            v51 = v80;
            v52 = v81;
            (*(v80 + 32))(v79, v48, v81);
            v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
            (*(v51 + 16))(v78, v50, v52);
            (*(v45 + 16))(v82, v33, v28);
            v53 = v87;
            sub_1BC759CB0();
            (*(v51 + 8))(v50, v52);
            *(v53 + v90) = v89;
            v44 = v73;
          }

          else
          {
            v53 = v87;
            *v87 = *v48;
          }

          v42 = v93;
        }

        else
        {
          v89 = *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48));
          v59 = v79;
          v60 = v80;
          v61 = v81;
          (*(v80 + 32))(v79, v48, v81);
          v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48);
          (*(v60 + 16))(v78, v59, v61);
          (*(v45 + 16))(v82, v33, v28);
          v53 = v87;
          sub_1BC759CB0();
          (*(v60 + 8))(v59, v61);
          *(v53 + v90) = v89;
          v44 = v73;
          v42 = v93;
        }
      }

      swift_storeEnumTagMultiPayload();
      v62 = v84;
      sub_1BC6F4438(v53, v84, type metadata accessor for InterventionConfig.Layout);
      v63 = v92;
      v64 = v83;
      (*(v92 + 16))(v83, v46, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
      v65 = v85;
      sub_1BC75B640();
      v66 = sub_1BC67A2E4();
      InterventionConfig.init(layout:policy:options:analyticsContext:contextDictionary:)(v62, v64, v66, v65, 0, v42);
      sub_1BC6F5504(v53, type metadata accessor for InterventionConfig.Layout);
      (*(v63 + 8))(v46, v73);
      (*(v45 + 8))(v70, v28);
      v41 = 0;
      goto LABEL_19;
    }

    (*(v29 + 8))(v33, v28);
    v36 = &unk_1EBCDBD90;
    v37 = &unk_1BC75F850;
    v38 = v20;
  }

  sub_1BC66008C(v38, v36, v37);
  v41 = 1;
  v42 = v93;
LABEL_19:
  v67 = type metadata accessor for InterventionConfig(0);
  return (*(*(v67 - 8) + 56))(v42, v41, 1, v67);
}

uint64_t sub_1BC6F293C(uint64_t a1)
{
  v2 = type metadata accessor for SensitiveContentRedactor(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1BC75BE10();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BC6F4438(a1, v5, type metadata accessor for SensitiveContentRedactor);
  sub_1BC75BDE0();
  v10 = sub_1BC75BDD0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1BC6F4B38(v5, v12 + v11, type metadata accessor for SensitiveContentRedactor);
  sub_1BC652910(0, 0, v8, &unk_1BC7692B0, v12);
}

uint64_t sub_1BC6F2B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v34[-v5];
  v6 = type metadata accessor for WarningMenuButton(0);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BC759EE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD18, &qword_1BC764240);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v40 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v34[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34[-v20];
  v22 = type metadata accessor for SensitiveContentRedactor(0);
  v23 = a1 + *(v22 + 44);
  if ((*(v23 + *(_s6LayoutVMa(0) + 20)) & 4) == 0)
  {
    goto LABEL_2;
  }

  v37 = v22;
  v38 = a2;
  v36 = a1;
  PolicyProperty.wrappedValue.getter(v21);
  sub_1BC759ED0();
  (*(v9 + 56))(v19, 0, 1, v8);
  v25 = *(v11 + 48);
  sub_1BC660024(v21, v13, &unk_1EBCDBD90, &unk_1BC75F850);
  sub_1BC660024(v19, &v13[v25], &unk_1EBCDBD90, &unk_1BC75F850);
  v26 = *(v9 + 48);
  if (v26(v13, 1, v8) == 1)
  {
    sub_1BC66008C(v19, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC66008C(v21, &unk_1EBCDBD90, &unk_1BC75F850);
    if (v26(&v13[v25], 1, v8) == 1)
    {
      sub_1BC66008C(v13, &unk_1EBCDBD90, &unk_1BC75F850);
      v24 = 1;
      a2 = v38;
      return (*(v43 + 56))(a2, v24, 1, v44);
    }

    goto LABEL_8;
  }

  v27 = v40;
  sub_1BC660024(v13, v40, &unk_1EBCDBD90, &unk_1BC75F850);
  if (v26(&v13[v25], 1, v8) == 1)
  {
    sub_1BC66008C(v19, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC66008C(v21, &unk_1EBCDBD90, &unk_1BC75F850);
    (*(v9 + 8))(v27, v8);
LABEL_8:
    sub_1BC66008C(v13, &qword_1EBCDCD18, &qword_1BC764240);
    a2 = v38;
LABEL_9:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
    v29 = v42;
    MEMORY[0x1BFB262E0](v28);
    v30 = v41;
    WarningMenuButton.init(analysis:)(v29, v41);
    sub_1BC6F4B38(v30, a2, type metadata accessor for WarningMenuButton);
    v24 = 0;
    return (*(v43 + 56))(a2, v24, 1, v44);
  }

  v32 = v39;
  (*(v9 + 32))(v39, &v13[v25], v8);
  sub_1BC633134(&qword_1EDDCEE80, MEMORY[0x1E697B510], MEMORY[0x1E697B520]);
  v35 = sub_1BC75BAB0();
  v33 = *(v9 + 8);
  v33(v32, v8);
  sub_1BC66008C(v19, &unk_1EBCDBD90, &unk_1BC75F850);
  sub_1BC66008C(v21, &unk_1EBCDBD90, &unk_1BC75F850);
  v33(v27, v8);
  sub_1BC66008C(v13, &unk_1EBCDBD90, &unk_1BC75F850);
  a2 = v38;
  if ((v35 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_2:
  v24 = 1;
  return (*(v43 + 56))(a2, v24, 1, v44);
}

uint64_t sub_1BC6F30F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_1BC75ABB0();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_1BC75A0A0();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_1BC759C40();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDCC0, &unk_1BC7692C0);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v4[25] = swift_task_alloc();
  sub_1BC75BDE0();
  v4[26] = sub_1BC75BDD0();
  v9 = sub_1BC75BD80();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BC6F330C, v9, v8);
}

uint64_t sub_1BC6F330C()
{
  v1 = v0[25];
  sub_1BC6F1E10(v1);
  v2 = type metadata accessor for InterventionConfig(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[25];
  if (v3 == 1)
  {
    sub_1BC66008C(v0[25], &qword_1EBCDC250, &qword_1BC761340);
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = sub_1BC6A5D8C();
    sub_1BC6F5504(v4, type metadata accessor for InterventionConfig);
  }

  v0[29] = v5;
  v0[30] = sub_1BC6EBED8();
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_1BC6F3468;

  return MEMORY[0x1EEDD8B60](v5, 3000000000000000000, 0, 0);
}

uint64_t sub_1BC6F3468()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1BC6F6774;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1BC6F35D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC6F35D8()
{

  v1 = sub_1BC6EC028((v0 + 16));
  v3 = v2;
  v4 = sub_1BC759CA0();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *(v0 + 192);
    v1(v0 + 16, 0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 176);
    v31 = *(v0 + 168);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
    v11 = *(v10 + 48);
    sub_1BC759C20();
    v30 = sub_1BC759C80();
    v12 = sub_1BC6F0E60(&v7[v11], v8);
    (*(v9 + 8))(v8, v31);
    v30(v0 + 48, 0);
    v1(v0 + 16, 0);
    *v7 = v12 & 1;
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v15 = *(v0 + 144);
  v16 = *(v0 + 112);
  sub_1BC66008C(*(v0 + 192), &qword_1EBCDDCC0, &unk_1BC7692C0);
  v17 = type metadata accessor for SensitiveContentRedactor(0);
  v18 = (v16 + *(v17 + 48));
  v19 = *v18;
  v20 = *(v18 + 1);
  *(v0 + 80) = v19;
  *(v0 + 88) = v20;
  *(v0 + 256) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B650();
  (*(v14 + 104))(v13, *MEMORY[0x1E697B628], v15);
  sub_1BC75A090();
  (*(v14 + 8))(v13, v15);
  v21 = v16 + *(v17 + 24);
  v23 = *v21;
  v22 = *(v21 + 8);
  if (*(v21 + 16) != 1)
  {
    v25 = *(v0 + 128);
    v24 = *(v0 + 136);
    v26 = *(v0 + 120);

    sub_1BC75BF70();
    v27 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC6F4B28(v23, v22, 0, sub_1BC635480);
    (*(v25 + 8))(v24, v26);
    v23 = *(v0 + 96);
    if (v23 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v0 + 96) = v23;
  *(v0 + 104) = v22;
  sub_1BC63302C(v23, v22);
  if (v23 != 1)
  {
LABEL_8:
    v32 = *(v0 + 104);
    OnShowContentCallback.callAsFunction()();
    sub_1BC635484(v23, v32);
  }

LABEL_9:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1BC6F39D4@<X0>(uint64_t *a1@<X8>)
{
  result = _s24SensitiveContentAnalysis11SensitivityO0abC2UIE2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC6F39FC()
{
  v0 = sub_1BC759EE0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759E40();
  sub_1BC633134(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
  v4 = sub_1BC75C170();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return 0;
  }

  sub_1BC759E20();
  v7 = sub_1BC75C170();
  v5(v3, v0);
  if (v7)
  {
    return 1;
  }

  sub_1BC759E30();
  v8 = sub_1BC75C170();
  v5(v3, v0);
  if (v8)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC6F3BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  v9();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

uint64_t sub_1BC6F3CEC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BC712B9C();
  *a2 = result;
  return result;
}

uint64_t sub_1BC6F3D58@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAA8, &qword_1BC763840);
  MEMORY[0x1BFB262E0](&v7, v2);
  v3 = v7;
  if (v7)
  {
    sub_1BC75BFE0();

    v4 = sub_1BC759CA0();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }

  else
  {
    v6 = sub_1BC759CA0();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BC6F3E94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC759B90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC6F3EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759CA0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - v8;
  v9 = sub_1BC759EE0();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s5StateOMa(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD80, &unk_1BC7693F0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v35 - v17;
  v19 = &v35 + *(v16 + 56) - v17;
  sub_1BC6F4438(a1, &v35 - v17, _s5StateOMa);
  sub_1BC6F4438(a2, v19, _s5StateOMa);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC68, &qword_1BC769000);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v18, 3, v20);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      if (v21(v19, 3, v20) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v21(v19, 3, v20) != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v22)
    {
      v35 = v5;
      sub_1BC6F4438(v18, v14, _s5StateOMa);
      v23 = *(v20 + 48);
      if (!v21(v19, 3, v20))
      {
        v26 = v38;
        (*(v38 + 32))(v11, v19, v9);
        v27 = *(v35 + 32);
        v27(v37, &v14[v23], v4);
        v28 = &v19[v23];
        v29 = v36;
        v27(v36, v28, v4);
        sub_1BC633134(&qword_1EBCDDD88, MEMORY[0x1E697B510], MEMORY[0x1E697B528]);
        sub_1BC75BC70();
        sub_1BC75BC70();
        v31 = v39;
        v30 = v40;
        v32 = *(v26 + 8);
        v32(v14, v9);
        if (v30 == v31)
        {
          v24 = sub_1BC759BF0();
          v33 = *(v35 + 8);
          v33(v29, v4);
          v33(v37, v4);
          v32(v11, v9);
          sub_1BC6F5504(v18, _s5StateOMa);
          return v24 & 1;
        }

        v34 = *(v35 + 8);
        v34(v29, v4);
        v34(v37, v4);
        v32(v11, v9);
        sub_1BC6F5504(v18, _s5StateOMa);
        goto LABEL_12;
      }

      (*(v35 + 8))(&v14[v23], v4);
      (*(v38 + 8))(v14, v9);
LABEL_11:
      sub_1BC66008C(v18, &qword_1EBCDDD80, &unk_1BC7693F0);
LABEL_12:
      v24 = 0;
      return v24 & 1;
    }

    if (v21(v19, 3, v20) != 1)
    {
      goto LABEL_11;
    }
  }

  sub_1BC6F5504(v18, _s5StateOMa);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1BC6F4438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6F4514(uint64_t a1)
{
  sub_1BC6F456C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1BC6F456C(uint64_t a1)
{
  if (!qword_1EDDCE6E8)
  {
    sub_1BC759EE0();
    sub_1BC759CA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCE6E8);
    }
  }
}

void sub_1BC6F4604(uint64_t a1)
{
  _s6LayoutV4ModeOMa(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SCUISensitiveContentOverlayOptions();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6F4688(uint64_t a1)
{
  sub_1BC6F4744(319, &qword_1EDDCEE70, "from otherParticipants ");
  if (v1 <= 0x3F)
  {
    sub_1BC6F4744(319, &qword_1EDDCEE60, " otherParticipants ");
    if (v2 <= 0x3F)
    {
      sub_1BC632948();
      if (v3 <= 0x3F)
      {
        sub_1BC759D50();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC6F4744(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1BC759FE0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1BC6F47EC(uint64_t a1)
{
  sub_1BC6328E4(319, &qword_1EDDCE7F0, type metadata accessor for SCUIMoreHelpMenuOptions, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PolicyProperty(319);
    if (v2 <= 0x3F)
    {
      sub_1BC6F4A4C(319, qword_1EDDCE810, &qword_1EBCDC480, &unk_1BC761B50, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1BC6F4A4C(319, &qword_1EDDCE808, &qword_1EBCDDC70, &qword_1BC769048, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1BC6328E4(319, qword_1EDDCF110, MEMORY[0x1E697B4E8], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1BC6F4A4C(319, &qword_1EDDCF100, &qword_1EBCDBC50, &qword_1BC762D70, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1BC6F4A4C(319, &qword_1EDDCE768, &qword_1EBCDC998, &qword_1BC7641A0, MEMORY[0x1E6981948]);
              if (v7 <= 0x3F)
              {
                _s6LayoutVMa(319);
                if (v8 <= 0x3F)
                {
                  sub_1BC6F4AB0(319, &qword_1EDDCF0F8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1BC6F4A4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1BC6F4AB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BC6F4B1C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1BC6F4B28(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a4(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1BC6F4B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6F4BA0()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6F15EC(v0 + v3);
}

unint64_t sub_1BC6F4C6C()
{
  result = qword_1EDDCE100;
  if (!qword_1EDDCE100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDC78, &qword_1BC769238);
    sub_1BC6F4D24();
    sub_1BC633C54(&qword_1EDDCE0D8, &qword_1EBCDDCA0, &qword_1BC769260, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE100);
  }

  return result;
}

unint64_t sub_1BC6F4D24()
{
  result = qword_1EDDCE118;
  if (!qword_1EDDCE118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDCA8, &qword_1BC769288);
    sub_1BC6F4DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE118);
  }

  return result;
}

unint64_t sub_1BC6F4DB0()
{
  result = qword_1EDDCE140;
  if (!qword_1EDDCE140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDC88, &qword_1BC769248);
    sub_1BC633C54(&qword_1EDDCE060, &qword_1EBCDDC98, &qword_1BC769258, MEMORY[0x1E697FDF8]);
    sub_1BC633C54(&qword_1EDDCE0E0, &qword_1EBCDDC90, &qword_1BC769250, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE140);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BC6F4B1C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v0 + v4 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = sub_1BC759EE0();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v6, 1, v8))
      {
        (*(v9 + 8))(v6, v8);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  sub_1BC6F4B28(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16), sub_1BC635480);
  sub_1BC6F4B28(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16), sub_1BC635480);

  v10 = v5 + v1[9];
  v11 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_1BC759940();
    (*(*(v12 - 8) + 8))(v10, v12);

    v13 = *(v11 + 24);
    v14 = sub_1BC759EE0();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
    v15 = *(v11 + 48);
    v16 = sub_1BC759C70();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);

  v17 = v5 + v1[10];

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
  v19 = sub_1BC759CA0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v17 + v18, 1, v19))
  {
    (*(v20 + 8))(v17 + v18, v19);
  }

  v21 = v5 + v1[11];
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      v23 = sub_1BC759FE0();
      (*(*(v23 - 8) + 8))(v21, v23);
      v24 = &qword_1EBCDBF80;
      v25 = &qword_1BC75FA30;
    }

    else
    {
      v27 = sub_1BC759FE0();
      (*(*(v27 - 8) + 8))(v21, v27);
      v24 = &qword_1EBCDBF88;
      v25 = &qword_1BC75FA38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v26 = sub_1BC759D50();
    (*(*(v26 - 8) + 8))(v21, v26);
  }

LABEL_20:

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC6F53DC()
{
  v1 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC6F293C(v2);
}

uint64_t sub_1BC6F543C()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6F30F0(v4, v5, v6, v0 + v3);
}

uint64_t sub_1BC6F5504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6F5564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC6F55D4()
{
  result = qword_1EDDCE070;
  if (!qword_1EDDCE070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD60, &qword_1BC769368);
    sub_1BC6F5660();
    sub_1BC6F5A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE070);
  }

  return result;
}

unint64_t sub_1BC6F5660()
{
  result = qword_1EDDCE078;
  if (!qword_1EDDCE078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD58, &qword_1BC769360);
    sub_1BC6F56EC();
    sub_1BC6F57A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE078);
  }

  return result;
}

unint64_t sub_1BC6F56EC()
{
  result = qword_1EDDCE090;
  if (!qword_1EDDCE090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD50, &qword_1BC769358);
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE090);
  }

  return result;
}

unint64_t sub_1BC6F57A8()
{
  result = qword_1EDDCE0D0;
  if (!qword_1EDDCE0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD28, &qword_1BC769330);
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
    sub_1BC6F5864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0D0);
  }

  return result;
}

unint64_t sub_1BC6F5864()
{
  result = qword_1EDDCE120;
  if (!qword_1EDDCE120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD18, &qword_1BC769320);
    sub_1BC6F5920();
    sub_1BC633134(qword_1EDDCEEC0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE120);
  }

  return result;
}

unint64_t sub_1BC6F5920()
{
  result = qword_1EDDCE150;
  if (!qword_1EDDCE150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD70, &unk_1BC769378);
    sub_1BC633134(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground, &protocol conformance descriptor for VideoCallOverlayBackground);
    sub_1BC633C54(&unk_1EDDCEEB0, &qword_1EBCDD7F8, &qword_1BC7677E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE150);
  }

  return result;
}

unint64_t sub_1BC6F5A08()
{
  result = qword_1EDDCE080;
  if (!qword_1EDDCE080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD08, &qword_1BC769310);
    sub_1BC6F5A94();
    sub_1BC6F5BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE080);
  }

  return result;
}

unint64_t sub_1BC6F5A94()
{
  result = qword_1EDDCE0B8;
  if (!qword_1EDDCE0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD00, &qword_1BC769308);
    sub_1BC6F5B20();
    sub_1BC6F5864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0B8);
  }

  return result;
}

unint64_t sub_1BC6F5B20()
{
  result = qword_1EDDCE128;
  if (!qword_1EDDCE128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD10, &qword_1BC769318);
    sub_1BC6F5920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE128);
  }

  return result;
}

unint64_t sub_1BC6F5BAC()
{
  result = qword_1EDDCE098;
  if (!qword_1EDDCE098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDCE0, &qword_1BC7692E8);
    sub_1BC633C54(&qword_1EDDCDFF0, &qword_1EBCDDCE8, &qword_1BC7692F0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE098);
  }

  return result;
}

unint64_t sub_1BC6F5C5C()
{
  result = qword_1EDDCE0C8;
  if (!qword_1EDDCE0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDCD0, &qword_1BC7692D8);
    sub_1BC633134(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0C8);
  }

  return result;
}

uint64_t sub_1BC6F5D6C()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BC660280;

  return sub_1BC6F0830(v0 + v3, v4);
}

uint64_t sub_1BC6F5E70()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1BC759FE0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC660280;

  return sub_1BC6F0154(v0 + v3, v0 + v6);
}

uint64_t objectdestroy_49Tm()
{
  v1 = type metadata accessor for SensitiveContentRedactor(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1BC6F4B1C(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v0 + v3 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = sub_1BC759EE0();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v6, 1, v8))
      {
        (*(v9 + 8))(v6, v8);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  sub_1BC6F4B28(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16), sub_1BC635480);
  sub_1BC6F4B28(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16), sub_1BC635480);

  v10 = v5 + v1[9];
  v11 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_1BC759940();
    (*(*(v12 - 8) + 8))(v10, v12);

    v13 = *(v11 + 24);
    v14 = sub_1BC759EE0();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
    v15 = *(v11 + 48);
    v16 = sub_1BC759C70();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);

  v17 = v5 + v1[10];

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180) + 32);
  v19 = sub_1BC759CA0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v17 + v18, 1, v19))
  {
    (*(v20 + 8))(v17 + v18, v19);
  }

  v21 = v5 + v1[11];
  _s6LayoutV4ModeOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      v23 = sub_1BC759FE0();
      (*(*(v23 - 8) + 8))(v21, v23);
      v24 = &qword_1EBCDBF80;
      v25 = &qword_1BC75FA30;
    }

    else
    {
      v27 = sub_1BC759FE0();
      (*(*(v27 - 8) + 8))(v21, v27);
      v24 = &qword_1EBCDBF88;
      v25 = &qword_1BC75FA38;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v26 = sub_1BC759D50();
    (*(*(v26 - 8) + 8))(v21, v26);
  }

LABEL_20:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC6F64F0()
{
  v2 = *(type metadata accessor for SensitiveContentRedactor(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6F30F0(v4, v5, v6, v0 + v3);
}

unint64_t sub_1BC6F65BC()
{
  result = qword_1EDDCE108;
  if (!qword_1EDDCE108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDCB0, &qword_1BC769290);
    sub_1BC6F6674();
    sub_1BC633C54(&qword_1EDDCE0E8, &qword_1EBCDDCB8, &unk_1BC769298, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE108);
  }

  return result;
}

unint64_t sub_1BC6F6674()
{
  result = qword_1EDDCE130;
  if (!qword_1EDDCE130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDD90, &unk_1BC769400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDC78, &qword_1BC769238);
    sub_1BC6F4C6C();
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&unk_1EDDCEEB0, &qword_1EBCDD7F8, &qword_1BC7677E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE130);
  }

  return result;
}

uint64_t (*sub_1BC6F6778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  v10 = sub_1BC75B120();
  WitnessTable = swift_getWitnessTable();
  v13 = *(_s4ListVMa(0, v10, WitnessTable, v12) + 36);
  *(a5 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_1BC6F6898;
  a5[1] = result;
  return result;
}

uint64_t sub_1BC6F68EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  v9();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

uint64_t sub_1BC6F6A2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a1;
  v82 = a2;
  v3 = sub_1BC75A710();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v79 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = v59 - v6;
  v7 = sub_1BC75A9B0();
  v77 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v75 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC75AE90();
  v72 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v64 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v71 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v69 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v87 = v12;
  v88 = v13;
  v16 = v13;
  v63 = v13;
  v89 = v15;
  v90 = MEMORY[0x1E697C750];
  v17 = v15;
  v65 = v15;
  v18 = MEMORY[0x1E697C750];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v62 = v59 - v20;
  v87 = v12;
  v88 = v16;
  v89 = v17;
  v90 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1BC6FFB80(&qword_1EBCDDDA0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v87 = OpaqueTypeMetadata2;
  v88 = v7;
  v59[0] = OpaqueTypeMetadata2;
  v23 = v7;
  v89 = OpaqueTypeConformance2;
  v90 = v22;
  v24 = OpaqueTypeConformance2;
  v59[2] = OpaqueTypeConformance2;
  v59[1] = v22;
  v61 = swift_getOpaqueTypeMetadata2();
  v68 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v59 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDA8, &unk_1BC769458);
  v26 = sub_1BC75A960();
  v73 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v83 = v59 - v27;
  v87 = OpaqueTypeMetadata2;
  v88 = v7;
  v89 = v24;
  v90 = v22;
  v28 = swift_getOpaqueTypeConformance2();
  v59[3] = v28;
  v29 = sub_1BC633C54(&qword_1EBCDDDB0, &qword_1EBCDDDA8, &unk_1BC769458, MEMORY[0x1E6980A18]);
  v85 = v28;
  v86 = v29;
  WitnessTable = swift_getWitnessTable();
  v74 = v26;
  v87 = v26;
  v88 = MEMORY[0x1E69815C0];
  v67 = WitnessTable;
  v89 = WitnessTable;
  v90 = MEMORY[0x1E6981568];
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v66 = v59 - v37;
  v38 = v69;
  (*v84)(v36);
  v39 = v64;
  sub_1BC75AE80();
  v40 = v62;
  v41 = v63;
  sub_1BC75B470();
  (*(v72 + 8))(v39, v41);
  (*(v71 + 8))(v38, v12);
  v42 = v75;
  sub_1BC75A9A0();
  v43 = v60;
  v44 = v59[0];
  sub_1BC75B1F0();
  (*(v77 + 8))(v42, v23);
  (*(v70 + 8))(v40, v44);
  sub_1BC75B500();
  v45 = v61;
  sub_1BC75B380();

  (*(v68 + 8))(v43, v45);
  v46 = v78;
  sub_1BC6FDE94(v78);
  v48 = v79;
  v47 = v80;
  v49 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x1E697DBA8], v81);
  LOBYTE(v28) = sub_1BC75A700();
  v50 = *(v47 + 8);
  v50(v48, v49);
  v50(v46, v49);
  v51 = 0;
  if ((v28 & 1) == 0)
  {
    v52 = [objc_opt_self() systemBackgroundColor];
    v51 = sub_1BC75B4D0();
  }

  v87 = v51;
  v53 = v74;
  v54 = v83;
  sub_1BC75B340();

  (*(v73 + 8))(v54, v53);
  v55 = *(v32 + 16);
  v56 = v66;
  v55(v66, v35, v31);
  v57 = *(v32 + 8);
  v57(v35, v31);
  v55(v82, v56, v31);
  return (v57)(v56, v31);
}

void *sub_1BC6F7354@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = a4;
  v13 = MEMORY[0x1E6981E70];
  v14 = a5;
  v15 = MEMORY[0x1E6981E60];
  v9 = *(_s7SectionVMa(0, &v12) + 60);
  *(a6 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  result = sub_1BC758D30();
  v11 = v13;
  *a6 = v12;
  a6[1] = v11;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = 0;
  a6[5] = 0;
  return result;
}

uint64_t sub_1BC6F7410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10[0] = a3;
  v10[1] = MEMORY[0x1E6981E70];
  v10[2] = a4;
  v10[3] = MEMORY[0x1E6981E60];
  v8 = *(_s7SectionVMa(0, v10) + 60);
  *(a5 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  result = swift_storeEnumTagMultiPayload();
  *a5 = 0;
  a5[1] = 0;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = 0;
  a5[5] = 0;
  return result;
}

uint64_t sub_1BC6F74B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD6C0, &qword_1BC767030);
  v4 = *(a1 + 16);
  v5 = sub_1BC75B7C0();
  v134 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v133 = (&v130 - v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDB8, &qword_1BC769468);
  v169 = v5;
  v7 = sub_1BC75A960();
  v137 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v130 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  v168 = v7;
  v9 = sub_1BC75A960();
  v138 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v136 = (&v130 - v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC8, &qword_1BC769478);
  v167 = v9;
  v11 = sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDD0, &qword_1BC769480);
  v166 = v11;
  v12 = sub_1BC75A960();
  v141 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v130 - v15;
  v151 = sub_1BC75AC20();
  v155 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v154 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BC75A710();
  v152 = *(v17 - 8);
  v153 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v150 = (&v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDDD8, &qword_1BC769488);
  MEMORY[0x1EEE9AC00](v19 - 8);
  *&v170 = a1;
  v20 = *(a1 + 24);
  v149 = v3;
  v21 = v4;
  v146 = v20;
  v147 = &v130 - v22;
  v23 = sub_1BC75B7C0();
  v144 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v143 = &v130 - v24;
  v160 = v25;
  v26 = sub_1BC75A960();
  v142 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v130 - v27;
  v163 = v28;
  v29 = sub_1BC75A960();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v130 - v31);
  v162 = v33;
  v161 = sub_1BC75A960();
  v34 = sub_1BC75A960();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v130 - v39;
  v164 = v41;
  v158 = v12;
  v42 = sub_1BC75AE10();
  v156 = *(v42 - 8);
  v157 = v42;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v165 = &v130 - v44;
  if (v148[4])
  {
    v133 = &v130;
    v135 = v38;
    v136 = v30;
    v45 = v148[5];
    v46 = v148[2];
    v130 = v148[3];
    v131 = v46;
    v140 = v40;
    MEMORY[0x1EEE9AC00](v43);
    v139 = v35;
    v47 = v146;
    *(&v130 - 6) = v4;
    *(&v130 - 5) = v47;
    v48 = *(v170 + 32);
    v49 = *(v170 + 40);
    v134 = v32;
    v51 = v50;
    v132 = v50;
    v52 = sub_1BC6D1E74();
    v141 = v45;

    v137 = v48;
    v138 = v52;
    v127 = v47;
    v53 = v143;
    sub_1BC6F88B8(v131, v130, sub_1BC700398, (&v130 - 8), v51, v45, v149, v4, v127, v52, v48, v49);
    v54 = sub_1BC75B170();
    v55 = v147;
    (*(*(v54 - 8) + 56))(v147, 1, 1, v54);
    v190 = v52;
    v191 = v48;
    v192 = v49;
    v149 = MEMORY[0x1E697D6F0];
    v56 = v160;
    WitnessTable = swift_getWitnessTable();
    v58 = v145;
    sub_1BC75B450();
    sub_1BC66008C(v55, &qword_1EBCDDDD8, &qword_1BC769488);
    (*(v144 + 8))(v53, v56);
    v59 = v150;
    sub_1BC6FDE94(v150);
    v147 = MEMORY[0x1E6980A18];
    v148 = sub_1BC633C54(&qword_1EBCDDDE0, &qword_1EBCDDDB8, &qword_1BC769468, MEMORY[0x1E6980A18]);
    v188 = WitnessTable;
    v189 = v148;
    v60 = v163;
    v61 = swift_getWitnessTable();
    v62 = v134;
    sub_1BC6F89E4(v59, v60, v61);
    (*(v152 + 8))(v59, v153);
    (*(v142 + 8))(v58, v60);
    v63 = v154;
    sub_1BC75AC10();
    v64 = MEMORY[0x1E697FDC0];
    v153 = sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470, MEMORY[0x1E697FDC0]);
    v186 = v61;
    v187 = v153;
    v65 = v162;
    v66 = swift_getWitnessTable();
    v67 = v135;
    sub_1BC75B2F0();
    (*(v155 + 8))(v63, v151);
    v136[1](v62, v65);
    v155 = sub_1BC633C54(&qword_1EBCDDDF0, &qword_1EBCDDDC8, &qword_1BC769478, v64);
    v184 = v66;
    v185 = v155;
    v68 = swift_getWitnessTable();
    v69 = sub_1BC633C54(&qword_1EBCDDDF8, &qword_1EBCDDDD0, &qword_1BC769480, v147);
    v182 = v68;
    v183 = v69;
    v70 = v164;
    v154 = swift_getWitnessTable();
    v72 = v139;
    v71 = v140;
    v73 = *(v139 + 2);
    v73(v140, v67, v70);
    v74 = *(v72 + 1);
    v74(v67, v70);
    v73(v67, v71, v70);
    v179 = v138;
    v180 = v137;
    v181 = MEMORY[0x1E6981E60];
    v177 = swift_getWitnessTable();
    v178 = v148;
    v175 = swift_getWitnessTable();
    v176 = v153;
    v173 = swift_getWitnessTable();
    v174 = v155;
    v171 = swift_getWitnessTable();
    v172 = v69;
    v75 = v158;
    v76 = swift_getWitnessTable();
    sub_1BC633818(v67, v70, v75, v154, v76);
    v74(v67, v70);
    v74(v71, v70);
    sub_1BC635484(v132, v141);
  }

  else
  {
    v77 = v148;
    v79 = v148[2];
    v78 = v148[3];
    MEMORY[0x1EEE9AC00](v43);
    v80 = v146;
    *(&v130 - 6) = v4;
    *(&v130 - 5) = v80;
    v81 = *(v170 + 32);
    v146 = *(v170 + 40);
    v127 = v81;
    v128 = v146;
    v129 = v77;
    v82 = sub_1BC6D1E74();
    v83 = v133;
    v84 = v78;
    v85 = v82;
    v144 = v82;
    v145 = v81;
    sub_1BC6F8B58(v79, v84, sub_1BC6FE0AC, (&v130 - 8), v149, v21, v82, v81);
    v86 = sub_1BC75B170();
    v87 = v147;
    (*(*(v86 - 8) + 56))(v147, 1, 1, v86);
    v235 = v85;
    v236 = v81;
    v237 = MEMORY[0x1E6981E60];
    v149 = MEMORY[0x1E697D6F0];
    v88 = v169;
    v89 = swift_getWitnessTable();
    v90 = v135;
    sub_1BC75B450();
    sub_1BC66008C(v87, &qword_1EBCDDDD8, &qword_1BC769488);
    v134[1](v83, v88);
    v91 = v150;
    sub_1BC6FDE94(v150);
    v92 = MEMORY[0x1E6980A18];
    v148 = sub_1BC633C54(&qword_1EBCDDDE0, &qword_1EBCDDDB8, &qword_1BC769468, MEMORY[0x1E6980A18]);
    v233 = v89;
    v234 = v148;
    v93 = v168;
    v94 = swift_getWitnessTable();
    v95 = v136;
    sub_1BC6F89E4(v91, v93, v94);
    (*(v152 + 8))(v91, v153);
    (*(v137 + 8))(v90, v93);
    v96 = v154;
    sub_1BC75AC10();
    v97 = MEMORY[0x1E697FDC0];
    v153 = sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470, MEMORY[0x1E697FDC0]);
    v231 = v94;
    v232 = v153;
    v98 = v167;
    v99 = swift_getWitnessTable();
    v100 = v140;
    sub_1BC75B2F0();
    (*(v155 + 8))(v96, v151);
    (*(v138 + 8))(v95, v98);
    v155 = sub_1BC633C54(&qword_1EBCDDDF0, &qword_1EBCDDDC8, &qword_1BC769478, v97);
    v229 = v99;
    v230 = v155;
    v101 = swift_getWitnessTable();
    v102 = sub_1BC633C54(&qword_1EBCDDDF8, &qword_1EBCDDDD0, &qword_1BC769480, v92);
    v227 = v101;
    v228 = v102;
    v103 = v158;
    v154 = swift_getWitnessTable();
    v104 = v141;
    v105 = *(v141 + 16);
    v106 = v139;
    v105(v139, v100, v103);
    v107 = *(v104 + 8);
    v107(v100, v103);
    v105(v100, v106, v103);
    v224 = v144;
    v225 = v145;
    v226 = v146;
    v222 = swift_getWitnessTable();
    v223 = v148;
    v220 = swift_getWitnessTable();
    v221 = v153;
    v218 = swift_getWitnessTable();
    v219 = v155;
    v216 = swift_getWitnessTable();
    v217 = v102;
    v108 = v164;
    v109 = swift_getWitnessTable();
    sub_1BC633720(v100, v108, v103, v109, v154);
    v107(v100, v103);
    v107(v106, v103);
  }

  v110 = sub_1BC6D1E74();
  v214 = v110;
  v170 = *(v170 + 32);
  v215 = v170;
  v111 = swift_getWitnessTable();
  v112 = MEMORY[0x1E6980A18];
  v113 = sub_1BC633C54(&qword_1EBCDDDE0, &qword_1EBCDDDB8, &qword_1BC769468, MEMORY[0x1E6980A18]);
  v212 = v111;
  v213 = v113;
  v114 = swift_getWitnessTable();
  v115 = MEMORY[0x1E697FDC0];
  v116 = sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470, MEMORY[0x1E697FDC0]);
  v210 = v114;
  v211 = v116;
  v117 = swift_getWitnessTable();
  v118 = sub_1BC633C54(&qword_1EBCDDDF0, &qword_1EBCDDDC8, &qword_1BC769478, v115);
  v208 = v117;
  v209 = v118;
  v119 = swift_getWitnessTable();
  v120 = sub_1BC633C54(&qword_1EBCDDDF8, &qword_1EBCDDDD0, &qword_1BC769480, v112);
  v206 = v119;
  v207 = v120;
  v121 = swift_getWitnessTable();
  v203 = v110;
  v204 = v170;
  v205 = MEMORY[0x1E6981E60];
  v201 = swift_getWitnessTable();
  v202 = v113;
  v199 = swift_getWitnessTable();
  v200 = v116;
  v197 = swift_getWitnessTable();
  v198 = v118;
  v195 = swift_getWitnessTable();
  v196 = v120;
  v122 = swift_getWitnessTable();
  v193 = v121;
  v194 = v122;
  v123 = v157;
  swift_getWitnessTable();
  v124 = v156;
  v125 = v165;
  (*(v156 + 16))(v159, v165, v123);
  return (*(v124 + 8))(v125, v123);
}

uint64_t sub_1BC6F879C@<X0>(uint64_t *a1@<X8>)
{
  result = v1[1];
  if (result)
  {
    v24[0] = *v1;
    v24[1] = result;

    v6 = sub_1BC651E78(v24, v4, v5);
    v8 = v7;
    v10 = v9;
    sub_1BC75B0F0();
    v11 = sub_1BC75B190();
    v13 = v12;
    v15 = v14;

    sub_1BC680E6C(v6, v8, v10 & 1);

    v16 = sub_1BC75B180();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    sub_1BC680E6C(v11, v13, v15 & 1);

    v23 = v20 & 1;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v23 = 0;
    v22 = 0;
  }

  *a1 = v16;
  a1[1] = v18;
  a1[2] = v23;
  a1[3] = v22;
  return result;
}

uint64_t sub_1BC6F88B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v15(v14);
  a5(v16);
  return sub_1BC75B7B0();
}

uint64_t sub_1BC6F89E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BC75A710();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
  v7 = sub_1BC75A700();
  (*(v4 + 8))(v6, v3);
  v8 = 0;
  if ((v7 & 1) == 0)
  {
    v9 = [objc_opt_self() systemGray6Color];
    v8 = sub_1BC75B4D0();
  }

  v11[1] = v8;
  sub_1BC75B2C0();
}

uint64_t sub_1BC6F8B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_1BC75B7A0();
}

uint64_t sub_1BC6F8C2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v16 = _s3RowVMa(0);
  result = sub_1BC65FFBC(a3, a9 + v16[5], &qword_1EBCDDE00, &qword_1BC769490);
  v18 = a9 + v16[6];
  *v18 = a4;
  *(v18 + 8) = a5;
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  *(a9 + v16[7]) = a8;
  return result;
}

uint64_t sub_1BC6F8CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE10, &qword_1BC7694A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE18, &qword_1BC7694A8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE20, &qword_1BC7694B0);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28[-v10];
  v12 = _s3RowVMa(0);
  if (*(v1 + *(v12 + 28)) == 1)
  {
    v13 = v12;
    v31 = v9;
    v32 = a1;
    sub_1BC6F9038(v1, v5);
    v14 = *(v1 + 8);
    v30 = *v1;
    v29 = v14;
    v15 = sub_1BC757E10(v30, v14);
    KeyPath = swift_getKeyPath();
    if (v15)
    {
      v17 = sub_1BC75BB60();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    sub_1BC640B8C(v5, v8);
    v22 = &v8[*(v6 + 36)];
    *v22 = KeyPath;
    v22[1] = v17;
    v22[2] = v19;
    v23 = (v1 + *(v13 + 24));
    v24 = *v23;
    v25 = *(v23 + 2);
    LOBYTE(v23) = *(v23 + 24);
    v37 = v24;
    v38 = v25;
    v39 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    v37 = v34;
    v38 = v35;
    v39 = v36;
    *&v34 = v30;
    BYTE8(v34) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FE220();
    sub_1BC6FEAB4();
    sub_1BC75B3D0();

    sub_1BC66008C(v8, &qword_1EBCDDE18, &qword_1BC7694A8);
    v26 = v32;
    v27 = v31;
    (*(v33 + 32))(v32, v11, v31);
    return (*(v33 + 56))(v26, 0, 1, v27);
  }

  else
  {
    v20 = *(v33 + 56);

    return v20(a1, 1, 1, v9);
  }
}

uint64_t sub_1BC6F9038@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v286 = a2;
  v261 = sub_1BC75AED0();
  v249 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v248 = &v234 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BC75AE30();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v247 = &v234 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE038, &qword_1BC7699A8);
  v6 = MEMORY[0x1EEE9AC00](v246);
  v245 = &v234 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v242 = &v234 - v8;
  v253 = sub_1BC759910();
  v243 = *(v253 - 8);
  v9 = MEMORY[0x1EEE9AC00](v253);
  v252 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v251 = &v234 - v11;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE040, &qword_1BC7699B0);
  MEMORY[0x1EEE9AC00](v240);
  v254 = &v234 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE048, &qword_1BC7699B8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v256 = &v234 - v14;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF18, &qword_1BC769558);
  v244 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v241 = &v234 - v15;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE050, &qword_1BC7699C0);
  v250 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v255 = &v234 - v16;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE058, &qword_1BC7699C8);
  MEMORY[0x1EEE9AC00](v257);
  v258 = &v234 - v17;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF10, &qword_1BC769550);
  MEMORY[0x1EEE9AC00](v265);
  v260 = &v234 - v18;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE060, &qword_1BC7699D0);
  MEMORY[0x1EEE9AC00](v263);
  v264 = (&v234 - v19);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDED0, &qword_1BC769530);
  MEMORY[0x1EEE9AC00](v281);
  v266 = (&v234 - v20);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEA0, &qword_1BC769518);
  MEMORY[0x1EEE9AC00](v269);
  v267 = &v234 - v21;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE068, &qword_1BC7699D8);
  MEMORY[0x1EEE9AC00](v268);
  v23 = &v234 - v22;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE90, &qword_1BC769510);
  MEMORY[0x1EEE9AC00](v274);
  v25 = &v234 - v24;
  v26 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE070, &qword_1BC7699E0);
  MEMORY[0x1EEE9AC00](v283);
  v285 = &v234 - v29;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE078, &qword_1BC7699E8);
  MEMORY[0x1EEE9AC00](v278);
  v280 = &v234 - v30;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE080, &qword_1BC7699F0);
  MEMORY[0x1EEE9AC00](v272);
  v273 = &v234 - v31;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE68, &qword_1BC769500);
  MEMORY[0x1EEE9AC00](v279);
  v275 = &v234 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE58, &qword_1BC7694F8);
  MEMORY[0x1EEE9AC00](v33);
  v282 = &v234 - v34;
  v284 = _s3RowVMa(0);
  v35 = *(v284 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v284);
  v37 = &v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v39 = *(a1 + 8);
  v276 = *a1;
  LODWORD(v277) = v39;
  v40 = sub_1BC757FB4(v276, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE088, &qword_1BC7699F8);
  v287 = v40;
  v41 = swift_dynamicCastClass();
  if (v41)
  {
    v42 = v41;
    v269 = _s3RowVMa;
    v270 = v38;
    sub_1BC6FF97C(v38, &v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), _s3RowVMa);
    sub_1BC75BDE0();
    v271 = v33;

    v43 = sub_1BC75BDD0();
    v44 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v45 = (v36 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = MEMORY[0x1E69E85E0];
    *(v46 + 16) = v43;
    *(v46 + 24) = v47;
    sub_1BC6FF9E4(v37, v46 + v44);
    *(v46 + v45) = v42;
    v48 = v270;
    sub_1BC6FF97C(v270, v37, v269);

    v49 = sub_1BC75BDD0();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC6FF9E4(v37, v50 + v44);
    *(v50 + v45) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE78, &qword_1BC7649F0);
    sub_1BC75B740();
    v51 = v293;
    v52 = *(&v294 + 1);
    v53 = v294;
    v54 = v48 + *(v284 + 24);
    v55 = *v54;
    v56 = *(v54 + 16);
    LOBYTE(v54) = *(v54 + 24);
    v288 = v55;
    v289.n128_u64[0] = v56;
    v289.n128_u8[8] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    sub_1BC74DB00(v276, v277, v51.n128_i64[0], v51.n128_i64[1], v53, v52, v298.n128_i64[0], v298.n128_i64[1], &v298, v299.n128_i64[0], v299.n128_i8[8]);
    v290[0] = *v300;
    v290[1] = *&v300[16];
    *v291 = v301[0];
    *&v291[9] = *(v301 + 9);
    v288 = v298;
    v289 = v299;
    LOBYTE(v297) = 0;
    v292 = 0;
    v57 = sub_1BC6FFBC8(&v298, &v293);
    sub_1BC6FE52C(v57, v58, v59);
    sub_1BC75AE00();
    v60 = v295[1];
    v61 = v273;
    *(v273 + 32) = v295[0];
    *(v61 + 48) = v60;
    *(v61 + 64) = v296[0];
    *(v61 + 74) = *(v296 + 10);
    v62 = v294;
    *v61 = v293;
    *(v61 + 16) = v62;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE78, &qword_1BC769508);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    v63 = v275;
    sub_1BC75AE00();
    sub_1BC660024(v63, v280, &qword_1EBCDDE68, &qword_1BC769500);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v64 = v282;
    sub_1BC75AE00();
    sub_1BC66008C(v63, &qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC660024(v64, v285, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    v65 = &v298;
LABEL_3:
    sub_1BC6FFC24(v65);
    v66 = v64;
LABEL_7:
    v82 = &qword_1EBCDDE58;
    v83 = &qword_1BC7694F8;
    return sub_1BC66008C(v66, v82, v83);
  }

  v235 = v35;
  v236 = &v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = v25;
  v239 = v28;
  v237 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE090, &qword_1BC769A00);
  if (swift_dynamicCastClass())
  {
    v67 = v284;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    v69 = v239;
    MEMORY[0x1BFB262E0](v68);
    swift_getAtKeyPath();
    sub_1BC6FE158(v69);
    v70 = (v38 + *(v67 + 24));
    v71 = *v70;
    v72 = v70[1].n128_u64[0];
    LOBYTE(v70) = v70[1].n128_u8[8];
    v293 = v71;
    *&v294 = v72;
    BYTE8(v294) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    sub_1BC74DBB4(v276, v277, v288.n128_u64[0], v288.n128_u64[1], v289.n128_u64[0], v289.n128_u8[8], &v298);
    v290[0] = *v300;
    v290[1] = *&v300[16];
    *v291 = v301[0];
    *&v291[9] = *(v301 + 9);
    v288 = v298;
    v289 = v299;
    LOBYTE(v297) = 1;
    v292 = 1;
    sub_1BC6FFBC8(&v298, &v293);
    v73 = sub_1BC6FFBC8(&v298, &v293);
    sub_1BC6FE52C(v73, v74, v75);
    sub_1BC75AE00();
    v76 = v295[1];
    v77 = v273;
    *(v273 + 32) = v295[0];
    *(v77 + 48) = v76;
    *(v77 + 64) = v296[0];
    *(v77 + 74) = *(v296 + 10);
    v78 = v294;
    *v77 = v293;
    *(v77 + 16) = v78;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE78, &qword_1BC769508);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    v79 = v275;
    sub_1BC75AE00();
    sub_1BC660024(v79, v280, &qword_1EBCDDE68, &qword_1BC769500);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v80 = v282;
    sub_1BC75AE00();
    sub_1BC66008C(v79, &qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC660024(v80, v285, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    sub_1BC6FFC24(&v298);
    v81 = &v298;
LABEL_6:
    sub_1BC6FFC24(v81);
    v66 = v80;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE098, &qword_1BC769A08);
  v85 = swift_dynamicCastClass();
  v86 = v38;
  v87 = v284;
  v271 = v33;
  if (v85)
  {
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    v89 = v87;
    v90 = v239;
    MEMORY[0x1BFB262E0](v88);
    swift_getAtKeyPath();
    sub_1BC6FE158(v90);
    v91 = (v38 + *(v89 + 24));
    v92 = *v91;
    v93 = v91[1].n128_u64[0];
    LOBYTE(v91) = v91[1].n128_u8[8];
    v293 = v92;
    *&v294 = v93;
    BYTE8(v294) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    sub_1BC74DBB4(v276, v277, v288.n128_u64[0], v288.n128_u64[1], v289.n128_u64[0], v289.n128_u8[8], &v293);
    v94 = v295[1];
    v95 = v237;
    *(v237 + 2) = v295[0];
    *(v95 + 48) = v94;
    *(v95 + 64) = v296[0];
    *(v95 + 73) = *(v296 + 9);
    v96 = v294;
    *v95 = v293;
    *(v95 + 16) = v96;
    swift_storeEnumTagMultiPayload();
    sub_1BC6FFBC8(&v293, &v288);
    v97 = sub_1BC6FFBC8(&v293, &v288);
    sub_1BC6FE52C(v97, v98, v99);
    sub_1BC6FE60C();
    v100 = v238;
    sub_1BC75AE00();
    sub_1BC660024(v100, v273, &qword_1EBCDDE90, &qword_1BC769510);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE78, &qword_1BC769508);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    v101 = v275;
    sub_1BC75AE00();
    sub_1BC66008C(v100, &qword_1EBCDDE90, &qword_1BC769510);
    sub_1BC660024(v101, v280, &qword_1EBCDDE68, &qword_1BC769500);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v64 = v282;
    sub_1BC75AE00();
    sub_1BC66008C(v101, &qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC660024(v64, v285, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    sub_1BC6FFC24(&v293);
    v65 = &v293;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0A0, &qword_1BC769A10);
  v102 = swift_dynamicCastClass();
  v103 = v285;
  v104 = v239;
  if (v102)
  {
    v266 = _s3RowVMa;
    v284 = v102;
    v105 = v236;
    sub_1BC6FF97C(v86, v236, _s3RowVMa);
    sub_1BC75BDE0();

    v106 = sub_1BC75BDD0();
    v107 = (*(v235 + 80) + 32) & ~*(v235 + 80);
    v108 = (v36 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    v110 = MEMORY[0x1E69E85E0];
    *(v109 + 16) = v106;
    *(v109 + 24) = v110;
    sub_1BC6FF9E4(v105, v109 + v107);
    *(v109 + v108) = v284;
    sub_1BC6FF97C(v86, v105, v266);

    v111 = sub_1BC75BDD0();
    v112 = swift_allocObject();
    *(v112 + 16) = v111;
    *(v112 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC6FF9E4(v105, v112 + v107);
    *(v112 + v108) = v284;
    sub_1BC75B740();
    MEMORY[0x1EEE9AC00](v293.n128_u64[0]);
    v113 = v267;
    sub_1BC75B6E0();
    v114 = sub_1BC757D6C(v276, v277);
    LOBYTE(v111) = sub_1BC758D2C(v114, 0);
    KeyPath = swift_getKeyPath();
    v116 = swift_allocObject();
    *(v116 + 16) = v111 & 1;
    v117 = (v113 + *(v269 + 9));
    *v117 = KeyPath;
    v117[1] = sub_1BC6FFF88;
    v117[2] = v116;
    sub_1BC660024(v113, v237, &qword_1EBCDDEA0, &qword_1BC769518);
    v118 = swift_storeEnumTagMultiPayload();
    sub_1BC6FE52C(v118, v119, v120);
    sub_1BC6FE60C();
    v121 = v238;
    sub_1BC75AE00();
    sub_1BC660024(v121, v273, &qword_1EBCDDE90, &qword_1BC769510);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE78, &qword_1BC769508);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    v122 = v275;
    sub_1BC75AE00();
    sub_1BC66008C(v121, &qword_1EBCDDE90, &qword_1BC769510);
    sub_1BC660024(v122, v280, &qword_1EBCDDE68, &qword_1BC769500);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v123 = v282;
    sub_1BC75AE00();
    sub_1BC66008C(v122, &qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC660024(v123, v285, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    sub_1BC66008C(v123, &qword_1EBCDDE58, &qword_1BC7694F8);
    v66 = v113;
    v82 = &qword_1EBCDDEA0;
    v83 = &qword_1BC769518;
    return sub_1BC66008C(v66, v82, v83);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0A8, &qword_1BC769A18);
  if (swift_dynamicCastClass())
  {
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    MEMORY[0x1BFB262E0](v124);
    swift_getAtKeyPath();
    sub_1BC6FE158(v104);
    v293.n128_u8[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0F0, &qword_1BC769A48);
    v125 = sub_1BC75B750();
    v298 = v288;
    v299.n128_u8[0] = v289.n128_u8[0];
    v128 = sub_1BC6FFDD4(v125, v126, v127);
    sub_1BC6FFE28(v128, v129, v130);
    sub_1BC74F330(&v298, &_s7ConcernON, v128, &v293);
    v288 = v293;
    v284 = v293.n128_i64[1];
    v277 = v293.n128_u64[0];
    v289.n128_u64[0] = v294;
    v289.n128_u16[4] = BYTE8(v294);
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEF0, &qword_1BC769540);
    v131 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF00, &qword_1BC769548);
    sub_1BC633C54(&qword_1EBCDDEE8, &qword_1EBCDDEF0, &qword_1BC769540, &unk_1BC76E68C);
    sub_1BC633C54(&qword_1EBCDDEF8, &qword_1EBCDDF00, &qword_1BC769548, &unk_1BC76E68C);
    sub_1BC75AE00();
    v132 = v294;
    v133 = BYTE8(v294);
    v134 = BYTE9(v294);
    v135 = v264;
    *v264 = v293;
    v135[1].n128_u64[0] = v132;
    v135[1].n128_u8[8] = v133;
    v135[1].n128_u8[9] = v134;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEE0, &qword_1BC769538);
    sub_1BC6FE77C();
    sub_1BC6FE85C();
    v136 = v266;
    sub_1BC75AE00();
    sub_1BC660024(v136, v280, &qword_1EBCDDED0, &qword_1BC769530);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v137 = v282;
    sub_1BC75AE00();
    sub_1BC66008C(v136, &qword_1EBCDDED0, &qword_1BC769530);
    sub_1BC660024(v137, v131, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    swift_bridgeObjectRelease_n();
LABEL_17:

    v66 = v137;
    v82 = &qword_1EBCDDE58;
    v83 = &qword_1BC7694F8;
    return sub_1BC66008C(v66, v82, v83);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0B0, &qword_1BC769A20);
  v138 = swift_dynamicCastClass();
  v139 = v277;
  v140 = v276;
  if (v138)
  {
    v284 = v138;
    v141 = v236;
    sub_1BC6FF97C(v86, v236, _s3RowVMa);
    sub_1BC75BDE0();

    v142 = sub_1BC75BDD0();
    v270 = v86;
    v143 = v142;
    v144 = (*(v235 + 80) + 32) & ~*(v235 + 80);
    v145 = (v36 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
    v146 = swift_allocObject();
    v147 = MEMORY[0x1E69E85E0];
    *(v146 + 16) = v143;
    *(v146 + 24) = v147;
    sub_1BC6FF9E4(v141, v146 + v144);
    v148 = v284;
    *(v146 + v145) = v284;
    sub_1BC6FF97C(v270, v141, _s3RowVMa);

    v149 = sub_1BC75BDD0();
    v150 = swift_allocObject();
    *(v150 + 16) = v149;
    *(v150 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC6FF9E4(v141, v150 + v144);
    *(v150 + v145) = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0D8, &qword_1BC769A40);
    v151 = sub_1BC75B740();
    v298 = v288;
    v299.n128_u8[0] = v289.n128_u8[0];
    v154 = sub_1BC6FFD2C(v151, v152, v153);
    sub_1BC6FFD80(v154, v155, v156);
    sub_1BC74F330(&v298, &type metadata for AustralianState, v154, &v293);
    v288 = v293;
    v284 = v293.n128_u64[0];
    v289.n128_u64[0] = v294;
    v289.n128_u8[8] = BYTE8(v294);
    v289.n128_u8[9] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEF0, &qword_1BC769540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF00, &qword_1BC769548);
    sub_1BC633C54(&qword_1EBCDDEE8, &qword_1EBCDDEF0, &qword_1BC769540, &unk_1BC76E68C);
    sub_1BC633C54(&qword_1EBCDDEF8, &qword_1EBCDDF00, &qword_1BC769548, &unk_1BC76E68C);
    sub_1BC75AE00();
    v157 = v294;
    v158 = BYTE8(v294);
    v159 = BYTE9(v294);
    v160 = v264;
    *v264 = v293;
    v160[1].n128_u64[0] = v157;
    v160[1].n128_u8[8] = v158;
    v160[1].n128_u8[9] = v159;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEE0, &qword_1BC769538);
    sub_1BC6FE77C();
    sub_1BC6FE85C();
    v161 = v266;
    sub_1BC75AE00();
    sub_1BC660024(v161, v280, &qword_1EBCDDED0, &qword_1BC769530);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v137 = v282;
    sub_1BC75AE00();
    sub_1BC66008C(v161, &qword_1EBCDDED0, &qword_1BC769530);
    sub_1BC660024(v137, v285, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0B8, &qword_1BC769A28);
  if (swift_dynamicCastClass())
  {
    v162 = v284;
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    MEMORY[0x1BFB262E0](v163);
    swift_getAtKeyPath();
    sub_1BC6FE158(v104);
    v288.n128_u64[0] = v293.n128_u64[0];
    sub_1BC75C590();
    v164 = (v86 + *(v162 + 24));
    v165 = *v164;
    v166 = v164[1].n128_u64[0];
    LOBYTE(v164) = v164[1].n128_u8[8];
    v293 = v165;
    *&v294 = v166;
    BYTE8(v294) = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
    sub_1BC75A6C0();
    sub_1BC74DBB4(v140, v139, v288.n128_u64[0], v288.n128_u64[1], v289.n128_u64[0], v289.n128_u8[8], &v293);
    v167 = v295[1];
    v168 = v258;
    *(v258 + 2) = v295[0];
    *(v168 + 3) = v167;
    *(v168 + 4) = v296[0];
    *(v168 + 73) = *(v296 + 9);
    v169 = v294;
    *v168 = v293;
    *(v168 + 1) = v169;
    swift_storeEnumTagMultiPayload();
    sub_1BC6FFBC8(&v293, &v288);
    v170 = sub_1BC6FFBC8(&v293, &v288);
    sub_1BC6FE52C(v170, v171, v172);
    v173 = sub_1BC633C54(&qword_1EBCDDF20, &qword_1EBCDDF18, &qword_1BC769558, MEMORY[0x1E697BDC8]);
    v174 = sub_1BC6FFB80(&qword_1EBCDDF28, MEMORY[0x1E697C7C0], MEMORY[0x1E697C7B8]);
    v288.n128_u64[0] = v259;
    v288.n128_u64[1] = v261;
    v289.n128_u64[0] = v173;
    v289.n128_u64[1] = v174;
    swift_getOpaqueTypeConformance2();
    v175 = v103;
    v176 = v260;
    sub_1BC75AE00();
    sub_1BC660024(v176, v264, &qword_1EBCDDF10, &qword_1BC769550);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEE0, &qword_1BC769538);
    sub_1BC6FE77C();
    sub_1BC6FE85C();
    v177 = v266;
    sub_1BC75AE00();
    sub_1BC66008C(v176, &qword_1EBCDDF10, &qword_1BC769550);
    sub_1BC660024(v177, v280, &qword_1EBCDDED0, &qword_1BC769530);
    swift_storeEnumTagMultiPayload();
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    v80 = v282;
    sub_1BC75AE00();
    sub_1BC66008C(v177, &qword_1EBCDDED0, &qword_1BC769530);
    sub_1BC660024(v80, v175, &qword_1EBCDDE58, &qword_1BC7694F8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();

    sub_1BC6FFC24(&v293);
    v81 = &v293;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0C0, &qword_1BC769A30);
  v178 = swift_dynamicCastClass();
  if (v178)
  {
    v284 = v178;
    sub_1BC7572F8(v140, v139, &v293);
    v288 = v293;
    v277 = _s3RowVMa;
    v179 = v236;
    sub_1BC6FF97C(v86, v236, _s3RowVMa);
    sub_1BC75BDE0();

    v180 = sub_1BC75BDD0();
    v181 = (*(v235 + 80) + 32) & ~*(v235 + 80);
    v182 = (v36 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
    v183 = swift_allocObject();
    v184 = MEMORY[0x1E69E85E0];
    *(v183 + 16) = v180;
    *(v183 + 24) = v184;
    sub_1BC6FF9E4(v179, v183 + v181);
    v185 = v284;
    *(v183 + v182) = v284;
    sub_1BC6FF97C(v86, v179, v277);

    v186 = sub_1BC75BDD0();
    v187 = swift_allocObject();
    *(v187 + 16) = v186;
    *(v187 + 24) = MEMORY[0x1E69E85E0];
    sub_1BC6FF9E4(v179, v187 + v181);
    *(v187 + v182) = v185;
    v188 = v253;
    sub_1BC75B740();
    v189 = v251;
    sub_1BC7598B0();
    v190 = v252;
    sub_1BC759900();
    sub_1BC6FFB80(&qword_1EBCDE0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    result = sub_1BC75BAA0();
    if (result)
    {
      v192 = v242;
      v191 = v243;
      v193 = *(v243 + 32);
      v193(v242, v189, v188);
      v194 = v246;
      v193((v192 + *(v246 + 48)), v190, v188);
      v195 = v245;
      sub_1BC660024(v192, v245, &qword_1EBCDE038, &qword_1BC7699A8);
      v196 = *(v194 + 48);
      v193(v254, v195, v188);
      v197 = *(v191 + 8);
      v197(v195 + v196, v188);
      sub_1BC65FFBC(v192, v195, &qword_1EBCDE038, &qword_1BC7699A8);
      v193(&v254[*(v240 + 36)], (v195 + *(v194 + 48)), v188);
      v197(v195, v188);
      v198 = sub_1BC75AE20();
      sub_1BC651EB8(v198, v199, v200);
      v201 = v241;
      sub_1BC75A660();
      v202 = v248;
      sub_1BC75AEC0();
      v203 = sub_1BC633C54(&qword_1EBCDDF20, &qword_1EBCDDF18, &qword_1BC769558, MEMORY[0x1E697BDC8]);
      v204 = sub_1BC6FFB80(&qword_1EBCDDF28, MEMORY[0x1E697C7C0], MEMORY[0x1E697C7B8]);
      v205 = v255;
      v206 = v259;
      v207 = v261;
      sub_1BC75B280();
      (*(v249 + 8))(v202, v207);
      (*(v244 + 8))(v201, v206);
      v208 = v250;
      v209 = v262;
      (*(v250 + 16))(v258, v205, v262);
      v210 = swift_storeEnumTagMultiPayload();
      sub_1BC6FE52C(v210, v211, v212);
      v293.n128_u64[0] = v206;
      v293.n128_u64[1] = v207;
      *&v294 = v203;
      *(&v294 + 1) = v204;
      swift_getOpaqueTypeConformance2();
      v213 = v260;
      sub_1BC75AE00();
      sub_1BC660024(v213, v264, &qword_1EBCDDF10, &qword_1BC769550);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDEE0, &qword_1BC769538);
      sub_1BC6FE77C();
      sub_1BC6FE85C();
      v214 = v266;
      sub_1BC75AE00();
      sub_1BC66008C(v213, &qword_1EBCDDF10, &qword_1BC769550);
      sub_1BC660024(v214, v280, &qword_1EBCDDED0, &qword_1BC769530);
      swift_storeEnumTagMultiPayload();
      sub_1BC6FE474();
      sub_1BC6FE6F0();
      v215 = v282;
      sub_1BC75AE00();
      sub_1BC66008C(v214, &qword_1EBCDDED0, &qword_1BC769530);
      sub_1BC660024(v215, v285, &qword_1EBCDDE58, &qword_1BC7694F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
      sub_1BC6FE3E8();
      sub_1BC6FE9A8();
      sub_1BC75AE00();

      sub_1BC66008C(v215, &qword_1EBCDDE58, &qword_1BC7694F8);
      return (*(v208 + 8))(v255, v209);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE0C8, &qword_1BC769A38);
    if (!swift_dynamicCastClass())
    {

      v287 = sub_1BC75B810();
      v223 = v222;
      sub_1BC6FC200(v86, &v293);
      v224 = v293;
      v225 = v294;
      v226 = *(&v294 + 1);
      v227 = *&v295[0];
      v228 = BYTE8(v295[0]);
      v229 = BYTE9(v295[0]);
      sub_1BC680FFC(v293.n128_i64[0], v293.n128_i64[1], v294);

      sub_1BC680E6C(v224.n128_i64[0], v224.n128_i64[1], v225);

      v293.n128_u8[0] = v225;
      v298.n128_u64[0] = v287;
      v298.n128_u64[1] = v223;
      v299 = v224;
      v300[0] = v225;
      *&v300[8] = v226;
      *&v300[16] = v227;
      v300[24] = v228;
      v300[25] = v229;
      v288 = v298;
      v289 = v224;
      v290[0] = *v300;
      *(v290 + 10) = *&v300[10];
      LOBYTE(v297) = 1;
      BYTE10(v290[1]) = 1;
      sub_1BC660024(&v298, &v293, &qword_1EBCDDF50, &qword_1BC769568);
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF50, &qword_1BC769568);
      sub_1BC6FEA60(v230, v231, v232);
      sub_1BC633C54(&qword_1EBCDDF48, &qword_1EBCDDF50, &qword_1BC769568, MEMORY[0x1E6981880]);
      sub_1BC75AE00();
      v233 = v294;
      *v103 = v293;
      *(v103 + 16) = v233;
      *(v103 + 32) = v295[0];
      *(v103 + 43) = *(v295 + 11);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
      sub_1BC6FE3E8();
      sub_1BC6FE9A8();
      sub_1BC75AE00();
      v66 = &v298;
      v82 = &qword_1EBCDDF50;
      v83 = &qword_1BC769568;
      return sub_1BC66008C(v66, v82, v83);
    }

    v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
    MEMORY[0x1BFB262E0](v216);
    swift_getAtKeyPath();
    sub_1BC6FE158(v104);
    nullsub_1();
    v298.n128_u8[0] = 0;
    v288.n128_u64[0] = v217;
    BYTE10(v290[1]) = 0;
    v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF50, &qword_1BC769568);
    sub_1BC6FEA60(v218, v219, v220);
    sub_1BC633C54(&qword_1EBCDDF48, &qword_1EBCDDF50, &qword_1BC769568, MEMORY[0x1E6981880]);
    sub_1BC75AE00();
    v221 = v294;
    *v103 = v293;
    *(v103 + 16) = v221;
    *(v103 + 32) = v295[0];
    *(v103 + 43) = *(v295 + 11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    sub_1BC75AE00();
  }

  return result;
}

uint64_t sub_1BC6FBBC4@<X0>(void *a2@<X8>)
{
  v3 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s3RowVMa(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0](v6);
  v7 = swift_readAtKeyPath();
  v10 = *v8;
  v9 = v8[1];

  v7(v12, 0);
  result = sub_1BC6FE158(v5);
  *a2 = v10;
  a2[1] = v9;
  return result;
}

uint64_t sub_1BC6FBCB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  _s3RowVMa(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  swift_setAtWritableKeyPath();
  return sub_1BC75B710();
}

uint64_t sub_1BC6FBDA4@<X0>(_BYTE *a2@<X8>)
{
  v3 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s3RowVMa(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0](v6);
  v7 = swift_readAtKeyPath();
  v9 = *v8;
  v7(v11, 0);
  result = sub_1BC6FE158(v5);
  *a2 = v9;
  return result;
}

uint64_t sub_1BC6FBE90(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  _s3RowVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  swift_setAtWritableKeyPath();
  return sub_1BC75B710();
}

uint64_t sub_1BC6FBF74@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s3RowVMa(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0](v6);
  v7 = swift_readAtKeyPath();
  v9 = v8;
  v10 = sub_1BC759910();
  (*(*(v10 - 8) + 16))(a2, v9, v10);
  v7(v12, 0);
  return sub_1BC6FE158(v5);
}

uint64_t sub_1BC6FC098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1BC759910();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  _s3RowVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  MEMORY[0x1BFB262E0]();
  swift_setAtWritableKeyPath();
  return sub_1BC75B710();
}

uint64_t sub_1BC6FC200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BC7572F8(*a1, *(a1 + 8), v15);
  v14[0] = v15[0];
  v14[1] = v15[1];
  v5 = sub_1BC651E78(v14, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1BC75B4E0();
  *a2 = v5;
  *(a2 + 8) = v7;
  v9 &= 1u;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = 256;
  sub_1BC680FFC(v5, v7, v9);

  sub_1BC680E6C(v5, v7, v9);
}

uint64_t sub_1BC6FC2C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *a2;
  v13 = a2[1];
  v14 = *(_s6DetailVMa(0, a5, a6, a4) + 44);
  *(a7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  result = swift_storeEnumTagMultiPayload();
  *a7 = v10;
  a7[1] = v11;
  a7[2] = v12;
  a7[3] = v13;
  a7[4] = a3;
  a7[5] = a4;
  return result;
}

uint64_t sub_1BC6FC364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF78, &qword_1BC76EB80) + 44);
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = nullsub_1;
  a3[5] = 0;
  return result;
}

__n128 sub_1BC6FC404@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v13 = *a1;
  v9 = a1[1].n128_u64[0];
  v10 = a1[1].n128_u64[1];
  v11 = *(_s6DetailVMa(0, a4, a5, a4) + 44);
  *(a6->n128_u64 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  result = v13;
  *a6 = v13;
  a6[1].n128_u64[0] = v9;
  a6[1].n128_u64[1] = v10;
  a6[2].n128_u64[0] = a2;
  a6[2].n128_u64[1] = a3;
  return result;
}

__n128 sub_1BC6FC4A8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF78, &qword_1BC76EB80) + 44);
  *(a2->n128_u64 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  result = v7;
  *a2 = v7;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = v4;
  a2[2].n128_u64[0] = nullsub_1;
  a2[2].n128_u64[1] = 0;
  return result;
}

uint64_t sub_1BC6FC550@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = sub_1BC75A710();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  sub_1BC75A960();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF80, &qword_1BC769580);
  swift_getTupleTypeMetadata2();
  sub_1BC75B850();
  v24[0] = swift_getWitnessTable();
  v6 = sub_1BC75B6D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDDC0, &qword_1BC769470);
  v10 = sub_1BC75A960();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  v17 = *(a1 + 24);
  v29 = v5;
  v30 = v17;
  v31 = v24[1];
  sub_1BC75AC00();
  sub_1BC75B6C0();
  v18 = v25;
  sub_1BC6FDE94(v25);
  WitnessTable = swift_getWitnessTable();
  sub_1BC6F89E4(v18, v6, WitnessTable);
  (*(v26 + 8))(v18, v27);
  (*(v7 + 8))(v9, v6);
  v20 = sub_1BC633C54(&qword_1EBCDDDE8, &qword_1EBCDDDC0, &qword_1BC769470, MEMORY[0x1E697FDC0]);
  v32 = WitnessTable;
  v33 = v20;
  swift_getWitnessTable();
  v21 = *(v11 + 16);
  v21(v16, v14, v10);
  v22 = *(v11 + 8);
  v22(v14, v10);
  v21(v28, v16, v10);
  return (v22)(v16, v10);
}

uint64_t sub_1BC6FC938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v68 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BC75A960();
  v11 = *(v10 - 8);
  v69 = v10;
  v70 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v56[-v16];
  v65 = &v56[-v16];
  (*(v6 + 32))(v15);
  sub_1BC75B810();
  sub_1BC75B3B0();
  (*(v7 + 8))(v9, a2);
  v92 = a3;
  v93 = MEMORY[0x1E697E040];
  v18 = v69;
  WitnessTable = swift_getWitnessTable();
  v19 = v70;
  v20 = *(v70 + 16);
  v63 = v70 + 16;
  v64 = v20;
  v62 = v14;
  v20(v17, v14, v18);
  v21 = *(v19 + 8);
  v70 = v19 + 8;
  v67 = v21;
  v21(v14, v18);
  v61 = sub_1BC75ACE0();
  LOBYTE(v73[0]) = 1;
  v22 = *(v6 + 8);
  *&v115 = *v6;
  *(&v115 + 1) = v22;

  v25 = sub_1BC651E78(&v115, v23, v24);
  v27 = v26;
  LOBYTE(v17) = v28;
  v29 = sub_1BC75B180();
  v58 = v30;
  v59 = v29;
  v57 = v31;
  v60 = v32;
  sub_1BC680E6C(v25, v27, v17 & 1);

  v33 = *(v6 + 24);
  *&v115 = *(v6 + 16);
  *(&v115 + 1) = v33;

  v36 = sub_1BC651E78(&v115, v34, v35);
  v38 = v37;
  LOBYTE(v6) = v39;
  v41 = v40;
  KeyPath = swift_getKeyPath();
  v43 = sub_1BC75B0C0();
  v44 = swift_getKeyPath();
  LOBYTE(v7) = v6 & 1;
  LOBYTE(v115) = v6 & 1;
  LOBYTE(v110) = 0;
  v45 = sub_1BC75B500();
  LOBYTE(v6) = v57 & 1;
  LOBYTE(v101[0]) = v57 & 1;
  *&v110 = v36;
  *(&v110 + 1) = v38;
  LOBYTE(v111[0]) = v7;
  *(&v111[0] + 1) = v41;
  *&v111[1] = KeyPath;
  *(&v111[1] + 1) = 1;
  LOBYTE(v111[2]) = 0;
  *(&v111[2] + 1) = v44;
  *&v111[3] = v43;
  *(&v111[3] + 1) = v45;
  v89 = v111[2];
  v90 = v111[3];
  v87 = v111[0];
  v88 = v111[1];
  v86 = v110;
  *&v115 = v36;
  *(&v115 + 1) = v38;
  LOBYTE(v116) = v7;
  *(&v116 + 1) = v41;
  *&v117 = KeyPath;
  *(&v117 + 1) = 1;
  LOBYTE(v118) = 0;
  *(&v118 + 1) = v44;
  *&v119 = v43;
  *(&v119 + 1) = v45;
  v47 = v58;
  v46 = v59;
  sub_1BC680FFC(v59, v58, v57 & 1);
  v48 = v60;

  sub_1BC660024(&v110, &v74, &qword_1EBCDE030, &qword_1BC7699A0);
  sub_1BC66008C(&v115, &qword_1EBCDE030, &qword_1BC7699A0);
  sub_1BC680E6C(v46, v47, v6);

  v97 = v87;
  v98 = v88;
  v99 = v89;
  v100 = v90;
  v96 = v86;
  v108 = v89;
  v109 = v90;
  v106 = v87;
  v107 = v88;
  *(&v95 + 1) = v110;
  DWORD1(v95) = *(&v110 + 3);
  *&v94 = v46;
  *(&v94 + 1) = v47;
  LOBYTE(v95) = v6;
  *(&v95 + 1) = v48;
  v101[0] = v46;
  v101[1] = v47;
  v102 = v6;
  *&v103[3] = *(&v110 + 3);
  *v103 = v110;
  v104 = v48;
  v105 = v86;
  sub_1BC660024(&v94, &v115, &qword_1EBCDE010, &qword_1BC769930);
  sub_1BC66008C(v101, &qword_1EBCDE010, &qword_1BC769930);
  *&v91[55] = v97;
  *&v91[71] = v98;
  *&v91[87] = v99;
  *&v91[103] = v100;
  *&v91[7] = v94;
  *&v91[23] = v95;
  *&v91[39] = v96;
  LOBYTE(v36) = v73[0];
  v49 = sub_1BC75B030();
  *(&v111[4] + 1) = *&v91[64];
  *(&v111[5] + 1) = *&v91[80];
  *(&v111[6] + 1) = *&v91[96];
  *(v111 + 1) = *v91;
  *(&v111[1] + 1) = *&v91[16];
  *(&v111[2] + 1) = *&v91[32];
  LOBYTE(v74) = 1;
  v110 = v61;
  LOBYTE(v111[0]) = v36;
  *&v111[7] = *&v91[111];
  *(&v111[3] + 1) = *&v91[48];
  BYTE8(v111[7]) = v49;
  *(&v111[7] + 9) = v115;
  HIDWORD(v111[7]) = *(&v115 + 3);
  v112 = 0u;
  v113 = 0u;
  v114 = 1;
  v50 = v62;
  v51 = v65;
  v52 = v69;
  v64(v62, v65, v69);
  v82 = v111[7];
  v83 = v112;
  v84 = v113;
  v85 = v114;
  v78 = v111[3];
  v79 = v111[4];
  v80 = v111[5];
  v81 = v111[6];
  v74 = v110;
  v75 = v111[0];
  v76 = v111[1];
  v77 = v111[2];
  *&v86 = v50;
  *(&v86 + 1) = &v74;
  sub_1BC660024(&v110, &v115, &qword_1EBCDDF80, &qword_1BC769580);
  v73[0] = v52;
  v73[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF80, &qword_1BC769580);
  v71 = WitnessTable;
  v72 = sub_1BC6FF8C4();
  sub_1BC6C9838(&v86, 2uLL, v73);
  sub_1BC66008C(&v110, &qword_1EBCDDF80, &qword_1BC769580);
  v53 = v51;
  v54 = v67;
  v67(v53, v52);
  v123 = v82;
  v124 = v83;
  v125 = v84;
  v126 = v85;
  v120 = v79;
  v121 = v80;
  v122 = v81;
  v115 = v74;
  v116 = v75;
  v117 = v76;
  v118 = v77;
  v119 = v78;
  sub_1BC66008C(&v115, &qword_1EBCDDF80, &qword_1BC769580);
  return v54(v50, v52);
}

uint64_t sub_1BC6FD028(unsigned __int8 a1)
{
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](a1);
  return sub_1BC75C720();
}

uint64_t sub_1BC6FD08C(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC6FD000(v3, *v1);
  return sub_1BC75C720();
}

void *sub_1BC6FD0CC@<X0>(void *result@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = result[1];
  v7 = *a2;
  v8 = a2[1];
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  *(a6 + 32) = a3;
  return result;
}

uint64_t sub_1BC6FD0E8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFD0, &qword_1BC769888);
  MEMORY[0x1EEE9AC00](v38);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFD8, &qword_1BC769890);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFE0, &unk_1BC769898);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v37 - v7;
  v9 = sub_1BC75B5D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = *(v1 + 32);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      sub_1BC75B5C0();
      (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
      v21 = sub_1BC75B610();

      (*(v10 + 8))(v12, v9);
      v22 = sub_1BC75B4F0();
      KeyPath = swift_getKeyPath();
      v41 = v21;
      v42 = xmmword_1BC769410;
      v43 = KeyPath;
      v44 = v22;
      v45 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFE8, &qword_1BC7698A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6B0, &qword_1BC7698B0);
      sub_1BC6FF648();
      sub_1BC680F34();
      sub_1BC75AE00();
      v24 = v48;
      v25 = v49;
      v26 = v47;
      *v3 = v46;
      *(v3 + 1) = v26;
      *(v3 + 4) = v24;
      v3[40] = v25;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFF8, &unk_1BC7698B8);
      sub_1BC6FF700(&qword_1EBCDE000, &qword_1EBCDDFE0, &unk_1BC769898, sub_1BC6CBAA8);
      sub_1BC6FF77C();
      sub_1BC75AE00();
    }

    else
    {
      v32 = [objc_opt_self() mainBundle];
      sub_1BC75B620();
      (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
      v33 = sub_1BC75B610();

      (*(v10 + 8))(v12, v9);
      v41 = v33;
      v42 = xmmword_1BC769410;
      v43 = 0;
      v44 = 0;
      v45 = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFE8, &qword_1BC7698A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6B0, &qword_1BC7698B0);
      sub_1BC6FF648();
      sub_1BC680F34();
      sub_1BC75AE00();
      v34 = v48;
      v35 = v49;
      v36 = v47;
      *v3 = v46;
      *(v3 + 1) = v36;
      *(v3 + 4) = v34;
      v3[40] = v35;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFF8, &unk_1BC7698B8);
      sub_1BC6FF700(&qword_1EBCDE000, &qword_1EBCDDFE0, &unk_1BC769898, sub_1BC6CBAA8);
      sub_1BC6FF77C();
      sub_1BC75AE00();
    }
  }

  else
  {
    v37 = v4;
    if (v16)
    {
      sub_1BC75B5C0();
      (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
      v27 = sub_1BC75B610();

      (*(v10 + 8))(v12, v9);
      v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
      sub_1BC75ACF0();
      v30 = sub_1BC75AD00();
      (*(*(v30 - 8) + 56))(v28 + v29, 0, 1, v30);
      *v28 = swift_getKeyPath();
      *v15 = v27;
      *(v15 + 1) = 0;
      *(v15 + 8) = 257;
      *&v15[*(v13 + 36)] = sub_1BC75B500();
    }

    else
    {
      sub_1BC75B5C0();
      (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
      v17 = sub_1BC75B610();

      (*(v10 + 8))(v12, v9);
      v18 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
      sub_1BC75ACF0();
      v20 = sub_1BC75AD00();
      (*(*(v20 - 8) + 56))(v18 + v19, 0, 1, v20);
      *v18 = swift_getKeyPath();
      *v15 = v17;
      *(v15 + 1) = 0;
      *(v15 + 8) = 257;
      *&v15[*(v13 + 36)] = sub_1BC75B4F0();
    }

    sub_1BC660024(v15, v6, &qword_1EBCDC5A0, &qword_1BC766B10);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CBAA8();
    sub_1BC75AE00();
    sub_1BC660024(v8, v3, &qword_1EBCDDFE0, &unk_1BC769898);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDFF8, &unk_1BC7698B8);
    sub_1BC6FF700(&qword_1EBCDE000, &qword_1EBCDDFE0, &unk_1BC769898, sub_1BC6CBAA8);
    sub_1BC6FF77C();
    sub_1BC75AE00();
    sub_1BC66008C(v8, &qword_1EBCDDFE0, &unk_1BC769898);
    return sub_1BC66008C(v15, &qword_1EBCDC5A0, &qword_1BC766B10);
  }
}

uint64_t sub_1BC6FDA48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF88, &qword_1BC769588);
  v5 = *(a1 + 16);
  v6 = sub_1BC633C54(&qword_1EBCDDF90, &qword_1EBCDDF88, &qword_1BC769588, &unk_1BC769680);
  v7 = *(a1 + 24);
  *&v29 = v4;
  *(&v29 + 1) = v5;
  *&v30 = v6;
  *(&v30 + 1) = v7;
  v8 = sub_1BC75A8B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = v2[1];
  v29 = *v2;
  v30 = v15;
  v31 = v2[2];
  v32 = *(v2 + 6);
  v26 = v5;
  v27 = v7;
  v28 = &v29;
  v22 = v5;
  v23 = v7;
  v24 = &v29;
  sub_1BC6FDDC0(sub_1BC6FEBB0, v25, sub_1BC6FEBBC, v21, v4, v5, v6, v7);
  swift_getWitnessTable();
  v16 = *(v9 + 16);
  v16(v14, v12, v8);
  v17 = *(v9 + 8);
  v17(v12, v8);
  v16(v20, v14, v8);
  return (v17)(v14, v8);
}

uint64_t sub_1BC6FDC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v9 + 40))();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

uint64_t sub_1BC6FDDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v8();
  return sub_1BC75A8A0();
}

uint64_t sub_1BC6FDE94@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BC75ABB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1BC660024(v2, &v14 - v9, &qword_1EBCDDD98, &qword_1BC769450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BC75A710();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1BC75BF70();
    v13 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_1BC6FE0B0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = v3;
  _s7SectionVMa(0, &v6);
  sub_1BC6F879C(&v6);
  result = *&v6;
  v5 = v7;
  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t _s3RowVMa(uint64_t a1)
{
  result = qword_1EBCEDD70;
  if (!qword_1EBCEDD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC6FE158(uint64_t a1)
{
  v2 = type metadata accessor for Report.Evidence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC6FE1B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC75AA90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BC6FE220()
{
  result = qword_1EBCDDE30;
  if (!qword_1EBCDDE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE18, &qword_1BC7694A8);
    sub_1BC6FE2D8();
    sub_1BC633C54(&qword_1EBCDDF58, &qword_1EBCDDF60, &unk_1BC769570, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE30);
  }

  return result;
}

unint64_t sub_1BC6FE2D8()
{
  result = qword_1EBCDDE38;
  if (!qword_1EBCDDE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE10, &qword_1BC7694A0);
    sub_1BC6FE35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE38);
  }

  return result;
}

unint64_t sub_1BC6FE35C()
{
  result = qword_1EBCDDE40;
  if (!qword_1EBCDDE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE48, &qword_1BC7694F0);
    sub_1BC6FE3E8();
    sub_1BC6FE9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE40);
  }

  return result;
}

unint64_t sub_1BC6FE3E8()
{
  result = qword_1EBCDDE50;
  if (!qword_1EBCDDE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE58, &qword_1BC7694F8);
    sub_1BC6FE474();
    sub_1BC6FE6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE50);
  }

  return result;
}

unint64_t sub_1BC6FE474()
{
  result = qword_1EBCDDE60;
  if (!qword_1EBCDDE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE68, &qword_1BC769500);
    sub_1BC6FF700(&qword_1EBCDDE70, &qword_1EBCDDE78, &qword_1BC769508, sub_1BC6FE52C);
    sub_1BC6FE580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE60);
  }

  return result;
}

unint64_t sub_1BC6FE52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDDE80;
  if (!qword_1EBCDDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE80);
  }

  return result;
}

unint64_t sub_1BC6FE580()
{
  result = qword_1EBCDDE88;
  if (!qword_1EBCDDE88)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE90, &qword_1BC769510);
    sub_1BC6FE52C(v1, v2, v3);
    sub_1BC6FE60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE88);
  }

  return result;
}

unint64_t sub_1BC6FE60C()
{
  result = qword_1EBCDDE98;
  if (!qword_1EBCDDE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDEA0, &qword_1BC769518);
    sub_1BC633C54(&qword_1EBCDDEA8, &qword_1EBCDDEB0, &qword_1BC769520, MEMORY[0x1E697D6A8]);
    sub_1BC633C54(&qword_1EBCDDEB8, &qword_1EBCDDEC0, &qword_1BC769528, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDE98);
  }

  return result;
}

unint64_t sub_1BC6FE6F0()
{
  result = qword_1EBCDDEC8;
  if (!qword_1EBCDDEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDED0, &qword_1BC769530);
    sub_1BC6FE77C();
    sub_1BC6FE85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDEC8);
  }

  return result;
}

unint64_t sub_1BC6FE77C()
{
  result = qword_1EBCDDED8;
  if (!qword_1EBCDDED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDEE0, &qword_1BC769538);
    sub_1BC633C54(&qword_1EBCDDEE8, &qword_1EBCDDEF0, &qword_1BC769540, &unk_1BC76E68C);
    sub_1BC633C54(&qword_1EBCDDEF8, &qword_1EBCDDF00, &qword_1BC769548, &unk_1BC76E68C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDED8);
  }

  return result;
}

unint64_t sub_1BC6FE85C()
{
  result = qword_1EBCDDF08;
  if (!qword_1EBCDDF08)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF10, &qword_1BC769550);
    sub_1BC6FE52C(v1, v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF18, &qword_1BC769558);
    sub_1BC75AED0();
    sub_1BC633C54(&qword_1EBCDDF20, &qword_1EBCDDF18, &qword_1BC769558, MEMORY[0x1E697BDC8]);
    sub_1BC6FFB80(&qword_1EBCDDF28, MEMORY[0x1E697C7C0], MEMORY[0x1E697C7B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF08);
  }

  return result;
}

unint64_t sub_1BC6FE9A8()
{
  result = qword_1EBCDDF30;
  if (!qword_1EBCDDF30)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF38, &qword_1BC769560);
    sub_1BC6FEA60(v1, v2, v3);
    sub_1BC633C54(&qword_1EBCDDF48, &qword_1EBCDDF50, &qword_1BC769568, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF30);
  }

  return result;
}

unint64_t sub_1BC6FEA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDDF40;
  if (!qword_1EBCDDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF40);
  }

  return result;
}

unint64_t sub_1BC6FEAB4()
{
  result = qword_1EBCDDF68;
  if (!qword_1EBCDDF68)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FEB38(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF68);
  }

  return result;
}

unint64_t sub_1BC6FEB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDDF70;
  if (!qword_1EBCDDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDF70);
  }

  return result;
}

uint64_t sub_1BC6FEBBC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v5[1];
  v18 = *v5;
  v17 = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v9 = v5[1];
  v8 = v5[2];
  v10 = *v5;
  *(v7 + 80) = *(v5 + 6);
  *(v7 + 48) = v9;
  *(v7 + 64) = v8;
  *(v7 + 32) = v10;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDF88, &qword_1BC769588) + 44);
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDD98, &qword_1BC769450);
  swift_storeEnumTagMultiPayload();
  v12 = v17;
  *a1 = v18;
  *(a1 + 16) = v12;
  *(a1 + 32) = sub_1BC6FF5C8;
  *(a1 + 40) = v7;
  sub_1BC6FF5EC(&v18, v16);
  sub_1BC6FF5EC(&v17, v16);
  v14 = _s4LinkVMa(0, v4, v3, v13);
  return (*(*(v14 - 8) + 16))(v16, v5, v14);
}

void sub_1BC6FEE4C(uint64_t a1)
{
  sub_1BC6335A0();
  if (v1 <= 0x3F)
  {
    sub_1BC6FF1E4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6FEF30(uint64_t a1)
{
  sub_1BC6FF03C();
  if (v1 <= 0x3F)
  {
    sub_1BC6335A0();
    if (v2 <= 0x3F)
    {
      sub_1BC6FF08C(319);
      if (v3 <= 0x3F)
      {
        sub_1BC6FF1E4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC6FF03C()
{
  if (!qword_1EBCDDFA8)
  {
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDDFA8);
    }
  }
}

void sub_1BC6FF08C(uint64_t a1)
{
  if (!qword_1EDDCE700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    v1 = sub_1BC75C110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDCE700);
    }
  }
}

void sub_1BC6FF118(uint64_t a1)
{
  sub_1BC6FF1E4(319, &qword_1EBCDDFB0, type metadata accessor for Report.Evidence, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1BC6FF248(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6FF1E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC6FF248(uint64_t a1)
{
  if (!qword_1EBCDDFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FEAB4();
    v1 = sub_1BC75A6D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDDFB8);
    }
  }
}

void sub_1BC6FF2C0(uint64_t a1)
{
  sub_1BC6335A0();
  if (v1 <= 0x3F)
  {
    sub_1BC6FF1E4(319, &qword_1EBCDDFA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC6FF3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1BC6FF410(uint64_t a1, int a2)
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

uint64_t sub_1BC6FF458(uint64_t result, int a2, int a3)
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

unint64_t sub_1BC6FF4DC()
{
  result = qword_1EBCDDFC0;
  if (!qword_1EBCDDFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDFC8, &qword_1BC769880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE18, &qword_1BC7694A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDE28, &qword_1BC7694E8);
    sub_1BC6FE220();
    sub_1BC6FEAB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDFC0);
  }

  return result;
}

unint64_t sub_1BC6FF648()
{
  result = qword_1EBCDDFF0;
  if (!qword_1EBCDDFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDFE8, &qword_1BC7698A8);
    sub_1BC680F34();
    sub_1BC633C54(&qword_1EBCDDDB0, &qword_1EBCDDDA8, &unk_1BC769458, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDDFF0);
  }

  return result;
}

uint64_t sub_1BC6FF700(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1BC6FF77C()
{
  result = qword_1EBCDE008;
  if (!qword_1EBCDE008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDFF8, &unk_1BC7698B8);
    sub_1BC6FF648();
    sub_1BC680F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE008);
  }

  return result;
}

uint64_t sub_1BC6FF808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC75AB60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC6FF860@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BC75AB80();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1BC6FF8C4()
{
  result = qword_1EBCDE018;
  if (!qword_1EBCDE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDDF80, &qword_1BC769580);
    sub_1BC633C54(&qword_1EBCDE020, &qword_1EBCDE028, &qword_1BC769938, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE018);
  }

  return result;
}

uint64_t sub_1BC6FF97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6FF9E4(uint64_t a1, uint64_t a2)
{
  v4 = _s3RowVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6FFA48@<X0>(uint64_t a1@<X8>)
{
  _s3RowVMa(0);

  return sub_1BC6FBF74(a1);
}

uint64_t sub_1BC6FFAE4(uint64_t a1)
{
  v3 = *(_s3RowVMa(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC6FC098(a1, v1 + v4, v5);
}

uint64_t sub_1BC6FFB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC6FFC78@<X0>(_BYTE *a1@<X8>)
{
  _s3RowVMa(0);

  return sub_1BC6FBDA4(a1);
}

unint64_t sub_1BC6FFD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDE0E0;
  if (!qword_1EBCDE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE0E0);
  }

  return result;
}

unint64_t sub_1BC6FFD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDE0E8;
  if (!qword_1EBCDE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE0E8);
  }

  return result;
}

unint64_t sub_1BC6FFDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDE0F8;
  if (!qword_1EBCDE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE0F8);
  }

  return result;
}

unint64_t sub_1BC6FFE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDE100;
  if (!qword_1EBCDE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE100);
  }

  return result;
}

uint64_t sub_1BC6FFE7C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(_s3RowVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_1BC6FFF2C@<X0>(uint64_t a1@<X8>)
{
  sub_1BC7572F8(**(v1 + 16), *(*(v1 + 16) + 8), v10);
  v9[0] = v10[0];
  v9[1] = v10[1];
  result = sub_1BC651E78(v9, v3, v4);
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1BC6FFFA0@<X0>(void *a1@<X8>)
{
  _s3RowVMa(0);

  return sub_1BC6FBBC4(a1);
}

uint64_t objectdestroy_60Tm()
{
  v1 = _s3RowVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3 + *(v1 + 20);

  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32);
  v6 = sub_1BC759910();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = type metadata accessor for Report.Evidence(0);
  v9 = v5 + *(v8 + 24);

  v10 = _s6VictimVMa(0);
  (*(v7 + 8))(v9 + *(v10 + 44), v6);

  v11 = (v5 + *(v8 + 52));
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_1BC6AE140(*v11, v12);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1BC7002F0(uint64_t *a1)
{
  v3 = *(_s3RowVMa(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC6FBCB8(a1, v1 + v4, v5);
}

uint64_t sub_1BC70039C()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCEDF38);
  __swift_project_value_buffer(v0, qword_1EBCEDF38);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC700420(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void *))
{
  if (a1)
  {
    v7 = sub_1BC75BA30();
  }

  else
  {
    v7 = 0;
  }

  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BC700514;
  v10[3] = &block_descriptor_162;
  v8 = _Block_copy(v10);

  a4(v7, v8);
  _Block_release(v8);
}

void sub_1BC700514(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1BC7005A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDBD8, &qword_1BC768CB0);
    v2 = sub_1BC75C420();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BC65F494(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1BC678BBC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1BC678BBC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1BC678BBC(v31, v32);
    result = sub_1BC75C1D0();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1BC678BBC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BC700868(uint64_t a1)
{
  v3 = type metadata accessor for ReportNavigationStack(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1BC70A1DC(a1, v5, type metadata accessor for ReportNavigationStack);
  v7 = sub_1BC75AD20();
  sub_1BC70C0DC(a1, type metadata accessor for ReportNavigationStack);
  return v7;
}

id Report.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Report.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Report();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1BC700AF0(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1BC75B8B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
  if (swift_dynamicCast())
  {
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69DB570])
    {
      (*(v5 + 96))(v7, v4);
      v10 = *v7;
      v9 = v7[1];
      v11 = *v7 == 0xD00000000000001FLL && 0x80000001BC773790 == v9;
      if (v11 || (sub_1BC75C5E0() & 1) != 0 || (v10 == 0xD000000000000019 ? (v12 = 0x80000001BC7737B0 == v9) : (v12 = 0), v12))
      {

        goto LABEL_23;
      }

      v13 = sub_1BC75C5E0();

      if (v13)
      {
        goto LABEL_23;
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  v24 = a1;
  v14 = a1;
  if (swift_dynamicCast())
  {

    a1 = v23;
LABEL_23:

    goto LABEL_24;
  }

  _s3__C4CodeOMa_0(0);
  v24 = 6;
  v15 = a1;
  sub_1BC70A26C(&qword_1EBCDE128, _s3__C4CodeOMa_0, &unk_1BC76A154);
  v16 = sub_1BC759690();

  if ((v16 & 1) == 0)
  {
    v24 = 34;
    v17 = a1;
    v18 = sub_1BC759690();

    if ((v18 & 1) == 0)
    {
      v24 = 4;
      v19 = a1;
      v20 = sub_1BC759690();

      if ((v20 & 1) == 0)
      {
        v24 = 3;
        v21 = a1;
        v22 = sub_1BC759690();

        if ((v22 & 1) == 0)
        {
          a1 |= 0x8000000000000000;
        }
      }
    }
  }

LABEL_24:
  *a2 = a1;
}

void sub_1BC700E54()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (qword_1EBCEDF30 != -1)
      {
        swift_once();
      }

      v18 = sub_1BC75A4E0();
      __swift_project_value_buffer(v18, qword_1EBCEDF38);
      oslog = sub_1BC75A4C0();
      v19 = sub_1BC75BF60();
      if (!os_log_type_enabled(oslog, v19))
      {
        goto LABEL_25;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BC630000, oslog, v19, "Failed to send report. TrustKit unavailable.", v20, 2u);
      v16 = v20;
LABEL_24:
      MEMORY[0x1BFB27EF0](v16, -1, -1);
LABEL_25:
      v17 = oslog;

      goto LABEL_19;
    }

    if (qword_1EBCEDF30 != -1)
    {
      swift_once();
    }

    v10 = sub_1BC75A4E0();
    __swift_project_value_buffer(v10, qword_1EBCEDF38);
    v11 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    oslog = sub_1BC75A4C0();
    v5 = sub_1BC75BF60();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v12;
      *v7 = v12;
      v9 = "Failed to send report. Error: %@";
      goto LABEL_16;
    }
  }

  else if (v2)
  {
    if (qword_1EBCEDF30 != -1)
    {
      swift_once();
    }

    v13 = sub_1BC75A4E0();
    __swift_project_value_buffer(v13, qword_1EBCEDF38);
    v14 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    oslog = sub_1BC75A4C0();
    v5 = sub_1BC75BF60();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v15;
      *v7 = v15;
      v9 = "Failed to start report. No report info. Error: %@";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1EBCEDF30 != -1)
    {
      swift_once();
    }

    v3 = sub_1BC75A4E0();
    __swift_project_value_buffer(v3, qword_1EBCEDF38);
    v4 = v1;
    oslog = sub_1BC75A4C0();
    v5 = sub_1BC75BF60();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      v9 = "Failed to send report. No connection. Error: %@";
LABEL_16:
      _os_log_impl(&dword_1BC630000, oslog, v5, v9, v6, 0xCu);
      sub_1BC66008C(v7, &qword_1EBCDE130, &qword_1BC7679C0);
      MEMORY[0x1BFB27EF0](v7, -1, -1);
      v16 = v6;
      goto LABEL_24;
    }
  }

  v17 = (v1 & 0x3FFFFFFFFFFFFFFFLL);

LABEL_19:
}

uint64_t sub_1BC701210()
{
  v0 = type metadata accessor for Report.TestingOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EBCF4678);
  v1 = __swift_project_value_buffer(v0, qword_1EBCF4678);
  if (qword_1EBCEDF58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EBCF4690);
  return sub_1BC70A1DC(v2, v1, type metadata accessor for Report.TestingOptions);
}

uint64_t sub_1BC7012D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Report.TestingOptions(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1BC70132C()
{
  v0 = type metadata accessor for Report.TestingOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EBCF4690);
  v1 = __swift_project_value_buffer(v0, qword_1EBCF4690);
  v2 = v0[5];
  v3 = sub_1BC759800();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v0[6];
  v5 = sub_1BC759990();
  result = (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v1 + v0[7]) = 0;
  *(v1 + v0[8]) = 0;
  *(v1 + v0[9]) = 0;
  *(v1 + v0[10]) = 0;
  *(v1 + v0[11]) = 0;
  return result;
}

uint64_t sub_1BC70145C(uint64_t a1)
{
  v2 = sub_1BC75A850();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BC75AB50();
}

uint64_t sub_1BC701524@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for ReportNavigationStack(0);
  v4 = v3 - 8;
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = v5;
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE140, &qword_1BC769B08);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v10 = *(v1 + 16);
  *v49 = *(v1 + 8);
  *&v49[8] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE148, &qword_1BC769B10);
  sub_1BC75B660();
  *v49 = *v45;
  *&v49[8] = *&v45[8];
  v42 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE138, &qword_1BC769B00);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE150, &qword_1BC769B18);
  sub_1BC633C54(&qword_1EBCDE158, &qword_1EBCDE138, &qword_1BC769B00, MEMORY[0x1E69E6318]);
  sub_1BC633C54(&qword_1EBCDE160, &qword_1EBCDE138, &qword_1BC769B00, MEMORY[0x1E69E6338]);
  sub_1BC633C54(&qword_1EBCDE168, &qword_1EBCDE138, &qword_1BC769B00, MEMORY[0x1E69E6348]);
  v11 = type metadata accessor for ReportScreen(255);
  v12 = type metadata accessor for ReportToAuthoritiesScreenView(255);
  v13 = sub_1BC70A26C(&qword_1EBCDE170, type metadata accessor for ReportScreen, &unk_1BC763C68);
  v14 = sub_1BC70A26C(&qword_1EBCDE178, type metadata accessor for ReportToAuthoritiesScreenView, &unk_1BC769E40);
  *v45 = MEMORY[0x1E6981E70];
  *&v45[8] = v11;
  *&v45[16] = v12;
  v46 = MEMORY[0x1E6981E60];
  v47 = v13;
  v48 = v14;
  swift_getOpaqueTypeConformance2();
  v38 = v9;
  sub_1BC75A970();
  v35 = *(v4 + 40);
  *v45 = *(v2 + v35);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE180, &qword_1BC769B20);
  sub_1BC75B640();
  v15 = *v49;
  if ((~*v49 & 0xF000000000000007) != 0)
  {
    v17 = (*v49 & 0x3FFFFFFFFFFFFFFFLL);
    sub_1BC70A2B4(v15);
    if ((v15 >> 62) - 2 >= 2)
    {
      if (v15 >> 62)
      {
        v18 = 0x545F44454C494146;
        v19 = 0xEF54524154535F4FLL;
      }

      else
      {
        v18 = 0x454E4E4F435F4F4ELL;
        v19 = 0xED00004E4F495443;
      }
    }

    else
    {
      v18 = 0x545F44454C494146;
      v19 = 0xEE00444E45535F4FLL;
    }

    SCLocalizedStringKey.init(stringLiteral:)(*&v18);
    sub_1BC70A2B4(v15);
  }

  else
  {
    sub_1BC70A2B4(*v49);
    v16._countAndFlagsBits = 0x545F44454C494146;
    v16._object = 0xEE00444E45535F4FLL;
    SCLocalizedStringKey.init(stringLiteral:)(v16);
  }

  v33[1] = *&v45[8];
  *v49 = *v45;
  sub_1BC70A1DC(v2, v6, type metadata accessor for ReportNavigationStack);
  sub_1BC75BDE0();
  v20 = sub_1BC75BDD0();
  v21 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  sub_1BC70A704(v6, v22 + v21, type metadata accessor for ReportNavigationStack);
  sub_1BC70A1DC(v2, v6, type metadata accessor for ReportNavigationStack);
  v24 = sub_1BC75BDD0();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  sub_1BC70A704(v6, v25 + v21, type metadata accessor for ReportNavigationStack);
  sub_1BC75B740();
  v43 = *(v2 + v35);
  v26 = sub_1BC75B640();
  *&v43 = v44;
  MEMORY[0x1EEE9AC00](v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE188, &qword_1BC769B28);
  v27 = sub_1BC633C54(&unk_1EBCDE190, &qword_1EBCDE140, &qword_1BC769B08, MEMORY[0x1E697C1A8]);
  sub_1BC651EB8(v27, v28, v29);
  sub_1BC70A620();
  v30 = v40;
  v31 = v38;
  sub_1BC75B3A0();

  sub_1BC70A2B4(v43);

  return (*(v39 + 8))(v31, v30);
}

uint64_t sub_1BC701C48(uint64_t a1)
{
  v2 = type metadata accessor for ReportNavigationStack(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  type metadata accessor for ReportScreen(0);
  sub_1BC70A1DC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportNavigationStack);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BC70A704(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ReportNavigationStack);
  type metadata accessor for ReportToAuthoritiesScreenView(0);
  sub_1BC70A26C(&qword_1EBCDE170, type metadata accessor for ReportScreen, &unk_1BC763C68);
  sub_1BC70A26C(&qword_1EBCDE178, type metadata accessor for ReportToAuthoritiesScreenView, &unk_1BC769E40);
  sub_1BC75B320();
}

uint64_t sub_1BC701E28@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v34 = a1;
  v5 = type metadata accessor for ReportNavigationStack(0);
  v6 = v5 - 8;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = v7;
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC75ABB0();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *a2;
  v15 = type metadata accessor for ReportToAuthoritiesScreenView(0);
  v16 = v15[5];
  v30 = a3;
  sub_1BC70A1DC(v34, a3 + v16, type metadata accessor for ReportScreen);
  v17 = *(v6 + 32);
  v18 = v15[6];
  v34 = a2;
  sub_1BC660024(a2 + v17, v13, &qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_1BC75A830();
    v20 = v30;
    (*(*(v19 - 8) + 32))(v30 + v18, v13, v19);
  }

  else
  {

    sub_1BC75BF70();
    v21 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    v20 = v30;
    swift_getAtKeyPath();

    (*(v28 + 8))(v10, v29);
  }

  v22 = v33;
  sub_1BC70A1DC(v34, v33, type metadata accessor for ReportNavigationStack);
  v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v24 = swift_allocObject();
  result = sub_1BC70A704(v22, v24 + v23, type metadata accessor for ReportNavigationStack);
  *v20 = v14;
  v26 = (v20 + v15[7]);
  *v26 = sub_1BC70E8A4;
  v26[1] = v24;
  return result;
}

uint64_t sub_1BC70218C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE548, &unk_1BC76A428);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for ReportScreen(0);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = sub_1BC75A830();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ReportScreen.Control(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC70A1DC(a1, v20, type metadata accessor for ReportScreen.Control);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      type metadata accessor for ReportNavigationStack(0);
      sub_1BC7092F4(&qword_1EBCDD880, &qword_1BC767910, MEMORY[0x1E697BF90], v17);
      sub_1BC75A820();
      return (*(v15 + 8))(v17, v14);
    }

    v28 = *(a2 + 8);
    v29 = *(a2 + 16);
    v47 = v28;
    v48 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE148, &qword_1BC769B10);
    sub_1BC75B640();
    v30 = v46;
    if (!v46[2])
    {
      v35 = 1;
      v31 = v42;
      goto LABEL_16;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v31 = v42;
    if (result)
    {
      v32 = v30[2];
      if (v32)
      {
LABEL_12:
        v33 = v32 - 1;
        v34 = v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v33;
        v30[2] = v33;
        sub_1BC70A704(v34, v6, type metadata accessor for ReportScreen);
        v35 = 0;
LABEL_16:
        (*(v31 + 56))(v6, v35, 1, v41);
        sub_1BC66008C(v6, &qword_1EBCDE548, &unk_1BC76A428);
        v44 = v28;
        v45 = v29;
        v43 = v30;
        sub_1BC75B650();
      }
    }

    else
    {
      result = sub_1BC709B44(v30);
      v30 = result;
      v32 = *(result + 16);
      if (v32)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload)
  {
    v36 = *v20;
    v37 = *v20;
    sub_1BC700AF0(v36, &v47);
    v38 = v47;
    sub_1BC700E54();
    v39 = (a2 + *(type metadata accessor for ReportNavigationStack(0) + 32));
    v40 = v39[1];
    v47 = *v39;
    v48 = v40;
    v44 = v38;
    sub_1BC70E63C(v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE180, &qword_1BC769B20);
    sub_1BC75B650();

    sub_1BC70A2B4(v47);
  }

  else
  {
    sub_1BC70A704(v20, v13, type metadata accessor for ReportScreen);
    sub_1BC70A1DC(v13, v11, type metadata accessor for ReportScreen);
    v22 = *(a2 + 8);
    v23 = *(a2 + 16);
    v47 = v22;
    v48 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE148, &qword_1BC769B10);
    sub_1BC75B640();
    v24 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1BC70996C(0, v24[2] + 1, 1, v24);
    }

    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1BC70996C((v25 > 1), v26 + 1, 1, v24);
    }

    v24[2] = v26 + 1;
    sub_1BC70A704(v11, v24 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v26, type metadata accessor for ReportScreen);
    v44 = v22;
    v45 = v23;
    v43 = v24;
    sub_1BC75B650();

    return sub_1BC70C0DC(v13, type metadata accessor for ReportScreen);
  }
}

uint64_t sub_1BC70272C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE538, &qword_1BC76A418);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v35 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1B0, &unk_1BC769B30);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v35 - v7;
  v8 = type metadata accessor for ReportNavigationStack(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  if (*a1 >> 62)
  {
    v34._countAndFlagsBits = 0x4B4341425F4F47;
    v34._object = 0xE700000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v34);
    v41 = v43;
    v42 = v44;
    sub_1BC651F0C(&v41, nullsub_1, 0);
    (*(v11 + 16))(v40, v21, v10);
    swift_storeEnumTagMultiPayload();
    sub_1BC633C54(&qword_1EBCDE1A8, &unk_1EBCDE1B0, &unk_1BC769B30, MEMORY[0x1E6981F48]);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720, MEMORY[0x1E697D680]);
    sub_1BC75AE00();
    return (*(v11 + 8))(v21, v10);
  }

  else
  {
    v22._object = 0x80000001BC773C20;
    v23 = a2;
    v24 = v19;
    v22._countAndFlagsBits = 0xD000000000000013;
    SCLocalizedStringKey.init(stringLiteral:)(v22);
    v41 = v43;
    v42 = v44;
    sub_1BC70A1DC(v23, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportNavigationStack);
    v25 = *(v36 + 80);
    v36 = a3;
    v26 = (v25 + 16) & ~v25;
    v27 = swift_allocObject();
    sub_1BC70A704(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for ReportNavigationStack);
    sub_1BC651F0C(&v41, sub_1BC70E5DC, v27);
    v28._countAndFlagsBits = 0x4B4341425F4F47;
    v28._object = 0xE700000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v28);
    v41 = v43;
    v42 = v44;
    v35 = v24;
    sub_1BC651F0C(&v41, nullsub_1, 0);
    v29 = *(v11 + 16);
    v29(v17, v21, v10);
    v29(v14, v24, v10);
    v30 = v37;
    v29(v37, v17, v10);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE540, &qword_1BC76A420);
    v29((v30 + *(v31 + 48)), v14, v10);
    v32 = *(v11 + 8);
    v32(v14, v10);
    v32(v17, v10);
    sub_1BC660024(v30, v40, &unk_1EBCDE1B0, &unk_1BC769B30);
    swift_storeEnumTagMultiPayload();
    sub_1BC633C54(&qword_1EBCDE1A8, &unk_1EBCDE1B0, &unk_1BC769B30, MEMORY[0x1E6981F48]);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720, MEMORY[0x1E697D680]);
    sub_1BC75AE00();
    sub_1BC66008C(v30, &unk_1EBCDE1B0, &unk_1BC769B30);
    v32(v35, v10);
    return (v32)(v21, v10);
  }
}

uint64_t sub_1BC702D48()
{
  v0 = sub_1BC759800();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BC75A850();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ReportNavigationStack(0);
  sub_1BC7092F4(&qword_1EBCDE108, &qword_1BC769AE8, MEMORY[0x1E697E178], v7);
  v8 = sub_1BC6D8094();
  (*(v1 + 16))(v3, v8, v0);
  sub_1BC75A840();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BC702F10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = "from otherParticipants ";
  if (*a1 >> 62)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = "UNEXPECTED_FAILURE_MESSAGE";
    v4 = 0xD000000000000014;
  }

  v5 = v3 | 0x8000000000000000;
  v6 = SCLocalizedStringKey.init(stringLiteral:)(*&v4);
  result = sub_1BC651E78(&v12, v6.localized._object, v7);
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1BC702FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14[0] = *v1;
  v14[1] = v3;

  v6 = sub_1BC651E78(v14, v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = swift_getKeyPath();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

id sub_1BC703020()
{
  swift_getKeyPath();
  (*(*v0 + 152))();

  swift_beginAccess();
  v1 = v0[2];

  return v1;
}

uint64_t sub_1BC7030A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

void sub_1BC703148(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  sub_1BC65F664(0, &qword_1EBCDCB70, 0x1E696AE38);
  v5 = v4;
  v6 = sub_1BC75C040();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 160))(v9, sub_1BC70A76C);
  }
}

uint64_t (*sub_1BC703278(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  (*(*v1 + 152))();

  v4[5] = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI29ReportToAuthoritiesScreenView17ProgressViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC70A26C(&qword_1EBCDE1D0, type metadata accessor for ReportToAuthoritiesScreenView.ProgressViewModel, &unk_1BC769E90);
  sub_1BC759A70();

  v4[7] = sub_1BC655290(v4);
  return sub_1BC7033B4;
}

void sub_1BC7033B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1BC759A60();

  free(v1);
}

uint64_t sub_1BC703448(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1BC759A80();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1BC7035D4()
{
  v1 = OBJC_IVAR____TtCV26SensitiveContentAnalysisUI29ReportToAuthoritiesScreenView17ProgressViewModel___observationRegistrar;
  v2 = sub_1BC759A90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC703678@<X0>(double a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v31 = a3;
  v5 = sub_1BC75AC60();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE528, &qword_1BC76A408);
  v7 = *(v6 - 8);
  v30 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v33 = a1;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1D8, &qword_1BC769B98);
  sub_1BC75B640();
  sub_1BC75A7A0();
  sub_1BC75AC50();
  sub_1BC75AC40();
  v33 = a1;
  v34 = a2;
  sub_1BC75B640();
  v13 = v32;
  *&v14 = COERCE_DOUBLE(sub_1BC75BF00());
  LOBYTE(a1) = v15;

  v16 = *&v14;
  if (LOBYTE(a1))
  {
    v16 = 0.0;
  }

  v33 = v16;
  sub_1BC75AC30();
  sub_1BC75AC40();
  sub_1BC75AC80();
  v17 = sub_1BC75B1A0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v7 + 16);
  v25 = v12;
  v24(v10, v12, v6);
  v26 = v31;
  v24(v31, v10, v6);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE530, &qword_1BC76A410) + 48)];
  *v27 = v17;
  *(v27 + 1) = v19;
  LOBYTE(v24) = v21 & 1;
  v27[16] = v21 & 1;
  *(v27 + 3) = v23;
  sub_1BC680FFC(v17, v19, v21 & 1);
  v28 = *(v30 + 8);

  v28(v25, v6);
  sub_1BC680E6C(v17, v19, v24);

  return (v28)(v10, v6);
}

uint64_t sub_1BC703998@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 1);
  *a2 = sub_1BC75ACD0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1E0, &qword_1BC769BA0);
  return sub_1BC703678(v5, v4, (a2 + *(v6 + 44)));
}

id sub_1BC7039FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BC70A7E8(a1, a2, a3, a4);

  return v10;
}

uint64_t sub_1BC703A70(uint64_t a1, void (*a2)(char *), void (*a3)(char *), void *a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v40 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Report.Evidence(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = type metadata accessor for ReportScreen.Control(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC70A1DC(a1, v21, type metadata accessor for ReportScreen);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v36 = type metadata accessor for Report.Evidence;
      sub_1BC70A704(v21, v15, type metadata accessor for Report.Evidence);
      v25 = v38;
      [v38 showsBusyIndicator];
      v26 = sub_1BC75BE10();
      (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
      sub_1BC70A1DC(v15, v13, type metadata accessor for Report.Evidence);
      sub_1BC75BDE0();
      v27 = v39;

      v38 = v25;
      v28 = sub_1BC75BDD0();
      v29 = (*(v37 + 80) + 40) & ~*(v37 + 80);
      v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      v32 = MEMORY[0x1E69E85E0];
      v31[2] = v28;
      v31[3] = v32;
      v31[4] = v27;
      sub_1BC70A704(v13, v31 + v29, v36);
      v33 = (v31 + v30);
      *v33 = v40;
      v33[1] = a3;
      *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v38;
      sub_1BC652910(0, 0, v9, &unk_1BC76A3F8, v31);

      v23 = type metadata accessor for Report.Evidence;
      v24 = v15;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v40(v18);
      sub_1BC70C0DC(v18, type metadata accessor for ReportScreen.Control);
      v23 = type metadata accessor for ReportScreen;
      v24 = v21;
    }

    return sub_1BC70C0DC(v24, v23);
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BC70C0DC(v21, type metadata accessor for ReportScreen);
    swift_storeEnumTagMultiPayload();
    v40(v18);
    v23 = type metadata accessor for ReportScreen.Control;
    v24 = v18;
    return sub_1BC70C0DC(v24, v23);
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t sub_1BC703F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = type metadata accessor for ReportScreen.Control(0);
  v8[8] = swift_task_alloc();
  sub_1BC75BDE0();
  v8[9] = sub_1BC75BDD0();
  v10 = sub_1BC75BD80();
  v8[10] = v10;
  v8[11] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BC704038, v10, v9);
}

uint64_t sub_1BC704038()
{
  v1 = v0[2];
  v2 = [objc_opt_self() progressWithTotalUnitCount_];
  v0[12] = v2;
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1BC70418C;
  v4 = v0[3];

  return v6(v4, v2);
}

uint64_t sub_1BC70418C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_1BC7043AC;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_1BC7042C0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BC7042C0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v4 = v0[8];
  v5 = v0[4];

  *v4 = v1;
  v4[1] = v2;
  type metadata accessor for ReportScreen(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5(v4);

  sub_1BC70C0DC(v0[8], type metadata accessor for ReportScreen.Control);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BC7043AC()
{
  v1 = v0[12];

  if (qword_1EBCEDF30 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_1BC75A4E0();
  __swift_project_value_buffer(v3, qword_1EBCEDF38);
  v4 = v2;
  v5 = sub_1BC75A4C0();
  v6 = sub_1BC75BF60();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC630000, v5, v6, "An error occurred during the upload process: %@", v8, 0xCu);
    sub_1BC66008C(v9, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[8];
  v14 = v0[6];
  v15 = v0[4];

  [v14 hidesBusyIndicator];
  *v13 = v12;
  swift_storeEnumTagMultiPayload();
  v16 = v12;
  v15(v13);

  sub_1BC70C0DC(v0[8], type metadata accessor for ReportScreen.Control);

  v17 = v0[1];

  return v17();
}

id sub_1BC7045C8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReportScreen.Control(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  sub_1BC70C0DC(v7, type metadata accessor for ReportScreen.Control);
  return [objc_opt_self() openChatWithParentsForInterventionType_];
}

uint64_t sub_1BC7046A4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ReportScreen.Control(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  a1(v6);
  return sub_1BC70C0DC(v6, type metadata accessor for ReportScreen.Control);
}

id sub_1BC7047D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1BC704808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1BC70A1DC(v2 + *(a2 + 20), v6, type metadata accessor for ReportScreen);
  v8 = (v2 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = objc_allocWithZone(type metadata accessor for ReportToAuthoritiesScreenView.FlowView.FlowController());

  v12 = sub_1BC70A7E8(v7, v6, v9, v10);

  return v12;
}

uint64_t sub_1BC7048FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC70A26C(&unk_1EBCDE448, type metadata accessor for ReportToAuthoritiesScreenView.FlowView, &unk_1BC769D78);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BC704990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC70A26C(&unk_1EBCDE448, type metadata accessor for ReportToAuthoritiesScreenView.FlowView, &unk_1BC769D78);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BC704A24(uint64_t a1)
{
  sub_1BC70A26C(&unk_1EBCDE448, type metadata accessor for ReportToAuthoritiesScreenView.FlowView, &unk_1BC769D78);
  sub_1BC75AF80();
  __break(1u);
}

uint64_t sub_1BC704A7C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for ReportOverviewScreen(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1E8, &qword_1BC769BA8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1F0, &qword_1BC769BB0);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - v5;
  v7 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE1F8, &qword_1BC769BB8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v37 - v10;
  v12 = type metadata accessor for ReportScreen(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = type metadata accessor for ReportToAuthoritiesScreenView(0);
  v19 = v18[5];
  sub_1BC70A1DC(v1 + v19, v17, type metadata accessor for ReportScreen);
  if (swift_getEnumCaseMultiPayload() > 3)
  {
    v30 = *v1;
    sub_1BC70A1DC(v1 + v19, v15, type metadata accessor for ReportScreen);
    v31 = (v1 + v18[7]);
    v32 = *v31;
    v33 = v31[1];

    v34 = v37;
    sub_1BC747D68(v30, v15, v32, v33, v37);
    v35 = v38;
    sub_1BC706EF8(v1 + v19, *(v30 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType), v1 + v18[6], v38);
    sub_1BC70C0DC(v34, type metadata accessor for ReportOverviewScreen);
    v27 = &qword_1EBCDE1E8;
    v28 = &qword_1BC769BA8;
    sub_1BC660024(v35, v6, &qword_1EBCDE1E8, &qword_1BC769BA8);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C13C();
    sub_1BC70CA90();
    sub_1BC75AE00();
    v29 = v35;
  }

  else
  {
    sub_1BC70C0DC(v17, type metadata accessor for ReportScreen);
    v20 = *v1;
    sub_1BC70A1DC(v1 + v19, v9 + *(v7 + 20), type metadata accessor for ReportScreen);
    v21 = (v1 + v18[7]);
    v22 = *v21;
    v23 = v21[1];
    *v9 = v20;
    v24 = (v9 + *(v7 + 24));
    *v24 = v22;
    v24[1] = v23;
    v25 = *(v20 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);
    v26 = v18[6];

    sub_1BC704F2C(v1 + v19, v25, v1 + v26, v11);
    sub_1BC70C0DC(v9, type metadata accessor for ReportToAuthoritiesScreenView.FlowView);
    v27 = &qword_1EBCDE1F8;
    v28 = &qword_1BC769BB8;
    sub_1BC660024(v11, v6, &qword_1EBCDE1F8, &qword_1BC769BB8);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C13C();
    sub_1BC70CA90();
    sub_1BC75AE00();
    v29 = v11;
  }

  return sub_1BC66008C(v29, v27, v28);
}

uint64_t sub_1BC704F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v163 = a3;
  v177 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE478, &qword_1BC76A340);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v144 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE480, &qword_1BC76A348);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v144 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE488, &qword_1BC76A350);
  MEMORY[0x1EEE9AC00](v157);
  v160 = v144 - v12;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE270, &qword_1BC769BF8);
  MEMORY[0x1EEE9AC00](v171);
  v161 = v144 - v13;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE238, &qword_1BC769BD8);
  v164 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v162 = v144 - v14;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE490, &qword_1BC76A358);
  v151 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v150 = v144 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE280, &qword_1BC769C00);
  MEMORY[0x1EEE9AC00](v159);
  v17 = v144 - v16;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE498, &qword_1BC76A360);
  MEMORY[0x1EEE9AC00](v174);
  v176 = v144 - v18;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4A0, &qword_1BC76A368);
  MEMORY[0x1EEE9AC00](v167);
  v169 = v144 - v19;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4A8, &qword_1BC76A370);
  MEMORY[0x1EEE9AC00](v155);
  v156 = v144 - v20;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE220, &qword_1BC769BC8);
  MEMORY[0x1EEE9AC00](v168);
  v158 = v144 - v21;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE210, &qword_1BC769BC0);
  MEMORY[0x1EEE9AC00](v175);
  v170 = v144 - v22;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE248, &qword_1BC769BE8);
  v173 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v24 = v144 - v23;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4B0, &qword_1BC76A378);
  v153 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v152 = v144 - v25;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE230, &qword_1BC769BD0);
  MEMORY[0x1EEE9AC00](v154);
  v27 = v144 - v26;
  v28 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = a1;
  v31 = v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC70A1DC(v30, v31, type metadata accessor for ReportScreen);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v144[0] = v6;
    v145 = v27;
    v149 = v31;
    v144[1] = v9;
    v146 = v8;
    v147 = v11;
    v148 = v17;
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
      sub_1BC75A9F0();
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1BC761600;
      sub_1BC75A9E0();
      v92 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
      v93 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView, &unk_1BC769DF0);
      MEMORY[0x1BFB25FE0](1, v91, v92, v93);

      if (a2)
      {
        MEMORY[0x1EEE9AC00](v94);
        v144[-2] = v163;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v180 = v92;
        v181 = v93;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v98 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
        v180 = v97;
        v181 = v98;
        v99 = swift_getOpaqueTypeConformance2();
        v100 = v152;
        v101 = v178;
        sub_1BC75B3F0();
        (*(v173 + 8))(v24, v101);
        v102 = v153;
        v103 = v165;
        (*(v153 + 16))(v146, v100, v165);
        swift_storeEnumTagMultiPayload();
        v180 = v101;
        v181 = v95;
        v182 = OpaqueTypeConformance2;
        v183 = v99;
        v104 = v101;
        swift_getOpaqueTypeConformance2();
        v105 = v148;
        sub_1BC75AE00();
        (*(v102 + 8))(v100, v103);
      }

      else
      {
        v129 = v173;
        v104 = v178;
        (*(v173 + 16))(v146, v24, v178);
        swift_storeEnumTagMultiPayload();
        v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v180 = v92;
        v181 = v93;
        v131 = swift_getOpaqueTypeConformance2();
        v132 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v133 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
        v180 = v132;
        v181 = v133;
        v134 = swift_getOpaqueTypeConformance2();
        v180 = v104;
        v181 = v130;
        v182 = v131;
        v183 = v134;
        swift_getOpaqueTypeConformance2();
        v105 = v148;
        sub_1BC75AE00();
        (*(v129 + 8))(v24, v104);
      }

      sub_1BC660024(v105, v160, &qword_1EBCDE280, &qword_1BC769C00);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C8CC();
      v135 = v105;
      v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
      v180 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
      v181 = v93;
      v137 = swift_getOpaqueTypeConformance2();
      v180 = v104;
      v181 = v137;
      v138 = swift_getOpaqueTypeConformance2();
      v139 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
      v140 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
      v180 = v139;
      v181 = v140;
      v141 = swift_getOpaqueTypeConformance2();
      v180 = v179;
      v181 = v136;
      v182 = v138;
      v183 = v141;
      swift_getOpaqueTypeConformance2();
      v142 = v161;
      sub_1BC75AE00();
      sub_1BC660024(v142, v169, &qword_1EBCDE270, &qword_1BC769BF8);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C2F8();
      sub_1BC70C6C4();
      v143 = v170;
      sub_1BC75AE00();
      sub_1BC66008C(v142, &qword_1EBCDE270, &qword_1BC769BF8);
      sub_1BC660024(v143, v176, &qword_1EBCDE210, &qword_1BC769BC0);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C26C();
      sub_1BC75AE00();
      sub_1BC66008C(v143, &qword_1EBCDE210, &qword_1BC769BC0);
      v126 = v135;
      v127 = &qword_1EBCDE280;
      v128 = &qword_1BC769C00;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
      sub_1BC75A9F0();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1BC761600;
      sub_1BC75A9E0();
      v43 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
      v44 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView, &unk_1BC769DF0);
      MEMORY[0x1BFB25FE0](1, v42, v43, v44);

      v45 = (v173 + 8);
      v161 = v44;
      v180 = v43;
      v181 = v44;
      v46 = swift_getOpaqueTypeConformance2();
      if (a2)
      {
        v47 = v162;
        v48 = v178;
        sub_1BC75B360();
        (*v45)(v24, v48);
        v49 = v164;
        v50 = v179;
        (*(v164 + 16))(v147, v47, v179);
        swift_storeEnumTagMultiPayload();
        v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v180 = v48;
        v181 = v46;
        v52 = swift_getOpaqueTypeConformance2();
        v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v54 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
        v180 = v53;
        v181 = v54;
        v55 = swift_getOpaqueTypeConformance2();
        v180 = v50;
        v181 = v51;
        v182 = v52;
        v183 = v55;
        swift_getOpaqueTypeConformance2();
        v56 = v145;
        sub_1BC75AE00();
        (*(v49 + 8))(v47, v50);
      }

      else
      {
        v106 = v162;
        v107 = v178;
        sub_1BC75B360();
        v108 = (*v45)(v24, v107);
        MEMORY[0x1EEE9AC00](v108);
        v144[-2] = v163;
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v180 = v107;
        v181 = v46;
        v110 = swift_getOpaqueTypeConformance2();
        v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v112 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
        v180 = v111;
        v181 = v112;
        v113 = swift_getOpaqueTypeConformance2();
        v114 = v150;
        v115 = v179;
        sub_1BC75B3F0();
        (*(v164 + 8))(v106, v115);
        v116 = v151;
        v117 = v166;
        (*(v151 + 16))(v147, v114, v166);
        swift_storeEnumTagMultiPayload();
        v180 = v115;
        v181 = v109;
        v182 = v110;
        v183 = v113;
        swift_getOpaqueTypeConformance2();
        v56 = v145;
        sub_1BC75AE00();
        (*(v116 + 8))(v114, v117);
      }

      sub_1BC660024(v56, v156, &qword_1EBCDE230, &qword_1BC769BD0);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C4C4();
      v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
      v180 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(255);
      v181 = v161;
      v119 = swift_getOpaqueTypeConformance2();
      v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
      v121 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
      v180 = v120;
      v181 = v121;
      v122 = swift_getOpaqueTypeConformance2();
      v123 = v178;
      v180 = v178;
      v181 = v118;
      v182 = v119;
      v183 = v122;
      swift_getOpaqueTypeConformance2();
      v124 = v158;
      sub_1BC75AE00();
      sub_1BC660024(v124, v169, &qword_1EBCDE220, &qword_1BC769BC8);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C2F8();
      sub_1BC70C6C4();
      v125 = v170;
      sub_1BC75AE00();
      sub_1BC66008C(v124, &qword_1EBCDE220, &qword_1BC769BC8);
      sub_1BC660024(v125, v176, &qword_1EBCDE210, &qword_1BC769BC0);
      swift_storeEnumTagMultiPayload();
      sub_1BC70C26C();
      v180 = v123;
      v181 = v119;
      swift_getOpaqueTypeConformance2();
      sub_1BC75AE00();
      sub_1BC66008C(v125, &qword_1EBCDE210, &qword_1BC769BC0);
      v126 = v56;
      v127 = &qword_1EBCDE230;
      v128 = &qword_1BC769BD0;
    }

    sub_1BC66008C(v126, v127, v128);
    return sub_1BC70C0DC(v149, type metadata accessor for ReportScreen);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1BC70C0DC(v31, type metadata accessor for ReportScreen);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    sub_1BC75A9F0();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v58 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
    v59 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView, &unk_1BC769DF0);
    MEMORY[0x1BFB25FE0](1, v57, v58, v59);

    v180 = v58;
    v181 = v59;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v162;
    v62 = v178;
    sub_1BC75B360();
    v63 = (*(v173 + 8))(v24, v62);
    MEMORY[0x1EEE9AC00](v63);
    v144[-2] = v163;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
    v180 = v62;
    v181 = v60;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    v67 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
    v180 = v66;
    v181 = v67;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = v150;
    v70 = v179;
    v178 = v65;
    sub_1BC75B3F0();
    (*(v164 + 8))(v61, v70);
    v71 = v151;
    v72 = v166;
    (*(v151 + 16))(v160, v69, v166);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C8CC();
    v180 = v70;
    v181 = v64;
    v182 = v65;
    v183 = v68;
    swift_getOpaqueTypeConformance2();
    v73 = v161;
    sub_1BC75AE00();
    sub_1BC660024(v73, v169, &qword_1EBCDE270, &qword_1BC769BF8);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C2F8();
    sub_1BC70C6C4();
    v74 = v170;
    sub_1BC75AE00();
    sub_1BC66008C(v73, &qword_1EBCDE270, &qword_1BC769BF8);
    sub_1BC660024(v74, v176, &qword_1EBCDE210, &qword_1BC769BC0);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C26C();
    sub_1BC75AE00();
    sub_1BC66008C(v74, &qword_1EBCDE210, &qword_1BC769BC0);
    return (*(v71 + 8))(v69, v72);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1BC70C0DC(v31, type metadata accessor for ReportScreen);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    sub_1BC75A9F0();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v34 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
    v35 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView, &unk_1BC769DF0);
    MEMORY[0x1BFB25FE0](1, v33, v34, v35);

    v180 = v34;
    v181 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v162;
    v38 = v178;
    sub_1BC75B360();
    (*(v173 + 8))(v24, v38);
    v39 = v164;
    v40 = v179;
    (*(v164 + 16))(v176, v37, v179);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C26C();
    v180 = v38;
    v181 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v39 + 8))(v37, v40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    sub_1BC75A9F0();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v76 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView(0);
    v77 = sub_1BC70A26C(&qword_1EBCDE250, type metadata accessor for ReportToAuthoritiesScreenView.FlowView, &unk_1BC769DF0);
    MEMORY[0x1BFB25FE0](1, v75, v76, v77);

    MEMORY[0x1EEE9AC00](v78);
    v144[-2] = v163;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
    v180 = v76;
    v181 = v77;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    v82 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
    v180 = v81;
    v181 = v82;
    v83 = swift_getOpaqueTypeConformance2();
    v84 = v152;
    v85 = v178;
    v86 = v80;
    v172 = v80;
    sub_1BC75B3F0();
    (*(v173 + 8))(v24, v85);
    v87 = v153;
    v88 = v165;
    (*(v153 + 16))(v156, v84, v165);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C4C4();
    v180 = v85;
    v181 = v79;
    v182 = v86;
    v183 = v83;
    swift_getOpaqueTypeConformance2();
    v89 = v158;
    sub_1BC75AE00();
    sub_1BC660024(v89, v169, &qword_1EBCDE220, &qword_1BC769BC8);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C2F8();
    sub_1BC70C6C4();
    v90 = v170;
    sub_1BC75AE00();
    sub_1BC66008C(v89, &qword_1EBCDE220, &qword_1BC769BC8);
    sub_1BC660024(v90, v176, &qword_1EBCDE210, &qword_1BC769BC0);
    swift_storeEnumTagMultiPayload();
    sub_1BC70C26C();
    v180 = v85;
    v181 = v172;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    sub_1BC66008C(v90, &qword_1EBCDE210, &qword_1BC769BC0);
    return (*(v87 + 8))(v84, v88);
  }
}

uint64_t sub_1BC706EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v163 = a3;
  v177 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4B8, &qword_1BC76A380);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v144 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4C0, &qword_1BC76A388);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v144 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4C8, &qword_1BC76A390);
  MEMORY[0x1EEE9AC00](v157);
  v160 = v144 - v12;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2E0, &qword_1BC769C30);
  MEMORY[0x1EEE9AC00](v171);
  v161 = v144 - v13;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2C0, &qword_1BC769C20);
  v164 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v162 = v144 - v14;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4D0, &qword_1BC76A398);
  v151 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v150 = v144 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F0, &qword_1BC769C38);
  MEMORY[0x1EEE9AC00](v159);
  v17 = v144 - v16;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4D8, &qword_1BC76A3A0);
  MEMORY[0x1EEE9AC00](v174);
  v176 = v144 - v18;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4E0, &qword_1BC76A3A8);
  MEMORY[0x1EEE9AC00](v167);
  v169 = v144 - v19;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE4E8, &qword_1BC76A3B0);
  MEMORY[0x1EEE9AC00](v155);
  v156 = v144 - v20;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2A8, &qword_1BC769C10);
  MEMORY[0x1EEE9AC00](v168);
  v158 = v144 - v21;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE298, &qword_1BC769C08);
  MEMORY[0x1EEE9AC00](v175);
  v170 = v144 - v22;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2C8, &qword_1BC769C28);
  v173 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v24 = v144 - v23;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE4F0, &qword_1BC76A3B8);
  v153 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v152 = v144 - v25;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2B8, &qword_1BC769C18);
  MEMORY[0x1EEE9AC00](v154);
  v27 = v144 - v26;
  v28 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = a1;
  v31 = v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC70A1DC(v30, v31, type metadata accessor for ReportScreen);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v144[0] = v6;
    v145 = v27;
    v149 = v31;
    v144[1] = v9;
    v146 = v8;
    v147 = v11;
    v148 = v17;
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
      sub_1BC75A9F0();
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1BC761600;
      sub_1BC75A9E0();
      v92 = type metadata accessor for ReportOverviewScreen(0);
      v93 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen, &unk_1BC76E474);
      MEMORY[0x1BFB25FE0](1, v91, v92, v93);

      if (a2)
      {
        MEMORY[0x1EEE9AC00](v94);
        v144[-2] = v163;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v180 = v92;
        v181 = v93;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v98 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
        v180 = v97;
        v181 = v98;
        v99 = swift_getOpaqueTypeConformance2();
        v100 = v152;
        v101 = v178;
        sub_1BC75B3F0();
        (*(v173 + 8))(v24, v101);
        v102 = v153;
        v103 = v165;
        (*(v153 + 16))(v146, v100, v165);
        swift_storeEnumTagMultiPayload();
        v180 = v101;
        v181 = v95;
        v182 = OpaqueTypeConformance2;
        v183 = v99;
        v104 = v101;
        swift_getOpaqueTypeConformance2();
        v105 = v148;
        sub_1BC75AE00();
        (*(v102 + 8))(v100, v103);
      }

      else
      {
        v129 = v173;
        v104 = v178;
        (*(v173 + 16))(v146, v24, v178);
        swift_storeEnumTagMultiPayload();
        v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v180 = v92;
        v181 = v93;
        v131 = swift_getOpaqueTypeConformance2();
        v132 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v133 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
        v180 = v132;
        v181 = v133;
        v134 = swift_getOpaqueTypeConformance2();
        v180 = v104;
        v181 = v130;
        v182 = v131;
        v183 = v134;
        swift_getOpaqueTypeConformance2();
        v105 = v148;
        sub_1BC75AE00();
        (*(v129 + 8))(v24, v104);
      }

      sub_1BC660024(v105, v160, &qword_1EBCDE2F0, &qword_1BC769C38);
      swift_storeEnumTagMultiPayload();
      sub_1BC70D220();
      v135 = v105;
      v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
      v180 = type metadata accessor for ReportOverviewScreen(255);
      v181 = v93;
      v137 = swift_getOpaqueTypeConformance2();
      v180 = v104;
      v181 = v137;
      v138 = swift_getOpaqueTypeConformance2();
      v139 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
      v140 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
      v180 = v139;
      v181 = v140;
      v141 = swift_getOpaqueTypeConformance2();
      v180 = v179;
      v181 = v136;
      v182 = v138;
      v183 = v141;
      swift_getOpaqueTypeConformance2();
      v142 = v161;
      sub_1BC75AE00();
      sub_1BC660024(v142, v169, &qword_1EBCDE2E0, &qword_1BC769C30);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CC4C();
      sub_1BC70D018();
      v143 = v170;
      sub_1BC75AE00();
      sub_1BC66008C(v142, &qword_1EBCDE2E0, &qword_1BC769C30);
      sub_1BC660024(v143, v176, &qword_1EBCDE298, &qword_1BC769C08);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CBC0();
      sub_1BC75AE00();
      sub_1BC66008C(v143, &qword_1EBCDE298, &qword_1BC769C08);
      v126 = v135;
      v127 = &qword_1EBCDE2F0;
      v128 = &qword_1BC769C38;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
      sub_1BC75A9F0();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1BC761600;
      sub_1BC75A9E0();
      v43 = type metadata accessor for ReportOverviewScreen(0);
      v44 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen, &unk_1BC76E474);
      MEMORY[0x1BFB25FE0](1, v42, v43, v44);

      v45 = (v173 + 8);
      v161 = v44;
      v180 = v43;
      v181 = v44;
      v46 = swift_getOpaqueTypeConformance2();
      if (a2)
      {
        v47 = v162;
        v48 = v178;
        sub_1BC75B360();
        (*v45)(v24, v48);
        v49 = v164;
        v50 = v179;
        (*(v164 + 16))(v147, v47, v179);
        swift_storeEnumTagMultiPayload();
        v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v180 = v48;
        v181 = v46;
        v52 = swift_getOpaqueTypeConformance2();
        v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v54 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
        v180 = v53;
        v181 = v54;
        v55 = swift_getOpaqueTypeConformance2();
        v180 = v50;
        v181 = v51;
        v182 = v52;
        v183 = v55;
        swift_getOpaqueTypeConformance2();
        v56 = v145;
        sub_1BC75AE00();
        (*(v49 + 8))(v47, v50);
      }

      else
      {
        v106 = v162;
        v107 = v178;
        sub_1BC75B360();
        v108 = (*v45)(v24, v107);
        MEMORY[0x1EEE9AC00](v108);
        v144[-2] = v163;
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
        v180 = v107;
        v181 = v46;
        v110 = swift_getOpaqueTypeConformance2();
        v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
        v112 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
        v180 = v111;
        v181 = v112;
        v113 = swift_getOpaqueTypeConformance2();
        v114 = v150;
        v115 = v179;
        sub_1BC75B3F0();
        (*(v164 + 8))(v106, v115);
        v116 = v151;
        v117 = v166;
        (*(v151 + 16))(v147, v114, v166);
        swift_storeEnumTagMultiPayload();
        v180 = v115;
        v181 = v109;
        v182 = v110;
        v183 = v113;
        swift_getOpaqueTypeConformance2();
        v56 = v145;
        sub_1BC75AE00();
        (*(v116 + 8))(v114, v117);
      }

      sub_1BC660024(v56, v156, &qword_1EBCDE2B8, &qword_1BC769C18);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CE18();
      v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
      v180 = type metadata accessor for ReportOverviewScreen(255);
      v181 = v161;
      v119 = swift_getOpaqueTypeConformance2();
      v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
      v121 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
      v180 = v120;
      v181 = v121;
      v122 = swift_getOpaqueTypeConformance2();
      v123 = v178;
      v180 = v178;
      v181 = v118;
      v182 = v119;
      v183 = v122;
      swift_getOpaqueTypeConformance2();
      v124 = v158;
      sub_1BC75AE00();
      sub_1BC660024(v124, v169, &qword_1EBCDE2A8, &qword_1BC769C10);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CC4C();
      sub_1BC70D018();
      v125 = v170;
      sub_1BC75AE00();
      sub_1BC66008C(v124, &qword_1EBCDE2A8, &qword_1BC769C10);
      sub_1BC660024(v125, v176, &qword_1EBCDE298, &qword_1BC769C08);
      swift_storeEnumTagMultiPayload();
      sub_1BC70CBC0();
      v180 = v123;
      v181 = v119;
      swift_getOpaqueTypeConformance2();
      sub_1BC75AE00();
      sub_1BC66008C(v125, &qword_1EBCDE298, &qword_1BC769C08);
      v126 = v56;
      v127 = &qword_1EBCDE2B8;
      v128 = &qword_1BC769C18;
    }

    sub_1BC66008C(v126, v127, v128);
    return sub_1BC70C0DC(v149, type metadata accessor for ReportScreen);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1BC70C0DC(v31, type metadata accessor for ReportScreen);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    sub_1BC75A9F0();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v58 = type metadata accessor for ReportOverviewScreen(0);
    v59 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen, &unk_1BC76E474);
    MEMORY[0x1BFB25FE0](1, v57, v58, v59);

    v180 = v58;
    v181 = v59;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v162;
    v62 = v178;
    sub_1BC75B360();
    v63 = (*(v173 + 8))(v24, v62);
    MEMORY[0x1EEE9AC00](v63);
    v144[-2] = v163;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
    v180 = v62;
    v181 = v60;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    v67 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
    v180 = v66;
    v181 = v67;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = v150;
    v70 = v179;
    v178 = v65;
    sub_1BC75B3F0();
    (*(v164 + 8))(v61, v70);
    v71 = v151;
    v72 = v166;
    (*(v151 + 16))(v160, v69, v166);
    swift_storeEnumTagMultiPayload();
    sub_1BC70D220();
    v180 = v70;
    v181 = v64;
    v182 = v65;
    v183 = v68;
    swift_getOpaqueTypeConformance2();
    v73 = v161;
    sub_1BC75AE00();
    sub_1BC660024(v73, v169, &qword_1EBCDE2E0, &qword_1BC769C30);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CC4C();
    sub_1BC70D018();
    v74 = v170;
    sub_1BC75AE00();
    sub_1BC66008C(v73, &qword_1EBCDE2E0, &qword_1BC769C30);
    sub_1BC660024(v74, v176, &qword_1EBCDE298, &qword_1BC769C08);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CBC0();
    sub_1BC75AE00();
    sub_1BC66008C(v74, &qword_1EBCDE298, &qword_1BC769C08);
    return (*(v71 + 8))(v69, v72);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1BC70C0DC(v31, type metadata accessor for ReportScreen);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    sub_1BC75A9F0();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v34 = type metadata accessor for ReportOverviewScreen(0);
    v35 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen, &unk_1BC76E474);
    MEMORY[0x1BFB25FE0](1, v33, v34, v35);

    v180 = v34;
    v181 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v162;
    v38 = v178;
    sub_1BC75B360();
    (*(v173 + 8))(v24, v38);
    v39 = v164;
    v40 = v179;
    (*(v164 + 16))(v176, v37, v179);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CBC0();
    v180 = v38;
    v181 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v39 + 8))(v37, v40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE2F8, &qword_1BC769C40);
    sub_1BC75A9F0();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1BC761600;
    sub_1BC75A9E0();
    v76 = type metadata accessor for ReportOverviewScreen(0);
    v77 = sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen, &unk_1BC76E474);
    MEMORY[0x1BFB25FE0](1, v75, v76, v77);

    MEMORY[0x1EEE9AC00](v78);
    v144[-2] = v163;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
    v180 = v76;
    v181 = v77;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    v82 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
    v180 = v81;
    v181 = v82;
    v83 = swift_getOpaqueTypeConformance2();
    v84 = v152;
    v85 = v178;
    v86 = v80;
    v172 = v80;
    sub_1BC75B3F0();
    (*(v173 + 8))(v24, v85);
    v87 = v153;
    v88 = v165;
    (*(v153 + 16))(v156, v84, v165);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CE18();
    v180 = v85;
    v181 = v79;
    v182 = v86;
    v183 = v83;
    swift_getOpaqueTypeConformance2();
    v89 = v158;
    sub_1BC75AE00();
    sub_1BC660024(v89, v169, &qword_1EBCDE2A8, &qword_1BC769C10);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CC4C();
    sub_1BC70D018();
    v90 = v170;
    sub_1BC75AE00();
    sub_1BC66008C(v89, &qword_1EBCDE2A8, &qword_1BC769C10);
    sub_1BC660024(v90, v176, &qword_1EBCDE298, &qword_1BC769C08);
    swift_storeEnumTagMultiPayload();
    sub_1BC70CBC0();
    v180 = v85;
    v181 = v172;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    sub_1BC66008C(v90, &qword_1EBCDE298, &qword_1BC769C08);
    return (*(v87 + 8))(v84, v88);
  }
}

uint64_t sub_1BC708EC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BC75AE70();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE258, &qword_1BC769BF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  sub_1BC75AE40();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE468, &qword_1BC76A338);
  sub_1BC633C54(&qword_1EBCDE470, &qword_1EBCDE468, &qword_1BC76A338, MEMORY[0x1E697D680]);
  sub_1BC75A770();
  v8 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB25A80](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BC7090A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BC75A830();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1BC75A650();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75A640();
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return MEMORY[0x1BFB26270](v10, a3, v12);
}

id sub_1BC70922C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for Report.ReportNavigationHostingController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1BC7092F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_1BC75ABB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1BC660024(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1BC75BF70();
    v19 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1BC709504(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError, &unk_1BC76A190);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BC709570(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError, &unk_1BC76A190);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BC7095DC(void *a1, uint64_t a2)
{
  v4 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError, &unk_1BC76A190);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BC70966C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError, &unk_1BC76A190);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BC7096E8(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE408, type metadata accessor for CKError, &unk_1BC76A2E4);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BC709754(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE408, type metadata accessor for CKError, &unk_1BC76A2E4);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BC7097C0(uint64_t a1)
{
  v2 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError, &unk_1BC76A190);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BC70982C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC70A26C(&qword_1EBCDE400, type metadata accessor for CKError, &unk_1BC76A190);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1BC7098B0(uint64_t a1)
{
  v2 = sub_1BC70A26C(&unk_1EBCDE458, type metadata accessor for Key, &unk_1BC76A608);
  v3 = sub_1BC70A26C(&qword_1EBCDE5F0, type metadata accessor for Key, &unk_1BC76A55C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1BC70996C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE118, &qword_1BC769AF8);
  v10 = *(type metadata accessor for ReportScreen(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ReportScreen(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1BC709B58(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ReportNavigationStack(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v37 - v14);
  v16 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1BC660024(a4, &v41, &qword_1EBCDE440, &unk_1BC76A328);
    if (v42)
    {
      sub_1BC678BBC(&v41, v43);
      sub_1BC65F494(v43, &v41);
      v19 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE5B0, &unk_1BC76A438);
      if (swift_dynamicCast())
      {
        v37 = v13;
        v20 = a3;
        v39 = a1;
        v21 = v40;
        if ([v40 respondsToSelector_])
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v21;
          v23 = swift_allocObject();
          *(v23 + 16) = sub_1BC70E914;
          *(v23 + 24) = v22;
          type metadata accessor for ReportToAuthoritiesViewModel(0);
          sub_1BC70A1DC(v19 + OBJC_IVAR___SCUIReportAuthority_authority, v18, type metadata accessor for Report.Authority);
          v24 = swift_allocObject();
          v38 = v19;
          v25 = v24;
          v24[2] = sub_1BC70E92C;
          v24[3] = v23;
          v24[4] = a5;

          swift_unknownObjectRetain();

          v26 = sub_1BC733F34(v18, v20, sub_1BC70E984, v25);
          v27 = v10[6];
          *(v15 + v27) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
          swift_storeEnumTagMultiPayload();
          v28 = v10[7];
          *(v15 + v28) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE108, &qword_1BC769AE8);
          swift_storeEnumTagMultiPayload();
          v29 = v10[8];
          v40 = 0xF000000000000007;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE110, &qword_1BC769AF0);
          sub_1BC75B630();
          *(v15 + v29) = v41;
          *v15 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE118, &qword_1BC769AF8);
          v30 = *(type metadata accessor for ReportScreen(0) - 8);
          v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1BC761600;
          sub_1BC70A1DC(v26 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v32 + v31, type metadata accessor for Report.Authority);
          swift_storeEnumTagMultiPayload();
          v15[1] = v32;
          v15[2] = 0;
          v33 = objc_allocWithZone(type metadata accessor for Report.ReportNavigationHostingController(0));
          sub_1BC70A1DC(v15, v37, type metadata accessor for ReportNavigationStack);
          v34 = sub_1BC75AD20();
          sub_1BC70C0DC(v15, type metadata accessor for ReportNavigationStack);
          [v39 presentViewController:v34 animated:1 completion:0];

          swift_unknownObjectRelease();

          return __swift_destroy_boxed_opaque_existential_1(v43);
        }
      }
    }

    else
    {
      v36 = a2;
      sub_1BC66008C(&v41, &qword_1EBCDE440, &unk_1BC76A328);
    }
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t sub_1BC70A1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC70A26C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BC70A2B4(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

void sub_1BC70A2CC(BOOL *a1@<X8>)
{
  type metadata accessor for ReportNavigationStack(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE180, &qword_1BC769B20);
  sub_1BC75B640();
  if ((v2 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1BC70A2B4(v2);
  }

  *a1 = (v2 & 0xF000000000000007) != 0xF000000000000007;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for ReportNavigationStack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BC75A830();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE108, &qword_1BC769AE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1BC75A850();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v5 + v1[8]);
  if ((~v10 & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC70A560()
{
  v1 = type metadata accessor for ReportNavigationStack(0);
  v3 = *(v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)));
  sub_1BC70E63C(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE180, &qword_1BC769B20);
  sub_1BC75B650();
  sub_1BC70A2B4(v3);
}

unint64_t sub_1BC70A620()
{
  result = qword_1EBCDE1A0;
  if (!qword_1EBCDE1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE188, &qword_1BC769B28);
    sub_1BC633C54(&qword_1EBCDE1A8, &unk_1EBCDE1B0, &unk_1BC769B30, MEMORY[0x1E6981F48]);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE1A0);
  }

  return result;
}

uint64_t sub_1BC70A704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BC70A76C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
}

id sub_1BC70A7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v175 = a4;
  v179 = a3;
  v8 = sub_1BC759800();
  v9 = *(v8 - 8);
  v166 = v8;
  v167 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v164 = v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v170 = v155 - v12;
  v163 = type metadata accessor for ReportScreen(0);
  v162 = *(v163 - 8);
  v13 = MEMORY[0x1EEE9AC00](v163);
  v161 = v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v160 = v155 - v15;
  v16 = type metadata accessor for ReportScreen.Button(0);
  v174 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v173 = v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Report.Evidence(0);
  v169 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v155 - v22;
  v24 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = a1;
  v27 = *(a1 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);
  sub_1BC699634(v27, &v184);
  v28 = sub_1BC75BB30();

  v181 = v27;
  v171 = a2;
  sub_1BC6998B4(v27, &v184);
  v180 = v18;
  if (v185)
  {
    v29 = sub_1BC75BB30();
  }

  else
  {
    v29 = 0;
  }

  v30 = v181;
  v31 = sub_1BC699B5C();
  v32 = type metadata accessor for ReportToAuthoritiesScreenView.FlowView.FlowController();
  v183.receiver = v5;
  v183.super_class = v32;
  v33 = objc_msgSendSuper2(&v183, sel_initWithTitle_detailText_icon_contentLayout_, v28, v29, v31, 2);

  sub_1BC699D98(v30, &v184);
  v172 = v16;
  v178 = v33;
  if (v185)
  {
    v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE518, &unk_1BC76A3E0));
    v35 = sub_1BC75A900();
    [v35 setTranslatesAutoresizingMaskIntoConstraints_];
    v36 = [v33 contentView];
    [v36 addSubview_];

    v37 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BC768CD0;
    v39 = [v35 leadingAnchor];
    v40 = [v33 contentView];
    v41 = [v40 leadingAnchor];

    v42 = [v39 constraintEqualToAnchor_];
    *(v38 + 32) = v42;
    v43 = [v35 trailingAnchor];
    v44 = [v33 contentView];
    v45 = [v44 trailingAnchor];

    v46 = [v43 constraintEqualToAnchor_];
    *(v38 + 40) = v46;
    v47 = [v35 topAnchor];
    v48 = [v33 contentView];
    v49 = [v48 topAnchor];

    v50 = [v47 constraintEqualToAnchor_];
    *(v38 + 48) = v50;
    v51 = [v35 bottomAnchor];

    v52 = [v33 contentView];
    v53 = [v52 bottomAnchor];

    v54 = v175;
    v55 = [v51 constraintEqualToAnchor_];

    *(v38 + 56) = v55;
    v56 = v54;
    sub_1BC65F664(0, &qword_1EDDCDFA0, 0x1E696ACD8);
    v57 = sub_1BC75BCF0();

    [v37 activateConstraints_];

    v58 = v174;
    v59 = v33;
  }

  else
  {
    v60 = sub_1BC699EF8();
    v58 = v174;
    if (v60)
    {
      v182 = v60;
      v61 = v60;
      sub_1BC65F664(0, &qword_1EBCDCB70, 0x1E696AE38);
      v180 = v61;
      sub_1BC75B630();
      v62 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE510, &unk_1BC76A3D0));
      v63 = sub_1BC75A900();
      [v63 setTranslatesAutoresizingMaskIntoConstraints_];
      v64 = v178;
      v65 = [v178 contentView];
      [v65 addSubview_];

      v169 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1BC768CD0;
      v67 = [v63 leadingAnchor];
      v68 = [v64 contentView];
      v69 = [v68 leadingAnchor];

      v70 = [v67 constraintEqualToAnchor_];
      *(v66 + 32) = v70;
      v71 = [v63 trailingAnchor];
      v72 = [v64 contentView];
      v73 = [v72 trailingAnchor];

      v74 = [v71 constraintEqualToAnchor_];
      *(v66 + 40) = v74;
      v75 = [v63 topAnchor];
      v76 = [v64 contentView];
      v77 = [v76 topAnchor];

      v78 = [v75 constraintEqualToAnchor_];
      *(v66 + 48) = v78;
      v79 = [v63 bottomAnchor];

      v80 = [v64 contentView];
      v81 = [v80 bottomAnchor];

      v82 = v175;
      v83 = [v79 constraintEqualToAnchor_];

      v59 = v64;
      v56 = v82;
      *(v66 + 56) = v83;
      sub_1BC65F664(0, &qword_1EDDCDFA0, 0x1E696ACD8);
      v84 = sub_1BC75BCF0();

      [v169 activateConstraints_];
    }

    else
    {
      v85 = v176;
      v86 = sub_1BC70A1DC(v176 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v26, type metadata accessor for Report.Authority);
      (*(*v85 + 144))(v86);
      v87 = v180;
      v88 = (*(v169 + 6))(v23, 1, v180);
      v59 = v178;
      if (v88)
      {
        sub_1BC66008C(v23, &qword_1EBCDED80, &unk_1BC76A3C0);
        v89 = 0;
      }

      else
      {
        sub_1BC70A1DC(v23, v20, type metadata accessor for Report.Evidence);
        sub_1BC66008C(v23, &qword_1EBCDED80, &unk_1BC76A3C0);
        v89 = *&v20[v87[15]];
        sub_1BC70C0DC(v20, type metadata accessor for Report.Evidence);
      }

      v56 = v175;
      sub_1BC699FB4(v26, v89, v88 != 0, v181);
      v91 = v90;
      sub_1BC70C0DC(v26, type metadata accessor for Report.Authority);
      v92 = *(v91 + 16);
      if (v92)
      {
        v93 = (v91 + 48);
        do
        {
          v94 = *v93;
          v93 += 3;
          swift_bridgeObjectRetain_n();
          v95 = v94;
          v96 = sub_1BC75BB30();

          v97 = sub_1BC75BB30();
          [v59 addBulletedListItemWithTitle:v96 description:v97 image:v95];

          --v92;
        }

        while (v92);

        v56 = v175;
      }

      else
      {
      }
    }
  }

  v98 = sub_1BC69A80C(v176 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v181);
  v99 = v98;
  v100 = v173;
  v181 = *(v98 + 16);
  if (!v181)
  {
LABEL_39:

    sub_1BC70C0DC(v171, type metadata accessor for ReportScreen);
    return v59;
  }

  v101 = 0;
  v180 = (v98 + ((*(v58 + 80) + 32) & ~*(v58 + 80)));
  v159 = v167 + 32;
  v158 = v167 + 16;
  v157 = v167 + 8;
  v156 = v177 + 7;
  v155[1] = "init(coder:rootView:)";
  v177 = v98;
  while (v101 < *(v99 + 16))
  {
    sub_1BC70A1DC(v180 + *(v58 + 72) * v101, v100, type metadata accessor for ReportScreen.Button);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          goto LABEL_18;
        }

        v102 = [objc_opt_self() boldButton];
        v146 = sub_1BC75BB30();

        [v102 setTitle:v146 forState:0];

        sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
        v147 = swift_allocObject();
        *(v147 + 16) = v179;
        *(v147 + 24) = v56;

        v148 = sub_1BC75C070();
        [v102 addAction:v148 forControlEvents:64];

        v106 = [v59 buttonTray];
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v102 = [objc_opt_self() linkButton];
          v109 = sub_1BC75BB30();

          [v102 setTitle:v109 forState:0];

          sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
          swift_allocObject();
          swift_unknownObjectWeakInit();
        }

        else
        {
          v102 = [objc_opt_self() linkButton];
          v144 = sub_1BC75BB30();

          [v102 setTitle:v144 forState:0];

          sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
          v145 = swift_allocObject();
          v145[2] = v179;
          v145[3] = v56;
          v145[4] = v176;

          v99 = v177;
        }

        v110 = sub_1BC75C070();
        [v102 addAction:v110 forControlEvents:64];

        v106 = [v59 buttonTray];
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB60, &qword_1BC763C60) + 48);
        v113 = v166;
        v112 = v167;
        v169 = *(v167 + 32);
        v114 = v170;
        (v169)(v170, v100 + v111, v166);
        v115 = [objc_opt_self() linkButton];
        v116 = sub_1BC75BB30();

        [v115 setTitle:v116 forState:0];

        sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
        v117 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v118 = v164;
        (*(v112 + 16))(v164, v114, v113);
        v119 = (*(v112 + 80) + 24) & ~*(v112 + 80);
        v120 = swift_allocObject();
        *(v120 + 16) = v117;
        v121 = v120 + v119;
        v99 = v177;
        (v169)(v121, v118, v113);
        v59 = v178;
        v100 = v173;
        v122 = sub_1BC75C070();
        [v115 addAction:v122 forControlEvents:64];

        v123 = [v59 buttonTray];
        [v123 addButton_];

        v124 = *(v112 + 8);
        v125 = v113;
        v58 = v174;
        v56 = v175;
        v124(v170, v125);
        goto LABEL_20;
      }

LABEL_18:
      v102 = [objc_opt_self() linkButton];
      v103 = sub_1BC75BB30();

      [v102 setTitle:v103 forState:0];

      sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
      v104 = swift_allocObject();
      *(v104 + 16) = v179;
      *(v104 + 24) = v56;

      v105 = sub_1BC75C070();
      [v102 addAction:v105 forControlEvents:64];

      v106 = [v59 buttonTray];
LABEL_19:
      v107 = v106;
      [v107 addButton_];

      goto LABEL_20;
    }

    v126 = [objc_opt_self() boldButton];

    v127 = sub_1BC75BB30();

    [v126 setTitle:v127 forState:0];

    v168 = sub_1BC65F664(0, &qword_1EBCDE500, 0x1E69DC628);
    v169 = type metadata accessor for ReportScreen;
    v128 = v171;
    v129 = v160;
    sub_1BC70A1DC(v171, v160, type metadata accessor for ReportScreen);
    v130 = (*(v162 + 80) + 16) & ~*(v162 + 80);
    v131 = (v156 + v130) & 0xFFFFFFFFFFFFFFF8;
    v132 = (v131 + 23) & 0xFFFFFFFFFFFFFFF8;
    v133 = (v132 + 15) & 0xFFFFFFFFFFFFFFF8;
    v134 = swift_allocObject();
    sub_1BC70A704(v129, v134 + v130, type metadata accessor for ReportScreen);
    v135 = (v134 + v131);
    v136 = v175;
    v137 = v176;
    *v135 = v179;
    v135[1] = v136;
    *(v134 + v132) = v126;
    v56 = v136;
    *(v134 + v133) = v137;
    v138 = v128;

    v139 = v126;

    v140 = sub_1BC75C070();
    [v139 addAction:v140 forControlEvents:64];

    v141 = v161;
    sub_1BC70A1DC(v138, v161, v169);
    if (swift_getEnumCaseMultiPayload())
    {

      sub_1BC70C0DC(v141, type metadata accessor for ReportScreen);
      v100 = v173;
      v142 = v174;
      v99 = v177;
      v59 = v178;
      v143 = &selRef_actionID;
    }

    else
    {
      sub_1BC70C0DC(v141, type metadata accessor for ReportScreen);
      v149 = objc_opt_self();
      v150 = sub_1BC75BB30();
      v151 = [v149 linkWithBundleIdentifier_];

      v59 = v178;
      if (!v151)
      {
        goto LABEL_41;
      }

      v143 = &selRef_actionID;
      v152 = [v59 buttonTray];
      [v152 setPrivacyLinkController_];

      v100 = v173;
      v142 = v174;
      v99 = v177;
    }

    v153 = [v59 v143[40]];
    [v153 addButton_];

    v58 = v142;
LABEL_20:
    if (v181 == ++v101)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_41:
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}
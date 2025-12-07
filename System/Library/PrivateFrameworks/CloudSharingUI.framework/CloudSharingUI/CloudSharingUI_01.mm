uint64_t sub_243B37378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2230, &unk_243B72B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B373E8()
{
  v0 = sub_243B6FB9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FB6C();
  v4 = sub_243B6FB8C();
  v5 = sub_243B709BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_243B40EA8(0xD000000000000022, 0x8000000243B75CD0, &v11);
    _os_log_impl(&dword_243B1E000, v4, v5, "InvitedPeopleView: %s", v6, 0xCu);
    v8 = __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245D4A570](v7, -1, -1, v8);
    MEMORY[0x245D4A570](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_243B37580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA2420;
  if (!qword_27EDA2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2420);
  }

  return result;
}

uint64_t sub_243B375D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B37648()
{
  v1 = [objc_opt_self() currentDevice];
  [v1 userInterfaceIdiom];

  swift_beginAccess();
  sub_243B6FBFC();
  swift_endAccess();
  return v0;
}

uint64_t sub_243B37708()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI13UserInterface__idiom;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24C0, &qword_243B731B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_243B377B0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_243B6FBEC();
  *a2 = result;
  return result;
}

uint64_t sub_243B37800()
{
  type metadata accessor for UserInterface(0);
  v0 = swift_allocObject();
  sub_243B37648();
  return v0;
}

uint64_t sub_243B3788C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1 + *(type metadata accessor for SharingOptionsView(0) + 24);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = type metadata accessor for SharingOptionsViewModel(0);
  v7 = sub_243B384D8(&qword_27EDA2428, type metadata accessor for SharingOptionsViewModel, &protocol conformance descriptor for SharingOptionsViewModel);

  return a1(v3, v4, v5, v6, v7);
}

double SharingOptionsView.init(viewModel:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SharingOptionsView(0);
  v5 = a2 + v4[5];
  *v5 = sub_243B37800;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2438, &qword_243B75180);
  sub_243B705AC();
  result = *&v9;
  *(a2 + v6) = v9;
  v8 = a2 + v4[6];
  *v8 = sub_243B384D0;
  *(v8 + 1) = a1;
  v8[16] = 0;
  return result;
}

uint64_t SharingOptionsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SharingOptionsGroupsView(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SharingOptionsView(0);
  v43 = *(v1 + *(v7 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2440, &unk_243B73040);
  sub_243B705BC();
  v8 = v42;
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v9 = v6 + *(v4 + 20);
  *v9 = sub_243B42A48;
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  if (!v8)
  {
    sub_243B2C694(0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
  }

  type metadata accessor for SharingOptionsObservableModel(0);
  sub_243B384D8(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B7074C();
  v14 = (*(v11 + 32))(v6 + *(v4 + 24), v13, v10);
  v15 = *(v7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_243B38520(v2, &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_243B708FC();
  v17 = sub_243B708EC();
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_243B387C4(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SharingOptionsView);
  v21 = sub_243B7092C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v41 = v6;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v35 - v24;
  sub_243B7090C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v37 = sub_243B6FE6C();
    v38 = &v35;
    v36 = *(v37 - 8);
    MEMORY[0x28223BE20](v37);
    v40 = &v35;
    v35 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_243B70B6C();

    *&v43 = 0xD000000000000034;
    *(&v43 + 1) = 0x8000000243B75D00;
    v42 = 51;
    v27 = sub_243B70C5C();
    v39 = &v35;
    MEMORY[0x245D498A0](v27);

    v29 = MEMORY[0x28223BE20](v28);
    (*(v22 + 16))(&v35 - v24, &v35 - v24, v21, v29);
    v30 = v35;
    sub_243B6FE5C();
    (*(v22 + 8))(v25, v21);
    sub_243B387C4(v41, a1, type metadata accessor for SharingOptionsGroupsView);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E38, &unk_243B73060);
    return (*(v36 + 32))(a1 + *(v31 + 36), v30, v37);
  }

  else
  {
    v33 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E40, &qword_243B71FB0) + 36));
    v34 = sub_243B6FE0C();
    (*(v22 + 32))(&v33[*(v34 + 20)], &v35 - v24, v21);
    *v33 = &unk_243B73058;
    *(v33 + 1) = v19;
    return sub_243B387C4(v41, a1, type metadata accessor for SharingOptionsGroupsView);
  }
}

uint64_t sub_243B3806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_243B708FC();
  *(v3 + 48) = sub_243B708EC();
  v5 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B38104, v5, v4);
}

uint64_t sub_243B38104()
{
  v17 = v0[5];

  v16 = type metadata accessor for SharingOptionsView(0);
  type metadata accessor for SharingOptionsViewModel(0);
  sub_243B384D8(&qword_27EDA2428, type metadata accessor for SharingOptionsViewModel, &protocol conformance descriptor for SharingOptionsViewModel);
  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v1 = v0[2];
  v2 = sub_243B6FD3C();
  v3 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins);
  v4 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins + 8);
  v5 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins + 16);
  v6 = *(v2 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_layoutMargins + 24);

  v7 = sub_243B6FD3C();
  v8 = *(v7 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption);
  v9 = *(v7 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_userDidChangeOption + 8);
  sub_243B2E364(v8, v9);

  v10 = sub_243B6FD3C();
  v11 = *(v10 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange);
  v12 = *(v10 + OBJC_IVAR____TtC14CloudSharingUI23SharingOptionsViewModel_contentSizeDidChange + 8);
  sub_243B2E364(v11, v12);

  type metadata accessor for SharingOptionsObservableModel(0);
  swift_allocObject();
  v13 = sub_243B2B740(v1, v8, v9, v11, v12, v3, v4, v5, v6);
  sub_243B2BFCC(v11, v12);
  sub_243B2BFCC(v8, v9);
  *(v0 + 1) = *(v17 + *(v16 + 28));
  v0[4] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2440, &unk_243B73040);
  sub_243B705CC();
  v14 = v0[1];

  return v14();
}

uint64_t sub_243B38404(uint64_t a1)
{
  v2 = sub_243B6FD0C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_243B6FEFC();
}

uint64_t sub_243B384D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243B38520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingOptionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B38584()
{
  v1 = type metadata accessor for SharingOptionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243B6FD0C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_243B386E0(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  sub_243B386E0(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B386E8()
{
  v2 = *(type metadata accessor for SharingOptionsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243B2E7BC;

  return sub_243B3806C(v4, v5, v0 + v3);
}

uint64_t sub_243B387C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B38870(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243B388A8(uint64_t a1)
{
  sub_243B38938();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243B38938()
{
  if (!qword_27EDA2468)
  {
    v0 = sub_243B6FC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2468);
    }
  }
}

uint64_t sub_243B3899C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2470, "~d");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_243B38A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2470, "~d");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_243B38B48(uint64_t a1)
{
  sub_243B38BFC(319);
  if (v1 <= 0x3F)
  {
    sub_243B38C54(319);
    if (v2 <= 0x3F)
    {
      sub_243B38CE8(319);
      if (v3 <= 0x3F)
      {
        sub_243B38D7C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243B38BFC(uint64_t a1)
{
  if (!qword_27EDA2488)
  {
    sub_243B6FD0C();
    v1 = sub_243B6FD2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2488);
    }
  }
}

void sub_243B38C54(uint64_t a1)
{
  if (!qword_27EDA2490)
  {
    type metadata accessor for UserInterface(255);
    sub_243B384D8(&qword_27EDA2498, type metadata accessor for UserInterface, &unk_243B73174);
    v1 = sub_243B6FD5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2490);
    }
  }
}

void sub_243B38CE8(uint64_t a1)
{
  if (!qword_27EDA24A0)
  {
    type metadata accessor for SharingOptionsViewModel(255);
    sub_243B384D8(&qword_27EDA2428, type metadata accessor for SharingOptionsViewModel, &protocol conformance descriptor for SharingOptionsViewModel);
    v1 = sub_243B6FD5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA24A0);
    }
  }
}

void sub_243B38D7C(uint64_t a1)
{
  if (!qword_27EDA24A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2438, &qword_243B75180);
    v1 = sub_243B705EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA24A8);
    }
  }
}

uint64_t sub_243B38DE0()
{
  type metadata accessor for SharingOptionsGroupsView(255);
  sub_243B384D8(&qword_27EDA24B0, type metadata accessor for SharingOptionsGroupsView, &protocol conformance descriptor for SharingOptionsGroupsView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243B38E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA24B8;
  if (!qword_27EDA24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA24B8);
  }

  return result;
}

void sub_243B38EE4()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA24C8 = v2;
  unk_27EDA24D0 = v4;
}

void sub_243B38FB0()
{
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_243B6F9FC();
  v4 = v3;

  qword_27EDA24D8 = v2;
  unk_27EDA24E0 = v4;
}

uint64_t CopyiCloudLinkView.init(viewModel:copyLinkAndDismiss:dismiss:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for CopyiCloudLinkViewModel(0);
  sub_243B3D23C(&qword_27EDA24E8, type metadata accessor for CopyiCloudLinkViewModel, &protocol conformance descriptor for CopyiCloudLinkViewModel);
  result = sub_243B6FE1C();
  *a6 = result;
  a6[1] = v12;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

uint64_t CopyiCloudLinkView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B6FA8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v26 = *(v1 + 16);
  v27 = *(v1 + 24);
  v28 = *(v1 + 40);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243B6FC3C();

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 2, v15))
  {
    if (qword_27EDA1D70 != -1)
    {
      swift_once();
    }

    v17 = qword_27EDA24C8;
    v18 = unk_27EDA24D0;
  }

  else
  {
    v19 = v25;
    (*(v4 + 32))(v25, v14, v3);
    v17 = sub_243B6FA4C();
    v20 = v3;
    v18 = v21;
    (*(v4 + 8))(v19, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  (*(v16 + 56))(v8, 1, 2, v15);
  v22 = sub_243B41AB0(v11, v8);
  sub_243B3C0FC(v8);
  sub_243B3C0FC(v11);
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for CopyiCloudLinkContentView(0) + 32)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v27;
  *(a1 + 48) = v28;
}

uint64_t sub_243B394CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B7007C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CopyiCloudLinkContentView(0);
  sub_243B2E06C(v1 + *(v10 + 32), v9, &qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_243B304EC(v9, a1, &qword_27EDA2270, "LT");
  }

  sub_243B709DC();
  v12 = sub_243B702CC();
  sub_243B6FB4C();

  sub_243B7006C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_243B396B8@<Q0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2518, &qword_243B733F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2520, &qword_243B73400);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2528, &qword_243B73408);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2530, &qword_243B73410);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2538, &qword_243B73418);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2540, &qword_243B73420);
  v10 = sub_243B3C58C();
  v13 = sub_243B30AF8(v10, v11, v12);
  *&v27 = v9;
  *(&v27 + 1) = MEMORY[0x277D837D0];
  *&v28 = v10;
  *(&v28 + 1) = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v27 = v8;
  *(&v27 + 1) = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2560, &qword_243B73438);
  v17 = sub_243B2E680(&qword_27EDA2568, &qword_27EDA2560, &qword_243B73438, MEMORY[0x277CDD7A8]);
  *&v27 = v16;
  *(&v27 + 1) = v17;
  v18 = swift_getOpaqueTypeConformance2();
  *&v27 = v6;
  *(&v27 + 1) = v7;
  *&v28 = v15;
  *(&v28 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  sub_243B6FE9C();
  sub_243B7076C();
  sub_243B6FEDC();
  v19 = v25;
  (*(v3 + 32))(v25, v5, v2);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2570, &qword_243B73440) + 36);
  v21 = v32;
  *(v20 + 64) = v31;
  *(v20 + 80) = v21;
  *(v20 + 96) = v33;
  v22 = v28;
  *v20 = v27;
  *(v20 + 16) = v22;
  result = v30;
  *(v20 + 32) = v29;
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_243B399D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_243B7008C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2540, &qword_243B73420);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2538, &qword_243B73418);
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2528, &qword_243B73408);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x28223BE20](v13);
  v33 = &v32 - v14;
  *v9 = sub_243B700EC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2578, &qword_243B73448) + 44)];
  v36 = a1;
  sub_243B39EBC(a1, v15);
  v16 = [objc_opt_self() systemBackgroundColor];
  v17 = sub_243B7054C();
  v18 = sub_243B702FC();
  v19 = &v9[*(v7 + 36)];
  *v19 = v17;
  v19[8] = v18;
  if (qword_27EDA1D78 != -1)
  {
    swift_once();
  }

  v38 = qword_27EDA24D8;
  v39 = unk_27EDA24E0;
  v20 = sub_243B3C58C();
  v23 = sub_243B30AF8(v20, v21, v22);
  v24 = MEMORY[0x277D837D0];
  sub_243B7045C();
  sub_243B2E620(v9, &qword_27EDA2540, &qword_243B73420);
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v38 = v7;
  v39 = v24;
  v40 = v20;
  v41 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  sub_243B7049C();
  (*(v4 + 8))(v6, v3);
  v27 = (*(v32 + 8))(v12, v10);
  MEMORY[0x28223BE20](v27);
  *(&v32 - 2) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2530, &qword_243B73410);
  v38 = v10;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2560, &qword_243B73438);
  v29 = sub_243B2E680(&qword_27EDA2568, &qword_27EDA2560, &qword_243B73438, MEMORY[0x277CDD7A8]);
  v38 = v28;
  v39 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_243B704CC();
  return (*(v34 + 8))(v26, v30);
}

uint64_t sub_243B39EBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v197 = a2;
  v196 = sub_243B7022C();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CopyiCloudLinkContentView(0);
  v165 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v166 = v5;
  v167 = v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25C8, &qword_243B73478);
  MEMORY[0x28223BE20](v168);
  v169 = v153 - v6;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25D0, &qword_243B73480);
  MEMORY[0x28223BE20](v170);
  v174 = v153 - v7;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25D8, &qword_243B73488);
  MEMORY[0x28223BE20](v173);
  v177 = v153 - v8;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25E0, &qword_243B73490);
  MEMORY[0x28223BE20](v171);
  v176 = v153 - v9;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25E8, &qword_243B73498);
  MEMORY[0x28223BE20](v175);
  v179 = v153 - v10;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25F0, &qword_243B734A0);
  MEMORY[0x28223BE20](v181);
  v182 = v153 - v11;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25F8, &qword_243B734A8);
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v183 = v153 - v12;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2600, &qword_243B734B0);
  MEMORY[0x28223BE20](v180);
  v185 = v153 - v13;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2608, &qword_243B734B8);
  MEMORY[0x28223BE20](v184);
  v189 = v153 - v14;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2610, &qword_243B734C0);
  MEMORY[0x28223BE20](v188);
  v193 = v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v190 = v153 - v17;
  MEMORY[0x28223BE20](v18);
  v192 = v153 - v19;
  v164 = sub_243B701FC();
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v161 = v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2618, &qword_243B734C8);
  MEMORY[0x28223BE20](v163);
  v191 = v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v199 = v153 - v23;
  v24 = sub_243B701DC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v154 = v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2298, &qword_243B734D0);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = v153 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v153 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v153 - v38;
  v160 = sub_243B706DC();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v41 = v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2620, &qword_243B734D8);
  MEMORY[0x28223BE20](v157);
  v178 = v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v156 = v153 - v44;
  MEMORY[0x28223BE20](v45);
  v198 = v153 - v46;
  v158 = v41;
  sub_243B706CC();
  v155 = sub_243B7030C();
  v172 = a1;
  sub_243B394CC(v39);
  (*(v25 + 104))(v36, *MEMORY[0x277CE0558], v24);
  (*(v25 + 56))(v36, 0, 1, v24);
  v47 = *(v28 + 56);
  sub_243B2E06C(v39, v30, &qword_27EDA2270, "LT");
  sub_243B2E06C(v36, &v30[v47], &qword_27EDA2270, "LT");
  v48 = *(v25 + 48);
  if (v48(v30, 1, v24) == 1)
  {
    sub_243B2E620(v36, &qword_27EDA2270, "LT");
    sub_243B2E620(v39, &qword_27EDA2270, "LT");
    if (v48(&v30[v47], 1, v24) == 1)
    {
      sub_243B2E620(v30, &qword_27EDA2270, "LT");
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_243B2E06C(v30, v33, &qword_27EDA2270, "LT");
  if (v48(&v30[v47], 1, v24) == 1)
  {
    sub_243B2E620(v36, &qword_27EDA2270, "LT");
    sub_243B2E620(v39, &qword_27EDA2270, "LT");
    (*(v25 + 8))(v33, v24);
LABEL_6:
    sub_243B2E620(v30, &qword_27EDA2298, &qword_243B734D0);
    goto LABEL_8;
  }

  v49 = v154;
  (*(v25 + 32))(v154, &v30[v47], v24);
  sub_243B3D23C(&qword_27EDA22E0, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v153[1] = sub_243B707FC();
  v50 = *(v25 + 8);
  v50(v49, v24);
  sub_243B2E620(v36, &qword_27EDA2270, "LT");
  sub_243B2E620(v39, &qword_27EDA2270, "LT");
  v50(v33, v24);
  sub_243B2E620(v30, &qword_27EDA2270, "LT");
LABEL_8:
  sub_243B6FCCC();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v156;
  (*(v159 + 32))(v156, v158, v160);
  v60 = v59 + *(v157 + 36);
  *v60 = v155;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  v61 = sub_243B304EC(v59, v198, &qword_27EDA2620, &qword_243B734D8);
  v62 = v172;
  v63 = v172[1];
  *&v206 = *v172;
  *(&v206 + 1) = v63;
  sub_243B30AF8(v61, v64, v65);

  v66 = sub_243B703BC();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  KeyPath = swift_getKeyPath();
  v74 = swift_getKeyPath();
  v201 = v70 & 1;
  v200 = 0;
  *&v206 = v66;
  *(&v206 + 1) = v68;
  LOBYTE(v207) = v70 & 1;
  *(&v207 + 1) = *v203;
  DWORD1(v207) = *&v203[3];
  *(&v207 + 1) = v72;
  *&v208 = KeyPath;
  BYTE8(v208) = 1;
  *(&v208 + 9) = *v202;
  HIDWORD(v208) = *&v202[3];
  *&v209 = v74;
  *(&v209 + 1) = 3;
  LOBYTE(v210) = 0;
  v75 = v161;
  sub_243B701EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2628, &qword_243B73540);
  sub_243B3C948();
  v76 = v199;
  v77 = v164;
  sub_243B7041C();
  (*(v162 + 8))(v75, v77);
  v204[2] = v208;
  v204[3] = v209;
  v205 = v210;
  v204[1] = v207;
  v204[0] = v206;
  sub_243B2E620(v204, &qword_27EDA2628, &qword_243B73540);
  v78 = sub_243B702EC();
  v79 = v76 + *(v163 + 36);
  *v79 = v78;
  *(v79 + 8) = 0u;
  *(v79 + 24) = 0u;
  *(v79 + 40) = 1;
  v80 = v167;
  sub_243B3D284(v62, v167, type metadata accessor for CopyiCloudLinkContentView);
  v81 = (*(v165 + 80) + 16) & ~*(v165 + 80);
  v82 = swift_allocObject();
  sub_243B3C684(v80, v82 + v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2668, &qword_243B73560);
  sub_243B3CCA0();
  v83 = v169;
  sub_243B7060C();
  v84 = sub_243B7035C();
  v85 = swift_getKeyPath();
  v86 = &v83[*(v168 + 36)];
  *v86 = v85;
  v86[1] = v84;
  v87 = *(v62 + 16);
  if (v87)
  {
    v88 = objc_opt_self();
    v89 = [v88 tertiaryLabelColor];
    v90 = sub_243B7054C();
    v91 = v83;
    v92 = v174;
    sub_243B304EC(v91, v174, &qword_27EDA25C8, &qword_243B73478);
    *(v92 + *(v170 + 36)) = v90;
    v93 = [v88 tertiarySystemGroupedBackgroundColor];
    v94 = sub_243B7054C();
  }

  else
  {
    v95 = sub_243B7051C();
    v96 = v83;
    v92 = v174;
    sub_243B304EC(v96, v174, &qword_27EDA25C8, &qword_243B73478);
    *(v92 + *(v170 + 36)) = v95;
    v94 = sub_243B704FC();
  }

  v97 = v94;
  v98 = swift_getKeyPath();
  *&v206 = v97;
  v99 = sub_243B6FDCC();
  v100 = v177;
  sub_243B304EC(v92, v177, &qword_27EDA25D0, &qword_243B73480);
  v101 = (v100 + *(v173 + 36));
  *v101 = v98;
  v101[1] = v99;
  v102 = v176;
  v103 = &v176[*(v171 + 36)];
  v104 = *(sub_243B6FEBC() + 20);
  v105 = *MEMORY[0x277CE0118];
  v106 = sub_243B700DC();
  (*(*(v106 - 8) + 104))(&v103[v104], v105, v106);
  __asm { FMOV            V0.2D, #12.0 }

  *v103 = _Q0;
  *&v103[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2678, &qword_243B735C8) + 36)] = 256;
  sub_243B304EC(v100, v102, &qword_27EDA25D8, &qword_243B73488);
  LOBYTE(v105) = sub_243B702EC();
  v112 = v179;
  sub_243B304EC(v102, v179, &qword_27EDA25E0, &qword_243B73490);
  v113 = v112 + *(v175 + 36);
  *v113 = v105;
  *(v113 + 8) = 0u;
  *(v113 + 24) = 0u;
  *(v113 + 40) = 1;
  LOBYTE(v105) = sub_243B7031C();
  v114 = [objc_opt_self() currentDevice];
  [v114 userInterfaceIdiom];

  sub_243B6FCCC();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v123 = v182;
  sub_243B304EC(v112, v182, &qword_27EDA25E8, &qword_243B73498);
  v124 = v123 + *(v181 + 36);
  *v124 = v105;
  *(v124 + 8) = v116;
  *(v124 + 16) = v118;
  *(v124 + 24) = v120;
  *(v124 + 32) = v122;
  *(v124 + 40) = 0;
  v125 = v194;
  sub_243B7021C();
  sub_243B3CDD4(&qword_27EDA2680, &qword_27EDA25F0, &qword_243B734A0, sub_243B3CE58);
  sub_243B3D23C(&qword_27EDA2108, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v126 = v183;
  v127 = v196;
  sub_243B703FC();
  (*(v195 + 8))(v125, v127);
  sub_243B2E620(v123, &qword_27EDA25F0, &qword_243B734A0);
  v128 = v185;
  v129 = &v185[*(v180 + 36)];
  v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA26D8, &qword_243B735F0) + 28);
  v131 = *MEMORY[0x277CDF420];
  v132 = sub_243B6FD1C();
  (*(*(v132 - 8) + 104))(v129 + v130, v131, v132);
  *v129 = swift_getKeyPath();
  (*(v186 + 32))(v128, v126, v187);
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  *(v134 + 16) = v87;
  v135 = v189;
  sub_243B304EC(v128, v189, &qword_27EDA2600, &qword_243B734B0);
  v136 = (v135 + *(v184 + 36));
  *v136 = v133;
  v136[1] = sub_243B3D224;
  v136[2] = v134;
  sub_243B7076C();
  sub_243B6FEDC();
  v137 = v190;
  sub_243B304EC(v135, v190, &qword_27EDA2608, &qword_243B734B8);
  v138 = (v137 + *(v188 + 36));
  v139 = v211;
  v138[4] = v210;
  v138[5] = v139;
  v138[6] = v212;
  v140 = v207;
  *v138 = v206;
  v138[1] = v140;
  v141 = v209;
  v138[2] = v208;
  v138[3] = v141;
  v142 = v192;
  sub_243B304EC(v137, v192, &qword_27EDA2610, &qword_243B734C0);
  v143 = v198;
  v144 = v178;
  sub_243B2E06C(v198, v178, &qword_27EDA2620, &qword_243B734D8);
  v145 = v199;
  v146 = v191;
  sub_243B2E06C(v199, v191, &qword_27EDA2618, &qword_243B734C8);
  v147 = v193;
  sub_243B2E06C(v142, v193, &qword_27EDA2610, &qword_243B734C0);
  v148 = v197;
  sub_243B2E06C(v144, v197, &qword_27EDA2620, &qword_243B734D8);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA26E0, &qword_243B73658);
  v150 = v148 + v149[12];
  *v150 = 0;
  *(v150 + 8) = 1;
  sub_243B2E06C(v146, v148 + v149[16], &qword_27EDA2618, &qword_243B734C8);
  v151 = v148 + v149[20];
  *v151 = 0;
  *(v151 + 8) = 1;
  sub_243B2E06C(v147, v148 + v149[24], &qword_27EDA2610, &qword_243B734C0);
  sub_243B2E620(v142, &qword_27EDA2610, &qword_243B734C0);
  sub_243B2E620(v145, &qword_27EDA2618, &qword_243B734C8);
  sub_243B2E620(v143, &qword_27EDA2620, &qword_243B734D8);
  sub_243B2E620(v147, &qword_27EDA2610, &qword_243B734C0);
  sub_243B2E620(v146, &qword_27EDA2618, &qword_243B734C8);
  return sub_243B2E620(v144, &qword_27EDA2620, &qword_243B734D8);
}

__n128 sub_243B3B584@<Q0>(uint64_t a1@<X8>)
{
  sub_243B700CC();
  type metadata accessor for CreateiCloudLinkViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_243B703AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_243B7076C();
  sub_243B6FEDC();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v16;
  *(a1 + 112) = v17;
  *(a1 + 128) = v18;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  result = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  return result;
}

uint64_t sub_243B3B6D4(uint64_t a1)
{
  v2 = sub_243B7019C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2560, &qword_243B73438);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_243B7018C();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2580, &qword_243B73450);
  sub_243B2E680(&qword_27EDA2588, &qword_27EDA2580, &qword_243B73450, MEMORY[0x277CDF028]);
  sub_243B6FD6C();
  v7 = sub_243B2E680(&qword_27EDA2568, &qword_27EDA2560, &qword_243B73438, MEMORY[0x277CDD7A8]);
  MEMORY[0x245D491F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_243B3B8C0(uint64_t a1)
{
  v2 = type metadata accessor for CopyiCloudLinkContentView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_243B3D284(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CopyiCloudLinkContentView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_243B3C684(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2590, &qword_243B73458);
  sub_243B3C74C();
  return sub_243B7060C();
}

double sub_243B3BA14@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA25C0, &qword_243B73470);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_243B7057C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B7056C();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  sub_243B7059C();

  (*(v6 + 8))(v8, v5);
  sub_243B7010C();
  v9 = sub_243B7011C();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = sub_243B7058C();

  sub_243B2E620(v4, &qword_27EDA25C0, &qword_243B73470);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v13 = sub_243B7054C();
  v14 = [v11 tertiarySystemFillColor];
  v15 = sub_243B7054C();
  sub_243B7076C();
  sub_243B6FDBC();
  *a1 = v10;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  v16 = v18[1];
  *(a1 + 24) = v18[0];
  *(a1 + 40) = v16;
  result = *&v19;
  *(a1 + 56) = v19;
  return result;
}

uint64_t sub_243B3BCD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  MEMORY[0x28223BE20](v2 - 8);
  sub_243B2E06C(a1, &v5 - v3, &qword_27EDA2270, "LT");
  return sub_243B6FF5C();
}

double sub_243B3BD7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return result;
}

uint64_t sub_243B3BDFC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_243B3D284(a1, &v10 - v7, type metadata accessor for CopyiCloudLinkViewModel.State);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B3D284(v8, v5, type metadata accessor for CopyiCloudLinkViewModel.State);

  sub_243B6FC4C();
  return sub_243B3C0FC(v8);
}

uint64_t sub_243B3BF18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B6FFCC();
  *a1 = result;
  return result;
}

uint64_t sub_243B3BF70@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D49030]();
  *a1 = result;
  return result;
}

uint64_t sub_243B3BFC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243B7000C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243B3C034(uint64_t a1)
{
  v2 = sub_243B6FD1C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x245D48F60](v5);
}

uint64_t sub_243B3C0FC(uint64_t a1)
{
  v2 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CopyiCloudLinkContentView(uint64_t a1)
{
  result = qword_27EDA2500;
  if (!qword_27EDA2500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_243B3C1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_243B3C244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243B3C2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243B3C3CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243B3C47C(uint64_t a1)
{
  sub_243B3C518();
  if (v1 <= 0x3F)
  {
    sub_243B3312C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_243B3C518()
{
  result = qword_27EDA2510;
  if (!qword_27EDA2510)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EDA2510);
  }

  return result;
}

unint64_t sub_243B3C58C()
{
  result = qword_27EDA2548;
  if (!qword_27EDA2548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2540, &qword_243B73420);
    sub_243B2E680(&qword_27EDA2550, &qword_27EDA2558, &qword_243B73428, MEMORY[0x277CE1198]);
    sub_243B2E680(&qword_27EDA23F8, &qword_27EDA2400, &qword_243B73430, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2548);
  }

  return result;
}

uint64_t sub_243B3C684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyiCloudLinkContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243B3C74C()
{
  result = qword_27EDA2598;
  if (!qword_27EDA2598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2590, &qword_243B73458);
    sub_243B3C7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2598);
  }

  return result;
}

unint64_t sub_243B3C7D8()
{
  result = qword_27EDA25A0;
  if (!qword_27EDA25A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25A8, &qword_243B73460);
    sub_243B2E680(&qword_27EDA25B0, &qword_27EDA25B8, &qword_243B73468, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA25A0);
  }

  return result;
}

uint64_t sub_243B3C890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243B6FFAC();
  *a1 = result;
  return result;
}

uint64_t sub_243B3C8E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_243B7002C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_243B3C948()
{
  result = qword_27EDA2630;
  if (!qword_27EDA2630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2628, &qword_243B73540);
    sub_243B3CA00();
    sub_243B2E680(&qword_27EDA2658, &qword_27EDA2660, &qword_243B73558, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2630);
  }

  return result;
}

unint64_t sub_243B3CA00()
{
  result = qword_27EDA2638;
  if (!qword_27EDA2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2640, &qword_243B73548);
    sub_243B2E680(&qword_27EDA2648, &qword_27EDA2650, &qword_243B73550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2638);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for CopyiCloudLinkContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_243B701DC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_243B3CCA0()
{
  result = qword_27EDA2670;
  if (!qword_27EDA2670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2668, &qword_243B73560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2670);
  }

  return result;
}

uint64_t sub_243B3CD24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243B6FFCC();
  *a1 = result;
  return result;
}

uint64_t sub_243B3CD7C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D49030]();
  *a1 = result;
  return result;
}

uint64_t sub_243B3CDD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_243B3CE88()
{
  result = qword_27EDA2690;
  if (!qword_27EDA2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25E0, &qword_243B73490);
    sub_243B3CF40();
    sub_243B2E680(&qword_27EDA26D0, &qword_27EDA2678, &qword_243B735C8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2690);
  }

  return result;
}

unint64_t sub_243B3CF40()
{
  result = qword_27EDA2698;
  if (!qword_27EDA2698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25D8, &qword_243B73488);
    sub_243B3CFF8();
    sub_243B2E680(&qword_27EDA20F8, &qword_27EDA2100, &qword_243B728A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2698);
  }

  return result;
}

unint64_t sub_243B3CFF8()
{
  result = qword_27EDA26A0;
  if (!qword_27EDA26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25D0, &qword_243B73480);
    sub_243B3D0B0();
    sub_243B2E680(&qword_27EDA26C0, &qword_27EDA26C8, &unk_243B735E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA26A0);
  }

  return result;
}

unint64_t sub_243B3D0B0()
{
  result = qword_27EDA26A8;
  if (!qword_27EDA26A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA25C8, &qword_243B73478);
    sub_243B2E680(&qword_27EDA26B0, &qword_27EDA26B8, &unk_243B735D0, MEMORY[0x277CDF028]);
    sub_243B2E680(&qword_27EDA20E8, &qword_27EDA20F0, &qword_243B728A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA26A8);
  }

  return result;
}

uint64_t sub_243B3D1BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243B7000C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243B3D23C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243B3D284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_243B3D2F0()
{
  result = qword_27EDA26E8;
  if (!qword_27EDA26E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2570, &qword_243B73440);
    sub_243B2E680(&qword_27EDA26F0, &qword_27EDA2518, &qword_243B733F8, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA26E8);
  }

  return result;
}

uint64_t sub_243B3D3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_243B3D4AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_243B3D594(uint64_t a1)
{
  sub_243B3D970(319, &qword_27EDA1E70, type metadata accessor for AlertViewModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_243B3D920(319, &qword_27EDA2708, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_243B3D6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B6FACC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_243B3D774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_243B6FACC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_243B3D830(uint64_t a1)
{
  sub_243B6FACC();
  if (v1 <= 0x3F)
  {
    sub_243B3D920(319, &qword_27EDA2720, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_243B3D970(319, &qword_27EDA2728, type metadata accessor for AlertViewModelButton, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243B3D920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_243B3D970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_243B3DA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B6FACC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2730, &qword_243B73698);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_243B3DB50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_243B6FACC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2730, &qword_243B73698);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_243B3DC84(uint64_t a1)
{
  sub_243B6FACC();
  if (v1 <= 0x3F)
  {
    sub_243B3D970(319, &qword_27EDA2748, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_243B3DD58(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243B3DD58(uint64_t a1)
{
  if (!qword_27EDA2750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2758, "x_");
    v1 = sub_243B70B0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2750);
    }
  }
}

uint64_t sub_243B3DE08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B6FACC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_243B3DE8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v24 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  sub_243B2E06C(v3, v20 - v5, &qword_27EDA1E00, &unk_243B73660);
  v7 = type metadata accessor for AlertViewModel(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_243B3E898(v6);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = &v6[*(v7 + 20)];
    v8 = *v10;
    v9 = *(v10 + 1);

    sub_243B3EAC0(v6);
  }

  v20[1] = v9;
  v29 = v8;
  v30 = v9;
  v11 = v3 + *(type metadata accessor for AlertViewModelAlert(0) + 20);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v11) = *(v11 + 16);
  v26 = v12;
  v27 = v13;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2768, &qword_243B73780);
  v14 = sub_243B706AC();
  v22 = v20;
  v21 = v25;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2770, &qword_243B73788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2778, &qword_243B73790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2780, &qword_243B73798);
  v16 = sub_243B2E680(&qword_27EDA2788, &qword_27EDA2770, &qword_243B73788, MEMORY[0x277CE04B0]);
  sub_243B30AF8(v16, v17, v18);
  sub_243B3E910();
  sub_243B3EA44();
  sub_243B704BC();

  return result;
}

uint64_t sub_243B3E174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27A0, &unk_243B737A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for AlertViewModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B2E06C(a1, v9, &qword_27EDA1E00, &unk_243B73660);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_243B3E898(v9);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    sub_243B3ED60(v9, v13, type metadata accessor for AlertViewModel);
    v20 = *&v13[*(v10 + 28)];

    v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27C0, &qword_243B737B0);
    sub_243B6FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27B0, &qword_243B740D0);
    sub_243B2E680(&qword_27EDA27C8, &qword_27EDA27C0, &qword_243B737B0, MEMORY[0x277D83980]);
    sub_243B2E680(&qword_27EDA27A8, &qword_27EDA27B0, &qword_243B740D0, MEMORY[0x277CDF028]);
    sub_243B3EB1C(&qword_27EDA27D0, type metadata accessor for AlertViewModelButton, &unk_243B736C0);
    sub_243B706FC();
    sub_243B3EAC0(v13);
    v16 = v19;
    (*(v4 + 32))(v19, v6, v3);
    v14 = 0;
    v15 = v16;
  }

  return (*(v4 + 56))(v15, v14, 1, v3);
}

uint64_t sub_243B3E4EC(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2730, &qword_243B73698);
  MEMORY[0x28223BE20](v6 - 8);
  sub_243B2E06C(a1 + *(v3 + 32), &v11[-v7], &qword_27EDA2730, &qword_243B73698);
  sub_243B3EB64(a1, &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_243B3ED60(&v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for AlertViewModelButton);
  v12 = a1;
  return sub_243B705FC();
}

uint64_t sub_243B3E6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AlertViewModelButton(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_243B2D5E0(v4, v5, v6);
}

uint64_t sub_243B3E71C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  sub_243B2E06C(a1, v19 - v5, &qword_27EDA1E00, &unk_243B73660);
  v7 = type metadata accessor for AlertViewModel(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_243B3E898(v6);
LABEL_5:
    result = 0;
    v15 = 0;
    v18 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  v8 = &v6[*(v7 + 24)];
  v10 = *v8;
  v9 = *(v8 + 1);

  v11 = sub_243B3EAC0(v6);
  if (!v9)
  {
    goto LABEL_5;
  }

  v19[0] = v10;
  v19[1] = v9;
  sub_243B30AF8(v11, v12, v13);
  result = sub_243B703BC();
  v18 = v17 & 1;
LABEL_6:
  *a2 = result;
  a2[1] = v15;
  a2[2] = v18;
  a2[3] = v16;
  return result;
}

uint64_t sub_243B3E898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243B3E910()
{
  result = qword_27EDA2790;
  if (!qword_27EDA2790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2778, &qword_243B73790);
    sub_243B3E994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2790);
  }

  return result;
}

unint64_t sub_243B3E994()
{
  result = qword_27EDA2798;
  if (!qword_27EDA2798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA27A0, &unk_243B737A0);
    sub_243B2E680(&qword_27EDA27A8, &qword_27EDA27B0, &qword_243B740D0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2798);
  }

  return result;
}

unint64_t sub_243B3EA44()
{
  result = qword_27EDA27B8;
  if (!qword_27EDA27B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2780, &qword_243B73798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA27B8);
  }

  return result;
}

uint64_t sub_243B3EAC0(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B3EB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243B3EB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B3EBC8()
{
  v1 = type metadata accessor for AlertViewModelButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_243B6FACC();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_243B30B4C(*(v5 + v1[5]), *(v5 + v1[5] + 8), *(v5 + v1[5] + 16));

  v7 = v1[6];
  v8 = sub_243B6FCBC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  if (*(v5 + v1[7]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B3ED60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B3EDC8()
{
  v1 = type metadata accessor for AlertViewModelButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_243B3EE44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2770, &qword_243B73788);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2778, &qword_243B73790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2780, &qword_243B73798);
  v0 = sub_243B2E680(&qword_27EDA2788, &qword_27EDA2770, &qword_243B73788, MEMORY[0x277CE04B0]);
  sub_243B30AF8(v0, v1, v2);
  sub_243B3E910();
  sub_243B3EA44();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243B3EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243B41D94(a3, v25 - v10);
  v12 = sub_243B7092C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243B2E620(v11, &qword_27EDA1F28, &qword_243B72490);
  }

  else
  {
    sub_243B7091C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_243B708DC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_243B7083C() + 32;
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

      sub_243B2E620(a3, &qword_27EDA1F28, &qword_243B72490);

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

  sub_243B2E620(a3, &qword_27EDA1F28, &qword_243B72490);
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

uint64_t sub_243B3F238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243B41D94(a3, v25 - v10);
  v12 = sub_243B7092C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243B2E620(v11, &qword_27EDA1F28, &qword_243B72490);
  }

  else
  {
    sub_243B7091C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_243B708DC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_243B7083C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2818, &qword_243B738B0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_243B2E620(a3, &qword_27EDA1F28, &qword_243B72490);

      return v22;
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

  sub_243B2E620(a3, &qword_27EDA1F28, &qword_243B72490);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2818, &qword_243B738B0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

double sub_243B3F53C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return result;
}

uint64_t CopyiCloudLinkViewModel.__allocating_init(fileURL:)(uint64_t a1)
{
  v2 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  (*(*(v9 - 8) + 56))(v7, 1, 2, v9);
  sub_243B3F95C(v7, v4);
  sub_243B6FBFC();
  sub_243B3C0FC(v7);
  v10 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel_fileURL;
  v11 = sub_243B6FA8C();
  (*(*(v11 - 8) + 32))(v8 + v10, a1, v11);
  return v8;
}

uint64_t CopyiCloudLinkViewModel.init(fileURL:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27E0, qword_243B737D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel__state;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  (*(*(v14 - 8) + 56))(v12, 1, 2, v14);
  sub_243B3F95C(v12, v9);
  sub_243B6FBFC();
  sub_243B3C0FC(v12);
  (*(v4 + 32))(v1 + v13, v6, v3);
  v15 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel_fileURL;
  v16 = sub_243B6FA8C();
  (*(*(v16 - 8) + 32))(v1 + v15, a1, v16);
  return v1;
}

uint64_t sub_243B3F95C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B3F9C0()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v1[3] = swift_task_alloc();
  v2 = sub_243B6FB9C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243B3FAB8, 0, 0);
}

uint64_t sub_243B3FAB8()
{
  v17 = v0;
  sub_243B6FB5C();
  v1 = sub_243B6FB8C();
  v2 = sub_243B709AC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_243B40EA8(0x6168536863746566, 0xEF29284C52556572, &v16);
    _os_log_impl(&dword_243B1E000, v1, v2, "%{public}s Start", v7, 0xCu);
    v9 = __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245D4A570](v8, -1, -1, v9);
    MEMORY[0x245D4A570](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v11 = v0[2];
  v10 = v0[3];
  v12 = sub_243B7092C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;

  sub_243B3EF48(0, 0, v10, &unk_243B737F8, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_243B3FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  v4[19] = swift_task_alloc();
  v5 = sub_243B6FB9C();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v6 = *(type metadata accessor for CopyiCloudLinkViewModel.State(0) - 8);
  v4[28] = v6;
  v4[29] = *(v6 + 64);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243B3FE90, 0, 0);
}

uint64_t sub_243B3FE90()
{
  v1 = v0[26];
  v2 = objc_opt_self();
  v3 = sub_243B6FA5C();
  v0[32] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_243B3FFE0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F60, &qword_243B74F80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243B5A89C;
  v0[13] = &block_descriptor_1;
  v0[14] = v4;
  [v2 existingShareForFileOrFolderURL:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243B3FFE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_243B404AC;
  }

  else
  {
    v2 = sub_243B400F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243B400F0()
{
  v35 = v0;
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  sub_243B42300(v0[26], v4);
  v5 = *(v4 + *(v3 + 48));
  v6 = sub_243B6FA8C();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v2, v4, v6);

  sub_243B6FB6C();
  v8 = sub_243B6FB8C();
  v9 = sub_243B709AC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[21];
  if (v10)
  {
    v33 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_243B40EA8(0x6168536863746566, 0xEF29284C52556572, &v34);
    _os_log_impl(&dword_243B1E000, v8, v9, "%{public}s Fetched existing share. Updating property.", v14, 0xCu);
    v16 = __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x245D4A570](v15, -1, -1, v16);
    v17 = v14;
    v5 = v33;
    MEMORY[0x245D4A570](v17, -1, -1);
  }

  (*(v13 + 8))(v11, v12);
  v18 = v0[31];
  v19 = v0[27];
  (*(v7 + 16))(v18, v19, v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  (*(*(v20 - 8) + 56))(v18, 0, 2, v20);
  (*(v7 + 8))(v19, v6);

  v21 = v0[30];
  v22 = v0[31];
  v23 = v0[28];
  v25 = v0[18];
  v24 = v0[19];
  v26 = sub_243B7092C();
  (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
  sub_243B3F95C(v22, v21);
  sub_243B708FC();

  v27 = sub_243B708EC();
  v28 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  v29[2] = v27;
  v29[3] = v30;
  v29[4] = v25;
  sub_243B421A4(v21, v29 + v28);
  sub_243B3EF48(0, 0, v24, &unk_243B738F8, v29);

  sub_243B3C0FC(v22);

  v31 = v0[1];

  return v31();
}

uint64_t sub_243B404AC()
{
  v32 = v0;
  v2 = v0[32];
  v1 = v0[33];
  swift_willThrow();

  sub_243B6FB6C();
  v3 = v1;
  v4 = sub_243B6FB8C();
  v5 = sub_243B709CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[33];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_243B40EA8(0x6168536863746566, 0xEF29284C52556572, &v31);
    *(v11 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_243B1E000, v4, v5, "%{public}s Unable to fetch existing share with error: %@", v11, 0x16u);
    sub_243B2E620(v12, &unk_27EDA1F70, &qword_243B724C0);
    MEMORY[0x245D4A570](v12, -1, -1);
    v16 = __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D4A570](v13, -1, -1, v16);
    MEMORY[0x245D4A570](v11, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[31];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  (*(*(v18 - 8) + 56))(v17, 2, 2, v18);
  v19 = v0[30];
  v20 = v0[31];
  v21 = v0[28];
  v23 = v0[18];
  v22 = v0[19];
  v24 = sub_243B7092C();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  sub_243B3F95C(v20, v19);
  sub_243B708FC();

  v25 = sub_243B708EC();
  v26 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v25;
  v27[3] = v28;
  v27[4] = v23;
  sub_243B421A4(v19, v27 + v26);
  sub_243B3EF48(0, 0, v22, &unk_243B738F8, v27);

  sub_243B3C0FC(v20);

  v29 = v0[1];

  return v29();
}

uint64_t sub_243B4083C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243B4087C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243B2EC14;

  return sub_243B3FCCC(a1, v4, v5, v6);
}

uint64_t CopyiCloudLinkViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27E0, qword_243B737D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel_fileURL;
  v4 = sub_243B6FA8C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CopyiCloudLinkViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27E0, qword_243B737D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CloudSharingUI23CopyiCloudLinkViewModel_fileURL;
  v4 = sub_243B6FA8C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_243B40AC4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CopyiCloudLinkViewModel(0);
  result = sub_243B6FBEC();
  *a2 = result;
  return result;
}

uint64_t sub_243B40B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for CopyiCloudLinkViewModel.State(0);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  sub_243B708FC();
  v5[6] = sub_243B708EC();
  v7 = sub_243B708DC();

  return MEMORY[0x2822009F8](sub_243B40BD4, v7, v6);
}

uint64_t sub_243B40BD4()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_243B3F95C(v3, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B3F95C(v1, v2);

  sub_243B6FC4C();
  sub_243B3C0FC(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_243B40CB8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243B40DB0;

  return v6(a1);
}

uint64_t sub_243B40DB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_243B40EA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243B413CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_243B319B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void sub_243B40F9C(uint64_t a1)
{
  sub_243B411A4(319);
  if (v1 <= 0x3F)
  {
    sub_243B6FA8C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CopyiCloudLinkViewModel.fetchShareURL()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243B2E7BC;

  return v4();
}

void sub_243B411A4(uint64_t a1)
{
  if (!qword_27EDA27F8)
  {
    type metadata accessor for CopyiCloudLinkViewModel.State(255);
    v1 = sub_243B6FC5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA27F8);
    }
  }
}

uint64_t sub_243B41210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243B4129C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_243B4132C(uint64_t a1)
{
  sub_243B41384();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_243B41384()
{
  if (!qword_27EDA2810)
  {
    v0 = sub_243B6FA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDA2810);
    }
  }
}

unint64_t sub_243B413CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_243B414D8(a5, a6);
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
    result = sub_243B70B9C();
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

void *sub_243B414D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_243B41524(a1, a2);
  sub_243B41654(&unk_2856C6810);
  return v3;
}

void *sub_243B41524(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243B41740(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_243B70B9C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_243B7086C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243B41740(v10, 0);
        result = sub_243B70B5C();
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

uint64_t sub_243B41654(uint64_t result)
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

  result = sub_243B417B4(result, v11, 1, v3);
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

void *sub_243B41740(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2820, &qword_243B738C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243B417B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2820, &qword_243B738C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_243B418A8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_243B4199C;

  return v5(v2 + 32);
}

uint64_t sub_243B4199C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_243B41AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243B6FA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2830, &unk_243B73950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_243B3F95C(a1, &v22 - v12);
  sub_243B3F95C(a2, &v13[v15]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 2, v16);
  if (!v18)
  {
    sub_243B3F95C(v13, v10);
    if (!v17(&v13[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v19 = sub_243B6FA6C();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_243B3C0FC(v13);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v13[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v13[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_243B2E620(v13, &qword_27EDA2830, &unk_243B73950);
    v19 = 0;
    return v19 & 1;
  }

  sub_243B3C0FC(v13);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_243B41D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F28, &qword_243B72490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B41E04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B41E3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243B2EC14;

  return sub_243B418A8(a1, v4);
}

uint64_t sub_243B41EF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243B2E7BC;

  return sub_243B418A8(a1, v4);
}

uint64_t sub_243B41FAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243B2EC14;

  return sub_243B40CB8(a1, v4);
}

uint64_t sub_243B4207C()
{
  v1 = *(type metadata accessor for CopyiCloudLinkViewModel.State(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA24F0, &qword_243B737D0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 2, v5))
  {
    v6 = sub_243B6FA8C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B421A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyiCloudLinkViewModel.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B42208(uint64_t a1)
{
  v4 = *(type metadata accessor for CopyiCloudLinkViewModel.State(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243B2EC14;

  return sub_243B40B04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_243B42300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2828, &unk_243B738E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B42384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
  swift_beginAccess();
  return sub_243B2E06C(v3 + v4, a2, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B4245C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_243B2E06C(a1, &v9[-v5], &qword_27EDA1E00, &unk_243B73660);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAEC();

  return sub_243B2E620(v6, &qword_27EDA1E00, &unk_243B73660);
}

void sub_243B425AC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlertBool);
}

uint64_t SharingOptionsGroupsView.init(viewModel:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for SharingOptionsGroupsView(0);
  v9 = &a2[*(v8 + 20)];
  *v9 = sub_243B42A48;
  *(v9 + 1) = 0;
  v9[16] = 0;
  if (!a1)
  {
    sub_243B2C694(0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0);
  }

  type metadata accessor for SharingOptionsObservableModel(0);
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B7074C();
  return (*(v5 + 32))(&a2[*(v8 + 24)], v7, v4);
}

uint64_t sub_243B42848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_243B7007C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_243B2E06C(v2, &v14 - v9, &qword_27EDA2430, &unk_243B73030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_243B6FD0C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_243B709DC();
    v13 = sub_243B702CC();
    sub_243B6FB4C();

    sub_243B7006C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_243B42A48()
{
  type metadata accessor for UserInterface(0);
  swift_allocObject();
  return sub_243B37648();
}

uint64_t SharingOptionsGroupsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2838, &qword_243B739A0);
  MEMORY[0x28223BE20](v38);
  v3 = &v31 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2840, &qword_243B739A8);
  v33 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v32 = &v31 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2848, &qword_243B739B0);
  MEMORY[0x28223BE20](v35);
  v37 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2850, &qword_243B739B8);
  MEMORY[0x28223BE20](v36);
  v10 = &v31 - v9;
  type metadata accessor for SharingOptionsGroupsView(0);
  type metadata accessor for UserInterface(0);
  sub_243B4738C(&qword_27EDA2498, type metadata accessor for UserInterface, &unk_243B73174);
  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v41 = v1;
  if (v45)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2858, &qword_243B73A08);
    sub_243B483C4(&qword_27EDA2860, &qword_27EDA2858, &qword_243B73A08, sub_243B473E4);
    sub_243B7036C();
    sub_243B7072C();
    v11 = v45;
    swift_getKeyPath();
    v45 = v11;
    sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAFC();

    v12 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
    swift_beginAccess();
    v13 = v38;
    v14 = &v3[*(v38 + 36)];
    sub_243B2E06C(v11 + v12, v14, &qword_27EDA1E00, &unk_243B73660);

    sub_243B7073C();
    swift_getKeyPath();
    sub_243B7075C();

    (*(v34 + 8))(v8, v6);
    v15 = v42;
    v16 = v43;
    LOBYTE(v11) = v44;
    v17 = v14 + *(type metadata accessor for AlertViewModelAlert(0) + 20);
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = v11;
    sub_243B7072C();
    sub_243B253BC();

    sub_243B7055C();
    v18 = sub_243B474F8();
    v19 = v32;
    sub_243B703EC();

    sub_243B2E620(v3, &qword_27EDA2838, &qword_243B739A0);
    v20 = v33;
    v21 = v39;
    (*(v33 + 16))(v37, v19, v39);
    swift_storeEnumTagMultiPayload();
    sub_243B475E0();
    v42 = v13;
    v43 = v18;
    swift_getOpaqueTypeConformance2();
    sub_243B7014C();
    return (*(v20 + 8))(v19, v21);
  }

  else
  {
    sub_243B702DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28B8, &qword_243B73A88);
    sub_243B476D0();
    sub_243B6FCEC();
    sub_243B7072C();
    v23 = v45;
    swift_getKeyPath();
    v45 = v23;
    sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAFC();

    v24 = OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel__showingAlert;
    swift_beginAccess();
    v25 = &v10[*(v36 + 36)];
    sub_243B2E06C(v23 + v24, v25, &qword_27EDA1E00, &unk_243B73660);

    sub_243B7073C();
    swift_getKeyPath();
    sub_243B7075C();

    (*(v34 + 8))(v8, v6);
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v29 = v25 + *(type metadata accessor for AlertViewModelAlert(0) + 20);
    *v29 = v26;
    *(v29 + 8) = v27;
    *(v29 + 16) = v28;
    sub_243B2E06C(v10, v37, &qword_27EDA2850, &qword_243B739B8);
    swift_storeEnumTagMultiPayload();
    sub_243B475E0();
    v30 = sub_243B474F8();
    v42 = v38;
    v43 = v30;
    swift_getOpaqueTypeConformance2();
    sub_243B7014C();
    return sub_243B2E620(v10, &qword_27EDA2850, &qword_243B739B8);
  }
}

uint64_t sub_243B432A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for SharingOptionsGroupsView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = v6;
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28F0, &qword_243B73AA0) - 8;
  MEMORY[0x28223BE20](v48);
  v9 = &v39 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28E0, &qword_243B73A98) - 8;
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - v10;
  *v9 = sub_243B700FC();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  *&v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A00, &qword_243B73C60) + 44);
  v43 = *(v4 + 32);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v40 = a1;
  sub_243B7072C();
  v11 = v52;
  swift_getKeyPath();
  v52 = v11;
  v46 = sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v12 = *(v11 + 152);

  v52 = v12;
  v44 = v7;
  v45 = type metadata accessor for SharingOptionsGroupsView;
  sub_243B48A30(a1, v7, type metadata accessor for SharingOptionsGroupsView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_243B48A9C(v7, v14 + v13, type metadata accessor for SharingOptionsGroupsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A08, &qword_243B73C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A10, &qword_243B73C98);
  sub_243B2E680(&qword_27EDA2A18, &qword_27EDA2A08, &qword_243B73C90, MEMORY[0x277D83980]);
  v15 = sub_243B2E680(&qword_27EDA2A20, &qword_27EDA2A10, &qword_243B73C98, MEMORY[0x277CE14C0]);
  sub_243B48B1C(v15, v16, v17);
  sub_243B706FC();
  v18 = v40;
  sub_243B7072C();
  v19 = *(v52 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_layoutMargins + 16);
  v41 = *(v52 + OBJC_IVAR____TtC14CloudSharingUI29SharingOptionsObservableModel_layoutMargins);
  v39 = v19;

  v20 = sub_243B702FC();
  v21 = &v9[*(v48 + 44)];
  *v21 = v20;
  *(v21 + 24) = v39;
  *(v21 + 8) = v41;
  v21[40] = 0;
  sub_243B7072C();
  v22 = v52;
  swift_getKeyPath();
  v52 = v22;
  sub_243B6FAFC();

  swift_beginAccess();
  v23 = *(v22 + 72);
  v24 = *(v22 + 80);

  v25 = v24 == 0.0 && v23 == 0.0;
  v26 = v49;
  sub_243B304EC(v9, v49, &qword_27EDA28F0, &qword_243B73AA0);
  v27 = (v26 + *(v50 + 44));
  *v27 = v25;
  v27[1] = 0;
  v29 = v44;
  v28 = v45;
  sub_243B48A30(v18, v44, v45);
  v30 = swift_allocObject();
  sub_243B48A9C(v29, v30 + v13, v28);
  v31 = sub_243B7076C();
  v33 = v32;
  v34 = v51;
  sub_243B304EC(v26, v51, &qword_27EDA28E0, &qword_243B73A98);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28D0, &qword_243B73A90) + 36));
  *v35 = sub_243B52860;
  v35[1] = 0;
  v35[2] = v31;
  v35[3] = v33;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_243B48CE8;
  *(v36 + 24) = v30;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA28B8, &qword_243B73A88);
  v38 = (v34 + *(result + 36));
  *v38 = sub_243B48D98;
  v38[1] = v36;
  return result;
}

uint64_t sub_243B43850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v172 = a3;
  *&v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  *&v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = v143 - v5;
  v6 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  MEMORY[0x28223BE20](v6);
  v171 = v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v143 - v9;
  MEMORY[0x28223BE20](v11);
  v177 = v143 - v12;
  v158 = sub_243B6FD0C();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v154 = v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v153 = v143 - v15;
  v156 = sub_243B7077C();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v152 = v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v143 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A30, &qword_243B73CC8);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v151 = v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v150 = v143 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v143 - v26;
  MEMORY[0x28223BE20](v28);
  v149 = (v143 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A38, &qword_243B73CD0);
  MEMORY[0x28223BE20](v30 - 8);
  v169 = v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v170 = v143 - v33;
  MEMORY[0x28223BE20](v34);
  v168 = v143 - v35;
  MEMORY[0x28223BE20](v36);
  v41 = a1[1];
  v162 = *a1;
  v161 = v41;
  v42 = a1[3];
  v163 = a1[4];
  v43 = a1[6];
  v164 = a1[5];
  v173 = v43;
  v160 = *(a1 + 56);
  v159 = a2;
  v175 = v143 - v40;
  v176 = v20;
  v174 = v21;
  if (!v42)
  {
    goto LABEL_8;
  }

  v44 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v44 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v178 = a1[2];
    v179 = v42;
    sub_243B30AF8(v37, v38, v39);

    v45 = sub_243B703BC();
    v47 = v46;
    v148 = v6;
    v49 = v48;
    sub_243B7053C();
    v50 = sub_243B7038C();
    v147 = v19;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v143[1] = v56;

    sub_243B30B4C(v45, v47, v49 & 1);

    sub_243B7034C();
    v145 = sub_243B7037C();
    v58 = v57;
    v144 = v59;
    v146 = v60;
    sub_243B30B4C(v51, v53, v55 & 1);

    v61 = v153;
    sub_243B42848(v153);
    v62 = v157;
    v63 = v154;
    v64 = v158;
    (*(v157 + 104))(v154, *MEMORY[0x277CDF3C0], v158);
    v65 = sub_243B6FCFC();
    v66 = *(v62 + 8);
    v66(v63, v64);
    v66(v61, v64);
    v67 = v155;
    v68 = MEMORY[0x277CE13A8];
    if ((v65 & 1) == 0)
    {
      v68 = MEMORY[0x277CE13D8];
    }

    v69 = v147;
    v70 = v156;
    (*(v155 + 104))(v147, *v68, v156);
    v71 = v176;
    (*(v67 + 32))(&v27[*(v176 + 36)], v69, v70);
    *v27 = v145;
    *(v27 + 1) = v58;
    v6 = v148;
    v27[16] = v144 & 1;
    *(v27 + 3) = v146;
    v72 = v149;
    sub_243B304EC(v27, v149, &qword_27EDA2A30, &qword_243B73CC8);
    v73 = v72;
    v74 = v175;
    sub_243B304EC(v73, v175, &qword_27EDA2A30, &qword_243B73CC8);
    v75 = *(v174 + 56);
    v76 = v74;
    v77 = 0;
    v78 = v71;
  }

  else
  {
LABEL_8:
    v75 = *(v21 + 56);
    v76 = v143 - v40;
    v77 = 1;
    v78 = v20;
  }

  v149 = v75;
  (v75)(v76, v77, 1, v78);
  type metadata accessor for SharingOptionsGroupsView(0);
  type metadata accessor for UserInterface(0);
  sub_243B4738C(&qword_27EDA2498, type metadata accessor for UserInterface, &unk_243B73174);
  v79 = v161;

  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v80 = v178;
  v81 = v167;
  sub_243B7072C();
  v82 = v165;
  sub_243B7073C();
  swift_getKeyPath();
  sub_243B7075C();

  (*(v166 + 8))(v82, v81);
  v83 = v178;
  v84 = v179;
  v85 = v182;
  *v10 = v162;
  *(v10 + 1) = v79;
  v10[17] = v80;
  v10[16] = v160;
  v86 = v173;
  *(v10 + 3) = v173;
  type metadata accessor for SharingOptionsObservableModel(0);
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);

  v167 = v180;
  v166 = v181;
  sub_243B7074C();
  v87 = &v10[*(v6 + 36)];
  *v87 = v83;
  *(v87 + 1) = v84;
  v88 = v166;
  *(v87 + 1) = v167;
  *(v87 + 2) = v88;
  v87[48] = v85;
  v89 = *(v86 + 16);
  v90 = v86 - 24;
  v91 = v89 + 1;
  while (--v91)
  {
    v92 = (v90 + 56);
    v93 = *(v90 + 104);
    v90 += 56;
    if (!v93)
    {
      v94 = v92 + 1;
LABEL_15:
      v95 = v177;
      v96 = *v92;
      v97 = *v94;

      goto LABEL_16;
    }
  }

  if (v89)
  {
    v94 = (v173 + 40);
    v92 = (v86 + 32);
    goto LABEL_15;
  }

  v96 = 0;
  v97 = 0xE000000000000000;
  v95 = v177;
LABEL_16:

  v98 = &v10[*(v6 + 40)];
  *v98 = v96;
  *(v98 + 1) = v97;
  *(v98 + 2) = 0;
  v99 = sub_243B48A9C(v10, v95, type metadata accessor for SharingOptionsGroupsView.GroupView);
  if (!v164)
  {
    goto LABEL_23;
  }

  v102 = HIBYTE(v164) & 0xF;
  if ((v164 & 0x2000000000000000) == 0)
  {
    v102 = v163 & 0xFFFFFFFFFFFFLL;
  }

  if (v102)
  {
    v178 = v163;
    v179 = v164;
    sub_243B30AF8(v99, v100, v101);

    v103 = sub_243B703BC();
    v105 = v104;
    v107 = v106;
    sub_243B7053C();
    v108 = sub_243B7038C();
    v110 = v109;
    v112 = v111;

    sub_243B30B4C(v103, v105, v107 & 1);

    sub_243B7034C();
    v113 = sub_243B7037C();
    v115 = v114;
    v117 = v116;
    v119 = v118;
    sub_243B30B4C(v108, v110, v112 & 1);

    v120 = v153;
    sub_243B42848(v153);
    v121 = v157;
    v122 = v154;
    v123 = v158;
    (*(v157 + 104))(v154, *MEMORY[0x277CDF3C0], v158);
    LOBYTE(v105) = sub_243B6FCFC();
    v124 = *(v121 + 8);
    v124(v122, v123);
    v124(v120, v123);
    v125 = v177;
    v126 = v155;
    v127 = MEMORY[0x277CE13A8];
    if ((v105 & 1) == 0)
    {
      v127 = MEMORY[0x277CE13D8];
    }

    v128 = v152;
    v129 = v156;
    (*(v155 + 104))(v152, *v127, v156);
    v130 = v176;
    v131 = v151;
    (*(v126 + 32))(&v151[*(v176 + 36)], v128, v129);
    *v131 = v113;
    *(v131 + 8) = v115;
    v132 = v117 & 1;
    v95 = v125;
    *(v131 + 16) = v132;
    *(v131 + 24) = v119;
    v133 = v150;
    sub_243B304EC(v131, v150, &qword_27EDA2A30, &qword_243B73CC8);
    v134 = v168;
    sub_243B304EC(v133, v168, &qword_27EDA2A30, &qword_243B73CC8);
    (v149)(v134, 0, 1, v130);
  }

  else
  {
LABEL_23:
    v134 = v168;
    (*(v174 + 56))(v168, 1, 1, v176);
  }

  v135 = v175;
  v136 = v170;
  sub_243B2E06C(v175, v170, &qword_27EDA2A38, &qword_243B73CD0);
  v137 = v95;
  v138 = v171;
  sub_243B48A30(v137, v171, type metadata accessor for SharingOptionsGroupsView.GroupView);
  v139 = v169;
  sub_243B2E06C(v134, v169, &qword_27EDA2A38, &qword_243B73CD0);
  v140 = v172;
  sub_243B2E06C(v136, v172, &qword_27EDA2A38, &qword_243B73CD0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A40, &qword_243B73D00);
  sub_243B48A30(v138, v140 + *(v141 + 48), type metadata accessor for SharingOptionsGroupsView.GroupView);
  sub_243B2E06C(v139, v140 + *(v141 + 64), &qword_27EDA2A38, &qword_243B73CD0);
  sub_243B2E620(v134, &qword_27EDA2A38, &qword_243B73CD0);
  sub_243B48DC8(v177);
  sub_243B2E620(v135, &qword_27EDA2A38, &qword_243B73CD0);
  sub_243B2E620(v139, &qword_27EDA2A38, &qword_243B73CD0);
  sub_243B48DC8(v138);
  return sub_243B2E620(v136, &qword_27EDA2A38, &qword_243B73CD0);
}

void sub_243B44690(double a1, double a2)
{
  type metadata accessor for SharingOptionsGroupsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  swift_getKeyPath();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  swift_beginAccess();
  v5 = *(v10 + 72);
  v4 = *(v10 + 80);

  if (v5 == 0.0 && v4 == 0.0)
  {
    sub_243B7072C();
    v6 = v9;
    swift_beginAccess();
    if (*(v9 + 72) != a1 || *(v9 + 80) != a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    *(v6 + 72) = a1;
    *(v6 + 80) = a2;

    return;
  }

  sub_243B7072C();
  v6 = v9;
  sub_243B7072C();
  swift_getKeyPath();
  sub_243B6FAFC();

  swift_beginAccess();
  a1 = *(v9 + 72);

  swift_beginAccess();
  if (*(v9 + 72) == a1 && *(v9 + 80) == a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_243B6FAEC();
}

uint64_t sub_243B449A4(uint64_t a1)
{
  v2 = type metadata accessor for SharingOptionsGroupsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  swift_getKeyPath();
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
  sub_243B6FAFC();

  v5 = *(v13 + 152);

  v13 = v5;
  sub_243B48A30(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_243B48A9C(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SharingOptionsGroupsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A08, &qword_243B73C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2870, &unk_243B73A10);
  sub_243B2E680(&qword_27EDA2A18, &qword_27EDA2A08, &qword_243B73C90, MEMORY[0x277D83980]);
  v8 = sub_243B473E4();
  sub_243B48B1C(v8, v9, v10);
  return sub_243B706FC();
}

uint64_t sub_243B44C10(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1[1];
  *v9 = a1[2];
  *&v9[9] = *(a1 + 41);
  if (!*(&v8 + 1))
  {
    goto LABEL_6;
  }

  v3 = HIBYTE(*(&v8 + 1)) & 0xFLL;
  if ((*(&v8 + 1) & 0x2000000000000000) == 0)
  {
    v3 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_243B30AF8(a1, a2, a3);

    v4 = sub_243B703BC();
  }

  else
  {
LABEL_6:
    v4 = 0;
    v5 = 0;
  }

  if (*&v9[8])
  {
    v6 = HIBYTE(*&v9[8]) & 0xFLL;
    if ((*&v9[8] & 0x2000000000000000) == 0)
    {
      v6 = *v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      sub_243B30AF8(v4, v5, a3);

      sub_243B703BC();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2780, &qword_243B73798);
  type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  sub_243B3EA44();
  sub_243B4738C(&qword_27EDA2878, type metadata accessor for SharingOptionsGroupsView.GroupView, &unk_243B73B98);
  return sub_243B7070C();
}

void sub_243B44DCC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v27 = a2;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = *(a1 + 8);
  *&v29 = *a1;
  type metadata accessor for SharingOptionsGroupsView(0);
  type metadata accessor for UserInterface(0);
  sub_243B4738C(&qword_27EDA2498, type metadata accessor for UserInterface, &unk_243B73174);

  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v8 = v32;
  v9 = *(a1 + 56);
  v37 = *(a1 + 48);
  v10 = v37;
  sub_243B7072C();
  sub_243B7073C();
  swift_getKeyPath();
  sub_243B7075C();

  (*(v30 + 8))(v6, v4);
  v11 = v32;
  v12 = v33;
  LODWORD(v30) = v36;
  v13 = v28;
  *v28 = v29;
  v13[1] = v7;
  v14 = v13;
  *(v13 + 17) = v8;
  *(v13 + 16) = v9;
  v13[3] = v10;
  v15 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v29 = v34;
  v27 = v35;
  sub_243B2E06C(&v37, v31, &qword_27EDA1F60, &unk_243B724B0);
  type metadata accessor for SharingOptionsObservableModel(0);
  sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);

  sub_243B7074C();
  v16 = v14 + *(v15 + 36);
  *v16 = v11;
  *(v16 + 8) = v12;
  v17 = v27;
  *(v16 + 16) = v29;
  *(v16 + 32) = v17;
  *(v16 + 48) = v30;
  v18 = v10[2];
  v19 = v10 - 3;
  v20 = v18 + 1;
  while (--v20)
  {
    v21 = v19 + 7;
    v22 = *(v19 + 104);
    v19 += 7;
    if (!v22)
    {
      v23 = v21 + 1;
LABEL_7:
      v24 = *v21;
      v25 = *v23;

      goto LABEL_8;
    }
  }

  if (v18)
  {
    v23 = v10 + 5;
    v21 = v10 + 4;
    goto LABEL_7;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
LABEL_8:

  v26 = (v14 + *(v15 + 40));
  *v26 = v24;
  v26[1] = v25;
  v26[2] = 0;
}

double sub_243B45140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);
  if (v6 && (*(a3 + 16) == a1 ? (v7 = v6 == a2) : (v7 = 0), v7 || (sub_243B70C6C() & 1) != 0))
  {
    *(a3 + 16) = a1;
    *(a3 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_243B4738C(&qword_27EDA1DE8, type metadata accessor for SharingOptionsObservableModel, &protocol conformance descriptor for SharingOptionsObservableModel);
    sub_243B6FAEC();
  }

  return result;
}

double sub_243B452A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B7009C();
  v21 = 1;
  sub_243B453D4(a1, &v12);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = v17;
  v30[6] = v18;
  v30[7] = v19;
  sub_243B2E06C(&v22, &v11, &qword_27EDA2A68, &qword_243B73EC0);
  sub_243B2E620(v30, &qword_27EDA2A68, &qword_243B73EC0);
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[119] = v29;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  v5 = *&v20[64];
  *(a2 + 97) = *&v20[80];
  v6 = *&v20[112];
  *(a2 + 113) = *&v20[96];
  *(a2 + 129) = v6;
  v7 = *v20;
  *(a2 + 33) = *&v20[16];
  result = *&v20[32];
  v9 = *&v20[48];
  *(a2 + 49) = *&v20[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v10 = v21;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 144) = *&v20[127];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_243B453D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B700FC();
  LOBYTE(v22[0]) = 1;
  sub_243B455E0(a1, v5, v6, v29);
  *&v28[7] = v29[0];
  *&v28[23] = v29[1];
  *&v28[39] = v29[2];
  *&v28[55] = v29[3];
  if (*(a1 + 48))
  {
    v7 = sub_243B7056C();
    v8 = sub_243B704EC();
    KeyPath = swift_getKeyPath();
  }

  else
  {
    v7 = 0;
    KeyPath = 0;
    v8 = 0;
  }

  v14 = v4;
  v15[0] = 1;
  *&v15[1] = *v28;
  *&v15[49] = *&v28[48];
  *&v15[33] = *&v28[32];
  *&v15[17] = *&v28[16];
  *&v15[64] = *&v28[63];
  v16 = v4;
  v17 = *v15;
  v21 = *&v28[63];
  v19 = *&v15[32];
  v20 = *&v15[48];
  v18 = *&v15[16];
  sub_243B2E06C(&v14, v22, &qword_27EDA2A70, &qword_243B73EC8);
  sub_243B4922C(v7, KeyPath, v8);
  sub_243B4927C(v7, KeyPath, v8);
  v10 = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v10;
  *(a2 + 64) = v20;
  v11 = v21;
  v12 = v17;
  *a2 = v16;
  *(a2 + 16) = v12;
  *(a2 + 80) = v11;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v7;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = v8;
  sub_243B4927C(v7, KeyPath, v8);
  v22[0] = v4;
  v22[1] = 0;
  v23 = 1;
  v25 = *&v28[16];
  v26 = *&v28[32];
  *v27 = *&v28[48];
  *&v27[15] = *&v28[63];
  v24 = *v28;
  return sub_243B2E620(v22, &qword_27EDA2A70, &qword_243B73EC8);
}

uint64_t sub_243B455E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_243B30AF8(a1, a2, a3);

  v6 = sub_243B703BC();
  v8 = v7;
  v10 = v9;
  sub_243B7052C();
  v11 = sub_243B7038C();
  v13 = v12;
  v38 = v14;
  v39 = v15;

  sub_243B30B4C(v6, v8, v10 & 1);

  v16 = a1[5];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    v18 = sub_243B703BC();
    v20 = v19;
    v22 = v21;
    sub_243B7032C();
    v23 = sub_243B7039C();
    v37 = v11;
    v36 = v24;
    v26 = v25;

    sub_243B30B4C(v18, v20, v22 & 1);

    sub_243B7053C();
    v27 = sub_243B7038C();
    v29 = v28;
    LOBYTE(v20) = v30;
    v32 = v31;

    v33 = v26 & 1;
    v11 = v37;
    sub_243B30B4C(v23, v36, v33);

    v34 = v20 & 1;
    sub_243B2D5E0(v27, v29, v20 & 1);
  }

  else
  {
LABEL_6:
    v27 = 0;
    v29 = 0;
    v34 = 0;
    v32 = 0;
  }

  sub_243B2D5E0(v11, v13, v38 & 1);

  sub_243B492D0(v27, v29, v34, v32);
  sub_243B49314(v27, v29, v34, v32);
  *a4 = v11;
  *(a4 + 8) = v13;
  *(a4 + 16) = v38 & 1;
  *(a4 + 24) = v39;
  *(a4 + 32) = v27;
  *(a4 + 40) = v29;
  *(a4 + 48) = v34;
  *(a4 + 56) = v32;
  sub_243B49314(v27, v29, v34, v32);
  sub_243B30B4C(v11, v13, v38 & 1);
}

uint64_t sub_243B4586C()
{
  v1 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v1;
  v9 = *(v0 + 64);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = *(v0 + 48);
  *(v3 + 48) = *(v0 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v0 + 64);
  v5 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v5;
  sub_243B491F4(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A58, &qword_243B73EB8);
  sub_243B2E680(&qword_27EDA2A60, &qword_27EDA2A58, &qword_243B73EB8, MEMORY[0x277CE1138]);
  return sub_243B7060C();
}

uint64_t sub_243B45988@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A78, &qword_243B73F00);
  v2 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v4 = v10 - v3;
  v13 = v1[3];
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A80, &qword_243B73F08);
  sub_243B705DC();
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2A70, &qword_243B73EC8);
  sub_243B2E680(&qword_27EDA2A88, &qword_27EDA2A70, &qword_243B73EC8, MEMORY[0x277CE1198]);
  sub_243B7065C();
  v12 = v14;
  sub_243B705BC();
  v5 = swift_allocObject();
  v6 = v1[3];
  v5[3] = v1[2];
  v5[4] = v6;
  v5[5] = v1[4];
  v7 = v1[1];
  v5[1] = *v1;
  v5[2] = v7;
  sub_243B493EC(v1, &v12);
  sub_243B2E680(&qword_27EDA2A90, &qword_27EDA2A78, &qword_243B73F00, MEMORY[0x277CDF068]);
  v8 = v10[0];
  sub_243B704DC();

  return (*(v2 + 8))(v4, v8);
}

__n128 sub_243B45BFC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B700FC();
  sub_243B45C90(a1, v5, v6, v9);
  *&v8[55] = v9[3];
  *&v8[39] = v9[2];
  *&v8[23] = v9[1];
  *&v8[7] = v9[0];
  *(a2 + 33) = *&v8[16];
  result = *&v8[32];
  *(a2 + 49) = *&v8[32];
  *(a2 + 65) = *&v8[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v8[63];
  *(a2 + 17) = *v8;
  return result;
}

uint64_t sub_243B45C90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_243B30AF8(a1, a2, a3);

  v6 = sub_243B703BC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1[5];
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {

    v15 = sub_243B703BC();
    v17 = v16;
    v19 = v18;
    v21 = v20 & 1;
    sub_243B2D5E0(v15, v16, v20 & 1);
  }

  else
  {
LABEL_6:
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  v22 = v10 & 1;
  sub_243B2D5E0(v6, v8, v22);

  sub_243B492D0(v15, v17, v21, v19);
  sub_243B49314(v15, v17, v21, v19);
  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v22;
  *(a4 + 24) = v12;
  *(a4 + 32) = v15;
  *(a4 + 40) = v17;
  *(a4 + 48) = v21;
  *(a4 + 56) = v19;
  sub_243B49314(v15, v17, v21, v19);
  sub_243B30B4C(v6, v8, v22);
}

uint64_t sub_243B45E54@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2970, &qword_243B73BE8);
  v66 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v63 = (&v61 - v2);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2978, &qword_243B73BF0);
  MEMORY[0x28223BE20](v68);
  v72 = &v61 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2980, &qword_243B73BF8);
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v5 = &v61 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2988, &qword_243B73C00);
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v61 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2990, &qword_243B73C08);
  MEMORY[0x28223BE20](v74);
  v71 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2998, &qword_243B73C10);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  v11 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA29A0, &qword_243B73C18) - 8);
  MEMORY[0x28223BE20](v1);
  v18 = &v61 - v17;
  LODWORD(v17) = *(v1 + 16);
  v75 = v19;
  if (v17 == 1)
  {
    *&v79 = *(v16 + 24);
    sub_243B48A30(v16, &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
    v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v21 = swift_allocObject();
    sub_243B48A9C(v14, v21 + v20, type metadata accessor for SharingOptionsGroupsView.GroupView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F60, &unk_243B724B0);
    v22 = sub_243B2E680(&qword_27EDA29A8, &qword_27EDA1F60, &unk_243B724B0, MEMORY[0x277D83980]);
    v25 = sub_243B48440(v22, v23, v24);
    sub_243B48300(v25, v26, v27);
    sub_243B706FC();
    v28 = v75;
    (*(v15 + 16))(v10, v18, v75);
    swift_storeEnumTagMultiPayload();
    sub_243B483C4(&qword_27EDA29D0, &qword_27EDA29A0, &qword_243B73C18, sub_243B48440);
    sub_243B48494();
    sub_243B7014C();
    return (*(v15 + 8))(v18, v28);
  }

  else
  {
    v61 = v8;
    v62 = v10;
    if (*(v16 + 17))
    {
      *&v79 = *(v16 + 24);
      sub_243B48A30(v16, &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
      v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v31 = swift_allocObject();
      sub_243B48A9C(v14, v31 + v30, type metadata accessor for SharingOptionsGroupsView.GroupView);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F60, &unk_243B724B0);
      v32 = sub_243B2E680(&qword_27EDA29A8, &qword_27EDA1F60, &unk_243B724B0, MEMORY[0x277D83980]);
      v35 = sub_243B482AC(v32, v33, v34);
      sub_243B48300(v35, v36, v37);
      v38 = MEMORY[0x277D837D0];
      v39 = v63;
      sub_243B706FC();
      v40 = v66;
      v41 = v73;
      (*(v66 + 16))(v72, v39, v73);
      swift_storeEnumTagMultiPayload();
      v42 = sub_243B2E680(&qword_27EDA29C0, &qword_27EDA2980, &qword_243B73BF8, MEMORY[0x277CDF038]);
      *&v79 = v69;
      *(&v79 + 1) = v38;
      v80 = v42;
      v81 = MEMORY[0x277D837F8];
      swift_getOpaqueTypeConformance2();
      sub_243B483C4(&qword_27EDA29C8, &qword_27EDA2970, &qword_243B73BE8, sub_243B482AC);
      v43 = v71;
      sub_243B7014C();
      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v44 = (v16 + *(v11 + 40));
      v46 = *v44;
      v45 = v44[1];
      v66 = v44[2];
      *&v77 = v46;
      *(&v77 + 1) = v45;
      v78 = v66;
      v47 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23D8, &qword_243B72E08);
      v48 = sub_243B705DC();
      v63 = &v61;
      *&v49 = MEMORY[0x28223BE20](v48);
      v79 = v49;
      v80 = v50;
      v81 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA29E8, &unk_243B73C20);
      sub_243B48640();
      sub_243B7063C();
      *&v79 = v46;
      *(&v79 + 1) = v45;
      v80 = v66;
      sub_243B705BC();
      v79 = v77;
      sub_243B48A30(v47, &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
      v52 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v53 = swift_allocObject();
      sub_243B48A9C(v14, v53 + v52, type metadata accessor for SharingOptionsGroupsView.GroupView);
      v54 = sub_243B2E680(&qword_27EDA29C0, &qword_27EDA2980, &qword_243B73BF8, MEMORY[0x277CDF038]);
      v55 = MEMORY[0x277D837F8];
      v56 = v65;
      v57 = v69;
      v58 = MEMORY[0x277D837D0];
      sub_243B704DC();

      (*(v64 + 8))(v5, v57);
      v59 = v67;
      v60 = v70;
      (*(v67 + 16))(v72, v56, v70);
      swift_storeEnumTagMultiPayload();
      *&v79 = v57;
      *(&v79 + 1) = v58;
      v80 = v54;
      v81 = v55;
      swift_getOpaqueTypeConformance2();
      sub_243B483C4(&qword_27EDA29C8, &qword_27EDA2970, &qword_243B73BE8, sub_243B482AC);
      v43 = v71;
      sub_243B7014C();
      (*(v59 + 8))(v56, v60);
    }

    sub_243B48354(v43, v62);
    swift_storeEnumTagMultiPayload();
    sub_243B483C4(&qword_27EDA29D0, &qword_27EDA29A0, &qword_243B73C18, sub_243B48440);
    sub_243B48494();
    sub_243B7014C();
    return sub_243B485D0(v43);
  }
}

void *sub_243B4698C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v21 = a1[2];
  v22 = v9;
  v12 = a1[5];
  v20 = a1[4];
  v13 = *(a1 + 48) == 0;
  sub_243B48A30(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_243B48A9C(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SharingOptionsGroupsView.GroupView);
  v23 = v13;

  result = sub_243B705AC();
  v17 = v24;
  v18 = v25;
  v19 = v21;
  *a3 = v22;
  *(a3 + 8) = v10;
  *(a3 + 16) = v19;
  *(a3 + 24) = v11;
  *(a3 + 32) = v20;
  *(a3 + 40) = v12;
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  *(a3 + 64) = sub_243B48954;
  *(a3 + 72) = v15;
  return result;
}

void sub_243B46B2C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v4 = (a4 + *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) + 36));
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];

  sub_243B22C04(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
  sub_243B7069C();

  sub_243B2B0B0(v5, v6, v7, v8);
}

uint64_t sub_243B46C50(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F60, &unk_243B724B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA29F8, &qword_243B73C30);
  sub_243B2E680(&qword_27EDA29A8, &qword_27EDA1F60, &unk_243B724B0, MEMORY[0x277D83980]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_243B48300(OpaqueTypeConformance2, v2, v3);
  return sub_243B706FC();
}

uint64_t sub_243B46D84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  sub_243B30AF8(a1, a2, a3);

  result = sub_243B703BC();
  *a4 = result;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9 & 1;
  *(a4 + 24) = v10;
  *(a4 + 32) = v6;
  *(a4 + 40) = v5;
  *(a4 + 48) = 1;
  return result;
}

void sub_243B46E10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  v5 = a3 + *(v4 + 40);
  v6 = *v5;
  v7 = *(v5 + 2);
  v12 = v6;
  *&v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA23D8, &qword_243B72E08);
  sub_243B705DC();
  v8 = *a3;
  v9 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
  sub_243B706AC();
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  sub_243B25684(v16, *(&v16 + 1), v17, *(&v17 + 1), 1, v8, v9, &v12);

  v10 = v13;
  v11 = v14;

  sub_243B2B0B0(v10, *(&v10 + 1), v11, *(&v11 + 1));
}

uint64_t sub_243B46FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v20 = a1[2];
  v21 = v9;
  v12 = a1[5];
  v19 = a1[4];
  v13 = *(a1 + 48) == 0;
  sub_243B48A30(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharingOptionsGroupsView.GroupView);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_243B48A9C(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SharingOptionsGroupsView.GroupView);
  v16 = v20;
  *a3 = v21;
  *(a3 + 8) = v10;
  *(a3 + 16) = v16;
  *(a3 + 24) = v11;
  *(a3 + 32) = v19;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
  *(a3 + 56) = sub_243B4896C;
  *(a3 + 64) = v15;
}

void sub_243B47124(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  sub_243B7072C();
  v8 = *a4;
  v9 = a4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F00, &qword_243B723D8);
  sub_243B706AC();
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  sub_243B26218(a1, a2, a3, v8, v9, &v12);

  v10 = v13;
  v11 = v14;

  sub_243B2B0B0(v10, *(&v10 + 1), v11, *(&v11 + 1));
}

void sub_243B47270(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v3;
}

uint64_t sub_243B472F0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B4738C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243B473E4()
{
  result = qword_27EDA2868;
  if (!qword_27EDA2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2870, &unk_243B73A10);
    sub_243B3EA44();
    sub_243B4738C(&qword_27EDA2878, type metadata accessor for SharingOptionsGroupsView.GroupView, &unk_243B73B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2868);
  }

  return result;
}

unint64_t sub_243B474F8()
{
  result = qword_27EDA2880;
  if (!qword_27EDA2880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2838, &qword_243B739A0);
    sub_243B2E680(&qword_27EDA2888, &qword_27EDA2890, &qword_243B73A78, MEMORY[0x277CDE5A0]);
    sub_243B4738C(&qword_27EDA2898, type metadata accessor for AlertViewModelAlert, &unk_243B73730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2880);
  }

  return result;
}

unint64_t sub_243B475E0()
{
  result = qword_27EDA28A0;
  if (!qword_27EDA28A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2850, &qword_243B739B8);
    sub_243B2E680(&qword_27EDA28A8, &qword_27EDA28B0, &qword_243B73A80, MEMORY[0x277CDD6E0]);
    sub_243B4738C(&qword_27EDA2898, type metadata accessor for AlertViewModelAlert, &unk_243B73730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28A0);
  }

  return result;
}

unint64_t sub_243B476D0()
{
  result = qword_27EDA28C0;
  if (!qword_27EDA28C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA28B8, &qword_243B73A88);
    sub_243B47788();
    sub_243B2E680(&qword_27EDA2918, &qword_27EDA2920, &qword_243B73AB8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28C0);
  }

  return result;
}

unint64_t sub_243B47788()
{
  result = qword_27EDA28C8;
  if (!qword_27EDA28C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA28D0, &qword_243B73A90);
    sub_243B47840();
    sub_243B2E680(&qword_27EDA2908, &qword_27EDA2910, &qword_243B73AB0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28C8);
  }

  return result;
}

unint64_t sub_243B47840()
{
  result = qword_27EDA28D8;
  if (!qword_27EDA28D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA28E0, &qword_243B73A98);
    sub_243B478CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28D8);
  }

  return result;
}

unint64_t sub_243B478CC()
{
  result = qword_27EDA28E8;
  if (!qword_27EDA28E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA28F0, &qword_243B73AA0);
    sub_243B2E680(&qword_27EDA28F8, &qword_27EDA2900, &qword_243B73AA8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA28E8);
  }

  return result;
}

uint64_t sub_243B479B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2470, "~d");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_243B47B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2470, "~d");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_243B47C3C(uint64_t a1)
{
  sub_243B47D38(319, &qword_27EDA2488, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_243B38C54(319);
    if (v2 <= 0x3F)
    {
      sub_243B47D38(319, &qword_27EDA2938, type metadata accessor for SharingOptionsObservableModel, MEMORY[0x277CE12F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243B47D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_243B47DA0()
{
  result = qword_27EDA2940;
  if (!qword_27EDA2940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2948, &qword_243B73B40);
    sub_243B475E0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2838, &qword_243B739A0);
    sub_243B474F8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2940);
  }

  return result;
}

uint64_t sub_243B47E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243B47F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243B48004(uint64_t a1)
{
  sub_243B481BC(319, &qword_27EDA2960, &type metadata for SharingOptionsObservableModel.Group.Option, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_243B47D38(319, &qword_27EDA2938, type metadata accessor for SharingOptionsObservableModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      sub_243B48158(319);
      if (v3 <= 0x3F)
      {
        sub_243B481BC(319, &qword_27EDA2278, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243B48158(uint64_t a1)
{
  if (!qword_27EDA2968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA1DF0, &qword_243B71F40);
    v1 = sub_243B706BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2968);
    }
  }
}

void sub_243B481BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_243B4822C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243B46FA8(a1, v6, a2);
}

unint64_t sub_243B482AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA29B0;
  if (!qword_27EDA29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29B0);
  }

  return result;
}

unint64_t sub_243B48300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA29B8;
  if (!qword_27EDA29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29B8);
  }

  return result;
}

uint64_t sub_243B48354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2990, &qword_243B73C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B483C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_243B48440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA29D8;
  if (!qword_27EDA29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29D8);
  }

  return result;
}

unint64_t sub_243B48494()
{
  result = qword_27EDA29E0;
  if (!qword_27EDA29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2990, &qword_243B73C08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2980, &qword_243B73BF8);
    sub_243B2E680(&qword_27EDA29C0, &qword_27EDA2980, &qword_243B73BF8, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    sub_243B483C4(&qword_27EDA29C8, &qword_27EDA2970, &qword_243B73BE8, sub_243B482AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29E0);
  }

  return result;
}

uint64_t sub_243B485D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2990, &qword_243B73C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243B48640()
{
  result = qword_27EDA29F0;
  if (!qword_27EDA29F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA29E8, &unk_243B73C20);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA29F0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v0 + v3 + *(v1 + 36);

  if (*(v7 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_243B48854(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_243B46E10(a1, a2, v6);
}

void *sub_243B488D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243B4698C(a1, v6, a2);
}

uint64_t sub_243B48984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(type metadata accessor for SharingOptionsGroupsView.GroupView(0) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9);
}

uint64_t sub_243B48A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B48A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_243B48B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA2A28;
  if (!qword_27EDA2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2A28);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for SharingOptionsGroupsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2430, &unk_243B73030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243B6FD0C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_243B38EE0(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v7 = *(v1 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2448, &qword_243B73960);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_243B48CE8(double a1, double a2)
{
  type metadata accessor for SharingOptionsGroupsView(0);

  sub_243B44690(a1, a2);
}

uint64_t sub_243B48D60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B48DC8(uint64_t a1)
{
  v2 = type metadata accessor for SharingOptionsGroupsView.GroupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B48E3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SharingOptionsGroupsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_243B48EFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_243B48F44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_243B48FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_243B49008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243B49070()
{
  result = qword_27EDA2A48;
  if (!qword_27EDA2A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2A50, qword_243B73DA0);
    sub_243B483C4(&qword_27EDA29D0, &qword_27EDA29A0, &qword_243B73C18, sub_243B48440);
    sub_243B48494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2A48);
  }

  return result;
}

uint64_t sub_243B49160()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_243B4922C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

double sub_243B4927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_243B492D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243B2D5E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_243B49314(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243B30B4C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_243B49360()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_243B49468()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2A78, &qword_243B73F00);
  sub_243B2E680(&qword_27EDA2A90, &qword_27EDA2A78, &qword_243B73F00, MEMORY[0x277CDF068]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243B49574(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = type metadata accessor for AddressingViewModel(0);
  v6 = sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel, &protocol conformance descriptor for AddressingViewModel);

  return a1(v2, v3, v4, v5, v6);
}

uint64_t AddressingView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243B384D0;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t AddressingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AddressingViewModel(0);
  sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel, &protocol conformance descriptor for AddressingViewModel);
  sub_243B6FD3C();
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for AddressingView_iOS(0) + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CGSize(0);
  sub_243B705AC();
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = sub_243B498AC;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = sub_243B6FE1C();
  *(a1 + 48) = result;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_243B49770@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AddressingViewModel(0);
  sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel, &protocol conformance descriptor for AddressingViewModel);
  sub_243B6FD3C();
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for AddressingView_iOS(0) + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CGSize(0);
  sub_243B705AC();
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = sub_243B498AC;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = sub_243B6FE1C();
  *(a1 + 48) = result;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_243B498AC()
{
  type metadata accessor for KeyboardObserver(0);
  v0 = swift_allocObject();
  sub_243B6FBFC();
  return v0;
}

uint64_t sub_243B4990C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B7007C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AddressingView_iOS(0);
  sub_243B2E06C(v1 + *(v10 + 28), v9, &qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_243B4E074(v9, a1);
  }

  sub_243B709DC();
  v12 = sub_243B702CC();
  sub_243B6FB4C();

  sub_243B7006C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_243B49AE4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for AddressingView_iOS(0);
  v48 = *(v2 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA27B0, &qword_243B740D0);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2AE8, &qword_243B740D8);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - v9;
  v10 = sub_243B7008C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2AF0, &qword_243B740E0);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2AF8, &qword_243B740E8);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  MEMORY[0x28223BE20](v18);
  v39 = &v38 - v20;
  v38 = v1;
  v54 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B00, &qword_243B740F0);
  sub_243B4D694(&qword_27EDA2B08, &qword_27EDA2B00, &qword_243B740F0, sub_243B4D664);
  sub_243B6FE9C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  (*(v11 + 104))(v13, *MEMORY[0x277CDDDC0], v10);
  v21 = sub_243B2E680(&qword_27EDA2B90, &qword_27EDA2AF0, &qword_243B740E0, MEMORY[0x277CDDA18]);
  v24 = sub_243B30AF8(v21, v22, v23);
  v25 = v40;
  sub_243B7047C();
  (*(v11 + 8))(v13, v10);

  (*(v41 + 8))(v17, v25);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v26 = v45;
  sub_243B4DB3C(v38, v45);
  v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v28 = swift_allocObject();
  sub_243B4DBA4(v26, v28 + v27);
  v29 = v46;
  v30 = MEMORY[0x277D837D0];
  sub_243B7062C();
  v31 = sub_243B2E680(&qword_27EDA27A8, &qword_27EDA27B0, &qword_243B740D0, MEMORY[0x277CDF028]);
  v32 = v44;
  v33 = v49;
  sub_243B704AC();
  (*(v50 + 8))(v29, v33);
  v55 = v25;
  v56 = v30;
  v57 = v21;
  v58 = v24;
  swift_getOpaqueTypeConformance2();
  v55 = v33;
  v56 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  v35 = v51;
  v36 = v39;
  sub_243B7046C();
  (*(v52 + 8))(v32, v35);
  return (*(v43 + 8))(v36, v34);
}

uint64_t sub_243B4A1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B7008C();
  v75 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AddressingView_iOS(0);
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = v7;
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B68, &qword_243B74128);
  MEMORY[0x28223BE20](v61);
  v10 = &v59 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B38, &qword_243B74110);
  MEMORY[0x28223BE20](v64);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B30, &qword_243B74108);
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x28223BE20](v13);
  v65 = &v59 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B98, &qword_243B74210);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v59 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B28, &qword_243B74100);
  MEMORY[0x28223BE20](v68);
  v72 = &v59 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B18, &qword_243B740F8);
  MEMORY[0x28223BE20](v70);
  v76 = &v59 - v17;
  type metadata accessor for AddressingViewModel(0);
  sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel, &protocol conformance descriptor for AddressingViewModel);

  v18 = sub_243B6FE1C();
  v77 = 0x4034000000000000;
  v78 = v18;
  v79 = v19;
  v20 = *MEMORY[0x277CDF988];
  v21 = sub_243B6FE7C();
  (*(*(v21 - 8) + 104))(v10, v20, v21);
  sub_243B4E52C(&qword_27EDA2BA0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_243B707FC();
  if (result)
  {
    v59 = v4;
    v60 = a2;
    sub_243B4DAD8(result, v23, v24);
    sub_243B2E680(&qword_27EDA2B78, &qword_27EDA2B68, &qword_243B74128, MEMORY[0x277D84470]);
    sub_243B7043C();
    sub_243B2E620(v10, &qword_27EDA2B68, &qword_243B74128);

    v61 = a1;
    sub_243B4DB3C(a1, v8);
    v25 = v8;
    v26 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v62 = v26 + v63;
    v27 = swift_allocObject();
    v63 = v25;
    sub_243B4DBA4(v25, v27 + v26);
    v28 = sub_243B7076C();
    v30 = v29;
    v31 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B60, &qword_243B74120) + 36)];
    *v31 = sub_243B52860;
    v31[1] = 0;
    v31[2] = v28;
    v31[3] = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_243B4DC28;
    *(v32 + 24) = v27;
    v33 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B50, &qword_243B74118) + 36)];
    *v33 = sub_243B4DCD8;
    v33[1] = v32;
    v34 = sub_243B6FEAC();
    v35 = sub_243B702FC();
    v36 = v64;
    v37 = &v12[*(v64 + 36)];
    *v37 = v34;
    v37[8] = v35;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243B6FC3C();

    sub_243B700CC();
    v38 = sub_243B4D850();
    v39 = v65;
    sub_243B7044C();

    sub_243B4DD0C(v12);
    v40 = v36;
    v42 = v74;
    v41 = v75;
    v43 = v59;
    (*(v75 + 104))(v74, *MEMORY[0x277CDDDC0], v59);
    v77 = v40;
    v78 = v38;
    swift_getOpaqueTypeConformance2();
    v44 = v69;
    v45 = v67;
    sub_243B7049C();
    (*(v41 + 8))(v42, v43);
    (*(v66 + 8))(v39, v45);
    v46 = v61;
    type metadata accessor for KeyboardObserver(0);
    sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver, &unk_243B729D4);
    sub_243B6FD3C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243B6FC3C();

    v47 = v77;
    v48 = v63;
    sub_243B4DB3C(v46, v63);
    v49 = swift_allocObject();
    sub_243B4DBA4(v48, v49 + v26);
    v50 = v72;
    (*(v71 + 32))(v72, v44, v73);
    v51 = &v50[*(v68 + 36)];
    *v51 = v47;
    v51[1] = sub_243B4DD7C;
    v51[2] = v49;
    sub_243B4DB3C(v46, v48);
    v52 = swift_allocObject();
    sub_243B4DBA4(v48, v52 + v26);
    v53 = v50;
    v54 = v76;
    sub_243B304EC(v53, v76, &qword_27EDA2B28, &qword_243B74100);
    v55 = (v54 + *(v70 + 36));
    *v55 = sub_243B4DDEC;
    v55[1] = v52;
    v55[2] = 0;
    v55[3] = 0;
    sub_243B4DB3C(v46, v48);
    v56 = swift_allocObject();
    sub_243B4DBA4(v48, v56 + v26);
    v57 = v60;
    sub_243B304EC(v54, v60, &qword_27EDA2B18, &qword_243B740F8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B00, &qword_243B740F0);
    v58 = (v57 + *(result + 36));
    *v58 = 0;
    v58[1] = 0;
    v58[2] = sub_243B4DF8C;
    v58[3] = v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_243B4AB90(__int128 *a1, double a2, double a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BA8, &qword_243B742B0);
  sub_243B705CC();
  type metadata accessor for KeyboardObserver(0);
  sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver, &unk_243B729D4);
  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  sub_243B4ACD4(a2, a3, *&v5);
}

void sub_243B4ACD4(double a1, double a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_243B701DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (!v16)
  {
    sub_243B4990C(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_243B2E620(v7, &qword_27EDA2270, "LT");
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        if (a3 + 80.0 <= a2)
        {
          v19 = 0;
        }

        else
        {
          (*(v9 + 104))(v11, *MEMORY[0x277CE0558], v8, a3 + 80.0);
          v19 = sub_243B701CC();
          (*(v9 + 8))(v11, v8);
        }

        v20 = [v18 footerView];
        [v20 setHidden_];
      }

      (*(v9 + 8))(v14, v8);
    }
  }
}

void sub_243B4AF84(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BA8, &qword_243B742B0);
  sub_243B705BC();
  type metadata accessor for KeyboardObserver(0);
  sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver, &unk_243B729D4);
  sub_243B6FD3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  sub_243B4ACD4(v2, v3, *&v4);
}

void sub_243B4B0BC(uint64_t a1)
{
  v2 = sub_243B7078C();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_243B707AC();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (!v9)
  {
    type metadata accessor for KeyboardObserver(0);
    sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver, &unk_243B729D4);
    v10 = sub_243B6FD3C();
    v11 = objc_opt_self();
    v12 = [v11 defaultCenter];
    [v12 addObserver:v10 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v13 = [v11 defaultCenter];
    [v13 addObserver:v10 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  v14 = *(a1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  if ((aBlock[0] & 1) == 0)
  {
    sub_243B2E534(0, &qword_27EDA1F30, 0x277D85C78);
    v15 = sub_243B70A0C();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = 1;
    aBlock[4] = sub_243B4E050;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B2804C;
    aBlock[3] = &block_descriptor_2;
    v17 = _Block_copy(aBlock);

    sub_243B7079C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_243B4E52C(&qword_27EDA1F38, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1F40, &qword_243B724A8);
    sub_243B2E680(&qword_27EDA1F48, &qword_27EDA1F40, &qword_243B724A8, MEMORY[0x277D83970]);
    sub_243B70B2C();
    MEMORY[0x245D49A60](0, v7, v4, v17);
    _Block_release(v17);

    (*(v19 + 8))(v4, v2);
    (*(v5 + 8))(v7, v18);
  }
}

uint64_t sub_243B4B548(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

void sub_243B4B5BC(uint64_t a1)
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    type metadata accessor for KeyboardObserver(0);
    sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver, &unk_243B729D4);
    v3 = sub_243B6FD3C();
    v4 = objc_opt_self();
    v5 = [v4 defaultCenter];
    [v5 removeObserver:v3 name:*MEMORY[0x277D76C60] object:0];

    v6 = [v4 defaultCenter];
    [v6 removeObserver:v3 name:*MEMORY[0x277D76C50] object:0];
  }
}

uint64_t sub_243B4B748(uint64_t result)
{
  v1 = *(result + 56) + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v2();
    sub_243B2BFCC(v2, v3);
  }

  return result;
}

id sub_243B4B814(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v78 = a2;
  v79 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BD8, &qword_243B744F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v71 - v7;
  v73 = sub_243B70A5C();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B70AAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243B70ACC();
  v76 = *(v16 - 8);
  v77 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = &v71 - v20;
  v21 = [objc_allocWithZone(MEMORY[0x277CFBC88]) initWithSearchType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BE0, &qword_243B74500);
  v74 = a1;
  sub_243B702BC();
  v22 = v80;
  [v21 setDelegate_];

  result = [v21 view];
  if (result)
  {
    v24 = result;
    [result setClipsToBounds_];

    type metadata accessor for InsetLabel();
    v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v26 = objc_opt_self();
    v71 = v26;
    v27 = v25;
    v28 = [v26 secondaryLabelColor];
    [v27 setTextColor_];

    v29 = [objc_opt_self() preferredFontForTextStyle_];
    [v27 setFont_];

    [v27 setAdjustsFontForContentSizeCategory_];
    v30 = *MEMORY[0x277D767F8];
    v31 = v27;
    [v31 setMaximumContentSizeCategory_];
    [v31 setNumberOfLines_];

    v32 = v21;
    v72 = v32;
    CSSetCNAutocompleteSearchControllerHeaderView(v32, v31);

    v33 = v75;
    sub_243B70A7C();
    (*(v13 + 104))(v15, *MEMORY[0x277D75020], v12);
    sub_243B70A4C();
    (*(v9 + 104))(v11, *MEMORY[0x277D74FD0], v73);
    sub_243B70A6C();
    sub_243B6FBCC();
    v34 = sub_243B6FBBC();
    (*(*(v34 - 8) + 56))(v8, 0, 1, v34);
    sub_243B70A9C();
    sub_243B2E534(0, &qword_27EDA2BE8, 0x277D75220);
    (*(v76 + 16))(v18, v33, v77);
    sub_243B2E534(0, &qword_27EDA2BF0, 0x277D750C8);
    v35 = swift_allocObject();
    *(v35 + 16) = a4;
    *(v35 + 24) = v78;
    *(v35 + 32) = v79;

    sub_243B70A3C();
    v36 = sub_243B70ADC();
    [v36 setTranslatesAutoresizingMaskIntoConstraints_];
    v37 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v37 setTranslatesAutoresizingMaskIntoConstraints_];
    v38 = [v71 systemBackgroundColor];
    [v37 setBackgroundColor_];

    [v37 setClipsToBounds_];
    v39 = [v37 layer];
    [v39 setCornerRadius_];

    v40 = [v37 layer];
    [v40 setCornerCurve_];

    v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v41 addSubview_];
    [v41 addSubview_];
    [v32 setFooterView_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2F20, &qword_243B74508);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_243B73F20;
    v43 = [v36 topAnchor];
    v44 = [v41 &selRef_searchController_didAddRecipient_];
    v45 = [v43 constraintEqualToAnchor:v44 constant:a4];

    *(v42 + 32) = v45;
    v46 = [v36 leadingAnchor];
    v47 = [v41 &selRef_userInfo + 1];
    v48 = [v46 constraintEqualToAnchor:v47 constant:a4];

    *(v42 + 40) = v48;
    v49 = [v36 bottomAnchor];
    v50 = [v41 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-a4];

    *(v42 + 48) = v51;
    v52 = [v36 trailingAnchor];

    v53 = [v41 trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-a4];

    *(v42 + 56) = v54;
    v55 = [v37 topAnchor];
    v56 = [v41 topAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:a4];

    *(v42 + 64) = v57;
    v58 = [v37 leadingAnchor];
    v59 = [v41 leadingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:a4];

    *(v42 + 72) = v60;
    v61 = [v37 bottomAnchor];
    v62 = [v41 bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:-a4];

    *(v42 + 80) = v63;
    v64 = [v37 trailingAnchor];
    v65 = [v41 trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:-a4];

    *(v42 + 88) = v66;
    v67 = objc_opt_self();
    sub_243B2E534(0, &qword_27EDA2BF8, 0x277CCAAD0);
    v68 = sub_243B7088C();

    [v67 activateConstraints_];

    (*(v76 + 8))(v75, v77);
    v69 = v79;
    v70 = v72;
    swift_unknownObjectWeakAssign();

    sub_243B4C474(v70, a4, v74, v78, v69);
    return v70;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243B4C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243B6FA0C();
  v5 = (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_243B4E614(v5, v6, v7);
  sub_243B6FA1C();
  if (v9)
  {
    sub_243B7033C();
  }

  return sub_243B6FA2C();
}

double sub_243B4C39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  if (v3)
  {
    v4 = *(a3 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick + 8);
    *(a3 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 1;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_243B6FC3C();

    v3();

    return sub_243B2BFCC(v3, v4);
  }

  return result;
}

void sub_243B4C474(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2BB8, &qword_243B743C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = CSCNAutocompleteSearchControllerHeaderView(a1);
  if (!v23)
  {
    return;
  }

  v64 = v23;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v61 = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = a1;
    sub_243B6FC3C();

    v26 = v67;
    v27 = v68;
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = a5;
    sub_243B6FC3C();

    sub_243B4E360(v26, v27, v67, v68);

    v28 = sub_243B7080C();

    [v25 setText_];

    [v25 sizeToFit];
    v29 = [v63 footerView];
    if (!v29)
    {

      return;
    }

    v30 = v29;
    sub_243B4CC94();
    v32 = v31;

    if (v32 >> 62)
    {
      if (sub_243B70C0C())
      {
LABEL_6:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x245D49BC0](0, v32);
        }

        else
        {
          if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_38;
          }

          v33 = *(v32 + 32);
        }

        v34 = v33;

        swift_getKeyPath();
        swift_getKeyPath();
        sub_243B6FC3C();

        v36 = v67;
        v35 = v68;

        v37 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v37 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          sub_243B70AEC();
          v38 = sub_243B70ACC();
          v39 = *(*(v38 - 8) + 48);
          if (v39(v13, 1, v38))
          {
            sub_243B2E06C(v13, v61, &qword_27EDA2BB8, &qword_243B743C8);
            sub_243B70AFC();
            sub_243B2E620(v13, &qword_27EDA2BB8, &qword_243B743C8);
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_243B6FC3C();

            sub_243B70ABC();
            sub_243B70AFC();
          }

          sub_243B70AEC();
          if (v39(v10, 1, v38))
          {
            sub_243B2E06C(v10, v61, &qword_27EDA2BB8, &qword_243B743C8);
            sub_243B70AFC();
            v43 = v10;
LABEL_27:
            sub_243B2E620(v43, &qword_27EDA2BB8, &qword_243B743C8);
            goto LABEL_29;
          }
        }

        else
        {
          sub_243B70AEC();
          v41 = sub_243B70ACC();
          v42 = *(*(v41 - 8) + 48);
          if (v42(v22, 1, v41))
          {
            sub_243B2E06C(v22, v61, &qword_27EDA2BB8, &qword_243B743C8);
            sub_243B70AFC();
            sub_243B2E620(v22, &qword_27EDA2BB8, &qword_243B743C8);
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_243B6FC3C();

            sub_243B70ABC();
            sub_243B70AFC();
          }

          sub_243B70AEC();
          if (v42(v19, 1, v41))
          {
            sub_243B2E06C(v19, v61, &qword_27EDA2BB8, &qword_243B743C8);
            sub_243B70AFC();
            v43 = v19;
            goto LABEL_27;
          }
        }

        sub_243B70A8C();
        sub_243B70AFC();
LABEL_29:
        v44 = v63;
        v45 = v34;
        [v45 setEnabled_];

        v46 = [v44 view];
        if (v46)
        {
          v47 = v46;
          [v46 frame];
          v49 = v48;
          v51 = v50;

          type metadata accessor for UILayoutPriority(0);
          v66 = 1144750080;
          v65 = 1065353216;
          sub_243B4E52C(&qword_27EDA2BC0, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
          sub_243B6FBAC();
          LODWORD(v52) = v67;
          LODWORD(v53) = 1148846080;
          [v45 systemLayoutSizeFittingSize:v49 withHorizontalFittingPriority:v51 verticalFittingPriority:{v53, v52}];
          v55 = v54;
          v57 = v56;
          v58 = [v44 &selRef_setTextColor_];
          if (v58)
          {
            v59 = v58;
            v70.origin.x = 0.0;
            v70.origin.y = 0.0;
            v70.size.width = v55;
            v70.size.height = v57;
            v71 = CGRectInset(v70, -a2, -a2);
            [v59 setFrame_];
          }

          return;
        }

LABEL_38:
        __break(1u);
        return;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    return;
  }

  v40 = v64;
}

void sub_243B4CC94()
{
  v8 = MEMORY[0x277D84F90];
  v1 = [v0 subviews];
  sub_243B2E534(0, &qword_27EDA2BC8, 0x277D75D18);
  v2 = sub_243B7089C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

  v3 = sub_243B70C0C();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D49BC0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v7 = v6;
        MEMORY[0x245D498C0]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_243B708BC();
        }

        sub_243B708CC();
      }

      else
      {
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

void *sub_243B4CE5C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for AutocompleteSearchCoordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_delegate];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v5[OBJC_IVAR____TtC14CloudSharingUI29AutocompleteSearchCoordinator_viewModel] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  result = objc_msgSendSuper2(&v8, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_243B4CEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B4E2FC(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243B4CF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243B4E2FC(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243B4CFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243B4E2FC(a1, a2, a3);
  sub_243B7029C();
  __break(1u);
}

double sub_243B4D008@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_243B4D088(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t type metadata accessor for AddressingView_iOS(uint64_t a1)
{
  result = qword_27EDA2AB8;
  if (!qword_27EDA2AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_243B4D194(uint64_t a1, unsigned int a2)
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

uint64_t sub_243B4D1DC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_243B4D28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243B4D35C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243B4D40C(uint64_t a1)
{
  sub_243B4D4C0(319);
  if (v1 <= 0x3F)
  {
    sub_243B4D518(319);
    if (v2 <= 0x3F)
    {
      sub_243B4D5AC(319);
      if (v3 <= 0x3F)
      {
        sub_243B3312C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243B4D4C0(uint64_t a1)
{
  if (!qword_27EDA2AC8)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_243B705EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2AC8);
    }
  }
}

void sub_243B4D518(uint64_t a1)
{
  if (!qword_27EDA2AD0)
  {
    type metadata accessor for KeyboardObserver(255);
    sub_243B4E52C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver, &unk_243B729D4);
    v1 = sub_243B6FD5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2AD0);
    }
  }
}

void sub_243B4D5AC(uint64_t a1)
{
  if (!qword_27EDA2AE0)
  {
    type metadata accessor for AddressingViewModel(255);
    sub_243B4E52C(&qword_27EDA2AA8, type metadata accessor for AddressingViewModel, &protocol conformance descriptor for AddressingViewModel);
    v1 = sub_243B6FE4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2AE0);
    }
  }
}

uint64_t sub_243B4D694(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_243B4D718()
{
  result = qword_27EDA2B20;
  if (!qword_27EDA2B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B28, &qword_243B74100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B30, &qword_243B74108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B38, &qword_243B74110);
    sub_243B4D850();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243B2E680(&qword_27EDA2B80, &qword_27EDA2B88, &qword_243B74130, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B20);
  }

  return result;
}

unint64_t sub_243B4D850()
{
  result = qword_27EDA2B40;
  if (!qword_27EDA2B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B38, &qword_243B74110);
    sub_243B4D8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B40);
  }

  return result;
}

unint64_t sub_243B4D8DC()
{
  result = qword_27EDA2B48;
  if (!qword_27EDA2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B50, &qword_243B74118);
    sub_243B4D994();
    sub_243B2E680(&qword_27EDA2918, &qword_27EDA2920, &qword_243B73AB8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B48);
  }

  return result;
}

unint64_t sub_243B4D994()
{
  result = qword_27EDA2B58;
  if (!qword_27EDA2B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B60, &qword_243B74120);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2B68, &qword_243B74128);
    sub_243B4DAD8(v3, v1, v2);
    sub_243B2E680(&qword_27EDA2B78, &qword_27EDA2B68, &qword_243B74128, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_243B2E680(&qword_27EDA2908, &qword_27EDA2910, &qword_243B73AB0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B58);
  }

  return result;
}

unint64_t sub_243B4DAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA2B70;
  if (!qword_27EDA2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2B70);
  }

  return result;
}

uint64_t sub_243B4DB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressingView_iOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B4DBA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddressingView_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_243B4DC28(double a1, double a2)
{
  v5 = *(type metadata accessor for AddressingView_iOS(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_243B4AB90(v6, a1, a2);
}

uint64_t sub_243B4DCA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243B4DD0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2B38, &qword_243B74110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_243B4DD7C(uint64_t a1)
{
  v3 = *(type metadata accessor for AddressingView_iOS(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_243B4AF84(a1, v4);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for AddressingView_iOS(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_243B386E0(*(v5 + 24), *(v5 + 32));

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_243B701DC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B4DFA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddressingView_iOS(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_243B4E018()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B4E074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B4E0E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243B4E12C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_243B4E17C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2AF8, &qword_243B740E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2AE8, &qword_243B740D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2AF0, &qword_243B740E0);
  v0 = sub_243B2E680(&qword_27EDA2B90, &qword_27EDA2AF0, &qword_243B740E0, MEMORY[0x277CDDA18]);
  sub_243B30AF8(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA27B0, &qword_243B740D0);
  sub_243B2E680(&qword_27EDA27A8, &qword_27EDA27B0, &qword_243B740D0, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243B4E2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA2BB0;
  if (!qword_27EDA2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2BB0);
  }

  return result;
}

void sub_243B4E360(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = sub_243B7080C();
    v10 = [objc_opt_self() bundleWithIdentifier_];

    if (v10)
    {
      sub_243B6F9FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2EF0, &qword_243B744F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_243B71ED0;
      v12 = MEMORY[0x277D837D0];
      *(v11 + 56) = MEMORY[0x277D837D0];
      v15 = sub_243B4E57C(v11, v13, v14);
      *(v11 + 32) = a1;
      *(v11 + 40) = a2;
      *(v11 + 96) = v12;
      *(v11 + 104) = v15;
      *(v11 + 64) = v15;
      *(v11 + 72) = a3;
      *(v11 + 80) = a4;

      sub_243B7081C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_243B4E52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243B4E57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA2BD0;
  if (!qword_27EDA2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2BD0);
  }

  return result;
}

uint64_t sub_243B4E5D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_243B4E614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EDA2C00;
  if (!qword_27EDA2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C00);
  }

  return result;
}

uint64_t sub_243B4E678@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243B7007C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CreateiCloudLinkView(0);
  sub_243B2E06C(v1 + *(v10 + 20), v9, &qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_243B304EC(v9, a1, &qword_27EDA2270, "LT");
  }

  sub_243B709DC();
  v12 = sub_243B702CC();
  sub_243B6FB4C();

  sub_243B7006C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t CreateiCloudLinkView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CreateiCloudLinkView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  *v7 = sub_243B498AC;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = a2 + v4[6];
  *v8 = sub_243B384D0;
  *(v8 + 1) = a1;
  v8[16] = 0;
  return result;
}

uint64_t CreateiCloudLinkView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v38 = a1;
  v4 = type metadata accessor for CreateiCloudLinkView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C08, &qword_243B74578);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v39 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C10, &qword_243B74580);
  sub_243B51980();
  sub_243B6FE9C();
  v32 = type metadata accessor for CreateiCloudLinkView;
  sub_243B52450(v2, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateiCloudLinkView);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_243B51A68(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C30, &qword_243B74598) + 36)];
  *v13 = sub_243B51ACC;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v30 = v3;
  sub_243B52450(v3, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateiCloudLinkView);
  v14 = swift_allocObject();
  sub_243B51A68(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11);
  v15 = &v10[*(v8 + 36)];
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = sub_243B51AE4;
  *(v15 + 3) = v14;
  v16 = v3 + *(v5 + 32);
  v17 = *v16;
  v35 = *(v16 + 8);
  v36 = v17;
  v34 = *(v16 + 16);
  v33 = type metadata accessor for CreateiCloudLinkViewModel(0);
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  v18 = sub_243B6FD3C();
  swift_getKeyPath();
  v44 = v18;
  v31 = sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v19 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  LOBYTE(v19) = *(v18 + v19);

  LOBYTE(v43) = v19;
  sub_243B52450(v30, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  v20 = swift_allocObject();
  sub_243B51A68(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v11);
  sub_243B51BA8();
  v21 = v38;
  sub_243B704DC();

  sub_243B2E620(v10, &qword_27EDA2C08, &qword_243B74578);
  v22 = sub_243B6FD3C();
  swift_getKeyPath();
  v43 = v22;
  sub_243B6FAFC();

  v23 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  swift_beginAccess();
  v24 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C58, &unk_243B745F8) + 36);
  sub_243B2E06C(v22 + v23, v24, &qword_27EDA1E00, &unk_243B73660);

  sub_243B6FD4C();
  swift_getKeyPath();
  sub_243B6FE3C();

  v25 = v40;
  v26 = v41;
  LOBYTE(v21) = v42;
  result = type metadata accessor for AlertViewModelAlert(0);
  v28 = v24 + *(result + 20);
  *v28 = v25;
  *(v28 + 8) = v26;
  *(v28 + 16) = v21;
  return result;
}

uint64_t sub_243B4EE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_243B700EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C80, ":y");
  sub_243B4EF08(a1, a2 + *(v4 + 44));
  v5 = [objc_opt_self() systemBackgroundColor];
  v6 = sub_243B7054C();
  v7 = sub_243B702FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C10, &qword_243B74580);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t sub_243B4EF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C88, &qword_243B746B8);
  MEMORY[0x28223BE20](v153);
  v155 = (v125 - v3);
  v154 = type metadata accessor for PermissionsView(0);
  MEMORY[0x28223BE20](v154);
  v127 = (v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C90, &qword_243B746C0);
  MEMORY[0x28223BE20](v5 - 8);
  v157 = v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v156 = v125 - v8;
  v149 = sub_243B7008C();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_243B7016C();
  v162 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v161 = v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2C98, &qword_243B746C8);
  v160 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v159 = v125 - v11;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CA0, &qword_243B746D0);
  v136 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v163 = v125 - v12;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CA8, &qword_243B746D8);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v138 = v125 - v13;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CB0, &qword_243B746E0);
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v135 = v125 - v14;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CB8, &qword_243B746E8);
  MEMORY[0x28223BE20](v134);
  v144 = v125 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CC0, &qword_243B746F0);
  MEMORY[0x28223BE20](v146);
  v145 = v125 - v16;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CC8, &qword_243B746F8);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v166 = v125 - v19;
  v20 = sub_243B701DC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v126 = v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2298, &qword_243B734D0);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = v125 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  MEMORY[0x28223BE20](v27 - 8);
  v128 = v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v125 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v125 - v33;
  v133 = sub_243B706DC();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v36 = v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2620, &qword_243B734D8);
  MEMORY[0x28223BE20](v130);
  v165 = v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = v125 - v39;
  MEMORY[0x28223BE20](v41);
  v168 = v125 - v42;
  v131 = v36;
  sub_243B706CC();
  v129 = sub_243B7030C();
  v167 = a1;
  sub_243B4E678(v34);
  (*(v21 + 104))(v31, *MEMORY[0x277CE0558], v20);
  (*(v21 + 56))(v31, 0, 1, v20);
  v43 = *(v24 + 56);
  sub_243B2E06C(v34, v26, &qword_27EDA2270, "LT");
  sub_243B2E06C(v31, &v26[v43], &qword_27EDA2270, "LT");
  v44 = *(v21 + 48);
  if (v44(v26, 1, v20) == 1)
  {
    sub_243B2E620(v31, &qword_27EDA2270, "LT");
    sub_243B2E620(v34, &qword_27EDA2270, "LT");
    if (v44(&v26[v43], 1, v20) == 1)
    {
      sub_243B2E620(v26, &qword_27EDA2270, "LT");
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_243B2E06C(v26, v128, &qword_27EDA2270, "LT");
  if (v44(&v26[v43], 1, v20) == 1)
  {
    sub_243B2E620(v31, &qword_27EDA2270, "LT");
    sub_243B2E620(v34, &qword_27EDA2270, "LT");
    (*(v21 + 8))(v128, v20);
LABEL_6:
    sub_243B2E620(v26, &qword_27EDA2298, &qword_243B734D0);
    goto LABEL_8;
  }

  v45 = v126;
  (*(v21 + 32))(v126, &v26[v43], v20);
  sub_243B5251C(&qword_27EDA22E0, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v46 = v128;
  v125[1] = sub_243B707FC();
  v47 = *(v21 + 8);
  v47(v45, v20);
  sub_243B2E620(v31, &qword_27EDA2270, "LT");
  sub_243B2E620(v34, &qword_27EDA2270, "LT");
  v47(v46, v20);
  sub_243B2E620(v26, &qword_27EDA2270, "LT");
LABEL_8:
  sub_243B6FCCC();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v132[4](v40, v131, v133);
  v56 = &v40[*(v130 + 36)];
  *v56 = v129;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_243B304EC(v40, v168, &qword_27EDA2620, &qword_243B734D8);
  v133 = sub_243B700CC();
  v131 = v57;
  v58 = v167 + *(type metadata accessor for CreateiCloudLinkView(0) + 24);
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = *(v58 + 16);
  v62 = type metadata accessor for CreateiCloudLinkViewModel(0);
  v132 = type metadata accessor for CreateiCloudLinkViewModel;
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FD4C();
  swift_getKeyPath();
  sub_243B6FE3C();

  v173 = v169;
  v174 = v170;
  v175 = v171;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CD0, &qword_243B74700);
  sub_243B2E680(&qword_27EDA2CD8, &qword_27EDA2CD0, &qword_243B74700, MEMORY[0x277CE14C0]);
  v63 = v159;
  sub_243B7064C();
  v64 = v161;
  sub_243B7015C();
  v65 = sub_243B2E680(&qword_27EDA2CE0, &qword_27EDA2C98, &qword_243B746C8, MEMORY[0x277CDF038]);
  v66 = v164;
  v67 = v142;
  v131 = v65;
  sub_243B7040C();
  (*(v162 + 8))(v64, v67);
  (*(v160 + 8))(v63, v66);
  v161 = v60;
  v162 = v59;
  LODWORD(v160) = v61;
  v133 = v62;
  v68 = sub_243B6FD3C();
  swift_getKeyPath();
  v169 = v68;
  v159 = sub_243B5251C(&qword_27EDA20B8, v132, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v69 = *(v68 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);

  if (v69 == 4)
  {
    if (qword_27EDA1D88 != -1)
    {
      swift_once();
    }

    v70 = &qword_27EDA4FC0;
  }

  else
  {
    if (qword_27EDA1D80 != -1)
    {
      swift_once();
    }

    v70 = &qword_27EDA4FB0;
  }

  v71 = v164;
  v73 = *v70;
  v72 = v70[1];

  v173 = v73;
  v174 = v72;
  v169 = v71;
  v170 = v67;
  v171 = v131;
  v172 = MEMORY[0x277CDE058];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_243B30AF8(OpaqueTypeConformance2, v75, v76);
  v78 = MEMORY[0x277D837D0];
  v79 = v138;
  v80 = v140;
  v81 = v163;
  sub_243B7045C();

  (*(v136 + 8))(v81, v80);
  v82 = v148;
  v83 = v147;
  v84 = v149;
  (*(v148 + 104))(v147, *MEMORY[0x277CDDDC0], v149);
  v169 = v80;
  v170 = v78;
  v171 = OpaqueTypeConformance2;
  v172 = v77;
  swift_getOpaqueTypeConformance2();
  v85 = v135;
  v86 = v143;
  sub_243B7049C();
  (*(v82 + 8))(v83, v84);
  (*(v141 + 8))(v79, v86);
  LOBYTE(v84) = sub_243B702EC();
  v87 = v144;
  (*(v137 + 32))(v144, v85, v139);
  v88 = &v87[*(v134 + 36)];
  *v88 = v84;
  *(v88 + 8) = 0u;
  *(v88 + 24) = 0u;
  v88[40] = 1;
  v89 = sub_243B6FD3C();
  swift_getKeyPath();
  v169 = v89;
  sub_243B6FAFC();

  v90 = *(v89 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__shareItemStatus);

  LOBYTE(v85) = v90 == 2;
  KeyPath = swift_getKeyPath();
  v92 = swift_allocObject();
  *(v92 + 16) = v85;
  v93 = v87;
  v94 = v145;
  v95 = sub_243B52170(v93, v145);
  v96 = (v94 + *(v146 + 36));
  *v96 = KeyPath;
  v96[1] = sub_243B307DC;
  v96[2] = v92;
  MEMORY[0x28223BE20](v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CE8, &unk_243B74760);
  sub_243B521E8();
  sub_243B2E680(&qword_27EDA2D00, &qword_27EDA2CE8, &unk_243B74760, MEMORY[0x277CDDF68]);
  sub_243B704CC();
  sub_243B2E620(v94, &qword_27EDA2CC0, &qword_243B746F0);
  v97 = sub_243B6FD3C();
  swift_getKeyPath();
  v169 = v97;
  sub_243B6FAFC();

  v98 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  swift_beginAccess();
  LODWORD(v98) = *(v97 + v98);

  v99 = sub_243B6FD3C();
  if (v98 == 1)
  {
    v100 = v127;
    sub_243B333E8(*&v99, v127);
    sub_243B52450(v100, v155, type metadata accessor for PermissionsView);
    swift_storeEnumTagMultiPayload();
    v101 = sub_243B5251C(&qword_27EDA2D08, type metadata accessor for PermissionsView, &unk_243B72B70);
    sub_243B371EC(v101, v102, v103);
    v104 = v156;
    sub_243B7014C();
    sub_243B524B8(v100);
  }

  else
  {
    v105 = sub_243B6FE1C();
    v107 = v106;
    type metadata accessor for HostingControllerConstraintWrapper();
    v108 = swift_allocObject();
    *(v108 + 16) = 0;
    v109 = v155;
    *v155 = v105;
    v109[1] = v107;
    v109[2] = v108;
    swift_storeEnumTagMultiPayload();
    v110 = sub_243B5251C(&qword_27EDA2D08, type metadata accessor for PermissionsView, &unk_243B72B70);
    sub_243B371EC(v110, v111, v112);
    v104 = v156;
    sub_243B7014C();
  }

  v113 = v165;
  sub_243B2E06C(v168, v165, &qword_27EDA2620, &qword_243B734D8);
  v114 = v151;
  v115 = *(v151 + 16);
  v116 = v150;
  v117 = v166;
  v118 = v152;
  v115(v150, v166, v152);
  v119 = v157;
  sub_243B2E06C(v104, v157, &qword_27EDA2C90, &qword_243B746C0);
  v120 = v158;
  sub_243B2E06C(v113, v158, &qword_27EDA2620, &qword_243B734D8);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D10, &qword_243B74770);
  v115((v120 + v121[12]), v116, v118);
  v122 = v120 + v121[16];
  *v122 = 0x4020000000000000;
  *(v122 + 8) = 0;
  sub_243B2E06C(v119, v120 + v121[20], &qword_27EDA2C90, &qword_243B746C0);
  sub_243B2E620(v104, &qword_27EDA2C90, &qword_243B746C0);
  v123 = *(v114 + 8);
  v123(v117, v118);
  sub_243B2E620(v168, &qword_27EDA2620, &qword_243B734D8);
  sub_243B2E620(v119, &qword_27EDA2C90, &qword_243B746C0);
  v123(v116, v118);
  return sub_243B2E620(v165, &qword_27EDA2620, &qword_243B734D8);
}

uint64_t sub_243B505FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__isPublic;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_243B506E8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D48, &qword_243B74798);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v17 = &v28 - v16;
  if (qword_27EDA1DB8 != -1)
  {
    v13 = swift_once();
  }

  v28 = qword_27EDA5020;
  v29 = *algn_27EDA5028;
  sub_243B30AF8(v13, v14, v15);

  *v17 = sub_243B703BC();
  *(v17 + 1) = v18;
  v17[16] = v19 & 1;
  *(v17 + 3) = v20;
  *(v17 + 16) = 257;
  if (qword_27EDA1DC0 != -1)
  {
    swift_once();
  }

  v28 = qword_27EDA5030;
  v29 = *algn_27EDA5038;

  *v11 = sub_243B703BC();
  *(v11 + 1) = v21;
  v11[16] = v22 & 1;
  *(v11 + 3) = v23;
  *(v11 + 16) = 256;
  v24 = *(v3 + 16);
  v24(v8, v17, v2);
  v24(v5, v11, v2);
  v24(a1, v8, v2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D50, &unk_243B747A0);
  v24(&a1[*(v25 + 48)], v5, v2);
  v26 = *(v3 + 8);
  v26(v11, v2);
  v26(v17, v2);
  v26(v5, v2);
  return (v26)(v8, v2);
}

uint64_t sub_243B509D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D18, &qword_243B74778);
  MEMORY[0x28223BE20](v19);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D20, &qword_243B74780);
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - v6;
  v8 = sub_243B7019C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D28, &qword_243B74788);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_243B7018C();
  v22 = a1;
  type metadata accessor for CopyLinkButtonView(0);
  sub_243B5251C(&qword_27EDA2D30, type metadata accessor for CopyLinkButtonView, &unk_243B72734);
  sub_243B6FD6C();
  sub_243B7017C();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D38, &qword_243B74790);
  sub_243B2E680(&qword_27EDA2D40, &qword_27EDA2D38, &qword_243B74790, MEMORY[0x277CDF028]);
  sub_243B6FD6C();
  v13 = *(v19 + 48);
  (*(v10 + 16))(v4, v12, v9);
  v14 = &v4[v13];
  v15 = v18;
  (*(v5 + 16))(v14, v7, v18);
  sub_243B7012C();
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_243B50D3C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_243B6FACC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  type metadata accessor for CreateiCloudLinkView(0);
  type metadata accessor for CreateiCloudLinkViewModel(0);
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FD3C();
  *a2 = sub_243B6FE1C();
  a2[1] = v10;
  type metadata accessor for CopyLinkButtonView(0);
  sub_243B6FABC();
  (*(v4 + 16))(v6, v9, v3);
  sub_243B705AC();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_243B50EFC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for CreateiCloudLinkView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_243B6FCBC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6FC9C();
  sub_243B52450(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateiCloudLinkView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_243B51A68(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return MEMORY[0x245D49660](v8, sub_243B527B8, v10);
}

double sub_243B51064(uint64_t a1, double a2)
{
  type metadata accessor for CreateiCloudLinkView(0);
  type metadata accessor for CreateiCloudLinkViewModel(0);
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  v2 = *(sub_243B6FD3C() + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel_dismissAction);

  v2(v3);

  return result;
}

void sub_243B51140(uint64_t a1)
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    type metadata accessor for CreateiCloudLinkView(0);
    type metadata accessor for KeyboardObserver(0);
    sub_243B5251C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver, &unk_243B729D4);
    v3 = sub_243B6FD3C();
    v4 = objc_opt_self();
    v5 = [v4 defaultCenter];
    [v5 addObserver:v3 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v6 = [v4 defaultCenter];
    [v6 addObserver:v3 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }
}

void sub_243B512EC(uint64_t a1)
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    type metadata accessor for CreateiCloudLinkView(0);
    type metadata accessor for KeyboardObserver(0);
    sub_243B5251C(&qword_27EDA2AD8, type metadata accessor for KeyboardObserver, &unk_243B729D4);
    v3 = sub_243B6FD3C();
    v4 = objc_opt_self();
    v5 = [v4 defaultCenter];
    [v5 removeObserver:v3 name:*MEMORY[0x277D76C60] object:0];

    v6 = [v4 defaultCenter];
    [v6 removeObserver:v3 name:*MEMORY[0x277D76C50] object:0];
  }
}

double sub_243B51488(double a1, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = *a3;
  type metadata accessor for CreateiCloudLinkView(0);
  type metadata accessor for CreateiCloudLinkViewModel(0);
  sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FD3C();
  sub_243B5D470(v4);

  return result;
}

void sub_243B51550(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__showAlert);
}

uint64_t sub_243B5162C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAFC();

  v4 = OBJC_IVAR____TtC14CloudSharingUI25CreateiCloudLinkViewModel__alertViewModel;
  swift_beginAccess();
  return sub_243B2E06C(v3 + v4, a2, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B51704(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1E00, &unk_243B73660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_243B2E06C(a1, &v9[-v5], &qword_27EDA1E00, &unk_243B73660);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_243B5251C(&qword_27EDA20B8, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
  sub_243B6FAEC();

  return sub_243B2E620(v6, &qword_27EDA1E00, &unk_243B73660);
}

uint64_t sub_243B51878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2270, "LT");
  MEMORY[0x28223BE20](v2 - 8);
  sub_243B2E06C(a1, &v5 - v3, &qword_27EDA2270, "LT");
  return sub_243B6FF9C();
}

uint64_t type metadata accessor for CreateiCloudLinkView(uint64_t a1)
{
  result = qword_27EDA2C60;
  if (!qword_27EDA2C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243B51980()
{
  result = qword_27EDA2C18;
  if (!qword_27EDA2C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C10, &qword_243B74580);
    sub_243B2E680(&qword_27EDA2C20, &qword_27EDA2C28, &unk_243B74588, MEMORY[0x277CE1198]);
    sub_243B2E680(&qword_27EDA23F8, &qword_27EDA2400, &qword_243B73430, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C18);
  }

  return result;
}

uint64_t sub_243B51A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreateiCloudLinkView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_243B51B28(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for CreateiCloudLinkView(0) - 8);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243B51488(v6, a1, a2, v7);
}

unint64_t sub_243B51BA8()
{
  result = qword_27EDA2C38;
  if (!qword_27EDA2C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C08, &qword_243B74578);
    sub_243B51C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C38);
  }

  return result;
}

unint64_t sub_243B51C34()
{
  result = qword_27EDA2C40;
  if (!qword_27EDA2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C30, &qword_243B74598);
    sub_243B2E680(&qword_27EDA2C48, &qword_27EDA2C50, &qword_243B745C8, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C40);
  }

  return result;
}

uint64_t sub_243B51D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_243B51E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2248, &unk_243B74050);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = -a2;
  }

  return result;
}

void sub_243B51EF4(uint64_t a1)
{
  sub_243B3312C(319);
  if (v1 <= 0x3F)
  {
    sub_243B51F90(319);
    if (v2 <= 0x3F)
    {
      sub_243B4D518(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243B51F90(uint64_t a1)
{
  if (!qword_27EDA2C70)
  {
    type metadata accessor for CreateiCloudLinkViewModel(255);
    sub_243B5251C(&qword_27EDA2060, type metadata accessor for CreateiCloudLinkViewModel, &protocol conformance descriptor for CreateiCloudLinkViewModel);
    v1 = sub_243B6FD5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDA2C70);
    }
  }
}

unint64_t sub_243B52028()
{
  result = qword_27EDA2C78;
  if (!qword_27EDA2C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C58, &unk_243B745F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C08, &qword_243B74578);
    sub_243B51BA8();
    swift_getOpaqueTypeConformance2();
    sub_243B5251C(&qword_27EDA2898, type metadata accessor for AlertViewModelAlert, &unk_243B73730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2C78);
  }

  return result;
}

uint64_t sub_243B52170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2CB8, &qword_243B746E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243B521E8()
{
  result = qword_27EDA2CF0;
  if (!qword_27EDA2CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2CC0, &qword_243B746F0);
    sub_243B522A0();
    sub_243B2E680(&qword_27EDA2368, &qword_27EDA2370, &qword_243B72D08, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2CF0);
  }

  return result;
}

unint64_t sub_243B522A0()
{
  result = qword_27EDA2CF8;
  if (!qword_27EDA2CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2CB8, &qword_243B746E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2CA8, &qword_243B746D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2CA0, &qword_243B746D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDA2C98, &qword_243B746C8);
    sub_243B7016C();
    sub_243B2E680(&qword_27EDA2CE0, &qword_27EDA2C98, &qword_243B746C8, MEMORY[0x277CDF038]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_243B30AF8(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA2CF8);
  }

  return result;
}

uint64_t sub_243B52450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243B524B8(uint64_t a1)
{
  v2 = type metadata accessor for PermissionsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B5251C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for CreateiCloudLinkView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2280, &qword_243B732D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_243B701DC();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_243B701DC();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  sub_243B386E0(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  sub_243B386E0(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243B527D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CreateiCloudLinkView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_243B52860(uint64_t *a1@<X8>)
{
  v2 = sub_243B7050C();
  sub_243B6FDDC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

void sub_243B528B0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v3;
}

uint64_t sub_243B52930(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_243B6FC4C();
}

uint64_t sub_243B529A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B52A24(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B52A94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B52B38;
}

uint64_t sub_243B52B3C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D60, &qword_243B74860);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B52CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D60, &qword_243B74860);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B52E14(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D60, &qword_243B74860);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B52FDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B53080(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B53220(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B53358(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

double sub_243B534C8@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_243B53550(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B535EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B5366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B536FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B537A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D90, &qword_243B74910);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D88, &qword_243B74908);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B53940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D90, &qword_243B74910);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D88, &qword_243B74908);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B53A78(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D90, &qword_243B74910);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__yourNameAndEmail;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D88, &qword_243B74908);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B53C40(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B53CE4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B53E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B53FBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__inputText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B54184(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B54228(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B543C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B54500(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__loadingText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B546C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B5476C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B5490C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B54A44(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__supplementaryText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B54C0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B54CB0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B54E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B54F88(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__userInfoText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

uint64_t (*sub_243B55150(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B551F4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B55394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B554CC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__primaryButtonText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

void sub_243B55650(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a4 = v5;
  a4[1] = v6;
}

uint64_t sub_243B556E0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B55774(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v3;
}

uint64_t sub_243B557FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B55874(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B55918(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B55AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B55BF0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D78, &qword_243B748B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__secondaryButtonText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2D70, &qword_243B748B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

void sub_243B55D60(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v3;
}

uint64_t sub_243B55DE0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B55E54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B55ED0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B55F40(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

uint64_t sub_243B55FE4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD8, &qword_243B74B18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B56184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD8, &qword_243B74B18);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B562BC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD8, &qword_243B74B18);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B5A894;
}

void sub_243B5642C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  *a2 = v3;
}

uint64_t sub_243B564AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t sub_243B56528()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  return v1;
}

uint64_t sub_243B565A4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243B6FC4C();
}

uint64_t (*sub_243B56614(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243B6FC2C();
  return sub_243B5A890;
}

void sub_243B566B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_243B56720(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_243B6FC0C();
  return swift_endAccess();
}

uint64_t sub_243B5679C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_243B5693C(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_243B6FC0C();
  return swift_endAccess();
}

uint64_t sub_243B569B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  sub_243B6FC1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243B56AEC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__addresses;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  sub_243B6FC0C();
  swift_endAccess();
  return sub_243B56C5C;
}

void sub_243B56C60(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_243B6FC1C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_243B6FC1C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_243B56DC8()
{
  if (*(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked))
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243B6FC3C();

  v1 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v1 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
LABEL_5:
    v2 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243B6FC3C();

    v4 = *(v5 + 16);

    if (v4)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v0 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) ^ 1;
    }
  }

  return v2 & 1;
}

uint64_t AddressingViewModel.__allocating_init(headerImageData:headerTitle:loadingText:supplementaryText:userInfoText:primaryButtonText:secondaryButtonText:shouldAllowEmptyAddresses:userDidClickPrimaryButton:userDidClickSecondaryButton:userDidClickShowContactPicker:userDidChangeAddresses:)(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, void *a11, unint64_t a12, void *a13, unint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v79 = a8;
  v78 = a7;
  v77 = a6;
  v76 = a5;
  v75 = a4;
  v74 = a3;
  v93 = a22;
  v94 = a23;
  v95 = a20;
  v96 = a21;
  v98 = a1;
  v99 = a19;
  v97 = a18;
  v101 = a17;
  v102 = a2;
  v100 = a16;
  v86 = a15;
  v85 = a14;
  v84 = a13;
  v83 = a12;
  v82 = a11;
  v81 = a10;
  v80 = a9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DE8, &unk_243B74B70);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v73 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F80, &unk_243B75080);
  v91 = *(v24 - 8);
  v92 = v24;
  MEMORY[0x28223BE20](v24);
  v90 = &v73 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DD0, &qword_243B74B10);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v73 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2F90, &unk_243B75090);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v73 - v32;
  v34 = swift_allocObject();
  v35 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__headerImage;
  v103 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2DF0, &unk_243B74B80);
  sub_243B6FBFC();
  (*(v31 + 32))(v34 + v35, v33, v30);
  *(v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonWasClicked) = 0;
  v36 = (v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_showContactPickerDidClick);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel__hideInnerNavigationBar;
  LOBYTE(v103) = 1;
  sub_243B6FBFC();
  (*(v27 + 32))(v34 + v37, v29, v26);
  swift_unknownObjectWeakInit();
  *(v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_store) = MEMORY[0x277D84FA0];
  if (v102 >> 60 == 15)
  {
    swift_beginAccess();
    (*(v31 + 8))(v34 + v35, v30);
    v107 = 0;
    sub_243B6FBFC();
    swift_endAccess();
  }

  else
  {
    v38 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v39 = v98;
    v40 = v102;
    sub_243B58478(v98, v102);
    sub_243B58478(v39, v40);
    v41 = sub_243B6FA9C();
    v42 = [v38 initWithData_];

    sub_243B58410(v39, v40);
    swift_beginAccess();
    (*(v31 + 8))(v34 + v35, v30);
    v107 = v42;
    sub_243B6FBFC();
    swift_endAccess();
    sub_243B58410(v39, v40);
  }

  if (v75)
  {
    v43 = v74;
  }

  else
  {
    v43 = 0;
  }

  v44 = 0xE000000000000000;
  if (v75)
  {
    v45 = v75;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  swift_beginAccess();
  v107 = v43;
  v108 = v45;
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v103 = 0;
  v104 = 0xE000000000000000;
  v105 = 0;
  v106 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FA0, &unk_243B750A0);
  sub_243B6FBFC();
  swift_endAccess();
  swift_beginAccess();
  v107 = 0;
  v108 = 0xE000000000000000;
  sub_243B6FBFC();
  swift_endAccess();
  if (v77)
  {
    v46 = v76;
  }

  else
  {
    v46 = 0;
  }

  if (v77)
  {
    v47 = v77;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  swift_beginAccess();
  v107 = v46;
  v108 = v47;
  sub_243B6FBFC();
  swift_endAccess();
  if (v79)
  {
    v48 = v78;
  }

  else
  {
    v48 = 0;
  }

  if (v79)
  {
    v49 = v79;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  swift_beginAccess();
  v107 = v48;
  v108 = v49;
  sub_243B6FBFC();
  swift_endAccess();
  if (v81)
  {
    v50 = v80;
  }

  else
  {
    v50 = 0;
  }

  if (v81)
  {
    v51 = v81;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  swift_beginAccess();
  v107 = v50;
  v108 = v51;
  sub_243B6FBFC();
  swift_endAccess();
  if (v83)
  {
    v52 = v82;
  }

  else
  {
    v52 = 0;
  }

  if (v83)
  {
    v53 = v83;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  swift_beginAccess();
  v107 = v52;
  v108 = v53;
  sub_243B6FBFC();
  swift_endAccess();
  v54 = (v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_primaryButtonDidClick);
  v56 = v100;
  v55 = v101;
  *v54 = v100;
  v54[1] = v55;
  if (v85)
  {
    v57 = v84;
  }

  else
  {
    v57 = 0;
  }

  if (v85)
  {
    v44 = v85;
  }

  swift_beginAccess();
  v107 = v57;
  v108 = v44;
  sub_243B2E364(v56, v55);
  sub_243B6FBFC();
  swift_endAccess();
  v58 = (v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_secondaryButtonDidClick);
  v60 = v96;
  v59 = v97;
  v61 = v99;
  *v58 = v97;
  v58[1] = v61;
  v62 = *v36;
  v63 = v36[1];
  v64 = v95;
  *v36 = v95;
  v36[1] = v60;
  sub_243B2E364(v59, v61);
  sub_243B2E364(v64, v60);
  sub_243B2BFCC(v62, v63);
  v65 = (v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_addressesDidChange);
  v66 = v93;
  v67 = v94;
  *v65 = v93;
  v65[1] = v67;
  swift_beginAccess();
  v107 = MEMORY[0x277D84F90];
  sub_243B2E364(v66, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA2118, &qword_243B74B90);
  sub_243B6FBFC();
  *(v34 + OBJC_IVAR____TtC14CloudSharingUI19AddressingViewModel_shouldAllowEmptyAddresses) = v86 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDA2FB0, &qword_243B750B0);
  v68 = v87;
  sub_243B6FC0C();
  swift_endAccess();

  sub_243B2E680(&qword_27EDA2E00, &qword_27EDA2DE8, &unk_243B74B70, MEMORY[0x277CBCEC8]);
  sub_243B30A50();
  v69 = v89;
  v70 = v90;
  sub_243B6FC6C();
  (*(v88 + 8))(v68, v69);
  swift_allocObject();
  swift_weakInit();
  sub_243B2E680(&qword_27EDA2E08, &unk_27EDA2F80, &unk_243B75080, MEMORY[0x277CBCBE0]);
  v71 = v92;
  sub_243B6FC7C();

  (*(v91 + 8))(v70, v71);
  swift_beginAccess();
  sub_243B6FBDC();
  swift_endAccess();

  sub_243B2BFCC(v66, v67);
  sub_243B2BFCC(v64, v60);
  sub_243B2BFCC(v59, v99);
  sub_243B2BFCC(v100, v101);
  sub_243B58410(v98, v102);
  return v34;
}
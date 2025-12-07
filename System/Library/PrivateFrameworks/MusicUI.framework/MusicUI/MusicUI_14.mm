uint64_t sub_2167E4474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v38 = a1;
  v43 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0, &unk_21701D840);
  v39 = *(v4 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - v5;
  v35 = sub_21700C924();
  v6 = *(v35 - 8);
  v36 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148, &qword_217019070);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_21700DA84();
  v33 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_21700DA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v21 = MEMORY[0x277D837D0];
  *(inited + 32) = 1701273968;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = v21;
  *(inited + 48) = 0x7473696C79616C70;
  *(inited + 56) = 0xEF7972617262694CLL;
  v44 = sub_21700E384();
  sub_21700DA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  sub_21700DA24();
  (*(v10 + 8))(v12, v9);

  v22 = *(v14 + 8);
  v32 = v14 + 8;
  v34 = v22;
  v22(v16, v13);
  v23 = v8;
  v24 = v8;
  v25 = v35;
  (*(v6 + 16))(v24, v38, v35);
  v26 = v37;
  sub_216683A80(v41, v37, qword_27CAB6AF0, &unk_21701D840);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = (v36 + *(v39 + 80) + v27) & ~*(v39 + 80);
  v29 = swift_allocObject();
  (*(v6 + 32))(v29 + v27, v23, v25);
  sub_2167C5834(v26, v29 + v28, qword_27CAB6AF0, &unk_21701D840);
  type metadata accessor for BootstrapState(0);
  sub_2166B4AF8(&qword_280E43828, type metadata accessor for BootstrapState, &unk_217050A88);

  v44 = sub_217008684();
  v45 = v30;
  v46 = sub_2167E6EBC;
  v47 = v29;
  v48 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8098, &qword_217018FA8);
  sub_2167E68E4(&qword_280E3AB58, &qword_27CAB8098, &qword_217018FA8);
  sub_21700A1A4();

  return v34(v19, v33);
}

uint64_t sub_2167E49C8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for LibraryImportWebView(0) + 20);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  memcpy((v7 + 16), a2, 0x88uLL);
  *(v7 + 152) = a1;
  *a3 = sub_2167E7050;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  sub_2167E705C(a2, v9);
}

uint64_t sub_2167E4A98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a1;
  v31 = type metadata accessor for RoutedPageIntent(0);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81B0, &unk_2170190D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  sub_217006F14();
  v18 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    v30 = v3;
    sub_217006F24();
    v19 = sub_217007114();
    if (__swift_getEnumTagSinglePayload(v11, 1, v19) == 1)
    {
      sub_2166997CC(v11, &qword_27CAB81B0, &unk_2170190D0);
      v20 = 1;
    }

    else
    {
      sub_217007104();
      (*(*(v19 - 8) + 8))(v11, v19);
      v20 = 0;
    }

    __swift_storeEnumTagSinglePayload(v17, v20, 1, v18);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v18);
    v3 = v30;
    if (EnumTagSinglePayload != 1)
    {
      sub_2166997CC(v14, &qword_27CABA820, &unk_217018CE0);
    }
  }

  else
  {
    (*(*(v18 - 8) + 32))(v17, v14, v18);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  }

  sub_216683A80(v17, &v8[*(v31 + 20)], &qword_27CABA820, &unk_217018CE0);
  v22 = type metadata accessor for ReferrerInfo(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v22);
  sub_2167E70B8(v8, v5);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = swift_allocObject();
  sub_2167E7110(v5, v24 + v23);
  type metadata accessor for BootstrapState(0);
  sub_2166B4AF8(&qword_280E43828, type metadata accessor for BootstrapState, &unk_217050A88);

  v25 = sub_217008684();
  v27 = v26;
  sub_2167E7220(v8, type metadata accessor for RoutedPageIntent);
  result = sub_2166997CC(v17, &qword_27CABA820, &unk_217018CE0);
  *a2 = v25;
  *(a2 + 8) = v27;
  *(a2 + 16) = sub_2167E7168;
  *(a2 + 24) = v24;
  *(a2 + 32) = 257;
  return result;
}

uint64_t sub_2167E4EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for MusicStackAuthority(0);
  sub_2166B4AF8(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
  v6 = sub_217008CF4();
  *a3 = a2;
  a3[1] = a1;
  a3[2] = v6;
  a3[3] = v7;
}

double sub_2167E4F80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216683A80(a2, v12, &qword_27CAB6AB8, &unk_217013E10);
  sub_216EB0ED4(v13);
  LOBYTE(v9[0]) = 1;
  sub_21700AEA4();
  v5 = *(&v10[0] + 1);
  *a3 = v10[0];
  *(a3 + 8) = v5;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_216683A80(v10, v9, &qword_27CAB8100, qword_21701B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8100, qword_21701B4C0);
  sub_21700AEA4();
  sub_2166997CC(v10, &qword_27CAB8100, qword_21701B4C0);
  sub_216683A80(v12, v10, &qword_27CAB6AB8, &unk_217013E10);
  type metadata accessor for ChartsPageView.ChartsPagePresenter(0);
  swift_allocObject();

  v9[0] = sub_216DEBAE0(v10, a1);
  sub_21700AEA4();
  sub_2166997CC(v12, &qword_27CAB6AB8, &unk_217013E10);
  v6 = *(&v10[0] + 1);
  *(a3 + 96) = *&v10[0];
  *(a3 + 104) = v6;
  result = *v13;
  v8 = v13[1];
  *(a3 + 112) = v13[0];
  *(a3 + 128) = v8;
  *(a3 + 144) = v14;
  return result;
}

void *sub_2167E5108@<X0>(void *a1@<X8>)
{

  return sub_216C2EAE0(v2, a1);
}

uint64_t sub_2167E5140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MusicStackAuthority(0);
  sub_2166B4AF8(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
  v4 = sub_217008CF4();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = sub_2167E7274;
  *(a2 + 32) = a1;
  *(a2 + 40) = 0;
  return swift_retain_n();
}

void sub_2167E51E4(uint64_t a1, uint64_t a2)
{
  *(&v10 + 1) = type metadata accessor for RoutedPageIntent(0);
  v11 = sub_2166B4AF8(&qword_27CAB81B8, type metadata accessor for RoutedPageIntent, &unk_217040C34);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  sub_2167E70B8(a2, boxed_opaque_existential_1);
  v12 = 0u;
  v13 = 0u;
  LOWORD(v14) = 1;

  sub_216CCC700(&v9, a1, &v12, 0, 0, v5, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2167E52BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8150, &qword_217019078);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = sub_21700C1E4();
  (*(*(v14 - 8) + 16))(a4, a2, v14);
  v15 = type metadata accessor for LibraryAlbumViewModel(0);
  sub_216683A80(a3, a4 + *(v15 + 20), &qword_27CAB6AE8, qword_217014050);
  *(a4 + *(v15 + 24)) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8158, &qword_217019080);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v13, v10, &qword_27CAB8150, &qword_217019078);

  sub_21700AEA4();
  sub_2166997CC(v13, &qword_27CAB8150, &qword_217019078);
  v17 = *(v16 + 40);
  v28[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118, &qword_217019040);
  sub_21700AEA4();
  *(a4 + v17) = v29;
  type metadata accessor for MusicEntityAnnotationWrapper();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v18 = v29;
  sub_2166B4AF8(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  v19 = sub_217007D54();
  v20 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8160, &qword_217019088) + 36));
  *v20 = v19;
  v20[1] = v18;
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_21700E094();
  v21 = v29;
  sub_2166B4AF8(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  v22 = sub_217007D54();
  v23 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8168, &qword_217019090) + 36));
  *v23 = v22;
  v23[1] = v21;
  type metadata accessor for PlaybackPresenter(0);
  sub_21700E094();
  v24 = v29;
  sub_2166B4AF8(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);
  v25 = sub_217007D54();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8170, &qword_217019098);
  v27 = (a4 + *(result + 36));
  *v27 = v25;
  v27[1] = v24;
  return result;
}

uint64_t sub_2167E5644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8178, &qword_2170190A0);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = sub_21700C924();
  (*(*(v14 - 8) + 16))(a4, a2, v14);
  v15 = type metadata accessor for LibraryPlaylistViewModel(0);
  sub_216683A80(a3, a4 + *(v15 + 20), qword_27CAB6AF0, &unk_21701D840);
  *(a4 + *(v15 + 24)) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8180, &qword_2170190A8);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v13, v10, &qword_27CAB8178, &qword_2170190A0);

  sub_21700AEA4();
  sub_2166997CC(v13, &qword_27CAB8178, &qword_2170190A0);
  v17 = *(v16 + 40);
  v31[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118, &qword_217019040);
  sub_21700AEA4();
  *(a4 + v17) = v32;
  type metadata accessor for MusicEntityAnnotationWrapper();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v18 = v32;
  sub_2166B4AF8(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  v19 = sub_217007D54();
  v20 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8188, &qword_2170190B0) + 36));
  *v20 = v19;
  v20[1] = v18;
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_21700E094();
  v21 = v32;
  sub_2166B4AF8(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter, &unk_21701ED38);
  v22 = sub_217007D54();
  v23 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8190, &qword_2170190B8) + 36));
  *v23 = v22;
  v23[1] = v21;
  type metadata accessor for PlaybackPresenter(0);
  sub_21700E094();
  v24 = v32;
  sub_2166B4AF8(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);
  v25 = sub_217007D54();
  v26 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8198, &qword_2170190C0) + 36));
  *v26 = v25;
  v26[1] = v24;
  type metadata accessor for SingConnectedStatusWrapper();
  sub_21700E094();
  v27 = v32;
  sub_2166B4AF8(qword_280E33F98, type metadata accessor for SingConnectedStatusWrapper, &unk_217053F2C);
  v28 = sub_217007D54();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81A0, &qword_2170190C8);
  v30 = (a4 + *(result + 36));
  *v30 = v28;
  v30[1] = v27;
  return result;
}

uint64_t sub_2167E5A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ObjectGraph(0);
  sub_2167E6FFC();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700A1E4();
}

unint64_t sub_2167E5B18()
{
  result = qword_280E2AB78;
  if (!qword_280E2AB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FC0, &qword_217018EE0);
    sub_2167E68E4(&qword_280E3AB20, &qword_27CAB7FD0, &qword_217018EF0);
    sub_2167E68E4(&qword_280E3AB48, &qword_27CAB7FD8, &qword_217018EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB78);
  }

  return result;
}

unint64_t sub_2167E5BD4()
{
  result = qword_27CAB7FE0;
  if (!qword_27CAB7FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FC8, &qword_217018EE8);
    sub_2167E68E4(&qword_27CAB7FB8, &qword_27CAB7FB0, &qword_217018ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7FE0);
  }

  return result;
}

unint64_t sub_2167E5C78()
{
  result = qword_280E2A9C8;
  if (!qword_280E2A9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FE8, &qword_217018F00);
    sub_2167E5D04();
    sub_2167E5E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9C8);
  }

  return result;
}

unint64_t sub_2167E5D04()
{
  result = qword_280E2AB68;
  if (!qword_280E2AB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FF8, &qword_217018F10);
    sub_2167E5D90();
    sub_2167E5DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB68);
  }

  return result;
}

unint64_t sub_2167E5D90()
{
  result = qword_280E38980[0];
  if (!qword_280E38980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E38980);
  }

  return result;
}

unint64_t sub_2167E5DE4()
{
  result = qword_280E2E000[0];
  if (!qword_280E2E000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2E000);
  }

  return result;
}

unint64_t sub_2167E5E38()
{
  result = qword_280E2AB80;
  if (!qword_280E2AB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8000, &qword_217018F18);
    sub_2167E68E4(&qword_280E3AB28, &qword_27CAB8008, &qword_217018F20);
    sub_2167E68E4(&qword_280E3AB18, &qword_27CAB8010, &qword_217018F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB80);
  }

  return result;
}

unint64_t sub_2167E5EF4()
{
  result = qword_27CAB8018;
  if (!qword_27CAB8018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FF0, &qword_217018F08);
    sub_2167E5B18();
    sub_2167E5BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8018);
  }

  return result;
}

unint64_t sub_2167E5F80()
{
  result = qword_280E2A908;
  if (!qword_280E2A908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FA8, &qword_217018ED0);
    sub_2167E600C();
    sub_2167E64C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A908);
  }

  return result;
}

unint64_t sub_2167E600C()
{
  result = qword_280E2A928;
  if (!qword_280E2A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8028, &qword_217018F38);
    sub_2167E6098();
    sub_2167E62F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A928);
  }

  return result;
}

unint64_t sub_2167E6098()
{
  result = qword_280E2A9C0;
  if (!qword_280E2A9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8030, &qword_217018F40);
    sub_2167E6124();
    sub_2167E61C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9C0);
  }

  return result;
}

unint64_t sub_2167E6124()
{
  result = qword_280E2AB60;
  if (!qword_280E2AB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8038, &qword_217018F48);
    sub_2166B5298();
    sub_2167E68E4(&qword_280E3AB50, &qword_27CAB8040, &qword_217018F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB60);
  }

  return result;
}

unint64_t sub_2167E61C8()
{
  result = qword_280E2AB40;
  if (!qword_280E2AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8048, &qword_217018F58);
    sub_2167E626C();
    sub_2167E68E4(&qword_280E3AB40, &qword_27CAB8058, &qword_217018F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB40);
  }

  return result;
}

unint64_t sub_2167E626C()
{
  result = qword_280E35B40;
  if (!qword_280E35B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8050, &qword_217018F60);
    sub_2166B5298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35B40);
  }

  return result;
}

unint64_t sub_2167E62F0()
{
  result = qword_280E2A9D0;
  if (!qword_280E2A9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8060, &qword_217018F70);
    sub_2167E637C();
    sub_2167E6420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9D0);
  }

  return result;
}

unint64_t sub_2167E637C()
{
  result = qword_280E2AB88;
  if (!qword_280E2AB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8068, &qword_217018F78);
    sub_2167E68E4(&qword_280E3AB30, &qword_27CAB8070, &qword_217018F80);
    sub_2166B5298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB88);
  }

  return result;
}

unint64_t sub_2167E6420()
{
  result = qword_280E2AB58;
  if (!qword_280E2AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8078, &qword_217018F88);
    sub_2166B5298();
    sub_2167E68E4(&qword_280E3AB38, &qword_27CAB8080, &qword_217018F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB58);
  }

  return result;
}

unint64_t sub_2167E64C4()
{
  result = qword_280E2A918;
  if (!qword_280E2A918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F90, &qword_217018EB8);
    sub_2167E6550();
    sub_2167E6758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A918);
  }

  return result;
}

unint64_t sub_2167E6550()
{
  result = qword_280E2A958;
  if (!qword_280E2A958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F88, &qword_217018EB0);
    sub_2167E65DC();
    sub_2167E6668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A958);
  }

  return result;
}

unint64_t sub_2167E65DC()
{
  result = qword_280E2AA08;
  if (!qword_280E2AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8088, &qword_217018F98);
    sub_2167E626C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA08);
  }

  return result;
}

unint64_t sub_2167E6668()
{
  result = qword_280E2AB48;
  if (!qword_280E2AB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F70, &qword_217018E98);
    sub_2167E626C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8090, &qword_217018FA0);
    sub_2167E68E4(&qword_280E3AB60, &qword_27CAB8090, &qword_217018FA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB48);
  }

  return result;
}

unint64_t sub_2167E6758()
{
  result = qword_280E2A960;
  if (!qword_280E2A960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F50, &qword_217018E68);
    sub_2167E67E4();
    sub_2167E6938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A960);
  }

  return result;
}

unint64_t sub_2167E67E4()
{
  result = qword_280E2AA38;
  if (!qword_280E2AA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F48, &qword_217018E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8098, &qword_217018FA8);
    sub_2167E68E4(&qword_280E3AB58, &qword_27CAB8098, &qword_217018FA8);
    swift_getOpaqueTypeConformance2();
    sub_2167E68E4(qword_280E3AB68, &qword_27CAB80A0, &qword_217018FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA38);
  }

  return result;
}

uint64_t sub_2167E68E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2167E6938()
{
  result = qword_280E2ABB0;
  if (!qword_280E2ABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F28, &qword_217018E40);
    sub_2167E69C4();
    sub_2167E6A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABB0);
  }

  return result;
}

unint64_t sub_2167E69C4()
{
  result = qword_280E42E00;
  if (!qword_280E42E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F30, &qword_217018E48);
    sub_2166B4AF8(qword_280E42E40, type metadata accessor for ReportAConcern, &unk_217046750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E42E00);
  }

  return result;
}

unint64_t sub_2167E6A78()
{
  result = qword_280E3F8D0;
  if (!qword_280E3F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3F8D0);
  }

  return result;
}

unint64_t sub_2167E6ACC()
{
  result = qword_27CAB80A8;
  if (!qword_27CAB80A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8020, &qword_217018F30);
    sub_2167E5C78();
    sub_2167E5EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB80A8);
  }

  return result;
}

double sub_2167E6BD0()
{
  OUTLINED_FUNCTION_66_5();
  v3 = sub_21700C084();
  OUTLINED_FUNCTION_2(v3);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_2167E3BA8(v0, v6, v7, v2);
}

double sub_2167E6C8C()
{
  v3 = OUTLINED_FUNCTION_66_5();
  v4 = type metadata accessor for FlowActionPageView(v3);
  OUTLINED_FUNCTION_36(v4);

  return sub_2167E4F80(v0, v1 + 16, v2);
}

uint64_t objectdestroy_34Tm(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = a1(0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = *(v12 + 64);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2(v14);
  v16 = (v11 + v13 + *(v15 + 80)) & ~*(v15 + 80);
  (*(v10 + 8))(v4 + v11, v8);
  v17 = a4(0);
  if (!__swift_getEnumTagSinglePayload(v4 + v16, 1, v17))
  {
    OUTLINED_FUNCTION_50();
    (*(v18 + 8))(v4 + v16, v17);
  }

  return swift_deallocObject();
}

uint64_t sub_2167E6EF8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  v9 = a2(0);
  OUTLINED_FUNCTION_2(v9);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_36(v14);
  v16 = v5 + ((v11 + v13 + *(v15 + 80)) & ~*(v15 + 80));

  return a5(a1, v5 + v11, v16);
}

unint64_t sub_2167E6FFC()
{
  result = qword_27CAB81A8;
  if (!qword_27CAB81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB81A8);
  }

  return result;
}

uint64_t sub_2167E70B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2167E7110(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2167E7194(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_66_5();
  v7 = v6(v5);
  OUTLINED_FUNCTION_36(v7);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a3(v3, v9);
}

uint64_t sub_2167E7220(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2167E727C()
{
  result = qword_27CAB81C0;
  if (!qword_27CAB81C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB81C8, qword_2170190E0);
    sub_2167E5F80();
    sub_2167E6ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB81C0);
  }

  return result;
}

uint64_t sub_2167E7340@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v56[4] = *MEMORY[0x277D85DE8];
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v46 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v47 = v17;
  v48 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for EngagementEventAction(0) + 20);
  v21 = sub_21700E384();
  v49 = a3;
  v50 = v21;
  *(a3 + v20) = v21;
  v53 = a1;
  sub_21700CE04();
  v22 = v54;
  (*(v7 + 16))(v10, v54, v5);
  v23 = v51;
  sub_21700D224();
  if (v23)
  {
    (*(v7 + 8))(v22, v5);
    (*(v12 + 8))(v53, v52);
  }

  v45 = v20;
  v25 = v12;
  v51 = v5;
  (*(v47 + 32))(v49, v19, v48);
  sub_2170058C4();
  swift_allocObject();
  v26 = sub_2170058B4();
  v27 = v46;
  sub_21700CE04();
  sub_2167E78CC();
  v28 = v52;
  v29 = sub_2170058A4();
  v44[1] = v26;
  v30 = *(v25 + 8);
  v32 = v31;
  v30(v27, v28);
  v33 = objc_opt_self();
  v34 = sub_217005F94();
  v56[0] = 0;
  v35 = [v33 JSONObjectWithData:v34 options:0 error:v56];

  if (!v35)
  {
    v38 = v56[0];
    sub_217005D34();

    swift_willThrow();
    sub_21677A524(v29, v32);

    v39 = OUTLINED_FUNCTION_1_18();
    v40(v39);
    v30(v53, v28);
    (*(v47 + 8))(v49, v48);
  }

  v36 = v56[0];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  if (swift_dynamicCast())
  {
    v37 = v55;
  }

  else
  {
    v37 = sub_21700E384();
  }

  sub_21677A524(v29, v32);

  v41 = v45;
  v42 = OUTLINED_FUNCTION_1_18();
  v43(v42);
  v30(v53, v28);

  *(v49 + v41) = v37;
  return result;
}

unint64_t sub_2167E78CC()
{
  result = qword_280E2A2B8;
  if (!qword_280E2A2B8)
  {
    sub_21700CDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A2B8);
  }

  return result;
}

uint64_t sub_2167E796C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_217009EB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E2C400 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_280E73B18);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  if (qword_280E2C418 != -1)
  {
    swift_once();
  }

  v9 = sub_217009E04();
  sub_2167E7B50(v2);
  result = (*(v4 + 8))(v6, v3);
  qword_280E73B48 = v9;
  return result;
}

uint64_t sub_2167E7B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2167E7BE0(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t type metadata accessor for DownloadStatusIndicator(uint64_t a1)
{
  result = qword_280E38690;
  if (!qword_280E38690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167E7CE0(uint64_t a1)
{
  sub_2167E7D64(319);
  if (v1 <= 0x3F)
  {
    sub_2167D1C30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2167E7D64(uint64_t a1)
{
  if (!qword_280E2A3F0)
  {
    sub_21700BBA4();
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A3F0);
    }
  }
}

uint64_t sub_2167E7DD8@<X0>(uint64_t a1@<X8>)
{
  v206 = a1;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E8, &qword_2170191F8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_105();
  v203 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81F0, &qword_217019200);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v171 - v5;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81F8, &qword_217019208);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v171 - v8;
  v10 = sub_217009314();
  v11 = OUTLINED_FUNCTION_0(v10, v213);
  v185 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v13);
  v14 = sub_217006614();
  v15 = OUTLINED_FUNCTION_0(v14, v214);
  v187 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v17);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8200, &qword_217019210);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8208, &qword_217019218);
  OUTLINED_FUNCTION_0(v20, &v215);
  v193 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v23);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8210, &qword_217019220);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  v202 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v182 = &v171 - v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_70(&v171 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8218, &qword_217019228);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &v171 - v32;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8220, &qword_217019230);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8228, &qword_217019238);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v38);
  v39 = sub_2170099D4();
  v40 = OUTLINED_FUNCTION_0(v39, &v217);
  v200 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v42);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8230, &qword_217019240);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8238, &qword_217019248);
  OUTLINED_FUNCTION_0(v45, v209);
  v181 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8240, &unk_217019250);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0, qword_217019170);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = (&v171 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v55);
  v57 = &v171 - v56;
  sub_2166A6E54(v207, &v171 - v56, &qword_27CAB81E0, qword_217019170);
  v58 = sub_21700BBA4();
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    goto LABEL_2;
  }

  v171 = v3;
  v172 = v6;
  v173 = v9;
  v177 = v49;
  v174 = v30;
  v176 = v36;
  v175 = v57;
  sub_2166A6E54(v57, v54, &qword_27CAB81E0, qword_217019170);
  v66 = *(v58 - 8);
  v67 = (*(v66 + 88))(v54, v58);
  if (v67 == *MEMORY[0x277D2AFD8])
  {
    (*(v66 + 96))(v54, v58);
    v68 = *v54;
    if (qword_27CAB58E0 != -1)
    {
      OUTLINED_FUNCTION_10_10(&qword_27CAB58E0);
    }

    sub_21700AC54();
    (*(v187 + 104))(v189, *MEMORY[0x277D26A90], v188);
    LOBYTE(v212) = 0;
    v69 = v190;
    sub_217006604();
    type metadata accessor for DownloadStatusIndicator(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    sub_2170082C4();
    sub_21700B3B4();
    sub_2170083C4();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8258, &qword_217019268);
    OUTLINED_FUNCTION_5_18(v69 + *(v70 + 36));
    v71 = sub_217009C74();
    sub_217007F24();
    v72 = v191;
    v73 = v69 + *(v191 + 36);
    *v73 = v71;
    *(v73 + 8) = v74;
    *(v73 + 16) = v75;
    *(v73 + 24) = v76;
    *(v73 + 32) = v77;
    *(v73 + 40) = 0;
    v78 = v199;
    sub_2170099A4();
    v79 = sub_2167E9724();
    v80 = v192;
    sub_21700A784();
    OUTLINED_FUNCTION_67();
    v81(v78, v201);
    sub_216699778(v69, &qword_27CAB8200);
    OUTLINED_FUNCTION_19_15();
    sub_217009264();
    OUTLINED_FUNCTION_16_16();
    v171 = 30;
    v86 = OUTLINED_FUNCTION_14_11(v82, v83, v84, v85);
    v88 = v87;
    v90 = v89;
    v210 = v72;
    v211 = v79;
    OUTLINED_FUNCTION_4_19();
    v91 = v194;
    sub_21700A4E4();
    sub_21678817C(v86, v88, v90 & 1);

    OUTLINED_FUNCTION_67();
    v92(v80, v91);
    v93 = round(v68 * 100.0);
    if ((*&v93 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v93 > -9.22337204e18)
    {
      if (v93 < 9.22337204e18)
      {
        v208 = v93;
        v210 = sub_21700F784();
        v211 = v94;
        MEMORY[0x21CE9F490](37, 0xE100000000000000);
        v95 = v182;
        v96 = v202;
        sub_217008954();

        sub_216699778(v96, &qword_27CAB8210);
        v97 = v184;
        sub_2170092D4();
        v98 = v183;
        sub_2170089A4();
        OUTLINED_FUNCTION_67();
        v99(v97, v186);
        sub_216699778(v95, &qword_27CAB8210);
        sub_2166A6E54(v98, v196, &qword_27CAB8210, &qword_217019220);
        swift_storeEnumTagMultiPayload();
        sub_2167E9218();
        sub_2167E962C();
        v100 = v198;
        sub_217009554();
        sub_2166A6E54(v100, v33, &qword_27CAB8228, &qword_217019238);
        OUTLINED_FUNCTION_20_12();
        OUTLINED_FUNCTION_1_19();
        sub_2167E98B4(v101, &qword_27CAB8228, &qword_217019238, v102);
        OUTLINED_FUNCTION_0_34();
        sub_2167E98B4(v103, v104, v105, v106);
        sub_217009554();
        sub_216699778(v100, &qword_27CAB8228);
        v107 = v98;
        v108 = &qword_27CAB8210;
LABEL_20:
        sub_216699778(v107, v108);
        v57 = v175;
        return sub_216699778(v57, &qword_27CAB81E0);
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v67 == *MEMORY[0x277D2AFE8])
  {
    sub_21700ADB4();
    v72 = v178;
    if (qword_280E2C458 == -1)
    {
LABEL_12:
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_23_6(KeyPath);
      sub_217009D94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250, &qword_217019260);
      sub_2167E947C();
      sub_21700A304();

      if (qword_27CAB58E0 != -1)
      {
        OUTLINED_FUNCTION_10_10(&qword_27CAB58E0);
      }

      v110 = qword_27CAB81D8;
      v111 = swift_getKeyPath();
      v112 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248, &qword_21703E070) + 36));
      *v112 = v111;
      v112[1] = v110;
      type metadata accessor for DownloadStatusIndicator(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
      sub_2170082C4();
      v113 = sub_21700B3B4();
      OUTLINED_FUNCTION_15_9(v113, v114);
      v115 = v179;
      OUTLINED_FUNCTION_5_18(v72 + *(v179 + 36));
      v116 = v199;
      sub_2170099A4();
      v117 = sub_2167E9310();
      v118 = v72;
      v119 = v180;
      sub_21700A784();
      OUTLINED_FUNCTION_67();
      v120(v116, v201);
      sub_216699778(v118, &qword_27CAB8230);
      sub_217009264();
      OUTLINED_FUNCTION_16_16();
      v171 = 38;
      v125 = OUTLINED_FUNCTION_14_11(v121, v122, v123, v124);
      v127 = v126;
      v129 = v128;
      v131 = v130;
      v210 = v115;
      v211 = v117;
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_7_15();
      sub_21700A4E4();
      sub_21678817C(v125, v127, v129 & 1);

      OUTLINED_FUNCTION_67();
      v132(v119, v117);
      OUTLINED_FUNCTION_22_18(v115, &v216);
      swift_storeEnumTagMultiPayload();
      sub_2167E9218();
      sub_2167E962C();
      OUTLINED_FUNCTION_17_15();
      sub_217009554();
      v133 = &qword_27CAB8228;
      sub_2166A6E54(v131, v33, &qword_27CAB8228, &qword_217019238);
      OUTLINED_FUNCTION_20_12();
      OUTLINED_FUNCTION_1_19();
      sub_2167E98B4(v134, &qword_27CAB8228, &qword_217019238, v135);
      OUTLINED_FUNCTION_0_34();
      sub_2167E98B4(v136, v137, v138, v139);
LABEL_19:
      sub_217009554();
      sub_216699778(v131, v133);
      v107 = v115;
      v108 = &qword_27CAB8240;
      goto LABEL_20;
    }

LABEL_26:
    OUTLINED_FUNCTION_9_20(&qword_280E2C458);
    goto LABEL_12;
  }

  if (v67 == *MEMORY[0x277D2AFD0])
  {
    sub_21700ADB4();
    v140 = v33;
    if (qword_280E2C458 != -1)
    {
      OUTLINED_FUNCTION_9_20(&qword_280E2C458);
    }

    v141 = swift_getKeyPath();
    OUTLINED_FUNCTION_23_6(v141);
    sub_217009D94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250, &qword_217019260);
    sub_2167E947C();
    v142 = v178;
    sub_21700A304();

    v143 = [objc_opt_self() tertiaryLabelColor];
    v144 = sub_21700AC44();
    v145 = swift_getKeyPath();
    v146 = (v142 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248, &qword_21703E070) + 36));
    *v146 = v145;
    v146[1] = v144;
    type metadata accessor for DownloadStatusIndicator(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    sub_2170082C4();
    v147 = sub_21700B3B4();
    OUTLINED_FUNCTION_15_9(v147, v148);
    v115 = v179;
    OUTLINED_FUNCTION_5_18(v142 + *(v179 + 36));
    v149 = v199;
    sub_2170099A4();
    v150 = sub_2167E9310();
    v151 = v180;
    sub_21700A784();
    OUTLINED_FUNCTION_67();
    v152(v149, v201);
    sub_216699778(v142, &qword_27CAB8230);
    OUTLINED_FUNCTION_19_15();
    sub_217009264();
    OUTLINED_FUNCTION_16_16();
    v171 = 29;
    v157 = OUTLINED_FUNCTION_14_11(v153, v154, v155, v156);
    v159 = v158;
    v161 = v160;
    v131 = v162;
    v210 = v115;
    v211 = v150;
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_7_15();
    sub_21700A4E4();
    sub_21678817C(v157, v159, v161 & 1);

    OUTLINED_FUNCTION_67();
    v163(v151, v150);
    OUTLINED_FUNCTION_22_18(v115, &v202);
    swift_storeEnumTagMultiPayload();
    sub_2167E9218();
    sub_2167E9570();
    OUTLINED_FUNCTION_17_15();
    sub_217009554();
    v133 = &qword_27CAB81F8;
    sub_2166A6E54(v131, v140, &qword_27CAB81F8, &qword_217019208);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_19();
    sub_2167E98B4(v164, v165, v166, v167);
    OUTLINED_FUNCTION_0_34();
    sub_2167E98B4(v168, &qword_27CAB81F8, &qword_217019208, v169);
    goto LABEL_19;
  }

  (*(v66 + 8))(v54, v58);
  v57 = v175;
  v9 = v173;
  v6 = v172;
LABEL_2:
  v59 = v203;
  sub_21700A4F4();
  sub_2166A6E54(v59, v6, &qword_27CAB81E8, &qword_2170191F8);
  swift_storeEnumTagMultiPayload();
  sub_2167E9218();
  sub_2167E9570();
  sub_217009554();
  sub_2166A6E54(v9, v33, &qword_27CAB81F8, &qword_217019208);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_19();
  sub_2167E98B4(v60, v61, v62, v63);
  OUTLINED_FUNCTION_0_34();
  sub_2167E98B4(v64, &qword_27CAB81F8, &qword_217019208, v65);
  sub_217009554();
  sub_216699778(v9, &qword_27CAB81F8);
  sub_216699778(v59, &qword_27CAB81E8);
  return sub_216699778(v57, &qword_27CAB81E0);
}

unint64_t sub_2167E9218()
{
  result = qword_280E2B148;
  if (!qword_280E2B148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8240, &unk_217019250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8230, &qword_217019240);
    sub_2167E9310();
    swift_getOpaqueTypeConformance2();
    sub_2167E986C(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B148);
  }

  return result;
}

unint64_t sub_2167E9310()
{
  result = qword_280E2AFD8;
  if (!qword_280E2AFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8230, &qword_217019240);
    sub_2167E939C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFD8);
  }

  return result;
}

unint64_t sub_2167E939C()
{
  result = qword_280E2B1A0;
  if (!qword_280E2B1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8248, &qword_21703E070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8250, &qword_217019260);
    sub_2167E947C();
    swift_getOpaqueTypeConformance2();
    sub_2167E9520(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1A0);
  }

  return result;
}

unint64_t sub_2167E947C()
{
  result = qword_280E2B0D0;
  if (!qword_280E2B0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8250, &qword_217019260);
    sub_2167E9520(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0D0);
  }

  return result;
}

uint64_t sub_2167E9520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2167E9570()
{
  result = qword_280E2B078;
  if (!qword_280E2B078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB81E8, &qword_2170191F8);
    sub_2167E986C(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B078);
  }

  return result;
}

unint64_t sub_2167E962C()
{
  result = qword_280E2B150;
  if (!qword_280E2B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8210, &qword_217019220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8200, &qword_217019210);
    sub_2167E9724();
    swift_getOpaqueTypeConformance2();
    sub_2167E986C(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B150);
  }

  return result;
}

unint64_t sub_2167E9724()
{
  result = qword_280E2B038;
  if (!qword_280E2B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8200, &qword_217019210);
    sub_2167E97B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B038);
  }

  return result;
}

unint64_t sub_2167E97B0()
{
  result = qword_280E2B220;
  if (!qword_280E2B220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8258, &qword_217019268);
    sub_2167E986C(&qword_280E4A4A8, MEMORY[0x277D26A98], MEMORY[0x277D26A88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B220);
  }

  return result;
}

uint64_t sub_2167E986C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167E98B4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    sub_2167E9218();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2167E9934()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  result = sub_21700AC44();
  qword_27CAB81D8 = result;
  return result;
}

uint64_t sub_2167E9974(uint64_t a1)
{
  result = sub_217009E94();
  qword_280E2C460 = result;
  return result;
}

unint64_t sub_2167E9994()
{
  result = qword_280E2A978;
  if (!qword_280E2A978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8260, &unk_2170192D0);
    sub_2167E98B4(&qword_280E2AA78, &qword_27CAB8228, &qword_217019238, sub_2167E962C);
    sub_2167E98B4(&qword_280E2AA80, &qword_27CAB81F8, &qword_217019208, sub_2167E9570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A978);
  }

  return result;
}

void sub_2167E9A78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  [a1 setBackButtonDisplayMode_];
  if ((a5 & 1) == 0)
  {
    [a1 setLargeTitleDisplayMode_];
    [a1 _setSupportsTwoLineLargeTitles_];
  }

  v9 = sub_2167EA10C(a1);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v18 = v10;
  sub_2167E9C44(&v18, a3, a4, a5 & 0x101);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 setHidden_];
    v17 = v12;
    MEMORY[0x28223BE20](v13);
    v16[2] = &v17;
    sub_216CA1CB4(sub_2167EA204, v16, v10);
    if (v14)
    {
    }

    else
    {
      v15 = v12;
      MEMORY[0x21CE9F610]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      sub_2167EA16C(v18, a1);
    }
  }

  else
  {
  }
}

void sub_2167E9C44(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = *a1;
  v6 = sub_2166BF3C8(*a1);
  sub_21700DF14();
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CEA0220](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  if ((a4 & 0x100) != 0)
  {
    type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();

    sub_2167E9D50(v10);
  }
}

id sub_2167E9D50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SocialProfileButtonView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 28);
  *&v6[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = 0;
  *v6 = sub_2167EA268;
  *(v6 + 1) = v9;
  v6[16] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8268, &unk_2170193B8));

  v10 = sub_2170087C4();
  v11 = [objc_allocWithZone(v2) initWithCustomView_];
  [v11 _setPrefersNoPlatter_];

  return v11;
}

id sub_2167E9EA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2167E9EFC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2167E9F90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2167E9FF0(void *a1, uint64_t a2)
{
  if (*(v2 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_2167E9A78(a1, a2, *v2, *(v2 + 8), v3 | v4 | *(v2 + 16));
}

uint64_t sub_2167EA034(char a1)
{
  if (a1 == 4)
  {
    return 0;
  }

  else
  {
    return qword_2170193C8[a1];
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_2167EA078(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2167EA0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2167EA10C(void *a1)
{
  v1 = [a1 rightBarButtonItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2167EA224();
  v3 = sub_21700E824();

  return v3;
}

void sub_2167EA16C(uint64_t a1, void *a2)
{
  sub_2167EA224();
  v3 = sub_21700E804();

  [a2 setRightBarButtonItems_];
}

unint64_t sub_2167EA224()
{
  result = qword_280E29D18;
  if (!qword_280E29D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D18);
  }

  return result;
}

_BYTE *_s7StylingOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2167EA350(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167EA3A4(char a1)
{
  if (a1)
  {
    return 0x6B63697262;
  }

  else
  {
    return 0x657261757173;
  }
}

uint64_t sub_2167EA3F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2167EA350(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2167EA428@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167EA3A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2167EA458()
{
  result = qword_27CAB8270;
  if (!qword_27CAB8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8270);
  }

  return result;
}

uint64_t sub_2167EA4AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2167EA648(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v14 = 0;
  }

  else
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v9 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v8 < 0x7FFFFFFF)
          {
            v17 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v11) = v15;
        break;
      case 2:
        *(a1 + v11) = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2167EA890(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EA904(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EA978(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EA9B4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C118);
  __swift_project_value_buffer(v0, qword_280E2C118);
  return sub_217007C94();
}

uint64_t sub_2167EAA40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  sub_217006A94();
  OUTLINED_FUNCTION_9();
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for MappingInvalidationUpdate(0, *(v6 + 80), *(v6 + 88), v8);
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_2167EAAF4(uint64_t a1)
{
  result = sub_217006A94();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for PageUpdateMappingCoordinator(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

int *sub_2167EABA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = *(a2 + 16);
  v6 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  OUTLINED_FUNCTION_16();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v8 + 16))(v11, a1, v6, v18);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    (*(v8 + 8))(v11, v6);
    sub_2167EB34C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v22 = *(v13 + 32);
    v22(v20, v11, v5);
    v22(v16, v20, v5);
    return sub_216E41D9C(v16, 0, 0, 0, 0, v5, *(a2 + 24), v24);
  }
}

uint64_t sub_2167EADCC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2167EAE64, v4, v3);
}

uint64_t sub_2167EAE64()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_217006A94();
  OUTLINED_FUNCTION_9();
  (*(v3 + 16))(v2, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2167EAEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a1;
  v30 = a5;
  v6 = *(a4 + 16);
  v7 = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v27 - v19;
  (*(v16 + 16))(&v27 - v19, a3, v14, v18);
  if (__swift_getEnumTagSinglePayload(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v20, v14);
    v21 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v20, AssociatedTypeWitness);
  }

  (*(v7 + 64))(v28, v21, v6, v7);
  v23 = swift_getAssociatedConformanceWitness();
  if (v21)
  {
    (*(v23 + 48))(AssociatedTypeWitness, v23);
    v24 = sub_21694D558(v21);

    v25 = v24 ^ 1;
  }

  else
  {
    v25 = 1;
  }

  return sub_216E41E50(v13, v25 & 1, AssociatedTypeWitness, v23, v30);
}

uint64_t sub_2167EB1F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2166DFAC0;

  return sub_2167EADCC(a1);
}

uint64_t sub_2167EB2D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EB310(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2167EB34C()
{
  result = qword_27CAB8278;
  if (!qword_27CAB8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8278);
  }

  return result;
}

uint64_t sub_2167EB3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v95 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = &v78 - v5;
  v93 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v87 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v84 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  v85 = &v78 - v10;
  v11 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v98 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v83 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v78 - v16;
  v18 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v89 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  v88 = &v78 - v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  MEMORY[0x28223BE20](v28);
  sub_21700D7A4();
  v29 = a1;
  sub_21700CE04();
  v30 = *(v98 + 16);
  v91 = v11;
  v81 = v98 + 16;
  v82 = v30;
  v30(v17, v95, v11);
  sub_21700D734();
  v31 = a1;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v34 = v33;
  v36 = *(v20 + 8);
  v35 = v20 + 8;
  v37 = v18;
  v38 = v18;
  v39 = v36;
  (v36)(v27, v38);
  v90 = v34;
  if (v34)
  {
    v40 = v35;
    v41 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
    v96 = v32;
    v97 = v34;
    v42 = v94;
    sub_21700F364();
    v43 = v88;
    sub_21700CE04();
    v44 = sub_21700CD24();
    v46 = v45;
    (v39)(v43, v37);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    *(v42 + *(v41 + 24)) = v47;
    v48 = v89;
    v88 = 0x8000000217082700;
    sub_21700CE04();
    v49 = v92;
    sub_21700CD74();
    v89 = v40;
    (v39)(v48, v37);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v93);
    v51 = v42;
    if (EnumTagSinglePayload == 1)
    {
      sub_21669987C(v92, &qword_27CAB78D0, &unk_21701A800);
      v52 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_35();
      v55 = sub_2167EBBB4(v53, v54, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_3_0(v55);
      *v56 = 0xD000000000000010;
      v56[1] = v88;
      v56[2] = v41;
      (*(*(v52 - 8) + 104))(v56, *MEMORY[0x277D22530], v52);
      swift_willThrow();
      v57 = OUTLINED_FUNCTION_4_20();
      v58(v57);
      (v39)(v31, v37);
    }

    else
    {
      v79 = v41;
      v80 = v31;
      v88 = v39;
      v68 = v87;
      v69 = v85;
      v70 = v93;
      (*(v87 + 32))(v85, v92, v93);
      (*(v68 + 16))(v84, v69, v70);
      v71 = v95;
      v72 = v91;
      v82(v83, v95, v91);
      type metadata accessor for ContentDescriptor(0);
      sub_2167EBBB4(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
      v73 = v86;
      v74 = sub_21700E934();
      if (!v73)
      {
        v77 = v74;
        (*(v98 + 8))(v71, v72);
        (v88)(v80, v37);
        result = (*(v68 + 8))(v69, v93);
        *(v51 + *(v79 + 28)) = v77;
        return result;
      }

      (*(v98 + 8))(v71, v72);
      (v88)(v80, v37);
      (*(v68 + 8))(v69, v93);
    }
  }

  else
  {
    v59 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_35();
    v62 = sub_2167EBBB4(v60, v61, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v62);
    v64 = v63;
    v65 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
    *v64 = 25705;
    v64[1] = 0xE200000000000000;
    v64[2] = v65;
    (*(*(v59 - 8) + 104))(v64, *MEMORY[0x277D22530], v59);
    swift_willThrow();
    v66 = OUTLINED_FUNCTION_4_20();
    v67(v66);
    (v39)(v29, v37);
    v51 = v94;
  }

  result = sub_21669987C(v51, &qword_27CAB6D58, &unk_217014E30);
  if (v90)
  {
    v76 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader(0);
    return sub_216788110(v51 + *(v76 + 20));
  }

  return result;
}

uint64_t sub_2167EBBB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167EBC0C()
{
  OUTLINED_FUNCTION_33();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  type metadata accessor for ModalActionModelDestinations.Destination(0);
  v0[11] = swift_task_alloc();
  v4 = sub_21700DFD4();
  v0[12] = v4;
  v0[13] = *(v4 - 8);
  v0[14] = swift_task_alloc();
  sub_21700EA34();
  v0[15] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v0[16] = v6;
  v0[17] = v5;

  return MEMORY[0x2822009F8](sub_2167EBD2C, v6, v5);
}

uint64_t sub_2167EBD2C()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_116();
  sub_21700E094();
  sub_216685F4C(0, &qword_280E29D68, 0x277CB8F48);
  sub_21700E094();
  v1 = v0[7];
  v2 = [v1 ams_activeiTunesAccount];
  v0[18] = v2;

  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_2167EBE50;
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];

  return sub_2167EC4B8(v5, v7, v4, v2, v6);
}

uint64_t sub_2167EBE50()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_2167EC378;
  }

  else
  {
    v7 = sub_2167EBF84;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2167EBF84()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[9];
  v2 = *(v1 + *(type metadata accessor for OpenFinancePageAction(0) + 36));
  if (v2 == 2)
  {
    goto LABEL_2;
  }

  if (v2)
  {
  }

  else
  {
    v7 = sub_21700F7D4();

    if ((v7 & 1) == 0)
    {
LABEL_2:
      v3 = type metadata accessor for PresentSheetAction(0);
      v0[5] = v3;
      v4 = qword_280E3EA78;
      v5 = type metadata accessor for PresentSheetAction;
      v6 = &unk_217045370;
      goto LABEL_7;
    }
  }

  v3 = type metadata accessor for PresentFullScreenCoverAction(0);
  v0[5] = v3;
  v4 = &qword_27CAB8298;
  v5 = type metadata accessor for PresentFullScreenCoverAction;
  v6 = &unk_217014300;
LABEL_7:
  v8 = sub_2167EE594(v4, v5, v6);
  v9 = v0[11];
  v10 = v0[9];
  v0[6] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2167EE6CC(v9, boxed_opaque_existential_1 + *(v3 + 20), type metadata accessor for ModalActionModelDestinations.Destination);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v12 + 16))(boxed_opaque_existential_1, v10);
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_2167EC1A4;
  v14 = v0[10];
  v15 = v0[8];

  return (sub_216EAE324)(v15, v0 + 2, v14);
}

uint64_t sub_2167EC1A4()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_2167EC414;
  }

  else
  {
    v7 = sub_2167EC2D8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2167EC2D8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_10_11();

  OUTLINED_FUNCTION_1_20();
  v1 = OUTLINED_FUNCTION_116();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2167EC378()
{
  OUTLINED_FUNCTION_31();

  v1 = OUTLINED_FUNCTION_116();
  v2(v1);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2167EC414()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_10_11();

  OUTLINED_FUNCTION_1_20();
  v1 = OUTLINED_FUNCTION_116();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2167EC4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[82] = a5;
  v5[81] = a4;
  v5[80] = a3;
  v5[79] = a2;
  v5[78] = a1;
  v6 = type metadata accessor for OpenFinancePageAction(0);
  v5[83] = v6;
  v7 = *(v6 - 8);
  v5[84] = v7;
  v5[85] = *(v7 + 64);
  v5[86] = swift_task_alloc();
  v8 = sub_217005EF4();
  v5[87] = v8;
  v5[88] = *(v8 - 8);
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  sub_21700EA34();
  v5[92] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v5[93] = v10;
  v5[94] = v9;

  return MEMORY[0x2822009F8](sub_2167EC63C, v10, v9);
}

uint64_t sub_2167EC63C()
{
  OUTLINED_FUNCTION_93();
  sub_216B80558(v0[79] + *(v0[83] + 24), v0[80], v0[91]);
  v1 = sub_21700DF34();
  v0[95] = v1;
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = sub_2167EC780;
  v3 = v0[91];

  return sub_2167ED744(v3, v1);
}

uint64_t sub_2167EC780()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 776) = v7;
  *(v8 + 784) = v0;

  swift_unknownObjectRelease();
  v9 = *(v2 + 752);
  v10 = *(v2 + 744);
  if (v0)
  {
    v11 = sub_2167ED690;
  }

  else
  {
    v11 = sub_2167EC8D8;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2167EC8D8()
{
  v126 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 632);
  if (*(v2 + *(v1 + 28)))
  {
    v3 = *(v2 + *(v1 + 28));
  }

  else
  {
    v3 = sub_21700E384();
    v1 = *(v0 + 664);
    v2 = *(v0 + 632);
  }

  v4 = *(v2 + *(v1 + 32));
  sub_21700DF14();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = sub_21700E384();
  }

  *(v0 + 80) = MEMORY[0x277D839B0];
  *(v0 + 56) = 1;
  sub_2166EF9C4((v0 + 56), (v0 + 88));
  sub_21700DF14();
  swift_isUniquelyReferenced_nonNull_native();
  v125 = v5;
  sub_2166EF9D4();
  v122 = v5;
  sub_216934F28();
  if (*(v0 + 176))
  {
    sub_2166EF9C4((v0 + 152), (v0 + 120));
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v7 = sub_2166E2BA8(v6);
    if (v8)
    {
      v9 = MEMORY[0x277D837D0];
    }

    else
    {
      v7 = 0;
      v9 = 0;
      *(v0 + 136) = 0;
    }

    *(v0 + 120) = v7;
    *(v0 + 128) = v8;
    *(v0 + 144) = v9;
    if (*(v0 + 176))
    {
      sub_216697664(v0 + 152, &unk_27CABF7A0, &unk_217014D20);
    }
  }

  if (*(v0 + 144))
  {
    sub_2166EF9C4((v0 + 120), (v0 + 568));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_16();
    sub_2166EF9D4();
  }

  else
  {
    sub_216697664(v0 + 120, &unk_27CABF7A0, &unk_217014D20);
    v10 = sub_2166AF66C(7368801, 0xE300000000000000);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      v125 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
      sub_21700F554();

      sub_2166EF9C4((*(v3 + 56) + 32 * v12), (v0 + 184));
      sub_21700F574();
    }

    else
    {
      *(v0 + 200) = 0u;
      *(v0 + 184) = 0u;
    }

    sub_216697664(v0 + 184, &unk_27CABF7A0, &unk_217014D20);
  }

  sub_216934F28();
  v13 = MEMORY[0x277D837D0];
  if (*(v0 + 272))
  {
    sub_2166EF9C4((v0 + 248), (v0 + 216));
  }

  else
  {
    *(v0 + 240) = MEMORY[0x277D837D0];
    *(v0 + 216) = 0xD000000000000011;
    *(v0 + 224) = 0x8000000217082740;
  }

  sub_2166EF9C4((v0 + 216), (v0 + 280));
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_7_16();
  sub_2166EF9D4();
  v14 = v125;
  sub_216934F28();
  if (*(v0 + 368))
  {
    sub_2166EF9C4((v0 + 344), (v0 + 312));
  }

  else
  {
    sub_216685F4C(0, &qword_280E29BF0, 0x277D7FCA8);
    v15 = sub_2166A6590();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 longLongValue];

      v18 = MEMORY[0x277D84A28];
    }

    else
    {
      v17 = 0;
      v18 = 0;
      *(v0 + 320) = 0;
      *(v0 + 328) = 0;
    }

    *(v0 + 312) = v17;
    *(v0 + 336) = v18;
    if (*(v0 + 368))
    {
      sub_216697664(v0 + 344, &unk_27CABF7A0, &unk_217014D20);
    }
  }

  if (*(v0 + 336))
  {
    sub_2166EF9C4((v0 + 312), (v0 + 536));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_16();
    sub_2166EF9D4();
    v14 = v125;
  }

  else
  {
    sub_216697664(v0 + 312, &unk_27CABF7A0, &unk_217014D20);
    v19 = sub_2166AF66C(1682535268, 0xE400000000000000);
    if (v20)
    {
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      v125 = v14;
      v14 = *(v14 + 24);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
      v23 = OUTLINED_FUNCTION_11_15(v22);
      OUTLINED_FUNCTION_9_21(v23, v24, v25, v26, v27, v28, v29, v30, v100, v101, v102, v104, v106, v108, v110, v112, v115, v118, v122, v125);
      sub_2166EF9C4((*(v14 + 56) + 32 * v21), (v0 + 376));
      sub_21700F574();
    }

    else
    {
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
    }

    sub_216697664(v0 + 376, &unk_27CABF7A0, &unk_217014D20);
  }

  sub_216934F28();
  if (*(v0 + 464))
  {
    sub_2166EF9C4((v0 + 440), (v0 + 408));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
    sub_21700D4B4();
    v31 = *(v0 + 40);
    if (v31)
    {
      v32 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v33 = (*(v32 + 8))(v31, v32);
      *(v0 + 432) = v13;
      *(v0 + 408) = v33;
      *(v0 + 416) = v34;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    else
    {
      sub_216697664(v0 + 16, &qword_27CAB71A8, &qword_217015FA0);
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
    }

    if (*(v0 + 464))
    {
      sub_216697664(v0 + 440, &unk_27CABF7A0, &unk_217014D20);
    }
  }

  if (*(v0 + 432))
  {
    sub_2166EF9C4((v0 + 408), (v0 + 504));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_16();
    sub_2166EF9D4();
  }

  else
  {
    sub_216697664(v0 + 408, &unk_27CABF7A0, &unk_217014D20);
    v35 = sub_2166AF66C(0x746E6F4365676170, 0xEB00000000747865);
    if (v36)
    {
      v37 = v35;
      swift_isUniquelyReferenced_nonNull_native();
      v125 = v14;
      v38 = *(v14 + 24);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
      v40 = OUTLINED_FUNCTION_11_15(v39);
      OUTLINED_FUNCTION_9_21(v40, v41, v42, v43, v44, v45, v46, v47, v100, v101, v102, v104, v106, v108, v110, v112, v115, v118, v122, v125);
      sub_2166EF9C4((*(v38 + 56) + 32 * v37), (v0 + 472));
      sub_21700F574();
    }

    else
    {
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0u;
    }

    sub_216697664(v0 + 472, &unk_27CABF7A0, &unk_217014D20);
  }

  v48 = *(v0 + 776);
  v49 = sub_21700E344();
  v50 = sub_21700E344();
  if (!v48)
  {
    v85 = *(v0 + 728);
    v86 = *(v0 + 720);
    v87 = *(v0 + 704);
    v88 = *(v0 + 696);
    v107 = *(v0 + 688);
    v109 = *(v0 + 672);
    v114 = *(v0 + 656);
    v117 = v85;
    v89 = *(v0 + 648);
    v105 = *(v0 + 632);
    v121 = *(v0 + 624);

    v103 = sub_21700DF34();
    (*(v87 + 16))(v86, v85, v88);
    type metadata accessor for CommerceWebViewModel(0);
    swift_allocObject();
    v90 = v89;
    v124 = v50;
    v91 = v49;
    v93 = sub_216ECCFA8(v103, v86, v89, v50, v49, v92);
    sub_2167EE6CC(v105, v107, type metadata accessor for OpenFinancePageAction);
    v94 = (*(v109 + 80) + 24) & ~*(v109 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = v114;
    sub_2167EE5DC(v107, v95 + v94);

    sub_216ECC0FC(sub_2167EE640, v95);

    (*(v87 + 8))(v117, v88);
    *v121 = v93;
    type metadata accessor for ModalActionModelDestinations.Destination(0);
LABEL_61:
    swift_storeEnumTagMultiPayload();
    goto LABEL_62;
  }

  if (v48 == 1)
  {
    v58 = *(v0 + 728);
    v59 = *(v0 + 720);
    v60 = *(v0 + 704);
    v61 = *(v0 + 696);
    v62 = *(v0 + 648);

    v63 = sub_21700DF34();
    v64 = v58;
    v65 = *(v60 + 16);
    v65(v59, v64, v61);
    type metadata accessor for CommerceWebViewModel(0);
    swift_allocObject();
    v66 = v62;
    v123 = v50;
    v120 = v49;
    v116 = sub_216ECCFA8(v63, v59, v62, v50, v49, v67);
    if (qword_27CAB58E8 != -1)
    {
      swift_once();
    }

    v68 = *(v0 + 728);
    v69 = *(v0 + 712);
    v70 = *(v0 + 696);
    v71 = sub_217007CA4();
    __swift_project_value_buffer(v71, qword_27CAB8280);
    v65(v69, v68, v70);
    v72 = sub_217007C84();
    v73 = sub_21700ED84();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 728);
    v76 = *(v0 + 712);
    v77 = *(v0 + 704);
    v78 = *(v0 + 696);
    if (v74)
    {
      v79 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v125 = v111;
      *v79 = 136446210;
      sub_2167EE594(&qword_27CAB82A0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v80 = sub_21700F784();
      v113 = v75;
      v82 = v81;
      v83 = *(v77 + 8);
      v83(v76, v78);
      v84 = sub_2166A85FC(v80, v82, &v125);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_216679000, v72, v73, "AMSParserURLType .webLegacy is not supported. URL: %{public}s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x21CEA1440](v111, -1, -1);
      MEMORY[0x21CEA1440](v79, -1, -1);

      v83(v113, v78);
    }

    else
    {

      v98 = *(v77 + 8);
      v98(v76, v78);
      v98(v75, v78);
    }

    **(v0 + 624) = v116;
    type metadata accessor for ModalActionModelDestinations.Destination(0);
    goto LABEL_61;
  }

  if (v48 != 2)
  {
    v96 = *(v0 + 776);
    sub_21700F3B4();
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    MEMORY[0x21CE9F490](0xD000000000000012, 0x80000002170827A0);
    *(v0 + 616) = v96;
    type metadata accessor for AMSParserURLType(0);
    sub_21700F544();
    return sub_21700F584();
  }

  v51 = *(v0 + 728);
  v52 = *(v0 + 720);
  v53 = *(v0 + 704);
  v54 = *(v0 + 696);
  v119 = *(v0 + 648);
  v55 = *(v0 + 624);

  v56 = sub_21700DF34();
  (*(v53 + 32))(v52, v51, v54);
  type metadata accessor for MarketingSheetModel(0);
  swift_allocObject();
  *v55 = sub_216977FD0(v56, v52, v119, v50, v49);
  type metadata accessor for ModalActionModelDestinations.Destination(0);
  swift_storeEnumTagMultiPayload();
  v57 = v119;
LABEL_62:

  OUTLINED_FUNCTION_3();

  return v99();
}

uint64_t sub_2167ED690()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[87];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2167ED744(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2167ED764, 0, 0);
}

uint64_t sub_2167ED764()
{
  OUTLINED_FUNCTION_93();
  v1 = [objc_allocWithZone(MEMORY[0x277CEE6C8]) initWithBag_];
  v2 = sub_217005E04();
  v3 = [v1 typeForURL_];
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2167ED8D8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82B8, &unk_2170198F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2166A7F20;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2167ED8D8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_2167EDA60;
  }

  else
  {
    v5 = sub_2167ED9E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2167ED9E0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 144);

  v2 = [v1 integerValue];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2167EDA60()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2167EDAC8(uint64_t a1, void (*a2)(__int128 *, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v51 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for PresentSheetAction(0);
  MEMORY[0x28223BE20](v10);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for MusicAppDestination.SharePageDescriptor(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0x6E6F69746361;
  v53 = 0xE600000000000000;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(&v54);
  if (!v58)
  {
    goto LABEL_16;
  }

  v44 = a4;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v54 = 0u;
    v55 = 0u;
    a2(&v54, 0);
    sub_216697664(&v54, &unk_27CABF7A0, &unk_217014D20);
    return 0;
  }

  v43 = v7;
  v45 = a2;
  if (v52 == 0x616853636973756DLL && v53 == 0xEF74656568536572)
  {

    a2 = v45;
  }

  else
  {
    v22 = sub_21700F7D4();

    a2 = v45;
    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v52 = 0x736D61726170;
  v53 = 0xE600000000000000;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(&v54);
  if (!v58)
  {
LABEL_16:
    v26 = &unk_27CABF7A0;
    v27 = &unk_217014D20;
    v28 = &v57;
LABEL_17:
    sub_216697664(v28, v26, v27);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82B0, &unk_2170198E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_216935010();
  if (!*(&v55 + 1))
  {

LABEL_21:
    v26 = &qword_27CABF7B0;
    v27 = &qword_217016E20;
    v28 = &v54;
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v23 = sub_217005F64();
  v25 = v24;

  if (v25 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_216935010();
  a2 = v45;
  if (!*(&v55 + 1))
  {

    sub_21677A510(v23, v25);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_21677A510(v23, v25);
    goto LABEL_18;
  }

  v42 = v23;
  v31 = sub_21700F5E4();

  if (v31)
  {
    if (v31 != 1)
    {
      sub_21677A510(v42, v25);
LABEL_15:

      a2 = v45;
      goto LABEL_18;
    }

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v18 + 24);
  v34 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v20[v33], 1, 1, v34);
  *v20 = v42;
  *(v20 + 1) = v25;
  v20[16] = v32;
  sub_216935010();

  if (*(&v55 + 1))
  {
    v35 = swift_dynamicCast();
    v36 = v43;
    if (v35)
    {
      sub_217005ED4();

      sub_2167EE784(v17, &v20[v33]);
    }
  }

  else
  {
    sub_216697664(&v54, &qword_27CABF7B0, &qword_217016E20);
    v36 = v43;
  }

  type metadata accessor for ObjectGraph(0);
  v37 = v48;
  sub_21700E094();
  v38 = v49;
  sub_2167EE6CC(v20, &v49[*(v10 + 20)], type metadata accessor for MusicAppDestination.SharePageDescriptor);
  type metadata accessor for MusicAppDestination(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ModalActionModelDestinations.Destination(0);
  v29 = 1;
  swift_storeEnumTagMultiPayload();
  v39 = sub_21700D284();
  (*(*(v39 - 8) + 16))(v38, v46, v39);
  *(&v55 + 1) = v10;
  v56 = sub_2167EE594(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
  sub_2167EE6CC(v38, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  v41 = v50;
  (*(v50 + 104))(v9, *MEMORY[0x277D21E18], v36);
  sub_21700D5E4();

  (*(v41 + 8))(v9, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  v54 = 0u;
  v55 = 0u;
  v45(&v54, 0);
  sub_216697664(&v54, &unk_27CABF7A0, &unk_217014D20);
  sub_2167EE72C(v38, type metadata accessor for PresentSheetAction);
  (*(v47 + 8))(v14, v37);
  sub_2167EE72C(v20, type metadata accessor for MusicAppDestination.SharePageDescriptor);
  return v29;
}

uint64_t sub_2167EE30C()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167EE3B8;

  return sub_2167EBC0C();
}

uint64_t sub_2167EE3B8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

unint64_t sub_2167EE4A0(uint64_t a1)
{
  result = sub_2166D9DAC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EE514()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB8280);
  __swift_project_value_buffer(v0, qword_27CAB8280);
  return sub_217007C94();
}

uint64_t sub_2167EE594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167EE5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenFinancePageAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167EE640(uint64_t a1, void (*a2)(__int128 *, void), uint64_t a3)
{
  v7 = *(type metadata accessor for OpenFinancePageAction(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_2167EDAC8(a1, a2, a3, v8, v9);
}

uint64_t sub_2167EE6CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167EE72C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167EE784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CuratorContextMenu(uint64_t a1)
{
  result = qword_280E3F0A8;
  if (!qword_280E3F0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167EE868(uint64_t a1)
{
  sub_2167B83B4(319);
  if (v1 <= 0x3F)
  {
    sub_2167EE974(319);
    if (v2 <= 0x3F)
    {
      sub_21700C554();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MenuConfiguration(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2167EE91C()
{
  result = qword_280E45220[0];
  if (!qword_280E45220[0])
  {
    type metadata accessor for MenuBuilder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E45220);
  }

  return result;
}

void sub_2167EE974(uint64_t a1)
{
  if (!qword_280E2B4C0)
  {
    sub_2170075A4();
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B4C0);
    }
  }
}

uint64_t sub_2167EE9E8()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for CuratorContextMenu(0);
    v6 = *(v5 + 24);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64788(v0 + v6, v4, v0 + *(v5 + 28));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

unint64_t sub_2167EEB60()
{
  result = qword_27CAB82C0;
  if (!qword_27CAB82C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB82C8, &unk_217035570);
    sub_2167EEBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB82C0);
  }

  return result;
}

unint64_t sub_2167EEBE4()
{
  result = qword_27CAB82D0;
  if (!qword_27CAB82D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB82D8, &unk_217019970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB82D0);
  }

  return result;
}

uint64_t sub_2167EEC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v27 = sub_21700D2A4();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchAction(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_2167EF578(a1, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21700EA34();
  swift_unknownObjectRetain();

  v18 = sub_21700EA24();
  v19 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v18;
  v20[3] = v21;
  v22 = v26;
  v20[4] = v25;
  v20[5] = v22;
  v20[6] = a3;
  sub_216782640(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_21677BBA0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v27);
  return sub_21700E1F4();
}

uint64_t sub_2167EEEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[9] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8[10] = AssociatedConformanceWitness;
  v8[11] = *(AssociatedConformanceWitness + 8);
  v11 = swift_getAssociatedTypeWitness();
  v8[12] = v11;
  v8[13] = *(v11 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v12 = sub_21700F164();
  v8[16] = v12;
  v8[17] = *(v12 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = *(AssociatedTypeWitness - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  sub_21700EA34();
  v8[22] = sub_21700EA24();
  v14 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2167EF120, v14, v13);
}

uint64_t sub_2167EF120()
{
  v33 = v0;
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];

  v32 = xmmword_217016EE0;
  (*(v3 + 16))(&v32, v2, v3);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  else
  {
    v4 = v0[20];
    v5 = v0[19];
    v30 = v0[15];
    v31 = v0[14];
    v6 = v0[12];
    v7 = v0[13];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    (*(v5 + 32))();
    (*(v9 + 56))(v10, v9);
    sub_21700F3C4();
    v11 = *(v5 + 8);
    v11(v4, v8);
    sub_21700F3C4();
    swift_getAssociatedConformanceWitness();
    v12 = sub_21700E494();
    v13 = *(v7 + 8);
    v13(v31, v6);
    v13(v30, v6);
    if ((v12 & 1) != 0 && (*(v0[8] + 104))(v0[7]))
    {
      MusicStackAuthority.popToRoot()();
    }

    v11(v0[21], v0[9]);
  }

  v14 = v0[5];
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
    sub_21700DF14();
  }

  else
  {
    v16 = 0;
  }

  type metadata accessor for DeepLinkInfoProvider();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v17 = v0[2];
  v18 = type metadata accessor for SearchAction(0);
  v19 = *(v14 + *(v18 + 24));
  if (*(v14 + *(v18 + 28)))
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v17 + 16);
  v22 = *(v17 + 24);
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  *(v17 + 32) = v20 | v19;
  sub_2167EF724(v21, v22);
  v24 = [objc_opt_self() defaultCenter];
  if (qword_280E29C70 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[8];
  v27 = qword_280E739F0;
  v0[3] = v0[4];
  type metadata accessor for SearchActionImplementation(0, v25, v26, v23);
  [v24 postNotificationName:v27 object:sub_21700F7B4()];
  swift_unknownObjectRelease();

  v28 = v0[1];

  return v28();
}

uint64_t sub_2167EF4E4()
{
  result = sub_21700E4D4();
  qword_280E739F0 = result;
  return result;
}

unint64_t sub_2167EF520()
{
  result = qword_280E44778[0];
  if (!qword_280E44778[0])
  {
    type metadata accessor for SearchAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E44778);
  }

  return result;
}

uint64_t sub_2167EF578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167EF5DC(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for SearchAction(0) - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2166DFAC0;

  return sub_2167EEEE4(a1, v9, v10, v11, v1 + v8, v12, v6, v5);
}

uint64_t sub_2167EF724(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2167EF738(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  *(v2 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC7MusicUI23ShareMenuActionProvider_actionDispatcher, v9, v4);
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_21700D4B4();

  *(v2 + OBJC_IVAR____TtC7MusicUI23ShareMenuActionProvider_userSocialProfileCoordinator) = v11[1];
  return v2;
}

uint64_t sub_2167EF884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a2;
  v104 = a5;
  v103 = sub_2170075A4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = v8;
  v101 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ShareMusicItemAction(0);
  v95 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v98 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v82 - v11;
  v93 = sub_21700CFB4();
  v13 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_217005EF4();
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21700D704();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v89 = sub_21700D284();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a4;
  sub_21690696C(v29, v30, v31, v32, v33, v34, v35, v36, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v84 = v37;
  v85 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v40 = (a3 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v41 = v40[1];
  v42 = MEMORY[0x277D837D0];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;
  *(inited + 72) = v42;
  *(inited + 80) = 1684957547;
  *(inited + 88) = 0xE400000000000000;
  sub_21700DF14();
  v97 = a1;
  *(inited + 96) = sub_21690764C();
  *(inited + 104) = v43;
  *(inited + 120) = v42;
  *(inited + 128) = 0x657461676976616ELL;
  *(inited + 168) = v42;
  *(inited + 136) = 0xEA00000000006F54;
  *(inited + 144) = 0x6568536572616853;
  *(inited + 152) = 0xEA00000000007465;
  v44 = sub_21700E384();
  v106 = v26;
  v107 = v15;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v15);
  v45 = v20;
  sub_21700D6F4();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v110 = v44;
  sub_2166EF9C4(&v110, v109);
  v46 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v108 = v46;
  sub_2166EF9D4();
  v47 = v108;
  v111 = v42;
  v48 = 0xE500000000000000;
  *&v110 = 0x6572616873;
  *(&v110 + 1) = 0xE500000000000000;
  sub_2166EF9C4(&v110, v109);
  swift_isUniquelyReferenced_nonNull_native();
  v108 = v47;
  sub_2166EF9D4();
  v49 = v108;
  v50 = 0x79726F7473;
  switch(v28)
  {
    case 1:
      break;
    case 2:
      v48 = 0xE400000000000000;
      v50 = 1701998445;
      break;
    case 3:
      v50 = 0x636972796CLL;
      break;
    case 4:
      v50 = 0xD000000000000010;
      v48 = 0x80000002170801D0;
      break;
    case 5:
      v48 = 0x80000002170801F0;
      v50 = 0xD000000000000012;
      break;
    case 6:
      v48 = 0xE900000000000075;
      v50 = 0x6E654D6570697773;
      break;
    case 7:
      v48 = 0x8000000217080210;
      v50 = 0xD000000000000015;
      break;
    default:
      v48 = 0xE800000000000000;
      v50 = 0x6472616F6279656BLL;
      break;
  }

  v111 = v42;
  *&v110 = v50;
  *(&v110 + 1) = v48;
  sub_2166EF9C4(&v110, v109);
  swift_isUniquelyReferenced_nonNull_native();
  v108 = v49;
  sub_2166EF9D4();
  v51 = v108;
  sub_2167DE934(v106, v23);
  v52 = v107;
  if (__swift_getEnumTagSinglePayload(v23, 1, v107) == 1)
  {
    sub_216697664(v23, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v53 = v83;
    v54 = v82;
    (*(v83 + 32))(v82, v23, v52);
    v55 = sub_217005DE4();
    v111 = v42;
    *&v110 = v55;
    *(&v110 + 1) = v56;
    sub_2166EF9C4(&v110, v109);
    swift_isUniquelyReferenced_nonNull_native();
    v108 = v51;
    sub_2166EF9D4();
    v51 = v108;
    (*(v53 + 8))(v54, v52);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v57 = sub_21700CF84();
  v58 = __swift_project_value_buffer(v57, qword_280E73DB0);
  v59 = v92;
  MEMORY[0x21CE9DD70](v84, v85, 0x6E6F74747562, 0xE600000000000000, v51, v58);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v60 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_217013DA0;
  v62 = v61 + v60;
  v63 = v93;
  (*(v13 + 16))(v62, v59, v93);
  v64 = v90;
  v65 = v91;
  (*(v90 + 16))(v87, v45, v91);
  v66 = v86;
  sub_21700D244();
  (*(v13 + 8))(v59, v63);
  (*(v64 + 8))(v45, v65);
  sub_216697664(v106, &qword_27CABA820, &unk_217018CE0);
  v67 = v94;
  v68 = *(v94 + 20);
  v69 = v97;
  sub_2167F1404(v97, &v12[v68], type metadata accessor for ShareableMusicItem);
  v70 = type metadata accessor for ShareableMusicItem(0);
  __swift_storeEnumTagSinglePayload(&v12[v68], 0, 1, v70);
  __swift_storeEnumTagSinglePayload(&v12[*(v67 + 24)], 1, 1, v107);
  (*(v88 + 32))(v12, v66, v89);
  v71 = v104;
  sub_2167F1404(v69, v104, type metadata accessor for ShareableMusicItem);
  type metadata accessor for MenuActionType(0);
  swift_storeEnumTagMultiPayload();
  v72 = v98;
  sub_2167F1464(v12, v98, type metadata accessor for ShareMusicItemAction);
  v73 = v102;
  v74 = v101;
  v75 = v103;
  (*(v102 + 16))(v101, v100, v103);
  v76 = (*(v95 + 80) + 24) & ~*(v95 + 80);
  v77 = (v96 + *(v73 + 80) + v76) & ~*(v73 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = v105;
  sub_2167F1464(v72, v78 + v76, type metadata accessor for ShareMusicItemAction);
  (*(v73 + 32))(v78 + v77, v74, v75);
  v79 = type metadata accessor for MenuAction(0);
  v80 = (v71 + *(v79 + 20));
  *v80 = sub_2167F12E0;
  v80[1] = v78;
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v79);
}

uint64_t sub_2167F0500(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_7_17();
  a4(v16);
  OUTLINED_FUNCTION_34();
  (*(v17 + 16))(v13, v8);
  swift_storeEnumTagMultiPayload();
  v23 = 4;
  sub_2167EF884(v13, v6, v5, &v23, v7);
  OUTLINED_FUNCTION_1_21();
  sub_2167F14C4(v13, v18);
  v19 = sub_21678C1C4();
  sub_216697664(v7, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v19;
  v21 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v21;
}

uint64_t sub_2167F06BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ShareableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-v13];
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v16 = OUTLINED_FUNCTION_7_17();
  v17 = *(type metadata accessor for MenuConfiguration(v16) + 20);
  swift_storeEnumTagMultiPayload();
  v18 = sub_216B88F54(a3 + v17, v3);
  sub_2167F14C4(v3, type metadata accessor for MenuContext);
  if (v18)
  {
    v19 = 4;
  }

  else
  {
    v19 = 7;
  }

  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v20 + 16))(v10, a1);
  swift_storeEnumTagMultiPayload();
  v27 = v19;
  sub_2167EF884(v10, a2, a3, &v27, v14);
  OUTLINED_FUNCTION_1_21();
  sub_2167F14C4(v10, v21);
  v22 = sub_21678C1C4();
  sub_216697664(v14, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v22;
  v24 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v24;
}

uint64_t sub_2167F0944()
{
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for MenuAction(0);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v16 = OUTLINED_FUNCTION_7_17();
  if (*(v3 + *(type metadata accessor for SocialProfileDescriptor(v16) + 36)) == 1)
  {
    sub_2167F1404(v3, v7, type metadata accessor for SocialProfileDescriptor);
    swift_storeEnumTagMultiPayload();
    v22 = 4;
    sub_2167EF884(v7, v1, v0, &v22, v11);
    OUTLINED_FUNCTION_1_21();
    sub_2167F14C4(v7, v17);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_2167F1464(v11, v2, type metadata accessor for MenuAction);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E38, &qword_217015320);
      v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_217013DA0;
      sub_2167F1464(v2, v18 + v19, type metadata accessor for MenuAction);
      return v18;
    }

    sub_216697664(v11, &qword_27CAB6DF0, &unk_2170152D0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2167F0C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for ShareMusicItemAction(0);
  v6[4] = sub_2167F13AC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_2167F1404(a2, boxed_opaque_existential_1, type metadata accessor for ShareMusicItemAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2167F0D44()
{

  v1 = OBJC_IVAR____TtC7MusicUI23ShareMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2167F0DC0()
{
  sub_2167F0D44();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for ShareMenuActionProvider(uint64_t a1)
{
  result = qword_280E375B8;
  if (!qword_280E375B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167F0E6C(uint64_t a1)
{
  sub_216692BBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2167F12E0()
{
  v1 = *(type metadata accessor for ShareMusicItemAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v4);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_2167F0C84(v6, v0 + v2, v7);
}

unint64_t sub_2167F13AC()
{
  result = qword_27CAB82E0;
  if (!qword_27CAB82E0)
  {
    type metadata accessor for ShareMusicItemAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB82E0);
  }

  return result;
}

uint64_t sub_2167F1404(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167F1464(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2167F14C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167F1588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_2167F15F8(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_2167F15F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(*v6 + 88);
  v12 = *(*v6 + 120);
  v13 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, v11, v12, a4);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6 + 3, a1, v13);
  v6[2] = a2;
  v15 = sub_2167F1750(a1, v11, v12);
  v17 = v16;
  (*(v14 + 8))(a1, v13);
  v6[8] = v15;
  v6[9] = v17;
  v6[10] = a3;
  v6[11] = a4;
  v6[12] = a5;
  return v6;
}

uint64_t sub_2167F1750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_217006224();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyProtoRequestConvertibleIntent(0, a2, a3, v9);
  v15[0] = sub_2169426B4();
  v15[1] = v10;
  MEMORY[0x21CE9F490](45, 0xE100000000000000);
  sub_217006214();
  v11 = sub_2170061F4();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x21CE9F490](v11, v13);

  return v15[0];
}

uint64_t sub_2167F1880(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  OUTLINED_FUNCTION_103_1();
  v3[19] = v4;
  v5 = sub_21700E574();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  OUTLINED_FUNCTION_103_1();
  v7 = *(v6 + 88);
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v8 = sub_217007C24();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_21700EA34();
  v3[31] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v3[32] = v10;
  v3[33] = v9;

  return MEMORY[0x2822009F8](sub_2167F1AA4, v10, v9);
}

uint64_t sub_2167F1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = v12[23];
  v15 = v12[18];
  v14 = v12[19];
  v16 = v14[15];
  type metadata accessor for AnyProtoRequestConvertibleIntent(0, v13, v16, v17);
  OUTLINED_FUNCTION_50();
  (*(v18 + 16))(v12 + 9, v15 + 24);
  v19 = *(v15 + 64);
  v20 = *(v15 + 72);
  v21 = v14[14];
  sub_216E46A9C((v12 + 9), v19, v20, (v12 + 2));
  type metadata accessor for IntentNetworkResponseReceiver();
  sub_21700D4D4();
  sub_21700DF14();
  v22 = v16;
  v23 = v21;
  sub_21700E094();
  v12[34] = v12[14];
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v14[10];
  v25[3] = v13;
  v25[4] = v14[12];
  v25[5] = v14[13];
  v25[6] = v23;
  v25[7] = v16;
  v26 = v14[16];
  v12[35] = v26;
  v25[8] = v26;
  v25[9] = v14[17];
  v25[10] = v24;

  v12[36] = sub_216E46AB4(v19, v20, sub_2167F2B64, v25);

  if (qword_280E485C8 != -1)
  {
    swift_once();
  }

  v27 = v12[30];
  v28 = v12[27];
  v29 = v12[28];
  v30 = v12[26];
  v31 = v12[23];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v33 = __swift_project_value_buffer(v32, qword_280E73E38);
  v12[37] = v33;
  v34 = *(v28 + 16);
  v12[38] = v34;
  v12[39] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v29, v33, v30);
  sub_216BD7948(v29, "Fetch.JSModel", 13, 2, v27);
  v35 = swift_task_alloc();
  v12[40] = v35;
  v12[41] = type metadata accessor for NetworkRequestingIntent(0, v31, v23, v22);
  swift_getWitnessTable();
  *v35 = v12;
  v35[1] = sub_2167F1DA8;
  OUTLINED_FUNCTION_7_3();

  return sub_2168E4C70(v36, v37, v38, v39, v40);
}

uint64_t sub_2167F1DA8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_2167F2624;
  }

  else
  {
    v5 = sub_2167F1EE4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2167F1EE4()
{
  sub_216BD4F2C();
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_2167F1F7C;

  return sub_216E46B40();
}

uint64_t sub_2167F1F7C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_2167F2700;
  }

  else
  {
    v5 = sub_2167F20B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2167F20B8()
{
  (*(*(v0 + 280) + 8))(*(v0 + 184));
  if (v1)
  {
    v3 = *(v0 + 224);
    v2 = *(v0 + 232);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    (*(v0 + 304))(v3, *(v0 + 296), *(v0 + 208));
    sub_216BD7948(v3, "Map.ExtractMusicItems", 21, 2, v2);
    sub_21700E564();
    v7 = sub_21700E524();
    v9 = v8;

    (*(v5 + 8))(v4, v6);
    if (v9 >> 60 != 15)
    {
      v10 = *(v0 + 352);
      sub_217005894();
      swift_allocObject();
      sub_217005884();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A38, &unk_217015A70);
      sub_2167F2C08();
      sub_217005874();
      if (v10)
      {
        v11 = *(v0 + 240);
        v12 = *(v0 + 232);
        v13 = *(v0 + 192);
        v14 = *(v0 + 200);
        v15 = *(v0 + 184);

        sub_21677A510(v7, v9);

        sub_2167F2BA0(v12);
        (*(v13 + 8))(v14, v15);
        sub_2167F2BA0(v11);
        v16 = *(v0 + 328);
        OUTLINED_FUNCTION_0_36();

        OUTLINED_FUNCTION_50();
        (*(v17 + 8))(v0 + 16, v16);

        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_120();

        __asm { BRAA            X1, X16 }
      }

      v20 = *(v0 + 120);
      sub_216BD4F2C();
      sub_21692F2E8(v20, 1);

      sub_21677A510(v7, v9);
    }

    v21 = *(v0 + 232);
    (*(*(v0 + 280) + 16))(0, 0, *(v0 + 184));
    sub_2167F2BA0(v21);
  }

  v22 = swift_task_alloc();
  *(v0 + 360) = v22;
  *v22 = v0;
  v22[1] = sub_2167F23E4;
  OUTLINED_FUNCTION_120();

  return sub_216930510();
}

uint64_t sub_2167F23E4()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_2167F2504, v3, v2);
}

void sub_2167F2504()
{
  v1 = v0[41];
  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[16];

  sub_2167F2BA0(v2);
  (*(v3 + 32))(v6, v4, v5);
  sub_216E47F84();

  OUTLINED_FUNCTION_50();
  (*(v7 + 8))(v0 + 2, v1);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2167F2624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = *(v12 + 240);

  sub_2167F2BA0(v13);
  v14 = *(v12 + 328);
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_50();
  (*(v15 + 8))(v12 + 16, v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_2167F2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = v12[30];
  v15 = v12[24];
  v14 = v12[25];
  v16 = v12[23];

  (*(v15 + 8))(v14, v16);
  sub_2167F2BA0(v13);
  v17 = v12[41];
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_50();
  (*(v18 + 8))(v12 + 2, v17);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_2167F2800(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v5 = [a1 data];
    v6 = sub_217005FB4();
    v8 = v7;

    sub_21692F720(v6, v8, 0);
    sub_21677A524(v6, v8);
  }

  return result;
}

unint64_t sub_2167F28F8()
{
  v1 = *v0;
  sub_21700F3B4();

  type metadata accessor for AnyProtoRequestConvertibleIntent(0, *(v1 + 88), *(v1 + 120), v2);
  v3 = sub_2169426B4();
  MEMORY[0x21CE9F490](v3);

  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2167F29C8()
{

  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  type metadata accessor for AnyProtoRequestConvertibleIntent(0, v2, *(v1 + 120), v3);
  OUTLINED_FUNCTION_50();
  (*(v4 + 8))(v0 + 24);

  return v0;
}

uint64_t sub_2167F2A60()
{
  sub_2167F29C8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2167F2AE4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167F2B28(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167F2BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2167F2C08()
{
  result = qword_27CAB82F8;
  if (!qword_27CAB82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A38, &unk_217015A70);
    sub_2167F2C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB82F8);
  }

  return result;
}

unint64_t sub_2167F2C8C()
{
  result = qword_27CAB8300;
  if (!qword_27CAB8300)
  {
    sub_2170067A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8300);
  }

  return result;
}

void sub_2167F2CE4(uint64_t a1)
{
  sub_2166D5480(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_2167F2D8C()
{
  result = sub_21700E4D4();
  qword_280E73B78 = result;
  return result;
}

uint64_t sub_2167F2DC4(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167F2E24(char a1)
{
  if (a1)
  {
    return 0x6C61626F6C67;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_2167F2E74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2167F2DC4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2167F2EA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167F2E24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_2167F2F64(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_0_1();
  v15 = *(v14 + 272);
  v16 = sub_21700D704();
  __swift_storeEnumTagSinglePayload(v7 + v15, 1, 1, v16);
  if (a4)
  {
    v17 = [objc_opt_self() defaultCenter];

    OUTLINED_FUNCTION_0_1();
    *(v7 + *(v18 + 288)) = v17;
  }

  else
  {
    sub_2167F3BFC();
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();

    OUTLINED_FUNCTION_0_1();
    *(v7 + *(v19 + 288)) = v20;
  }

  OUTLINED_FUNCTION_0_1();
  v22 = (v7 + *(v21 + 280));
  *v22 = a5;
  v22[1] = a6;
  return sub_216B12724(a1, a2, a3 & 1);
}

id sub_2167F30AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3, v4);
  OUTLINED_FUNCTION_0_1();
  v6 = *(v2 + *(v5 + 288));
  if (qword_280E30328 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_280E30328);
  }

  v7 = qword_280E73B78;

  return [v6 addObserver:v2 selector:sel_onEventFired_ name:v7 object:0];
}

id sub_2167F3158()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 288));
  if (qword_280E30328 != -1)
  {
    OUTLINED_FUNCTION_1_22(&qword_280E30328);
  }

  v3 = qword_280E73B78;

  return [v2 removeObserver:v0 name:v3 object:0];
}

uint64_t sub_2167F31D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24[-v12];
  v14 = type metadata accessor for InvalidationActionIntent(0, a2, a3, a4);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24[-v16];
  v19 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, a2, a4, v18);
  (*(*(v19 - 8) + 16))(v25, a1, v19);
  OUTLINED_FUNCTION_0_1();
  v21 = *(v20 + 272);
  swift_beginAccess();
  sub_2167F3B8C(v5 + v21, v13);
  sub_216C85FCC(v25, v13, a2, a3, a4, v17);
  WitnessTable = swift_getWitnessTable();
  sub_2169424F0(v14, WitnessTable, a5);
  return (*(v15 + 8))(v17, v14);
}

void sub_2167F33D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = sub_21700D704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_217005964())
  {
    v23 = 0u;
    v24 = 0u;
    goto LABEL_11;
  }

  v20 = 1684957547;
  v21 = 0xE400000000000000;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v22);
  if (!*(&v24 + 1))
  {
LABEL_11:
    sub_21669987C(&v23, &unk_27CABF7A0, &unk_217014D20);
    return;
  }

  if (swift_dynamicCast())
  {
    v12 = (v0 + *(*v0 + 280));
    if (v22[0] == *v12 && v22[1] == v12[1])
    {

      goto LABEL_14;
    }

    v14 = sub_21700F7D4();

    if (v14)
    {
LABEL_14:
      if (sub_217005964())
      {
        v20 = 0x617461646174656DLL;
        v21 = 0xE800000000000000;
        sub_21700F364();
        sub_216934FBC();

        sub_216788110(v22);
        if (*(&v24 + 1))
        {
          v15 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v7, v15 ^ 1u, 1, v8);
          if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
          {
            v16 = *(v9 + 32);
            v16(v11, v7, v8);
            v16(v4, v11, v8);
            __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
            v17 = *(*v0 + 272);
            swift_beginAccess();
            sub_2167F3C40(v4, v1 + v17);
            v18 = swift_endAccess();
LABEL_21:
            sub_216B12888(v18);
            return;
          }

LABEL_20:
          v18 = sub_21669987C(v7, qword_27CAB8320, &unk_217019D00);
          goto LABEL_21;
        }
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      sub_21669987C(&v23, &unk_27CABF7A0, &unk_217014D20);
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
      goto LABEL_20;
    }
  }
}

uint64_t sub_2167F378C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_217005974();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005934();

  sub_2167F33D0();

  return (*(v4 + 8))(v6, v3);
}

void sub_2167F3878()
{
  OUTLINED_FUNCTION_0_1();
  sub_21669987C(v0 + *(v1 + 272), qword_27CAB8320, &unk_217019D00);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  v3 = *(v0 + *(v2 + 288));
}

char *sub_2167F38F4()
{
  v0 = sub_216B127F4();
  sub_21669987C(&v0[*(*v0 + 272)], qword_27CAB8320, &unk_217019D00);

  return v0;
}

uint64_t sub_2167F3984()
{
  v0 = sub_2167F38F4();

  return MEMORY[0x2821FE8D8](v0);
}

_BYTE *storeEnumTagSinglePayload for InvalidationActionObserverScope(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2167F3AD0()
{
  result = qword_27CAB8308;
  if (!qword_27CAB8308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CAB8310, ". \n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8308);
  }

  return result;
}

unint64_t sub_2167F3B38()
{
  result = qword_27CAB8318;
  if (!qword_27CAB8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8318);
  }

  return result;
}

uint64_t sub_2167F3B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2167F3BFC()
{
  result = qword_280E29BD8;
  if (!qword_280E29BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29BD8);
  }

  return result;
}

uint64_t sub_2167F3C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320, &unk_217019D00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167F3CD4(uint64_t a1)
{
  v2 = type metadata accessor for MusicAppDestinationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2167F3D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void (*a7)(char *, char *, uint64_t, uint64_t))
{
  v24 = a3;
  v25 = a7;
  v22[1] = a6;
  v23 = a2;
  v9 = type metadata accessor for MusicAppDestinationContext(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PresentationItem.Destination(0, *(a4 + 16), *(a4 + 24), v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v22 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v17, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v19 = *(v10 + 28);
  v20 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v12[v19], 1, 1, v20);
  v25(v17, v12, v23, v24);
  sub_2167F3CD4(v12);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2167F3F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_2167F404C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2167F408C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2167F4108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = v43;
    v26 = v44;
    *v43 = v20;
    v25[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v27 = v42;
    sub_21700D224();
    v28 = OUTLINED_FUNCTION_1_23();
    v29(v28);
    v41(v26, v13);
    if (v27)
    {
    }

    else
    {
      v37 = type metadata accessor for RemoveFollowerAction(0);
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for RemoveFollowerAction(0);
    *v33 = 0x72506C6169636F73;
    v33[1] = 0xEF4449656C69666FLL;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_23();
    v36(v35);
    return (v24)(v44, v13);
  }
}

uint64_t sub_2167F4554(uint64_t a1)
{
  sub_2167CC348(v1, v18);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v19 = *(v1 + 56);
  v5 = objc_opt_self();

  v6 = [v5 systemGroupedBackgroundColor];
  sub_21700AC44();
  type metadata accessor for SongDetailContentView(0, v4, v3, v7);
  OUTLINED_FUNCTION_5_19();
  swift_getWitnessTable();
  sub_217009C84();
  sub_21700A2E4();

  OUTLINED_FUNCTION_50();
  (*(v8 + 8))(v18, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BE8, &qword_217019E70);
  v9 = sub_2170089F4();
  OUTLINED_FUNCTION_4_21();
  sub_21669E098(v10, v11, &qword_217019E70, v12);
  OUTLINED_FUNCTION_0_9();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v17, v9, WitnessTable);
  OUTLINED_FUNCTION_50();
  v15 = *(v14 + 8);
  v15(v17, v9);
  sub_2166C24DC(v18, v9, WitnessTable);
  return v15(v18, v9);
}

uint64_t sub_2167F4748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for SongDetailHeaderView(255, v5, v6, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84A8, &qword_217019F80);
  swift_getTupleTypeMetadata2();
  v7 = sub_21700B4E4();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_217008044();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v20[-v14];
  v16 = sub_217009C64();
  v21 = v5;
  v22 = v6;
  v23 = v4;
  sub_2167F453C(v16, sub_2167FC520, v20, v7, WitnessTable);
  v17 = swift_getWitnessTable();
  sub_2166C24DC(v12, v9, v17);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_2166C24DC(v15, v9, v17);
  return (v18)(v15, v9);
}

uint64_t sub_2167F494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v81 = a2;
  v83 = a1;
  v112 = a4;
  v110 = sub_2170096D4();
  v111 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84B0, &qword_217019F88);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v80 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84B8, &qword_217019F90);
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v91 = &v80 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84C0, &qword_217019F98);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v94 = &v80 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84C8, &qword_217019FA0);
  v105 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v95 = &v80 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D0, &qword_217019FA8);
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v97 = &v80 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84A8, &qword_217019F80);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8, &unk_217019FB0);
  MEMORY[0x28223BE20](v15 - 8);
  v89 = (&v80 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v80 - v20;
  v22 = type metadata accessor for SongDetailList(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v80 - v27;
  v29 = sub_21700C084();
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SongDetailHeaderView(0, a2, a3, v32);
  v113 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v86 = &v80 - v37;
  sub_216CCAD38();
  sub_216DE8BA8();
  sub_216683A80(&v28[*(v23 + 32)], v21, &qword_27CAB84E0, &qword_217019FC0);
  sub_2167FE1C0(v28, type metadata accessor for SongDetailList);
  sub_216DE8BA8();
  v38 = &v25[*(v23 + 40)];
  v39 = v88;
  sub_216683A80(v38, v88, &qword_27CAB6A00, &unk_217016B60);
  sub_2167FE1C0(v25, type metadata accessor for SongDetailList);
  v40 = v89;
  v41 = v81;
  v42 = v82;
  sub_2167F56B8(v89);
  v85 = v35;
  sub_2167F5718(v40, v31, v21, v39, v41, v42, v35);
  v84 = v33;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v35, v33, WitnessTable);
  v43 = *(v113 + 8);
  v88 = v113 + 8;
  v89 = v43;
  (v43)(v35, v33);
  v114 = v41;
  v115 = v42;
  v116 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E8, &qword_217019FC8);
  sub_21669E098(&qword_27CAB84F0, &qword_27CAB84E8, &qword_217019FC8, MEMORY[0x277CE14C0]);
  v44 = v90;
  sub_217009ED4();
  sub_21700B314();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84F8, &qword_217019FD0);
  v46 = sub_21669E098(&qword_27CAB8500, &qword_27CAB84B0, &qword_217019F88, MEMORY[0x277CDE5A0]);
  v47 = sub_2167FC538();
  v48 = MEMORY[0x277CE1340];
  v49 = MEMORY[0x277CE1350];
  v50 = v91;
  v51 = v92;
  sub_21700AB34();
  v52 = v51;
  (*(v93 + 8))(v44, v51);
  sub_21700B314();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8540, &qword_217019FF0);
  v122 = v52;
  v123 = v49;
  v124 = v45;
  v125 = v45;
  v126 = v46;
  v127 = v48;
  v128 = v47;
  v129 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v96;
  v122 = v96;
  v123 = OpaqueTypeConformance2;
  v79 = swift_getOpaqueTypeConformance2();
  v56 = v94;
  sub_21700AB34();
  (*(v99 + 8))(v50, v55);
  v122 = v55;
  v123 = v49;
  v124 = v53;
  v125 = v53;
  v126 = OpaqueTypeConformance2;
  v127 = v48;
  v128 = v79;
  v129 = v79;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v95;
  v59 = v100;
  sub_21700A874();
  (*(v101 + 8))(v56, v59);
  v60 = v109;
  sub_2170096C4();
  v122 = v59;
  v123 = v57;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = MEMORY[0x277CDE0D0];
  v63 = v97;
  v64 = v103;
  v65 = v110;
  sub_21700ABC4();
  (*(v111 + 8))(v60, v65);
  (*(v105 + 8))(v58, v64);
  v122 = v64;
  v123 = v65;
  v124 = v61;
  v125 = v62;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v98;
  v68 = v107;
  sub_21700A794();
  v69 = v68;
  (*(v108 + 8))(v63, v68);
  v70 = v85;
  v71 = v86;
  v72 = v84;
  (*(v113 + 16))(v85, v86, v84);
  v122 = v70;
  v73 = v104;
  v74 = v102;
  v75 = v106;
  (*(v104 + 16))(v102, v67, v106);
  v123 = v74;
  v121[0] = v72;
  v121[1] = v75;
  v118 = v66;
  v119 = WitnessTable;
  v117 = v69;
  v120 = swift_getOpaqueTypeConformance2();
  sub_216984F84(&v122, 2, v121);
  v76 = *(v73 + 8);
  v76(v67, v75);
  v77 = v89;
  (v89)(v71, v72);
  v76(v74, v75);
  return (v77)(v70, v72);
}

uint64_t sub_2167F56B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2167F5718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2167C5834(a1, a7, &qword_27CAB84D8, &unk_217019FB0);
  v14 = type metadata accessor for SongDetailHeaderView(0, a5, a6, v13);
  v15 = (a7 + v14[9]);
  type metadata accessor for CatalogPagePresenter(0, a5, a6, v16);
  swift_getWitnessTable();
  *v15 = sub_217008CF4();
  v15[1] = v17;
  v18 = a7 + v14[10];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v14[11];
  v20 = sub_21700C084();
  (*(*(v20 - 8) + 32))(a7 + v19, a2, v20);
  sub_2167C5834(a3, a7 + v14[12], &qword_27CAB84E0, &qword_217019FC0);
  return sub_2167C5834(a4, a7 + v14[13], &qword_27CAB6A00, &unk_217016B60);
}

uint64_t sub_2167F5874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8550, &qword_21701A030);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  sub_216CCAD38();
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8558, &qword_21701A038) + 36)];
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v16[0] = sub_21700ACD4();
  v12 = sub_21700B0B4();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8560, &qword_21701A040) + 36)] = v12;
  v10[*(v5 + 44)] = 0;
  sub_2167CC348(a1, v16);
  v16[7] = *(a1 + 56);
  sub_216683A80(v10, v7, &qword_27CAB8550, &qword_21701A030);
  sub_2167FC7C8(v16, v15);
  sub_216683A80(v7, a2, &qword_27CAB8550, &qword_21701A030);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8568, &qword_21701A048);
  sub_2167FC7C8(v15, a2 + *(v13 + 48));

  sub_2167FC800(v16);
  sub_2167FDB84(v10, &qword_27CAB8550);
  sub_2167FC800(v15);
  return sub_2167FDB84(v7, &qword_27CAB8550);
}

uint64_t sub_2167F5A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2170091F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170091E4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8518, &qword_217019FD8);
  v10 = *(v6 + 16);
  v10(a2 + *(v9 + 36), v8, v5);
  OUTLINED_FUNCTION_14_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84B0, &qword_217019F88);
  OUTLINED_FUNCTION_34();
  (*(v11 + 16))(a2, a1);
  KeyPath = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84F8, &qword_217019FD0) + 36));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8538, &qword_21701C2D0);
  v10(v13 + *(v14 + 28), v8, v5);
  OUTLINED_FUNCTION_14_12();
  *v13 = KeyPath;
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2167F5C3C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84B8, &qword_217019F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84B0, &qword_217019F88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84F8, &qword_217019FD0);
  sub_21669E098(&qword_27CAB8500, &qword_27CAB84B0, &qword_217019F88, MEMORY[0x277CDE5A0]);
  sub_2167FC538();
  swift_getOpaqueTypeConformance2();
  return sub_21700A3F4();
}

uint64_t sub_2167F5D68()
{
  v6 = *(v0 + 48);
  sub_2167FC7C8(v0, v5);
  v1 = swift_allocObject();
  v2 = v5[1];
  v1[1] = v5[0];
  v1[2] = v2;
  v3 = v5[3];
  v1[3] = v5[2];
  v1[4] = v3;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8800, &qword_21701A510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8808, &qword_21701A518);
  sub_21669E098(&qword_27CAB8810, &qword_27CAB8800, &qword_21701A510, MEMORY[0x277D83980]);
  sub_2167FD49C();
  sub_2167FDB28();
  return sub_21700B164();
}

uint64_t sub_2167F5E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88A0, &qword_21701A568);
  MEMORY[0x28223BE20](v4);
  v12 = a1;
  v13 = a2;
  sub_2167F6080(a1, &v11[-v5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8888, &qword_21701A560);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8820, &qword_21701A520);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8828, &qword_21701A528);
  v8 = sub_2167FD5B4();
  v9 = sub_2167FD990();
  v14 = v6;
  v15 = MEMORY[0x277CE1350];
  v16 = v7;
  v17 = v7;
  v18 = v8;
  v19 = MEMORY[0x277CE1340];
  v20 = v9;
  v21 = v9;
  swift_getOpaqueTypeConformance2();
  sub_2167FDA1C();
  return sub_21700B194();
}

uint64_t sub_2167F6018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2167FDBD4(a1, a3 + 16);
  v5 = *(a2 + 56);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 104) = v5;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
}

uint64_t sub_2167F6080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8838, &qword_21701A530);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88A8, &qword_21701A570);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8820, &qword_21701A520);
  MEMORY[0x28223BE20](v24);
  v9 = &v21 - v8;
  if (*(a1 + 64))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v27 = v10;
  v28 = v11;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  sub_21700DF14();
  sub_21700B314();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8850, &qword_21701A548);
  v14 = sub_2167C4D74();
  v15 = sub_2167FD7A0();
  v16 = MEMORY[0x277CE1350];
  sub_21700AB34();

  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8840, &qword_21701A538);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8848, &qword_21701A540);
  v27 = v12;
  v28 = v16;
  v29 = v13;
  v30 = v13;
  v31 = v14;
  v32 = MEMORY[0x277CE1340];
  v33 = v15;
  v34 = v15;
  swift_getOpaqueTypeConformance2();
  v18 = sub_2167FD858();
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_21700AB34();
  (*(v23 + 8))(v4, v19);
  LODWORD(v19) = sub_217009834();
  (*(v21 + 32))(v9, v7, v22);
  *&v9[*(v24 + 36)] = v19;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8828, &qword_21701A528);
  sub_2167FD5B4();
  sub_2167FD990();
  sub_21700AB34();
  return sub_2167FDB84(v9, &qword_27CAB8820);
}

uint64_t sub_2167F64EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = xmmword_217019E00;
  *(a2 + 64) = 0;
  return sub_2167770D0(v3, v2, v4, v5);
}

uint64_t sub_2167F6520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  return sub_2167770D0(v3, v2, v4, v5);
}

uint64_t sub_2167F654C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8848, &qword_21701A540);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8838, &qword_21701A530);
  (*(*(v7 - 8) + 16))(v4, a1, v7);
  v8 = &v4[*(v2 + 36)];
  *v8 = KeyPath;
  v8[1] = v5;
  sub_217009DE4();
  sub_2167FD858();
  sub_21700A304();
  return sub_2167FDB84(v4, &qword_27CAB8848);
}

uint64_t sub_2167F668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8838, &qword_21701A530);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8848, &qword_21701A540);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  return result;
}

uint64_t sub_2167F6748@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217009CB4();
  sub_217007F24();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = OUTLINED_FUNCTION_8();
  sub_216683A80(v12, v13, v14, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8828, &qword_21701A528);
  v17 = a1 + *(result + 36);
  *v17 = v3;
  *(v17 + 8) = v5;
  *(v17 + 16) = v7;
  *(v17 + 24) = v9;
  *(v17 + 32) = v11;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_2167F67EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_216683A80(v2, &v13 - v9, &qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2167C5834(v10, a1, &qword_27CAB8600, &qword_217020AD0);
  }

  sub_21700ED94();
  v12 = sub_217009C34();
  sub_217007BC4();

  sub_2170090E4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2167F69D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8608, &qword_21701A200);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_2167F6CB4(v10, v9, v30 - v7);
  v11 = sub_217009C94();
  sub_217007F24();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8610, &qword_21701A208) + 36)];
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_217009CA4();
  sub_217007F24();
  v22 = &v8[*(v6 + 36)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v30[0] = *(a1 + 44);
  (*(v4 + 16))(v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v10;
  *(v28 + 24) = v9;
  (*(v4 + 32))(v28 + v27, v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21700C084();
  sub_2167FCC68(&qword_27CAB8618, &qword_27CAB8608, &qword_21701A200, sub_2167FCC38);
  sub_2167FDEE4(&qword_27CAB86B0, MEMORY[0x277CD8238], MEMORY[0x277CD8258]);
  sub_21700AB04();

  return sub_2167FDB84(v8, &qword_27CAB8608);
}

uint64_t sub_2167F6CB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8698, &qword_21701A240);
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86B8, &qword_21701A258);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8650, &qword_21701A220);
  MEMORY[0x28223BE20](v11);
  v34 = v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v33 - v17;
  v20 = type metadata accessor for SongDetailHeaderView(0, a1, a2, v19);
  sub_2167F67EC(v18);
  v21 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v18, 1, v21) == 1)
  {
    goto LABEL_5;
  }

  v33[1] = v11;
  sub_216683A80(v18, v15, &qword_27CAB8600, &qword_217020AD0);
  v22 = *(v21 - 8);
  if ((*(v22 + 88))(v15, v21) != *MEMORY[0x277CE0558])
  {
    (*(v22 + 8))(v15, v21);
LABEL_5:
    sub_2167F71BC(v20, v7);
    v26 = sub_217009CB4();
    sub_217007F24();
    v27 = &v7[*(v5 + 36)];
    *v27 = v26;
    *(v27 + 1) = v28;
    *(v27 + 2) = v29;
    *(v27 + 3) = v30;
    *(v27 + 4) = v31;
    v27[40] = 0;
    v24 = &qword_27CAB8698;
    sub_216683A80(v7, v10, &qword_27CAB8698, &qword_21701A240);
    swift_storeEnumTagMultiPayload();
    sub_2167FCDE8();
    sub_2167FD010();
    sub_217009554();
    v25 = v7;
    goto LABEL_6;
  }

  v23 = v34;
  sub_2167F7078(v20, v34);
  v24 = &qword_27CAB8650;
  sub_216683A80(v23, v10, &qword_27CAB8650, &qword_21701A220);
  swift_storeEnumTagMultiPayload();
  sub_2167FCDE8();
  sub_2167FD010();
  sub_217009554();
  v25 = v23;
LABEL_6:
  sub_2167FDB84(v25, v24);
  return sub_2167FDB84(v18, &qword_27CAB8600);
}

uint64_t sub_2167F7078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86C0, &qword_21701A260);
  sub_21669E098(&qword_27CAB86C8, &qword_27CAB86C0, &qword_21701A260, MEMORY[0x277CE14C0]);
  *a2 = sub_216E69898(v5);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86D0, &qword_21701A268);
  sub_2167F8460(v2, *(a1 + 16), *(a1 + 24), (a2 + *(v6 + 44)));
  KeyPath = swift_getKeyPath();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8670, &qword_21701A230) + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8660, &qword_21701A228) + 36)) = 256;
  v9 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8650, &qword_21701A220);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_2167F71BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_217009194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87B0, &qword_21701A4C8);
  return sub_2167F76C0(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
}

uint64_t sub_2167F721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_21700C084();
  sub_2167FDEE4(&qword_27CAB86B0, MEMORY[0x277CD8238], MEMORY[0x277CD8258]);
  if ((sub_21700E494() & 1) == 0 || (type metadata accessor for SongDetailHeaderView(0, a4, a5, v13), type metadata accessor for CatalogPagePresenter(0, a4, a5, v14), swift_getWitnessTable(), sub_217008CB4(), sub_216A3FFDC(), , v15 = type metadata accessor for ToolbarConfiguration(0), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v15), result = sub_2167FDB84(v12, &qword_27CAB7930), EnumTagSinglePayload == 1))
  {
    v18 = type metadata accessor for SongDetailHeaderView(0, a4, a5, v13);
    type metadata accessor for CatalogPagePresenter(0, a4, a5, v19);
    swift_getWitnessTable();
    sub_217008CB4();
    sub_2167F74A0(v18, v9);
    v20 = type metadata accessor for ToolbarConfiguration(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
    sub_216A3FFF0(v9);
  }

  return result;
}

uint64_t sub_2167F74A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2170067A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 44);
  v10 = sub_21700C084();
  (*(*(v10 - 8) + 16))(v8, v2 + v9, v10);
  (*(v6 + 104))(v8, *MEMORY[0x277D2A3F8], v5);
  sub_216683A80(v2 + *(a1 + 52), a2, &qword_27CAB6A00, &unk_217016B60);
  v11 = type metadata accessor for GenericMusicItemToolbarContent(0);
  (*(v6 + 16))(a2 + *(v11 + 20), v8, v5);
  type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  v12 = sub_2167FA01C(a1);
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v15 = (a2 + *(type metadata accessor for GenericMusicItemToolbarContentProvider(0) + 20));
  v16 = *(type metadata accessor for ToolbarProperties(0) + 24);
  v17 = *MEMORY[0x277CDDDC0];
  v18 = sub_217009124();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = v12;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  return result;
}

uint64_t sub_2167F76C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a2;
  v45 = a3;
  v48 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87B8, &qword_21701A4D0);
  MEMORY[0x28223BE20](v46);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87C0, &qword_21701A4D8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86F0, &qword_21701A320);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v23 = type metadata accessor for SongDetailHeaderView(0, a2, a3, v22);
  v24 = a1;
  sub_216683A80(a1 + *(v23 + 48), v21, &qword_27CAB84E0, &qword_217019FC0);
  KeyPath = swift_getKeyPath();
  v26 = type metadata accessor for HeaderArtworkView(0);
  *&v21[v26[5]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  *&v21[v26[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = &v21[v26[7]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  LOBYTE(KeyPath) = sub_217009CD4();
  sub_217007F24();
  v28 = &v21[*(v16 + 44)];
  *v28 = KeyPath;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  *v8 = sub_2170093C4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87C8, &qword_21701A4E0);
  sub_2167F7B38(v24, v44, v45, &v8[*(v33 + 44)]);
  sub_217009D94();
  sub_21669E098(&qword_27CAB87D0, &qword_27CAB87B8, &qword_21701A4D0, MEMORY[0x277CE1198]);
  sub_21700A304();
  sub_2167FDB84(v8, &qword_27CAB87B8);
  v34 = swift_getKeyPath();
  v35 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87D8, &qword_21701A4E8) + 36)];
  *v35 = v34;
  *(v35 + 1) = 0;
  v35[16] = 1;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87E0, &qword_21701A4F0) + 36)] = 256;
  v36 = swift_getKeyPath();
  v37 = &v14[*(v10 + 44)];
  *v37 = v36;
  v37[8] = 0;
  sub_216683A80(v21, v18, &qword_27CAB86F0, &qword_21701A320);
  v38 = v47;
  sub_216683A80(v14, v47, &qword_27CAB87C0, &qword_21701A4D8);
  v39 = v48;
  sub_216683A80(v18, v48, &qword_27CAB86F0, &qword_21701A320);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87E8, &qword_21701A4F8);
  sub_216683A80(v38, v39 + *(v40 + 48), &qword_27CAB87C0, &qword_21701A4D8);
  v41 = v39 + *(v40 + 64);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_2167FDB84(v14, &qword_27CAB87C0);
  sub_2167FDB84(v21, &qword_27CAB86F0);
  sub_2167FDB84(v38, &qword_27CAB87C0);
  return sub_2167FDB84(v18, &qword_27CAB86F0);
}

uint64_t sub_2167F7B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v58 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86D8, &unk_21701A2D0);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v57 = type metadata accessor for SongDetailHeaderView(0, a2, a3, v17);
  v18 = *(v57 + 48);
  sub_216683A80(a1 + v18, v16, &qword_27CAB84E0, &qword_217019FC0);
  v19 = type metadata accessor for SongDetailListHeaderLockup(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
  {
    sub_2167FDB84(v16, &qword_27CAB84E0);
  }

  else
  {
    v20 = &v16[*(v19 + 24)];
    v21 = *v20;
    v22 = *(v20 + 1);
    sub_21700DF14();
    sub_2167FE1C0(v16, type metadata accessor for SongDetailListHeaderLockup);
    v67 = v22;
    if (v22)
    {
      v63 = v21;
      goto LABEL_6;
    }
  }

  v63 = 0;
  v67 = 0xE000000000000000;
LABEL_6:
  v61 = sub_217009D74();
  KeyPath = swift_getKeyPath();
  v64 = sub_217009814();
  v62 = sub_217009CA4();
  sub_217007F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v91 = 0;
  sub_216683A80(a1 + v18, v13, &qword_27CAB84E0, &qword_217019FC0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v19) == 1)
  {
    sub_2167FDB84(v13, &qword_27CAB84E0);
LABEL_10:

    v33 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_11;
  }

  v31 = &v13[*(v19 + 28)];
  v33 = *v31;
  v32 = *(v31 + 1);
  sub_21700DF14();
  sub_2167FE1C0(v13, type metadata accessor for SongDetailListHeaderLockup);
  if (!v32)
  {
    goto LABEL_10;
  }

  v34 = v32;
LABEL_11:
  v60 = sub_217009E94();
  v35 = swift_getKeyPath();
  v56 = v35;
  v54 = sub_217009834();
  v36 = sub_217009CA4();
  v37 = v36;
  v55 = v36;
  sub_217007F24();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v89 = 0;
  v46 = v66;
  sub_2167F80C0(v57, v66);
  v47 = v59;
  sub_216683A80(v46, v59, &qword_27CAB86D8, &unk_21701A2D0);
  v69[0] = v63;
  v69[1] = v67;
  v69[2] = 0;
  v69[3] = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v69[4] = KeyPath;
  v69[5] = v61;
  LODWORD(v69[6]) = v64;
  LOBYTE(v69[7]) = v62;
  *(&v69[7] + 1) = *v90;
  HIDWORD(v69[7]) = *&v90[3];
  v69[8] = v24;
  v69[9] = v26;
  v69[10] = v28;
  v69[11] = v30;
  LOBYTE(v69[12]) = 0;
  v49 = v58;
  memcpy(v58, v69, 0x61uLL);
  v70[0] = v33;
  v70[1] = v34;
  v70[2] = 0;
  v70[3] = v48;
  v70[4] = v35;
  v70[5] = v60;
  LODWORD(v48) = v54;
  LODWORD(v70[6]) = v54;
  LOBYTE(v70[7]) = v37;
  *(&v70[7] + 1) = *v68;
  HIDWORD(v70[7]) = *&v68[3];
  v70[8] = v39;
  v70[9] = v41;
  v70[10] = v43;
  v70[11] = v45;
  LOBYTE(v70[12]) = 0;
  memcpy(v49 + 104, v70, 0x61uLL);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87F0, &unk_21701A500);
  sub_216683A80(v47, &v49[*(v50 + 64)], &qword_27CAB86D8, &unk_21701A2D0);
  sub_216683A80(v69, v80, &qword_27CAB87F8, &unk_2170234E0);
  sub_216683A80(v70, v80, &qword_27CAB87F8, &unk_2170234E0);
  sub_2167FDB84(v66, &qword_27CAB86D8);
  sub_2167FDB84(v47, &qword_27CAB86D8);
  v71[0] = v33;
  v71[1] = v34;
  v71[2] = 0;
  v51 = MEMORY[0x277D84F90];
  v71[3] = MEMORY[0x277D84F90];
  v71[4] = v56;
  v71[5] = v60;
  v72 = v48;
  v73 = v55;
  *v74 = *v68;
  *&v74[3] = *&v68[3];
  v75 = v39;
  v76 = v41;
  v77 = v43;
  v78 = v45;
  v79 = 0;
  sub_2167FDB84(v71, &qword_27CAB87F8);
  v80[0] = v63;
  v80[1] = v67;
  v80[2] = 0;
  v80[3] = v51;
  v80[4] = KeyPath;
  v80[5] = v61;
  v81 = v64;
  v82 = v62;
  *v83 = *v90;
  *&v83[3] = *&v90[3];
  v84 = v24;
  v85 = v26;
  v86 = v28;
  v87 = v30;
  v88 = 0;
  return sub_2167FDB84(v80, &qword_27CAB87F8);
}

uint64_t sub_2167F80C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8700, &qword_21701A368);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = *(v4 + 56);
  v15 = v2;
  sub_216683A80(v2 + v14, v10, &qword_27CAB84E0, &qword_217019FC0);
  v16 = type metadata accessor for SongDetailListHeaderLockup(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v16) == 1)
  {
    sub_2167FDB84(v10, &qword_27CAB84E0);
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
  }

  else
  {
    sub_216683A80(&v10[*(v16 + 36)], &v39, &qword_27CAB6DB0, &qword_217016C00);
    sub_2167FE1C0(v10, type metadata accessor for SongDetailListHeaderLockup);
  }

  v17 = v11[11];
  v18 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v13[v17], 1, 1, v18);
  (*(v5 + 16))(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15, a1);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = *(a1 + 16);
  (*(v5 + 32))(v20 + v19, v7, a1);
  v21 = v11[12];
  *&v13[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v22 = &v13[v11[13]];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = v41;
  v24 = v40;
  *v13 = v39;
  *(v13 + 1) = v24;
  *(v13 + 4) = v23;
  *(v13 + 5) = sub_2167FD0E8;
  *(v13 + 6) = v20;
  *(v13 + 7) = 0;
  *(v13 + 8) = 0;
  v25 = sub_217009C74();
  sub_2167F9C00();
  sub_217007F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v38;
  sub_2167C5834(v13, v38, &qword_27CAB8700, &qword_21701A368);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86D8, &unk_21701A2D0);
  v36 = v34 + *(result + 36);
  *v36 = v25;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_2167F8460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v154 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86D8, &unk_21701A2D0);
  MEMORY[0x28223BE20](v7 - 8);
  v155 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v153 = &v137 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v144 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v137 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v137 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v148 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v142 = &v137 - v19;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7648, &qword_2170174A0);
  MEMORY[0x28223BE20](v158);
  v146 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v140 = &v137 - v22;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7650, &qword_2170174A8);
  MEMORY[0x28223BE20](v156);
  v147 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v141 = &v137 - v25;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86E0, &qword_21701A2E0);
  MEMORY[0x28223BE20](v157);
  v151 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v150 = &v137 - v28;
  MEMORY[0x28223BE20](v29);
  v145 = &v137 - v30;
  MEMORY[0x28223BE20](v31);
  v149 = &v137 - v32;
  MEMORY[0x28223BE20](v33);
  v139 = &v137 - v34;
  MEMORY[0x28223BE20](v35);
  v161 = &v137 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86E8, &qword_21701A2E8);
  v38 = v37 - 8;
  MEMORY[0x28223BE20](v37);
  v160 = &v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v137 - v41;
  v143 = type metadata accessor for SongDetailHeaderView(0, a2, a3, v43);
  v44 = *(v143 + 48);
  sub_216683A80(a1 + v44, v42, &qword_27CAB84E0, &qword_217019FC0);
  KeyPath = swift_getKeyPath();
  v46 = type metadata accessor for HeaderArtworkView(0);
  *&v42[v46[5]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  *&v42[v46[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v47 = &v42[v46[7]];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  LOBYTE(v47) = sub_217009C74();
  sub_217007F24();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86F0, &qword_21701A320) + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  LOBYTE(v47) = sub_217009CA4();
  sub_217007F24();
  v57 = *(v38 + 44);
  v159 = v42;
  v58 = &v42[v57];
  *v58 = v47;
  *(v58 + 1) = v59;
  *(v58 + 2) = v60;
  *(v58 + 3) = v61;
  *(v58 + 4) = v62;
  v58[40] = 0;
  v138 = v44;
  sub_216683A80(a1 + v44, v15, &qword_27CAB84E0, &qword_217019FC0);
  v63 = type metadata accessor for SongDetailListHeaderLockup(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v63);
  v152 = a1;
  if (EnumTagSinglePayload == 1)
  {
    v65 = v137;
    sub_2167FDB84(v15, &qword_27CAB84E0);
  }

  else
  {
    v65 = v137;
    v66 = &v15[*(v63 + 24)];
    v67 = *v66;
    v68 = *(v66 + 1);
    sub_21700DF14();
    sub_2167FE1C0(v15, type metadata accessor for SongDetailListHeaderLockup);
    if (v68)
    {
      v69 = v16;
      goto LABEL_6;
    }
  }

  v69 = v16;

  v67 = 0;
  v68 = 0xE000000000000000;
LABEL_6:
  v70 = sub_217009E24();
  v71 = swift_getKeyPath();
  v162 = v67;
  v163 = v68;
  v164 = 0;
  v165 = MEMORY[0x277D84F90];
  v166 = v71;
  v167 = v70;
  sub_217009D94();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  v73 = v142;
  v137 = v72;
  sub_21700A304();

  v74 = sub_217009814();
  v75 = *(v65 + 32);
  v76 = v140;
  v75(v140, v73, v69);
  *(v76 + *(v158 + 36)) = v74;
  LOBYTE(v74) = sub_217009CA4();
  sub_217007F24();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v141;
  sub_2167C5834(v76, v141, &qword_27CAB7648, &qword_2170174A0);
  v86 = v85 + *(v156 + 36);
  *v86 = v74;
  *(v86 + 8) = v78;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v84;
  *(v86 + 40) = 0;
  LOBYTE(v74) = sub_217009C74();
  sub_217007F24();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v85;
  v96 = v139;
  sub_2167C5834(v95, v139, &qword_27CAB7650, &qword_2170174A8);
  v97 = v96 + *(v157 + 36);
  *v97 = v74;
  *(v97 + 8) = v88;
  *(v97 + 16) = v90;
  *(v97 + 24) = v92;
  *(v97 + 32) = v94;
  *(v97 + 40) = 0;
  sub_2167C5834(v96, v161, &qword_27CAB86E0, &qword_21701A2E0);
  v98 = v144;
  sub_216683A80(v152 + v138, v144, &qword_27CAB84E0, &qword_217019FC0);
  if (__swift_getEnumTagSinglePayload(v98, 1, v63) == 1)
  {
    sub_2167FDB84(v98, &qword_27CAB84E0);
LABEL_9:

    v100 = 0;
    v101 = 0xE000000000000000;
    goto LABEL_10;
  }

  v99 = (v98 + *(v63 + 28));
  v100 = *v99;
  v101 = v99[1];
  sub_21700DF14();
  sub_2167FE1C0(v98, type metadata accessor for SongDetailListHeaderLockup);
  if (!v101)
  {
    goto LABEL_9;
  }

LABEL_10:
  v102 = sub_217009E94();
  v103 = swift_getKeyPath();
  v162 = v100;
  v163 = v101;
  v164 = 0;
  v165 = MEMORY[0x277D84F90];
  v166 = v103;
  v167 = v102;
  sub_217009DC4();
  v104 = v148;
  sub_21700A304();

  v105 = sub_217009834();
  v106 = v146;
  v75(v146, v104, v69);
  *(v106 + *(v158 + 36)) = v105;
  LOBYTE(v105) = sub_217009CA4();
  sub_217007F24();
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v115 = v147;
  sub_2167C5834(v106, v147, &qword_27CAB7648, &qword_2170174A0);
  v116 = v115 + *(v156 + 36);
  *v116 = v105;
  *(v116 + 8) = v108;
  *(v116 + 16) = v110;
  *(v116 + 24) = v112;
  *(v116 + 32) = v114;
  *(v116 + 40) = 0;
  LOBYTE(v105) = sub_217009C74();
  sub_217007F24();
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v125 = v115;
  v126 = v145;
  sub_2167C5834(v125, v145, &qword_27CAB7650, &qword_2170174A8);
  v127 = v126 + *(v157 + 36);
  *v127 = v105;
  *(v127 + 8) = v118;
  *(v127 + 16) = v120;
  *(v127 + 24) = v122;
  *(v127 + 32) = v124;
  *(v127 + 40) = 0;
  v128 = v149;
  sub_2167C5834(v126, v149, &qword_27CAB86E0, &qword_21701A2E0);
  v129 = v153;
  sub_2167F80C0(v143, v153);
  v130 = v160;
  sub_216683A80(v159, v160, &qword_27CAB86E8, &qword_21701A2E8);
  v131 = v150;
  sub_216683A80(v161, v150, &qword_27CAB86E0, &qword_21701A2E0);
  v132 = v151;
  sub_216683A80(v128, v151, &qword_27CAB86E0, &qword_21701A2E0);
  v133 = v155;
  sub_216683A80(v129, v155, &qword_27CAB86D8, &unk_21701A2D0);
  v134 = v154;
  *v154 = 0x4020000000000000;
  *(v134 + 8) = 0;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86F8, &qword_21701A360);
  sub_216683A80(v130, v134 + v135[12], &qword_27CAB86E8, &qword_21701A2E8);
  sub_216683A80(v131, v134 + v135[16], &qword_27CAB86E0, &qword_21701A2E0);
  sub_216683A80(v132, v134 + v135[20], &qword_27CAB86E0, &qword_21701A2E0);
  sub_216683A80(v133, v134 + v135[24], &qword_27CAB86D8, &unk_21701A2D0);
  sub_2167FDB84(v129, &qword_27CAB86D8);
  sub_2167FDB84(v128, &qword_27CAB86E0);
  sub_2167FDB84(v161, &qword_27CAB86E0);
  sub_2167FDB84(v159, &qword_27CAB86E8);
  sub_2167FDB84(v133, &qword_27CAB86D8);
  sub_2167FDB84(v132, &qword_27CAB86E0);
  sub_2167FDB84(v131, &qword_27CAB86E0);
  return sub_2167FDB84(v160, &qword_27CAB86E8);
}

void *sub_2167F90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v41 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8710, &qword_21701A3E8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8718, &qword_21701A3F0) - 8;
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - v8;
  v9 = sub_2170091A4();
  v10 = sub_21700ADB4();
  v11 = sub_216983738(189);
  v13 = v12;

  v14 = MEMORY[0x277D84F90];
  sub_2167770D0(v11, v13, 0, MEMORY[0x277D84F90]);
  sub_2167C4DF0(v11, v13, 0, v14);

  v44 = 1;
  v15 = sub_21700AC54();
  KeyPath = swift_getKeyPath();
  v43[0] = v9;
  v43[1] = 0;
  LOBYTE(v43[2]) = 1;
  v43[3] = v10;
  v43[4] = v11;
  v43[5] = v13;
  v43[6] = 0;
  v43[7] = v14;
  v43[8] = KeyPath;
  v43[9] = v15;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8720, &qword_21701A428);
  sub_2167FD170();
  sub_21700A304();
  memcpy(__dst, v43, 0x50uLL);
  sub_2167FDB84(__dst, &qword_27CAB8720);
  v17 = sub_217009E24();
  v18 = swift_getKeyPath();
  v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8740, &qword_21701A440) + 36)];
  *v19 = v18;
  v19[1] = v17;
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8748, &qword_21701A448) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
  v22 = *MEMORY[0x277CE1058];
  v23 = sub_21700ADF4();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  v24 = sub_21700B3B4();
  v26 = v25;
  v27 = &v7[*(v5 + 44)];
  v28 = v37;
  v29 = v38;
  sub_2167F9524(v36, v37, v38);
  v30 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8750, &qword_21701A488) + 36)];
  *v30 = v24;
  v30[1] = v26;
  sub_21700B3B4();
  sub_217008BB4();
  v31 = v39;
  sub_2167C5834(v7, v39, &qword_27CAB8710, &qword_21701A3E8);
  memcpy((v31 + *(v40 + 44)), v42, 0x70uLL);
  type metadata accessor for SongDetailHeaderView(0, v28, v29, v32);
  sub_2167F9C00();
  sub_21700B3B4();
  sub_217008BB4();
  v33 = v41;
  sub_2167C5834(v31, v41, &qword_27CAB8718, &qword_21701A3F0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8758, &unk_21701A490);
  return memcpy((v33 + *(v34 + 36)), v43, 0x70uLL);
}

uint64_t sub_2167F9524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760, &qword_217029520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8768, &unk_21701A4A0);
  sub_2167FD26C();
  sub_2167FD324();
  return sub_21700B324();
}

void *sub_2167F9608@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780, &unk_217029530);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &__src[-v8];
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_217009294();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = [objc_opt_self() tertiarySystemFillColor];
  *&v9[*(v7 + 60)] = sub_21700AC44();
  *&v9[*(v7 + 64)] = 256;
  v14 = type metadata accessor for SongDetailHeaderView(0, a1, a2, v13);
  sub_2167F9828(v14);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v9, a3, &qword_27CAB8780, &unk_217029530);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760, &qword_217029520);
  return memcpy((a3 + *(v15 + 36)), __src, 0x70uLL);
}

double sub_2167F9828(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2167F9C00() & 1) == 0)
  {
    return 224.0;
  }

  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_21700ED94();
    v11 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = *&v12[1];
  }

  return v9 + -210.0;
}

void *sub_2167F99A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8798, &qword_21701A4B0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &__src[-v8];
  v10 = [objc_opt_self() tertiarySystemFillColor];
  v11 = sub_21700AC44();
  v12 = &v9[*(v7 + 44)];
  v13 = *(sub_217008B44() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_217009294();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #10.0 }

  *v12 = _Q0;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  *v9 = v11;
  *(v9 + 4) = 256;
  v22 = type metadata accessor for SongDetailHeaderView(0, a1, a2, v21);
  sub_2167F9828(v22);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v9, a3, &qword_27CAB8798, &qword_21701A4B0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8768, &unk_21701A4A0);
  return memcpy((a3 + *(v23 + 36)), __src, 0x70uLL);
}

uint64_t sub_2167F9C00()
{
  v0 = sub_2170098A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  sub_2167F67EC(&v21 - v13);
  (*(v1 + 104))(v11, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_216683A80(v14, v6, &qword_27CAB8600, &qword_217020AD0);
  sub_216683A80(v11, &v6[v15], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    v17 = v22;
    sub_216683A80(v6, v22, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
    {
      v18 = v21;
      (*(v1 + 32))(v21, &v6[v15], v0);
      sub_2167FDEE4(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v16 = sub_21700E494();
      v19 = *(v1 + 8);
      v19(v18, v0);
      sub_2167FDB84(v11, &qword_27CAB8600);
      sub_2167FDB84(v14, &qword_27CAB8600);
      v19(v17, v0);
      sub_2167FDB84(v6, &qword_27CAB8600);
      return v16 & 1;
    }

    sub_2167FDB84(v11, &qword_27CAB8600);
    sub_2167FDB84(v14, &qword_27CAB8600);
    (*(v1 + 8))(v17, v0);
    goto LABEL_6;
  }

  sub_2167FDB84(v11, &qword_27CAB8600);
  sub_2167FDB84(v14, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_2167FDB84(v6, &qword_27CAB8708);
    v16 = 0;
    return v16 & 1;
  }

  sub_2167FDB84(v6, &qword_27CAB8600);
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_2167FA01C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_216683A80(v1 + *(a1 + 48), &v11 - v4, &qword_27CAB84E0, &qword_217019FC0);
  v6 = type metadata accessor for SongDetailListHeaderLockup(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2167FDB84(v5, &qword_27CAB84E0);
LABEL_4:
    v8 = sub_21700C014();

    return v8;
  }

  v7 = &v5[*(v6 + 24)];
  v8 = *v7;
  v9 = v7[1];
  sub_21700DF14();
  sub_2167FE1C0(v5, type metadata accessor for SongDetailListHeaderLockup);
  if (!v9)
  {
    goto LABEL_4;
  }

  return v8;
}

uint64_t sub_2167FA154@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for HeaderArtworkView(0);
  sub_216683A80(v1 + *(v10 + 20), v9, &qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2167C5834(v9, a1, &qword_27CAB8600, &qword_217020AD0);
  }

  sub_21700ED94();
  v12 = sub_217009C34();
  sub_217007BC4();

  sub_2170090E4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2167FA340@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8928, &qword_21701A658);
  return sub_2167FA394(v2, a2 + *(v4 + 44));
}

uint64_t sub_2167FA394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v139 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v2 - 8);
  v133 = &v107 - v3;
  v4 = sub_21700C444();
  v134 = *(v4 - 8);
  v135 = v4;
  MEMORY[0x28223BE20](v4);
  v132 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0, &qword_217019FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v121 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v10 - 8);
  v116 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v14 - 8);
  v120 = &v107 - v15;
  v16 = sub_217007474();
  v127 = *(v16 - 8);
  v128 = v16;
  MEMORY[0x28223BE20](v16);
  v122 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v124 = &v107 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v130 = *(v20 - 8);
  v131 = v20;
  MEMORY[0x28223BE20](v20);
  v129 = &v107 - v21;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930, &qword_21701A680);
  MEMORY[0x28223BE20](v123);
  v126 = &v107 - v22;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8938, &qword_21701A688);
  MEMORY[0x28223BE20](v138);
  v125 = &v107 - v23;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  MEMORY[0x28223BE20](v117);
  v118 = &v107 - v24;
  v25 = sub_2170090F4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  MEMORY[0x28223BE20](v29);
  v31 = &v107 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v32 - 8);
  v114 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v107 - v35;
  MEMORY[0x28223BE20](v37);
  v136 = &v107 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v107 - v40;
  v142 = sub_2170098A4();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v43 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v137 = &v107 - v45;
  v113 = type metadata accessor for HeaderArtworkView(0);
  sub_216683A80(v141 + *(v113 + 24), v31, &qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2167C5834(v31, v41, &qword_27CAB8600, &qword_217020AD0);
  }

  else
  {
    sub_21700ED94();
    v46 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v26 + 8))(v28, v25);
  }

  v47 = v142;
  if (__swift_getEnumTagSinglePayload(v41, 1, v142) != 1)
  {
    v108 = v28;
    v109 = v26;
    v110 = v25;
    v51 = v140;
    v111 = *(v140 + 32);
    v111(v137, v41, v47);
    v52 = *(v51 + 104);
    v52(v43, *MEMORY[0x277CE0560], v142);
    sub_217009894();
    v53 = *(v51 + 8);
    v140 = v51 + 8;
    v53(v43, v142);
    v54 = v136;
    sub_2167FA154(v136);
    v52(v36, *MEMORY[0x277CE0558], v142);
    v55 = v142;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v142);
    v56 = *(v117 + 48);
    v57 = v118;
    sub_216683A80(v54, v118, &qword_27CAB8600, &qword_217020AD0);
    sub_216683A80(v36, v57 + v56, &qword_27CAB8600, &qword_217020AD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v55);
    v112 = v53;
    if (EnumTagSinglePayload == 1)
    {
      sub_2167FDB84(v36, &qword_27CAB8600);
      sub_2167FDB84(v54, &qword_27CAB8600);
      v59 = __swift_getEnumTagSinglePayload(v57 + v56, 1, v55);
      v60 = v141;
      if (v59 == 1)
      {
        sub_2167FDB84(v57, &qword_27CAB8600);
        v62 = v133;
        v61 = v134;
        v63 = v132;
        v64 = v122;
        v65 = v120;
        v66 = v119;
LABEL_13:
        v69 = v60 + *(v113 + 28);
        v70 = *v69;
        if (*(v69 + 8) != 1)
        {

          sub_21700ED94();
          v71 = sub_217009C34();
          sub_217007BC4();

          v72 = v108;
          sub_2170090E4();
          swift_getAtKeyPath();
          sub_216684F5C(v70, 0);
          (*(v109 + 8))(v72, v110);
        }

LABEL_15:
        sub_216683A80(v60, v66, &qword_27CAB84E0, &qword_217019FC0);
        v73 = type metadata accessor for SongDetailListHeaderLockup(0);
        if (__swift_getEnumTagSinglePayload(v66, 1, v73) == 1)
        {
          v74 = &qword_27CAB84E0;
          v75 = v66;
        }

        else
        {
          v76 = v115;
          sub_216683A80(v66 + *(v73 + 44), v115, &qword_27CAB6D60, &qword_217014E40);
          sub_2167FE1C0(v66, type metadata accessor for SongDetailListHeaderLockup);
          v77 = type metadata accessor for Artwork(0);
          if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
          {
            v81 = sub_21700C4B4();
            (*(*(v81 - 8) + 16))(v65, v76, v81);
            sub_2167FE1C0(v76, type metadata accessor for Artwork);
            v79 = v65;
            v80 = 0;
            v78 = v81;
LABEL_21:
            __swift_storeEnumTagSinglePayload(v79, v80, 1, v78);
            sub_217007434();
            v82 = v121;
            sub_216683A80(v60, v121, &qword_27CAB84E0, &qword_217019FC0);
            if (__swift_getEnumTagSinglePayload(v82, 1, v73) == 1)
            {
              v83 = &qword_27CAB84E0;
              v84 = v82;
            }

            else
            {
              v85 = v116;
              sub_216683A80(v82 + *(v73 + 44), v116, &qword_27CAB6D60, &qword_217014E40);
              sub_2167FE1C0(v82, type metadata accessor for SongDetailListHeaderLockup);
              v86 = type metadata accessor for Artwork(0);
              if (__swift_getEnumTagSinglePayload(v85, 1, v86) != 1)
              {
                v88 = v85 + *(v86 + 20);
                v87 = v135;
                (*(v61 + 16))(v62, v88, v135);
                sub_2167FE1C0(v85, type metadata accessor for Artwork);
                __swift_storeEnumTagSinglePayload(v62, 0, 1, v87);
                (*(v61 + 32))(v63, v62, v87);
LABEL_28:
                v89 = v124;
                sub_2170073E4();
                (*(v61 + 8))(v63, v87);
                v90 = v128;
                v91 = *(v127 + 8);
                v91(v64, v128);
                *(swift_allocObject() + 16) = xmmword_217016ED0;
                sub_2167C505C();
                v92 = v129;
                sub_2170073F4();

                v91(v89, v90);
                v112(v137, v142);
                v93 = v126;
                v94 = &v126[*(v123 + 36)];
                v95 = *(sub_217008B44() + 20);
                v96 = *MEMORY[0x277CE0118];
                v97 = sub_217009294();
                (*(*(v97 - 8) + 104))(&v94[v95], v96, v97);
                __asm { FMOV            V0.2D, #7.0 }

                *v94 = _Q0;
                *&v94[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
                (*(v130 + 32))(v93, v92, v131);
                v103 = v125;
                sub_2167C5834(v93, v125, &qword_27CAB8930, &qword_21701A680);
                v50 = v138;
                v104 = v103 + *(v138 + 36);
                *v104 = 0;
                *(v104 + 8) = 257;
                v105 = v103;
                v49 = v139;
                sub_2167C5834(v105, v139, &qword_27CAB8938, &qword_21701A688);
                v48 = 0;
                return __swift_storeEnumTagSinglePayload(v49, v48, 1, v50);
              }

              v83 = &qword_27CAB6D60;
              v84 = v85;
            }

            sub_2167FDB84(v84, v83);
            v87 = v135;
            __swift_storeEnumTagSinglePayload(v62, 1, 1, v135);
            sub_21700C404();
            if (__swift_getEnumTagSinglePayload(v62, 1, v87) != 1)
            {
              sub_2167FDB84(v62, &qword_27CAB7530);
            }

            goto LABEL_28;
          }

          v74 = &qword_27CAB6D60;
          v75 = v76;
        }

        sub_2167FDB84(v75, v74);
        v78 = sub_21700C4B4();
        v79 = v65;
        v80 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v67 = v114;
      sub_216683A80(v57, v114, &qword_27CAB8600, &qword_217020AD0);
      if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v55) != 1)
      {
        v111(v43, (v57 + v56), v55);
        sub_2167FDEE4(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v68 = sub_21700E494();
        v53(v43, v55);
        sub_2167FDB84(v36, &qword_27CAB8600);
        sub_2167FDB84(v136, &qword_27CAB8600);
        v53(v67, v55);
        sub_2167FDB84(v57, &qword_27CAB8600);
        v62 = v133;
        v61 = v134;
        v63 = v132;
        v64 = v122;
        v60 = v141;
        v65 = v120;
        v66 = v119;
        if ((v68 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      sub_2167FDB84(v36, &qword_27CAB8600);
      sub_2167FDB84(v136, &qword_27CAB8600);
      v53(v67, v55);
      v60 = v141;
    }

    sub_2167FDB84(v57, &qword_27CAB8708);
    v62 = v133;
    v61 = v134;
    v63 = v132;
    v64 = v122;
    v65 = v120;
    v66 = v119;
    goto LABEL_15;
  }

  sub_2167FDB84(v41, &qword_27CAB8600);
  v48 = 1;
  v50 = v138;
  v49 = v139;
  return __swift_storeEnumTagSinglePayload(v49, v48, 1, v50);
}

uint64_t sub_2167FB508@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88B0, &qword_21701A5A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = sub_21700C074();
  if (v7)
  {
    MEMORY[0x28223BE20](v7);
    *(&v9 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88B8, &qword_21701A5A8);
    sub_2167FDC38();
    sub_21700B1B4();
    (*(v4 + 32))(a1, v6, v3);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_2167FB6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = sub_217008AD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SongDetailLyricsButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88C8, &unk_21701A5B0);
  MEMORY[0x28223BE20](v10);
  v12 = (v23 - v11);
  sub_2167FBA24((v23 - v11));
  v13 = v10[11];
  v14 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v12 + v13, 1, 1, v14);
  sub_2167FDDB0(a1, v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_2167FDE14(v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = v10[12];
  *(v12 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v18 = v12 + v10[13];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v12[5] = sub_2167FDE78;
  v12[6] = v16;
  v12[7] = 0;
  v12[8] = 0;
  sub_217008AC4();
  sub_21669E098(&qword_27CAB88D0, &qword_27CAB88C8, &unk_21701A5B0, &unk_21702C8E0);
  sub_2167FDEE4(&qword_280E2AD60, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v19 = v23[0];
  sub_21700A364();
  (*(v4 + 8))(v6, v3);
  sub_2167FDB84(v12, &qword_27CAB88C8);
  v20 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v23[1] = sub_21700AC44();
  v21 = sub_21700B0B4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88B8, &qword_21701A5A8);
  *(v19 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_2167FBA24@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v50 = sub_21700CFB4();
  v1 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_217005EF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21700D704();
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v48 = sub_21700D284();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  v42 = xmmword_217013DA0;
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0x657461676976616ELL;
  *(inited + 40) = 0xEA00000000006F54;
  v19 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0x73636972796CLL;
  *(inited + 56) = 0xE600000000000000;
  v20 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v3);
  sub_21700D6F4();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v55 = v20;
  sub_2166EF9C4(&v55, v54);
  v21 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v53 = v21;
  sub_2166EF9D4();
  v22 = v53;
  v56 = v19;
  *&v55 = 0x657461676976616ELL;
  *(&v55 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v55, v54);
  swift_isUniquelyReferenced_nonNull_native();
  v53 = v22;
  sub_2166EF9D4();
  v23 = v53;
  sub_216683A80(v16, v13, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    sub_2167FDB84(v13, &qword_27CABA820);
  }

  else
  {
    (*(v4 + 32))(v6, v13, v3);
    v24 = sub_217005DE4();
    v56 = v19;
    *&v55 = v24;
    *(&v55 + 1) = v25;
    sub_2166EF9C4(&v55, v54);
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v23;
    sub_2166EF9D4();
    v23 = v53;
    (*(v4 + 8))(v6, v3);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v26 = sub_21700CF84();
  v27 = __swift_project_value_buffer(v26, qword_280E73DB0);
  v28 = v49;
  MEMORY[0x21CE9DD70](0x73636972796CLL, 0xE600000000000000, 0x6E6F74747562, 0xE600000000000000, v23, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v29 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  v31 = v30 + v29;
  v32 = v50;
  (*(v1 + 16))(v31, v28, v50);
  v33 = v43;
  v34 = v47;
  (*(v43 + 16))(v44, v10, v47);
  v35 = v45;
  sub_21700D244();
  (*(v1 + 8))(v28, v32);
  (*(v33 + 8))(v10, v34);
  sub_2167FDB84(v16, &qword_27CABA820);
  v36 = type metadata accessor for ViewLyricsAction(0);
  v37 = v51;
  v51[3] = v36;
  v37[4] = sub_2167FDEE4(&qword_27CAB88E8, type metadata accessor for ViewLyricsAction, &unk_21703B930);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  v39 = *(v36 + 20);
  v40 = sub_21700C084();
  (*(*(v40 - 8) + 16))(boxed_opaque_existential_1 + v39, v52, v40);
  return (*(v46 + 32))(boxed_opaque_existential_1, v35, v48);
}

double sub_2167FC198@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_2170091A4();
  v19 = 0;
  sub_2167FC31C();
  memcpy(__dst, __src, 0x7AuLL);
  memcpy(v22, __src, 0x7AuLL);
  sub_216683A80(__dst, v16, &qword_27CAB88E0, &unk_21701A5C0);
  sub_2167FDB84(v22, &qword_27CAB88E0);
  memcpy(&v18[7], __dst, 0x7AuLL);
  v4 = v19;
  v5 = sub_217009CB4();
  sub_217007F24();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16[0] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  *&v20[7] = __src[0];
  *&v20[23] = __src[1];
  *&v20[39] = __src[2];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  memcpy((a2 + 17), v18, 0x81uLL);
  *(a2 + 152) = v5;
  *(a2 + 160) = v7;
  *(a2 + 168) = v9;
  *(a2 + 176) = v11;
  *(a2 + 184) = v13;
  *(a2 + 192) = 0;
  v14 = *&v20[16];
  *(a2 + 193) = *v20;
  *(a2 + 209) = v14;
  result = *&v20[32];
  *(a2 + 225) = *&v20[32];
  *(a2 + 240) = *&v20[47];
  *(a2 + 248) = 0;
  return result;
}

uint64_t sub_2167FC31C()
{
  if (qword_280E29B20 != -1)
  {
    swift_once();
  }

  v0 = qword_280E739D0;
  v1 = sub_21700AE14();
  v2 = sub_216983738(370);
  v4 = v3;
  v5 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v7 = sub_217009814();
  v8 = sub_217009CB4();
  sub_217007F24();
  __dst[0] = 0;
  v18[0] = v1;
  __src[0] = v2;
  __src[1] = v4;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = v5;
  LODWORD(__src[6]) = v7;
  LOBYTE(__src[7]) = v8;
  __src[8] = v9;
  __src[9] = v10;
  __src[10] = v11;
  __src[11] = v12;
  LOBYTE(__src[12]) = 0;
  v18[1] = v18;
  v18[2] = __src;
  v15 = 0;
  v16 = 1;
  v14 = 1;
  v18[3] = &v15;
  v18[4] = &v14;
  sub_2168AA694();
  memcpy(__dst, __src, 0x61uLL);
  sub_2167FDB84(__dst, &qword_27CAB87F8);
}

unint64_t sub_2167FC538()
{
  result = qword_27CAB8508;
  if (!qword_27CAB8508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84F8, &qword_217019FD0);
    sub_2167FC5F0();
    sub_21669E098(&qword_27CAB8530, &qword_27CAB8538, &qword_21701C2D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8508);
  }

  return result;
}

unint64_t sub_2167FC5F0()
{
  result = qword_27CAB8510;
  if (!qword_27CAB8510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8518, &qword_217019FD8);
    sub_21669E098(&qword_27CAB8500, &qword_27CAB84B0, &qword_217019F88, MEMORY[0x277CDE5A0]);
    sub_21669E098(&qword_27CAB8520, &unk_27CAB8528, &unk_217019FE0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8510);
  }

  return result;
}

uint64_t sub_2167FC720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_216683A80(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2167FC888(uint64_t a1)
{
  result = sub_21700C084();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2167FC8F4(uint64_t a1)
{
  sub_2167FCA6C(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for CatalogPagePresenter(255, *(a1 + 16), *(a1 + 24), v2);
    swift_getWitnessTable();
    sub_217008D04();
    if (v4 <= 0x3F)
    {
      sub_2167B8000();
      if (v5 <= 0x3F)
      {
        sub_21700C084();
        if (v6 <= 0x3F)
        {
          sub_2167FCAD0(319, qword_280E33DE0, type metadata accessor for SongDetailListHeaderLockup);
          if (v7 <= 0x3F)
          {
            sub_2167FCAD0(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2167FCA6C(uint64_t a1)
{
  if (!qword_280E2B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8600, &qword_217020AD0);
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B440);
    }
  }
}

void sub_2167FCAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2167FCBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = type metadata accessor for SongDetailHeaderView(0, v7, v8, a4);
  OUTLINED_FUNCTION_36(v9);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_2167F721C(a1, a2, v11, v7, v8);
}

uint64_t sub_2167FCC68(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    OUTLINED_FUNCTION_0_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2167FCCD8()
{
  result = qword_27CAB8628;
  if (!qword_27CAB8628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8630, &qword_21701A210);
    sub_2167FCD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8628);
  }

  return result;
}

unint64_t sub_2167FCD5C()
{
  result = qword_27CAB8638;
  if (!qword_27CAB8638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8640, &qword_21701A218);
    sub_2167FCDE8();
    sub_2167FD010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8638);
  }

  return result;
}

unint64_t sub_2167FCDE8()
{
  result = qword_27CAB8648;
  if (!qword_27CAB8648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8650, &qword_21701A220);
    sub_2167FCEA0();
    sub_21669E098(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8648);
  }

  return result;
}

unint64_t sub_2167FCEA0()
{
  result = qword_27CAB8658;
  if (!qword_27CAB8658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8660, &qword_21701A228);
    sub_2167FCF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8658);
  }

  return result;
}

unint64_t sub_2167FCF2C()
{
  result = qword_27CAB8668;
  if (!qword_27CAB8668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8670, &qword_21701A230);
    sub_21669E098(&qword_27CAB8678, &unk_27CAB8680, &unk_21701A238, MEMORY[0x277CE1198]);
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8668);
  }

  return result;
}

unint64_t sub_2167FD010()
{
  result = qword_27CAB8690;
  if (!qword_27CAB8690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8698, &qword_21701A240);
    sub_21669E098(&qword_27CAB86A0, &unk_27CAB86A8, &unk_21701A248, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8690);
  }

  return result;
}

void *sub_2167FD0E8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for SongDetailHeaderView(0, v4, v5, a1);
  OUTLINED_FUNCTION_36(v6);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_2167F90C4(v8, v4, v5, a2);
}

unint64_t sub_2167FD170()
{
  result = qword_27CAB8728;
  if (!qword_27CAB8728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8720, &qword_21701A428);
    sub_21669E098(&qword_27CAB8730, &unk_27CAB8738, &unk_21701A430, MEMORY[0x277CE1138]);
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8728);
  }

  return result;
}

unint64_t sub_2167FD26C()
{
  result = qword_27CAB8770;
  if (!qword_27CAB8770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8760, &qword_217029520);
    sub_21669E098(&qword_27CAB8778, &qword_27CAB8780, &unk_217029530, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8770);
  }

  return result;
}

unint64_t sub_2167FD324()
{
  result = qword_27CAB8788;
  if (!qword_27CAB8788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8768, &unk_21701A4A0);
    sub_2167FD3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8788);
  }

  return result;
}

unint64_t sub_2167FD3B0()
{
  result = qword_27CAB8790;
  if (!qword_27CAB8790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8798, &qword_21701A4B0);
    sub_21669E098(&qword_27CAB87A0, &unk_27CAB87A8, &unk_21701A4B8, MEMORY[0x277CDF3A0]);
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8790);
  }

  return result;
}

unint64_t sub_2167FD49C()
{
  result = qword_27CAB8818;
  if (!qword_27CAB8818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8808, &qword_21701A518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8820, &qword_21701A520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8828, &qword_21701A528);
    sub_2167FD5B4();
    sub_2167FD990();
    swift_getOpaqueTypeConformance2();
    sub_2167FDA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8818);
  }

  return result;
}

unint64_t sub_2167FD5B4()
{
  result = qword_27CAB8830;
  if (!qword_27CAB8830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8820, &qword_21701A520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8838, &qword_21701A530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8840, &qword_21701A538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8848, &qword_21701A540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8850, &qword_21701A548);
    sub_2167C4D74();
    sub_2167FD7A0();
    swift_getOpaqueTypeConformance2();
    sub_2167FD858();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A830, &unk_27CAB8870, &unk_217036360, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8830);
  }

  return result;
}

unint64_t sub_2167FD7A0()
{
  result = qword_27CAB8858;
  if (!qword_27CAB8858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8850, &qword_21701A548);
    sub_2167C4D74();
    sub_21669E098(&qword_280E2A8D8, &qword_27CAB8860, &unk_21701A550, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8858);
  }

  return result;
}

unint64_t sub_2167FD858()
{
  result = qword_27CAB8868;
  if (!qword_27CAB8868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8848, &qword_21701A540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8850, &qword_21701A548);
    sub_2167C4D74();
    sub_2167FD7A0();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8868);
  }

  return result;
}

unint64_t sub_2167FD990()
{
  result = qword_27CAB8878;
  if (!qword_27CAB8878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8828, &qword_21701A528);
    sub_2167FD5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8878);
  }

  return result;
}

unint64_t sub_2167FDA1C()
{
  result = qword_27CAB8880;
  if (!qword_27CAB8880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8888, &qword_21701A560);
    sub_2167FDAD4();
    sub_21669E098(&qword_280E2A8D8, &qword_27CAB8860, &unk_21701A550, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8880);
  }

  return result;
}

unint64_t sub_2167FDAD4()
{
  result = qword_27CAB8890;
  if (!qword_27CAB8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8890);
  }

  return result;
}

unint64_t sub_2167FDB28()
{
  result = qword_27CAB8898;
  if (!qword_27CAB8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8898);
  }

  return result;
}

uint64_t sub_2167FDB84(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_100(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_2167FDC38()
{
  result = qword_27CAB88C0;
  if (!qword_27CAB88C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88B8, &qword_21701A5A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88C8, &unk_21701A5B0);
    sub_217008AD4();
    sub_21669E098(&qword_27CAB88D0, &qword_27CAB88C8, &unk_21701A5B0, &unk_21702C8E0);
    sub_2167FDEE4(&qword_280E2AD60, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A8C8, &qword_27CAB88D8, &qword_21701D180, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB88C0);
  }

  return result;
}

uint64_t sub_2167FDDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongDetailLyricsButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167FDE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongDetailLyricsButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2167FDE78@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SongDetailLyricsButton(0);
  OUTLINED_FUNCTION_36(v2);

  return sub_2167FC198(a1);
}

uint64_t sub_2167FDEE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2167FDF54(uint64_t a1)
{
  sub_2167FCAD0(319, qword_280E33DE0, type metadata accessor for SongDetailListHeaderLockup);
  if (v1 <= 0x3F)
  {
    sub_2167FCA6C(319);
    if (v2 <= 0x3F)
    {
      sub_2167B8000();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2167FE00C()
{
  result = qword_27CAB8900;
  if (!qword_27CAB8900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8908, &qword_21701A5F8);
    sub_2167FD49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8900);
  }

  return result;
}

unint64_t sub_2167FE090()
{
  result = qword_27CAB8910;
  if (!qword_27CAB8910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8918, qword_21701A600);
    sub_2167FE114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8910);
  }

  return result;
}

unint64_t sub_2167FE114()
{
  result = qword_27CAB8920;
  if (!qword_27CAB8920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88B0, &qword_21701A5A0);
    sub_2167FDC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8920);
  }

  return result;
}

uint64_t sub_2167FE1C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167FE258(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v37 = a1;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v17 = v16;
  v18 = v15;
  v19 = *(v11 + 8);
  v19(v18, v9);
  if (v17)
  {
    v32 = v17;
    v31 = v19;
    sub_21700CE04();
    v20 = *(v5 + 16);
    v20(v8, v34, v3);
    sub_2167A7528();
    sub_21700D734();
    if (__src[1])
    {
      memcpy(__dst, __src, 0x48uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978, &unk_2170239B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_217013DA0;
      sub_2167ADC3C(__dst, v21 + 32);
      (*(v5 + 8))(v34, v3);
      v31(v37, v9);
      sub_2167ADC98(__dst);
    }

    else
    {
      sub_216699820(__src, &qword_27CAB8100, qword_21701B4C0);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968, qword_21701A810);
      sub_21700CE04();
      v30 = v9;
      v27 = v3;
      v28 = v34;
      v20(v8, v34, v27);
      sub_2167FF028();
      sub_21700D734();
      (*(v5 + 8))(v28, v27);
      v31(v37, v30);
    }

    return v33;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_24();
    sub_2167FEF38(v22, v23, MEMORY[0x277D22550]);
    swift_allocError();
    *v24 = 0x656C746974;
    v24[1] = 0xE500000000000000;
    v24[2] = &type metadata for ContainerDetailTracklistFooterLockup.GroupedTextLinkSection;
    OUTLINED_FUNCTION_50();
    (*(v25 + 104))();
    swift_willThrow();
    (*(v5 + 8))(v34, v3);
    return (v19)(v37, v9);
  }
}

uint64_t sub_2167FE6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2167FE258(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t sub_2167FE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v96 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v79 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v90 = v13;
  MEMORY[0x28223BE20](v14);
  v82 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = &v79 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  sub_21700D7A4();
  sub_21700CE04();
  v87 = v8;
  v24 = *(v8 + 16);
  v89 = v6;
  v25 = v6;
  v26 = v90;
  v85 = v24;
  v86 = (v8 + 16);
  v24(v11, v93, v25);
  v80 = v23;
  v81 = v11;
  sub_21700D734();
  v27 = 25705;
  v28 = 0xE200000000000000;
  v91 = a1;
  sub_21700CE04();
  v29 = sub_21700CDB4();
  v31 = v30;
  v33 = *(v26 + 8);
  v32 = v26 + 8;
  v92 = v12;
  v34 = v12;
  v35 = v33;
  v33(v20, v34);
  v88 = v33;
  if (!v31)
  {
    v40 = v91;
    v41 = v92;
    goto LABEL_5;
  }

  v28 = 0x8000000217081C10;
  v27 = 0xD000000000000014;
  v36 = v84;
  sub_21700CE04();
  v37 = sub_21700CD24();
  v39 = v38;
  v35(v36, v92);
  if (v39)
  {
    v40 = v91;
    v41 = v92;

LABEL_5:
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_24();
    sub_2167FEF38(v42, v43, MEMORY[0x277D22550]);
    swift_allocError();
    v45 = v44;
    v46 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
    *v45 = v27;
    v45[1] = v28;
    v45[2] = v46;
    OUTLINED_FUNCTION_50();
    (*(v47 + 104))(v45);
    swift_willThrow();
    v48 = OUTLINED_FUNCTION_2_25();
    v49(v48, v89);
    v88(v40, v41);
    return sub_216699820(v96, &qword_27CAB6D58, &unk_217014E30);
  }

  v51 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  v52 = v96;
  *(v96 + v51[7]) = v37;
  *&v94 = v29;
  *(&v94 + 1) = v31;
  sub_21700F364();
  type metadata accessor for ContentDescriptor(0);
  v53 = v80;
  v54 = v91;
  sub_21700CE04();
  v55 = v81;
  v56 = v93;
  v90 = v32;
  v85(v81, v93, v89);
  sub_2167FEF38(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
  sub_21700D734();
  v57 = v54;
  sub_21700CE04();
  v58 = sub_21700CDB4();
  v60 = v59;
  v88(v53, v92);
  v61 = (v52 + v51[8]);
  *v61 = v58;
  v61[1] = v60;
  v62 = v89;
  v63 = v57;
  sub_21700CE04();
  v85(v55, v56, v62);
  sub_2167FEF80();
  sub_21700D734();
  v64 = v95;
  v86 = v51;
  v65 = v52 + v51[9];
  *v65 = v94;
  *(v65 + 16) = v64;
  v66 = v82;
  v67 = v63;
  sub_21700CE04();
  v68 = v83;
  sub_21700CD74();
  v69 = v92;
  v70 = v88;
  v88(v66, v92);
  v71 = sub_21700E2C4();
  if (__swift_getEnumTagSinglePayload(v68, 1, v71) == 1)
  {
    v72 = OUTLINED_FUNCTION_2_25();
    v73(v72, v62);
    v70(v63, v69);
    result = sub_216699820(v68, &qword_27CAB78D0, &unk_21701A800);
    v74 = 0;
  }

  else
  {
    v75 = v70;
    v74 = sub_21700E2A4();
    v76 = OUTLINED_FUNCTION_2_25();
    v77(v76, v62);
    v75(v67, v69);
    OUTLINED_FUNCTION_50();
    result = (*(v78 + 8))(v68, v71);
  }

  *(v96 + v86[10]) = v74;
  return result;
}

uint64_t sub_2167FEF38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2167FEF80()
{
  result = qword_27CAB8958;
  if (!qword_27CAB8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8958);
  }

  return result;
}

unint64_t sub_2167FEFD4()
{
  result = qword_27CAB8960;
  if (!qword_27CAB8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8960);
  }

  return result;
}

unint64_t sub_2167FF028()
{
  result = qword_27CAB8970;
  if (!qword_27CAB8970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8968, qword_21701A810);
    sub_2167A7528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8970);
  }

  return result;
}

uint64_t sub_2167FF108(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167FF15C(char a1)
{
  if (a1)
  {
    return 0x6E69616C70;
  }

  else
  {
    return 0x6E656E696D6F7270;
  }
}

uint64_t sub_2167FF1B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2167FF108(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2167FF1E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167FF15C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2167FF214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v42 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  sub_21700CE04();
  v18 = sub_21700CDB4();
  v20 = v19;
  v21 = *(v11 + 8);
  v43 = v9;
  v41 = v21;
  v21(v17, v9);
  if (v20)
  {
    v44 = v18;
    v45 = v20;
    v39 = a3;
    sub_21700F364();
    sub_21700CE04();
    v22 = type metadata accessor for DefaultAccessoryButton(0);
    v23 = a1;
    v24 = v46;
    sub_21700D2E4();
    v25 = v43;
    v41(v14, v43);
    sub_21700D7A4();
    sub_21700CE04();
    (*(v6 + 16))(v40, v24, v42);
    v26 = v39;
    sub_21700D734();
    sub_21700CE04();
    v27 = sub_21700CDB4();
    v29 = v28;
    v30 = v25;
    v31 = v41;
    v41(v14, v30);
    v32 = (v26 + *(v22 + 24));
    *v32 = v27;
    v32[1] = v29;
    sub_21700CE04();
    sub_2167FFBC8();
    sub_21700CCC4();
    (*(v6 + 8))(v46, v42);
    v33 = v43;
    v31(v23, v43);
    result = (v31)(v14, v33);
    *(v26 + *(v22 + 32)) = v44;
  }

  else
  {
    v35 = sub_21700E2E4();
    sub_2167FFB80(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v37 = v36;
    v38 = type metadata accessor for DefaultAccessoryButton(0);
    *v37 = 25705;
    v37[1] = 0xE200000000000000;
    v37[2] = v38;
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v6 + 8))(v46, v42);
    return (v41)(a1, v43);
  }

  return result;
}

uint64_t sub_2167FF714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DefaultAccessoryButton(0);
  if (*(a1 + *(v4 + 20) + 8))
  {
    sub_21700DF14();
    sub_21700F364();
    v5 = type metadata accessor for DefaultAccessoryButton(0);
    v6 = a2 + v5[7];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    v7 = (a1 + *(v4 + 28));
    v9 = *v7;
    v8 = v7[1];
    sub_21700DF14();
    sub_2167FF880(a1);
    v10 = (a2 + v5[6]);
    *v10 = v9;
    v10[1] = v8;
    v11 = v5[5];
    v12 = sub_21700D7A4();
    result = __swift_storeEnumTagSinglePayload(a2 + v11, 1, 1, v12);
    *(a2 + v5[8]) = 0;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8988, qword_21701A870);
    sub_2167880BC();
    swift_allocError();
    *v15 = xmmword_217014E10;
    *(v15 + 16) = v14;
    swift_willThrow();
    return sub_2167FF880(a1);
  }

  return result;
}

uint64_t sub_2167FF880(uint64_t a1)
{
  v2 = type metadata accessor for DefaultAccessoryButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DefaultAccessoryButton(uint64_t a1)
{
  result = qword_280E39528;
  if (!qword_280E39528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return sub_216688010(a1, qword_280E49558, &nominal type descriptor for DefaultAccessoryButton);
}

void sub_2167FF950(uint64_t a1)
{
  sub_216689C0C(319);
  if (v1 <= 0x3F)
  {
    sub_216688154();
    if (v2 <= 0x3F)
    {
      sub_216689C64(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DefaultAccessoryButton.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2167FFAE4()
{
  result = qword_27CAB8990;
  if (!qword_27CAB8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8990);
  }

  return result;
}

uint64_t sub_2167FFB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2167FFBC8()
{
  result = qword_27CAB89A0;
  if (!qword_27CAB89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB89A0);
  }

  return result;
}

uint64_t sub_2167FFC28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2167FFC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2167FFCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a5;
  v81 = a4;
  v8 = sub_217005EF4();
  v77 = v8;
  OUTLINED_FUNCTION_16();
  v10 = v9;
  v73 = v9;
  v76 = *(v11 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_103_2();
  v83 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v75 = sub_2170075E4();
  OUTLINED_FUNCTION_16();
  v82 = v17;
  v74 = *(v18 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_103_2();
  v79 = v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v66 - v22;
  type metadata accessor for MarketingSheetModel(0);
  sub_2168023F4(&qword_27CAB89A8, type metadata accessor for MarketingSheetModel, &unk_21702E400);
  v23 = OUTLINED_FUNCTION_28_13();
  v26 = OUTLINED_FUNCTION_47_7(v23, v24, v25);
  v27 = *(v10 + 16);
  v70 = v10 + 16;
  v71 = v27;
  (v27)(v16, v26 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_url, v8);

  v28 = OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_47_7(v28, v29, v30);
  swift_unknownObjectRetain();

  v31 = OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_47_7(v31, v32, v33);
  sub_216976E78();

  v34 = v78;
  sub_2170075D4();
  v35 = OUTLINED_FUNCTION_47_7(a1, a2, a3 & 1);
  v36 = v16;
  v72 = v16;
  v37 = v77;
  v38 = v71;
  v71(v16, (v35 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_url), v77);

  v39 = v82;
  v68 = *(v82 + 16);
  v40 = v79;
  v41 = v75;
  v68(v79, v34, v75);
  v38(v83, v36, v37);
  v42 = *(v39 + 80);
  v43 = v39;
  v44 = (v42 + 16) & ~v42;
  v45 = v73;
  v70 = v44 + v74;
  v71 = v44;
  v46 = *(v73 + 80);
  v47 = v44 + v74;
  v48 = (v46 + v44 + v74 + 1) & ~v46;
  v74 = v42 | v46;
  v69 = v48;
  v67 = (v76 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = *(v43 + 32);
  v82 = v43 + 32;
  v51 = v49 + v44;
  v52 = v40;
  v50(v51, v40, v41);
  *(v49 + v47) = 0;
  v76 = *(v45 + 32);
  v53 = v77;
  v76(v49 + v48, v83, v77);
  v54 = v80;
  v55 = v67;
  *(v49 + v67) = v81;
  v56 = v78;
  v68(v54, v78, v41);
  v57 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89B0, &qword_21701AAD8) + 36));
  *v57 = sub_2168001D0;
  v57[1] = v49;
  v57[2] = 0;
  v57[3] = 0;
  v58 = v50;
  v50(v52, v56, v41);
  v59 = v83;
  v60 = v76;
  v76(v83, v72, v53);
  v61 = swift_allocObject();
  v58(v71 + v61, v79, v41);
  v62 = v69;
  *(v61 + v70) = 0;
  v60(v61 + v62, v59, v53);
  *(v61 + v55) = v81;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89B8, &unk_21701AAE0);
  v64 = (v80 + *(v63 + 36));
  *v64 = 0;
  v64[1] = 0;
  v64[2] = sub_2168005A8;
  v64[3] = v61;
  return swift_retain_n();
}

uint64_t sub_216800224()
{
  v7 = OUTLINED_FUNCTION_24_11();
  v8 = type metadata accessor for MarketingSheetDidAppearIntent(v7);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_34();
  (*(v10 + 16))(&v5[v6], v3);
  *v5 = v4 & 1;
  sub_216800310(v5, v1, type metadata accessor for MarketingSheetDidAppearIntent, type metadata accessor for MarketingSheetDidAppearIntent, v2, v0);
  return sub_216801D74();
}

uint64_t sub_216800310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v10 = a3(0);
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v17 = OUTLINED_FUNCTION_36(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  sub_216801DC8(a1, v15, a4);
  sub_21700EA34();

  v21 = sub_21700EA24();
  v22 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v21;
  v23[3] = v24;
  v23[4] = a2;
  sub_216801E28(v15, v23 + v22, a4);
  sub_21677E228(0, 0, v19, a6, v23);
}

uint64_t sub_2168004BC()
{
  v7 = OUTLINED_FUNCTION_24_11();
  v8 = type metadata accessor for MarketingSheetDidDisappearIntent(v7);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_34();
  (*(v10 + 16))(&v5[v6], v3);
  *v5 = v4 & 1;
  sub_216800310(v5, v1, type metadata accessor for MarketingSheetDidDisappearIntent, type metadata accessor for MarketingSheetDidDisappearIntent, v2, v0);
  return sub_216801D74();
}

uint64_t sub_2168005DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, void, unint64_t, void, uint64_t, uint64_t))
{
  v7 = sub_2170075E4();
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = v9 + *(v10 + 64);
  v12 = sub_217005EF4();
  OUTLINED_FUNCTION_2(v12);
  v14 = v13;
  v16 = v15;
  v17 = (v11 + *(v14 + 80) + 1) & ~*(v14 + 80);
  return a3(v3 + v9, *(v3 + v11), v3 + v17, *(v3 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_216800700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_21700D2A4();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  v5[19] = swift_task_alloc();
  v9 = sub_21700D3B4();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  sub_21700EA34();
  v5[23] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v5[24] = v11;
  v5[25] = v10;

  return MEMORY[0x2822009F8](sub_216800958, v11, v10);
}

uint64_t sub_216800958()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_45_5(v2);
  OUTLINED_FUNCTION_39_5();
  if (v0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v1 + 216) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_15(v3);

    return sub_216A992F0(v5, v6, v7);
  }

  else
  {

    if (qword_27CAB5BD0 != -1)
    {
      OUTLINED_FUNCTION_1_25(&qword_27CAB5BD0);
    }

    v9 = sub_217007CA4();
    __swift_project_value_buffer(v9, qword_27CABFEF0);
    v10 = sub_217007C84();
    v11 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v11))
    {
      v12 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v12);
      OUTLINED_FUNCTION_121(&dword_216679000, v13, v14, "JSIntentDispatcher not available");
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_6_22();

    OUTLINED_FUNCTION_23();

    return v15();
  }
}

uint64_t sub_216800AC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 224) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 200);
  v7 = *(v1 + 192);
  if (v0)
  {
    v8 = sub_216802440;
  }

  else
  {
    v8 = sub_216800BE8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216800D3C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[30] = v0;

  v7 = OUTLINED_FUNCTION_20_13();
  v8(v7);
  if (v0)
  {
    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_216802448;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_19_16();
    v13(v12);
    OUTLINED_FUNCTION_44_9();
    v11 = sub_216802444;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_216800EA4()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for MarketingSheetDidDisappearIntent(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_7_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_31(v3);

  return sub_216800700(v5, v6, v7, v8, v9);
}

uint64_t sub_216800F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_21700D2A4();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  v5[19] = swift_task_alloc();
  v9 = sub_21700D3B4();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  sub_21700EA34();
  v5[23] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v5[24] = v11;
  v5[25] = v10;

  return MEMORY[0x2822009F8](sub_2168011C0, v11, v10);
}

uint64_t sub_2168011C0()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_45_5(v2);
  OUTLINED_FUNCTION_39_5();
  if (v0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v1 + 216) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_15(v3);

    return sub_216A996E0(v5, v6, v7);
  }

  else
  {

    if (qword_27CAB5BD0 != -1)
    {
      OUTLINED_FUNCTION_1_25(&qword_27CAB5BD0);
    }

    v9 = sub_217007CA4();
    __swift_project_value_buffer(v9, qword_27CABFEF0);
    v10 = sub_217007C84();
    v11 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v11))
    {
      v12 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v12);
      OUTLINED_FUNCTION_121(&dword_216679000, v13, v14, "JSIntentDispatcher not available");
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_6_22();

    OUTLINED_FUNCTION_23();

    return v15();
  }
}

uint64_t sub_216801328()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 224) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 200);
  v7 = *(v1 + 192);
  if (v0)
  {
    v8 = sub_2168015A4;
  }

  else
  {
    v8 = sub_216801450;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2168015A4()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_34_11();

  OUTLINED_FUNCTION_41_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21680163C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[30] = v0;

  v7 = OUTLINED_FUNCTION_20_13();
  v8(v7);
  if (v0)
  {
    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_216801870;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_19_16();
    v13(v12);
    OUTLINED_FUNCTION_44_9();
    v11 = sub_2168017A4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2168017A4()
{
  OUTLINED_FUNCTION_33_10();

  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v0, v1);
  OUTLINED_FUNCTION_6_22();

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216801870()
{
  OUTLINED_FUNCTION_33_10();

  (*(v6 + 8))(v3, v4);
  (*(v5 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_41_7();

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_21680194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_21700D2A4();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  v5[19] = swift_task_alloc();
  v9 = sub_21700D3B4();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  sub_21700EA34();
  v5[23] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v5[24] = v11;
  v5[25] = v10;

  return MEMORY[0x2822009F8](sub_216801BA4, v11, v10);
}

uint64_t sub_216801BA4()
{
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_45_5(v2);
  OUTLINED_FUNCTION_39_5();
  if (v0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v1 + 216) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_8_15(v3);

    return sub_216A996E0(v5, v6, v7);
  }

  else
  {

    if (qword_27CAB5BD0 != -1)
    {
      OUTLINED_FUNCTION_1_25(&qword_27CAB5BD0);
    }

    v9 = sub_217007CA4();
    __swift_project_value_buffer(v9, qword_27CABFEF0);
    v10 = sub_217007C84();
    v11 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v11))
    {
      v12 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v12);
      OUTLINED_FUNCTION_121(&dword_216679000, v13, v14, "JSIntentDispatcher not available");
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_6_22();

    OUTLINED_FUNCTION_23();

    return v15();
  }
}

uint64_t sub_216801D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216801D74()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216801DC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216801E28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216801E88()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for MarketingSheetDidAppearIntent(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_7_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_31(v3);

  return sub_216800F68(v5, v6, v7, v8, v9);
}

uint64_t sub_216801F4C()
{
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_216802034()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for MarketingSheetDidDisappearIntent(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_7_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_31(v3);

  return sub_216800700(v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_5Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v1 + v2[7];
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v4 + v3);

  return swift_deallocObject();
}

uint64_t sub_2168021E8()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for MarketingSheetDidAppearIntent(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_7_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_31(v3);

  return sub_21680194C(v5, v6, v7, v8, v9);
}
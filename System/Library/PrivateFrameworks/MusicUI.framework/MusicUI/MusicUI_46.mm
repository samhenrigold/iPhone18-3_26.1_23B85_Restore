void sub_216B345CC()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_108_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42_2();
  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v13 + 16))(v0, v5);
  swift_storeEnumTagMultiPayload();
  v14 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  sub_216B88F54(v3 + v14, v9);
  sub_216B34D98(v9, type metadata accessor for MenuContext);
  OUTLINED_FUNCTION_4_87();
  OUTLINED_FUNCTION_0_159();
  sub_216B34D98(v0, v15);
  sub_21678C1C4();
  sub_216697664(v1, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(inited, xmmword_217013DA0);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

void sub_216B347C4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_48();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_108_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42_2();
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  *v0 = v5;
  v0[1] = v6;
  v0[2] = v7;
  swift_storeEnumTagMultiPayload();
  sub_21700DF14();
  sub_21700DF14();
  OUTLINED_FUNCTION_4_87();
  OUTLINED_FUNCTION_0_159();
  sub_216B34D98(v0, v8);
  sub_21678C1C4();
  OUTLINED_FUNCTION_14_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_11_60(inited, xmmword_217013DA0);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B348F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for ReportMusicItemConcernAction(0);
  v6[4] = sub_216B34E50(&qword_280E47630, type metadata accessor for ReportMusicItemConcernAction, &unk_21702CC60);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_216B34DF0(a2, boxed_opaque_existential_1, type metadata accessor for ReportMusicItemConcernAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216B349E8()
{

  v1 = OBJC_IVAR____TtC7MusicUI32ReportAConcernMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216B34A64()
{
  sub_216B349E8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for ReportAConcernMenuActionProvider(uint64_t a1)
{
  result = qword_280E2F778;
  if (!qword_280E2F778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B34B10(uint64_t a1)
{
  sub_216692BBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_216B34C6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216B34CCC()
{
  v1 = *(type metadata accessor for ReportMusicItemConcernAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v4);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_216B348F8(v6, v0 + v2, v7);
}

uint64_t sub_216B34D98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B34DF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B34E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B34EB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_216B34ED0, 0, 0);
}

void sub_216B34ED0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedServerObjectDatabase];
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = sub_2166BF480(v1);
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v1 & 0xFFFFFFFFFFFFFF8;
  v8 = v1 + 32;
  while (v4 != v5)
  {
    if (v6)
    {
      v9 = MEMORY[0x21CEA0220](v5, v15[2]);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v8 + 8 * v5);
    }

    v10 = v9;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = [v2 modelObjectMatchingIdentifierSet:v9 propertySet:v15[3]];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 innermostModelObject];

      MEMORY[0x21CE9F610]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      v3 = v16;
      ++v5;
    }

    else
    {

      ++v5;
    }
  }

  v14 = v15[1];

  v14(v3);
}

uint64_t dispatch thunk of ModelObjectProvider.fetchModelObjects(matching:with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_216848948;

  return v8(a1, a2);
}

uint64_t sub_216B35258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
      v37 = type metadata accessor for CancelFollowUserRequestAction(0);
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for CancelFollowUserRequestAction(0);
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

uint64_t sub_216B35648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216B3569C()
{
  OUTLINED_FUNCTION_33();
  v0[24] = v13;
  v0[25] = v14;
  v0[22] = v1;
  v0[23] = v2;
  v0[20] = v3;
  v0[21] = v4;
  v0[18] = v5;
  v0[19] = v6;
  v0[17] = v7;
  v0[26] = *(v14 + 16);
  v0[27] = swift_getAssociatedTypeWitness();
  v8 = sub_21700F164();
  v0[28] = v8;
  v0[29] = *(v8 - 8);
  v0[30] = swift_task_alloc();
  type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
  v0[31] = swift_task_alloc();
  sub_21700EA34();
  v0[32] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v0[33] = v10;
  v0[34] = v9;

  return MEMORY[0x2822009F8](sub_216B357FC, v10, v9);
}

uint64_t sub_216B357FC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 144);
  (*(*(v3 - 8) + 16))(v1, *(v0 + 160), v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_216C95998(v7, v6, v1, v5, v3, v4, AssociatedConformanceWitness, v2);
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216EAA8A0(v9, (v0 + 16), v11, v10, (v0 + 56));
  v12 = swift_task_alloc();
  *(v0 + 280) = v12;
  v13 = *(v0 + 192);
  *(v0 + 96) = *(v0 + 176);
  *(v0 + 112) = v13;
  type metadata accessor for MapPlayActionImplementation(0, v0 + 96);
  swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_216B35AAC;

  return sub_216B6DB60();
}

uint64_t sub_216B35AAC()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_216B35C44;
  }

  else
  {
    v5 = sub_216B35BBC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216B35BBC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[31];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_216913F30(v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216B35C44()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[31];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_216913F30(v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216B35CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167C6580;

  return sub_216B3569C();
}

uint64_t sub_216B35DA4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B35DE8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B35E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216B35EF4(uint64_t a1, uint64_t a2)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v41 = v4;
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - v6;
  v39 = type metadata accessor for PresentSheetAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  type metadata accessor for MusicAppDestination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8, &unk_21702CC00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for ReportableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v44 = v23;
  MEMORY[0x28223BE20](v24);
  type metadata accessor for ObjectGraph(0);
  v42 = a2;
  sub_21700E094();
  v25 = type metadata accessor for ReportMusicItemConcernAction(0);
  sub_216B363C4(a1 + *(v25 + 20), v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_216B36434(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    sub_216B3649C();
    swift_allocError();
    v26 = sub_21700E1E4();
    v27 = OUTLINED_FUNCTION_2_109();
    v28(v27);
  }

  else
  {
    sub_216B364F0(v17, v22);
    sub_216B3659C(v22, v14, type metadata accessor for ReportableMusicItem);
    swift_storeEnumTagMultiPayload();
    v29 = v39;
    sub_216B3659C(v14, v10 + *(v39 + 20), type metadata accessor for MusicAppDestination);
    type metadata accessor for ModalActionModelDestinations.Destination(0);
    swift_storeEnumTagMultiPayload();
    sub_21700D284();
    OUTLINED_FUNCTION_34();
    (*(v30 + 16))(v10, a1);
    v45[3] = v29;
    v45[4] = sub_216B36554(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    sub_216B3659C(v10, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
    v32 = v40;
    v33 = v41;
    v34 = v43;
    (*(v41 + 104))(v40, *MEMORY[0x277D21E18], v43);
    v26 = sub_21700D5E4();
    (*(v33 + 8))(v32, v34);
    sub_216B365FC(v10, type metadata accessor for PresentSheetAction);
    sub_216B365FC(v14, type metadata accessor for MusicAppDestination);
    sub_216B365FC(v22, type metadata accessor for ReportableMusicItem);
    v35 = OUTLINED_FUNCTION_2_109();
    v36(v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  return v26;
}

uint64_t sub_216B363C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8, &unk_21702CC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B36434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEB8, &unk_21702CC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216B3649C()
{
  result = qword_27CAC3280;
  if (!qword_27CAC3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3280);
  }

  return result;
}

uint64_t sub_216B364F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportableMusicItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B36554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B3659C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B365FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ReportMusicItemConcernActionImplementation.PerformError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_216B36704()
{
  result = qword_27CAC3288[0];
  if (!qword_27CAC3288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CAC3288);
  }

  return result;
}

unint64_t sub_216B3676C()
{
  result = qword_27CAB7F10;
  if (!qword_27CAB7F10)
  {
    type metadata accessor for CancelFollowUserRequestAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7F10);
  }

  return result;
}

void sub_216B368A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3, v4);
  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (qword_280E38808 != -1)
  {
    OUTLINED_FUNCTION_0_160(&qword_280E38808);
    v5 = v6;
  }

  [v5 addObserver:v2 selector:sel_eventDidFire name:qword_280E73C70 object:0];
}

void sub_216B36974()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_280E38808 != -1)
  {
    OUTLINED_FUNCTION_0_160(&qword_280E38808);
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_280E73C70 object:0];
}

uint64_t PlaylistAddableItem.addableItem.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaylistAddableItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_80();
  sub_216B36B5C(v1, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v4 = sub_21700C084();
      v5 = MEMORY[0x277CD81E0];
      break;
    case 2u:
      v4 = sub_21700BA44();
      v5 = MEMORY[0x277CD7E08];
      break;
    case 3u:
      v4 = sub_21700C1E4();
      v5 = MEMORY[0x277CD8288];
      break;
    default:
      v4 = sub_21700C924();
      v5 = MEMORY[0x277CD85F8];
      break;
  }

  a1[3] = v4;
  a1[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v4 - 8) + 32))(boxed_opaque_existential_1, v1, v4);
}

uint64_t sub_216B36B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistAddableItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlaylistAddableItem.itemTitle.getter()
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v35 = v2;
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_80();
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v33 = v4;
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v22 = type metadata accessor for PlaylistAddableItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  sub_216B36B5C(v37, v25 - v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_7_75();
      v31(v14, v26, v8);
      v22 = sub_21700C014();
      (*(v10 + 8))(v14, v8);
      return v22;
    case 2u:
      v30 = v34;
      (*(v33 + 32))(v7, v26, v34);
      sub_21700BA14();
      OUTLINED_FUNCTION_3_108();
      v28 = v7;
      goto LABEL_5;
    case 3u:
      v30 = v36;
      (*(v35 + 32))(v0, v26, v36);
      sub_21700C184();
      OUTLINED_FUNCTION_3_108();
      v28 = v0;
LABEL_5:
      v29 = v30;
      goto LABEL_6;
    default:
      (*(v17 + 32))(v21, v26, v15);
      sub_21700C804();
      OUTLINED_FUNCTION_3_108();
      v28 = v21;
      v29 = v15;
LABEL_6:
      v27(v28, v29);
      return v22;
  }
}

uint64_t static PlaylistAddableItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v64 = v4;
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v58 = v6 - v5;
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v62 = v8;
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v57 = v10 - v9;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v60 = v12;
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v59 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_80();
  type metadata accessor for PlaylistAddableItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v56 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v56 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3310, &qword_217047400);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v56 - v32;
  v35 = *(v34 + 56);
  sub_216B36B5C(v66, &v56 - v32);
  sub_216B36B5C(v67, &v33[v35]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_216B36B5C(v33, v27);
      if (OUTLINED_FUNCTION_8_71() == 1)
      {
        v50 = v60;
        v49 = v61;
        OUTLINED_FUNCTION_4_88();
        v51(v15);
        v40 = sub_21700BFE4();
        v41 = *(v50 + 8);
        v41(v15, v49);
        v42 = v27;
        v43 = v49;
        goto LABEL_10;
      }

      (*(v60 + 8))(v27, v61);
      goto LABEL_14;
    case 2u:
      sub_216B36B5C(v33, v24);
      if (OUTLINED_FUNCTION_8_71() != 2)
      {
        (*(v62 + 8))(v24, v63);
        goto LABEL_14;
      }

      v37 = v62;
      v36 = v63;
      OUTLINED_FUNCTION_4_88();
      v38 = v57;
      v39(v57);
      v40 = sub_21700B9E4();
      v41 = *(v37 + 8);
      v41(v38, v36);
      v42 = v24;
      v43 = v36;
LABEL_10:
      v41(v42, v43);
      goto LABEL_16;
    case 3u:
      sub_216B36B5C(v33, v21);
      if (OUTLINED_FUNCTION_8_71() == 3)
      {
        v45 = v64;
        v44 = v65;
        OUTLINED_FUNCTION_4_88();
        v46 = v58;
        v47(v58);
        v40 = sub_21700C154();
        v48 = *(v45 + 8);
        v48(v46, v44);
        v48(v21, v44);
        goto LABEL_16;
      }

      (*(v64 + 8))(v21, v65);
      goto LABEL_14;
    default:
      sub_216B36B5C(v33, v30);
      if (OUTLINED_FUNCTION_8_71())
      {
        (*(v59 + 8))(v30, v16);
LABEL_14:
        sub_216B3744C(v33);
        v40 = 0;
      }

      else
      {
        v52 = v59;
        OUTLINED_FUNCTION_4_88();
        v53(v2);
        v40 = sub_21700C7B4();
        v54 = *(v52 + 8);
        v54(v2, v16);
        v54(v30, v16);
LABEL_16:
        sub_216AEE250(v33);
      }

      return v40 & 1;
  }
}

uint64_t sub_216B3744C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3310, &qword_217047400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlaylistAddableItem.hash(into:)()
{
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v32 = v2;
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v30 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  type metadata accessor for PlaylistAddableItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_80();
  sub_216B36B5C(v34, v0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_7_75();
      v29(v17, v0, v12);
      MEMORY[0x21CEA0720](1);
      sub_216B379E0(&qword_27CABC530, MEMORY[0x277CD8238], MEMORY[0x277CD8250]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      result = (*(v30 + 8))(v17, v12);
      break;
    case 2u:
      OUTLINED_FUNCTION_7_75();
      v28(v11, v0, v6);
      MEMORY[0x21CEA0720](2);
      sub_216B379E0(&qword_27CABC548, MEMORY[0x277CD7E58], MEMORY[0x277CD7E68]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      result = (*(v31 + 8))(v11, v6);
      break;
    case 3u:
      (*(v32 + 32))(v5, v0, v33);
      MEMORY[0x21CEA0720](3);
      sub_216B379E0(&qword_27CACA4A0, MEMORY[0x277CD82C8], MEMORY[0x277CD82D8]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      result = (*(v32 + 8))(v5, v33);
      break;
    default:
      OUTLINED_FUNCTION_7_75();
      v26(v24, v0, v18);
      MEMORY[0x21CEA0720](0);
      sub_216B379E0(&unk_27CACA4B0, MEMORY[0x277CD8608], MEMORY[0x277CD8618]);
      OUTLINED_FUNCTION_34_2();
      sub_21700E434();
      result = (*(v20 + 8))(v24, v18);
      break;
  }

  return result;
}

uint64_t PlaylistAddableItem.hashValue.getter()
{
  sub_21700F8F4();
  PlaylistAddableItem.hash(into:)();
  return sub_21700F944();
}

uint64_t sub_216B3795C(uint64_t a1)
{
  sub_21700F8F4();
  PlaylistAddableItem.hash(into:)();
  return sub_21700F944();
}

uint64_t sub_216B379E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B37A50@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v45 = a2;
  v48 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v42 = v7;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v9;
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v43 = v10;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v46 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v20, v11);
  if (v23)
  {
    v41 = v3;
    v25 = v44;
    *v44 = v21;
    v25[1] = v23;
    v26 = v46;
    sub_21700CE04();
    v27 = sub_21700CD44();
    v24(v17, v11);
    *(v25 + 16) = v27 & 1;
    sub_21700CE04();
    (*(v47 + 16))(v42, v45, v48);
    v28 = v43;
    v29 = v41;
    sub_21700D224();
    v30 = OUTLINED_FUNCTION_2_110();
    v31(v30);
    v24(v26, v11);
    if (v29)
    {
    }

    else
    {
      v37 = type metadata accessor for FollowUserAction(0);
      return (*(v39 + 32))(v44 + *(v37 + 24), v28, v40);
    }
  }

  else
  {
    v33 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v35 = v34;
    v36 = type metadata accessor for FollowUserAction(0);
    *v35 = 0x72506C6169636F73;
    v35[1] = 0xEF4449656C69666FLL;
    v35[2] = v36;
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    (*(v47 + 8))(v45, v48);
    return (v24)(v46, v11);
  }
}

uint64_t sub_216B37F10(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

void sub_216B37F58()
{
  OUTLINED_FUNCTION_22_3();
  v111 = v1;
  v112 = v2;
  v113 = v3;
  v107 = v4;
  v5 = *(*v0 + 80);
  v6 = *v0;
  v110 = v0;
  v7 = *(v6 + 88);
  v8 = OUTLINED_FUNCTION_6_5();
  type metadata accessor for PageUpdateDescriptor(v8, v9, v7, v10);
  OUTLINED_FUNCTION_1();
  v104 = v12;
  v105 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v109 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  v103 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v101 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47_1();
  v102 = v19;
  v20 = OUTLINED_FUNCTION_4_1();
  v21 = _s7SectionVMa(v20);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v99 = v23;
  v24 = OUTLINED_FUNCTION_4_1();
  v26 = type metadata accessor for PageChangeInstruction.Instruction(v24, v5, v7, v25);
  OUTLINED_FUNCTION_1();
  v108 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v98 - v29;
  OUTLINED_FUNCTION_6_5();
  v31 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = (&v98 - v35);
  OUTLINED_FUNCTION_16();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_0();
  v100 = v40;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  v106 = v42;
  OUTLINED_FUNCTION_3_1();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v98 - v45;
  (*(v33 + 16))(v36, v113, v31, v44);
  if (__swift_getEnumTagSinglePayload(v36, 1, v5) == 1)
  {
    (*(v33 + 8))(v36, v31);
    v47 = OUTLINED_FUNCTION_6_5();
    v50 = type metadata accessor for PageChangeInstructionPerformer.PageChangeInstructionUpdateError(v47, v48, v7, v49);
    v51 = OUTLINED_FUNCTION_14_51(v50);
    OUTLINED_FUNCTION_4(v51);
    *v52 = 0;
    swift_willThrow();
  }

  else
  {
    v98 = v7;
    v113 = v38;
    v53 = *(v38 + 32);
    v53(v46, v36, v5);
    (*(v108 + 16))(v30, v112, v26);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = v109;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_13_49();
        v84 = v99;
        sub_2166C63AC();
        v73 = v102;
        OUTLINED_FUNCTION_15_50();
        sub_216B3861C();
        sub_216AD16E8(v84, v36);
        if (!v1)
        {
          goto LABEL_15;
        }

        v85 = OUTLINED_FUNCTION_31_37();
        v86(v85);
        break;
      case 2:
        OUTLINED_FUNCTION_15_50();
        sub_216B3A0BC();
        goto LABEL_7;
      case 3:
        v73 = v101;
        OUTLINED_FUNCTION_15_50();
        sub_216B38C28(v74, v75, v76, v77, v78, v79, v80, v81, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
        if (v1)
        {
          goto LABEL_10;
        }

LABEL_15:
        (*(v104 + 32))(v107, v73, v105);
        goto LABEL_16;
      case 4:
        v55 = v103;
        OUTLINED_FUNCTION_15_50();
        sub_216B397D8(v65, v66, v67, v68, v69, v70, v71, v72, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
LABEL_7:
        if (v1)
        {
LABEL_10:
          v82 = OUTLINED_FUNCTION_31_37();
          v83(v82);
        }

        else
        {

          (*(v104 + 32))(v107, v55, v105);
LABEL_16:
          v61 = v98;
          v62 = v113;
LABEL_17:
          v93 = OUTLINED_FUNCTION_6_5();
          v96 = type metadata accessor for PageChangeInstruction(v93, v94, v61, v95);
          v97 = *(v112 + *(v96 + 36));
          if (v97 != 1)
          {
            sub_2168E6C28(v97);
          }

          (*(v62 + 8))(v46, v5);
        }

        break;
      case 5:
        v62 = v113;
        (*(v113 + 16))(v106, v46, v5);
        OUTLINED_FUNCTION_24_30();
        v61 = v98;
        sub_216E41D9C(v87, v88, v89, v90, v91, v5, v98, v92);
        goto LABEL_17;
      default:
        v56 = v106;
        v53(v106, v30, v5);
        v57 = v110;
        sub_2168E689C();
        v109 = &v98;
        MEMORY[0x28223BE20](v58);
        v59 = v98;
        *(&v98 - 4) = v5;
        *(&v98 - 3) = v59;
        *(&v98 - 2) = v56;
        _s15ContentObserverCMa(255, v5, v59, v60);
        OUTLINED_FUNCTION_32();
        sub_21700E984();
        sub_21700DF14();
        OUTLINED_FUNCTION_0_161();
        swift_getWitnessTable();
        sub_21700E7A4();
        v61 = v59;

        v62 = v113;
        v63 = v100;
        (*(v113 + 16))(v100, v56, v5);
        v64 = sub_216E427CC(v5, v61);
        sub_216E41D9C(v63, v64, *(v57 + 32), 1, 0, v5, v61, v107);
        (*(v62 + 8))(v56, v5);
        goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216B3860C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

void sub_216B3861C()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v5 = v4;
  v74 = v6;
  v7 = *v0;
  v8 = *(*v0 + 80);
  OUTLINED_FUNCTION_16();
  v77 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v73 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_1();
  v76 = v13;
  v14 = OUTLINED_FUNCTION_4_1();
  v15 = type metadata accessor for SectionContent(v14);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v80 = v17;
  v18 = OUTLINED_FUNCTION_4_1();
  v81 = _s7SectionVMa(v18);
  OUTLINED_FUNCTION_1();
  v79 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v82 = v21;
  v75 = v0;
  v22 = *(v7 + 88);
  v23 = *(v22 + 16);
  v25 = v23 + 32;
  v24 = *(v23 + 32);
  v26 = v24(v8, v23);
  v85 = v5;
  v83[2] = v5;
  v27 = sub_216CE0F88(sub_216B3AC5C, v83, v26);
  v29 = v28;
  v78 = v1;

  if (v29)
  {
    v31 = type metadata accessor for PageChangeInstructionPerformer.PageChangeInstructionUpdateError(0, v8, v22, v30);
    v32 = OUTLINED_FUNCTION_14_51(v31);
    OUTLINED_FUNCTION_4(v32);
    *v33 = 1;
    swift_willThrow();
LABEL_11:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  v71 = v22;
  v72 = v8;
  v34 = v3;
  v35 = v24(v8, v23);
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v34 = v35;
  if (v27 >= *(v35 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    sub_216E15A14();
    v49 = v68;
    *v8 = v68;
    goto LABEL_8;
  }

  v70 = v3;
  v29 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v36 = *(v79 + 72) * v27;
  OUTLINED_FUNCTION_1_135();
  v24 = v82;
  sub_216B3ADD0();

  v37 = v78;
  sub_2169B6454(v85 + *(v81 + 52), v38, v39, v40, v41, v42, v43, v44, v69, v3, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  if (v37)
  {
    OUTLINED_FUNCTION_1_117();
    v46 = v82;
LABEL_10:
    sub_216AD16E8(v46, v45);
    goto LABEL_11;
  }

  v79 = v36;
  OUTLINED_FUNCTION_6_75();
  sub_216B3AF08();
  v47 = *(v77 + 16);
  v25 = v72;
  v80 = v77 + 16;
  v78 = v47;
  v47(v76, v70, v72);
  v34 = (*(v23 + 48))(v84, v72, v23);
  v8 = v48;
  v49 = *v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v51 = v71;
  if (v27 < *(v49 + 16))
  {
    sub_216B3AD10(v24, v49 + v29 + v79);
    v52 = v34(v84, 0);
    v84[0] = *(v75 + 24);
    MEMORY[0x28223BE20](v52);
    *(&v69 - 4) = v25;
    *(&v69 - 3) = v51;
    *(&v69 - 2) = v53;
    _s15ContentObserverCMa(255, v25, v51, v54);
    OUTLINED_FUNCTION_32();
    sub_21700E984();
    sub_21700DF14();
    OUTLINED_FUNCTION_0_161();
    swift_getWitnessTable();
    sub_21700E7A4();

    v55 = v76;
    v78(v73, v76, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98, &qword_217041020);
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0, &qword_217041028) - 8);
    v57 = v51;
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_217013DA0;
    v60 = (v59 + v58);
    v61 = v85[1];
    *v60 = *v85;
    v60[1] = v61;
    OUTLINED_FUNCTION_12_55();
    sub_216B3ADD0();
    sub_21700DF14();
    sub_21700E384();
    (*(v77 + 8))(v55, v25);
    OUTLINED_FUNCTION_24_30();
    sub_216E41D9C(v62, v63, v64, v65, v66, v25, v57, v67);
    v46 = v82;
    v45 = &v69 - 6;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_216B38BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216ABD99C(a2, result, a3, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_216B38C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v161 = v21;
  v23 = v22;
  v157 = v24;
  v133 = v25;
  v26 = *v20;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8, &qword_2170475B0);
  OUTLINED_FUNCTION_36(v27);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v139 = &v131 - v29;
  v30 = OUTLINED_FUNCTION_4_1();
  v31 = type metadata accessor for SectionContent(v30);
  OUTLINED_FUNCTION_1();
  v154 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  v150 = v36;
  v37 = OUTLINED_FUNCTION_4_1();
  v151 = _s7SectionVMa(v37);
  OUTLINED_FUNCTION_1();
  v153 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47_1();
  v144 = v41;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3338, &qword_2170475B8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  v146 = &v131 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3340, &qword_2170475C0);
  v45 = OUTLINED_FUNCTION_36(v44);
  MEMORY[0x28223BE20](v45);
  v47 = &v131 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47_1();
  v158 = v49;
  v50 = *(v26 + 80);
  OUTLINED_FUNCTION_16();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_1_0();
  v152 = v54;
  OUTLINED_FUNCTION_3_1();
  v56 = MEMORY[0x28223BE20](v55);
  v58 = (&v131 - v57);
  v59 = *(v52 + 16);
  i = v23;
  v160 = v59;
  (v59)(&v131 - v57, v23, v50, v56);
  v164[0] = v157;
  v140 = v31;
  v164[4] = sub_21700E384();
  v162 = v50;
  v141 = v20;
  v60 = *(v26 + 88);
  v163 = v60;
  type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor(255, v50, v60, v61);
  OUTLINED_FUNCTION_32();
  sub_21700E984();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC3348, &qword_2170475C8);
  OUTLINED_FUNCTION_0_161();
  swift_getWitnessTable();
  v62 = v161;
  sub_21700E794();
  if (v62)
  {
    goto LABEL_2;
  }

  v157 = v47;
  v161 = 0;
  v148 = sub_21700E384();
  v136 = v60;
  v63 = *(v60 + 16);
  v64 = *(v63 + 32);
  v149 = v50;
  v65 = v64(v50, v63);
  v66 = 0;
  v67 = *(v65 + 16);
  v135 = v63;
  v134 = v63 + 48;
  v132 = v52;
  v137 = v58;
  v68 = v152;
  v147 = v52 + 16;
  v69 = v159;
  v70 = v160;
  v71 = v154;
  v72 = v142;
  v73 = v144;
  v155 = v67;
  for (i = v65; ; v65 = i)
  {
    if (v66 == v67)
    {
      v74 = 1;
      v66 = v67;
      v75 = v157;
    }

    else
    {
      if (v66 >= *(v65 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v76 = v66 + 1;
      OUTLINED_FUNCTION_21_1();
      *v77 = v66;
      OUTLINED_FUNCTION_1_135();
      v79 = v78;
      sub_216B3ADD0();
      v75 = v157;
      sub_216972A6C(v79, v157, &qword_27CAC3338, &qword_2170475B8);
      v74 = 0;
      v66 = v76;
      v71 = v154;
    }

    __swift_storeEnumTagSinglePayload(v75, v74, 1, v69);
    v80 = v75;
    v81 = v158;
    sub_216972A6C(v80, v158, &qword_27CAC3340, &qword_2170475C0);
    if (__swift_getEnumTagSinglePayload(v81, 1, v69) == 1)
    {
      v73 = v137;

      v72 = v149;
      if (!*(a10 + 16))
      {
LABEL_28:
        v70(v68, v73, v72);
        OUTLINED_FUNCTION_24_30();
        sub_216E41D9C(v123, v124, v125, v126, v127, v72, v136, v128);

        (*(v132 + 8))(v73, v72);
        goto LABEL_29;
      }

      if (qword_27CAB5DB0 == -1)
      {
LABEL_25:
        v114 = sub_217007CA4();
        __swift_project_value_buffer(v114, qword_27CAC3320);
        v115 = sub_217007C84();
        v116 = sub_21700ED84();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v164[0] = v118;
          *v117 = 136446210;
          sub_21700DF14();
          v119 = sub_21700E394();
          v121 = v120;

          v122 = sub_2166A85FC(v119, v121, v164);
          v68 = v152;

          *(v117 + 4) = v122;
          _os_log_impl(&dword_216679000, v115, v116, "Unable to update items in sections with IDs: %{public}s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v118);
          OUTLINED_FUNCTION_6();
          v70 = v160;
          OUTLINED_FUNCTION_6();
        }

        goto LABEL_28;
      }

LABEL_34:
      OUTLINED_FUNCTION_16_49(&qword_27CAB5DB0);
      goto LABEL_25;
    }

    v82 = *v81;
    OUTLINED_FUNCTION_1_135();
    sub_2166C63AC();
    v70 = a10;
    if (!*(a10 + 16))
    {
      goto LABEL_19;
    }

    v68 = *v73;
    v83 = v73[1];
    sub_2166AF66C(*v73, v83);
    if ((v84 & 1) == 0)
    {
      OUTLINED_FUNCTION_22_38();
LABEL_19:
      v70 = v160;
      goto LABEL_22;
    }

    v143 = *(v71 + 72);
    sub_216B3ADD0();
    v85 = v150;
    sub_2166C63AC();
    v86 = v161;
    sub_2169A4B24(v85, v87, v88, v89, v90, v91, v92, v93, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
    if (v86)
    {
      break;
    }

    v161 = 0;
    v94 = v137;
    v73 = (*(v135 + 48))(v164, v149);
    v96 = v95;
    v97 = *v95;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v96 = v97;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_216E15A14();
      v97 = v113;
      *v96 = v113;
    }

    v72 = v164;
    if ((v82 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    if (v82 >= *(v97 + 16))
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_6_75();
    sub_216B3AF08();
    v99 = (v73)(v164, 0);
    v145 = &v131;
    v164[0] = v141[3];
    MEMORY[0x28223BE20](v99);
    v100 = v149;
    v101 = v136;
    *(&v131 - 4) = v149;
    *(&v131 - 3) = v101;
    *(&v131 - 2) = v94;
    *(&v131 - 1) = v82;
    _s15ContentObserverCMa(255, v100, v101, v102);
    OUTLINED_FUNCTION_32();
    sub_21700E984();
    sub_21700DF14();
    OUTLINED_FUNCTION_0_161();
    swift_getWitnessTable();
    v103 = v161;
    sub_21700E7A4();
    v161 = v103;

    OUTLINED_FUNCTION_1_135();
    v73 = v144;
    sub_216B3ADD0();
    sub_21700DF14();
    v104 = v148;
    swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v104;
    sub_216939D04();

    v148 = v164[0];
    sub_2166AF66C(v68, v83);
    if (v105)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v164[0] = a10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD170, &qword_217039E50);
      sub_21700F554();
      v106 = v164[0];

      v107 = v139;
      sub_2166C63AC();
      OUTLINED_FUNCTION_8();
      v108 = v140;
      sub_21700F574();
      a10 = v106;
      OUTLINED_FUNCTION_22_38();
      v70 = v160;
    }

    else
    {
      v108 = v140;
      OUTLINED_FUNCTION_22_38();
      v70 = v160;
      v107 = v139;
    }

    v110 = v150;
    __swift_storeEnumTagSinglePayload(v107, v109, 1, v108);
    sub_216B3AE24(v107);
    OUTLINED_FUNCTION_11_61();
    sub_216AD16E8(v110, v111);
    v71 = v154;
    v72 = v142;
LABEL_22:
    OUTLINED_FUNCTION_1_117();
    sub_216AD16E8(v73, v112);
    v69 = v159;
    v67 = v155;
  }

  OUTLINED_FUNCTION_11_61();
  sub_216AD16E8(v150, v129);

  OUTLINED_FUNCTION_1_117();
  sub_216AD16E8(v144, v130);

  v52 = v132;
  v58 = v137;
  v50 = v149;
LABEL_2:
  (*(v52 + 8))(v58, v50);
LABEL_29:
  OUTLINED_FUNCTION_21_4();
}

void sub_216B397D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v119 = v21;
  v23 = v22;
  v25 = v24;
  v98 = v26;
  v27 = *v20;
  v28 = type metadata accessor for SectionContent(0);
  v29 = OUTLINED_FUNCTION_36(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v114 = v30;
  v31 = OUTLINED_FUNCTION_4_1();
  v32 = _s7SectionVMa(v31);
  OUTLINED_FUNCTION_1();
  v106 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47_1();
  v104 = v36;
  v37 = *(v27 + 80);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  v40 = MEMORY[0x28223BE20](v39);
  v99 = v41;
  v42 = *(v41 + 16);
  v115 = &v94 - v43;
  v96 = v41 + 16;
  v95 = v42;
  v42(v40);
  v122[0] = v25;
  v103 = v20;
  v44 = *(v27 + 88);
  v46 = type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor(255, v37, v44, v45);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_32();
  sub_21700E894();
  v124 = sub_21700E384();
  v120 = v37;
  v121 = v44;
  sub_21700E984();
  v110 = v46;
  v47 = sub_21700E3F4();
  OUTLINED_FUNCTION_0_161();
  swift_getWitnessTable();
  v101 = v47;
  v48 = v119;
  sub_21700E794();
  v119 = v48;
  v113 = v32;
  v49 = sub_21700E384();
  v116 = v44;
  v50 = *(v44 + 16);
  v51 = *(v50 + 32);
  v109 = v23;
  v108 = v50 + 32;
  v107 = v51;
  v52 = *(v51(v37, v50) + 16);

  v105 = v52;
  if (v52)
  {
    v53 = 0;
    v100 = v50 + 48;
    v54 = v104;
    v118 = v37;
    v112 = v50;
    while (v53 < *(v107(v37, v50) + 16))
    {
      OUTLINED_FUNCTION_21_1();
      v117 = v55;
      OUTLINED_FUNCTION_1_135();
      sub_216B3ADD0();

      v57 = *v54;
      v56 = v54[1];
      v124 = *v54;
      v125 = v56;
      sub_21700DF14();
      sub_21700E404();

      if (v122[0])
      {
        v111 = v57;
        v37 = v49;
        v61 = v118;
        v60 = v119;
        sub_2169B75E0(v122[0], v122[1], v122[2], v123, v118, v116, v58, v59, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
        if (v60)
        {

          OUTLINED_FUNCTION_1_117();
          sub_216AD16E8(v104, v93);

          (*(v99 + 8))(v115, v61);
          goto LABEL_19;
        }

        v119 = 0;

        v62 = (*(v112 + 48))(v122, v61);
        v64 = v63;
        v65 = *v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v64 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_216E15A14();
          v65 = v74;
          *v64 = v74;
        }

        v49 = v37;
        if (v53 >= *(v65 + 16))
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_6_75();
        sub_216B3AF08();
        v67 = v62(v122, 0);
        v122[0] = v103[3];
        MEMORY[0x28223BE20](v67);
        v37 = v118;
        v69 = v115;
        v68 = v116;
        *(&v94 - 4) = v118;
        *(&v94 - 3) = v68;
        *(&v94 - 2) = v69;
        *(&v94 - 1) = v53;
        _s15ContentObserverCMa(255, v37, v68, v70);
        OUTLINED_FUNCTION_32();
        sub_21700E984();
        sub_21700DF14();
        OUTLINED_FUNCTION_0_161();
        swift_getWitnessTable();
        v71 = v119;
        sub_21700E7A4();
        v119 = v71;

        OUTLINED_FUNCTION_12_55();
        v54 = v104;
        sub_216B3ADD0();
        sub_21700DF14();
        swift_isUniquelyReferenced_nonNull_native();
        v122[0] = v49;
        v72 = v111;
        sub_216939D04();
        v49 = v122[0];
        v124 = v72;
        v125 = v56;
        sub_21700E374();

        sub_216B3AEC8(v122[0]);
        sub_216AD16E8(v54, (&v94 - 6));
        v50 = v112;
      }

      else
      {
        OUTLINED_FUNCTION_1_117();
        sub_216AD16E8(v54, v73);
        v37 = v118;
      }

      if (v105 == ++v53)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_12:
  v75 = sub_21700DF14();
  v76 = MEMORY[0x21CE9F1E0](v75, MEMORY[0x277D837D0], v110, MEMORY[0x277D837E0]);

  if ((v76 & 1) == 0)
  {
    if (qword_27CAB5DB0 == -1)
    {
LABEL_14:
      v77 = sub_217007CA4();
      __swift_project_value_buffer(v77, qword_27CAC3320);
      v78 = sub_217007C84();
      v79 = sub_21700ED84();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v122[0] = v81;
        *v80 = 136446210;
        sub_21700DF14();
        v117 = v49;
        sub_21700DF14();

        v82 = sub_21700E394();
        v84 = v83;

        v85 = sub_2166A85FC(v82, v84, v122);

        *(v80 + 4) = v85;
        _os_log_impl(&dword_216679000, v78, v79, "Unable to update items in sections with IDs: %{public}s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      goto LABEL_17;
    }

LABEL_22:
    OUTLINED_FUNCTION_16_49(&qword_27CAB5DB0);
    goto LABEL_14;
  }

LABEL_17:
  v86 = v115;
  (v95)(v97, v115, v37);
  OUTLINED_FUNCTION_24_30();
  sub_216E41D9C(v87, v88, v89, v90, v91, v37, v116, v92);

  (*(v99 + 8))(v86, v37);
LABEL_19:
  OUTLINED_FUNCTION_21_4();
}

void sub_216B3A0BC()
{
  OUTLINED_FUNCTION_22_3();
  v64 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v60 = v7;
  v8 = *v0;
  v66 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_1();
  v65 = v13;
  v14 = *(v8 + 80);
  OUTLINED_FUNCTION_16();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v62 = v18;
  OUTLINED_FUNCTION_3_1();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v58 = v16;
  v23 = *(v16 + 16);
  v23(&v57 - v21, v4, v14, v20);
  v57 = *(v8 + 88);
  v24 = *(v57 + 16);
  v25 = *(v24 + 48);
  sub_21700DF14();
  v61 = v22;
  v63 = v14;
  v26 = v25(v67, v14, v24);
  sub_216BDD300(v6);
  v26(v67, 0);
  v29 = v64;
  v30 = 0;
  v31 = *(v6 + 16);
  while (v31 != v30)
  {
    v32 = v30 + 1;
    sub_216B3A62C(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v2, v27, v28);
    v30 = v32;
  }

  v59 = v2;
  v64 = v29;
  (v23)(v62, v61, v63);
  v33 = sub_21700E384();
  if (v31)
  {
    v34 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v35 = *(v10 + 72);
    v36 = v65;
    while (1)
    {
      v66 = v31;
      OUTLINED_FUNCTION_13_49();
      sub_216B3ADD0();
      v38 = *v36;
      v37 = v36[1];
      sub_216B3ADD0();
      swift_isUniquelyReferenced_nonNull_native();
      v67[0] = v33;
      v39 = sub_2166AF66C(v38, v37);
      if (__OFADD__(*(v33 + 16), (v40 & 1) == 0))
      {
        break;
      }

      v41 = v39;
      v42 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD160, ">5\a");
      if (sub_21700F554())
      {
        v43 = sub_2166AF66C(v38, v37);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_18;
        }

        v41 = v43;
      }

      v33 = v67[0];
      if (v42)
      {
        sub_216B3AF08();
      }

      else
      {
        *(v67[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
        v45 = (*(v33 + 48) + 16 * v41);
        *v45 = v38;
        v45[1] = v37;
        OUTLINED_FUNCTION_1_135();
        sub_2166C63AC();
        v46 = *(v33 + 16);
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_17;
        }

        *(v33 + 16) = v48;
        sub_21700DF14();
      }

      OUTLINED_FUNCTION_1_117();
      v36 = v65;
      sub_216AD16E8(v65, v49);
      v34 += v35;
      v31 = v66 - 1;
      if (v66 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_21700F824();
    __break(1u);
  }

  else
  {
LABEL_15:
    v50 = v63;
    (*(v58 + 8))(v61, v63);
    OUTLINED_FUNCTION_24_30();
    sub_216E41D9C(v51, v52, v53, v54, v55, v50, v57, v56);
    OUTLINED_FUNCTION_21_4();
  }
}

uint64_t sub_216B3A4F8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

uint64_t sub_216B3A550(void *a1, uint64_t a2)
{
  v2 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_216B3ADD0();
    sub_216A9642C(v4);
    swift_unknownObjectRelease();
    return sub_216AD16E8(v4, _s7SectionVMa);
  }

  return result;
}

uint64_t sub_216B3A62C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  _s15ContentObserverCMa(255, *(*a2 + 80), *(*a2 + 88), a4);
  sub_21700E984();
  sub_21700DF14();
  swift_getWitnessTable();
  sub_21700E7A4();
}

uint64_t sub_216B3A714(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8, &qword_2170475B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  sub_216B3ADD0();
  v21 = (a2 + *(type metadata accessor for PageChangeInstruction.Instruction.ItemUpdateDescriptor(0, a3, v34, v20) + 36));
  v22 = *v21;
  v23 = v21[1];
  v34 = a1;
  sub_216934F7C(v22, v23, *a1);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_216B3AE24(v12);
  }

  else
  {
    sub_2166C63AC();
    v24 = v36;
    sub_2169B6454(v19, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    sub_216AD16E8(v16, type metadata accessor for SectionContent);
    result = sub_216AD16E8(v19, type metadata accessor for SectionContent);
    if (v24)
    {
      return result;
    }

    sub_2166C63AC();
  }

  sub_216B3ADD0();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  sub_21700DF14();
  sub_216A8BA68();
  return sub_216AD16E8(v19, type metadata accessor for SectionContent);
}

uint64_t sub_216B3A9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor(255, a3, a4, a4);
  sub_21700E3F4();
  swift_bridgeObjectRetain_n();
  sub_21700DF14();
  return sub_21700E414();
}

uint64_t sub_216B3AA78(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = _s7SectionVMa(0) - 8;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = (*(*(a5 + 16) + 32))(a4);
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(result + 16) > a3)
    {
      sub_216B3ADD0();

      sub_216A9642C(v10);
      swift_unknownObjectRelease();
      return sub_216AD16E8(v10, _s7SectionVMa);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_216B3ABE8()
{

  return v0;
}

uint64_t sub_216B3AC10()
{
  sub_216B3ABE8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216B3AC94()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC3320);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

uint64_t sub_216B3AD10(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B3ADD0()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_216B3AE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15B8, &qword_2170475B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B3AEC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_216B3AF08()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

_BYTE *sub_216B3AF5C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PushNowPlayingAction(uint64_t a1)
{
  result = qword_280E3BC18;
  if (!qword_280E3BC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B3B0D0(uint64_t a1)
{
  sub_216B3B164();
  if (v1 <= 0x3F)
  {
    sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B3B164()
{
  if (!qword_280E3FDC8[0])
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, qword_280E3FDC8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216B3B364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SelectReplayPeriodAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = type metadata accessor for SelectReplayYearAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0, &unk_217072A00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  sub_216B3B6AC(v2, &v22 - v15);
  v17 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  result = __swift_getEnumTagSinglePayload(v16, 1, v17);
  if (result == 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        result = sub_216B3B7C4(v16);
        break;
      case 3u:
        sub_216B3B71C(v16, v13, type metadata accessor for SelectReplayYearAction);
        *(a1 + 24) = v9;
        *(a1 + 32) = sub_216B3B77C(&qword_27CABE080, type metadata accessor for SelectReplayYearAction, &protocol conformance descriptor for SelectReplayYearAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        v20 = v13;
        v21 = type metadata accessor for SelectReplayYearAction;
        goto LABEL_7;
      case 4u:
        sub_216B3B71C(v16, v8, type metadata accessor for SelectReplayPeriodAction);
        *(a1 + 24) = v4;
        *(a1 + 32) = sub_216B3B77C(&qword_27CAC33D8, type metadata accessor for SelectReplayPeriodAction, &protocol conformance descriptor for SelectReplayPeriodAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        v20 = v8;
        v21 = type metadata accessor for SelectReplayPeriodAction;
LABEL_7:
        result = sub_216B3B71C(v20, boxed_opaque_existential_1, v21);
        break;
      default:
        result = sub_21700F584();
        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t sub_216B3B630()
{
  v0 = sub_21700D704();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_7();
  sub_21700D6F4();
  return sub_21700D244();
}

uint64_t sub_216B3B6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33D0, &unk_217072A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B3B71C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216B3B77C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B3B7C4(uint64_t a1)
{
  v2 = type metadata accessor for AnyAction.OneOf_BaseAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B3B828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(0, a4, a5, a4);
  v13 = (a6 + v12[11]);
  type metadata accessor for CatalogPagePresenter(0, a4, a5, v14);
  swift_getWitnessTable();
  *v13 = sub_217008CF4();
  v13[1] = v15;
  v16 = a6 + v12[12];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a6 + v12[13];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a6 + v12[14];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v12[15];
  *(a6 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v20 = a6 + v12[16];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  sub_216B45350(a1, a6 + v12[9], type metadata accessor for MappedSection);
  result = sub_216B45350(a2, a6, type metadata accessor for MappedArtistLatestReleaseAndTopSongs);
  *(a6 + v12[10]) = a3;
  return result;
}

void sub_216B3B9E0(uint64_t a1)
{
  type metadata accessor for MappedArtistLatestReleaseAndTopSongs(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for MappedSection(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v5 <= 0x3F)
      {
        type metadata accessor for CatalogPagePresenter(255, *(a1 + 16), *(a1 + 24), v4);
        swift_getWitnessTable();
        sub_217008D04();
        if (v6 <= 0x3F)
        {
          sub_216B45208(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v7 <= 0x3F)
          {
            sub_216B3BC0C(319, &qword_280E2B490, type metadata accessor for PersistentPageSectionManager);
            if (v8 <= 0x3F)
            {
              sub_216B45208(319, &qword_280E2B488, &_s9SizeClassON, MEMORY[0x277CDF468]);
              if (v9 <= 0x3F)
              {
                sub_216B3BC0C(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
                if (v10 <= 0x3F)
                {
                  sub_216B45208(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
                  if (v11 <= 0x3F)
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

void sub_216B3BC0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_216B3BCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v97 = a2;
  v96 = a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, v3, v4, a3);
  v6 = OUTLINED_FUNCTION_22_4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  OUTLINED_FUNCTION_28_31();
  sub_2166D9530(v8, &qword_27CABB7D0, &qword_2170479B0, v9);
  OUTLINED_FUNCTION_27_38();
  v147 = &off_282938728;
  v148 = sub_2166D381C(v10, v11, &unk_217064990);
  v149 = v4;
  v12 = OUTLINED_FUNCTION_40_2();
  v89 = type metadata accessor for PaginatingGridView(v12, v13);
  sub_2170089F4();
  OUTLINED_FUNCTION_25_35();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15(WitnessTable, MEMORY[0x277CDFC60]);
  v92 = v14;
  swift_getWitnessTable();
  v87 = MEMORY[0x277CDE820];
  swift_getOpaqueTypeMetadata2();
  sub_21700B1D4();
  OUTLINED_FUNCTION_7_76();
  v98 = v5;
  v140 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = v140;
  v142 = MEMORY[0x277CE1410];
  v100 = MEMORY[0x277CDF0A8];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_34_4();
  v102 = sub_21700F164();
  v16 = type metadata accessor for TopSongsShelfCollection(255, v3, v4, v15);
  sub_2170099F4();
  OUTLINED_FUNCTION_21_40();
  v17 = swift_getWitnessTable();
  v90 = v16;
  v93 = v3;
  v18 = MEMORY[0x277CDE3A8];
  v91 = v17;
  v94 = MEMORY[0x277CDEB68];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_19_0();
  sub_21700B1D4();
  v145 = v17;
  v146 = v18;
  v137 = v140;
  v138 = swift_getOpaqueTypeConformance2();
  v139 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  v19 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9(v19, v102, v20);
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  v95 = v21;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v101 = sub_21700B084();
  v102 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v86 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v85 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v84 = &v84 - v27;
  v28 = WitnessTable;
  v29 = v89;
  v143 = v89;
  v144 = WitnessTable;
  OUTLINED_FUNCTION_40_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_46_22();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30, &qword_217034B68);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700B1D4();
  v143 = v29;
  v144 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x277CDF678];
  v135 = v30;
  v136 = MEMORY[0x277CDF678];
  v133 = swift_getWitnessTable();
  v32 = MEMORY[0x277CDFC60];
  v134 = MEMORY[0x277CDFC60];
  v131 = swift_getWitnessTable();
  v132 = MEMORY[0x277CDF918];
  v33 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_6();
  v36 = sub_2166D9530(v34, &qword_27CABFC30, &qword_217034B68, v35);
  v129 = v33;
  v130 = v36;
  v37 = swift_getWitnessTable();
  v126 = v99;
  v127 = v37;
  v128 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v38 = sub_21700B084();
  OUTLINED_FUNCTION_22_9(255, v38, MEMORY[0x277CE1180]);
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_34_4();
  v89 = sub_21700F164();
  sub_2170089F4();
  v39 = sub_2170089F4();
  v124 = v91;
  v125 = v32;
  v122 = swift_getWitnessTable();
  v123 = v31;
  v40 = swift_getWitnessTable();
  v41 = v93;
  v143 = v39;
  v144 = v93;
  v145 = v40;
  v42 = MEMORY[0x277CDE3A8];
  v146 = MEMORY[0x277CDE3A8];
  OUTLINED_FUNCTION_40_2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210, &qword_21702A200);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_21700B1D4();
  v143 = v39;
  v144 = v41;
  v145 = v40;
  v146 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_26_38();
  v46 = sub_2166D9530(v44, &qword_27CABC210, &qword_21702A200, v45);
  v120 = v43;
  v121 = v46;
  v47 = v96;
  v48 = swift_getWitnessTable();
  v117 = v99;
  v118 = v48;
  v119 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33E0, &unk_2170479B8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_2170089F4();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  v49 = OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_22_9(v49, v89, v50);
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v100 = sub_21700AF94();
  v51 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_77();
  v57 = v55 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v84 - v59;
  v61 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v99 = v62;
  MEMORY[0x28223BE20](v63);
  v65 = &v84 - v64;
  if (sub_216B3C774(v47))
  {
    sub_216B3C8D0(v47, v57, v66);
    OUTLINED_FUNCTION_6_7();
    v105 = swift_getWitnessTable();
    v106 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_8_72();
    v67 = swift_getWitnessTable();
    v68 = OUTLINED_FUNCTION_44_21();
    sub_2166C24DC(v68, v69, v67);
    v70 = *(v53 + 8);
    v71 = OUTLINED_FUNCTION_44_21();
    v70(v71);
    sub_2166C24DC(v60, v51, v67);
    OUTLINED_FUNCTION_7_1();
    v103 = swift_getWitnessTable();
    v104 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    OUTLINED_FUNCTION_44_21();
    sub_2166C2718();
    v72 = OUTLINED_FUNCTION_44_21();
    v70(v72);
    (v70)(v60, v51);
  }

  else
  {
    v73 = v85;
    sub_216B3CF8C(v47, v85, v66);
    OUTLINED_FUNCTION_7_1();
    v115 = swift_getWitnessTable();
    v116 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_8_72();
    v74 = v102;
    v75 = swift_getWitnessTable();
    v98 = v61;
    v76 = v84;
    sub_2166C24DC(v73, v74, v75);
    v77 = *(v86 + 8);
    v77(v73, v74);
    sub_2166C24DC(v76, v74, v75);
    OUTLINED_FUNCTION_6_7();
    v113 = swift_getWitnessTable();
    v114 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    sub_2166C2CB0();
    v77(v73, v74);
    v78 = v76;
    v61 = v98;
    v77(v78, v74);
  }

  v111 = swift_getWitnessTable();
  v79 = MEMORY[0x277CDF918];
  v112 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_8_72();
  v80 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_1();
  v109 = swift_getWitnessTable();
  v110 = v79;
  v81 = swift_getWitnessTable();
  v107 = v80;
  v108 = v81;
  OUTLINED_FUNCTION_6_1();
  v82 = swift_getWitnessTable();
  sub_2166C24DC(v65, v61, v82);
  return (*(v99 + 8))(v65, v61);
}

uint64_t sub_216B3C774(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return (0xF8u >> v8) & 1;
}

uint64_t sub_216B3C8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v23 = a2;
  v3 = *(a1 + 16);
  v25 = *(a1 + 24);
  v26 = v3;
  v24 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, v3, v25, a3);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v51 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v52 = v3;
  v53 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v54 = &off_282938728;
  v55 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v56 = v25;
  v4 = type metadata accessor for PaginatingGridView(255, &v50);
  WitnessTable = swift_getWitnessTable();
  v50 = v4;
  v51 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30, &qword_217034B68);
  sub_2170089F4();
  sub_21700B1D4();
  v20 = swift_getWitnessTable();
  v50 = v4;
  v51 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = MEMORY[0x277CDF678];
  v48 = OpaqueTypeConformance2;
  v49 = MEMORY[0x277CDF678];
  v8 = swift_getWitnessTable();
  v9 = MEMORY[0x277CDFC60];
  v46 = v8;
  v47 = MEMORY[0x277CDFC60];
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x277CDF918];
  v42 = swift_getWitnessTable();
  v43 = sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30, &qword_217034B68, MEMORY[0x277CE04A0]);
  v39 = v20;
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x277CE1410];
  v19 = MEMORY[0x277CDF0A8];
  swift_getWitnessTable();
  sub_21700B084();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  v21 = sub_21700F164();
  type metadata accessor for TopSongsShelfCollection(255, v26, v25, v10);
  sub_2170089F4();
  v11 = sub_2170089F4();
  v12 = sub_2170099F4();
  v37 = swift_getWitnessTable();
  v38 = v9;
  v35 = swift_getWitnessTable();
  v36 = v7;
  v13 = swift_getWitnessTable();
  v50 = v11;
  v51 = v12;
  v52 = v13;
  v53 = MEMORY[0x277CDE3A8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210, &qword_21702A200);
  sub_2170089F4();
  sub_21700B1D4();
  v50 = v11;
  v51 = v12;
  v52 = v13;
  v53 = MEMORY[0x277CDE3A8];
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210, &qword_21702A200, MEMORY[0x277CDF4F0]);
  v30 = v20;
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_21700B084();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33E0, &unk_2170479B8);
  sub_2170089F4();
  sub_2170089F4();
  sub_21700F164();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v14 = sub_21700AF94();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - v16;
  sub_217009184();
  v27 = v26;
  v28 = v25;
  v29 = v22;
  sub_21700AF84();
  sub_217009CA4();
  swift_getWitnessTable();
  sub_21700AAB4();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_216B3CF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v21 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, v3, v4, a3);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v34 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v35 = v3;
  v36 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v19 = v3;
  v37 = &off_282938728;
  v38 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v39 = v4;
  type metadata accessor for PaginatingGridView(255, &v33);
  v5 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v32 = MEMORY[0x277CDFC60];
  v6 = swift_getWitnessTable();
  v33 = v5;
  v34 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_21700B1D4();
  v7 = swift_getWitnessTable();
  v33 = v5;
  v34 = v6;
  v28 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_21700B084();
  sub_21700F164();
  v9 = type metadata accessor for TopSongsShelfCollection(255, v3, v4, v8);
  v10 = sub_2170099F4();
  v11 = swift_getWitnessTable();
  v33 = v9;
  v34 = v10;
  v12 = MEMORY[0x277CDE3A8];
  v35 = v11;
  v36 = MEMORY[0x277CDE3A8];
  swift_getOpaqueTypeMetadata2();
  sub_21700B1D4();
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v25 = v7;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_21700B084();
  sub_2170089F4();
  sub_21700F164();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v13 = sub_21700B084();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v18 - v15;
  sub_2170093C4();
  v22 = v19;
  v23 = v4;
  v24 = v20;
  sub_21700B074();
  sub_217009CA4();
  swift_getWitnessTable();
  sub_21700AAB4();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_216B3D450@<X0>(char *a1@<X0>, char *a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v185 = a2;
  v186 = a3;
  v174 = a1;
  v172 = a4;
  v187 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, a2, a3, a5);
  type metadata accessor for TopSongsShelfCollection(255, a2, a3, v7);
  sub_2170089F4();
  v8 = sub_2170089F4();
  v9 = sub_2170099F4();
  WitnessTable = swift_getWitnessTable();
  v234 = MEMORY[0x277CDFC60];
  v10 = MEMORY[0x277CDFAD8];
  v231 = swift_getWitnessTable();
  v232 = MEMORY[0x277CDF678];
  v179 = v10;
  v11 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210, &qword_21702A200);
  sub_2170089F4();
  v12 = sub_21700B1D4();
  v181 = swift_getWitnessTable();
  v219 = v8;
  v220 = v9;
  v221 = v11;
  v222 = MEMORY[0x277CDE3A8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v230 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210, &qword_21702A200, MEMORY[0x277CDF4F0]);
  v226 = v181;
  v227 = swift_getWitnessTable();
  v228 = MEMORY[0x277CE1410];
  v180 = MEMORY[0x277CDF0A8];
  v158 = v12;
  v152 = swift_getWitnessTable();
  v13 = sub_21700B084();
  v155 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v153 = &v146 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33E0, &unk_2170479B8);
  v183 = v13;
  v15 = sub_2170089F4();
  v159 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v157 = &v146 - v16;
  v184 = v17;
  v18 = sub_2170089F4();
  v161 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v160 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v154 = &v146 - v21;
  MEMORY[0x28223BE20](v22);
  v156 = &v146 - v23;
  v24 = sub_2170090F4();
  v150 = *(v24 - 8);
  v151 = v24;
  MEMORY[0x28223BE20](v24);
  v149 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v18;
  v176 = sub_21700F164();
  v171 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v175 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v182 = &v146 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v30 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v31 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v32 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v219 = v29;
  v220 = v30;
  v221 = v185;
  v222 = *&v31;
  v223 = &off_282938728;
  v224 = v32;
  v225 = v186;
  v33 = type metadata accessor for PaginatingGridView(255, &v219);
  v34 = swift_getWitnessTable();
  v219 = v33;
  v220 = v34;
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30, &qword_217034B68);
  sub_2170089F4();
  v35 = sub_21700B1D4();
  v219 = v33;
  v220 = v34;
  v217 = swift_getOpaqueTypeConformance2();
  v218 = MEMORY[0x277CDF678];
  v215 = swift_getWitnessTable();
  v216 = MEMORY[0x277CDFC60];
  v213 = swift_getWitnessTable();
  v214 = MEMORY[0x277CDF918];
  v36 = swift_getWitnessTable();
  v37 = sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30, &qword_217034B68, MEMORY[0x277CE04A0]);
  v211 = v36;
  v212 = v37;
  v38 = swift_getWitnessTable();
  v208 = v181;
  v209 = v38;
  v210 = MEMORY[0x277CE1410];
  v39 = swift_getWitnessTable();
  v170 = v35;
  v163 = v39;
  v40 = sub_21700B084();
  swift_getTupleTypeMetadata2();
  v41 = sub_21700B4E4();
  v166 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v165 = &v146 - v42;
  v162 = *(v40 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = &v146 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v164 = &v146 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
  MEMORY[0x28223BE20](v48 - 8);
  v167 = &v146 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v146 - v51;
  v173 = _s7SectionV6HeaderVMa(0);
  MEMORY[0x28223BE20](v173);
  v169 = &v146 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v146 - v55;
  v180 = v41;
  v181 = sub_21700F164();
  v178 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = &v146 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v187 = &v146 - v59;
  v60 = sub_217008844();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = &v146 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(0, v185, v186, v64);
  v66 = v174;
  sub_216C0C570(v65, v67, v68, v69, v70, v71, v72, v73, v146, v65, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
  v168 = sub_217008834();
  (*(v61 + 8))(v63, v60);
  v74 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(0);
  v75 = v74;
  v76 = *(v66 + *(v74 + 36));
  v148 = v76;
  if (!v76)
  {
    goto LABEL_4;
  }

  sub_216681B04(v66 + *(v74 + 32), v52, &qword_27CABDCC0, &qword_217031290);
  if (__swift_getEnumTagSinglePayload(v52, 1, v173) == 1)
  {
    sub_2166997CC(v52, &qword_27CABDCC0, &qword_217031290);
LABEL_4:
    v77 = v179;
    __swift_storeEnumTagSinglePayload(v179, 1, 1, v180);
    swift_getWitnessTable();
    sub_2168D4034(v77, v187);
    v170 = *(v178 + 8);
    v170(v77, v181);
    goto LABEL_9;
  }

  v146 = v56;
  sub_216B45350(v52, v56, _s7SectionV6HeaderVMa);
  if (v168)
  {
    v78 = 0.5;
  }

  else
  {
    v78 = 0.44;
  }

  v79 = sub_2170093C4();
  v80 = v66;
  MEMORY[0x28223BE20](v79);
  v81 = v186;
  *(&v146 - 6) = v185;
  *(&v146 - 5) = v81;
  *(&v146 - 4) = v66;
  *(&v146 - 3) = v76;
  *(&v146 - 2) = v78;
  *(&v146 - 1) = v56;
  sub_21700B074();
  v82 = swift_getWitnessTable();
  v83 = v164;
  sub_2166C24DC(v45, v40, v82);
  v84 = v162;
  v163 = v75;
  v85 = *(v162 + 8);
  v85(v45, v40);
  (*(v84 + 16))(v45, v83, v40);
  v188 = 0x403C000000000000;
  v189 = 0;
  v219 = v45;
  v220 = &v188;
  v202 = v40;
  v203 = MEMORY[0x277CE1180];
  v200 = v82;
  v201 = MEMORY[0x277CE1170];
  v66 = v80;
  v86 = v165;
  sub_216984F84(&v219, 2, &v202);

  v85(v83, v40);
  v75 = v163;
  v85(v45, v40);
  v88 = v179;
  v87 = v180;
  (*(v166 + 32))(v179, v86, v180);
  __swift_storeEnumTagSinglePayload(v88, 0, 1, v87);
  swift_getWitnessTable();
  sub_2168D4034(v88, v187);
  v170 = *(v178 + 8);
  v170(v88, v181);
  sub_216B454EC(v146, _s7SectionV6HeaderVMa);
LABEL_9:
  v89 = (v66 + *(v75 + 28));
  v90 = *v89;
  v91 = v176;
  v92 = v177;
  v93 = v175;
  v94 = MEMORY[0x277CDF918];
  if (!*v89)
  {
    goto LABEL_13;
  }

  v95 = v89[1];
  if (!sub_2166BF3C8(*v89))
  {
    goto LABEL_13;
  }

  v96 = v66 + *(v75 + 24);
  v97 = v167;
  sub_216681B04(v96, v167, &qword_27CABDCC0, &qword_217031290);
  if (__swift_getEnumTagSinglePayload(v97, 1, v173) == 1)
  {
    sub_2166997CC(v97, &qword_27CABDCC0, &qword_217031290);
LABEL_13:
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v92);
    v98 = swift_getWitnessTable();
    v99 = sub_2166D9530(&qword_27CAC33E8, &qword_27CAC33E0, &unk_2170479B8, MEMORY[0x277CDFC88]);
    v206 = v98;
    v207 = v99;
    v204 = swift_getWitnessTable();
    v205 = v94;
    swift_getWitnessTable();
    v100 = v182;
    sub_2168D4034(v93, v182);
    v101 = v171;
    v186 = *(v171 + 8);
    v186(v93, v91);
    goto LABEL_14;
  }

  sub_216B45350(v97, v169, _s7SectionV6HeaderVMa);
  v109 = v147;
  v110 = v66 + *(v147 + 48);
  v111 = *v110;
  if (*(v110 + 8) == 1)
  {
    v112 = *v110;
  }

  else
  {

    sub_21700ED94();
    v113 = sub_217009C34();
    sub_217007BC4();

    v114 = v149;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v111, 0);
    (*(v150 + 8))(v114, v151);
    v112 = *&v219;
  }

  v115 = v66 + *(v109 + 64);
  v116 = *(v115 + 24);
  if (*(v115 + 32) == 1)
  {
    v117 = *(v115 + 24);
  }

  else
  {
    v118 = *v115;
    v119 = *(v115 + 8);
    v120 = *(v115 + 16);

    sub_21700ED94();
    v121 = sub_217009C34();
    sub_217007BC4();

    v122 = v149;
    sub_2170090E4();
    swift_getAtKeyPath();
    v123 = v118;
    v66 = v174;
    sub_21680E444(v123, v119, v120, v116, 0);
    (*(v150 + 8))(v122, v151);
    v117 = v222;
  }

  if (v168)
  {
    v124 = 0.5;
  }

  else
  {
    v124 = 0.56;
  }

  v125 = sub_2170093C4();
  MEMORY[0x28223BE20](v125);
  v126 = v148 == 0;
  v127 = v148 != 0;
  v128 = 1.0;
  if (v148)
  {
    v128 = v124;
  }

  v129 = v186;
  *(&v146 - 8) = v185;
  *(&v146 - 7) = v129;
  *(&v146 - 6) = v66;
  *(&v146 - 5) = v90;
  *(&v146 - 4) = v95;
  *(&v146 - 3) = v128 * (v112 - v117);
  *(&v146 - 2) = v169;
  v130 = 0xC03C000000000000;
  if (v126)
  {
    v130 = 0;
  }

  v186 = v130;
  v131 = v153;
  sub_21700B074();
  v132 = sub_21700B3C4();
  MEMORY[0x28223BE20](v132);
  *(&v146 - 16) = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC33F0, &qword_2170479C8);
  v133 = v183;
  v134 = swift_getWitnessTable();
  sub_216B44C24();
  v135 = v157;
  sub_21700AA94();
  (*(v155 + 8))(v131, v133);
  sub_217009CB4();
  v136 = sub_2166D9530(&qword_27CAC33E8, &qword_27CAC33E0, &unk_2170479B8, MEMORY[0x277CDFC88]);
  v192 = v134;
  v193 = v136;
  v137 = v184;
  v138 = swift_getWitnessTable();
  v139 = v154;
  sub_21700AAB4();
  (*(v159 + 8))(v135, v137);
  v190 = v138;
  v191 = MEMORY[0x277CDF918];
  v140 = v177;
  v141 = swift_getWitnessTable();
  v142 = v156;
  sub_2166C24DC(v139, v140, v141);
  v143 = v161;
  v144 = *(v161 + 8);
  v144(v139, v140);
  v145 = v160;
  sub_2166C24DC(v142, v140, v141);
  v144(v142, v140);
  v93 = v175;
  (*(v143 + 32))(v175, v145, v140);
  __swift_storeEnumTagSinglePayload(v93, 0, 1, v140);
  v100 = v182;
  sub_2168D4034(v93, v182);
  v101 = v171;
  v91 = v176;
  v186 = *(v171 + 8);
  v186(v93, v176);
  sub_216B454EC(v169, _s7SectionV6HeaderVMa);
LABEL_14:
  v102 = v179;
  v103 = v181;
  (*(v178 + 16))(v179, v187, v181);
  v219 = v102;
  (*(v101 + 16))(v93, v100, v91);
  v220 = v93;
  v202 = v103;
  v203 = v91;
  v199 = swift_getWitnessTable();
  v200 = swift_getWitnessTable();
  v104 = swift_getWitnessTable();
  v105 = sub_2166D9530(&qword_27CAC33E8, &qword_27CAC33E0, &unk_2170479B8, MEMORY[0x277CDFC88]);
  v197 = v104;
  v198 = v105;
  v195 = swift_getWitnessTable();
  v196 = MEMORY[0x277CDF918];
  v194 = swift_getWitnessTable();
  v201 = swift_getWitnessTable();
  sub_216984F84(&v219, 2, &v202);
  v106 = v186;
  v186(v182, v91);
  v107 = v170;
  v170(v187, v103);
  v106(v93, v91);
  return v107(v102, v103);
}

uint64_t sub_216B3EB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v34 = a6;
  v10 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, a4, a5, a4);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v38 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v39 = a4;
  v40 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v41 = &off_282938728;
  v42 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v43 = a5;
  v11 = type metadata accessor for PaginatingGridView(255, &v37);
  WitnessTable = swift_getWitnessTable();
  v37 = v11;
  v38 = WitnessTable;
  v27[1] = MEMORY[0x277CDE820];
  swift_getOpaqueTypeMetadata2();
  v27[2] = sub_2170089F4();
  v30 = sub_2170089F4();
  v29 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30, &qword_217034B68);
  v12 = sub_2170089F4();
  v13 = sub_21700B1D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v27 - v18;
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = v31;
  v36[5] = v32;
  *&v36[6] = a7;
  v35[2] = a4;
  v35[3] = a5;
  v35[4] = v33;
  v35[5] = v31;
  v20 = swift_getWitnessTable();
  v37 = v11;
  v38 = WitnessTable;
  v36[16] = swift_getOpaqueTypeConformance2();
  v36[17] = MEMORY[0x277CDF678];
  v36[14] = swift_getWitnessTable();
  v36[15] = MEMORY[0x277CDFC60];
  v36[12] = swift_getWitnessTable();
  v36[13] = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v22 = sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30, &qword_217034B68, MEMORY[0x277CE04A0]);
  v36[10] = v21;
  v36[11] = v22;
  v23 = swift_getWitnessTable();
  sub_216ED5418(sub_216B44EE0, v36, sub_216B4562C, v35, v10, v12, v20, v23);
  v36[7] = v20;
  v36[8] = v23;
  v36[9] = MEMORY[0x277CE1410];
  v24 = swift_getWitnessTable();
  sub_2166C24DC(v16, v13, v24);
  v25 = *(v14 + 8);
  v25(v16, v13);
  sub_2166C24DC(v19, v13, v24);
  return (v25)(v19, v13);
}

uint64_t sub_216B3EF94@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a2;
  v95 = a5;
  v9 = sub_2170090F4();
  v97 = *(v9 - 8);
  v98 = v9;
  MEMORY[0x28223BE20](v9);
  v96 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v12 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v13 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v14 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v107 = v11;
  v108 = v12;
  v109 = a3;
  v110 = v13;
  v15 = a1;
  v111 = &off_282938728;
  v112 = v14;
  v113 = a4;
  v16 = type metadata accessor for PaginatingGridView(0, &v107);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v72 - v18;
  WitnessTable = swift_getWitnessTable();
  v107 = v16;
  v108 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = v72 - v22;
  v82 = v24;
  v25 = sub_2170089F4();
  v84 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v83 = v72 - v26;
  v27 = sub_2170089F4();
  v88 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v85 = v72 - v28;
  v91 = v29;
  v30 = sub_2170089F4();
  v89 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v86 = v72 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC30, &qword_217034B68);
  v92 = v30;
  v94 = sub_2170089F4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v87 = v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v90 = v72 - v34;
  v36 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(0, a3, a4, v35);
  sub_216B3FB98(v80, v36, v19);
  v80 = v23;
  v79 = WitnessTable;
  sub_21700A574();
  v37 = *(v17 + 8);
  v77 = v16;
  v37(v19, v16);
  v38 = v15 + *(v36 + 48);
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    v40 = v97;
    v41 = v96;
  }

  else
  {

    sub_21700ED94();
    v42 = sub_217009C34();
    sub_217007BC4();

    v41 = v96;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v39, 0);
    v40 = v97;
    (*(v97 + 8))(v41, v98);
  }

  v76 = v36;
  v43 = v15 + *(v36 + 64);
  v45 = *v43;
  v44 = *(v43 + 8);
  v47 = *(v43 + 16);
  v46 = *(v43 + 24);
  v75 = *(v43 + 32);
  v78 = v44;
  v74 = v47;
  v73 = v46;
  if (v75 != 1)
  {

    sub_21700ED94();
    v48 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v45, v44, v47, v46, 0);
    v72[0] = v25;
    v49 = *(v40 + 8);
    v72[1] = v15;
    v50 = v98;
    v49(v41, v98);

    sub_21700ED94();
    v51 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v45, v44, v47, v46, 0);
    v49(v41, v50);
    v25 = v72[0];
  }

  v107 = v77;
  v108 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v82;
  sub_2166BF464();
  v54 = v83;
  v55 = v80;
  sub_21700A9C4();
  (*(v81 + 8))(v55, v53);
  sub_216B3FF20(v76);
  v105 = OpaqueTypeConformance2;
  v106 = MEMORY[0x277CDF678];
  v56 = swift_getWitnessTable();
  sub_2166BF464();
  v57 = v85;
  sub_21700A9D4();
  (*(v84 + 8))(v54, v25);
  sub_217009CB4();
  if ((v75 & 1) == 0)
  {

    sub_21700ED94();
    v58 = sub_217009C34();
    sub_217007BC4();

    v59 = v96;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v45, v78, v74, v73, 0);
    (*(v97 + 8))(v59, v98);
  }

  v103 = v56;
  v104 = MEMORY[0x277CDFC60];
  v60 = v91;
  v61 = swift_getWitnessTable();
  v62 = v86;
  sub_21700AAB4();
  (*(v88 + 8))(v57, v60);
  v101 = v61;
  v102 = MEMORY[0x277CDF918];
  v63 = v92;
  v64 = swift_getWitnessTable();
  v65 = v87;
  sub_21700AA54();
  (*(v89 + 8))(v62, v63);
  v66 = sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30, &qword_217034B68, MEMORY[0x277CE04A0]);
  v99 = v64;
  v100 = v66;
  v67 = v94;
  v68 = swift_getWitnessTable();
  v69 = v90;
  sub_2166C24DC(v65, v67, v68);
  v70 = *(v93 + 8);
  v70(v65, v67);
  sub_2166C24DC(v69, v67, v68);
  return (v70)(v69, v67);
}

void sub_216B3FB98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = sub_2170090F4();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21701D820;
  *(v12 + 32) = a1;
  v13 = *(a2 + 16);
  v30 = *(a2 + 24);
  type metadata accessor for CatalogPagePresenter(0, v13, v30, v14);

  swift_getWitnessTable();
  v31 = sub_217008CB4();
  v32 = v11;
  v15 = (v3 + *(a2 + 36));
  sub_216B453B0(v15, v11, type metadata accessor for MappedSection);
  v16 = v3 + *(a2 + 52);
  v17 = *v16;
  v18 = *(v16 + 8);

  if ((v18 & 1) == 0)
  {
    sub_21700ED94();
    v19 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v28 + 8))(v8, v29);
    v17 = v34[0];
  }

  v20 = *v15;
  v21 = v15[1];
  v34[0] = v20;
  v34[1] = v21;
  v35 = xmmword_217047810;
  v36 = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D0, &qword_2170479B0);
  v23 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  v24 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v25 = sub_2166D381C(qword_27CAC3430, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217059C84);
  v26 = OUTLINED_FUNCTION_0_28();
  sub_21700DF14();
  sub_216C099F8(v12, v31, v32, v17, &off_28292BE68, v34, v26, sub_216B438F4, v33, 0, v22, v23, v24, &off_282938728, v25);
}

double sub_216B3FF20(uint64_t a1)
{
  v3 = sub_217008844();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2170090F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultMetrics];
  [v11 scaledValueForValue_];
  v13 = v12;

  v22 = v1 + *(a1 + 56);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = *v22;
  }

  else
  {

    sub_21700ED94();
    v29 = v7;
    v25 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v23, 0);
    v14 = (*(v8 + 8))(v10, v29);
    v24 = HIBYTE(v30);
  }

  sub_216C0C570(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v26 = sub_217008834();
  (*(v4 + 8))(v6, v3);
  v27 = 3.0;
  if (v24 < 2)
  {
    v27 = 4.0;
  }

  if (v26)
  {
    v27 = 2.0;
  }

  return v13 * v27;
}

uint64_t sub_216B401B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  sub_216B45350(a1, a3, _s7SectionV6HeaderVMa);
  v10 = *a2;
  v9 = a2[1];
  v12 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(0, a4, a5, v11);
  v13 = (a3 + v12[9]);
  *v13 = v10;
  v13[1] = v9;
  v14 = type metadata accessor for MappedSection(0);
  *(a3 + v12[10]) = *(a2 + *(v14 + 52));
  v15 = *(a2 + *(v14 + 48));
  sub_21700DF14();
  result = sub_216B454EC(a2, type metadata accessor for MappedSection);
  *(a3 + v12[11]) = v15;
  return result;
}

uint64_t sub_216B40278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v33 = a1;
  v37 = a7;
  v11 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, a5, a6, a4);
  type metadata accessor for TopSongsShelfCollection(255, a5, a6, v12);
  sub_2170089F4();
  v13 = sub_2170089F4();
  v30 = sub_2170099F4();
  WitnessTable = swift_getWitnessTable();
  v62 = MEMORY[0x277CDFC60];
  v32 = MEMORY[0x277CDFAD8];
  v59 = swift_getWitnessTable();
  v60 = MEMORY[0x277CDF678];
  v31 = v13;
  v14 = swift_getWitnessTable();
  v55 = v13;
  v56 = v30;
  v57 = v14;
  v58 = MEMORY[0x277CDE3A8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210, &qword_21702A200);
  v15 = sub_2170089F4();
  v16 = sub_21700B1D4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - v21;
  v44 = a5;
  v45 = a6;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = a8;
  v39 = a5;
  v40 = a6;
  v41 = v36;
  v42 = v33;
  v23 = swift_getWitnessTable();
  v55 = v31;
  v56 = v30;
  v57 = v14;
  v58 = MEMORY[0x277CDE3A8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210, &qword_21702A200, MEMORY[0x277CDF4F0]);
  v53 = OpaqueTypeConformance2;
  v54 = v25;
  v26 = swift_getWitnessTable();
  sub_216ED5418(sub_216B44EF8, v43, sub_216B4562C, v38, v11, v15, v23, v26);
  v50 = v23;
  v51 = v26;
  v52 = MEMORY[0x277CE1410];
  v27 = swift_getWitnessTable();
  sub_2166C24DC(v19, v16, v27);
  v28 = *(v17 + 8);
  v28(v19, v16);
  sub_2166C24DC(v22, v16, v27);
  return (v28)(v22, v16);
}

uint64_t sub_216B406B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a3;
  v86 = a6;
  v87 = a2;
  v10 = sub_2170099F4();
  v84 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v83 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2170090F4();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopSongsShelfCollection(0, a4, a5, v16);
  v80 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v77 = &v60 - v18;
  v19 = sub_2170089F4();
  v79 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v76 = &v60 - v20;
  v21 = sub_2170089F4();
  v78 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v75 = &v60 - v22;
  WitnessTable = swift_getWitnessTable();
  v96 = WitnessTable;
  v97 = MEMORY[0x277CDFC60];
  v66 = swift_getWitnessTable();
  v94 = v66;
  v95 = MEMORY[0x277CDF678];
  v23 = swift_getWitnessTable();
  v81 = v21;
  v98 = v21;
  v99 = v10;
  v85 = v10;
  v68 = v23;
  *&v100 = v23;
  *(&v100 + 1) = MEMORY[0x277CDE3A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v67 = &v60 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210, &qword_21702A200);
  v72 = OpaqueTypeMetadata2;
  v26 = sub_2170089F4();
  v74 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v69 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v70 = &v60 - v29;
  v30 = a5;
  v32 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(0, a4, a5, v31);
  v33 = (a1 + v32[9]);
  v34 = v33[1];
  v64 = *v33;
  v73 = v15;
  sub_216B453B0(v33, v15, type metadata accessor for MappedSection);
  type metadata accessor for CatalogPagePresenter(0, a4, v30, v35);
  sub_21700DF14();
  sub_21700DF14();
  swift_getWitnessTable();
  v36 = sub_217008CB4();
  v37 = a1;
  v38 = a1 + v32[13];
  v39 = *v38;
  LOBYTE(v30) = *(v38 + 8);

  if ((v30 & 1) == 0)
  {
    sub_21700ED94();
    v40 = sub_217009C34();
    sub_217007BC4();

    v41 = v61;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v62 + 8))(v41, v63);
    v39 = v90;
  }

  v98 = v64;
  v99 = v34;
  v100 = xmmword_217047820;
  v101 = 1;
  v42 = *(v37 + v32[10]);

  v43 = v77;
  sub_216B410B0(&v98, v87, v82, v73, v36, v39, &off_28292BE68, v42, v77);
  sub_216B3FF20(v32);
  sub_2166BF464();
  v44 = v76;
  sub_21700A9D4();
  (*(v80 + 8))(v43, v17);
  sub_2166BF464();
  v45 = v75;
  sub_21700A9C4();
  (*(v79 + 8))(v44, v19);
  v46 = v83;
  sub_2170099E4();
  v47 = v67;
  v48 = v81;
  v49 = v85;
  v50 = v68;
  v51 = MEMORY[0x277CDE3A8];
  sub_21700A7B4();
  (*(v84 + 8))(v46, v49);
  (*(v78 + 8))(v45, v48);
  v90 = v48;
  v91 = v49;
  v92 = v50;
  v93 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v72;
  OUTLINED_FUNCTION_10_4();
  v54 = v69;
  sub_21700AA64();
  (*(v71 + 8))(v47, v53);
  v55 = sub_2166D9530(&qword_280E2B380, &qword_27CABC210, &qword_21702A200, MEMORY[0x277CDF4F0]);
  v88 = OpaqueTypeConformance2;
  v89 = v55;
  v56 = swift_getWitnessTable();
  v57 = v70;
  sub_2166C24DC(v54, v26, v56);
  v58 = *(v74 + 8);
  v58(v54, v26);
  sub_2166C24DC(v57, v26, v56);
  return (v58)(v57, v26);
}

uint64_t sub_216B410B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a5;

  v19 = type metadata accessor for TopSongsShelfCollection(0, *(v17 + 80), *(v17 + 88), v18);
  v20 = a9 + v19[13];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v19[14];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v22 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v22;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  result = sub_216B45350(a4, a9 + v19[10], type metadata accessor for MappedSection);
  *(a9 + v19[11]) = a8;
  v24 = (a9 + v19[12]);
  *v24 = a6;
  v24[1] = a7;
  return result;
}

uint64_t sub_216B411F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31[1] = a5;
  v9 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _s7SectionV6HeaderVMa(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(0, a3, a4, v15);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  sub_216B453B0(a1, v14, _s7SectionV6HeaderVMa);
  v27 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(0, a3, a4, v26);
  sub_216B453B0(a2 + *(v27 + 36), v11, type metadata accessor for MappedSection);
  sub_216B401B0(v14, v11, v22, a3, a4);
  OUTLINED_FUNCTION_7_76();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v22, v16, WitnessTable);
  v29 = *(v18 + 8);
  v29(v22, v16);
  sub_2166C24DC(v25, v16, WitnessTable);
  return (v29)(v25, v16);
}

void *sub_216B4142C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB95E8, &unk_217027360);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217015230;
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    *(v3 + 32) = sub_21700AC44();
    v6 = [v4 systemBackgroundColor];
    sub_21700AC44();
    v7 = sub_21700AD04();

    *(v3 + 40) = v7;
    *(v3 + 48) = sub_21700ACD4();
    MEMORY[0x21CE9C070](v3);
    sub_21700B574();
    sub_21700B584();
    sub_2170085D4();
    sub_21700B3B4();
    sub_2170083C4();
    LOBYTE(v3) = sub_217009C94();
    sub_217007F24();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v19[0] = 0;
    memcpy(__dst, __src, 0x58uLL);
    LOBYTE(__dst[11]) = v3;
    __dst[12] = v9;
    __dst[13] = v11;
    __dst[14] = v13;
    __dst[15] = v15;
    LOBYTE(__dst[16]) = 0;
    __dst[17] = 0x3FF0000000000000;
    nullsub_1();
    memcpy(v19, __dst, sizeof(v19));
  }

  else
  {
    sub_216B44EF0(v19);
  }

  return memcpy(a2, v19, 0x90uLL);
}

uint64_t sub_216B415F4@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v121 = a1;
  v113 = a4;
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, a2, a3, a5);
  v8 = type metadata accessor for TopSongsShelfCollection(255, a2, a3, v7);
  v9 = sub_2170099F4();
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x277CDE3A8];
  swift_getOpaqueTypeMetadata2();
  v12 = sub_21700B1D4();
  v13 = swift_getWitnessTable();
  v131 = v8;
  v132 = v9;
  v133 = WitnessTable;
  v134 = v11;
  v138 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v140 = MEMORY[0x277CE1410];
  v102 = v12;
  v97 = swift_getWitnessTable();
  v14 = sub_21700B084();
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v98 = &v94 - v15;
  v119 = v16;
  v17 = sub_2170089F4();
  v103 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v101 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v99 = &v94 - v20;
  v96 = sub_2170090F4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v17;
  v112 = sub_21700F164();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v118 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v111 = &v94 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v26 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v27 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v28 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v131 = v25;
  v132 = v26;
  v106 = a2;
  v133 = a2;
  v134 = v27;
  v135 = &off_282938728;
  v136 = v28;
  v107 = a3;
  v137 = a3;
  type metadata accessor for PaginatingGridView(255, &v131);
  v29 = sub_2170089F4();
  v130[7] = swift_getWitnessTable();
  v130[8] = MEMORY[0x277CDFC60];
  v30 = swift_getWitnessTable();
  v131 = v29;
  v132 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_21700B1D4();
  v131 = v29;
  v132 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v130[4] = v13;
  v130[5] = v31;
  v130[6] = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  v32 = sub_21700B084();
  v108 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v94 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
  MEMORY[0x28223BE20](v38 - 8);
  v104 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v94 - v41;
  v114 = _s7SectionV6HeaderVMa(0);
  MEMORY[0x28223BE20](v114);
  v105 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v94 - v45;
  v117 = sub_21700F164();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v48 = &v94 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v115 = &v94 - v50;
  v51 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(0);
  v52 = v51;
  v53 = *&v121[*(v51 + 36)];
  if (v53)
  {
    sub_216681B04(&v121[*(v51 + 32)], v42, &qword_27CABDCC0, &qword_217031290);
    if (__swift_getEnumTagSinglePayload(v42, 1, v114) != 1)
    {
      sub_216B45350(v42, v46, _s7SectionV6HeaderVMa);

      v54 = sub_2170093C4();
      MEMORY[0x28223BE20](v54);
      v55 = v107;
      *(&v94 - 6) = v106;
      *(&v94 - 5) = v55;
      *(&v94 - 4) = v121;
      *(&v94 - 3) = v53;
      *(&v94 - 2) = v46;
      sub_21700B074();

      v56 = swift_getWitnessTable();
      sub_2166C24DC(v34, v32, v56);
      v57 = v108;
      v58 = *(v108 + 8);
      v58(v34, v32);
      sub_2166C24DC(v37, v32, v56);
      v58(v37, v32);
      (*(v57 + 32))(v48, v34, v32);
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v32);
      sub_2168D4034(v48, v115);
      v108 = *(v116 + 8);
      (v108)(v48, v117);
      sub_216B454EC(v46, _s7SectionV6HeaderVMa);
      goto LABEL_6;
    }

    sub_2166997CC(v42, &qword_27CABDCC0, &qword_217031290);
  }

  __swift_storeEnumTagSinglePayload(v48, 1, 1, v32);
  swift_getWitnessTable();
  sub_2168D4034(v48, v115);
  v108 = *(v116 + 8);
  (v108)(v48, v117);
LABEL_6:
  v59 = &v121[*(v52 + 28)];
  v60 = *v59;
  v61 = MEMORY[0x277CDF678];
  v62 = v120;
  v109 = v32;
  if (!v60)
  {
    goto LABEL_10;
  }

  v63 = v59[1];
  if (!sub_2166BF3C8(v60))
  {
    goto LABEL_10;
  }

  v64 = &v121[*(v52 + 24)];
  v65 = v104;
  sub_216681B04(v64, v104, &qword_27CABDCC0, &qword_217031290);
  if (__swift_getEnumTagSinglePayload(v65, 1, v114) == 1)
  {
    sub_2166997CC(v65, &qword_27CABDCC0, &qword_217031290);
LABEL_10:
    v66 = v118;
    __swift_storeEnumTagSinglePayload(v118, 1, 1, v62);
    v130[2] = swift_getWitnessTable();
    v130[3] = v61;
    swift_getWitnessTable();
    v67 = v111;
    sub_2168D4034(v66, v111);
    v68 = v110;
    v69 = *(v110 + 8);
    v70 = v112;
    v69(v66, v112);
    goto LABEL_11;
  }

  sub_216B45350(v65, v105, _s7SectionV6HeaderVMa);
  v78 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(0, v106, v107, v77);
  v79 = &v121[*(v78 + 48)];
  v80 = *v79;
  if ((v79[8] & 1) == 0)
  {

    sub_21700ED94();
    v81 = sub_217009C34();
    sub_217007BC4();

    v62 = v120;
    v82 = v94;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v80, 0);
    (*(v95 + 8))(v82, v96);
  }

  v83 = sub_2170093C4();
  MEMORY[0x28223BE20](v83);
  v84 = v107;
  *(&v94 - 6) = v106;
  *(&v94 - 5) = v84;
  *(&v94 - 4) = v121;
  *(&v94 - 3) = v60;
  *(&v94 - 2) = v63;
  v85 = v105;
  *(&v94 - 1) = v105;
  v86 = v98;
  sub_21700B074();
  v87 = v119;
  v88 = swift_getWitnessTable();
  sub_2166BF464();
  v89 = v101;
  sub_21700A9C4();
  (*(v100 + 8))(v86, v87);
  v122 = v88;
  v123 = v61;
  v90 = swift_getWitnessTable();
  v91 = v99;
  sub_2166C24DC(v89, v62, v90);
  v92 = v103;
  v93 = *(v103 + 8);
  v93(v89, v62);
  sub_2166C24DC(v91, v62, v90);
  v93(v91, v62);
  v66 = v118;
  (*(v92 + 32))(v118, v89, v62);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v62);
  v67 = v111;
  sub_2168D4034(v66, v111);
  v68 = v110;
  v69 = *(v110 + 8);
  v70 = v112;
  v69(v66, v112);
  sub_216B454EC(v85, _s7SectionV6HeaderVMa);
LABEL_11:
  v71 = v48;
  v72 = v115;
  v73 = v48;
  v74 = v117;
  (*(v116 + 16))(v71, v115, v117);
  v131 = v73;
  (*(v68 + 16))(v66, v67, v70);
  v132 = v66;
  v130[0] = v74;
  v130[1] = v70;
  v127 = swift_getWitnessTable();
  v128 = swift_getWitnessTable();
  v125 = swift_getWitnessTable();
  v126 = MEMORY[0x277CDF678];
  v124 = swift_getWitnessTable();
  v129 = swift_getWitnessTable();
  sub_216984F84(&v131, 2, v130);
  v69(v67, v70);
  v75 = v108;
  (v108)(v72, v74);
  v69(v118, v70);
  return v75(v73, v74);
}

uint64_t sub_216B426C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a3;
  v27 = a2;
  v26 = a1;
  v29 = a6;
  v25 = a5;
  v8 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, a4, a5, a4);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v46 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v47 = a4;
  v48 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v49 = &off_282938728;
  v50 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v51 = a5;
  type metadata accessor for PaginatingGridView(255, &v45);
  v9 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v44 = MEMORY[0x277CDFC60];
  v10 = swift_getWitnessTable();
  v45 = v9;
  v46 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_21700B1D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v36 = a4;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v31 = a4;
  v32 = v25;
  v33 = v28;
  v34 = v26;
  v19 = swift_getWitnessTable();
  v45 = v9;
  v46 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_216ED5418(sub_216B44F38, v35, sub_216B44F44, v30, v8, OpaqueTypeMetadata2, v19, OpaqueTypeConformance2);
  v40 = v19;
  v41 = OpaqueTypeConformance2;
  v42 = MEMORY[0x277CE1410];
  v21 = swift_getWitnessTable();
  sub_2166C24DC(v15, v12, v21);
  v22 = *(v13 + 8);
  v22(v15, v12);
  sub_2166C24DC(v18, v12, v21);
  return (v22)(v18, v12);
}

uint64_t sub_216B42A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a1;
  v36 = a5;
  v39 = *a2;
  v40 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v41 = a3;
  v42 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v43 = &off_282938728;
  v44 = sub_2166D381C(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v45 = a4;
  v8 = a4;
  v9 = type metadata accessor for PaginatingGridView(0, &v39);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v10;
  v11 = sub_2170089F4();
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v31 = &v28 - v12;
  WitnessTable = swift_getWitnessTable();
  v38 = MEMORY[0x277CDFC60];
  v29 = swift_getWitnessTable();
  v39 = v11;
  v40 = v29;
  v32 = MEMORY[0x277CDE820];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v21 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(0, a3, v8, v20);
  v22 = v30;
  sub_216B3FB98(a2, v21, v30);
  sub_216B42EF4(v21);
  sub_2166BF464();
  v23 = v31;
  sub_21700A9D4();
  (*(v34 + 8))(v22, v9);
  v24 = v29;
  sub_21700A574();
  (*(v33 + 8))(v23, v11);
  v39 = v11;
  v40 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2166C24DC(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v26 = *(v14 + 8);
  v26(v16, OpaqueTypeMetadata2);
  sub_2166C24DC(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v26)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_216B43004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a4;
  v32 = a3;
  v31 = a2;
  v30 = a1;
  v34 = a7;
  v9 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView.HeaderView(255, a5, a6, a4);
  v11 = type metadata accessor for TopSongsShelfCollection(255, a5, a6, v10);
  v28 = sub_2170099F4();
  WitnessTable = swift_getWitnessTable();
  v49 = v11;
  v50 = v28;
  v51 = WitnessTable;
  v52 = MEMORY[0x277CDE3A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = v9;
  v14 = sub_21700B1D4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  v41 = a5;
  v42 = a6;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v36 = a5;
  v37 = a6;
  v38 = v33;
  v39 = v30;
  v21 = v13;
  v22 = swift_getWitnessTable();
  v49 = v11;
  v50 = v28;
  v51 = WitnessTable;
  v52 = MEMORY[0x277CDE3A8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_216ED5418(sub_216B44F64, v40, sub_216B4562C, v35, v21, OpaqueTypeMetadata2, v22, OpaqueTypeConformance2);
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v48 = MEMORY[0x277CE1410];
  v24 = swift_getWitnessTable();
  sub_2166C24DC(v17, v14, v24);
  v25 = *(v15 + 8);
  v25(v17, v14);
  sub_2166C24DC(v20, v14, v24);
  return (v25)(v20, v14);
}

uint64_t sub_216B43320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a3;
  v61 = a6;
  v62 = a2;
  v9 = sub_2170099F4();
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2170090F4();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TopSongsShelfCollection(0, a4, a5, v15);
  v55 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v53 = &v45 - v17;
  WitnessTable = swift_getWitnessTable();
  v67 = v16;
  v68 = v9;
  v60 = v9;
  v51 = WitnessTable;
  *&v69 = WitnessTable;
  *(&v69 + 1) = MEMORY[0x277CDE3A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v50 = &v45 - v23;
  v25 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(0, a4, a5, v24);
  v26 = (a1 + v25[9]);
  v27 = v26[1];
  v49 = *v26;
  v52 = v14;
  sub_216B453B0(v26, v14, type metadata accessor for MappedSection);
  type metadata accessor for CatalogPagePresenter(0, a4, a5, v28);
  sub_21700DF14();
  sub_21700DF14();
  swift_getWitnessTable();
  v29 = sub_217008CB4();
  v30 = v25[13];
  v56 = a1;
  v31 = a1 + v30;
  v32 = *v31;
  LOBYTE(a5) = *(v31 + 8);

  if ((a5 & 1) == 0)
  {
    sub_21700ED94();
    v33 = sub_217009C34();
    sub_217007BC4();

    v34 = v46;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v47 + 8))(v34, v48);
    v32 = v63;
  }

  v67 = v49;
  v68 = v27;
  v69 = xmmword_217047820;
  v70 = 1;
  v35 = *(v56 + v25[10]);

  v36 = v53;
  sub_216B410B0(&v67, v62, v58, v52, v29, v32, &off_28292BE68, v35, v53);
  v37 = v57;
  sub_2170099E4();
  v38 = v60;
  v39 = v51;
  v40 = MEMORY[0x277CDE3A8];
  sub_21700A7B4();
  (*(v59 + 8))(v37, v38);
  (*(v55 + 8))(v36, v16);
  v63 = v16;
  v64 = v38;
  v65 = v39;
  v66 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v50;
  sub_2166C24DC(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v43 = *(v54 + 8);
  v43(v21, OpaqueTypeMetadata2);
  sub_2166C24DC(v42, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v43)(v42, OpaqueTypeMetadata2);
}

uint64_t sub_216B438F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  sub_2167CD8D8();

  sub_2170082B4();
  v4 = a2 + v3[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[8];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  v7 = a2 + v3[9];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v3[10];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v3[11];
  result = swift_getKeyPath();
  *v9 = result;
  v9[40] = 0;
  return result;
}

uint64_t sub_216B43A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a1;
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3538, &qword_217047B38);
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - v5;
  v70 = sub_21700D8E4();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v56 - v9;
  MEMORY[0x28223BE20](v10);
  v64 = &v56 - v11;
  v12 = type metadata accessor for DefaultSectionHeaderView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1628, &qword_21703EB40);
  v66 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v56 - v16;
  v17 = type metadata accessor for DefaultSectionHeader(0);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8, &unk_21702C540);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v25 = _s7SectionV6HeaderVMa(0);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v3;
  sub_216B453B0(v3, v28, _s7SectionV6HeaderVMa);
  v29 = &v28[*(v26 + 28)];
  v30 = v24;
  sub_216B452E0(v29, v24);
  v31 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v31) == 1)
  {
    goto LABEL_6;
  }

  v59 = v15;
  v60 = v4;
  sub_216681B04(v24, v21, &qword_27CABDCB8, &unk_21702C540);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_216B454EC(v21, _s7SectionV6HeaderV12HeaderLockupOMa);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v47 = sub_2166D381C(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView, &unk_217037970);
    *&v73 = v12;
    *(&v73 + 1) = v47;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return sub_2166997CC(v30, &qword_27CABDCB8, &unk_21702C540);
  }

  v57 = v24;
  v58 = v6;
  v32 = v69;
  sub_216B45350(v21, v69, type metadata accessor for DefaultSectionHeader);
  sub_216B453B0(v32, v14, type metadata accessor for DefaultSectionHeader);
  v33 = v12;
  v34 = v12[5];
  *&v14[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  v35 = &v14[v12[6]];
  *v35 = swift_getKeyPath();
  *(v35 + 1) = 0;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  v35[32] = 0;
  v36 = v12[7];
  *&v14[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v37 = v12[8];
  *&v14[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0, &unk_21703C1D0);
  swift_storeEnumTagMultiPayload();
  *&v73 = 0x402E000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  *&v73 = 0x402A000000000000;
  sub_2170082B4();
  *&v73 = 0x4038000000000000;
  sub_2170082B4();
  v73 = 0u;
  v74 = 0u;
  v39 = v62;
  v38 = v63;
  v40 = (v63 + *(v62 + 36));
  v42 = *v40;
  v41 = v40[1];
  v72[3] = MEMORY[0x277D837D0];
  v72[0] = v42;
  v72[1] = v41;
  sub_21700DF14();
  v43 = v61;
  sub_21700D8B4();
  sub_2166997CC(&v73, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(v72, &unk_27CABF7A0, &unk_217014D20);
  v44 = *(v38 + *(v39 + 44));
  *(&v74 + 1) = MEMORY[0x277D83B88];
  *&v73 = v44;
  sub_21700D8C4();
  v45 = *(v67 + 8);
  v45(v43, v70);
  sub_2166997CC(&v73, &unk_27CABF7A0, &unk_217014D20);
  if (*(v38 + *(v39 + 40)) == 62)
  {
    v46 = 0;
    v73 = 0uLL;
    *&v74 = 0;
  }

  else
  {
    LOBYTE(v73) = *(v38 + *(v39 + 40));
    v46 = &_s7SectionV8ItemKindON;
  }

  v48 = v59;
  *(&v74 + 1) = v46;
  v49 = v64;
  v50 = v68;
  sub_21700D8C4();
  v51 = v70;
  v45(v50, v70);
  sub_2166997CC(&v73, &unk_27CABF7A0, &unk_217014D20);
  v52 = sub_2166D381C(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView, &unk_217037970);
  v53 = v65;
  sub_21700A204();
  v45(v49, v51);
  sub_216B454EC(v14, type metadata accessor for DefaultSectionHeaderView);
  v54 = v66;
  (*(v66 + 16))(v58, v53, v48);
  swift_storeEnumTagMultiPayload();
  *&v73 = v33;
  *(&v73 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  sub_217009554();
  (*(v54 + 8))(v53, v48);
  sub_216B454EC(v69, type metadata accessor for DefaultSectionHeader);
  v30 = v57;
  return sub_2166997CC(v30, &qword_27CABDCB8, &unk_21702C540);
}

double sub_216B44394@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a1;
  v5 = a1 - 8;
  v57 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v55 = v6;
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217008844();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2170090F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v3 + *(v5 + 60);
  v24 = *v23;
  if (*(v23 + 8) == 1)
  {
    v25 = *v23;
  }

  else
  {
    v53 = v13;

    sub_21700ED94();
    v26 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v24, 0);
    v13 = (*(v12 + 8))(v22, v53);
    v25 = LOBYTE(v58[0]);
  }

  v27 = v54;
  sub_216C0C570(v13, v14, v15, v16, v17, v18, v19, v20, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *&v58[0], *(&v58[0] + 1));
  v28 = sub_217008834();
  (*(v8 + 8))(v10, v7);
  v29 = 3;
  if (v25 < 2)
  {
    v29 = 4;
  }

  if (v28)
  {
    v30 = 2;
  }

  else
  {
    v30 = v29;
  }

  v59 = 0;
  memset(v58, 0, sizeof(v58));
  *(a2 + 32) = &unk_28291FA68;
  *(a2 + 40) = &off_28291DBE0;
  v31 = swift_allocObject();
  *(a2 + 8) = v31;
  sub_21698F234(v58, v31 + 16);
  *(v31 + 80) = &unk_28291FB08;
  *(v31 + 88) = &off_28291F9F0;
  *(v31 + 56) = v30;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  sub_216A906C4(v58);
  *(v31 + 120) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 112) = 0;
  v32 = *(v3 + 40);
  type metadata accessor for MappedSection(0);
  sub_216C71754(v32);
  v50 = v34;
  v51 = v33;
  v49 = v35;
  HIDWORD(v48) = v36;
  v37 = *(v3 + 8);
  v53 = *v3;
  v38 = *(v3 + 16);
  v39 = *(v3 + 24);
  HIDWORD(v52) = *(v3 + 32);
  v41 = v56;
  v40 = v57;
  (*(v57 + 16))(v56, v3, v27);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = *(v27 + 16);
  (*(v40 + 32))(v43 + v42, v41, v27);
  *a2 = v32;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3540, &qword_217047BA8) + 92);
  *(a2 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v45 = v50;
  *(a2 + 48) = v51;
  *(a2 + 56) = v45;
  *(a2 + 64) = v49;
  *(a2 + 72) = BYTE4(v48);
  *(a2 + 120) = sub_216B45410;
  *(a2 + 128) = v43;
  v46 = v53;
  *(a2 + 80) = v53;
  *(a2 + 88) = v37;
  *(a2 + 96) = v38;
  *(a2 + 104) = v39;
  LOBYTE(v41) = BYTE4(v52);
  *(a2 + 112) = BYTE4(v52);
  *(a2 + 136) = 0;
  sub_21700DF14();
  return sub_216B454AC(v46, v37, v38, v39, v41);
}

uint64_t sub_216B44838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v36 = a5;
  v8 = type metadata accessor for TrackLockup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700D8E4();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TrackShelfLockupView(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  v18 = (v16 + v14[6]);
  type metadata accessor for PlaybackPresenter(0);
  sub_2166D381C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);

  *v18 = sub_217008CF4();
  v18[1] = v19;
  v20 = v14[7];
  *(v16 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v21 = v16 + v14[8];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  *v16 = v17;
  v23 = type metadata accessor for TopSongsShelfCollection(0, a3, a4, v22);
  v24 = (v33 + *(v23 + 40));
  v25 = *(v24 + *(type metadata accessor for MappedSection(0) + 52));
  if (v25 != 62)
  {
    sub_216C275C8(v25);
  }

  sub_216DE90F8();
  v26 = sub_21680DFFC();
  v28 = v27;
  sub_216B454EC(v10, type metadata accessor for TrackLockup);
  if (v28)
  {
    v29 = MEMORY[0x277D837D0];
  }

  else
  {
    v26 = 0;
    v29 = 0;
    v38[2] = 0;
  }

  v38[0] = v26;
  v38[1] = v28;
  v38[3] = v29;
  v31 = *v24;
  v30 = v24[1];
  v37[3] = MEMORY[0x277D837D0];
  v37[0] = v31;
  v37[1] = v30;
  sub_21700DF14();
  sub_21700D8D4();

  sub_2166997CC(v37, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(v38, &unk_27CABF7A0, &unk_217014D20);
  sub_2166D381C(qword_280E3AE78, type metadata accessor for TrackShelfLockupView, &unk_21704F680);
  sub_21700A204();
  (*(v34 + 8))(v13, v35);
  return sub_216B454EC(v16, type metadata accessor for TrackShelfLockupView);
}

unint64_t sub_216B44C24()
{
  result = qword_27CAC33F8;
  if (!qword_27CAC33F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC33F0, &qword_2170479C8);
    sub_216B44CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC33F8);
  }

  return result;
}

unint64_t sub_216B44CA8()
{
  result = qword_27CAC3400;
  if (!qword_27CAC3400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3408, &qword_2170479D0);
    sub_216B44D60();
    sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30, &qword_217034B68, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3400);
  }

  return result;
}

unint64_t sub_216B44D60()
{
  result = qword_27CAC3410;
  if (!qword_27CAC3410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3418, &qword_2170479D8);
    sub_216B44DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3410);
  }

  return result;
}

unint64_t sub_216B44DEC()
{
  result = qword_27CAC3420;
  if (!qword_27CAC3420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC490, &qword_217026C50);
    sub_216B44E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3420);
  }

  return result;
}

unint64_t sub_216B44E78()
{
  result = qword_27CAC3428;
  if (!qword_27CAC3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3428);
  }

  return result;
}

void sub_216B44F74(uint64_t a1)
{
  sub_2166D8338(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MappedSection(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v3 <= 0x3F)
      {
        sub_216B450D0();
        if (v4 <= 0x3F)
        {
          sub_216B45208(319, &qword_280E2B488, &_s9SizeClassON, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_216B3BC0C(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_216B450D0()
{
  result = qword_280E2EAD8[0];
  if (!qword_280E2EAD8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280E2EAD8);
  }

  return result;
}

void sub_216B45128(uint64_t a1)
{
  _s7SectionV6HeaderVMa(319);
  if (v1 <= 0x3F)
  {
    sub_216B45208(319, &qword_280E2C640, &_s7SectionV8ItemKindON, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B45208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_216B452E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8, &unk_21702C540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B45350(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216B453B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B45410@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for TopSongsShelfCollection(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_216B44838(a1, v9, v6, v7, a3);
}

double sub_216B454AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_21700DF14();
    v5 = vars8;
  }

  sub_21700DF14();
  return result;
}

uint64_t sub_216B454EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216B45540()
{
  result = qword_27CAC3548;
  if (!qword_27CAC3548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3550, qword_217047BB0);
    type metadata accessor for DefaultSectionHeaderView(255);
    sub_2166D381C(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView, &unk_217037970);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3548);
  }

  return result;
}

void sub_216B45630()
{
  OUTLINED_FUNCTION_49();
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  sub_2170069C4();
  v8 = (*(v3 + 88))(v7, v1);
  if (v8 == *MEMORY[0x277D2A400] || v8 == *MEMORY[0x277D2A418])
  {
    goto LABEL_4;
  }

  if (v8 != *MEMORY[0x277D2A438] && v8 != *MEMORY[0x277D2A3C8])
  {
    if (v8 == *MEMORY[0x277D2A428] || v8 == *MEMORY[0x277D2A388] || v8 == *MEMORY[0x277D2A408])
    {
      goto LABEL_15;
    }

    if (v8 == *MEMORY[0x277D2A3B0] || v8 == *MEMORY[0x277D2A3B8] || v8 == *MEMORY[0x277D2A440])
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_217013D90;
      sub_2170069C4();
      sub_216DF7928();
      v11 = v10;
      v12 = OUTLINED_FUNCTION_5_81();
      v13(v12);
      *(inited + 32) = v11;
      *(inited + 40) = v0;
      *(inited + 48) = sub_216B45BB4(224);
      *(inited + 56) = v14;
      sub_216B45A2C(inited);
      swift_setDeallocating();
      sub_2169FAC80();
      goto LABEL_5;
    }

    if (v8 == *MEMORY[0x277D2A450] || v8 == *MEMORY[0x277D2A3C0] || v8 == *MEMORY[0x277D2A3D0])
    {
      goto LABEL_15;
    }

    if (v8 == *MEMORY[0x277D2A3F8])
    {
      goto LABEL_4;
    }

    if (v8 == *MEMORY[0x277D2A430])
    {
      goto LABEL_15;
    }

    if (v8 == *MEMORY[0x277D2A458])
    {
      goto LABEL_4;
    }

    if (v8 == *MEMORY[0x277D2A448] || v8 == *MEMORY[0x277D2A420] || v8 == *MEMORY[0x277D2A3D8] || v8 == *MEMORY[0x277D2A3E0])
    {
LABEL_15:
      sub_2170069C4();
      sub_216DF6318();
      v16 = OUTLINED_FUNCTION_5_81();
      v17(v16);
    }
  }

LABEL_5:
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_26();
}

void sub_216B45A2C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_17;
    }

    v8 = *v5;
    v5 += 2;
    v7 = v8;
    ++v1;
    if (v8)
    {
      v9 = *(v5 - 3);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v4 = v12;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_21693776C();
        v4 = v13;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  if (*(v4 + 16))
  {
    sub_216983738(293);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    sub_216856418();
    sub_21700E454();
  }
}

uint64_t sub_216B45BB4(__int16 a1)
{
  v2 = sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_2170069E4();
  (*(v4 + 104))(v8, *MEMORY[0x277D2A6B0], v2);
  v12 = OUTLINED_FUNCTION_109();
  v14 = sub_21688D974(v12, v13);
  v15 = *(v4 + 8);
  v15(v8, v2);
  v15(v11, v2);
  result = 0;
  if (v14)
  {
    return sub_216983738(a1);
  }

  return result;
}

void sub_216B45CF0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v2 = sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2170069C4();
  sub_2170069E4();
  (*(v4 + 32))(v8, v11, v2);
  v18 = OUTLINED_FUNCTION_109();
  v20 = v19(v18);
  if (v20 == *MEMORY[0x277D2A6A8])
  {
    goto LABEL_5;
  }

  if (v20 != *MEMORY[0x277D2A6B0])
  {
    v22 = OUTLINED_FUNCTION_109();
    v23(v22);
LABEL_5:
    v21 = 1;
    goto LABEL_6;
  }

  v21 = 0;
LABEL_6:
  v26 = v21;
  v24 = sub_216DF6204(&v26, v1);
  (*(v14 + 8))(v17, v12, v24);
  OUTLINED_FUNCTION_26();
}

void sub_216B45ED4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-v3];
  v5 = sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  sub_2170067A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  sub_2170069C4();
  sub_2170069E4();
  (*(v7 + 32))(v11, v14, v5);
  v16 = (*(v7 + 88))(v11, v5);
  if (v16 != *MEMORY[0x277D2A6A8])
  {
    if (v16 == *MEMORY[0x277D2A6B0])
    {
      v17 = 0;
      goto LABEL_6;
    }

    (*(v7 + 8))(v11, v5);
  }

  v17 = 1;
LABEL_6:
  v26 = v17;
  sub_216E017AC(&v26, 0, v4);
  v18 = sub_21700D3B4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v18) == 1)
  {
    v19 = OUTLINED_FUNCTION_109();
    v20(v19);
    sub_216801D0C(v4);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
  }

  else
  {
    v21 = MEMORY[0x277D21D10];
    *(v1 + 24) = v18;
    *(v1 + 32) = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
    (*(*(v18 - 8) + 32))(boxed_opaque_existential_1, v4, v18);
    v23 = OUTLINED_FUNCTION_109();
    v24(v23);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216B461A0()
{
  OUTLINED_FUNCTION_49();
  v74 = v1;
  v2 = sub_21700D704();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_77();
  v73 = v3 - v4;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v5);
  v69 = v63 - v6;
  v7 = sub_21700D774();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_77();
  v72 = v8 - v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  *&v68 = v63 - v11;
  v12 = sub_2170069D4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v63 - v20;
  v22 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77();
  v66 = v26 - v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v65 = v63 - v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  v32 = v63 - v31;
  sub_2170069C4();
  *&v75 = sub_217006784();
  v71 = v33;
  v34 = *(v24 + 8);
  v67 = v22;
  v64 = v34;
  v34(v32, v22);
  v70 = v0;
  sub_2170069E4();
  (*(v14 + 104))(v18, *MEMORY[0x277D2A6B0], v12);
  v35 = sub_21688D974(v21, v18);
  v36 = *(v14 + 8);
  v36(v18, v12);
  v36(v21, v12);
  if (v35)
  {
    sub_21700D764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    v75 = xmmword_217013DA0;
    v38 = OUTLINED_FUNCTION_3_109(inited, xmmword_217013DA0);
    v39 = MEMORY[0x277D837D0];
    v38[4].n128_u64[1] = MEMORY[0x277D837D0];
    v38[3].n128_u64[0] = 0x4C746E65746E6F43;
    v38[3].n128_u64[1] = 0xEF6D657449747369;
    OUTLINED_FUNCTION_6_76(v38);
    sub_21700D6F4();
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_217015230;
    *(v40 + 32) = 1684957547;
    *(v40 + 40) = 0xE400000000000000;
    *(v40 + 48) = 0x497972617262696CLL;
    *(v40 + 56) = 0xEB000000006D6574;
    *(v40 + 72) = v39;
    *(v40 + 80) = 1701667182;
    *(v40 + 88) = 0xE400000000000000;
    *(v40 + 96) = 0x497972617262696CLL;
    *(v40 + 104) = 0xEB000000006D6574;
    *(v40 + 120) = v39;
    *(v40 + 128) = 25705;
    *(v40 + 168) = v39;
    *(v40 + 136) = 0xE200000000000000;
    *(v40 + 144) = 0x497972617262696CLL;
    *(v40 + 152) = 0xEB000000006D6574;
    OUTLINED_FUNCTION_6_76(v40);
    v41 = swift_initStackObject();
    *(v41 + 16) = v75;
    strcpy((v41 + 32), "locationType");
    *(v41 + 45) = 0;
    *(v41 + 46) = -5120;
    *(v41 + 72) = v39;
    v42 = OUTLINED_FUNCTION_1_136(v41);
    OUTLINED_FUNCTION_6_76(v42);
  }

  else
  {
    v43 = v71;
    swift_bridgeObjectRetain_n();
    sub_21700D764();
    v63[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    v44 = swift_initStackObject();
    v68 = xmmword_217013DA0;
    v45 = OUTLINED_FUNCTION_3_109(v44, xmmword_217013DA0);
    v45[4].n128_u64[1] = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_136(v45);
    v69 = sub_21700E384();
    sub_21700D6F4();
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_217015230;
    *(v46 + 32) = 1684957547;
    *(v46 + 40) = 0xE400000000000000;
    v47 = v65;
    sub_2170069C4();
    v48 = sub_216B7C198();
    v50 = v49;
    v51 = v47;
    v52 = v67;
    v53 = v64;
    v64(v51, v67);
    *(v46 + 48) = v48;
    *(v46 + 56) = v50;
    *(v46 + 72) = MEMORY[0x277D837D0];
    *(v46 + 80) = 1701667182;
    *(v46 + 88) = 0xE400000000000000;
    v54 = v66;
    sub_2170069C4();
    v55 = sub_216C74700();
    v57 = v56;
    v53(v54, v52);
    if (v57)
    {
      v58 = v55;
    }

    else
    {
      v58 = 0;
    }

    v59 = 0xE000000000000000;
    if (v57)
    {
      v59 = v57;
    }

    *(v46 + 96) = v58;
    *(v46 + 104) = v59;
    v60 = MEMORY[0x277D837D0];
    *(v46 + 120) = MEMORY[0x277D837D0];
    *(v46 + 128) = 25705;
    *(v46 + 168) = v60;
    v61 = v75;
    *(v46 + 136) = 0xE200000000000000;
    *(v46 + 144) = v61;
    *(v46 + 152) = v43;
    sub_21700E384();
    v62 = swift_initStackObject();
    *(v62 + 16) = v68;
    strcpy((v62 + 32), "locationType");
    *(v62 + 45) = 0;
    *(v62 + 46) = -5120;
    *(v62 + 72) = v60;
    OUTLINED_FUNCTION_1_136(v62);
    sub_21700E384();
  }

  sub_21700D784();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B46820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v14 = type metadata accessor for AppDestinationFullScreenCoverPageView(0, a4, a5, v13);
  (*(*(a4 - 8) + 32))(a6 + *(v14 + 36), a2, a4);
  v15 = a6 + *(v14 + 40);

  return sub_216B46938(a3, v15);
}

uint64_t sub_216B46938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAppDestinationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B4699C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MusicAppDestinationContext(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_216B46A54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v10;
  v20 = *(v5 + 64) + v15;
  v21 = v17 | 7;
  v22 = v17 + 40;
  v23 = a1;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v24 = v18 + (v22 & ~v17) + ((v21 + v16 + (v20 & ~v15)) & ~v21);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v14 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if (v6 == v14)
  {
    v32 = v6;
    v33 = AssociatedTypeWitness;
LABEL_40:

    return __swift_getEnumTagSinglePayload(v23, v32, v33);
  }

  v23 = ((a1 + v20) & ~v15);
  if (v8 == v14)
  {
    v32 = v8;
    v33 = v4;
    goto LABEL_40;
  }

  if (v13 > 0x7FFFFFFE)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v22 + ((v23 + v16 + v21) & ~v21)) & ~v17, v12, v19);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v34 = *(((v23 + v16 + v21) & ~v21) + 0x18);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    if ((v34 + 1) >= 2)
    {
      return v34;
    }

    else
    {
      return 0;
    }
  }
}

void sub_216B46DAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_217005EF4();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v6 + 64) + v18;
  v20 = *(v8 + 64);
  v21 = *(v13 + 80);
  v22 = v21 | 7;
  v23 = v21 + 40;
  v24 = (v21 + 40) & ~v21;
  if (v14)
  {
    v25 = *(*(v11 - 8) + 64);
  }

  else
  {
    v25 = *(*(v11 - 8) + 64) + 1;
  }

  v26 = v24 + v25;
  v27 = (((v21 | 7) + v20 + (v19 & ~v18)) & ~(v21 | 7)) + v24 + v25;
  v28 = 8 * v27;
  if (a3 > v17)
  {
    if (v27 <= 3)
    {
      v29 = ((a3 - v17 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v29))
      {
        v12 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v12 = v30;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v17 < a2)
  {
    v31 = ~v17 + a2;
    if (v27 < 4)
    {
      v32 = (v31 >> v28) + 1;
      if (v27)
      {
        v37 = v31 & ~(-1 << v28);
        bzero(a1, v27);
        if (v27 == 3)
        {
          *a1 = v37;
          a1[2] = BYTE2(v37);
        }

        else if (v27 == 2)
        {
          *a1 = v37;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v31;
      v32 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v27] = v32;
        break;
      case 2:
        *&a1[v27] = v32;
        break;
      case 3:
        goto LABEL_81;
      case 4:
        *&a1[v27] = v32;
        break;
      default:
        return;
    }

    return;
  }

  v33 = ~v18;
  v34 = ~v22;
  v35 = ~v21;
  v36 = a1;
  switch(v12)
  {
    case 1:
      a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *&a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_81:
      __break(1u);
      return;
    case 4:
      *&a1[v27] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v7 == v17)
      {
        v38 = a2;
        v14 = v7;
        v11 = AssociatedTypeWitness;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v36, v38, v14, v11);
        return;
      }

      v36 = (&a1[v19] & v33);
      if (v9 == v17)
      {
        v38 = a2;
        v14 = v9;
        v11 = v5;
        goto LABEL_42;
      }

      v39 = (&v36[v20 + v22] & v34);
      if (v16 >= a2)
      {
        if (v15 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *((&v36[v20 + v22] & v34) + 0x20) = 0;
            *v39 = 0u;
            *((&v36[v20 + v22] & v34) + 0x10) = 0u;
            *v39 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *((&v36[v20 + v22] & v34) + 0x18) = a2;
          }

          return;
        }

        v39 = (&v39[v23] & v35);
        if (v15 >= a2)
        {
          v38 = a2 + 1;
          v36 = v39;
          goto LABEL_42;
        }

        if (v25 <= 3)
        {
          v43 = ~(-1 << (8 * v25));
        }

        else
        {
          v43 = -1;
        }

        if (v25)
        {
          v41 = v43 & (~v15 + a2);
          if (v25 <= 3)
          {
            v44 = v25;
          }

          else
          {
            v44 = 4;
          }

          bzero(v39, v25);
          switch(v44)
          {
            case 2:
LABEL_76:
              *v39 = v41;
              break;
            case 3:
LABEL_79:
              *v39 = v41;
              v39[2] = BYTE2(v41);
              break;
            case 4:
LABEL_80:
              *v39 = v41;
              break;
            default:
LABEL_56:
              *v39 = v41;
              break;
          }
        }
      }

      else
      {
        if (v26 <= 3)
        {
          v40 = ~(-1 << (8 * v26));
        }

        else
        {
          v40 = -1;
        }

        if (v26)
        {
          v41 = v40 & (~v16 + a2);
          if (v26 <= 3)
          {
            v42 = v26;
          }

          else
          {
            v42 = 4;
          }

          bzero((&v36[v20 + v22] & v34), v26);
          switch(v42)
          {
            case 2:
              goto LABEL_76;
            case 3:
              goto LABEL_79;
            case 4:
              goto LABEL_80;
            default:
              goto LABEL_56;
          }
        }
      }

      return;
  }
}

uint64_t sub_216B472DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v60 = v7;
  MEMORY[0x28223BE20](v8);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v51 - v11;
  v12 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v52 = v14;
  MEMORY[0x28223BE20](v15);
  v53 = &v51 - v16;
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AppFullScreenCoverDestinationViewControllerRepresentable(0, v5, v4, v20);
  OUTLINED_FUNCTION_1();
  v57 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v55 = &v51 - v27;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v62 = v29;
  v63 = v28;
  v30 = MEMORY[0x28223BE20](v28);
  v61 = &v51 - v31;
  v32 = a1;
  v33 = *(a1 + 36);
  if ((*(v4 + 152))(v5, v4, v30))
  {
    (*(v51 + 16))(v19, v2 + v33, v5);
    v34 = v53;
    (*(v52 + 16))(v53, v2, v54);
    v35 = v56;
    sub_216B479C0(v2 + *(v32 + 40), v56);
    sub_216B478A0(v19, v34, v35, v5, v4, v25);
    OUTLINED_FUNCTION_0_162();
    WitnessTable = swift_getWitnessTable();
    v37 = v55;
    v38 = OUTLINED_FUNCTION_39();
    sub_2166C24DC(v38, v39, WitnessTable);
    v40 = *(v57 + 8);
    v41 = OUTLINED_FUNCTION_39();
    v40(v41);
    sub_2166C24DC(v37, v21, WitnessTable);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = v61;
    OUTLINED_FUNCTION_39();
    sub_2166C2718();
    v44 = OUTLINED_FUNCTION_39();
    v40(v44);
    (v40)(v37, v21);
  }

  else
  {
    v45 = v59;
    (*(v4 + 120))(v2, v5, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = v58;
    sub_2166C24DC(v45, v6, AssociatedConformanceWitness);
    v47 = *(v60 + 8);
    v47(v45, v6);
    sub_2166C24DC(v46, v6, AssociatedConformanceWitness);
    OUTLINED_FUNCTION_0_162();
    swift_getWitnessTable();
    v43 = v61;
    OUTLINED_FUNCTION_39();
    sub_2166C2CB0();
    v47(v45, v6);
    v47(v46, v6);
  }

  v65 = swift_getWitnessTable();
  v66 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_6_1();
  v48 = v63;
  v49 = swift_getWitnessTable();
  sub_2166C24DC(v43, v48, v49);
  return (*(v62 + 8))(v43, v48);
}

uint64_t sub_216B478A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for AppFullScreenCoverDestinationViewControllerRepresentable(0, a4, a5, v11);
  v13 = *(v12 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6 + v13, a2, AssociatedTypeWitness);
  v15 = a6 + *(v12 + 40);

  return sub_216B46938(a3, v15);
}

uint64_t sub_216B479C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAppDestinationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B47A24(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = type metadata accessor for MusicAppDestinationContext(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_216B47AE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v10;
  v20 = *(v5 + 64) + v15;
  v21 = v17 | 7;
  v22 = v17 + 40;
  v23 = a1;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v24 = v18 + (v22 & ~v17) + ((v21 + v16 + (v20 & ~v15)) & ~v21);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v14 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if (v6 == v14)
  {
    v32 = v6;
    v33 = v4;
LABEL_40:

    return __swift_getEnumTagSinglePayload(v23, v32, v33);
  }

  v23 = ((a1 + v20) & ~v15);
  if (v8 == v14)
  {
    v32 = v8;
    v33 = AssociatedTypeWitness;
    goto LABEL_40;
  }

  if (v13 > 0x7FFFFFFE)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v22 + ((v23 + v16 + v21) & ~v21)) & ~v17, v12, v19);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v34 = *(((v23 + v16 + v21) & ~v21) + 0x18);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    if ((v34 + 1) >= 2)
    {
      return v34;
    }

    else
    {
      return 0;
    }
  }
}

void sub_216B47E40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_217005EF4();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v6 + 64) + v18;
  v20 = *(v8 + 64);
  v21 = *(v13 + 80);
  v22 = v21 | 7;
  v23 = v21 + 40;
  v24 = (v21 + 40) & ~v21;
  if (v14)
  {
    v25 = *(*(v11 - 8) + 64);
  }

  else
  {
    v25 = *(*(v11 - 8) + 64) + 1;
  }

  v26 = v24 + v25;
  v27 = (((v21 | 7) + v20 + (v19 & ~v18)) & ~(v21 | 7)) + v24 + v25;
  v28 = 8 * v27;
  if (a3 > v17)
  {
    if (v27 <= 3)
    {
      v29 = ((a3 - v17 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v29))
      {
        v12 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v12 = v30;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v17 < a2)
  {
    v31 = ~v17 + a2;
    if (v27 < 4)
    {
      v32 = (v31 >> v28) + 1;
      if (v27)
      {
        v37 = v31 & ~(-1 << v28);
        bzero(a1, v27);
        if (v27 == 3)
        {
          *a1 = v37;
          a1[2] = BYTE2(v37);
        }

        else if (v27 == 2)
        {
          *a1 = v37;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v31;
      v32 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v27] = v32;
        break;
      case 2:
        *&a1[v27] = v32;
        break;
      case 3:
        goto LABEL_81;
      case 4:
        *&a1[v27] = v32;
        break;
      default:
        return;
    }

    return;
  }

  v33 = ~v18;
  v34 = ~v22;
  v35 = ~v21;
  v36 = a1;
  switch(v12)
  {
    case 1:
      a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *&a1[v27] = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_81:
      __break(1u);
      return;
    case 4:
      *&a1[v27] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v7 == v17)
      {
        v38 = a2;
        v14 = v7;
        v11 = v5;
LABEL_42:

        __swift_storeEnumTagSinglePayload(v36, v38, v14, v11);
        return;
      }

      v36 = (&a1[v19] & v33);
      if (v9 == v17)
      {
        v38 = a2;
        v14 = v9;
        v11 = AssociatedTypeWitness;
        goto LABEL_42;
      }

      v39 = (&v36[v20 + v22] & v34);
      if (v16 >= a2)
      {
        if (v15 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *((&v36[v20 + v22] & v34) + 0x20) = 0;
            *v39 = 0u;
            *((&v36[v20 + v22] & v34) + 0x10) = 0u;
            *v39 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *((&v36[v20 + v22] & v34) + 0x18) = a2;
          }

          return;
        }

        v39 = (&v39[v23] & v35);
        if (v15 >= a2)
        {
          v38 = a2 + 1;
          v36 = v39;
          goto LABEL_42;
        }

        if (v25 <= 3)
        {
          v43 = ~(-1 << (8 * v25));
        }

        else
        {
          v43 = -1;
        }

        if (v25)
        {
          v41 = v43 & (~v15 + a2);
          if (v25 <= 3)
          {
            v44 = v25;
          }

          else
          {
            v44 = 4;
          }

          bzero(v39, v25);
          switch(v44)
          {
            case 2:
LABEL_76:
              *v39 = v41;
              break;
            case 3:
LABEL_79:
              *v39 = v41;
              v39[2] = BYTE2(v41);
              break;
            case 4:
LABEL_80:
              *v39 = v41;
              break;
            default:
LABEL_56:
              *v39 = v41;
              break;
          }
        }
      }

      else
      {
        if (v26 <= 3)
        {
          v40 = ~(-1 << (8 * v26));
        }

        else
        {
          v40 = -1;
        }

        if (v26)
        {
          v41 = v40 & (~v16 + a2);
          if (v26 <= 3)
          {
            v42 = v26;
          }

          else
          {
            v42 = 4;
          }

          bzero((&v36[v20 + v22] & v34), v26);
          switch(v42)
          {
            case 2:
              goto LABEL_76;
            case 3:
              goto LABEL_79;
            case 4:
              goto LABEL_80;
            default:
              goto LABEL_56;
          }
        }
      }

      return;
  }
}

uint64_t sub_216B48370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_216B483EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_216B48468(uint64_t a1)
{
  swift_getWitnessTable();
  sub_217009AF4();
  __break(1u);
}

void sub_216B484A8(uint64_t a1)
{
  sub_216B49838(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_216B48558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_216B485C8(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_216B485C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618, &qword_21704AE70);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_216B74270(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2166A6E54(a1, v18, &qword_27CAC35F8, &qword_217047DB0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      sub_216697664(v14, &qword_27CAC3618, &qword_21704AE70);
    }
  }

  else
  {
    sub_21678818C(v14, v18, &qword_27CAC35F8, &qword_217047DB0);
  }

  swift_beginAccess();
  sub_216B487B8(v18);
  swift_endAccess();
  sub_216697664(a1, &qword_27CAC35F8, &qword_217047DB0);
  *(v6 + qword_280E34FB0) = a2;
  v19 = v6 + qword_280E34FA0;
  v20 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(a3 + 32);
  v21 = (v6 + qword_280E34F98);
  *v21 = a4;
  v21[1] = a5;
  return v6;
}

uint64_t sub_216B487B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_2166A6E54(a1, &v11 - v6, &qword_27CAC35F8, &qword_217047DB0);
  sub_2166A6E54(v7, v4, &qword_27CAC35F8, &qword_217047DB0);
  sub_217007DA4();
  v8 = OUTLINED_FUNCTION_116();
  sub_216697664(v8, v9, &qword_217047DB0);
  return sub_216697664(v7, &qword_27CAC35F8, &qword_217047DB0);
}

uint64_t sub_216B488C4(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v13 = *(v3 + 80);
  v7 = v13;
  v14 = *(v3 + 88);
  v8 = v14;
  swift_getKeyPath();
  v12[0] = v7;
  v12[1] = v8;
  swift_getKeyPath();
  sub_2166A6E54(a1, v6, &qword_27CAC35F8, &qword_217047DB0);

  sub_217007DF4();
  sub_216B489F4();
  v9 = OUTLINED_FUNCTION_116();
  return sub_216697664(v9, v10, &qword_217047DB0);
}

uint64_t sub_216B489F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618, &qword_21704AE70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v7 - v2;
  sub_216B48AF4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v5 = *(v0 + qword_280E34FA0 + 16);
  v7[0] = *(v0 + qword_280E34FA0);
  v7[1] = v5;
  v8 = *(v0 + qword_280E34FA0 + 32);
  sub_216B7404C(v3, v7);
  return sub_216697664(v3, &qword_27CAC3618, &qword_21704AE70);
}

uint64_t sub_216B48AF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216B48BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_2166A6E54(a1, &v6 - v3, &qword_27CAC35F8, &qword_217047DB0);
  return sub_216B488C4(v4);
}

uint64_t sub_216B48C5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21677BBA0();
}

uint64_t sub_216B48D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for PaginationSectionResult(0);
  v4[9] = swift_task_alloc();
  v4[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948, &unk_217017C20);
  v4[11] = swift_task_alloc();
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18, &qword_217035400);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_21700EA34();
  v4[17] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v4[18] = v6;
  v4[19] = v5;

  return MEMORY[0x2822009F8](sub_216B48EE8, v6, v5);
}

uint64_t sub_216B48EE8()
{
  sub_216B48AF4();
  OUTLINED_FUNCTION_116();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[14];

    v2 = &qword_27CAC35F8;
    v3 = &qword_217047DB0;
    v4 = v1;
LABEL_7:
    sub_216697664(v4, v2, v3);
    OUTLINED_FUNCTION_1_137();

    OUTLINED_FUNCTION_3();

    return v16();
  }

  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v8 = v0[10];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3600, &qword_217047EB8);
  v0[20] = v9;
  v10 = *(v7 + *(v9 + 48));
  sub_21678818C(v7, v5, &qword_27CABFD18, &qword_217035400);
  v11 = OUTLINED_FUNCTION_116();
  sub_2166A6E54(v11, v12, &qword_27CABFD18, &qword_217035400);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    v13 = v0[15];
    sub_216697664(v0[16], &qword_27CABFD18, &qword_217035400);

    v4 = v13;
    v2 = &qword_27CABFD18;
    v3 = &qword_217035400;
    goto LABEL_7;
  }

  sub_21678818C(v0[15], v0[11], &qword_27CAB7948, &unk_217017C20);
  if (v10)
  {
    v14 = v0[16];
    v15 = v0[11];

    sub_216697664(v15, &qword_27CAB7948, &unk_217017C20);
    v2 = &qword_27CABFD18;
    v3 = &qword_217035400;
    v4 = v14;
    goto LABEL_7;
  }

  v18 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[7];
  sub_2166A6E54(v19, v18, &qword_27CAB7948, &unk_217017C20);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  swift_storeEnumTagMultiPayload();
  sub_216B488C4(v18);
  v0[21] = *(v21 + qword_280E34FB0);
  v0[22] = *(v21 + qword_280E34FA0 + 8);
  sub_21700DF14();
  v0[5] = v20;
  v0[6] = sub_216B499D0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2166A6E54(v19, boxed_opaque_existential_1, &qword_27CAB7948, &unk_217017C20);

  v23 = swift_task_alloc();
  v0[23] = v23;
  *v23 = v0;
  v23[1] = sub_216B4922C;

  return sub_216A452BC();
}

uint64_t sub_216B4922C()
{
  v2 = *v1;
  v2[24] = v0;

  sub_216697664((v2 + 2), &qword_27CAC3610, &unk_217047EC0);

  v3 = v2[18];
  v4 = v2[19];
  if (v0)
  {
    v5 = sub_216B494D8;
  }

  else
  {
    v5 = sub_216B493A4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216B493A4()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  v7 = *(v1 + 48);
  sub_2166A6E54(v5 + *(v6 + 20), v3, &qword_27CABFD18, &qword_217035400);
  *(v3 + v7) = 0;
  swift_storeEnumTagMultiPayload();
  sub_216B488C4(v3);
  sub_216B49AB4(v5);
  sub_216697664(v4, &qword_27CAB7948, &unk_217017C20);
  sub_216697664(v2, &qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_1_137();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216B494D8()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[10];

  v5 = *(v2 + 48);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  *(v3 + v5) = v1;
  OUTLINED_FUNCTION_116();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_216B488C4(v3);
  if (qword_27CAB5DB8 != -1)
  {
    swift_once();
  }

  v7 = v0[24];
  v8 = sub_217007CA4();
  __swift_project_value_buffer(v8, qword_27CAC35E0);
  v9 = v7;
  v10 = sub_217007C84();
  v11 = sub_21700ED84();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[24];
  v14 = v0[16];
  v15 = v0[11];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = v13;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_216679000, v10, v11, "An error occurred attempting to retrieve the next page: '%{public}@'", v16, 0xCu);
    sub_216697664(v17, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  sub_216697664(v15, &qword_27CAB7948, &unk_217017C20);
  sub_216697664(v14, &qword_27CABFD18, &qword_217035400);
  OUTLINED_FUNCTION_1_137();

  OUTLINED_FUNCTION_3();

  return v20();
}

uint64_t sub_216B49728()
{
  v1 = qword_280E34FA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3620, &unk_217047F30);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  sub_216838830(*(v0 + qword_280E34FA0), *(v0 + qword_280E34FA0 + 8), *(v0 + qword_280E34FA0 + 16), *(v0 + qword_280E34FA0 + 24), *(v0 + qword_280E34FA0 + 32));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_216B497C8()
{
  sub_216B49728();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216B49838(uint64_t a1)
{
  if (!qword_280E48428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC35F8, &qword_217047DB0);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E48428);
    }
  }
}

uint64_t sub_216B4989C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B498E0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B4991C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2167AF644;

  return sub_216B48D58(a1, v4, v5, v6);
}

unint64_t sub_216B499D0()
{
  result = qword_27CAC3608;
  if (!qword_27CAC3608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7948, &unk_217017C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3608);
  }

  return result;
}

uint64_t sub_216B49A34()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC35E0);
  __swift_project_value_buffer(v0, qword_27CAC35E0);
  return sub_217007C94();
}

uint64_t sub_216B49AB4(uint64_t a1)
{
  v2 = type metadata accessor for PaginationSectionResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B49B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v5 - 8);
  v99 = &v87 - v6;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v104 = v7;
  v105 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v97 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v87 - v11;
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v89 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v91 = &v87 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v96 = &v87 - v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  v100 = &v87 - v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  v27 = type metadata accessor for SocialOnboardingSharedPlaylistLockup(0);
  v28 = v27[5];
  v29 = type metadata accessor for ContentDescriptor(0);
  v108 = a3;
  v102 = v28;
  v90 = v29;
  __swift_storeEnumTagSinglePayload(a3 + v28, 1, 1, v29);
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v33 = *(v15 + 8);
  v34 = v26;
  v35 = v15 + 8;
  v101 = v13;
  v36 = v33;
  v33(v34, v13);
  if (v32)
  {
    v94 = v36;
    v95 = v35;
    v106 = v30;
    v107 = v32;
    v88 = v32;
    sub_21700F364();
    sub_21700D7A4();
    v93 = a1;
    sub_21700CE04();
    v37 = v104;
    v39 = v105 + 16;
    v38 = *(v105 + 16);
    v40 = v12;
    v41 = v12;
    v42 = v103;
    v38(v40, v103, v104);
    v92 = v27;
    v43 = v41;
    sub_21700D734();
    v44 = v96;
    v45 = v93;
    sub_21700CE04();
    v46 = v97;
    v38(v97, v42, v37);
    v47 = v98;
    v48 = v99;
    ContentDescriptor.init(deserializing:using:)(v44, v46, v49, v50, v51, v52, v53, v54, v87, v88, SWORD2(v88), SBYTE6(v88), SHIBYTE(v88), v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    v55 = v45;
    v56 = v42;
    if (v47)
    {
      v57 = v37;
      v58 = v94;
      v59 = v108;
      v60 = v101;
      v27 = v92;
    }

    else
    {
      v97 = v39;
      v98 = v43;
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v90);
      sub_216A765E0(v48, v108 + v102);
      v67 = v45;
      v68 = v91;
      sub_21700CE04();
      v69 = sub_21700CDB4();
      v71 = v70;
      v60 = v101;
      v72 = v94;
      v94(v68, v101);
      if (v71)
      {
        v73 = v92;
        v74 = v108;
        v75 = (v108 + v92[8]);
        *v75 = v69;
        v75[1] = v71;
        v76 = v89;
        sub_21700CE04();
        v77 = sub_21700CD44();
        v102 = 0;
        v78 = v77;
        v72(v76, v60);
        *(v74 + *(v73 + 36)) = v78 & 1;
        type metadata accessor for Artwork(0);
        sub_21700CE04();
        v79 = v60;
        v81 = v103;
        v80 = v104;
        v38(v98, v103, v104);
        sub_2166D7454(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
        sub_21700D734();
        (*(v105 + 8))(v81, v80);
        return (v94)(v93, v79);
      }

      v58 = v72;
      v59 = v108;
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_163();
      v84 = sub_2166D7454(v82, v83, MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_4(v84);
      *v85 = 0x656C746974;
      v85[1] = 0xE500000000000000;
      v27 = v92;
      v85[2] = v92;
      OUTLINED_FUNCTION_50();
      (*(v86 + 104))();
      swift_willThrow();
      v55 = v67;
      v56 = v103;
      v57 = v104;
    }

    v32 = v88;
  }

  else
  {
    v58 = v36;
    v59 = v108;
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_163();
    v63 = sub_2166D7454(v61, v62, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v63);
    *v64 = 25705;
    v64[1] = 0xE200000000000000;
    v64[2] = v27;
    OUTLINED_FUNCTION_50();
    (*(v65 + 104))();
    swift_willThrow();
    v55 = a1;
    v56 = v103;
    v57 = v104;
    v60 = v101;
  }

  (*(v105 + 8))(v56, v57);
  v58(v55, v60);
  result = sub_216699820(v59 + v102, &qword_27CAB6A00, &unk_217016B60);
  if (v32)
  {
    sub_216788110(v59 + v27[6]);
    return sub_216699820(v59 + v27[7], &qword_27CAB6D58, &unk_217014E30);
  }

  return result;
}

uint64_t sub_216B4A2E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_216B4A320(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_216B4A370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    sub_21700DF14();
    OUTLINED_FUNCTION_0_164();

    sub_21700F0B4();
    sub_21700DF14();
    OUTLINED_FUNCTION_0_164();

    sub_21700F0B4();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216B4A494()
{
  result = qword_27CAC3628;
  if (!qword_27CAC3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3628);
  }

  return result;
}

unint64_t sub_216B4A4E8(uint64_t a1)
{
  *(a1 + 8) = sub_216ABE7E8();
  result = sub_216B4A518();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216B4A518()
{
  result = qword_27CAC3630;
  if (!qword_27CAC3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3630);
  }

  return result;
}

uint64_t sub_216B4A598@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = *(v7 + 24);
    *&v10[v11] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v12 = &v10[*(v7 + 28)];
    *v12 = swift_getKeyPath();
    v12[40] = 0;
    v21[0] = 0x4059800000000000;
    sub_2167CD8D8();

    v13 = a2;
    sub_2170082B4();
    *v10 = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    *(v10 + 1) = sub_216B4D9F8;
    *(v10 + 2) = v14;
    v10[24] = 0;
    v21[3] = sub_2170067A4();
    v21[4] = sub_216B4DA00(&qword_280E4A480, MEMORY[0x277D2A460]);
    __swift_allocate_boxed_opaque_existential_1(v21);

    sub_216CCBB48();
    v15 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3648, &qword_217048248) + 36));
    sub_2167B7D58(v21, (v15 + 2));
    type metadata accessor for MusicEntityAnnotationWrapper();
    sub_216B4DA00(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
    OUTLINED_FUNCTION_42_0();
    *v15 = sub_217008CF4();
    v15[1] = v16;
    sub_216B4E33C(v10, a4, _s10LockupViewV7ContentVMa);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    _s18HighlightsProviderCMa(0);
    OUTLINED_FUNCTION_1_138();
    sub_216B4DA00(v18, v19);

    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

void *sub_216B4A83C()
{
  v0 = _s6LockupVMa(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9318();
  v4 = &v3[*(v1 + 68)];
  v5 = *v4;
  v6 = v4[1];
  sub_21700DF14();
  sub_216B4E2E4(v3, _s6LockupVMa);
  v7 = sub_216BE5CE8(v5, v6);

  return v7;
}

uint64_t sub_216B4A90C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = _s10LockupViewV7ContentVMa(0);
  v77 = *(v2 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v63 = (v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = v61 - v5;
  v7 = _s6LockupVMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3688, &qword_2170482B8);
  MEMORY[0x28223BE20](v10);
  v12 = v61 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3690, &qword_2170482C0);
  v66 = *(v68 - 1);
  MEMORY[0x28223BE20](v68);
  v14 = v61 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3698, &qword_2170482C8);
  MEMORY[0x28223BE20](v62);
  v16 = v61 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36A0, &qword_2170482D0);
  MEMORY[0x28223BE20](v78);
  v69 = v61 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36A8, &qword_2170482D8);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v61 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36B0, &unk_2170482E0);
  MEMORY[0x28223BE20](v70);
  v73 = v61 - v19;
  v76 = v1;
  sub_216DE9318();
  sub_216683A80(&v9[*(v7 + 32)], &v79, &qword_27CAB6DB0, &qword_217016C00);
  sub_216B4E2E4(v9, _s6LockupVMa);
  v65 = v14;
  v64 = v16;
  if (v80)
  {
    sub_2166A0F18(&v79, v81);
  }

  else
  {
    sub_216DE9318();
    sub_216683A80(&v9[*(v7 + 44)], v81, &qword_27CAB6DB0, &qword_217016C00);
    sub_216B4E2E4(v9, _s6LockupVMa);
    if (v80)
    {
      sub_216697664(&v79, &qword_27CAB6DB0, &qword_217016C00);
    }
  }

  v20 = v10[11];
  v21 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v12[v20], 1, 1, v21);
  v22 = v76;
  sub_216B4DFB0(v76, v6, _s10LockupViewV7ContentVMa);
  v23 = *(v77 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = swift_allocObject();
  sub_216B4E33C(v6, v25 + v24, _s10LockupViewV7ContentVMa);
  v26 = v22;
  v27 = v63;
  sub_216B4DFB0(v26, v63, _s10LockupViewV7ContentVMa);
  v77 = v23;
  v28 = swift_allocObject();
  v67 = v24;
  sub_216B4E33C(v27, v28 + v24, _s10LockupViewV7ContentVMa);
  v29 = v3;
  v30 = v10[12];
  *&v12[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v31 = &v12[v10[13]];
  *v31 = swift_getKeyPath();
  v31[40] = 0;
  v32 = v82;
  v33 = v81[1];
  *v12 = v81[0];
  *(v12 + 1) = v33;
  *(v12 + 4) = v32;
  *(v12 + 5) = sub_216B4DDB0;
  *(v12 + 6) = v25;
  *(v12 + 7) = sub_216B4DF98;
  *(v12 + 8) = v28;
  v34 = v65;
  sub_216F09968();
  sub_216697664(v12, &qword_27CAC3688, &qword_2170482B8);
  v35 = v64;
  v36 = v64 + *(v62 + 36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v38 = sub_217008B34();
  v39 = __swift_project_value_buffer(v38, qword_280E73A88);
  sub_216B4DFB0(v39, v36, MEMORY[0x277CDFBC8]);
  *(v36 + *(v37 + 36)) = 0;
  (*(v66 + 4))(v35, v34, v68);
  v40 = v69;
  v41 = sub_2167C5834(v35, v69, &qword_27CAC3698, &qword_2170482C8);
  v65 = v61;
  *(v40 + *(v78 + 36)) = xmmword_217026E20;
  MEMORY[0x28223BE20](v41);
  v64 = v60;
  v42 = v76;
  MEMORY[0x28223BE20](v43);
  v63 = v60;
  v68 = _s10LockupViewV7ContentVMa;
  sub_216B4DFB0(v42, v6, _s10LockupViewV7ContentVMa);
  v44 = v67;
  v45 = swift_allocObject();
  v66 = _s10LockupViewV7ContentVMa;
  sub_216B4E33C(v6, v45 + v44, _s10LockupViewV7ContentVMa);
  v61[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  v46 = type metadata accessor for ContextMenuPreview(0);
  v47 = sub_216B4E070();
  v48 = sub_2168AECC8(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0);
  v49 = sub_216B4DA00(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v60[2] = v48;
  v60[3] = v49;
  v60[0] = v46;
  v60[1] = v47;
  v62 = v29;
  v50 = v6;
  v51 = v71;
  sub_21700A394();

  sub_21673C110(v40);
  _s18HighlightViewModelCMa();
  sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
  v52 = sub_2170081B4();
  v53 = sub_217007D54();
  v54 = v73;
  (*(v72 + 32))(v73, v51, v74);
  v55 = (v54 + *(v70 + 36));
  *v55 = v53;
  v55[1] = v52;
  sub_216B4DFB0(v42, v50, v68);
  v56 = swift_allocObject();
  sub_216B4E33C(v50, v56 + v44, v66);
  v57 = v75;
  sub_2167C5834(v54, v75, &qword_27CAC36B0, &unk_2170482E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36D8, &qword_2170482F0);
  v59 = (v57 + *(result + 36));
  *v59 = sub_216B4E274;
  v59[1] = v56;
  v59[2] = 0;
  v59[3] = 0;
  return result;
}

uint64_t sub_216B4B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36E0, &qword_2170482F8);
  sub_216B4B628(a1, a2 + *(v8 + 44));
  _s10LockupViewV7ContentVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36E8, &qword_217048300) + 36));
  v10 = v46;
  *v9 = v45;
  v9[1] = v10;
  v9[2] = v47;
  v41 = sub_21700B3C4();
  v12 = v11;
  sub_216CCBB48();
  v13 = sub_216EB939C();
  (*(v5 + 8))(v7, v4);
  LOBYTE(v4) = v13 & 1;
  sub_21700B3B4();
  sub_2170083C4();
  v14 = v48;
  LOBYTE(v7) = v49;
  v15 = v50;
  v16 = v51;
  v18 = v52;
  v17 = v53;
  v19 = sub_217009CB4();
  sub_217007F24();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v44 = v7;
  v43 = v16;
  v42 = 0;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36F0, &qword_217048308) + 36);
  *v28 = v4;
  *(v28 + 8) = v14;
  *(v28 + 16) = v7;
  *(v28 + 24) = v15;
  *(v28 + 32) = v16;
  *(v28 + 40) = v18;
  *(v28 + 48) = v17;
  *(v28 + 56) = v19;
  *(v28 + 64) = v21;
  *(v28 + 72) = v23;
  *(v28 + 80) = v25;
  *(v28 + 88) = v27;
  *(v28 + 96) = 0;
  *(v28 + 104) = v41;
  *(v28 + 112) = v12;
  v29 = sub_217009CE4();
  sub_217007F24();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC36F8, &qword_217048310);
  v39 = a2 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_216B4B628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3700, &qword_217048318);
  MEMORY[0x28223BE20](v65);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = (&v57 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = _s6LockupVMa(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v58 = _s10LockupViewV11ArtworkViewVMa(0);
  MEMORY[0x28223BE20](v58);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3708, &qword_217048320);
  MEMORY[0x28223BE20](v59);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v25);
  v62 = &v57 - v26;
  sub_216DE9318();
  v27 = &v18[*(v13 + 64)];
  v61 = v11;
  sub_216683A80(v27, v11, &qword_27CAB6D60, &qword_217014E40);
  sub_216B4E2E4(v18, _s6LockupVMa);
  _s10LockupViewV7ContentVMa(0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  v64 = a1;
  v57 = v28;
  sub_2170082C4();
  v29 = *v68;
  sub_216DE9318();
  sub_216683A80(&v15[*(v13 + 56)], v8, &qword_27CAB6A00, &unk_217016B60);
  sub_216B4E2E4(v15, _s6LockupVMa);
  v30 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v30) == 1)
  {
    sub_216697664(v8, &qword_27CAB6A00, &unk_217016B60);
    v31 = 23;
  }

  else
  {
    v31 = *v8;
    sub_216B4E2E4(v8, type metadata accessor for ContentDescriptor);
  }

  if (v29 > 102.0)
  {
    v29 = 102.0;
  }

  LOBYTE(v68[0]) = v31;
  v32 = sub_216E41068(v68, 0);
  v34 = v33;
  sub_2167C5834(v61, v20, &qword_27CAB6D60, &qword_217014E40);
  v35 = v58;
  *&v20[*(v58 + 20)] = v29;
  v36 = &v20[*(v35 + 24)];
  *v36 = v32;
  v36[1] = v34;
  LOBYTE(v32) = sub_217009CD4();
  sub_217007F24();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_216B4E33C(v20, v24, _s10LockupViewV11ArtworkViewVMa);
  v45 = &v24[*(v59 + 36)];
  *v45 = v32;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = v62;
  sub_2167C5834(v24, v62, &qword_27CAC3708, &qword_217048320);
  v47 = sub_2170091A4();
  v48 = v60;
  *v60 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3710, &qword_217048328);
  sub_216B4BC4C(v48 + *(v49 + 44));
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v50 = (v48 + *(v65 + 36));
  v51 = v68[1];
  *v50 = v68[0];
  v50[1] = v51;
  v50[2] = v68[2];
  v52 = v63;
  sub_216683A80(v46, v63, &qword_27CAC3708, &qword_217048320);
  v53 = v66;
  sub_216683A80(v48, v66, &qword_27CAC3700, &qword_217048318);
  v54 = v67;
  sub_216683A80(v52, v67, &qword_27CAC3708, &qword_217048320);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3718, &qword_217048330);
  sub_216683A80(v53, v54 + *(v55 + 48), &qword_27CAC3700, &qword_217048318);
  sub_216697664(v48, &qword_27CAC3700, &qword_217048318);
  sub_216697664(v46, &qword_27CAC3708, &qword_217048320);
  sub_216697664(v53, &qword_27CAC3700, &qword_217048318);
  return sub_216697664(v52, &qword_27CAC3708, &qword_217048320);
}

uint64_t sub_216B4BC4C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = _s6LockupVMa(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = _s10LockupViewV15BadgedTitleViewVMa(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v38 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_216DE9318();
  v20 = &v13[v2[8]];
  v21 = *(v20 + 1);
  *&v22 = *v20;
  v37 = v22;
  sub_21700DF14();
  sub_216B4E2E4(v13, _s6LockupVMa);
  sub_216DE9318();
  v23 = &v10[v2[9]];
  v24 = *(v23 + 1);
  *&v25 = *v23;
  v36 = v25;
  sub_21700DF14();
  sub_216B4E2E4(v10, _s6LockupVMa);
  sub_216DE9318();
  LOBYTE(v10) = v7[v2[12]];
  sub_216B4E2E4(v7, _s6LockupVMa);
  sub_216DE9318();
  v26 = &v4[v2[17]];
  v28 = *v26;
  v27 = *(v26 + 1);
  sub_21700DF14();
  sub_216B4E2E4(v4, _s6LockupVMa);
  *&v30 = v36;
  *&v29 = v37;
  *(&v29 + 1) = v21;
  *(&v30 + 1) = v24;
  *v19 = v29;
  *(v19 + 1) = v30;
  v19[32] = v10;
  *(v19 + 5) = v28;
  *(v19 + 6) = v27;
  v31 = *(v15 + 40);
  *&v19[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v32 = v38;
  sub_216B4DFB0(v19, v38, _s10LockupViewV15BadgedTitleViewVMa);
  v33 = v39;
  sub_216B4DFB0(v32, v39, _s10LockupViewV15BadgedTitleViewVMa);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3720, &qword_217048370) + 48);
  *v34 = 0x4024000000000000;
  *(v34 + 8) = 0;
  sub_216B4E2E4(v19, _s10LockupViewV15BadgedTitleViewVMa);
  return sub_216B4E2E4(v32, _s10LockupViewV15BadgedTitleViewVMa);
}

uint64_t sub_216B4BF48@<X0>(uint64_t (**a2)()@<X8>)
{
  v34 = a2;
  v32 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v32);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s6LockupVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MenuConfiguration(0);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - v10;
  v30 = sub_2170067A4();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_216CCBB48();
  sub_216DE9318();
  _s18HighlightViewModelCMa();
  sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
  sub_2170081B4();
  sub_216921C48();

  swift_storeEnumTagMultiPayload();
  v16 = v28;
  sub_2168A89E4();

  sub_216B4E2E4(v3, type metadata accessor for MenuContext);
  sub_216B4E2E4(v6, _s6LockupVMa);
  v17 = *(v11 + 32);
  v19 = v29;
  v18 = v30;
  v17(v29, v15, v30);
  v20 = v16;
  v21 = v31;
  sub_216B4E33C(v20, v31, type metadata accessor for MenuConfiguration);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + *(v33 + 80) + v22) & ~*(v33 + 80);
  v24 = swift_allocObject();
  v17((v24 + v22), v19, v18);
  result = sub_216B4E33C(v21, v24 + v23, type metadata accessor for MenuConfiguration);
  v26 = v34;
  *v34 = sub_21680CDC8;
  v26[1] = v24;
  return result;
}

uint64_t sub_216B4C30C@<X0>(uint64_t a1@<X8>)
{
  v2 = _s6LockupVMa(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2170067A4();
  v17 = sub_216B4DA00(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_216CCBB48();
  sub_216DE9318();
  sub_216683A80(&v5[*(v3 + 40)], v13, &qword_27CAB6DB0, &qword_217016C00);
  sub_216B4E2E4(v5, _s6LockupVMa);
  LOBYTE(v5) = v14 != 0;
  sub_216697664(v13, &qword_27CAB6DB0, &qword_217016C00);
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[7];
  v8 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = v6[8];
  v10 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_2166A0F18(&v15, a1 + v6[6]);
  *(a1 + v6[5]) = v5;
  v11 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

uint64_t sub_216B4C4C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v28 = sub_2170075A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s6LockupVMa(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9318();
  sub_216683A80(&v13[*(v11 + 40)], v30, &qword_27CAB6DB0, &qword_217016C00);
  sub_216B4E2E4(v13, _s6LockupVMa);
  sub_216CCBB48();
  _s10LockupViewV7ContentVMa(0);
  v14 = sub_216C0C534(v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(v30, v9, v29, v5, v2, v23, v24, v25, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  sub_216697664(v2, &qword_27CAB6DE8, "dP\r");
  (*(v3 + 8))(v5, v28);
  sub_216697664(v29, &qword_27CAB7310, &unk_2170170F0);
  (*(v7 + 8))(v9, v6);
  return sub_216697664(v30, &qword_27CAB6DB0, &qword_217016C00);
}

uint64_t sub_216B4C7BC(uint64_t a1, void (*a2)(void))
{
  _s18HighlightViewModelCMa();
  sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
  sub_2170081B4();
  a2();
}

uint64_t sub_216B4C870@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v65 - v4;
  v6 = sub_21700C444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_217007474();
  v68 = *(v18 - 8);
  v69 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v67 = &v65 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v72 = *(v23 - 8);
  v73 = v23;
  MEMORY[0x28223BE20](v23);
  v71 = &v65 - v24;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3770, &unk_2170485A0);
  MEMORY[0x28223BE20](v66);
  v26 = &v65 - v25;
  sub_216683A80(v2, v14, &qword_27CAB6D60, &qword_217014E40);
  v27 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
  {
    sub_216697664(v14, &qword_27CAB6D60, &qword_217014E40);
    v28 = sub_21700C4B4();
    v29 = v17;
    v30 = 1;
  }

  else
  {
    v31 = sub_21700C4B4();
    v65 = v20;
    v32 = v5;
    v33 = v26;
    v34 = v6;
    v35 = v7;
    v36 = v2;
    v37 = v31;
    (*(*(v31 - 8) + 16))(v17, v14, v31);
    sub_216B4E2E4(v14, type metadata accessor for Artwork);
    v29 = v17;
    v30 = 0;
    v28 = v37;
    v2 = v36;
    v7 = v35;
    v6 = v34;
    v26 = v33;
    v5 = v32;
    v20 = v65;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  v38 = _s10LockupViewV11ArtworkViewVMa(0);
  sub_217007434();
  sub_216683A80(v2, v11, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
  {
    sub_216697664(v11, &qword_27CAB6D60, &qword_217014E40);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    v39 = v70;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_216697664(v5, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    (*(v7 + 16))(v5, &v11[*(v27 + 20)], v6);
    sub_216B4E2E4(v11, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    v39 = v70;
    (*(v7 + 32))(v70, v5, v6);
  }

  v40 = v67;
  sub_2170073E4();
  (*(v7 + 8))(v39, v6);
  v41 = v69;
  v42 = *(v68 + 8);
  v42(v20, v69);
  v43 = (v2 + *(v38 + 24));
  v44 = *v43;
  v45 = v43[1];
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v45;
  sub_2167B8890(v44, v45);
  sub_2167C505C();
  v47 = v71;
  sub_2170073F4();

  v42(v40, v41);
  v48 = &v26[*(v66 + 36)];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  v50 = &v48[*(v49 + 36)];
  v51 = *(sub_217008B44() + 20);
  v52 = *MEMORY[0x277CE0118];
  v53 = sub_217009294();
  (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
  __asm { FMOV            V0.2D, #5.0 }

  *v50 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v59 = qword_280E73AA0;
  v60 = byte_280E73AA8;
  v61 = qword_280E73AB0;
  v62 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930, &qword_21701A680) + 36)];
  sub_216B4DFB0(v50, v62, MEMORY[0x277CDFC08]);
  *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
  (*(v72 + 32))(v26, v47, v73);
  *v48 = v59;
  v48[8] = v60;
  *(v48 + 2) = v61;
  v63 = &v48[*(v49 + 40)];
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  sub_2167C5834(v26, v74, &qword_27CAC3770, &unk_2170485A0);
}

void *sub_216B4D05C@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_2170093C4();
  v11 = 1;
  sub_216B4D14C(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_216683A80(__dst, &v8, &qword_27CAC3768, &qword_217048530);
  sub_216697664(v13, &qword_27CAC3768, &qword_217048530);
  memcpy(&v10[7], __dst, 0xE0uLL);
  v5 = v11;
  KeyPath = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  result = memcpy((a2 + 17), v10, 0xE7uLL);
  *(a2 + 248) = KeyPath;
  *(a2 + 256) = 0;
  return result;
}

uint64_t sub_216B4D14C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v65 = sub_217008844();
  v3 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 32);
  sub_21700DF14();
  v9 = sub_217009184();
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_216B4DA00(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v71 = sub_217008CF4();
  if (v6)
  {
    v11 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v11 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v73[0] = v71;
      v73[1] = v10;
      v73[2] = v7;
      v73[3] = v6;
      LOWORD(v73[4]) = v8 & 1;
      v73[5] = 0;
      LOBYTE(v73[6]) = 0;
      v73[7] = v9;
      v66 = v73[6];
      v67 = v73[4];
      v77 = v71;
      v78 = v10;
      v68 = v10;
      v69 = v9;
      v70 = v7;
      v79 = v7;
      v80 = v6;
      LOWORD(v81) = v73[4];
      v82 = 0;
      LOBYTE(v83) = 0;
      v84 = v9;
      sub_21680DAEC(v73, v75);
      sub_21680DB48(&v77);
      goto LABEL_9;
    }

    v70 = 0;
    v71 = 0;
    v68 = 0;
    v6 = 0;
  }

  else
  {

    v70 = 0;
    v71 = 0;
    v68 = 0;
  }

  v66 = 0;
  v67 = 0;
  v69 = 0;
LABEL_9:
  v64 = sub_217009D44();
  KeyPath = swift_getKeyPath();
  v62 = sub_21700AD14();
  v61 = swift_getKeyPath();
  v12 = _s10LockupViewV15BadgedTitleViewVMa(0);
  sub_216C0C570(v12, v13, v14, v15, v16, v17, v18, v19, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  v20 = sub_217008834();
  v21 = *(v3 + 8);
  v21(v5, v65);
  v60 = swift_getKeyPath();
  v93 = 0;
  v22 = a1[3];
  if (v22)
  {
    v57 = a1[2];
    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  if (v20)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  v54 = v23;
  v56 = v22;
  sub_21700DF14();
  v55 = sub_217009E94();
  v53 = swift_getKeyPath();
  v52 = sub_21700AD34();
  v24 = swift_getKeyPath();
  sub_216C0C570(v24, v25, v26, v27, v28, v29, v30, v31, v47, v48, v49, v50, v24, v52, v53, v54, v55, v56, v57, v58);
  v32 = sub_217008834();
  v21(v5, v65);
  if (v32)
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  v48 = v33;
  v34 = swift_getKeyPath();
  v47 = v34;
  v92 = 0;
  _s18HighlightViewModelCMa();
  sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
  v35 = sub_217008CF4();
  v49 = v36;
  v50 = v35;
  v73[0] = v71;
  v73[1] = v68;
  v73[2] = v70;
  v73[3] = v6;
  v73[4] = v67;
  v73[5] = 0;
  v65 = v6;
  v73[6] = v66;
  v73[7] = v69;
  v73[8] = KeyPath;
  v73[9] = v64;
  v73[10] = v61;
  v73[11] = v62;
  v73[12] = v60;
  v73[13] = v23;
  LOBYTE(v73[14]) = 0;
  memcpy(v72, v73, 0x71uLL);
  v38 = v56;
  v37 = v57;
  v74[0] = v57;
  v74[1] = v56;
  v74[2] = 0;
  v39 = v58;
  v74[3] = v58;
  v41 = v52;
  v40 = v53;
  v74[4] = v53;
  v42 = v55;
  v74[5] = v55;
  v43 = v51;
  v74[6] = v51;
  v74[7] = v52;
  v74[8] = v34;
  v74[9] = v33;
  LOBYTE(v74[10]) = 0;
  memcpy(&v72[120], v74, 0x51uLL);
  v44 = v59;
  memcpy(v59, v72, 0xD0uLL);
  v45 = v49;
  v44[26] = v50;
  v44[27] = v45;
  sub_216683A80(v73, &v77, &qword_27CABF608, &unk_21705E0F0);
  sub_216683A80(v74, &v77, &qword_27CABF610, &qword_2170337E0);
  v75[0] = v37;
  v75[1] = v38;
  v75[2] = 0;
  v75[3] = v39;
  v75[4] = v40;
  v75[5] = v42;
  v75[6] = v43;
  v75[7] = v41;
  v75[8] = v47;
  v75[9] = v48;
  v76 = 0;
  sub_216697664(v75, &qword_27CABF610, &qword_2170337E0);
  v77 = v71;
  v78 = v68;
  v79 = v70;
  v80 = v65;
  v81 = v67;
  v82 = 0;
  v83 = v66;
  v84 = v69;
  v85 = KeyPath;
  v86 = v64;
  v87 = v61;
  v88 = v62;
  v89 = v60;
  v90 = v54;
  v91 = 0;
  return sub_216697664(&v77, &qword_27CABF608, &unk_21705E0F0);
}

uint64_t sub_216B4D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1;
  result = sub_2170091A4();
  v6 = result;
  if (v4 == 2 || (v2 & 1) == 0)
  {
    v7 = 0;
    KeyPath = 0;
    v8 = 0;
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v7 = sub_21700ADB4();
    if (qword_27CAB5DC0 != -1)
    {
      swift_once();
    }

    v8 = qword_27CAC3638;
    KeyPath = swift_getKeyPath();
    v10 = qword_27CAB5DC8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_27CAC3640;
    v12 = swift_getKeyPath();
  }

  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v8;
  *(a2 + 48) = v12;
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_216B4D7CC(uint64_t a1)
{
  _s18HighlightsProviderCMa(0);
  OUTLINED_FUNCTION_1_138();
  sub_216B4DA00(v2, v3);
  OUTLINED_FUNCTION_42_0();
  sub_217008CF4();
  return a1;
}

uint64_t sub_216B4D840@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216B4D7CC(*a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

unint64_t sub_216B4D8C0(uint64_t a1)
{
  result = sub_2168522A0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B4D8E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_216697664(v2, &qword_27CAB81D0, &unk_21701AFF0);
  qword_27CAC3638 = v4;
  return result;
}

uint64_t sub_216B4D9B8(uint64_t a1)
{
  result = sub_21700AC54();
  qword_27CAC3640 = result;
  return result;
}

uint64_t sub_216B4DA00(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_216B4DA6C(uint64_t a1)
{
  sub_216B4DB68(319);
  if (v1 <= 0x3F)
  {
    sub_216B4DC44(319);
    if (v2 <= 0x3F)
    {
      sub_216B4E74C(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21680D428(319);
        if (v4 <= 0x3F)
        {
          sub_2167D1C30(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216B4DB68(uint64_t a1)
{
  if (!qword_27CAC3660)
  {
    v4[0] = _s6LockupVMa(255);
    v4[1] = sub_216B4DA00(&qword_280E439E8, _s6LockupVMa);
    v4[2] = &off_28293B6A0;
    v4[3] = sub_216B4DA00(&qword_280E439D0, _s6LockupVMa);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_27CAC3660);
    }
  }
}

void sub_216B4DC44(uint64_t a1)
{
  if (!qword_27CAC3668)
  {
    _s18HighlightViewModelCMa();
    sub_216B4DA00(&qword_27CAC3670, _s18HighlightViewModelCMa);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC3668);
    }
  }
}

unint64_t sub_216B4DCD8()
{
  result = qword_27CAC3678;
  if (!qword_27CAC3678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3648, &qword_217048248);
    sub_216B4DA00(&qword_27CAC3680, _s10LockupViewV7ContentVMa);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3678);
  }

  return result;
}

uint64_t sub_216B4DDB0@<X0>(uint64_t a1@<X8>)
{
  v2 = _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216B4B364(v4, a1);
}

uint64_t objectdestroy_12Tm()
{
  _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_2166B8588(*(v3 + 8), *(v3 + 16));
  v4 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + v0[7];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v3 + v7);

  return swift_deallocObject();
}

uint64_t sub_216B4DFB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B4E01C()
{
  v0 = _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216B4C4C8();
}

unint64_t sub_216B4E070()
{
  result = qword_27CAC36B8;
  if (!qword_27CAC36B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC36A0, &qword_2170482D0);
    sub_216B4E0FC();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC36B8);
  }

  return result;
}

unint64_t sub_216B4E0FC()
{
  result = qword_27CAC36C0;
  if (!qword_27CAC36C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3698, &qword_2170482C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3688, &qword_2170482B8);
    type metadata accessor for ActionButtonListStyle(255);
    sub_2168AECC8(&qword_27CAC36C8, &qword_27CAC3688, &qword_2170482B8);
    sub_216B4DA00(&qword_27CAC36D0, type metadata accessor for ActionButtonListStyle);
    swift_getOpaqueTypeConformance2();
    sub_2168AECC8(&qword_280E2A810, &qword_27CAB8A90, &qword_21701ADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC36C0);
  }

  return result;
}

uint64_t sub_216B4E28C(void (*a1)(void))
{
  v2 = _s10LockupViewV7ContentVMa(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));
  return sub_216B4C7BC(v4, a1);
}

uint64_t sub_216B4E2E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B4E33C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t _s10LockupViewV21FavoriteIndicatorViewVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10LockupViewV21FavoriteIndicatorViewVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_216B4E580(uint64_t a1)
{
  sub_216688560(319, &qword_280E2A070, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_216688560(319, &qword_280E29DE0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_216B4E74C(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216B4E698(uint64_t a1)
{
  sub_216B4E74C(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_216B4E74C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216B4E7B0()
{
  result = qword_27CAC3748;
  if (!qword_27CAC3748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC36D8, &qword_2170482F0);
    sub_216B4E83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3748);
  }

  return result;
}

unint64_t sub_216B4E83C()
{
  result = qword_27CAC3750;
  if (!qword_27CAC3750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC36B0, &unk_2170482E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC36A0, &qword_2170482D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216B4E070();
    sub_2168AECC8(qword_280E2BAE8, &qword_27CAB8AA0, &qword_21701ADE0);
    sub_216B4DA00(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    sub_2168AECC8(&qword_27CAC3758, &qword_27CAC3760, qword_2170483D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3750);
  }

  return result;
}

unint64_t sub_216B4EA34()
{
  result = qword_27CAC3788;
  if (!qword_27CAC3788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3790, &qword_2170485E8);
    sub_2168AECC8(&qword_27CAC3798, &qword_27CAC37A0, &unk_2170485F0);
    sub_2168AECC8(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3788);
  }

  return result;
}

unint64_t sub_216B4EB18()
{
  result = qword_280E2AF58;
  if (!qword_280E2AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3770, &unk_2170485A0);
    sub_216B4EBD0();
    sub_2168AECC8(qword_280E382B8, &qword_27CAB7440, &unk_217016D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF58);
  }

  return result;
}

unint64_t sub_216B4EBD0()
{
  result = qword_280E2B070;
  if (!qword_280E2B070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC37A8, qword_217048600);
    sub_216B4EC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B070);
  }

  return result;
}

unint64_t sub_216B4EC5C()
{
  result = qword_280E2B338;
  if (!qword_280E2B338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8930, &qword_21701A680);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2168AECC8(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B338);
  }

  return result;
}

BOOL sub_216B4ED40(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8, qword_217046A70);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = sub_21700C384();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B4F560(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21669987C(v8, &qword_27CABB7F8, qword_217046A70);
    return 0;
  }

  (*(v11 + 32))(v14, v8, v9);
  if ((sub_21700C314() & 1) == 0 || !sub_216B4F284())
  {
    (*(v11 + 8))(v14, v9);
    return 0;
  }

  sub_216B4EF80(v5);
  (*(v11 + 8))(v14, v9);
  v15 = sub_217005EF4();
  v16 = __swift_getEnumTagSinglePayload(v5, 1, v15) != 1;
  sub_21669987C(v5, &qword_27CABA820, &unk_217018CE0);
  return v16;
}

uint64_t sub_216B4EF80@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90, &unk_21705E460);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_21700C324();
  if (!v12)
  {
    v11 = sub_21700C344();
  }

  v13 = v11;
  v14 = v12;
  v15 = sub_21700E4D4();
  sub_21700DFC4();

  sub_21700DF84();
  (*(v7 + 8))(v10, v5);
  if (v29)
  {
    v26 = 0x7D646E696B7BLL;
    v27 = 0xE600000000000000;
    v24 = 0x747369747261;
    v25 = 0xE600000000000000;
    sub_2167B2E14();
    v16 = OUTLINED_FUNCTION_0_165(&v26, &v24);
    v18 = v17;

    v28 = v16;
    v29 = v18;
    v26 = 2103732603;
    v27 = 0xE400000000000000;
    v24 = v13;
    v25 = v14;
    OUTLINED_FUNCTION_0_165(&v26, &v24);

    sub_217005ED4();

    v19 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v4, 1, v19) == 1)
    {
      sub_21669987C(v4, &qword_27CABA820, &unk_217018CE0);
      v20 = a1;
      v21 = 1;
    }

    else
    {
      (*(*(v19 - 8) + 32))(a1, v4, v19);
      v20 = a1;
      v21 = 0;
    }

    v22 = v19;
  }

  else
  {

    v22 = sub_217005EF4();
    v20 = a1;
    v21 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

BOOL sub_216B4F284()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90, &unk_21705E460);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C98, &unk_217051550);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = sub_21700E4D4();
  sub_21700DF64();

  sub_21700DFA4();
  (*(v5 + 8))(v7, v4);
  LODWORD(v8) = v16;
  v9 = sub_21700E4D4();
  sub_21700DFC4();

  sub_21700DF84();
  v10 = *(v1 + 8);
  v10(v3, v0);
  v11 = v17;
  v12 = sub_21700E4D4();
  sub_21700DFC4();

  sub_21700DF84();
  v10(v3, v0);
  v13 = v17;
  if (v8 == 1)
  {
    if (v11)
    {

      v14 = v13 != 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

uint64_t sub_216B4F560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8, qword_217046A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI24ClassicalArtistPresenterC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_216B4F5EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_216B4F62C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_216B4F674(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t ProcessDeepLinkAction.init(actionMetrics:url:referrer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_216697664(a3, &qword_27CABA820, &unk_217018CE0);
  sub_21700D284();
  OUTLINED_FUNCTION_9();
  (*(v7 + 32))(a4, a1);
  v8 = type metadata accessor for ProcessDeepLinkAction(0);
  v9 = v8[5];
  sub_217005EF4();
  OUTLINED_FUNCTION_9();
  (*(v10 + 32))(a4 + v9, a2);
  v11 = v8[6];
  v12 = type metadata accessor for ReferrerInfo(0);
  result = __swift_storeEnumTagSinglePayload(a4 + v11, 1, 1, v12);
  *(a4 + v8[7]) = 1;
  return result;
}

uint64_t ProcessDeepLinkAction.init(actionMetrics:url:referrerInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_21700D284();
  OUTLINED_FUNCTION_9();
  (*(v11 + 32))(a4, a1);
  v12 = type metadata accessor for ProcessDeepLinkAction(0);
  v13 = v12[5];
  sub_217005EF4();
  OUTLINED_FUNCTION_9();
  (*(v14 + 32))(a4 + v13, a2);
  v15 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_2_112();
  if (v16)
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
    OUTLINED_FUNCTION_2_112();
    if (!v16)
    {
      sub_216697664(a3, &qword_27CAB6FD0, &qword_21701D5F0);
    }
  }

  else
  {
    sub_216B4F8FC(a3, v10);
    OUTLINED_FUNCTION_5_82();
  }

  result = sub_21693FB5C(v10, a4 + v12[6]);
  *(a4 + v12[7]) = 1;
  return result;
}
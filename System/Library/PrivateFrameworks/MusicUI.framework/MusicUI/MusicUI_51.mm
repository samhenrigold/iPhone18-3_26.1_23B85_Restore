uint64_t sub_216BBBB40()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_216BBBD0C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_216BBBC5C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216BBBC5C()
{
  OUTLINED_FUNCTION_3_122();

  OUTLINED_FUNCTION_0_187();
  sub_216BBC598(v0, v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216BBBD0C()
{
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_0_187();
  sub_216BBC598(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_3_122();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216BBBDC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v31 = a2;
  v30 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216697664(v10, &qword_27CAB7088, &qword_217020CA0);
    type metadata accessor for MapAddItemsToPlaylistActionImplementation.Error(0, a4, a5, v18);
    swift_getWitnessTable();
    v19 = swift_allocError();
    v21 = v20;
    v22 = sub_217006924();
    (*(*(v22 - 8) + 16))(v21, a1, v22);
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
LABEL_3:
    *v31 = v19;
    return result;
  }

  (*(v12 + 32))(v17, v10, v11);
  v24 = *(v12 + 16);
  v24(v14, v17, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == *MEMORY[0x277D2A400])
  {
    (*(v12 + 8))(v17, v11);
    (*(v12 + 96))(v14, v11);
    v27 = sub_21700C1E4();
  }

  else if (v25 == *MEMORY[0x277D2A3B8])
  {
    (*(v12 + 8))(v17, v11);
    (*(v12 + 96))(v14, v11);
    v27 = sub_21700BA44();
  }

  else if (v25 == *MEMORY[0x277D2A440])
  {
    (*(v12 + 8))(v17, v11);
    (*(v12 + 96))(v14, v11);
    v27 = sub_21700C924();
  }

  else
  {
    if (v25 != *MEMORY[0x277D2A3F8])
    {
      type metadata accessor for MapAddItemsToPlaylistActionImplementation.Error(0, a4, a5, v26);
      swift_getWitnessTable();
      v19 = swift_allocError();
      v24(v28, v17, v11);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v29 = *(v12 + 8);
      v29(v17, v11);
      result = (v29)(v14, v11);
      goto LABEL_3;
    }

    (*(v12 + 8))(v17, v11);
    (*(v12 + 96))(v14, v11);
    v27 = sub_21700C084();
  }

  (*(*(v27 - 8) + 32))(v30, v14);
  type metadata accessor for PlaylistAddableItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216BBC2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  *v14 = v6;
  v14[1] = sub_2167AF644;

  return sub_216BBB180(a1, a2, a3, a4, a5, v13, v15, v16);
}

uint64_t sub_216BBC388(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BBC3C4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BBC448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216BBC4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216BBC520(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216BBC598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BBC5F0(uint64_t a1)
{
  result = sub_217006924();
  if (v2 <= 0x3F)
  {
    result = sub_2170067A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216BBC694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = v5;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v12 = Strong, , v12 != a1) || (v16 = swift_weakLoadStrong()) == 0 || (v17 = v16, , v17 != a2) || (v13 = swift_weakLoadStrong()) == 0)
  {
    sub_216E9C900(a1, a2);
    a5(v7);

    OUTLINED_FUNCTION_7_0();
    v13 = sub_216C0CD74();

    OUTLINED_FUNCTION_7_0();
    swift_weakAssign();
    swift_weakAssign();
    OUTLINED_FUNCTION_7_0();
    swift_weakAssign();
    OUTLINED_FUNCTION_7_0();
    *(v7 + *(v14 + 304) + 8) = a4;
    swift_unknownObjectWeakAssign();
  }

  return v13;
}

uint64_t sub_216BBC838(uint64_t a1)
{
  v2 = sub_21700DFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v6 = type metadata accessor for ReplayIntent(0);
  v11[3] = v6;
  v11[4] = sub_216BBD6A0(&qword_27CAC4BF0, type metadata accessor for ReplayIntent, &unk_217024584);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  *boxed_opaque_existential_1 = 0;
  *(boxed_opaque_existential_1 + 8) = 1;
  boxed_opaque_existential_1[2] = 0;
  *(boxed_opaque_existential_1 + 24) = 1;
  sub_216B19908(1, 0x2D796E612F31762FLL, 0xEE0079616C706572, boxed_opaque_existential_1 + *(v6 + 24));
  (*(v3 + 8))(v5, v2);
  v8 = sub_216CE06EC(v11, a1, 0, 0);
  sub_21669987C(v11, &qword_27CAC4BF8, &qword_21704F460);
  return v8;
}

uint64_t sub_216BBCA20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758, &qword_217020FC0);
  sub_2166D9530(&qword_27CABA760, &qword_27CABA758, &qword_217020FC0, &unk_2170390B0);
  v13 = v2;
  OUTLINED_FUNCTION_0_188(v2);
  v3 = *(v1 + 8);
  if (v3)
  {
    type metadata accessor for AppDestinationPageProviderBox();
    type metadata accessor for ObjectGraph(0);

    sub_21700E094();
    v4 = sub_216BBC694(v3, v15, 0, 0, sub_216C521A4);

    sub_216BBCC50(v1, v4, a1);
    v5 = OUTLINED_FUNCTION_0_188(v2);
    v6 = sub_217007D54();
    v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C00, &qword_21704F560) + 36));
    *v7 = v6;
    v7[1] = v5;
    OUTLINED_FUNCTION_0_188(v13);
    v8 = sub_217008684();
    v10 = v9;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C08, &unk_21704F568);
    v12 = (a1 + *(result + 36));
    *v12 = v4;
    v12[1] = v8;
    v12[2] = v10;
  }

  else
  {
    type metadata accessor for MusicStackAuthority(0);
    sub_216BBD6A0(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BBCC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v53 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150, &qword_21701C740);
  v45 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v44 = v39 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C10, &qword_21704F578);
  MEMORY[0x28223BE20](v52);
  v47 = v39 - v5;
  v6 = type metadata accessor for MappedReplayModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = v39 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C18, &qword_21704F580);
  MEMORY[0x28223BE20](v54);
  v11 = v39 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C20, &qword_21704F588);
  MEMORY[0x28223BE20](v49);
  v13 = v39 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C28, &qword_21704F590);
  MEMORY[0x28223BE20](v55);
  v51 = v39 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140, &qword_21701C730);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088, &qword_21702DA60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (v39 - v18);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758, &qword_217020FC0);
  sub_2166D9530(&qword_27CABA760, &qword_27CABA758, &qword_217020FC0, &unk_2170390B0);
  v41 = v20;
  v40 = v21;
  v39[1] = v22;
  sub_2170081B4();
  v23 = type metadata accessor for ReplayModel(0);
  v59 = v23;
  v24 = sub_216BBD6A0(&qword_27CAB6FA0, type metadata accessor for ReplayModel, &unk_217015560);
  v60 = v24;
  swift_getKeyPath();
  v57 = v23;
  v58 = v24;
  swift_getKeyPath();
  sub_217007DE4();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0, &qword_21702DAC0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v25) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v36 = v46;
      sub_216BBD6E8(v19, v46);
      sub_216BBD74C(v36, v42);
      sub_2170081B4();

      v37 = v47;
      sub_21687F49C();
      sub_216681B64(v37, v13, &qword_27CAC4C10, &qword_21704F578);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
      sub_216BBD5EC();
      v38 = v51;
      sub_217009554();
      sub_216681B64(v38, v11, &qword_27CAC4C28, &qword_21704F590);
      swift_storeEnumTagMultiPayload();
      sub_216BBD534();
      sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
      sub_217009554();
      sub_21669987C(v38, &qword_27CAC4C28, &qword_21704F590);
      sub_21669987C(v37, &qword_27CAC4C10, &qword_21704F578);
      return sub_216BBD7B0(v36);
    }

    v27 = v56;
    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v19;
      v29 = *v19;

      v30 = v44;
      sub_217007564();
      v31 = v45;
      (*(v45 + 16))(v11, v30, v27);
      swift_storeEnumTagMultiPayload();
      sub_216BBD534();
      sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
      sub_217009554();

      return (*(v31 + 8))(v30, v27);
    }
  }

  sub_217007514();
  v33 = v48;
  v34 = v50;
  (*(v48 + 16))(v13, v16, v50);
  swift_storeEnumTagMultiPayload();
  sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
  sub_216BBD5EC();
  v35 = v51;
  sub_217009554();
  sub_216681B64(v35, v11, &qword_27CAC4C28, &qword_21704F590);
  swift_storeEnumTagMultiPayload();
  sub_216BBD534();
  sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
  sub_217009554();
  sub_21669987C(v35, &qword_27CAC4C28, &qword_21704F590);
  return (*(v33 + 8))(v16, v34);
}

unint64_t sub_216BBD534()
{
  result = qword_27CAC4C30;
  if (!qword_27CAC4C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C28, &qword_21704F590);
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    sub_216BBD5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C30);
  }

  return result;
}

unint64_t sub_216BBD5EC()
{
  result = qword_27CAC4C38;
  if (!qword_27CAC4C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C10, &qword_21704F578);
    sub_216BBD6A0(&qword_27CAC4C40, type metadata accessor for ReplaySwiftMusicContentView, &unk_217020EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C38);
  }

  return result;
}

uint64_t sub_216BBD6A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216BBD6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedReplayModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BBD74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedReplayModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BBD7B0(uint64_t a1)
{
  v2 = type metadata accessor for MappedReplayModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216BBD80C()
{
  result = qword_27CAC4C48;
  if (!qword_27CAC4C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C08, &unk_21704F568);
    sub_216BBD8C4();
    sub_2166D9530(&qword_27CAC4C88, &qword_27CAC4C90, &unk_21704F610, &unk_217024D3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C48);
  }

  return result;
}

unint64_t sub_216BBD8C4()
{
  result = qword_27CAC4C50;
  if (!qword_27CAC4C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C00, &qword_21704F560);
    sub_216BBD97C();
    sub_2166D9530(&qword_27CAC4C78, &qword_27CAC4C80, &qword_21704F608, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C50);
  }

  return result;
}

unint64_t sub_216BBD97C()
{
  result = qword_27CAC4C58;
  if (!qword_27CAC4C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C60, &qword_21704F5F8);
    sub_216BBDA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C58);
  }

  return result;
}

unint64_t sub_216BBDA00()
{
  result = qword_27CAC4C68;
  if (!qword_27CAC4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C70, &qword_21704F600);
    sub_216BBD534();
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C68);
  }

  return result;
}

void sub_216BBDB00(uint64_t a1)
{
  sub_216BBDC14(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuContext(319);
    if (v2 <= 0x3F)
    {
      sub_2167B84AC(319);
      if (v3 <= 0x3F)
      {
        sub_216BC5268(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
        if (v4 <= 0x3F)
        {
          sub_2169109EC(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216BBDC14(uint64_t a1)
{
  if (!qword_280E458F0)
  {
    v4[0] = type metadata accessor for TrackLockup(255);
    v4[1] = sub_2166D3CEC(&qword_280E44FA0, type metadata accessor for TrackLockup);
    v4[2] = &off_28293B140;
    v4[3] = sub_2166D3CEC(&qword_280E44F88, type metadata accessor for TrackLockup);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E458F0);
    }
  }
}

__n128 sub_216BBDD0C@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v11 = *(v3 + 16);
  v12 = *v3;
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  if (a2)
  {
    v7 = [objc_opt_self() tertiaryLabelColor];
    v8 = sub_21700AC44();
  }

  else
  {
    v8 = a1;
  }

  v9 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v9;
  v14 = v6;
  sub_216683A80(v15, v13, &qword_27CAB7668, &unk_2170174F0);

  sub_216683A80(&v14, v13, &qword_27CAC5010, &qword_21704FE40);
  result = v12;
  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  *(a3 + 48) = v8;
  return result;
}

uint64_t sub_216BBDDE4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_8_1();
  v4 = type metadata accessor for TrackShelfLockupView(v3);
  v5 = (v1 + v4[6]);
  type metadata accessor for PlaybackPresenter(0);
  OUTLINED_FUNCTION_4_105();
  sub_2166D3CEC(v6, v7);
  OUTLINED_FUNCTION_2_101();
  *v5 = sub_217008CF4();
  v5[1] = v8;
  v9 = v4[7];
  *(v1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v10 = v1 + v4[8];
  *v10 = swift_getKeyPath();
  v10[40] = 0;
  *v1 = a1;
  type metadata accessor for MenuContext(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_216BBDEE4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v50 = v2;
  v3 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v48 = v4;
  MEMORY[0x28223BE20](v5);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrackShelfLockupView(0);
  v8 = v7 - 8;
  v41 = *(v7 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4CF8, &unk_217064CF0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D00, &qword_21704F770);
  OUTLINED_FUNCTION_1();
  v45 = v15;
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v44 = &v40 - v16;
  v17 = *v0;
  sub_2167B5BEC();
  v18 = *(v8 + 28);
  v19 = type metadata accessor for TrackShelfLockupContent(0);
  sub_216BC4DB0(v1 + v18, &v13[v19[6]], type metadata accessor for MenuContext);

  LOBYTE(v18) = sub_216BBE5AC();
  v20 = &v13[v19[8]];
  type metadata accessor for PlaybackPresenter(0);
  OUTLINED_FUNCTION_4_105();
  sub_2166D3CEC(v21, v22);
  *v20 = sub_217008CF4();
  v20[1] = v23;
  v24 = v19[9];
  *&v13[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  *(v13 + 5) = v17;
  v13[v19[7]] = v18 & 1;
  v49 = v3;
  v51[3] = v3;
  v51[4] = sub_2166D3CEC(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(v51);
  v43 = v17;
  sub_216CCB1E8();
  v25 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D08, &qword_21704F7B0) + 36)];
  sub_2167B7D58(v51, (v25 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D3CEC(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  OUTLINED_FUNCTION_42_0();
  *v25 = sub_217008CF4();
  v25[1] = v26;
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D10, &unk_21704F7B8) + 36)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90, &qword_21701ADD0);
  sub_217008C64();
  if (qword_27CAB5938 != -1)
  {
    swift_once();
  }

  v29 = sub_217008B34();
  v30 = __swift_project_value_buffer(v29, qword_27CB22830);
  v31 = sub_216BC4DB0(v30, v27, MEMORY[0x277CDFBC8]);
  v40 = &v40;
  *(v27 + *(v28 + 36)) = 0;
  *&v13[*(v42 + 36)] = xmmword_21704F620;
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  sub_216BC4DB0(v1, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackShelfLockupView);
  v33 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v34 = swift_allocObject();
  sub_216BC50C4(v10, v34 + v33, type metadata accessor for TrackShelfLockupView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0, &qword_21701ADE0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216BC4E70();
  sub_21680DFBC(qword_280E2BAE8, &qword_27CAB8AA0);
  sub_2166D3CEC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v35 = v44;
  sub_21700A394();

  sub_2167FDB84(v13, &qword_27CAC4CF8);
  v36 = v47;
  sub_216CCB1E8();
  v37 = v50;
  sub_216E30D08();
  (*(v48 + 8))(v36, v49);
  (*(v45 + 8))(v35, v46);
  KeyPath = swift_getKeyPath();
  v39 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D38, &qword_21704F7F8) + 36);
  *v39 = KeyPath;
  *(v39 + 8) = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216BBE5AC()
{
  v1 = sub_2170067A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for TrackShelfLockupView(0) + 24)))
  {

    sub_216CCB1E8();
    v5 = sub_216C6D880(v4);

    (*(v2 + 8))(v4, v1);
    return (v5 & 1) == 0;
  }

  else
  {
    type metadata accessor for PlaybackPresenter(0);
    sub_2166D3CEC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BBE714@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TrackLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCB1E8();
  sub_216DE90F8();
  swift_storeEnumTagMultiPayload();
  sub_2168A9598();
  sub_216BC5070(v2, type metadata accessor for MenuContext);
  sub_216BC5070(v5, type metadata accessor for TrackLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216BC50C4(v10, v25, type metadata accessor for MenuConfiguration);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216BC50C4(v19, v22 + v21, type metadata accessor for MenuConfiguration);
  v24 = v28;
  *v28 = sub_216BC5120;
  v24[1] = v22;
  return result;
}

uint64_t sub_216BBEA4C()
{
  v0 = type metadata accessor for TrackLockup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_2170067A4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216CCB1E8();
  sub_216DE90F8();
  sub_216683A80(&v3[*(v1 + 32)], v9, &qword_27CAB6DB0, &qword_217016C00);
  sub_216BC5070(v3, type metadata accessor for TrackLockup);
  return sub_2167BA710(v6, v9);
}

uint64_t sub_216BBEB74()
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
  v10 = type metadata accessor for TrackLockup(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE90F8();
  sub_216683A80(&v13[*(v11 + 32)], v30, &qword_27CAB6DB0, &qword_217016C00);
  sub_216BC5070(v13, type metadata accessor for TrackLockup);
  sub_216CCB1E8();
  type metadata accessor for TrackShelfLockupView(0);
  v14 = sub_216C0C534(v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(v30, v9, v29, v5, v2, v23, v24, v25, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0], v30[1], v30[2], v30[3], v30[4]);
  sub_2167FDB84(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v28);
  sub_2167FDB84(v29, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_2167FDB84(v30, &qword_27CAB6DB0);
}

uint64_t sub_216BBEEB8(uint64_t a1)
{
  result = sub_2166D3CEC(qword_280E3AE78, type metadata accessor for TrackShelfLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BBEF10@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v63 = sub_217009314();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TrackLockup(0) - 8;
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2170099D4();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D68, &qword_21704F888);
  MEMORY[0x28223BE20](v51);
  v7 = &v47 - v6;
  v8 = type metadata accessor for TrackShelfLockupContent(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D70, &qword_21704F890);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v47 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D78, &qword_21704F898);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D80, &qword_21704F8A0);
  v19 = *(v18 - 8);
  v53 = v18;
  v54 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D88, &qword_21704F8A8);
  MEMORY[0x28223BE20](v52);
  v50 = &v47 - v22;
  v48 = v1;
  sub_216683A80(v1, v14, &qword_27CAB6DB0, &qword_217016C00);
  v23 = v12[13];
  v24 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v14 + v23, 1, 1, v24);
  sub_216BC4DB0(v1, v10, type metadata accessor for TrackShelfLockupContent);
  v25 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v26 = swift_allocObject();
  sub_216BC50C4(v10, v26 + v25, type metadata accessor for TrackShelfLockupContent);
  v27 = v12[14];
  *(v14 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v28 = v14 + v12[15];
  *v28 = swift_getKeyPath();
  v28[40] = 0;
  v14[5] = sub_216BC5534;
  v14[6] = v26;
  v14[7] = 0;
  v14[8] = 0;
  sub_216F09984();
  sub_2167FDB84(v14, &qword_27CAC4D70);
  v29 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D90, &unk_21704F8B0) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8, &qword_2170454A0);
  sub_217008C54();
  *v29 = 0x4043000000000000;
  v29[8] = 0;
  v30 = sub_21700B3D4();
  v32 = v31;
  v33 = &v17[*(v15 + 36)];
  sub_216BBF9A8(v7);
  sub_216BC5594();
  sub_21700A8B4();
  sub_2167FDB84(v7, &qword_27CAC4D68);
  v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DA8, &unk_21704F8C0) + 36)];
  *v34 = v30;
  v34[1] = v32;
  v35 = v55;
  sub_2170099C4();
  v36 = sub_216BC5670();
  sub_21700A784();
  (*(v56 + 8))(v35, v57);
  sub_2167FDB84(v17, &qword_27CAC4D78);
  v37 = v58;
  sub_216DE90F8();
  v38 = (v37 + *(v59 + 40));
  v40 = *v38;
  v39 = v38[1];
  sub_21700DF14();
  sub_216BC5070(v37, type metadata accessor for TrackLockup);
  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v39)
  {
    v42 = v39;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  v66 = v41;
  v67 = v42;
  v64 = v15;
  v65 = v36;
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v43 = v50;
  v44 = v53;
  sub_21700A6B4();

  (*(v54 + 8))(v21, v44);
  v45 = v60;
  sub_2170092F4();
  sub_2170089A4();
  (*(v61 + 8))(v45, v63);
  return sub_2167FDB84(v43, &qword_27CAC4D88);
}

uint64_t sub_216BBF650()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DD0, &qword_21705DFA0);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - v1;
  sub_216BBF718(&v4 - v1);
  sub_216BC58A0();
  sub_21700A8B4();
  return sub_2167FDB84(v2, &qword_27CAC4DD0);
}

uint64_t sub_216BBF718@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DF8, &qword_21704F8D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DE8, &qword_21704F8D0);
  MEMORY[0x28223BE20](v6);
  v8 = &__src[-v7];
  *v5 = sub_2170091A4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E10, &qword_21704F8E8);
  sub_216BBFCA0(v1, &v5[*(v9 + 44)]);
  v10 = [objc_opt_self() defaultMetrics];
  [v10 scaledValueForValue_];

  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, v8, &qword_27CAC4DF8, &qword_21704F8D8);
  memcpy(&v8[*(v6 + 36)], __src, 0x70uLL);
  v11 = sub_21700B3C4();
  MEMORY[0x28223BE20](v11);
  sub_216CB73E4(v12, v13, sub_216BC5A10, a1);
  return sub_2167FDB84(v8, &qword_27CAC4DE8);
}

uint64_t sub_216BBF9A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for TrackLockup(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  sub_216CCB1E8();
  sub_216DE90F8();
  sub_216683A80(&v15[*(v10 + 128)], v8, &qword_27CAB6A00, &unk_217016B60);
  sub_216BC5070(v15, type metadata accessor for TrackLockup);
  v16 = type metadata accessor for TrackShelfLockupContent(0);
  sub_216BC4DB0(v1 + *(v16 + 24), v5, type metadata accessor for MenuContext);
  sub_216DE90F8();
  v17 = &v12[*(v10 + 120)];
  v19 = *v17;
  v18 = *(v17 + 1);
  sub_21700DF14();
  sub_216BC5070(v12, type metadata accessor for TrackLockup);
  v20 = a1 + *(type metadata accessor for ContextMenuButton(0) + 20);
  sub_216683A80(v8, v20, &qword_27CAB6A00, &unk_217016B60);
  v21 = type metadata accessor for MenuConfiguration(0);
  sub_216BC4DB0(v5, v20 + v21[5], type metadata accessor for MenuContext);
  v22 = (v20 + v21[6]);
  *v22 = v19;
  v22[1] = v18;
  *(v20 + v21[7]) = 0;
  v23 = v20 + v21[8];
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  sub_216BC5070(v5, type metadata accessor for MenuContext);
  sub_2167FDB84(v8, &qword_27CAB6A00);
  v24 = (v20 + v21[9]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  LOBYTE(v18) = sub_217009CD4();
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D68, &qword_21704F888);
  v34 = a1 + *(result + 36);
  *v34 = v18;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_216BBFCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E18, &qword_21704F8F0);
  MEMORY[0x28223BE20](v89);
  v86 = &v77 - v3;
  v4 = type metadata accessor for PrimaryTextView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v77 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E20, &qword_21704F8F8);
  MEMORY[0x28223BE20](v82);
  v78 = &v77 - v8;
  v80 = type metadata accessor for TrackLockup(0);
  MEMORY[0x28223BE20](v80);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E28, &qword_21704F900);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v92 = &v77 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E30, &qword_21704F908);
  v84 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v81 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v77 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E38, &qword_21704F910);
  MEMORY[0x28223BE20](v88);
  v18 = &v77 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E40, &qword_21704F918);
  MEMORY[0x28223BE20](v90);
  v20 = &v77 - v19;
  v21 = sub_217008844();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E48, &qword_21704F920);
  MEMORY[0x28223BE20](v28 - 8);
  v94 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  v33 = type metadata accessor for TrackShelfLockupContent(0);
  v34 = a1;
  sub_216C0C570(v33, v35, v36, v37, v38, v39, v40, v41, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  (*(v22 + 104))(v24, *MEMORY[0x277CDF9A8], v21);
  sub_2166D3CEC(&qword_27CABA188, MEMORY[0x277CDFA28]);
  LOBYTE(a1) = sub_21700E464();
  v42 = *(v22 + 8);
  v42(v24, v21);
  v42(v27, v21);
  v96 = v32;
  if (a1)
  {
    v77 = v18;
    v43 = v87;
    sub_216BC1170(v87);
    v44 = v79;
    sub_216DE90F8();
    v45 = *(v44 + *(v80 + 72) + 8);
    sub_216BC5070(v44, type metadata accessor for TrackLockup);
    if (v45)
    {
      v46 = v78;
      sub_216BC0E28(v78);
      v47 = v92;
      sub_2167C5834(v46, v92, &qword_27CAC4E20, &qword_21704F8F8);
      v48 = 0;
    }

    else
    {
      v48 = 1;
      v47 = v92;
    }

    __swift_storeEnumTagSinglePayload(v47, v48, 1, v82);
    v50 = v93;
    sub_216BC1A40(v93);
    v51 = v84;
    v82 = v34;
    v52 = *(v84 + 16);
    v53 = v81;
    v54 = v91;
    v52(v81, v43, v91);
    v55 = v83;
    sub_216683A80(v47, v83, &qword_27CAC4E28, &qword_21704F900);
    v56 = v50;
    v57 = v85;
    sub_216BC4DB0(v56, v85, type metadata accessor for PrimaryTextView);
    v58 = v86;
    v52(v86, v53, v54);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E70, &qword_21704F938);
    sub_216683A80(v55, v58 + *(v59 + 48), &qword_27CAC4E28, &qword_21704F900);
    sub_216BC4DB0(v57, v58 + *(v59 + 64), type metadata accessor for PrimaryTextView);
    sub_216BC5070(v57, type metadata accessor for PrimaryTextView);
    sub_2167FDB84(v55, &qword_27CAC4E28);
    v60 = *(v51 + 8);
    v61 = v53;
    v62 = v91;
    v60(v61, v91);
    sub_216683A80(v58, v77, &qword_27CAC4E18, &qword_21704F8F0);
    swift_storeEnumTagMultiPayload();
    sub_21680DFBC(&qword_27CAC4E58, &qword_27CAC4E40);
    sub_21680DFBC(&qword_27CAC4E60, &qword_27CAC4E18);
    v32 = v96;
    sub_217009554();
    sub_2167FDB84(v58, &qword_27CAC4E18);
    sub_216BC5070(v93, type metadata accessor for PrimaryTextView);
    sub_2167FDB84(v92, &qword_27CAC4E28);
    v60(v87, v62);
    v34 = v82;
  }

  else
  {
    *v20 = sub_2170093C4();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E50, &qword_21704F928);
    sub_216BC0784(&v20[*(v49 + 44)]);
    sub_216683A80(v20, v18, &qword_27CAC4E40, &qword_21704F918);
    swift_storeEnumTagMultiPayload();
    sub_21680DFBC(&qword_27CAC4E58, &qword_27CAC4E40);
    sub_21680DFBC(&qword_27CAC4E60, &qword_27CAC4E18);
    sub_217009554();
    sub_2167FDB84(v20, &qword_27CAC4E40);
  }

  v63 = *(v34 + 40);
  swift_retain_n();
  sub_21700B3B4();
  sub_2170083C4();
  v92 = v102;
  v93 = v100;
  v64 = v104;
  v65 = v105;
  v99 = 1;
  v98 = v101;
  v97 = v103;
  v66 = v94;
  sub_216683A80(v32, v94, &qword_27CAC4E48, &qword_21704F920);
  v67 = v99;
  v68 = v98;
  v69 = v97;
  v70 = v95;
  sub_216683A80(v66, v95, &qword_27CAC4E48, &qword_21704F920);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E68, &qword_21704F930);
  v72 = v70 + v71[12];
  *v72 = 0x4024000000000000;
  *(v72 + 8) = 0;
  v73 = v70 + v71[16];
  *v73 = v63;
  *(v73 + 8) = sub_216BC5A38;
  *(v73 + 16) = v63;
  *(v73 + 24) = 0;
  v74 = v70 + v71[20];
  *v74 = 0;
  *(v74 + 8) = v67;
  v75 = v92;
  *(v74 + 16) = v93;
  *(v74 + 24) = v68;
  *(v74 + 32) = v75;
  *(v74 + 40) = v69;
  *(v74 + 48) = v64;
  *(v74 + 56) = v65;

  sub_2167759EC(sub_216BC5A38, v63);
  sub_2167FDB84(v96, &qword_27CAC4E48);

  sub_2166B8588(sub_216BC5A38, v63);
  return sub_2167FDB84(v66, &qword_27CAC4E48);
}

uint64_t sub_216BC0784@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4EE0, &qword_21704F9F8);
  MEMORY[0x28223BE20](v59);
  v60 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4EE8, &unk_21704FA00);
  MEMORY[0x28223BE20](v57);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v50 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v53);
  v9 = &v50 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E20, &qword_21704F8F8);
  MEMORY[0x28223BE20](v52);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4EF0, &qword_21704FA10);
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for TrackLockup(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4EF8, &qword_21704FA18);
  MEMORY[0x28223BE20](v19 - 8);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  sub_216DE90F8();
  v24 = *&v18[*(v16 + 80) + 8];
  sub_216BC5070(v18, type metadata accessor for TrackLockup);
  if (!v24)
  {
    v28 = 1;
    goto LABEL_5;
  }

  sub_216BC0E28(v11);
  v25 = *MEMORY[0x277CDF988];
  v26 = sub_217008844();
  (*(*(v26 - 8) + 104))(v9, v25, v26);
  sub_2166D3CEC(&qword_280E2B340, MEMORY[0x277CDFA28]);
  result = sub_21700E494();
  if (result)
  {
    sub_216BC5E34();
    sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_2167FDB84(v9, &qword_27CAB75D0);
    sub_2167FDB84(v11, &qword_27CAC4E20);
    (*(v51 + 32))(v23, v14, v12);
    v28 = 0;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v23, v28, 1, v12);
    v29 = v58;
    sub_216BC1170(v58);
    v30 = sub_217009C94();
    v54 = v23;
    v31 = v30;
    sub_217007F24();
    v32 = v29 + *(v57 + 36);
    *v32 = v31;
    *(v32 + 8) = v33;
    *(v32 + 16) = v34;
    *(v32 + 24) = v35;
    *(v32 + 32) = v36;
    *(v32 + 40) = 0;
    sub_216BC1A40(v4);
    v37 = sub_217009CA4();
    sub_217007F24();
    v38 = &v4[*(v59 + 36)];
    *v38 = v37;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    v43 = v56;
    sub_216683A80(v23, v56, &qword_27CAC4EF8, &qword_21704FA18);
    v44 = v55;
    sub_216683A80(v29, v55, &qword_27CAC4EE8, &unk_21704FA00);
    v45 = v60;
    sub_216683A80(v4, v60, &qword_27CAC4EE0, &qword_21704F9F8);
    v46 = v4;
    v47 = v44;
    v48 = v61;
    sub_216683A80(v43, v61, &qword_27CAC4EF8, &qword_21704FA18);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F00, &unk_21704FA20);
    sub_216683A80(v47, v48 + *(v49 + 48), &qword_27CAC4EE8, &unk_21704FA00);
    sub_216683A80(v45, v48 + *(v49 + 64), &qword_27CAC4EE0, &qword_21704F9F8);
    sub_2167FDB84(v46, &qword_27CAC4EE0);
    sub_2167FDB84(v29, &qword_27CAC4EE8);
    sub_2167FDB84(v54, &qword_27CAC4EF8);
    sub_2167FDB84(v45, &qword_27CAC4EE0);
    sub_2167FDB84(v47, &qword_27CAC4EE8);
    return sub_2167FDB84(v43, &qword_27CAC4EF8);
  }

  __break(1u);
  return result;
}

double sub_216BC0E28@<D0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for TrackLockup(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF98, &qword_21702D340);
  MEMORY[0x28223BE20](v22);
  v9 = &v22 - v8;
  sub_216DE90F8();
  v10 = &v4[*(v2 + 80)];
  v11 = *v10;
  v12 = v10[1];
  sub_21700DF14();
  sub_216BC5070(v4, type metadata accessor for TrackLockup);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = 0;
  }

  if (qword_27CAB5ED0 != -1)
  {
    swift_once();
  }

  v15 = qword_27CAC4C98;
  KeyPath = swift_getKeyPath();
  *&v26 = v13;
  *(&v26 + 1) = v12;
  *&v27 = 0;
  *(&v27 + 1) = v14;
  *&v28 = KeyPath;
  *(&v28 + 1) = v15;

  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v13, v12, 0, v14);

  if (qword_27CAB5ED8 != -1)
  {
    swift_once();
  }

  v17 = qword_27CAC4CA0;
  (*(v23 + 32))(v9, v7, v24);
  *&v9[*(v22 + 36)] = v17;

  sub_21700B3B4();
  sub_2170083C4();
  v18 = v25;
  sub_2167C5834(v9, v25, &qword_27CABDF98, &qword_21702D340);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E20, &qword_21704F8F8) + 36));
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  result = *&v28;
  v19[2] = v28;
  return result;
}

uint64_t sub_216BC1170@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v82 = sub_21700D864();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21700D8E4();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TrackLockup(0);
  MEMORY[0x28223BE20](v76);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2170067A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E78, &qword_21704F978);
  MEMORY[0x28223BE20](v72);
  v13 = &v69 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E80, &qword_21704F980);
  MEMORY[0x28223BE20](v73);
  v74 = &v69 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E88, &qword_21704F988);
  MEMORY[0x28223BE20](v77);
  v16 = &v69 - v15;
  sub_216DE90F8();
  _s7MusicUI18ArtworkContentViewVMa_1(0);
  *&v86[0] = 0x4048000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v71 = sub_21700B3B4();
  v70 = v17;
  v18 = *(v1 + *(type metadata accessor for TrackShelfLockupContent(0) + 32));
  if (v18)
  {

    sub_216CCB1E8();
    (*(v6 + 16))(v8, v11, v5);
    v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v6 + 32))(v20 + v19, v8, v5);
    type metadata accessor for PlaybackPresenter(0);
    sub_2166D3CEC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

    v21 = sub_217008684();
    v23 = v22;
    (*(v6 + 8))(v11, v5);
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E90, &unk_21704F990) + 36)];
    *v24 = sub_21680CE98;
    *(v24 + 1) = v20;
    v24[16] = 0;
    *(v24 + 3) = v21;
    *(v24 + 4) = v23;
    v25 = v70;
    *(v24 + 5) = v71;
    *(v24 + 6) = v25;
    v26 = &v13[*(v72 + 36)];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
    v28 = &v26[*(v27 + 36)];
    v29 = *(sub_217008B44() + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = sub_217009294();
    (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
    __asm { FMOV            V0.2D, #5.0 }

    *v28 = _Q0;
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v37 = qword_280E73AA0;
    v38 = byte_280E73AA8;
    v39 = qword_280E73AB0;
    v40 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E98, &unk_21704F9A0) + 36)];
    sub_216BC4DB0(v28, v40, MEMORY[0x277CDFC08]);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
    *v26 = v37;
    v26[8] = v38;
    *(v26 + 2) = v39;
    v41 = &v26[*(v27 + 40)];
    *v41 = swift_getKeyPath();
    v41[8] = 0;

    v42 = sub_217009CD4();
    v43 = v75;
    sub_216DE90F8();
    sub_216BC5070(v43, type metadata accessor for TrackLockup);
    sub_217007F24();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v74;
    sub_2167C5834(v13, v74, &qword_27CAC4E78, &qword_21704F978);
    v53 = v52 + *(v73 + 36);
    *v53 = v42;
    *(v53 + 8) = v45;
    *(v53 + 16) = v47;
    *(v53 + 24) = v49;
    *(v53 + 32) = v51;
    *(v53 + 40) = 0;
    v54 = sub_217009CE4();
    sub_217007F24();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_2167C5834(v52, v16, &qword_27CAC4E80, &qword_21704F980);
    v63 = v78;
    v64 = &v16[*(v77 + 36)];
    *v64 = v54;
    *(v64 + 1) = v56;
    *(v64 + 2) = v58;
    *(v64 + 3) = v60;
    *(v64 + 4) = v62;
    v64[40] = 0;
    v65 = v80;
    v66 = v82;
    (*(v80 + 104))(v63, *MEMORY[0x277D22060], v82);
    memset(v86, 0, 32);
    memset(v85, 0, sizeof(v85));
    v67 = v79;
    sub_21700D874();
    sub_2167FDB84(v85, &unk_27CABF7A0);
    sub_2167FDB84(v86, &unk_27CABF7A0);
    (*(v65 + 8))(v63, v66);
    sub_216BC5AD0(&qword_27CAC4EA0, &qword_27CAC4E88, &qword_21704F988, sub_216BC5AA0);
    sub_21700A204();
    (*(v81 + 8))(v67, v83);
    return sub_2167FDB84(v16, &qword_27CAC4E88);
  }

  else
  {
    type metadata accessor for PlaybackPresenter(0);
    sub_2166D3CEC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BC1A40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TrackLockup(0);
  MEMORY[0x28223BE20](v3);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  v57 = v1;
  sub_216DE90F8();
  v23 = &v22[v3[7]];
  v24 = *(v23 + 1);
  *&v55 = *v23;
  *(&v55 + 1) = v24;
  sub_21700DF14();
  sub_216BC5070(v22, type metadata accessor for TrackLockup);
  sub_216DE90F8();
  v25 = &v19[v3[8]];
  v26 = *(v25 + 1);
  *&v54 = *v25;
  *(&v54 + 1) = v26;
  sub_21700DF14();
  sub_216BC5070(v19, type metadata accessor for TrackLockup);
  sub_216DE90F8();
  v27 = *&v16[v3[9]];
  sub_21700DF14();
  sub_216BC5070(v16, type metadata accessor for TrackLockup);
  if (v27)
  {
    v28 = sub_216B80C28(v27);
    v52 = v29;
    v53 = v28;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  sub_216DE90F8();
  v30 = &v13[v3[10]];
  v32 = *v30;
  v31 = v30[1];
  v33 = *v30;
  v50 = v30[2];
  v51 = v31;
  sub_216BC5A40(v33, v31, v50);
  sub_216BC5070(v13, type metadata accessor for TrackLockup);
  sub_216DE90F8();
  v34 = *&v10[v3[11]];
  sub_21700DF14();
  sub_216BC5070(v10, type metadata accessor for TrackLockup);
  if (v34)
  {
    v35 = sub_216B80C28(v34);
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  sub_216DE90F8();
  v38 = v7[v3[15]];
  sub_216BC5070(v7, type metadata accessor for TrackLockup);
  v39 = type metadata accessor for TrackShelfLockupContent(0);
  v40 = v56;
  v41 = *(v57 + *(v39 + 28));
  sub_216DE90F8();
  v42 = *(v40 + v3[14]);
  sub_216BC5070(v40, type metadata accessor for TrackLockup);
  v43 = v42 >> 13 == 3 || v42 >> 13 == 4 && v42 == 0x8000;
  v44 = v54;
  *a1 = v55;
  *(a1 + 16) = v44;
  v45 = v52;
  *(a1 + 32) = v53;
  *(a1 + 40) = v45;
  v46 = v50;
  v47 = v51;
  *(a1 + 48) = v32;
  *(a1 + 56) = v47;
  *(a1 + 64) = v46;
  *(a1 + 72) = v35;
  *(a1 + 80) = v37;
  *(a1 + 88) = v38;
  *(a1 + 89) = 0;
  *(a1 + 90) = v41;
  *(a1 + 91) = v43;
  v48 = *(type metadata accessor for PrimaryTextView(0) + 52);
  *(a1 + v48) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  return swift_storeEnumTagMultiPayload();
}

double sub_216BC1DE4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_216CCB1E8();
  v6 = sub_216EB939C();
  (*(v3 + 8))(v5, v2);
  sub_21700B3B4();
  sub_2170083C4();
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  *a1 = v6 & 1;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v17;
  result = -16.0;
  *(a1 + 56) = xmmword_21704F630;
  return result;
}

char *sub_216BC1F34()
{
  v0 = sub_2170067A4();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CCB1E8();
  type metadata accessor for GenericItemStateObserver(0);
  swift_allocObject();
  return sub_216EBA37C(v2);
}

uint64_t sub_216BC1FC4@<X0>(uint64_t x8_0@<X8>)
{
  type metadata accessor for GenericItemStateObserver(0);
  sub_2166D3CEC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
  sub_2170081B4();
  sub_216EB9284(x8_0);

  type metadata accessor for DownloadStatusIndicator(0);
  sub_2167CD8D8();
  sub_2170082B4();
  return sub_2170082B4();
}

uint64_t sub_216BC20E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = sub_21700D8E4();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_2170091A4();
  v10 = 0;
  KeyPath = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v30 = 1;
  if (a1)
  {
    v10 = sub_21700ADB4();
    if (qword_27CAB5F18 != -1)
    {
      swift_once();
    }

    v12 = qword_27CAC4CE0;
    KeyPath = swift_getKeyPath();
    v15 = qword_27CAB5F20;

    if (v15 != -1)
    {
      swift_once();
    }

    v14 = qword_27CAC4CE8;
    v13 = swift_getKeyPath();
  }

  v22 = v9;
  LOBYTE(v23) = v30;
  *(&v23 + 1) = v10;
  *&v24 = KeyPath;
  *(&v24 + 1) = v12;
  *&v25 = v13;
  *(&v25 + 1) = v14;
  v26 = 0u;
  v27 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_21700D884();
  sub_2167FDB84(v21, &unk_27CABF7A0);
  sub_2167FDB84(&v26, &unk_27CABF7A0);
  *(&v27 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v26) = a1 & 1;
  sub_21700D8C4();
  v16 = *(v3 + 8);
  v17 = v20;
  v16(v5, v20);
  sub_2167FDB84(&v26, &unk_27CABF7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3780, &qword_2170485E0);
  sub_21680DFBC(&qword_27CAC3778, &qword_27CAC3780);
  sub_21700A204();
  v16(v8, v17);
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  return sub_2167FDB84(&v26, &qword_27CAC3780);
}

uint64_t sub_216BC243C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_21700C444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_217007474();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x28223BE20](v18);
  v38 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v37 = &v34 - v21;
  _s7MusicUI18ArtworkContentViewVMa_1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_216BC29E0();
  v22 = *(type metadata accessor for TrackLockup(0) + 116);
  v35 = v1;
  sub_216683A80(v1 + v22, v14, &qword_27CAB6D60, &qword_217014E40);
  v23 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v23) == 1)
  {
    sub_2167FDB84(v14, &qword_27CAB6D60);
    v24 = sub_21700C4B4();
    v25 = v17;
    v26 = 1;
  }

  else
  {
    v27 = sub_21700C4B4();
    v34 = v8;
    v28 = v27;
    (*(*(v27 - 8) + 16))(v17, v14, v27);
    sub_216BC5070(v14, type metadata accessor for Artwork);
    v25 = v17;
    v26 = 0;
    v24 = v28;
    v8 = v34;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  v29 = v37;
  sub_217007434();
  sub_216683A80(v35 + v22, v11, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2167FDB84(v11, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_2167FDB84(v4, &qword_27CAB7530);
    }
  }

  else
  {
    (*(v6 + 16))(v4, &v11[*(v23 + 20)], v5);
    sub_216BC5070(v11, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
  }

  v30 = v38;
  sub_2170073E4();
  (*(v6 + 8))(v8, v5);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v31 = v40;
  v32 = *(v39 + 8);
  v32(v30, v40);
  return (v32)(v29, v31);
}

double sub_216BC29E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TrackLockup(0);
  sub_216683A80(v0 + *(v5 + 120), v4, &qword_27CAB6A00, &unk_217016B60);
  v6 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_2167FDB84(v4, &qword_27CAB6A00);
  }

  else
  {
    v7 = *v4;
    sub_216BC5070(v4, type metadata accessor for ContentDescriptor);
    if (v7 != 23)
    {
      v11 = v7;
      v10 = 13;
      if (static ContentKind.== infix(_:_:)(&v11, &v10))
      {
        return 1.77777778;
      }
    }
  }

  return 1.0;
}

uint64_t sub_216BC2B0C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F88, &qword_21704FD70);
  sub_216BC2B90(v2, (a2 + *(v4 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F90, &qword_21704FDA8);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_216BC2B90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F98, &qword_21704FDB0);
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v103 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v93 - v6;
  v7 = sub_21700D864();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700D8E4();
  v111 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v108 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217008844();
  v97 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v96 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FA0, &qword_21704FDB8);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v93 - v18;
  MEMORY[0x28223BE20](v20);
  v113 = &v93 - v21;
  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = *a1;
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v99 = v9;
  v25 = qword_27CAB5F00;
  sub_21700DF14();
  if (v25 != -1)
  {
    swift_once();
  }

  v98 = v19;
  v26 = qword_27CAC4CC8;
  KeyPath = swift_getKeyPath();
  v132 = v23;
  v133 = v22;
  v134 = 0;
  v135 = v24;
  v136 = KeyPath;
  v137 = v26;
  v28 = qword_27CAB5F08;

  if (v28 != -1)
  {
    swift_once();
  }

  v106 = *(a1 + 90);
  sub_216BBDD0C(qword_27CAC4CD0, v106, &v127);
  sub_2167C4DF0(v23, v22, 0, v24);

  v112 = swift_getKeyPath();
  v131 = 0;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v31 = *(a1 + 88);
  v32 = *(a1 + 89);
  v33 = qword_27CAB5F10;
  sub_21700DF14();
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_27CAC4CD8;
  type metadata accessor for ExplicitBadgingPresenter(0);
  sub_2166D3CEC(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);

  v36 = sub_217008CF4();
  if (!v29)
  {
    goto LABEL_17;
  }

  v37 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v37 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

LABEL_17:

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FA8, &qword_21704FDF0);
    v41 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v40);
    v42 = v99;
    goto LABEL_30;
  }

  v38 = v35;
  if (v31)
  {
    v39 = sub_217009154();
  }

  else
  {
    v39 = sub_2170091A4();
  }

  *&v117 = v36;
  *(&v117 + 1) = v38;
  *&v118 = v30;
  *(&v118 + 1) = v29;
  LOBYTE(v119) = v31;
  BYTE1(v119) = v32;
  *(&v119 + 1) = v34;
  LOBYTE(v120) = 0;
  *(&v120 + 1) = v39;
  *&v125[0] = v36;
  *(&v125[0] + 1) = v38;
  *&v125[1] = v30;
  *(&v125[1] + 1) = v29;
  LOBYTE(v125[2]) = v31;
  BYTE1(v125[2]) = v32;
  *(&v125[2] + 1) = v34;
  LOBYTE(v125[3]) = 0;
  *(&v125[3] + 1) = v39;
  sub_21680DAEC(&v117, v116);
  sub_21680DB48(v125);
  if (qword_27CAB5EE0 != -1)
  {
    swift_once();
  }

  v43 = qword_27CAC4CA8;
  *&v94 = swift_getKeyPath();
  *(&v94 + 1) = v43;
  v121 = v117;
  v122 = v118;
  v123 = v119;
  v124 = v120;
  v44 = qword_27CAB5EE8;

  v42 = v99;
  if (v44 != -1)
  {
    swift_once();
  }

  if (v106)
  {
    v45 = [objc_opt_self() tertiaryLabelColor];
    v46 = sub_21700AC44();
  }

  else
  {
    v46 = qword_27CAC4CB0;
  }

  v47 = type metadata accessor for PrimaryTextView(0);
  v48 = v95;
  sub_216C0C570(v47, v49, v50, v51, v52, v53, v54, v55, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v57 = v96;
  v56 = v97;
  (*(v97 + 104))(v96, *MEMORY[0x277CDF9A8], v11);
  sub_2166D3CEC(&qword_27CABA188, MEMORY[0x277CDFA28]);
  v58 = sub_21700E464();
  v59 = *(v56 + 8);
  v59(v57, v11);
  v59(v48, v11);
  if (v58)
  {
    v60 = 1;
  }

  else
  {
    v60 = 3;
  }

  v61 = swift_getKeyPath();
  v126 = 0;
  v115[0] = v121;
  v115[1] = v122;
  v115[2] = v123;
  v115[3] = v124;
  v115[4] = v94;
  *&v115[5] = v46;
  *(&v115[5] + 1) = v61;
  *&v115[6] = v60;
  BYTE8(v115[6]) = 0;
  v63 = v109;
  v62 = v110;
  v64 = v107;
  (*(v109 + 104))(v107, *MEMORY[0x277D22050], v110);
  memset(v116, 0, 32);
  memset(v114, 0, sizeof(v114));
  v65 = v108;
  sub_21700D874();
  sub_2167FDB84(v114, &unk_27CABF7A0);
  sub_2167FDB84(v116, &unk_27CABF7A0);
  (*(v63 + 8))(v64, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FF0, &qword_21704FE28);
  sub_216BC6C04();
  v41 = v98;
  sub_21700A204();
  (*(v111 + 8))(v65, v42);
  memcpy(v116, v115, 0x69uLL);
  sub_2167FDB84(v116, &qword_27CAC4FF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FA8, &qword_21704FDF0);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v66);
LABEL_30:
  sub_2167C5834(v41, v113, &qword_27CAC4FA0, &qword_21704FDB8);
  v67 = *(a1 + 48);
  v68 = *(a1 + 56);
  v69 = *(a1 + 64);
  v71 = *(a1 + 32);
  v70 = *(a1 + 40);
  sub_216BC5A40(v67, v68, v69);
  v72 = qword_27CAB5EF0;
  sub_21700DF14();
  if (v72 != -1)
  {
    swift_once();
  }

  v73 = qword_27CAC4CB8;
  v74 = swift_getKeyPath();
  v75 = qword_27CAB5EF8;

  if (v75 != -1)
  {
    swift_once();
  }

  if (v106)
  {
    v76 = [objc_opt_self() tertiaryLabelColor];
    v77 = sub_21700AC44();
  }

  else
  {
    v77 = qword_27CAC4CC0;
  }

  v78 = swift_getKeyPath();
  LOBYTE(v117) = 0;
  *&v115[0] = v67;
  *(&v115[0] + 1) = v68;
  *&v115[1] = v69;
  *(&v115[1] + 1) = v71;
  *&v115[2] = v70;
  *(&v115[2] + 1) = v74;
  *&v115[3] = v73;
  *(&v115[3] + 1) = v77;
  *&v115[4] = v78;
  *(&v115[4] + 1) = 1;
  LOBYTE(v115[5]) = 0;
  v80 = v109;
  v79 = v110;
  v81 = v107;
  (*(v109 + 104))(v107, *MEMORY[0x277D22070], v110);
  memset(v116, 0, 32);
  memset(v125, 0, 32);
  v82 = v108;
  sub_21700D874();
  sub_2167FDB84(v125, &unk_27CABF7A0);
  sub_2167FDB84(v116, &unk_27CABF7A0);
  (*(v80 + 8))(v81, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FB0, &qword_21704FDF8);
  sub_216BC6988();
  v83 = v101;
  sub_21700A204();
  (*(v111 + 8))(v82, v42);
  memcpy(v116, v115, 0x51uLL);
  sub_2167FDB84(v116, &qword_27CAC4FB0);
  v84 = v100;
  sub_216683A80(v113, v100, &qword_27CAC4FA0, &qword_21704FDB8);
  v86 = v103;
  v85 = v104;
  v87 = *(v104 + 16);
  v88 = v105;
  v87(v103, v83, v105);
  v125[0] = v127;
  v125[1] = v128;
  v125[2] = v129;
  *&v125[3] = v130;
  *(&v125[3] + 1) = v112;
  *&v125[4] = 1;
  BYTE8(v125[4]) = 0;
  v89 = v102;
  memcpy(v102, v125, 0x49uLL);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4FE8, &unk_21704FE18);
  sub_216683A80(v84, &v89[*(v90 + 48)], &qword_27CAC4FA0, &qword_21704FDB8);
  v87(&v89[*(v90 + 64)], v86, v88);
  sub_216683A80(v125, v115, &qword_27CABC6F8, &unk_2170272A0);
  v91 = *(v85 + 8);
  v91(v83, v88);
  sub_2167FDB84(v113, &qword_27CAC4FA0);
  v91(v86, v88);
  sub_2167FDB84(v84, &qword_27CAC4FA0);
  v115[0] = v127;
  v115[1] = v128;
  v115[2] = v129;
  *&v115[3] = v130;
  *(&v115[3] + 1) = v112;
  *&v115[4] = 1;
  BYTE8(v115[4]) = 0;
  return sub_2167FDB84(v115, &qword_27CABC6F8);
}

uint64_t sub_216BC383C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5040, &qword_21704FF10);
  MEMORY[0x28223BE20](v3);
  v5 = (v35 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v6);
  v41 = v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5048, &qword_21704FF18);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5050, &unk_21704FF20);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - v13;
  v15 = *v1;
  if (*v1)
  {
    v35[0] = v12;
    v35[1] = v3;
    v36 = v5;
    v37 = v6;
    v16 = v8;
    v38 = v11;
    v39 = a1;
    v17 = v1[1];
    v18 = v1[2];
    *v10 = sub_2170091A4();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5060, &unk_21704FF30) + 44);
    v19 = *(v15 + 16);
    v42 = 0;
    v43 = v19;
    swift_getKeyPath();
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = v17;
    v20[4] = v18;
    sub_21700DF14();
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688, &qword_217023FB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5068, &qword_21704FF60);
    sub_2168B98BC();
    sub_21680DFBC(&qword_27CAC5070, &qword_27CAC5068);
    sub_21700B154();
    v21 = *MEMORY[0x277CDF998];
    v22 = sub_217008844();
    (*(*(v22 - 8) + 104))(v41, v21, v22);
    sub_2166D3CEC(&qword_280E2B340, MEMORY[0x277CDFA28]);
    result = sub_21700E494();
    if (result)
    {
      v24 = sub_21680DFBC(&qword_27CAC5058, &qword_27CAC5048);
      v25 = sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
      v26 = v41;
      v27 = v37;
      sub_21700A5B4();
      sub_2167FDB84(v26, &qword_27CAB75D0);
      sub_2167FDB84(v10, &qword_27CAC5048);
      v28 = v35[0];
      v29 = v38;
      (*(v35[0] + 16))(v36, v14, v38);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
      v42 = v16;
      v43 = v27;
      v44 = v24;
      v45 = v25;
      swift_getOpaqueTypeConformance2();
      sub_2167C4D74();
      sub_217009554();
      return (*(v28 + 8))(v14, v29);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v46 = *(v1 + 3);
    v30 = *(&v46 + 1);
    v31 = v46;
    v32 = MEMORY[0x277D84F90];
    if (!*(&v46 + 1))
    {
      v31 = 0;
      v32 = 0;
    }

    *v5 = v31;
    v5[1] = v30;
    v5[2] = 0;
    v5[3] = v32;
    swift_storeEnumTagMultiPayload();
    sub_216683A80(&v46, &v42, &qword_27CABAA40, &unk_217014260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
    v33 = sub_21680DFBC(&qword_27CAC5058, &qword_27CAC5048);
    v34 = sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
    v42 = v8;
    v43 = v6;
    v44 = v33;
    v45 = v34;
    swift_getOpaqueTypeConformance2();
    sub_2167C4D74();
    return sub_217009554();
  }

  return result;
}

unint64_t *sub_216BC3E78@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  if (v5 >= v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = (a2 + 24 * v5);
  v12 = v11[4];
  v13 = v11[5];
  v14 = v11[6];
  v15 = sub_216AEE3C0(0, v7);
  if ((v16 & 1) != 0 || v5 != v15)
  {
    swift_bridgeObjectRetain_n();
    v17 = MEMORY[0x277D84F90];
  }

  else
  {
    a3 = 0;
    a4 = 0;
    v17 = 1;
  }

  sub_21700DF14();
  v18 = MEMORY[0x277D84F90];
  sub_2167770D0(v12, v13, 0, MEMORY[0x277D84F90]);
  sub_216BC709C(a3, a4, 0, v17);
  sub_216BC70AC(a3, a4, 0, v17);
  *a5 = v12;
  a5[1] = v13;
  a5[2] = 0;
  a5[3] = v18;
  a5[4] = v14;
  a5[5] = a3;
  a5[6] = a4;
  a5[7] = 0;
  a5[8] = v17;
  sub_216BC70AC(a3, a4, 0, v17);

  return sub_2167C4DF0(v12, v13, 0, v18);
}

uint64_t sub_216BC3FFC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_217009574();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700D8E4();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContextMenuButton(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F50, &qword_21704FCD8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v27 - v12);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F58, &qword_21704FCE0);
  MEMORY[0x28223BE20](v28);
  v15 = &v27 - v14;
  v16 = sub_217006784();
  v18 = v17;
  sub_216BC4DB0(v1, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContextMenuButton);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_216BC50C4(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ContextMenuButton);
  *v13 = v16;
  v13[1] = v18;
  v13[2] = sub_216BC649C;
  v13[3] = v20;
  v13[4] = sub_216BC46F0;
  v13[5] = 0;
  v21 = *(v11 + 60);
  *(v13 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v22 = v13 + *(v11 + 64);
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  sub_21700D884();
  sub_2167FDB84(v35, &unk_27CABF7A0);
  sub_2167FDB84(v36, &unk_27CABF7A0);
  sub_21680DFBC(&qword_27CAC4F60, &qword_27CAC4F50);
  sub_21700A204();
  (*(v29 + 8))(v7, v30);
  sub_2167FDB84(v13, &qword_27CAC4F50);
  *&v15[*(v28 + 36)] = sub_21700ACD4();
  v23 = v31;
  sub_217008C84();
  sub_216BC64FC();
  sub_2166D3CEC(&qword_280E2A900, MEMORY[0x277CDDFB0]);
  v24 = v34;
  v25 = v32;
  sub_21700A3E4();
  (*(v33 + 8))(v23, v25);
  sub_2167FDB84(v15, &qword_27CAC4F58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F70, &unk_21704FCE8);
  *(v24 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_216BC44EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MenuConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2170067A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *(type metadata accessor for ContextMenuButton(0) + 20);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_216BC4DB0(a1 + v11, v7, type metadata accessor for MenuConfiguration);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  result = sub_216BC50C4(v7, v14 + v13, type metadata accessor for MenuConfiguration);
  *a2 = sub_216BC7218;
  a2[1] = v14;
  return result;
}

double sub_216BC46F0@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B40, &unk_21704A010);
  MEMORY[0x28223BE20](v5);
  v7 = (&v24 - v6);
  v8 = sub_21700ADB4();
  if (qword_280E2C408 != -1)
  {
    swift_once();
  }

  v9 = sub_21700ADF4();
  v10 = __swift_project_value_buffer(v9, qword_280E73B30);
  KeyPath = swift_getKeyPath();
  v12 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38, &unk_2170586D0) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450);
  (*(*(v9 - 8) + 16))(v12 + *(v13 + 28), v10, v9);
  *v12 = KeyPath;
  *v7 = v8;
  if (qword_280E2C410 != -1)
  {
    swift_once();
  }

  v14 = qword_280E73B48;
  v15 = swift_getKeyPath();
  v16 = (v7 + *(v5 + 36));
  *v16 = v15;
  v16[1] = v14;
  v17 = *MEMORY[0x277CDF988];
  v18 = sub_217008844();
  (*(*(v18 - 8) + 104))(v4, v17, v18);
  sub_2166D3CEC(&qword_280E2B340, MEMORY[0x277CDFA28]);

  if ((sub_21700E494() & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21680C8E4();
  sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
  sub_21700A5B4();
  sub_2167FDB84(v4, &qword_27CAB75D0);
  sub_2167FDB84(v7, &qword_27CAB8B40);
  if (qword_27CAB5F28 != -1)
  {
LABEL_9:
    swift_once();
  }

  v19 = qword_27CAC4CF0;
  v20 = swift_getKeyPath();
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F78, &qword_21704FD58) + 36));
  *v21 = v20;
  v21[1] = v19;

  LOBYTE(v19) = sub_217009C84();
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F80, &unk_21704FD60) + 36);
  *v22 = v19;
  result = 12.0;
  *(v22 + 8) = xmmword_21704F640;
  *(v22 + 24) = xmmword_21704F640;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_216BC4AF8(uint64_t a1)
{
  result = sub_217009D54();
  qword_27CAC4C98 = result;
  return result;
}

uint64_t sub_216BC4B18(uint64_t a1)
{
  result = sub_21700AD14();
  qword_27CAC4CA0 = result;
  return result;
}

uint64_t sub_216BC4B38(__n128 a1)
{
  result = sub_217009E54();
  qword_27CAC4CA8 = result;
  return result;
}

uint64_t sub_216BC4B58(uint64_t a1)
{
  result = sub_21700AD14();
  qword_27CAC4CB0 = result;
  return result;
}

uint64_t sub_216BC4B78(uint64_t a1)
{
  result = sub_217009E94();
  qword_27CAC4CB8 = result;
  return result;
}

uint64_t sub_216BC4B98(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CAC4CC0 = result;
  return result;
}

uint64_t sub_216BC4BB8(uint64_t a1)
{
  sub_217009E64();
  sub_217009DE4();
  v1 = sub_217009E34();

  qword_27CAC4CC8 = v1;
  return result;
}

uint64_t sub_216BC4BFC(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CAC4CD0 = result;
  return result;
}

uint64_t sub_216BC4C1C()
{
  if (qword_27CAB5EE0 != -1)
  {
    swift_once();
  }

  qword_27CAC4CD8 = qword_27CAC4CA8;
}

uint64_t sub_216BC4C80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_2167FDB84(v2, &qword_27CAB81D0);
  qword_27CAC4CE0 = v4;
  return result;
}

uint64_t sub_216BC4D50(uint64_t a1)
{
  result = sub_21700AC54();
  qword_27CAC4CE8 = result;
  return result;
}

uint64_t sub_216BC4D70(uint64_t a1)
{
  result = sub_21700AD14();
  qword_27CAC4CF0 = result;
  return result;
}

uint64_t sub_216BC4DB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216BC4E1C()
{
  v0 = type metadata accessor for TrackShelfLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216BBEB74();
}

unint64_t sub_216BC4E70()
{
  result = qword_27CAC4D18;
  if (!qword_27CAC4D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4CF8, &unk_217064CF0);
    sub_216BC4EFC();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D18);
  }

  return result;
}

unint64_t sub_216BC4EFC()
{
  result = qword_27CAC4D20;
  if (!qword_27CAC4D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D10, &unk_21704F7B8);
    sub_216BC4FB4();
    sub_21680DFBC(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D20);
  }

  return result;
}

unint64_t sub_216BC4FB4()
{
  result = qword_27CAC4D28;
  if (!qword_27CAC4D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D08, &qword_21704F7B0);
    sub_2166D3CEC(&qword_27CAC4D30, type metadata accessor for TrackShelfLockupContent);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D28);
  }

  return result;
}

uint64_t sub_216BC5070(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BC50C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

void sub_216BC514C(uint64_t a1)
{
  sub_2169109EC(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216BBDC14(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MenuContext(319);
      if (v3 <= 0x3F)
      {
        sub_2167B84AC(319);
        if (v4 <= 0x3F)
        {
          sub_216BC5268(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216BC5268(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_216BC52B8()
{
  result = qword_27CAC4D50;
  if (!qword_27CAC4D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D38, &qword_21704F7F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D58, &qword_21704F820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D60, &unk_21704F828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D00, &qword_21704F770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4CF8, &unk_217064CF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0, &qword_21701ADE0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216BC4E70();
    sub_21680DFBC(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_2166D3CEC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D50);
  }

  return result;
}

uint64_t sub_216BC5534()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for TrackShelfLockupContent(v0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_31_3(*(v2 + 80));

  return sub_216BBF650();
}

unint64_t sub_216BC5594()
{
  result = qword_27CAC4D98;
  if (!qword_27CAC4D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D68, &qword_21704F888);
    sub_2166D3CEC(&qword_27CAC4DA0, type metadata accessor for ContextMenuButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4D98);
  }

  return result;
}

unint64_t sub_216BC5670()
{
  result = qword_27CAC4DB0;
  if (!qword_27CAC4DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D78, &qword_21704F898);
    sub_216BC5728();
    sub_21680DFBC(&qword_27CAC4DC8, &qword_27CAC4DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4DB0);
  }

  return result;
}

unint64_t sub_216BC5728()
{
  result = qword_27CAC4DB8;
  if (!qword_27CAC4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D90, &unk_21704F8B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D70, &qword_21704F890);
    type metadata accessor for ActionButtonListStyle(255);
    sub_21680DFBC(&qword_27CAC4DC0, &qword_27CAC4D70);
    sub_2166D3CEC(&qword_27CAC36D0, type metadata accessor for ActionButtonListStyle);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A818, &qword_27CAB8AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4DB8);
  }

  return result;
}

unint64_t sub_216BC58A0()
{
  result = qword_27CAC4DD8;
  if (!qword_27CAC4DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4DD0, &qword_21705DFA0);
    sub_216BC5958();
    sub_21680DFBC(&qword_27CAC4E00, &unk_27CAC4E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4DD8);
  }

  return result;
}

unint64_t sub_216BC5958()
{
  result = qword_27CAC4DE0;
  if (!qword_27CAC4DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4DE8, &qword_21704F8D0);
    sub_21680DFBC(&qword_27CAC4DF0, &qword_27CAC4DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4DE0);
  }

  return result;
}

double sub_216BC5A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_21700DF14();

    sub_21700DF14();
  }

  return result;
}

uint64_t sub_216BC5AD0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216BC5B50()
{
  result = qword_27CAC4EB0;
  if (!qword_27CAC4EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4E78, &qword_21704F978);
    sub_216BC5C08();
    sub_21680DFBC(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4EB0);
  }

  return result;
}

unint64_t sub_216BC5C08()
{
  result = qword_27CAC4EB8;
  if (!qword_27CAC4EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4EC0, &unk_21704F9E8);
    sub_216BC5C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4EB8);
  }

  return result;
}

unint64_t sub_216BC5C94()
{
  result = qword_27CAC4EC8;
  if (!qword_27CAC4EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4E98, &unk_21704F9A0);
    sub_216BC5D4C();
    sub_21680DFBC(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4EC8);
  }

  return result;
}

unint64_t sub_216BC5D4C()
{
  result = qword_27CAC4ED0;
  if (!qword_27CAC4ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4E90, &unk_21704F990);
    sub_2166D3CEC(&qword_27CAC4ED8, _s7MusicUI18ArtworkContentViewVMa_1);
    sub_21680DFBC(&qword_27CAC2220, &unk_27CAC2228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4ED0);
  }

  return result;
}

unint64_t sub_216BC5E34()
{
  result = qword_27CAC4F08;
  if (!qword_27CAC4F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4E20, &qword_21704F8F8);
    sub_216BC5EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4F08);
  }

  return result;
}

unint64_t sub_216BC5EC0()
{
  result = qword_27CAC4F10;
  if (!qword_27CAC4F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF98, &qword_21702D340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660, &qword_2170189A0);
    sub_2167C4CBC();
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4F10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FavoriteIndicatorView(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216BC6128(uint64_t a1)
{
  sub_216688560(319, &qword_280E2A070, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_216688560(319, qword_280E3D440, &type metadata for PrioritizedTextList);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_216BC5268(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_216BC6288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_216BC6318()
{
  result = qword_27CAC4F48;
  if (!qword_27CAC4F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D88, &qword_21704F8A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4D78, &qword_21704F898);
    sub_216BC5670();
    swift_getOpaqueTypeConformance2();
    sub_2166D3CEC(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4F48);
  }

  return result;
}

uint64_t sub_216BC649C()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for ContextMenuButton(v1);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216BC44EC(v4, v0);
}

unint64_t sub_216BC64FC()
{
  result = qword_27CAC4F68;
  if (!qword_27CAC4F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F58, &qword_21704FCE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F50, &qword_21704FCD8);
    sub_21680DFBC(&qword_27CAC4F60, &qword_27CAC4F50);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4F68);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  OUTLINED_FUNCTION_49();
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_43_0();
  v9 = *(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = v0 + ((v4 + v6 + v9) & ~v9);
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = v10 + *(v7 + 20);
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_2_101();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v18 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v15 + v17, 1, v18))
    {
      OUTLINED_FUNCTION_50();
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  v20 = (v10 + *(v7 + 32));
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

void sub_216BC68BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  v21 = *(sub_2170067A4() - 8);
  v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v23 = *(v21 + 64);
  v24 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_36(v24);
  v32 = v20 + ((v22 + v23 + *(v31 + 80)) & ~*(v31 + 80));

  sub_2169BDF30(v20 + v22, v32, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

unint64_t sub_216BC6988()
{
  result = qword_27CAC4FB8;
  if (!qword_27CAC4FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4FB0, &qword_21704FDF8);
    sub_216BC6A40();
    sub_21680DFBC(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FB8);
  }

  return result;
}

unint64_t sub_216BC6A40()
{
  result = qword_27CAC4FC0;
  if (!qword_27CAC4FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4FC8, &qword_21704FE00);
    sub_216BC6AF8();
    sub_21680DFBC(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FC0);
  }

  return result;
}

unint64_t sub_216BC6AF8()
{
  result = qword_27CAC4FD0;
  if (!qword_27CAC4FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4FD8, &unk_21704FE08);
    sub_216BC6BB0();
    sub_21680DFBC(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FD0);
  }

  return result;
}

unint64_t sub_216BC6BB0()
{
  result = qword_27CAC4FE0;
  if (!qword_27CAC4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FE0);
  }

  return result;
}

unint64_t sub_216BC6C04()
{
  result = qword_27CAC4FF8;
  if (!qword_27CAC4FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4FF0, &qword_21704FE28);
    sub_216BC6CBC();
    sub_21680DFBC(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4FF8);
  }

  return result;
}

unint64_t sub_216BC6CBC()
{
  result = qword_27CAC5000;
  if (!qword_27CAC5000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5008, &unk_21704FE30);
    sub_21686C594();
    sub_21680DFBC(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5000);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI19PrioritizedTextListVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_216BC6D8C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216BC6DE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_216BC6E4C()
{
  result = qword_27CAC5018;
  if (!qword_27CAC5018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F70, &unk_21704FCE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F58, &qword_21704FCE0);
    sub_217009574();
    sub_216BC64FC();
    sub_2166D3CEC(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5018);
  }

  return result;
}

unint64_t sub_216BC6F90()
{
  result = qword_27CAC5028;
  if (!qword_27CAC5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4F90, &qword_21704FDA8);
    sub_21680DFBC(&qword_27CAC5030, &unk_27CAC5038);
    sub_21680DFBC(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5028);
  }

  return result;
}

uint64_t sub_216BC709C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_2167770D0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_216BC70AC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_2167C4DF0(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_216BC70BC()
{
  result = qword_27CAC5078;
  if (!qword_27CAC5078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5080, qword_21704FF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5048, &qword_21704FF18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
    sub_21680DFBC(&qword_27CAC5058, &qword_27CAC5048);
    sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
    swift_getOpaqueTypeConformance2();
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5078);
  }

  return result;
}

void sub_216BC721C()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v180 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490, &qword_217023788);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v199 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v194 = v8;
  v195 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v192 = v10 - v9;
  v11 = OUTLINED_FUNCTION_4_1();
  v193 = type metadata accessor for ModalPresentationDescriptor(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v191 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18, &unk_217025B60);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  v189 = v17 - v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  v185 = v177 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E0, &unk_217017140);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v179 = v23 - v24;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  v184 = v177 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  OUTLINED_FUNCTION_36(v27);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_105();
  v188 = v29;
  OUTLINED_FUNCTION_4_1();
  v183 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v182 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v181 = v33 - v32;
  v34 = OUTLINED_FUNCTION_4_1();
  v201 = type metadata accessor for LinkComponentModel(v34);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F20, &qword_2170153B8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v177 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  OUTLINED_FUNCTION_36(v47);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_119_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_36(v49);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  v52 = v177 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v53);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  v56 = v177 - v55;
  sub_21700C1C4();
  sub_21700C404();
  sub_21700C444();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  sub_216C7CDA8(v52, v0, v56);
  v61 = sub_21700C1E4();
  v186 = *(v61 - 8);
  v62 = *(v186 + 16);
  v62(v46, v2, v61);
  sub_21700D234();
  v63 = OUTLINED_FUNCTION_48(&v46[v39[13]]);
  *&v46[v39[9]] = 0;
  v46[v39[11]] = 0;
  v46[v39[12]] = 0;
  (v62)(v43, v2, v61, v63);
  sub_21700D234();
  OUTLINED_FUNCTION_48(v43 + v39[13]);
  *(v43 + v39[9]) = 0;
  *(v43 + v39[11]) = 1;
  v64 = v39[12];
  v197 = v43;
  *(v43 + v64) = 0;
  v65 = v180;
  v202 = sub_21700C164();
  v203 = v66;
  v67 = v201;
  v177[1] = sub_2166C32C0();
  sub_21700F364();
  v68 = (v38 + *(v67 + 24));
  v178 = v39;
  v68[3] = v39;
  v177[0] = sub_2166D9530(&qword_27CAB6F28, &qword_27CAB6F20, &qword_2170153B8, &unk_21702A498);
  v68[4] = v177[0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v198 = v46;
  sub_216683A80(v46, boxed_opaque_existential_1, &qword_27CAB6F20, &qword_2170153B8);
  v70 = (v38 + *(v67 + 28));
  sub_21700D7A4();
  *v70 = 0;
  v70[1] = 0;
  v200 = v38;
  OUTLINED_FUNCTION_38_2();
  v190 = v71;
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v71);
  v202 = sub_21700C164();
  v203 = v75;
  sub_21700DF14();
  MEMORY[0x21CE9F490](0x726564616568, 0xE600000000000000);

  v76 = type metadata accessor for AlbumDetailHeaderLockup(0);
  sub_21700F364();
  v77 = v65 + v76[13];
  v196 = v56;
  sub_216683A80(v56, v77, &qword_27CAB6D60, &qword_217014E40);
  v187 = v61;
  v78 = sub_2170071D4();
  if (v78)
  {
    v79 = v78;
    v80 = (v65 + v76[14]);
    v81 = type metadata accessor for VideoArtwork(0);
    sub_21700C3F4();
    *v80 = v79;
    OUTLINED_FUNCTION_41();
    v85 = v81;
  }

  else
  {
    type metadata accessor for VideoArtwork(0);
    OUTLINED_FUNCTION_38_2();
  }

  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  v86 = sub_21700C184();
  OUTLINED_FUNCTION_33_30(v86, v87, v76[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978, &unk_2170239B0);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_217013DA0;
  v89 = sub_21700C0C4();
  v91 = v90;
  v92 = v181;
  sub_217006214();
  v93 = sub_2170061F4();
  v95 = v94;
  (*(v182 + 8))(v92, v183);
  *(v88 + 32) = v93;
  *(v88 + 40) = v95;
  *(v88 + 48) = v89;
  *(v88 + 56) = v91;
  *(v88 + 64) = 0u;
  *(v88 + 80) = 0u;
  *(v88 + 96) = 0;
  *(v65 + v76[7]) = v88;
  sub_216BC9424();
  OUTLINED_FUNCTION_33_30(v96, v97, v76[8]);
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
  v183 = sub_21700C184();
  v182 = v102;
  sub_216BC89B4();
  v104 = v103;
  v181 = v105;
  v106 = v184;
  sub_21700C134();
  v107 = sub_21700BEF4();
  OUTLINED_FUNCTION_24_3(v106);
  v109 = v191;
  v108 = v192;
  if (v110)
  {
    sub_216697664(v106, &qword_27CAB74E0, &unk_217017140);
    goto LABEL_9;
  }

  sub_21700BEE4();
  OUTLINED_FUNCTION_21_45();
  (*(v111 + 8))(v112, v107);
  if (!v95)
  {
LABEL_9:
    v106 = v179;
    sub_21700C134();
    OUTLINED_FUNCTION_24_3(v106);
    if (v110)
    {
      sub_216697664(v106, &qword_27CAB74E0, &unk_217017140);
      v106 = 0;
      v95 = 0;
    }

    else
    {
      sub_21700BED4();
      OUTLINED_FUNCTION_21_45();
      (*(v114 + 8))(v115, v107);
    }

    v113 = v195;

    goto LABEL_13;
  }

  v113 = v195;
LABEL_13:
  v116 = v185;
  sub_21700D234();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v113);
  v120 = v182;
  *v109 = v183;
  *(v109 + 8) = v120;
  v121 = v181;
  *(v109 + 16) = v104;
  *(v109 + 24) = v121;
  *(v109 + 32) = v106;
  *(v109 + 40) = v95;
  *(v109 + 48) = 8;
  *(v109 + 56) = 0;
  *(v109 + 64) = 0;
  v122 = v189;
  sub_216683A80(v116, v189, &qword_27CABBE18, &unk_217025B60);
  OUTLINED_FUNCTION_24_3(v122);
  if (v110)
  {
    sub_21700D234();
    sub_216697664(v116, &qword_27CABBE18, &unk_217025B60);
    OUTLINED_FUNCTION_24_3(v122);
    v124 = v201;
    v125 = v199;
    v123 = v194;
    if (!v110)
    {
      sub_216697664(v122, &qword_27CABBE18, &unk_217025B60);
    }
  }

  else
  {
    sub_216697664(v116, &qword_27CABBE18, &unk_217025B60);
    v123 = v194;
    (*(v194 + 32))(v108, v122, v113);
    v124 = v201;
    v125 = v199;
  }

  v126 = v193;
  (*(v123 + 32))(v109 + *(v193 + 40), v108, v113);
  v127 = v188;
  sub_216BCA36C(v109, v188);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v126);
  sub_2167C5834(v127, v65 + v76[9], &qword_27CABBE20, qword_217034D80);
  sub_216BC9AA4();
  *(v65 + v76[11]) = v131;
  v132 = v200;
  sub_216BCA48C(v200, v65 + v76[16], type metadata accessor for LinkComponentModel);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v124);
  sub_21700C1A4();
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498, &unk_217023790);
  OUTLINED_FUNCTION_24_3(v125);
  if (v110)
  {
    v137 = OUTLINED_FUNCTION_24_32();
    v138(v137);
    OUTLINED_FUNCTION_2_128();
    sub_216BCA4E8(v132, v139);
    OUTLINED_FUNCTION_9_64(v197);
    OUTLINED_FUNCTION_9_64(v198);
    sub_216697664(v196, &qword_27CAB6D60, &qword_217014E40);
    v140 = &qword_27CABB490;
    v141 = &qword_217023788;
    v142 = v125;
LABEL_23:
    sub_216697664(v142, v140, v141);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v124);
    v157 = v190;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_3_15();
  sub_2166D9530(v143, v144, v145, v146);
  sub_21700EC54();
  sub_21700EC94();
  v147 = sub_21700EC84();
  (*(*(v136 - 8) + 8))(v125, v136);
  if (v147 < 2)
  {
    v164 = OUTLINED_FUNCTION_24_32();
    v165(v164);
    OUTLINED_FUNCTION_2_128();
    sub_216BCA4E8(v200, v166);
    OUTLINED_FUNCTION_9_64(v197);
    OUTLINED_FUNCTION_9_64(v198);
    v140 = &qword_27CAB6D60;
    v141 = &qword_217014E40;
    v142 = v196;
    goto LABEL_23;
  }

  v148 = v65 + v76[17];
  v202 = sub_21700C164();
  v203 = v149;
  sub_21700F364();
  v150 = (v148 + *(v124 + 24));
  v151 = v177[0];
  v150[3] = v178;
  v150[4] = v151;
  v152 = __swift_allocate_boxed_opaque_existential_1(v150);
  sub_2167C5834(v197, v152, &qword_27CAB6F20, &qword_2170153B8);
  v153 = OUTLINED_FUNCTION_24_32();
  v154(v153);
  OUTLINED_FUNCTION_2_128();
  sub_216BCA4E8(v200, v155);
  sub_216697664(v198, &qword_27CAB6F20, &qword_2170153B8);
  sub_216697664(v196, &qword_27CAB6D60, &qword_217014E40);
  v156 = (v148 + *(v124 + 28));
  *v156 = 0;
  v156[1] = 0;
  OUTLINED_FUNCTION_38_2();
  v157 = v190;
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v190);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v124);
LABEL_24:
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v170, v171, v172, v157);
  v173 = (v65 + v76[12]);
  *v173 = 0;
  v173[1] = 0;
  *(v65 + v76[10]) = 0;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v124);
  *(v65 + v76[19]) = 10;
  OUTLINED_FUNCTION_26();
}

void sub_216BC7FB8()
{
  OUTLINED_FUNCTION_49();
  v123 = v1;
  LODWORD(v121) = v2;
  v124 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5090, &qword_217069CF0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v119 = v10;
  OUTLINED_FUNCTION_4_1();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v117 = v12;
  v118 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v116 = v14 - v13;
  OUTLINED_FUNCTION_4_1();
  v15 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v126 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5098, &qword_21704FF80);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v122 = v20;
  OUTLINED_FUNCTION_4_1();
  v21 = sub_21700BEC4();
  OUTLINED_FUNCTION_1();
  v120 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v115 = (v24 - v25);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  v114 = &v111 - v27;
  OUTLINED_FUNCTION_4_1();
  v28 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v113 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v112 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  OUTLINED_FUNCTION_36(v33);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = &v111 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_36(v37);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  v40 = &v111 - v39;
  v127 = sub_21700C2A4();
  v128 = v41;
  v42 = type metadata accessor for AlbumTrackLockup(0);
  sub_2166C32C0();
  sub_21700F364();
  OUTLINED_FUNCTION_48(v7 + v42[6]);
  v43 = sub_216BCA160();
  OUTLINED_FUNCTION_33_30(v43, v44, v42[7]);
  sub_21700C2C4();
  sub_21700C404();
  sub_21700C444();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  sub_216C7CDA8(v40, v36, v7 + v42[25]);
  v49 = 0;
  v125 = v15;
  if (v121)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978, &unk_2170239B0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_217013DA0;
    v50 = sub_21700C264();
    v121 = v51;
    v52 = v112;
    sub_217006214();
    v53 = sub_2170061F4();
    v54 = v28;
    v55 = v5;
    v56 = v21;
    v57 = v0;
    v59 = v58;
    (*(v113 + 8))(v52, v54);
    *(v49 + 32) = v53;
    *(v49 + 40) = v59;
    v0 = v57;
    v21 = v56;
    v5 = v55;
    v60 = v121;
    *(v49 + 48) = v50;
    *(v49 + 56) = v60;
    v15 = v125;
    *(v49 + 64) = 0u;
    *(v49 + 80) = 0u;
    *(v49 + 96) = 0;
  }

  *(v7 + v42[8]) = v49;
  v61 = v122;
  sub_21700C284();
  OUTLINED_FUNCTION_31_2(v61, 1, v21);
  if (v62)
  {
    sub_216697664(v61, &qword_27CAC5098, &qword_21704FF80);
    *(v7 + v42[11]) = 0;
    v63 = v126;
  }

  else
  {
    v121 = v0;
    v64 = v120;
    v65 = *(v120 + 32);
    v66 = v114;
    v65(v114, v61, v21);
    v67 = v115;
    v65(v115, v66, v21);
    v68 = (*(v64 + 88))(v67, v21);
    v69 = v42[11];
    if (v68 == *MEMORY[0x277CD8000])
    {
      *(v7 + v69) = 1;
    }

    else
    {
      *(v7 + v69) = 0;
      (*(v120 + 8))(v67, v21);
    }

    v63 = v126;
    v0 = v121;
  }

  v122 = *(v63 + 16);
  v122(v0, v5, v15);
  v70 = (*(v63 + 88))(v0, v15);
  if (v70 == *MEMORY[0x277CD8368])
  {
    (*(v63 + 96))(v0, v15);
    v71 = v116;
    v72 = v117;
    v73 = v118;
    (*(v117 + 32))(v116, v0, v118);
    v74 = v119;
    sub_21700BF84();
    (*(v72 + 8))(v71, v73);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50B0, &qword_21704FF90);
    OUTLINED_FUNCTION_31_2(v74, 1, v75);
    if (v62)
    {
      v76 = 0;
    }

    else
    {
      v76 = 1;
    }

    sub_216697664(v74, &qword_27CAC5090, &qword_217069CF0);
    *(v7 + v42[19]) = v76;
  }

  else
  {
    v77 = v42[19];
    *(v7 + v77) = v70 == *MEMORY[0x277CD8350];
    (*(v63 + 8))(v0, v15);
  }

  sub_21700D7A4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v82 = sub_21700C274();
  v83 = v7 + v42[9];
  *v83 = v82;
  *(v83 + 8) = v84 & 1;
  v85 = COERCE_DOUBLE(sub_21700C2D4());
  v87 = v42[10];
  if (v86)
  {
    *(v7 + v87) = v85;
  }

  else
  {
    *(v7 + v87) = v85 * 1000.0;
  }

  *(v7 + v87 + 8) = v86 & 1;
  v88 = v124;
  v89 = COERCE_DOUBLE(sub_21700C094()) >= 0.7;
  *(v7 + v42[12]) = v89 & ~v90;
  *(v7 + v42[13]) = v123 & 1;
  v91 = sub_21700C2E4();
  OUTLINED_FUNCTION_33_30(v91, v92, v42[17]);
  v93 = (v7 + v42[23]);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50A0, &qword_21704FF88);
  v93[3] = v94;
  v93[4] = sub_2166D9530(&qword_27CAC50A8, &qword_27CAC50A0, &qword_21704FF88, &unk_2170245A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
  v96 = v125;
  v122(boxed_opaque_existential_1, v5, v125);
  v97 = *(v94 + 52);
  v98 = sub_21700C1E4();
  v99 = *(v98 - 8);
  (*(v99 + 16))(boxed_opaque_existential_1 + v97, v88, v98);
  sub_21700D234();
  (*(v99 + 8))(v88, v98);
  (*(v126 + 8))(v5, v96);
  *&v100 = OUTLINED_FUNCTION_48(boxed_opaque_existential_1 + *(v94 + 60));
  v101 = v7 + v42[21];
  *(v101 + 32) = 0;
  *v101 = v100;
  *(v101 + 16) = v100;
  v102 = v7 + v42[20];
  *(v102 + 32) = 0;
  *v102 = v100;
  *(v102 + 16) = v100;
  *(v7 + v42[14]) = 0;
  *(v7 + v42[15]) = 0;
  v103 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
  *(v7 + v42[18]) = 0;
  OUTLINED_FUNCTION_48(v7 + v42[22]);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v103);
  v110 = (v7 + v42[24]);
  *v110 = 0;
  v110[1] = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216BC88B8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21700C0B4();
  if (!v4)
  {
    v3 = sub_21700C164();
  }

  v5 = v3;
  v6 = v4;
  v7 = type metadata accessor for ContentDescriptor(0);
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_17_53();
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
}

void sub_216BC8960()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_216BCA3D0(2038004089, 0xE400000000000000, v0);
  qword_27CAC5088 = v0;
}

void sub_216BC89B4()
{
  OUTLINED_FUNCTION_49();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - v2;
  v4 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700C0C4();
  v13 = v12;
  sub_21700C0E4();
  OUTLINED_FUNCTION_31_2(v3, 1, v4);
  if (v14)
  {
    sub_216697664(v3, &qword_27CAB74E8, &qword_217030A40);
  }

  else
  {
    (*(v6 + 32))(v10, v3, v4);
    v15 = sub_216983738(293);
    v17 = v16;
    v26 = v11;
    v27 = v13;
    sub_21700DF14();
    MEMORY[0x21CE9F490](v15, v17);

    v19 = v26;
    v18 = v27;
    if (qword_27CAB5F30 != -1)
    {
      OUTLINED_FUNCTION_14_56(&qword_27CAB5F30);
    }

    v20 = qword_27CAC5088;
    v21 = sub_217006134();
    v22 = [v20 stringFromDate_];

    v23 = sub_21700E514();
    v25 = v24;

    v26 = v19;
    v27 = v18;
    sub_21700DF14();
    MEMORY[0x21CE9F490](v23, v25);

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216BC8BF0()
{
  OUTLINED_FUNCTION_49();
  v54 = sub_217006044();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = sub_217006064();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v55 = v0;
  sub_21700C0E4();
  OUTLINED_FUNCTION_31_2(v17, 1, v18);
  if (v25)
  {
    sub_216697664(v17, &qword_27CAB74E8, &qword_217030A40);
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v20 + 32))(v24, v17, v18);
    sub_217006054();
    sub_217006034();
    v27 = sub_2170061B4();
    v29 = v28;
    (*(v2 + 8))(v6, v54);
    (*(v9 + 8))(v13, v7);
    sub_21693776C();
    v26 = v30;
    v9 = *(v30 + 16);
    v31 = *(v30 + 24);
    if (v9 >= v31 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v31);
      sub_21693776C();
      v26 = v52;
    }

    (*(v20 + 8))(v24, v18);
    *(v26 + 16) = v9 + 1;
    v32 = v26 + 16 * v9;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
  }

  v33 = v55;
  v34 = sub_216BC9014();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_0();
      sub_21693776C();
      v26 = v48;
    }

    v9 = *(v26 + 16);
    v38 = *(v26 + 24);
    if (v9 >= v38 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v38);
      sub_21693776C();
      v26 = v49;
    }

    *(v26 + 16) = v9 + 1;
    v39 = v26 + 16 * v9;
    *(v39 + 32) = v36;
    *(v39 + 40) = v37;
  }

  sub_21700C1D4();
  if (v40)
  {
    OUTLINED_FUNCTION_1_118();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_0();
      sub_21693776C();
      v26 = v50;
    }

    v42 = *(v26 + 16);
    v41 = *(v26 + 24);
    if (v42 >= v41 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v41);
      sub_21693776C();
      v26 = v51;
    }

    *(v26 + 16) = v42 + 1;
    v43 = v26 + 16 * v42;
    *(v43 + 32) = v9;
    *(v43 + 40) = v33;
  }

  else if (!*(v26 + 16))
  {

    goto LABEL_21;
  }

  v56 = v26;
  v44 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
  OUTLINED_FUNCTION_4_106();
  sub_2166D9530(v46, &qword_27CAB74F8, &unk_217017160, v47);
  sub_21700E454();
  OUTLINED_FUNCTION_1_118();

LABEL_21:
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216BC9014()
{
  v2 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v42 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50B8, &qword_21704FF98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490, &qword_217023788);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498, &unk_217023790);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  sub_21700C1A4();
  OUTLINED_FUNCTION_31_2(v11, 1, v12);
  if (v22)
  {
    sub_216697664(v11, &qword_27CABB490, &qword_217023788);
  }

  else
  {
    (*(v14 + 32))(v21, v11, v12);
    if (sub_216E9A354())
    {
      (*(v14 + 8))(v21, v12);
    }

    else
    {
      v39 = v14;
      v40 = v0;
      v23 = *(v14 + 16);
      v38 = v21;
      v23(v18, v21, v12);
      sub_2166D9530(&qword_27CABB4C0, &qword_27CABB498, &unk_217023790, MEMORY[0x277CD7CA0]);
      sub_21700E754();
      v24 = *(v41 + 36);
      OUTLINED_FUNCTION_3_15();
      sub_2166D9530(v25, &qword_27CABB498, &unk_217023790, v26);
      v27 = (v42 + 16);
      v28 = (v42 + 8);
      for (i = 0.0; ; i = i + v34)
      {
        sub_21700EC94();
        if (*&v7[v24] == v43[0])
        {
          break;
        }

        v30 = sub_21700ECE4();
        (*v27)(v1);
        v30(v43, 0);
        sub_21700ECA4();
        v31 = sub_21700C2D4();
        v33 = v32;
        (*v28)(v1, v2);
        v34 = *&v31;
        if (v33)
        {
          v34 = 0.0;
        }
      }

      sub_216697664(v7, &qword_27CAC50B8, &qword_21704FF98);
      v35 = sub_21700C0D4();
      sub_2167C68C0(v35, 0, *&i, 0);
      OUTLINED_FUNCTION_1_118();
      (*(v39 + 8))(v38, v12);
    }
  }

  return OUTLINED_FUNCTION_8();
}

void sub_216BC9424()
{
  OUTLINED_FUNCTION_49();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_119_1();
  v4 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v78 = sub_21700C254();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v77 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50C0, &qword_21704FFA0);
  OUTLINED_FUNCTION_36(v16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50C8, qword_21704FFA8);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - v24;
  sub_21700C194();
  OUTLINED_FUNCTION_31_2(v19, 1, v20);
  if (v26)
  {
    sub_216697664(v19, &qword_27CAC50C0, &qword_21704FFA0);
    v27 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v75 = v12;
  v72 = v6;
  v70 = v0;
  (*(v22 + 32))(v25, v19, v20);
  OUTLINED_FUNCTION_3_15();
  sub_2166D9530(v28, v29, v30, v31);
  v32 = sub_21700EC74();
  v33 = MEMORY[0x277D84F90];
  v71 = v1;
  v73 = v25;
  v74 = v20;
  v69 = v22;
  if (!v32)
  {
LABEL_11:
    v79 = v33;
    sub_216983738(291);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    OUTLINED_FUNCTION_4_106();
    v47 = sub_2166D9530(v45, &qword_27CAB74F8, &unk_217017160, v46);
    v48 = OUTLINED_FUNCTION_28_33(v47);
    v50 = v49;

    sub_21693776C();
    v27 = v51;
    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      OUTLINED_FUNCTION_46_7(v52);
      sub_21693776C();
      v27 = v66;
    }

    v6 = v72;
    (*(v69 + 8))(v73, v74);
    *(v27 + 16) = v53 + 1;
    v54 = v27 + 16 * v53;
    *(v54 + 32) = v48;
    *(v54 + 40) = v50;
    v1 = v71;
LABEL_14:
    sub_21700C0E4();
    OUTLINED_FUNCTION_31_2(v1, 1, v4);
    if (v26)
    {
      sub_216697664(v1, &qword_27CAB74E8, &qword_217030A40);
      if (!*(v27 + 16))
      {

LABEL_26:
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_26();
        return;
      }
    }

    else
    {
      (*(v6 + 32))(v10, v1, v4);
      if (qword_27CAB5F30 != -1)
      {
        OUTLINED_FUNCTION_14_56(&qword_27CAB5F30);
      }

      v55 = qword_27CAC5088;
      v56 = sub_217006134();
      v57 = [v55 stringFromDate_];

      sub_21700E514();
      OUTLINED_FUNCTION_1_118();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_21693776C();
        v27 = v64;
      }

      v59 = *(v27 + 16);
      v58 = *(v27 + 24);
      if (v59 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_46_7(v58);
        sub_21693776C();
        v27 = v65;
      }

      (*(v6 + 8))(v10, v4);
      *(v27 + 16) = v59 + 1;
      v60 = v27 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v56;
    }

    v79 = v27;
    sub_216983738(293);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    OUTLINED_FUNCTION_4_106();
    v63 = sub_2166D9530(v61, &qword_27CAB74F8, &unk_217017160, v62);
    OUTLINED_FUNCTION_28_33(v63);
    OUTLINED_FUNCTION_1_118();

    goto LABEL_26;
  }

  v34 = v32;
  v80 = MEMORY[0x277D84F90];
  sub_2166F4258();
  v33 = v80;
  sub_21700EC54();
  if ((v34 & 0x8000000000000000) == 0)
  {
    v67 = v10;
    v68 = v4;
    v35 = (v75 + 2);
    ++v75;
    v76 = v35;
    do
    {
      v36 = sub_21700ECE4();
      v37 = v77;
      v38 = v78;
      (*v76)(v77);
      v36(&v79, 0);
      v39 = sub_21700C244();
      v41 = v40;
      (*v75)(v37, v38);
      v80 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_46_7(v42);
        sub_2166F4258();
        v33 = v80;
      }

      *(v33 + 16) = v43 + 1;
      v44 = v33 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      sub_21700ECA4();
      --v34;
    }

    while (v34);
    v10 = v67;
    v4 = v68;
    goto LABEL_11;
  }

  __break(1u);
}

void sub_216BC9AA4()
{
  OUTLINED_FUNCTION_49();
  v0 = sub_21700BEB4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_77();
  v56 = v4 - v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v8 = v47 - v7;
  v9 = sub_21700C104();
  if (!v9)
  {
    goto LABEL_62;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v12 = *(v2 + 16);
  v11 = v2 + 16;
  v13 = *(v11 + 64);
  v47[1] = v9;
  v14 = v9 + ((v13 + 32) & ~v13);
  v53 = *(v11 + 56);
  v54 = v12;
  v15 = (v11 + 16);
  v16 = (v11 + 72);
  v52 = *MEMORY[0x277CD7FD8];
  v51 = *MEMORY[0x277CD7FD0];
  v50 = *MEMORY[0x277CD7FE8];
  v49 = *MEMORY[0x277CD7FE0];
  v55 = v11;
  v48 = (v11 - 8);
  v17 = MEMORY[0x277D84F90];
  do
  {
    v54(v8, v14, v0);
    v18 = v56;
    (*v15)(v56, v8, v0);
    v19 = (*v16)(v18, v0);
    if (v19 == v52)
    {
      v20 = 0;
    }

    else if (v19 == v51)
    {
      v20 = 1;
    }

    else if (v19 == v50)
    {
      v20 = 2;
    }

    else
    {
      if (v19 != v49)
      {
        (*v48)(v56, v0);
        goto LABEL_17;
      }

      v20 = 3;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_29_0();
      sub_216938690(v23, v24, v25, v17);
      v17 = v26;
    }

    v22 = *(v17 + 16);
    v21 = *(v17 + 24);
    if (v22 >= v21 >> 1)
    {
      v27 = OUTLINED_FUNCTION_46_7(v21);
      sub_216938690(v27, v22 + 1, 1, v17);
      v17 = v28;
    }

    *(v17 + 16) = v22 + 1;
    *(v17 + v22 + 32) = v20;
LABEL_17:
    v14 += v53;
    --v10;
  }

  while (v10);

LABEL_21:
  v57 = v17;
  v29 = *(v17 + 16);
  sub_21700DF14();
  v30 = (v17 + 32);
  while (2)
  {
    if (!v29)
    {

LABEL_62:
      OUTLINED_FUNCTION_26();
      return;
    }

    switch(*v30)
    {
      case 1:
        OUTLINED_FUNCTION_13_57();
        goto LABEL_26;
      case 3:

        goto LABEL_30;
      case 4:
        OUTLINED_FUNCTION_12_60();
        goto LABEL_26;
      default:
LABEL_26:
        v31 = sub_21700F7D4();

        ++v30;
        --v29;
        if ((v31 & 1) == 0)
        {
          continue;
        }

LABEL_30:

        v32 = *(v17 + 16);
        if (!v32)
        {
          v33 = 0;
          goto LABEL_61;
        }

        v33 = 0;
        break;
    }

    break;
  }

  while (2)
  {
    if (v33 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v34 = 0x736F4C7365526968;
    switch(*(v17 + 32 + v33))
    {
      case 1:
        v34 = OUTLINED_FUNCTION_13_57();
        goto LABEL_37;
      case 2:

        goto LABEL_42;
      case 3:
        goto LABEL_37;
      case 4:
        OUTLINED_FUNCTION_12_60();
        OUTLINED_FUNCTION_29_36();
        goto LABEL_37;
      default:
        v34 = 0x6D744179626C6F64;
LABEL_37:
        v35 = OUTLINED_FUNCTION_22_41(v34);

        if ((v35 & 1) == 0)
        {
          if (v32 == ++v33)
          {
            v33 = *(v17 + 16);
LABEL_61:
            sub_216DD3CB4(v33);
            goto LABEL_62;
          }

          continue;
        }

LABEL_42:
        v36 = *(v17 + 16);
        if (v36 - 1 == v33)
        {
          goto LABEL_61;
        }

        v37 = v33 + 33;
        while (2)
        {
          v38 = v37 - 32;
          if (v37 - 32 < v36)
          {
            v39 = 0x6D744179626C6F64;
            switch(*(v17 + v37))
            {
              case 1:
                v39 = OUTLINED_FUNCTION_13_57();
                goto LABEL_50;
              case 2:

                goto LABEL_59;
              case 3:
                v39 = 0x736F4C7365526968;
                goto LABEL_50;
              case 4:
                OUTLINED_FUNCTION_12_60();
                OUTLINED_FUNCTION_29_36();
                goto LABEL_50;
              default:
LABEL_50:
                v40 = OUTLINED_FUNCTION_22_41(v39);

                if (v40)
                {
                  goto LABEL_59;
                }

                if (v38 == v33)
                {
                  goto LABEL_58;
                }

                if ((v33 & 0x8000000000000000) != 0)
                {
                  goto LABEL_65;
                }

                v41 = *(v17 + 16);
                if (v33 >= v41)
                {
                  goto LABEL_66;
                }

                if (v38 >= v41)
                {
                  goto LABEL_67;
                }

                v42 = *(v17 + 32 + v33);
                v43 = *(v17 + v37);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_216E15A44();
                  v17 = v46;
                }

                *(v17 + v33 + 32) = v43;
                *(v17 + v37) = v42;
                v57 = v17;
LABEL_58:
                ++v33;
LABEL_59:
                v36 = *(v17 + 16);
                v44 = v37 + 1;
                v45 = v37 - 31;
                ++v37;
                if (v45 != v36)
                {
                  continue;
                }

                if ((v44 - 32) >= v33)
                {
                  goto LABEL_61;
                }

                goto LABEL_68;
            }
          }

          break;
        }

LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_216BCA030@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700C0B4();
  if (!v7)
  {
    v6 = sub_21700C164();
  }

  v8 = v6;
  v9 = v7;
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_17_53();
  *(v5 + 88) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  a1[3] = type metadata accessor for AlbumDetailRecommendedShelvesIntent(0);
  a1[4] = sub_216BCA434();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_216BCA48C(v5, boxed_opaque_existential_1, type metadata accessor for ContentDescriptor);
  type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  return sub_216BCA4E8(v5, type metadata accessor for ContentDescriptor);
}

uint64_t sub_216BCA160()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB548, &unk_21705ED90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  v3 = sub_21700C084();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216A8E8E8(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_216697664(v2, &qword_27CABB548, &unk_21705ED90);
    return sub_21700C2B4();
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_21700C064();
    if (!v8 || (, v9 = sub_21700BFD4(), (v10 & 1) != 0) || v9 < 1)
    {
      v7 = sub_21700C2B4();
    }

    else
    {
      v15[0] = sub_2168811D0(v9);
      v15[1] = v11;
      MEMORY[0x21CE9F490](8238, 0xE200000000000000);
      v12 = sub_21700BFB4();
      if (!v13)
      {
        v12 = sub_21700C014();
      }

      MEMORY[0x21CE9F490](v12);

      v7 = v15[0];
    }

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_216BCA36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalPresentationDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_216BCA3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  [a3 setDateFormat_];
}

unint64_t sub_216BCA434()
{
  result = qword_27CAB6AB0;
  if (!qword_27CAB6AB0)
  {
    type metadata accessor for AlbumDetailRecommendedShelvesIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB6AB0);
  }

  return result;
}

uint64_t sub_216BCA48C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216BCA4E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BCA61C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = sub_21700C764();
  if (!v7)
  {
    v6 = sub_21700C7C4();
  }

  v8 = v6;
  v9 = v7;
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_55();
  *(v5 + 88) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  a1[3] = type metadata accessor for PlaylistDetailRecommendedShelvesIntent(0);
  a1[4] = sub_216BCD190(&qword_27CAB6AC0, type metadata accessor for PlaylistDetailRecommendedShelvesIntent, &unk_217045AC8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21695BC04(v5, boxed_opaque_existential_1);
  type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  return sub_2168F3F20(v5);
}

uint64_t sub_216BCA75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v6);
  v240 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v239 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = OUTLINED_FUNCTION_8_0(v10 - v9);
  v238 = type metadata accessor for ModalPresentationDescriptor(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v244 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18, &unk_217025B60);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  OUTLINED_FUNCTION_36(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E90, &qword_217015358);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v230 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1398, &qword_21703D840);
  v33 = OUTLINED_FUNCTION_36(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  v36 = &v230 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  v40 = &v230 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  OUTLINED_FUNCTION_36(v41);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  v44 = &v230 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_36(v45);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  v48 = &v230 - v47;
  v49 = sub_21700C774();
  v231 = v40;
  if (!v50)
  {
    goto LABEL_7;
  }

  sub_216E13A48(v49, v50, __src);
  if (!__src[1])
  {
    sub_216697664(__src, &qword_27CAB8100, qword_21701B4C0);
LABEL_7:
    v242 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_2167ADC3C(__dst, __src);
  sub_2169379AC();
  v53 = *(v51 + 16);
  v52 = *(v51 + 24);
  v242 = v51;
  if (v53 >= v52 >> 1)
  {
    sub_2169379AC();
    v242 = v229;
  }

  sub_2167ADC98(__dst);
  v54 = v242;
  *(v242 + 16) = v53 + 1;
  memcpy((v54 + 72 * v53 + 32), __src, 0x48uLL);
LABEL_8:
  __dst[0] = sub_21700C7C4();
  __dst[1] = v55;
  sub_21700DF14();
  MEMORY[0x21CE9F490](0x726564616568, 0xE600000000000000);

  v56 = type metadata accessor for PlaylistDetailHeaderLockup(0);
  sub_21700F364();
  v57 = sub_21700C804();
  v58 = (a2 + v56[6]);
  *v58 = v57;
  v58[1] = v59;
  sub_21700C8F4();
  sub_21700C404();
  sub_21700C444();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  sub_216C7CDA8(v48, v44, a2 + v56[12]);
  v64 = sub_21700C664();
  v243 = a1;
  if (v64 == 2 || (v64 & 1) == 0)
  {
    v70 = type metadata accessor for LinkComponentModel(0);
    v233 = a2;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
    v74 = sub_21700C924();
    OUTLINED_FUNCTION_34();
    v76 = *(v75 + 16);
    v76(v29, a1, v74);
    sub_21700D234();
    v77 = OUTLINED_FUNCTION_48(&v29[v22[13]]);
    *&v29[v22[9]] = 0;
    v29[v22[11]] = 0;
    v29[v22[12]] = 0;
    (v76)(v26, a1, v74, v77);
    sub_21700D234();
    OUTLINED_FUNCTION_48(v26 + v22[13]);
    *(v26 + v22[9]) = 0;
    *(v26 + v22[11]) = 1;
    *(v26 + v22[12]) = 0;
    sub_21700C904();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0, &qword_21703D848);
    OUTLINED_FUNCTION_31_2(v36, 1, v78);
    if (v69)
    {
      sub_216697664(v36, &qword_27CAC1398, &qword_21703D840);
    }

    else
    {
      v79 = sub_216E9A4B0();
      OUTLINED_FUNCTION_50();
      (*(v80 + 8))(v36, v78);
      if (!v79)
      {
        v83 = v233 + v56[15];
        __dst[0] = sub_21700C7C4();
        __dst[1] = v84;
        sub_2166C32C0();
        sub_21700F364();
        v85 = (v83 + *(v70 + 24));
        v85[3] = v22;
        OUTLINED_FUNCTION_13();
        v85[4] = sub_2166D9530(v86, &qword_27CAB6E90, v87, v88);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
        sub_2166A6E54(v29, boxed_opaque_existential_1, &qword_27CAB6E90, &qword_217015358);
        v90 = (v83 + *(v70 + 28));
        sub_21700D7A4();
        *v90 = 0;
        v90[1] = 0;
        a2 = v233;
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
        v81 = v83;
        v82 = 0;
LABEL_23:
        __swift_storeEnumTagSinglePayload(v81, v82, 1, v70);
        v95 = v232;
        sub_21700C904();
        OUTLINED_FUNCTION_31_2(v95, 1, v78);
        if (v69)
        {
          OUTLINED_FUNCTION_230();
          sub_216697664(v96, v97, v98);
          OUTLINED_FUNCTION_230();
          sub_216697664(v99, v100, v101);
          v102 = &qword_27CAC1398;
          v103 = &qword_21703D840;
          v104 = v95;
        }

        else
        {
          OUTLINED_FUNCTION_3_15();
          sub_2166D9530(v105, v106, v107, v108);
          v109 = v95;
          sub_21700EC54();
          sub_21700EC94();
          v110 = sub_21700EC84();
          OUTLINED_FUNCTION_50();
          (*(v111 + 8))(v109, v78);
          if (v110 >= 2)
          {
            v112 = a2 + v56[16];
            __dst[0] = sub_21700C7C4();
            __dst[1] = v113;
            sub_2166C32C0();
            sub_21700F364();
            v114 = (v112 + *(v70 + 24));
            v114[3] = v22;
            OUTLINED_FUNCTION_13();
            v114[4] = sub_2166D9530(v115, &qword_27CAB6E90, &qword_217015358, v116);
            v117 = __swift_allocate_boxed_opaque_existential_1(v114);
            sub_21678818C(v26, v117, &qword_27CAB6E90, &qword_217015358);
            sub_216697664(v29, &qword_27CAB6E90, &qword_217015358);
            v118 = (v112 + *(v70 + 28));
            sub_21700D7A4();
            *v118 = 0;
            v118[1] = 0;
            a2 = v233;
            OUTLINED_FUNCTION_38_2();
            __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
            v123 = v112;
            v124 = 0;
LABEL_30:
            __swift_storeEnumTagSinglePayload(v123, v124, 1, v70);
            v128 = v240;
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_230();
          sub_216697664(v125, v126, v127);
          OUTLINED_FUNCTION_230();
        }

        sub_216697664(v104, v102, v103);
        v123 = a2 + v56[16];
        v124 = 1;
        goto LABEL_30;
      }
    }

    a2 = v233;
    v81 = v233 + v56[15];
    v82 = 1;
    goto LABEL_23;
  }

  if (qword_27CAB5F70 != -1)
  {
    swift_once();
  }

  v65 = byte_27CB22A28;
  if (byte_27CB22A28 != 1)
  {
    goto LABEL_32;
  }

  __dst[3] = &unk_28293AC68;
  __dst[4] = sub_2169802AC();
  v66 = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  if ((v66 & 1) == 0)
  {
    goto LABEL_32;
  }

  v67 = v231;
  sub_21700C904();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0, &qword_21703D848);
  OUTLINED_FUNCTION_31_2(v67, 1, v68);
  if (v69)
  {
    sub_216697664(v67, &qword_27CAC1398, &qword_21703D840);
LABEL_32:
    v131 = v56[15];
    v132 = type metadata accessor for LinkComponentModel(0);
    v133 = a2 + v131;
    v134 = 1;
    goto LABEL_33;
  }

  v129 = sub_216E9A4B0();
  OUTLINED_FUNCTION_50();
  (*(v130 + 8))(v67, v68);
  if (v129)
  {
    goto LABEL_32;
  }

  sub_21700C924();
  OUTLINED_FUNCTION_34();
  v215 = v230;
  (*(v214 + 16))(v230, a1);
  sub_21700D234();
  OUTLINED_FUNCTION_48(v215 + v22[13]);
  *(v215 + v22[9]) = 0;
  *(v215 + v22[11]) = 0;
  *(v215 + v22[12]) = 0;
  v216 = a2 + v56[15];
  __dst[0] = sub_21700C7C4();
  __dst[1] = v217;
  v132 = type metadata accessor for LinkComponentModel(0);
  sub_2166C32C0();
  sub_21700F364();
  v218 = (v216 + *(v132 + 24));
  v218[3] = v22;
  OUTLINED_FUNCTION_13();
  v218[4] = sub_2166D9530(v219, v220, v221, v222);
  v223 = __swift_allocate_boxed_opaque_existential_1(v218);
  sub_21678818C(v215, v223, &qword_27CAB6E90, &qword_217015358);
  v224 = (v216 + *(v132 + 28));
  sub_21700D7A4();
  *v224 = 0;
  v224[1] = 0;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v225, v226, v227, v228);
  v133 = v216;
  v134 = 0;
LABEL_33:
  __swift_storeEnumTagSinglePayload(v133, v134, 1, v132);
  type metadata accessor for LinkComponentModel(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v132);
  __dst[3] = v22;
  OUTLINED_FUNCTION_13();
  __dst[4] = sub_2166D9530(v138, v139, v140, v141);
  v142 = __swift_allocate_boxed_opaque_existential_1(__dst);
  sub_21700C924();
  OUTLINED_FUNCTION_34();
  (*(v143 + 16))(v142, a1);
  sub_21700D234();
  OUTLINED_FUNCTION_48(v142 + v22[13]);
  *(v142 + v22[9]) = 0;
  *(v142 + v22[11]) = 0;
  *(v142 + v22[12]) = 1;
  __src[3] = &unk_28293AC68;
  __src[4] = sub_2169802AC();
  LODWORD(v142) = sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(__src);
  if ((v65 & v142) == 1)
  {
    __src[3] = type metadata accessor for ConnectSingDevicesAction(0);
    __src[4] = sub_216BCD190(&qword_27CAC50F0, type metadata accessor for ConnectSingDevicesAction, &unk_217027560);
    __swift_allocate_boxed_opaque_existential_1(__src);
    sub_21700D234();
    sub_216AE2770(__src, __dst);
  }

  v144 = v233;
  sub_21700C904();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0, &qword_21703D848);
  OUTLINED_FUNCTION_31_2(v144, 1, v145);
  v128 = v240;
  if (v69)
  {
    sub_216697664(v144, &qword_27CAC1398, &qword_21703D840);
  }

  else
  {
    v146 = sub_216E9A4B0();
    OUTLINED_FUNCTION_50();
    (*(v147 + 8))(v144, v145);
    if (!v146)
    {
      v150 = a2 + v56[17];
      __src[0] = sub_21700C7C4();
      __src[1] = v151;
      sub_2166C32C0();
      sub_21700F364();
      sub_2166A6E54(__dst, v150 + *(v132 + 24), &qword_27CAB6DB0, &qword_217016C00);
      v152 = (v150 + *(v132 + 28));
      sub_21700D7A4();
      *v152 = 0;
      v152[1] = 0;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
      v148 = v150;
      v149 = 0;
      goto LABEL_41;
    }
  }

  v148 = a2 + v56[17];
  v149 = 1;
LABEL_41:
  __swift_storeEnumTagSinglePayload(v148, v149, 1, v132);
  sub_216697664(__dst, &qword_27CAB6DB0, &qword_217016C00);
LABEL_42:
  v157 = a2;
  *(a2 + v56[7]) = v242;
  v158 = sub_21700C804();
  v160 = v159;
  v161 = sub_21700C774();
  v163 = v162;
  v164 = sub_21700C7A4();
  if (!v165)
  {
    v164 = sub_21700C794();
  }

  v166 = v164;
  v167 = v165;
  v168 = v234;
  sub_21700D234();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v128);
  v172 = v244;
  *v244 = v158;
  v172[1] = v160;
  v172[2] = v161;
  v172[3] = v163;
  v172[4] = v166;
  v172[5] = v167;
  *(v172 + 48) = 8;
  v172[7] = 0;
  *(v172 + 64) = 0;
  v173 = v235;
  sub_2166A6E54(v168, v235, &qword_27CABBE18, &unk_217025B60);
  OUTLINED_FUNCTION_31_2(v173, 1, v128);
  if (v69)
  {
    v175 = v237;
    sub_21700D234();
    sub_216697664(v168, &qword_27CABBE18, &unk_217025B60);
    OUTLINED_FUNCTION_31_2(v173, 1, v128);
    v174 = v239;
    v176 = v157;
    if (!v69)
    {
      sub_216697664(v173, &qword_27CABBE18, &unk_217025B60);
    }
  }

  else
  {
    sub_216697664(v168, &qword_27CABBE18, &unk_217025B60);
    v174 = v239;
    v175 = v237;
    (*(v239 + 32))(v237, v173, v128);
    v176 = v157;
  }

  v177 = v238;
  v178 = v244;
  (*(v174 + 32))(v244 + *(v238 + 40), v175, v128);
  v179 = v236;
  sub_216BCA36C(v178, v236);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v177);
  sub_21678818C(v179, v176 + v56[9], &qword_27CABBE20, qword_217034D80);
  v183 = v241;
  v184 = v243;
  sub_21700C784();
  v185 = sub_216BCC3E4(v183);
  v187 = v186;
  sub_216697664(v183, &qword_27CAB74E8, &qword_217030A40);
  v188 = (v176 + v56[8]);
  *v188 = v185;
  v188[1] = v187;
  v189 = sub_21700C924();
  v190 = sub_2170071D4();
  if (v190)
  {
    v191 = v190;
    v192 = (v176 + v56[13]);
    v193 = type metadata accessor for VideoArtwork(0);
    sub_21700C3F4();
    OUTLINED_FUNCTION_50();
    (*(v194 + 8))(v184, v189);
    *v192 = v191;
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v195, v196, v197, v193);
    v198 = v176;
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v199 + 8))(v184, v189);
    v198 = v176;
    type metadata accessor for VideoArtwork(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v200, v201, v202, v203);
  }

  type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v204, v205, v206, v207);
  sub_21700D7A4();
  OUTLINED_FUNCTION_38_2();
  result = __swift_storeEnumTagSinglePayload(v208, v209, v210, v211);
  v213 = (v198 + v56[11]);
  *v213 = 0;
  v213[1] = 0;
  *(v198 + v56[10]) = 0;
  *(v198 + v56[18]) = 10;
  return result;
}

uint64_t sub_216BCB944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v136 = a5;
  v130 = a4;
  v134 = a3;
  v137 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB810, &qword_217024130);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v135 = v10;
  v139 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  v129 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5098, &qword_21704FF80);
  OUTLINED_FUNCTION_36(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v17);
  v133 = sub_21700BEC4();
  OUTLINED_FUNCTION_1();
  v126 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v21);
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v140 = v22;
  v141 = v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  OUTLINED_FUNCTION_36(v27);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v124 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_36(v31);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = &v124 - v33;
  v142 = sub_21700C874();
  v143 = v35;
  v36 = type metadata accessor for PlaylistTrackLockup(0);
  sub_2166C32C0();
  sub_21700F364();
  OUTLINED_FUNCTION_48(a6 + v36[6]);
  v37 = sub_21700C8B4();
  v38 = (a6 + v36[7]);
  *v38 = v37;
  v38[1] = v39;
  v40 = a1;
  sub_21700C8C4();
  sub_21700C404();
  sub_21700C444();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  sub_216C7CDA8(v34, v30, a6 + v36[24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978, &unk_2170239B0);
  v45 = swift_allocObject();
  v138 = xmmword_217013DA0;
  *(v45 + 16) = xmmword_217013DA0;
  v46 = sub_21700C844();
  v48 = v47;
  sub_217006214();
  v49 = sub_2170061F4();
  v51 = v50;
  v52 = *(v141 + 8);
  v131 = v26;
  v53 = v26;
  v54 = v52;
  v141 += 8;
  v52(v53, v140);
  *(v45 + 32) = v49;
  *(v45 + 40) = v51;
  *(v45 + 48) = v46;
  *(v45 + 56) = v48;
  *(v45 + 64) = 0u;
  *(v45 + 80) = 0u;
  *(v45 + 96) = 0;
  *(a6 + v36[8]) = v45;
  v55 = v40;
  v56 = sub_21700C834();
  if (v57)
  {
    v58 = v56;
    v59 = v57;
    v60 = swift_allocObject();
    *(v60 + 16) = v138;
    v61 = a6;
    v62 = v131;
    sub_217006214();
    v63 = sub_2170061F4();
    v65 = v64;
    v66 = v62;
    a6 = v61;
    v54(v66, v140);
    *(v60 + 32) = v63;
    *(v60 + 40) = v65;
    *(v60 + 48) = v58;
    *(v60 + 56) = v59;
    *(v60 + 64) = 0u;
    *(v60 + 80) = 0u;
    *(v60 + 96) = 0;
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  *(a6 + v36[9]) = v60;
  v67 = v132;
  v68 = v55;
  sub_21700C854();
  v69 = v133;
  OUTLINED_FUNCTION_31_2(v67, 1, v133);
  v70 = v139;
  if (v71)
  {
    sub_216697664(v67, &qword_27CAC5098, &qword_21704FF80);
    *(a6 + v36[11]) = 0;
    v72 = v135;
  }

  else
  {
    v73 = v126;
    v74 = *(v126 + 32);
    v75 = v124;
    v74(v124, v67, v69);
    v76 = v125;
    v74(v125, v75, v69);
    v77 = v76;
    v78 = (*(v73 + 88))(v76, v69);
    v79 = v36[11];
    v72 = v135;
    if (v78 == *MEMORY[0x277CD8000])
    {
      *(a6 + v79) = 1;
    }

    else
    {
      *(a6 + v79) = 0;
      (*(v73 + 8))(v77, v69);
    }

    v70 = v139;
  }

  sub_21700D7A4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = COERCE_DOUBLE(sub_21700C8D4());
  v86 = v36[10];
  if (v85)
  {
    *(a6 + v86) = v84;
  }

  else
  {
    *(a6 + v86) = v84 * 1000.0;
  }

  *(a6 + v86 + 8) = v85 & 1;
  *(a6 + v36[12]) = 0;
  *(a6 + v36[13]) = v134 & 1;
  sub_21700C8A4();
  OUTLINED_FUNCTION_31_2(v72, 1, v70);
  if (v71)
  {
    sub_216697664(v72, &qword_27CABB810, &qword_217024130);
  }

  else
  {
    v87 = v129;
    v88 = *(v129 + 32);
    v89 = v127;
    v88(v127, v72, v70);
    v90 = v128;
    v88(v128, v89, v70);
    v91 = (*(v87 + 88))(v90, v70);
    v92 = *MEMORY[0x277CD8540];
    (*(v87 + 8))(v90, v70);
    if (v91 == v92)
    {
      v93 = 1;
      goto LABEL_20;
    }
  }

  v93 = 0;
LABEL_20:
  *(a6 + v36[18]) = v93;
  v94 = (a6 + v36[22]);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50E0, &qword_21704FFE8);
  v94[3] = v95;
  v94[4] = sub_2166D9530(&qword_27CAC50E8, &qword_27CAC50E0, &qword_21704FFE8, &unk_2170245A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
  v97 = sub_21700C8E4();
  v98 = *(v97 - 8);
  (*(v98 + 16))(boxed_opaque_existential_1, v68, v97);
  v99 = *(v95 + 52);
  v100 = sub_21700C924();
  v101 = *(v100 - 8);
  v102 = boxed_opaque_existential_1 + v99;
  v103 = v137;
  (*(v101 + 16))(v102, v137, v100);
  sub_21700D234();
  v104 = OUTLINED_FUNCTION_48(boxed_opaque_existential_1 + *(v95 + 60));
  if (v136)
  {
    (*(v101 + 8))(v103, v100, v104);
    (*(v98 + 8))(v68, v97);
    v105 = (a6 + v36[14]);
    *v105 = 0;
    v105[1] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
    inited = swift_initStackObject();
    v107 = MEMORY[0x277D83B88];
    *(inited + 16) = v138;
    v108 = MEMORY[0x277D83C10];
    *(inited + 56) = v107;
    *(inited + 64) = v108;
    *(inited + 32) = v130;
    v109 = sub_216983808(23, inited);
    v111 = v110;
    (*(v101 + 8))(v103, v100);
    (*(v98 + 8))(v68, v97);
    v112 = (a6 + v36[14]);
    *v112 = v109;
    v112[1] = v111;
  }

  *&v113 = OUTLINED_FUNCTION_48(a6 + v36[20]);
  v114 = a6 + v36[19];
  *(v114 + 32) = 0;
  *v114 = v113;
  *(v114 + 16) = v113;
  *(a6 + v36[15]) = 0;
  *(a6 + v36[16]) = 0;
  v115 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
  OUTLINED_FUNCTION_48(a6 + v36[21]);
  OUTLINED_FUNCTION_38_2();
  result = __swift_storeEnumTagSinglePayload(v119, v120, v121, v115);
  v123 = (a6 + v36[23]);
  *v123 = 0;
  v123[1] = 0;
  return result;
}

uint64_t sub_216BCC2D0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21700C764();
  if (!v4)
  {
    v3 = sub_21700C7C4();
  }

  v5 = v3;
  v6 = v4;
  v7 = type metadata accessor for ContentDescriptor(0);
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_15_55();
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  OUTLINED_FUNCTION_41();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
}

void sub_216BCC378()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_21700E4D4();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_27CAC50D8 = v0;
}

uint64_t sub_216BCC3E4(uint64_t a1)
{
  v119 = a1;
  v116 = sub_217005B54();
  OUTLINED_FUNCTION_1();
  v115 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v4);
  v5 = sub_217006304();
  OUTLINED_FUNCTION_1();
  v117 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v103 - v13;
  v15 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v103 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v103 - v26;
  sub_2166A6E54(v119, v14, &qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_31_2(v14, 1, v15);
  if (v28)
  {
    sub_216697664(v14, &qword_27CAB74E8, &qword_217030A40);
    return 0;
  }

  v119 = v5;
  (*(v17 + 32))(v27, v14, v15);
  sub_2170062D4();
  (*(v17 + 16))(v24, v27, v15);
  sub_2170061A4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50F8, &unk_21704FFF0);
  v30 = sub_2170062F4();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  v34 = *(v33 + 72);
  v113 = v27;
  v35 = *(v31 + 80);
  v112 = v15;
  v36 = v10;
  v37 = (v35 + 32) & ~v35;
  v108 = v34;
  v109 = v29;
  v38 = swift_allocObject();
  v111 = xmmword_217013DA0;
  *(v38 + 16) = xmmword_217013DA0;
  v39 = *MEMORY[0x277CC9940];
  v40 = *(v32 + 104);
  v110 = v30;
  v107 = v40;
  v40(v38 + v37, v39, v30);
  sub_216F0FA7C(v38);
  v41 = v118;
  sub_2170062B4();

  v42 = sub_217005B14();
  if (v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v42;
  }

  if (v44 > 2)
  {
    OUTLINED_FUNCTION_67();
    v55(v41, v116);
    v56 = *(v17 + 8);
    v57 = v112;
    v56(v21, v112);
    v56(v24, v57);
    OUTLINED_FUNCTION_67();
    v58(v36, v119);
    v56(v113, v57);
    return 0;
  }

  v105 = v21;
  v106 = v24;
  v104 = v17;
  v45 = v112;
  if (v44 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
    inited = swift_initStackObject();
    v47 = MEMORY[0x277D83B88];
    *(inited + 16) = v111;
    v48 = MEMORY[0x277D83C10];
    *(inited + 56) = v47;
    *(inited + 64) = v48;
    *(inited + 32) = v44;
    sub_216983808(36, inited);
    OUTLINED_FUNCTION_17_54();
    OUTLINED_FUNCTION_67();
    v49(v118, v116);
    v50 = *(v104 + 8);
    v51 = OUTLINED_FUNCTION_21_46(v120);
    v50(v51);
    v52 = OUTLINED_FUNCTION_21_46(v121);
    v50(v52);
    OUTLINED_FUNCTION_67();
    v53(v36, v119);
    v54 = OUTLINED_FUNCTION_21_46(v122);
    v50(v54);
    return v44;
  }

  v60 = swift_allocObject();
  *(v60 + 16) = v111;
  v107(v60 + v37, *MEMORY[0x277CC9968], v110);
  sub_216F0FA7C(v60);
  v61 = v114;
  v62 = v106;
  v63 = v105;
  sub_2170062B4();

  v44 = v61;
  v64 = sub_217005B24();
  if (v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = v64;
  }

  v67 = v45;
  if (v66 <= 1)
  {
    v68 = v104;
    v69 = v113;
    if ((v66 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
      v70 = swift_initStackObject();
      v71 = MEMORY[0x277D83B88];
      *(v70 + 16) = v111;
      v72 = MEMORY[0x277D83C10];
      *(v70 + 56) = v71;
      *(v70 + 64) = v72;
      *(v70 + 32) = v66;
      sub_216983808(33, v70);
      OUTLINED_FUNCTION_17_54();
      v74 = *(*(v73 - 256) + 8);
      v75 = v63;
      v76 = v116;
      v74(v114, v116);
      v74(v118, v76);
      v77 = *(v68 + 8);
      v77(v75, v67);
      v78 = OUTLINED_FUNCTION_59_12(v121);
      (v77)(v78);
      v79 = OUTLINED_FUNCTION_14_57();
      v80(v79);
      v81 = OUTLINED_FUNCTION_59_12(v122);
      (v77)(v81);
      return v44;
    }

    v97 = *(v115 + 8);
    v98 = v116;
    v97(v114, v116);
    v97(v118, v98);
    v99 = *(v68 + 8);
    v99(v63, v67);
    v100 = OUTLINED_FUNCTION_59_12(v121);
    (v99)(v100);
    v101 = OUTLINED_FUNCTION_14_57();
    v102(v101);
    v99(v69, v67);
    return 0;
  }

  v82 = v104;
  if (qword_27CAB5F38 != -1)
  {
    swift_once();
  }

  v83 = qword_27CAC50D8;
  v84 = sub_217006134();
  v85 = [v83 stringFromDate_];

  v44 = sub_21700E514();
  v87 = v86;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
  v88 = swift_initStackObject();
  *(v88 + 16) = v111;
  *(v88 + 56) = MEMORY[0x277D837D0];
  *(v88 + 64) = sub_2167C6E08();
  *(v88 + 32) = v44;
  *(v88 + 40) = v87;
  sub_216983808(34, v88);
  OUTLINED_FUNCTION_17_54();
  v90 = *(*(v89 - 256) + 8);
  v90(v114, v116);
  v91 = OUTLINED_FUNCTION_21_46(&v123);
  (v90)(v91);
  v92 = *(v82 + 8);
  v93 = OUTLINED_FUNCTION_59_12(v120);
  v92(v93);
  (v92)(v62, v67);
  v94 = OUTLINED_FUNCTION_14_57();
  v95(v94);
  v96 = OUTLINED_FUNCTION_59_12(v122);
  v92(v96);
  return v44;
}

id sub_216BCCD48()
{
  v0 = sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v42 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13B0, &unk_21703D850);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1398, &qword_21703D840);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC13A0, &qword_21703D848);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  sub_21700C904();
  OUTLINED_FUNCTION_31_2(v13, 1, v14);
  if (v24)
  {
    sub_216697664(v13, &qword_27CAC1398, &qword_21703D840);
    return 0;
  }

  (*(v16 + 32))(v23, v13, v14);
  if (sub_216E9A4B0())
  {
    (*(v16 + 8))(v23, v14);
    return 0;
  }

  v40 = v23;
  v41 = v16;
  (*(v16 + 16))(v20, v23, v14);
  sub_2166D9530(&qword_27CAC13A8, &qword_27CAC13A0, &qword_21703D848, MEMORY[0x277CD7CA0]);
  sub_21700E754();
  v26 = *(v6 + 36);
  OUTLINED_FUNCTION_3_15();
  sub_2166D9530(v27, &qword_27CAC13A0, &qword_21703D848, v28);
  v29 = (v42 + 16);
  v30 = (v42 + 8);
  for (i = 0.0; ; i = i + v36)
  {
    sub_21700EC94();
    if (*&v9[v26] == v43[0])
    {
      break;
    }

    v32 = sub_21700ECE4();
    (*v29)(v5);
    v32(v43, 0);
    sub_21700ECA4();
    v33 = sub_21700C8D4();
    v35 = v34;
    (*v30)(v5, v0);
    v36 = *&v33;
    if (v35)
    {
      v36 = 0.0;
    }
  }

  sub_216697664(v9, &qword_27CAC13B0, &unk_21703D850);
  v37 = v40;
  sub_21700EC54();
  sub_21700EC94();
  v38 = sub_21700EC84();
  v25 = sub_2167C68C0(v38, 0, *&i, 0);
  (*(v41 + 8))(v37, v14);
  return v25;
}

uint64_t sub_216BCD190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_216BCD1F4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v58 = v2;
  v3 = type metadata accessor for GradientListRowView(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v57 = v5;
  v56[1] = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5118, &qword_217050050) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5120, &qword_217050058) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5128, &qword_217050060) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v56[0] = v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5130, &qword_217050068) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = v56 - v22;
  *v12 = sub_2170093C4();
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5138, &qword_217050070);
  sub_216BCD700(v1, &v12[*(v24 + 44)]);
  v25 = sub_217009C84();
  sub_217007F24();
  v26 = &v12[*(v9 + 44)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v12, v16, &qword_27CAC5118, &qword_217050050);
  memcpy(&v16[*(v13 + 44)], v59, 0x70uLL);
  v31 = sub_21700B354();
  v33 = v32;
  sub_216BD0528(v1, v8);
  v34 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v35 = swift_allocObject();
  sub_216BD0580(v8, v35 + v34);
  v36 = sub_216BCF0C4();
  LOBYTE(v1) = sub_217009C84();
  v37 = v16;
  v38 = v56[0];
  sub_2167C5834(v37, v56[0], &qword_27CAC5120, &qword_217050058);
  v39 = v38 + *(v17 + 44);
  *v39 = sub_216BCFB18;
  *(v39 + 8) = v35;
  *(v39 + 16) = v36;
  *(v39 + 24) = v1;
  *(v39 + 32) = v31;
  *(v39 + 40) = v33;
  v40 = &v23[*(v20 + 44)];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  v42 = &v40[*(v41 + 36)];
  v43 = *(sub_217008B44() + 20);
  v44 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v45 + 104))(&v42[v43], v44);
  __asm { FMOV            V0.2D, #14.0 }

  *v42 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v51 = qword_280E73AA0;
  v52 = byte_280E73AA8;
  v53 = qword_280E73AB0;
  v54 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5140, &unk_217050078) + 36)];
  sub_216BD0528(v42, v54);
  *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
  sub_2167C5834(v38, v23, &qword_27CAC5128, &qword_217050060);
  *v40 = v51;
  v40[8] = v52;
  *(v40 + 2) = v53;
  v55 = &v40[*(v41 + 40)];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  sub_2167C5834(v23, v58, &qword_27CAC5130, &qword_217050068);

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216BCD700@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5148, &qword_2170500B8);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for GradientListRowView(0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5150, &qword_2170500C0);
  MEMORY[0x28223BE20](v10);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5158, &qword_2170500C8);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v37 = *a1;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5160, &qword_2170500D0);
  sub_2166D9530(&qword_27CAC5168, &qword_27CAC5160, &qword_2170500D0, MEMORY[0x277D83980]);
  sub_2170075C4();
  swift_getKeyPath();
  v15 = a1;
  sub_216BD0528(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v17 = swift_allocObject();
  sub_216BD0580(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_216BCFBCC;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5170, &unk_2170500F8);
  sub_2166D9530(&qword_27CAC5178, &qword_27CAC5150, &qword_2170500C0, MEMORY[0x277D7EC38]);
  sub_216BCFC98();
  v19 = v14;
  v30 = v14;
  sub_21700B154();
  *v7 = sub_2170091A4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5188, &qword_217050108);
  sub_216BCDD48(v15, &v7[*(v20 + 44)]);
  v21 = v32;
  v22 = v33;
  v23 = *(v32 + 16);
  v24 = v34;
  v23(v33, v19, v34);
  v25 = v35;
  sub_216683A80(v7, v35, &qword_27CAC5148, &qword_2170500B8);
  v26 = v36;
  v23(v36, v22, v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5190, &qword_217050110);
  sub_216683A80(v25, &v26[*(v27 + 48)], &qword_27CAC5148, &qword_2170500B8);
  sub_2166997CC(v7, &qword_27CAC5148, &qword_2170500B8);
  v28 = *(v21 + 8);
  v28(v30, v24);
  sub_2166997CC(v25, &qword_27CAC5148, &qword_2170500B8);
  return (v28)(v22, v24);
}

uint64_t sub_216BCDBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_21700DF14();
  v11 = sub_217009D34();
  v12 = swift_getKeyPath();
  v16 = 0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = 2;
  LOBYTE(__src[6]) = 0;
  __src[7] = v12;
  __src[8] = v11;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C48, &qword_217030690);
  sub_21699188C();
  sub_21700A304();
  memcpy(__dst, __src, sizeof(__dst));
  sub_2166997CC(__dst, &qword_27CAB8C48, &qword_217030690);
  v13 = 1.0 - 1.0 / *(*a4 + 16) * a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5170, &unk_2170500F8);
  *(a5 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_216BCDD48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v86 = a2;
  v79 = sub_217009354();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for GradientListRowView(0);
  v70 = *(v81 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v81);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5198, &qword_217050118);
  MEMORY[0x28223BE20](v73);
  v72 = &v70 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51A0, &qword_217050120);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v70 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51A8, &qword_217050128);
  MEMORY[0x28223BE20](v83);
  v82 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51B0, &unk_217050130);
  v84 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v80 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9328, &qword_21701C9C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v70 - v11);
  v13 = type metadata accessor for ShareAccessoryButton(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51B8, &unk_217050140);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  v22 = *(type metadata accessor for GradientListRowModel(0) + 32);
  v23 = a1;
  sub_216683A80(a1 + v22, &v89, &qword_27CAB8E60, qword_21701BCD0);
  if (!v91)
  {
    sub_2166997CC(&v89, &qword_27CAB8E60, qword_21701BCD0);
LABEL_12:
    v61 = v21;
    v62 = 1;
    v63 = v8;
    goto LABEL_13;
  }

  v85 = v8;
  v24 = v89;
  sub_2168269C4(&v89);
  v25 = v24 == 2;
  v8 = v85;
  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = a1 + v22;
  v27 = a1;
  sub_216683A80(v26, &v89, &qword_27CAB8E60, qword_21701BCD0);
  if (!v91)
  {
    sub_2166997CC(&v89, &qword_27CAB8E60, qword_21701BCD0);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    goto LABEL_10;
  }

  sub_216826960(&v89 + 8, v88);
  sub_2168269C4(&v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
  v28 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v28 ^ 1u, 1, v13);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
LABEL_10:
    v64 = &qword_27CAB9328;
    v65 = &qword_21701C9C0;
    v66 = v12;
LABEL_11:
    sub_2166997CC(v66, v64, v65);
    v8 = v85;
    goto LABEL_12;
  }

  v29 = v15;
  sub_216BD0580(v12, v15);
  sub_216683A80(&v15[*(v13 + 24)], &v89, &qword_27CAB6DB0, &qword_217016C00);
  if (!*(&v90 + 1))
  {
    sub_216BCFD60(v15);
    v64 = &qword_27CAB6DB0;
    v65 = &qword_217016C00;
    v66 = &v89;
    goto LABEL_11;
  }

  sub_2166A0F18(&v89, v88);
  v30 = v71;
  sub_216BD0528(v23, v71);
  sub_2167B7D58(v88, &v89);
  v31 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v32 = (v4 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_216BD0580(v30, v33 + v31);
  v34 = sub_2166A0F18(&v89, v33 + v32);
  MEMORY[0x28223BE20](v34);
  *(&v70 - 2) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51C8, &qword_217050158);
  sub_216BCFE44();
  v35 = v72;
  sub_21700AF14();
  v71 = v29;
  v36 = v27 + *(v81 + 24);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v89) = v37;
  *(&v89 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  LOBYTE(v31) = v87;
  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v31;
  v41 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51E8, &qword_2170501A0) + 36));
  *v41 = KeyPath;
  v41[1] = sub_2167D2420;
  v41[2] = v40;
  v42 = [objc_opt_self() labelColor];
  v43 = sub_21700AC44();
  v44 = swift_getKeyPath();
  v45 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51F0, &qword_2170501D8) + 36));
  *v45 = v44;
  v45[1] = v43;
  v46 = sub_217009E54();
  v47 = swift_getKeyPath();
  v48 = v73;
  v49 = (v35 + *(v73 + 36));
  *v49 = v47;
  v49[1] = v46;
  sub_217009D94();
  v50 = sub_216BCFFB4();
  v51 = v74;
  sub_21700A304();
  sub_2166997CC(v35, &qword_27CAC5198, &qword_217050118);
  v52 = v77;
  sub_217009344();
  *&v89 = v48;
  *(&v89 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  sub_216BD0BCC(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v53 = v82;
  v54 = v76;
  v55 = v79;
  sub_21700A364();
  (*(v78 + 8))(v52, v55);
  (*(v75 + 8))(v51, v54);
  v56 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5220, &qword_217050218) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60, &qword_217050220);
  sub_217008BE4();
  *v56 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v57 = (v53 + *(v83 + 36));
  v58 = v90;
  *v57 = v89;
  v57[1] = v58;
  v57[2] = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420, &unk_21706D110);
  sub_216BD0208();
  sub_2166D9530(&qword_280E2A5E0, &qword_27CABA420, &unk_21706D110, MEMORY[0x277CDEFF0]);
  v59 = v80;
  sub_21700A944();
  sub_2166997CC(v53, &qword_27CAC51A8, &qword_217050128);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  sub_216BCFD60(v71);
  v60 = v85;
  (*(v84 + 32))(v21, v59, v85);
  v61 = v21;
  v62 = 0;
  v63 = v60;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v61, v62, 1, v63);
  sub_216683A80(v21, v18, &qword_27CAC51B8, &unk_217050140);
  v67 = v86;
  *v86 = 0;
  *(v67 + 8) = 1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51C0, &qword_217050150);
  sub_216683A80(v18, v67 + *(v68 + 48), &qword_27CAC51B8, &unk_217050140);
  sub_2166997CC(v21, &qword_27CAC51B8, &unk_217050140);
  return sub_2166997CC(v18, &qword_27CAC51B8, &unk_217050140);
}

uint64_t sub_216BCE900(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GradientListRowView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = v2 + *(v5 + 32);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v22[0]) = v13;
  *(&v22[0] + 1) = v14;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEC4();
  v15 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  sub_216BD0528(v2, v8);
  sub_2167B7D58(a1, v22);
  sub_21700EA34();
  v16 = sub_21700EA24();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_216BD0580(v8, v19 + v17);
  sub_2166A0F18(v22, v19 + v18);
  sub_21677E228(0, 0, v11, &unk_2170502A8, v19);
}

uint64_t sub_216BCEB38(uint64_t a1, double a2)
{
  v3 = sub_21700ADC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5238, &qword_217050260);
  MEMORY[0x28223BE20](v7);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC51E0, &unk_217050160);
  MEMORY[0x28223BE20](v10);
  v12 = &v28[-v11];
  v13 = (a1 + *(type metadata accessor for GradientListRowView(0) + 24));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v29) = v14;
  v30 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  if (v28[15] == 1)
  {
    sub_217008294();
    v16 = [objc_opt_self() labelColor];
    v17 = sub_21700AC44();
    KeyPath = swift_getKeyPath();
    v29 = v17;
    v19 = sub_2170083D4();
    v20 = &v12[*(v10 + 36)];
    *v20 = KeyPath;
    v20[1] = v19;
    sub_216683A80(v12, v9, &qword_27CAC51E0, &unk_217050160);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FA8, &unk_217041898);
    sub_216BCFED0();
    sub_216ADD68C();
    sub_217009554();
    return sub_2166997CC(v12, &qword_27CAC51E0, &unk_217050160);
  }

  else
  {
    sub_21700ADB4();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v22 = sub_21700AE04();

    (*(v4 + 8))(v6, v3);
    v23 = sub_217009CA4();
    sub_217007F24();
    *v9 = v22;
    *(v9 + 1) = 0;
    *(v9 + 8) = 1;
    v9[24] = v23;
    *(v9 + 4) = v24;
    *(v9 + 5) = v25;
    *(v9 + 6) = v26;
    *(v9 + 7) = v27;
    v9[64] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1FA8, &unk_217041898);
    sub_216BCFED0();
    sub_216ADD68C();
    return sub_217009554();
  }
}

uint64_t sub_216BCEEE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2170080D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for GradientListRowView(0) + 40)))
  {

    sub_216C0C924(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, *(&v26 + 1), v27, v28, v29, v30, v31, v32);
    v16 = sub_216E50F58(0, v7);

    (*(v5 + 8))(v7, v4);
    sub_217008444();
    sub_217008444();
    sub_21700B354();
    result = sub_2170083C4();
    v18 = v22;
    v19 = v23;
    v20 = v24;
    v21 = v25;
    *a2 = v16;
    *(a2 + 8) = v18;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    *(a2 + 40) = v26;
  }

  else
  {
    type metadata accessor for ReplayGradientImageGenerator();
    sub_216BD0BCC(qword_280E31F28, type metadata accessor for ReplayGradientImageGenerator, &unk_217067B0C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BCF25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360, &unk_217041900);
  v5[20] = swift_task_alloc();
  sub_21700EA34();
  v5[21] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_216BCF32C, v7, v6);
}

uint64_t sub_216BCF5B4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  *(*v1 + 208) = v0;

  sub_2166997CC(v3, &qword_27CABF360, &unk_217041900);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_216BCF7D0;
  }

  else
  {
    v6 = sub_216BCF71C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_216BCF71C()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_13_45();
  *(v1 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 218) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216BCF7D0()
{
  v1 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_13_45();
  *(v1 + 112) = v2;
  *(v0 + 120) = v3;
  *(v0 + 217) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216BCF88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216BD0580(a1, a2);
  v3 = type metadata accessor for GradientListRowView(0);
  sub_2167CD8D8();
  sub_2170082B4();
  v4 = a2 + v3[6];
  sub_21700AEA4();
  *v4 = 0;
  *(v4 + 8) = v11;
  v5 = a2 + v3[7];
  *v5 = swift_getKeyPath();
  *(v5 + 40) = 0;
  v6 = v3[8];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v7 = v3[9];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v3[10]);
  type metadata accessor for ReplayGradientImageGenerator();
  sub_216BD0BCC(qword_280E31F28, type metadata accessor for ReplayGradientImageGenerator, &unk_217067B0C);
  result = sub_217008CF4();
  *v8 = result;
  v8[1] = v10;
  return result;
}

uint64_t sub_216BCFA20()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5100);
  __swift_project_value_buffer(v0, qword_27CAC5100);
  type metadata accessor for GradientListRowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5240, &qword_2170502B0);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t type metadata accessor for GradientListRowView(uint64_t a1)
{
  result = qword_280E3DEC0;
  if (!qword_280E3DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216BCFB18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GradientListRowView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216BCEEE4(v4, a1);
}

uint64_t sub_216BCFBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for GradientListRowView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_216BCDBF4(a1, a2, a3, v10, a4);
}

unint64_t sub_216BCFC98()
{
  result = qword_27CAC5180;
  if (!qword_27CAC5180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5170, &unk_2170500F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C48, &qword_217030690);
    sub_21699188C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5180);
  }

  return result;
}

uint64_t sub_216BCFD60(uint64_t a1)
{
  v2 = type metadata accessor for ShareAccessoryButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BCFDBC()
{
  v1 = type metadata accessor for GradientListRowView(0);
  OUTLINED_FUNCTION_2(v1);
  return sub_216BCE900(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_216BCFE44()
{
  result = qword_27CAC51D0;
  if (!qword_27CAC51D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51C8, &qword_217050158);
    sub_216BCFED0();
    sub_216ADD68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC51D0);
  }

  return result;
}

unint64_t sub_216BCFED0()
{
  result = qword_27CAC51D8;
  if (!qword_27CAC51D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51E0, &unk_217050160);
    sub_2166D9530(&qword_27CAB7BC8, &qword_27CAB7BD0, &unk_217026510, MEMORY[0x277CDD7F8]);
    sub_2166D9530(&qword_27CAB7CD8, &qword_27CAB7CE0, &unk_217025AA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC51D8);
  }

  return result;
}

unint64_t sub_216BCFFB4()
{
  result = qword_27CAC51F8;
  if (!qword_27CAC51F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5198, &qword_217050118);
    sub_216BD006C();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC51F8);
  }

  return result;
}

unint64_t sub_216BD006C()
{
  result = qword_27CAC5200;
  if (!qword_27CAC5200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51F0, &qword_2170501D8);
    sub_216BD0124();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5200);
  }

  return result;
}

unint64_t sub_216BD0124()
{
  result = qword_27CAC5208;
  if (!qword_27CAC5208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51E8, &qword_2170501A0);
    sub_2166D9530(&qword_27CAC5210, &qword_27CAC5218, &qword_217050210, MEMORY[0x277CDF028]);
    sub_2166D9530(&qword_280E2A6E0, &qword_27CABF2D0, &unk_217032D90, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5208);
  }

  return result;
}

unint64_t sub_216BD0208()
{
  result = qword_27CAC5228;
  if (!qword_27CAC5228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51A8, &qword_217050128);
    sub_216BD0294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5228);
  }

  return result;
}

unint64_t sub_216BD0294()
{
  result = qword_27CAC5230;
  if (!qword_27CAC5230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5220, &qword_217050218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC51A0, &qword_217050120);
    sub_217009354();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5198, &qword_217050118);
    sub_216BCFFB4();
    swift_getOpaqueTypeConformance2();
    sub_216BD0BCC(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60, &qword_217050220, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5230);
  }

  return result;
}

uint64_t sub_216BD0414(uint64_t a1)
{
  v4 = type metadata accessor for GradientListRowView(0);
  OUTLINED_FUNCTION_2(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2167AF644;

  return sub_216BCF25C(a1, v9, v10, v1 + v6, v1 + v8);
}

uint64_t sub_216BD0528(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216BD0580(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

void sub_216BD0600(uint64_t a1)
{
  type metadata accessor for GradientListRowModel(319);
  if (v1 <= 0x3F)
  {
    sub_2167D1C30(319);
    if (v2 <= 0x3F)
    {
      sub_216854FAC();
      if (v3 <= 0x3F)
      {
        sub_21680D428(319);
        if (v4 <= 0x3F)
        {
          sub_216A8AFBC(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
          if (v5 <= 0x3F)
          {
            sub_216A8AFBC(319, &qword_280E2B460, MEMORY[0x277CDF3E0]);
            if (v6 <= 0x3F)
            {
              sub_216ADE664(319);
              if (v7 <= 0x3F)
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

unint64_t sub_216BD0734()
{
  result = qword_27CAC5248;
  if (!qword_27CAC5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5130, &qword_217050068);
    sub_216BD07EC();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5248);
  }

  return result;
}

unint64_t sub_216BD07EC()
{
  result = qword_27CAC5250;
  if (!qword_27CAC5250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5258, &qword_217050398);
    sub_216BD0878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5250);
  }

  return result;
}

unint64_t sub_216BD0878()
{
  result = qword_27CAC5260;
  if (!qword_27CAC5260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5140, &unk_217050078);
    sub_216BD0930();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5260);
  }

  return result;
}

unint64_t sub_216BD0930()
{
  result = qword_27CAC5268;
  if (!qword_27CAC5268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5128, &qword_217050060);
    sub_216BD09E8();
    sub_2166D9530(&qword_27CAC5290, &qword_27CAC5298, qword_2170503A8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5268);
  }

  return result;
}

unint64_t sub_216BD09E8()
{
  result = qword_27CAC5270;
  if (!qword_27CAC5270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5120, &qword_217050058);
    sub_216BD0A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5270);
  }

  return result;
}

unint64_t sub_216BD0A74()
{
  result = qword_27CAC5278;
  if (!qword_27CAC5278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5118, &qword_217050050);
    sub_2166D9530(&qword_27CAC5280, &qword_27CAC5288, &qword_2170503A0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5278);
  }

  return result;
}

uint64_t sub_216BD0B74(uint64_t a1)
{
  result = sub_216BD0BCC(qword_280E3DED8, type metadata accessor for GradientListRowView, &unk_217050000);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BD0BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216BD0D30(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_21700BE44();
  sub_21700BE34();
  v9 = OUTLINED_FUNCTION_110();
  a2(v9);
  sub_216BD3128(a3, a4, a5);
  v10 = sub_21700BD14();

  return v10;
}

uint64_t sub_216BD0E20(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  sub_21700BE44();
  sub_21700BE34();
  v4 = OUTLINED_FUNCTION_110();
  a2(v4);
  v5 = sub_21700BD14();

  return v5;
}

uint64_t sub_216BD0E8C()
{
  v1 = sub_217009684();
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52A0, &qword_217050498);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  sub_217009634();
  v14 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52A8, &qword_2170504A0);
  sub_2166D9530(&qword_27CAC52B0, &qword_27CAC52A8, &qword_2170504A0, MEMORY[0x277CE14C0]);
  sub_217008B94();
  OUTLINED_FUNCTION_3_14();
  v11 = sub_2166D9530(v9, &qword_27CAC52A0, &qword_217050498, v10);
  MEMORY[0x21CE9A570](v8, v3, v11);
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_216BD1054@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52C0, &qword_2170504A8);
  v19 = *(v1 - 8);
  v2 = v19;
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52C8, &qword_2170504B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_216BD129C(&v19 - v12);
  sub_216BD269C();
  sub_2168282D4(v13, v10, &qword_27CAC52C8, &qword_2170504B0);
  v14 = *(v2 + 16);
  v14(v4, v7, v1);
  v15 = v20;
  sub_2168282D4(v10, v20, &qword_27CAC52C8, &qword_2170504B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52D0, &qword_2170504B8);
  v14((v15 + *(v16 + 48)), v4, v1);
  v17 = *(v19 + 8);
  v17(v7, v1);
  sub_2166997CC(v13, &qword_27CAC52C8, &qword_2170504B0);
  v17(v4, v1);
  return sub_2166997CC(v10, &qword_27CAC52C8, &qword_2170504B0);
}

uint64_t sub_216BD129C@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52D8, &qword_2170504C8);
  MEMORY[0x28223BE20](v116);
  v117 = &v98 - v1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52E0, &unk_2170504D0);
  MEMORY[0x28223BE20](v135);
  v114 = &v98 - v2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52E8, &qword_217064F10);
  MEMORY[0x28223BE20](v109);
  v111 = (&v98 - v3);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52F0, &unk_2170504E0);
  MEMORY[0x28223BE20](v115);
  v112 = &v98 - v4;
  v113 = sub_21700BA44();
  v121 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v107 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v98 - v7;
  v106 = v8;
  MEMORY[0x28223BE20](v9);
  v120 = &v98 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC52F8, &qword_217064EE0);
  MEMORY[0x28223BE20](v101);
  v102 = (&v98 - v11);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5300, &qword_2170504F0);
  MEMORY[0x28223BE20](v126);
  v103 = &v98 - v12;
  v104 = sub_2170073D4();
  v110 = *(v104 - 8);
  v13 = *(v110 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v98 - v15;
  MEMORY[0x28223BE20](v16);
  v108 = &v98 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5308, &qword_2170504F8);
  MEMORY[0x28223BE20](v132);
  v134 = &v98 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5310, &qword_217050500);
  MEMORY[0x28223BE20](v123);
  v124 = &v98 - v19;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5318, &qword_217050508);
  MEMORY[0x28223BE20](v133);
  v125 = &v98 - v20;
  v21 = sub_217009354();
  v128 = *(v21 - 8);
  v129 = v21;
  MEMORY[0x28223BE20](v21);
  v127 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5320, &qword_217050510);
  MEMORY[0x28223BE20](v23);
  v25 = &v98 - v24;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5328, &unk_217050518);
  MEMORY[0x28223BE20](v122);
  v119 = &v98 - v26;
  v118 = sub_217006B84();
  v136 = *(v118 - 8);
  v27 = *(v136 + 64);
  MEMORY[0x28223BE20](v118);
  MEMORY[0x28223BE20](v28);
  v30 = &v98 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v98 - v32;
  v34 = sub_2170067A4();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for GenericMusicItemToolbarContent(0);
  (*(v35 + 16))(v37, &v130[*(v38 + 20)], v34);
  v39 = (*(v35 + 88))(v37, v34);
  if (v39 == *MEMORY[0x277D2A3B0])
  {
    (*(v35 + 96))(v37, v34);
    v40 = v136;
    v41 = *(v136 + 32);
    v98 = v33;
    v130 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v118;
    v41(v33, v37);
    v43 = *(v40 + 16);
    v43(v30, v33, v42);
    *v25 = swift_getKeyPath();
    v25[40] = 0;
    v44 = v23[13];
    *&v25[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v43(&v25[v23[15]], v30, v42);
    v25[v23[16]] = 0;
    v45 = v130;
    v46 = v42;
    (v41)(v130, v30, v42);
    v47 = (*(v136 + 80) + 16) & ~*(v136 + 80);
    v48 = swift_allocObject();
    (v41)(v48 + v47, v45, v42);
    v49 = &v25[v23[14]];
    *v49 = sub_216BD36D4;
    *(v49 + 1) = v48;
    v49[16] = 0;
    v50 = v127;
    sub_217009344();
    sub_2166D9530(&qword_27CAC5350, &qword_27CAC5320, &qword_217050510, &unk_217037D80);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    v51 = v119;
    v52 = v129;
    sub_21700A364();
    (*(v128 + 8))(v50, v52);
    v53 = (v51 + *(v122 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60, &qword_217050220);
    sub_217008BE4();
    sub_2166997CC(v25, &qword_27CAC5320, &qword_217050510);
    *v53 = swift_getKeyPath();
    sub_2168282D4(v51, v124, &qword_27CAC5328, &unk_217050518);
    swift_storeEnumTagMultiPayload();
    sub_216BD31FC();
    sub_216BD3374();
    v54 = v125;
    sub_217009554();
    sub_2168282D4(v54, v134, &qword_27CAC5318, &qword_217050508);
    swift_storeEnumTagMultiPayload();
    sub_216BD3170();
    sub_216BD34EC();
    sub_217009554();
    sub_2166997CC(v54, &qword_27CAC5318, &qword_217050508);
    sub_2166997CC(v51, &qword_27CAC5328, &unk_217050518);
    return (*(v136 + 8))(v98, v46);
  }

  if (v39 == *MEMORY[0x277D2A3B8])
  {
    (*(v35 + 96))(v37, v34);
    v56 = v120;
    v57 = v121;
    v58 = *(v121 + 32);
    v59 = v113;
    v58(v120, v37, v113);
    v60 = *(v57 + 16);
    v61 = v105;
    v60(v105, v56, v59);
    KeyPath = swift_getKeyPath();
    v63 = v111;
    *v111 = KeyPath;
    *(v63 + 40) = 0;
    v64 = v109;
    v65 = *(v109 + 52);
    *(v63 + v65) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v60((v63 + v64[15]), v61, v59);
    *(v63 + v64[16]) = 0;
    v66 = v107;
    v58(v107, v61, v59);
    v67 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v68 = swift_allocObject();
    v58((v68 + v67), v66, v59);
    v69 = v63 + v64[14];
    *v69 = sub_216BD3578;
    *(v69 + 8) = v68;
    *(v69 + 16) = 0;
    v70 = v127;
    sub_217009344();
    sub_2166D9530(&qword_27CAC5338, &qword_27CAC52E8, &qword_217064F10, &unk_217037D80);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    v71 = v112;
    v72 = v129;
    sub_21700A364();
    (*(v128 + 8))(v70, v72);
    v73 = (v71 + *(v115 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60, &qword_217050220);
    sub_217008BE4();
    sub_2166997CC(v63, &qword_27CAC52E8, &qword_217064F10);
    *v73 = swift_getKeyPath();
    sub_2168282D4(v71, v117, &qword_27CAC52F0, &unk_2170504E0);
    swift_storeEnumTagMultiPayload();
    sub_216BD2FB0();
    v74 = v114;
    sub_217009554();
    sub_2168282D4(v74, v134, &qword_27CAC52E0, &unk_2170504D0);
    swift_storeEnumTagMultiPayload();
    sub_216BD3170();
    sub_216BD34EC();
    sub_217009554();
    sub_2166997CC(v74, &qword_27CAC52E0, &unk_2170504D0);
    sub_2166997CC(v71, &qword_27CAC52F0, &unk_2170504E0);
    v75 = v120;
    v76 = *(v121 + 8);
  }

  else
  {
    v77 = v134;
    if (v39 != *MEMORY[0x277D2A458])
    {
      swift_storeEnumTagMultiPayload();
      sub_216BD2FB0();
      v97 = v114;
      sub_217009554();
      sub_2168282D4(v97, v77, &qword_27CAC52E0, &unk_2170504D0);
      swift_storeEnumTagMultiPayload();
      sub_216BD3170();
      sub_216BD34EC();
      sub_217009554();
      sub_2166997CC(v97, &qword_27CAC52E0, &unk_2170504D0);
      return (*(v35 + 8))(v37, v34);
    }

    (*(v35 + 96))(v37, v34);
    v78 = v110;
    v79 = *(v110 + 32);
    v80 = v108;
    v59 = v104;
    v79(v108, v37, v104);
    v81 = *(v78 + 16);
    v82 = v99;
    v81(v99, v80, v59);
    v83 = swift_getKeyPath();
    v84 = v102;
    *v102 = v83;
    *(v84 + 40) = 0;
    v85 = v101;
    v86 = *(v101 + 52);
    *(v84 + v86) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    v81((v84 + v85[15]), v82, v59);
    *(v84 + v85[16]) = 0;
    v87 = v100;
    v79(v100, v82, v59);
    v88 = v110;
    v89 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v90 = swift_allocObject();
    v79((v90 + v89), v87, v59);
    v91 = v84 + v85[14];
    *v91 = sub_216BD35D0;
    *(v91 + 8) = v90;
    *(v91 + 16) = 0;
    v92 = v127;
    sub_217009344();
    sub_2166D9530(&qword_27CAC5360, &qword_27CAC52F8, &qword_217064EE0, &unk_217037D80);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    v93 = v103;
    v94 = v129;
    sub_21700A364();
    (*(v128 + 8))(v92, v94);
    v95 = (v93 + *(v126 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60, &qword_217050220);
    sub_217008BE4();
    sub_2166997CC(v84, &qword_27CAC52F8, &qword_217064EE0);
    *v95 = swift_getKeyPath();
    sub_2168282D4(v93, v124, &qword_27CAC5300, &qword_2170504F0);
    swift_storeEnumTagMultiPayload();
    sub_216BD31FC();
    sub_216BD3374();
    v96 = v125;
    sub_217009554();
    sub_2168282D4(v96, v134, &qword_27CAC5318, &qword_217050508);
    swift_storeEnumTagMultiPayload();
    sub_216BD3170();
    sub_216BD34EC();
    sub_217009554();
    sub_2166997CC(v96, &qword_27CAC5318, &qword_217050508);
    sub_2166997CC(v93, &qword_27CAC5300, &qword_2170504F0);
    v76 = *(v88 + 8);
    v75 = v108;
  }

  return v76(v75, v59);
}

uint64_t sub_216BD269C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_21700D8E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenericMusicItemToolbarContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_216BD2EAC(v1, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_216BD2F58(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v22 = sub_216BD2E44;
  v23 = v13;
  memset(v21, 0, sizeof(v21));
  sub_216919014(v1, v4);
  v14 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v14) != 1)
  {
    if (!*(v4 + 12))
    {
      if (!*(v4 + 4))
      {
        sub_216BD2F04(v4, type metadata accessor for ContentDescriptor);
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    v15 = sub_21700BA64();
    v17 = v16;
    sub_216BD2F04(v4, type metadata accessor for ContentDescriptor);
    *(&v20 + 1) = MEMORY[0x277CD7E90];
    *&v19 = v15;
    *(&v19 + 1) = v17;
    goto LABEL_8;
  }

  sub_2166997CC(v4, &qword_27CAB6A00, &unk_217016B60);
LABEL_3:
  v19 = 0u;
  v20 = 0u;
LABEL_8:
  sub_21700D854();
  sub_2166997CC(v21, &unk_27CABF7A0, &unk_217014D20);
  sub_2166997CC(&v19, &unk_27CABF7A0, &unk_217014D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF178, &qword_2170504C0);
  sub_2166D9530(&qword_27CABF180, &qword_27CABF178, &qword_2170504C0, &unk_217048B78);
  sub_21700A204();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_216BD2A54@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v36 = a2;
  v34 = sub_2170067A4();
  v3 = *(v34 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for MenuConfiguration(0);
  v12 = (v11 - 8);
  v32 = *(v11 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = type metadata accessor for GenericMusicItemToolbarContent(0);
  v19 = *(v18 + 20);
  v20 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  sub_216BD2EAC(a1 + *(v18 + 24), v7);
  sub_216919014(v10, v17);
  sub_216BD2EAC(v7, &v17[v12[7]]);
  v21 = &v17[v12[8]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v17[v12[9]] = 0;
  v22 = &v17[v12[10]];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  sub_216BD2F04(v7, type metadata accessor for MenuContext);
  sub_2166997CC(v10, &qword_27CAB6A00, &unk_217016B60);
  v23 = &v17[v12[11]];
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  v25 = v33;
  v24 = v34;
  (*(v3 + 16))(v33, a1 + v19, v34);
  sub_216BD2F58(v17, v14);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = (v35 + *(v32 + 80) + v26) & ~*(v32 + 80);
  v28 = swift_allocObject();
  (*(v3 + 32))(v28 + v26, v25, v24);
  result = sub_216BD2F58(v14, v28 + v27);
  v30 = v36;
  *v36 = sub_21680CDC8;
  v30[1] = v28;
  return result;
}

uint64_t sub_216BD2E44@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = type metadata accessor for GenericMusicItemToolbarContent(0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_11_2();

  return sub_216BD2A54(v1 + v4, a1);
}

uint64_t sub_216BD2EAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216BD2F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BD2F58(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

unint64_t sub_216BD2FB0()
{
  result = qword_27CAC5330;
  if (!qword_27CAC5330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC52F0, &unk_2170504E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC52E8, &qword_217064F10);
    sub_217009354();
    sub_2166D9530(&qword_27CAC5338, &qword_27CAC52E8, &qword_217064F10, &unk_217037D80);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60, &qword_217050220, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5330);
  }

  return result;
}

uint64_t sub_216BD3128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216BD3170()
{
  result = qword_27CAC5340;
  if (!qword_27CAC5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5318, &qword_217050508);
    sub_216BD31FC();
    sub_216BD3374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5340);
  }

  return result;
}

unint64_t sub_216BD31FC()
{
  result = qword_27CAC5348;
  if (!qword_27CAC5348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5328, &unk_217050518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5320, &qword_217050510);
    sub_217009354();
    sub_2166D9530(&qword_27CAC5350, &qword_27CAC5320, &qword_217050510, &unk_217037D80);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60, &qword_217050220, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5348);
  }

  return result;
}

unint64_t sub_216BD3374()
{
  result = qword_27CAC5358;
  if (!qword_27CAC5358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5300, &qword_2170504F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC52F8, &qword_217064EE0);
    sub_217009354();
    sub_2166D9530(&qword_27CAC5360, &qword_27CAC52F8, &qword_217064EE0, &unk_217037D80);
    sub_216BD3128(&qword_27CAB9D40, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A728, &qword_27CAB8A60, &qword_217050220, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5358);
  }

  return result;
}

unint64_t sub_216BD34EC()
{
  result = qword_27CAC5368;
  if (!qword_27CAC5368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC52E0, &unk_2170504D0);
    sub_216BD2FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5368);
  }

  return result;
}

uint64_t sub_216BD3578()
{
  v1 = sub_21700BA44();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_6_82();
  return sub_216BD0E20(v0 + v2, v3, v4);
}

uint64_t sub_216BD35D0()
{
  v1 = sub_2170073D4();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_5_94();
  return sub_216BD0D30(v0 + v2, v3, v4, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADD8]);
}

uint64_t objectdestroy_20Tm_1(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216BD36D4()
{
  v1 = sub_217006B84();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_4_107();
  return sub_216BD0D30(v0 + v2, v3, v4, MEMORY[0x277D2A7C8], MEMORY[0x277D2A7B8]);
}

void sub_216BD3754(uint64_t a1)
{
  type metadata accessor for BootstrapState(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_216820EBC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216BD37F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_2170080D4() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 8) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_25:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((a1 + v11 + 8) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_25;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_216BD3A48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_2170080D4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 8) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  v16 = 8 * v15;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload(&a1[v13 + 8] & ~v13, a2, v9, v7);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v23 = (a2 - 1);
            }

            *a1 = v23;
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216BD3D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v22 = a3;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationDestinationsModifier(0, v13, v14, v13);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v21 - v18;
  (*(v10 + 16))(v12, a2, a4, v17);
  sub_216BD4C08(a1, v12, a4, a6, v19);

  MEMORY[0x21CE9B900](v19, v22, v15, v23);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_216BD3F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v76 = a3;
  v73 = *(a2 - 8);
  v79 = *(v73 + 64);
  MEMORY[0x28223BE20](a1);
  v81 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v5 = sub_2170097A4();
  v6 = type metadata accessor for FlowAction(255);
  v55 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5370, &qword_217050650);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_216BD4ED0(&qword_280E45BA8, type metadata accessor for FlowAction, &unk_21706E4C8);
  v10 = sub_216BD4CD0();
  v82 = v5;
  v83 = v6;
  v57 = v5;
  v84 = v7;
  v85 = WitnessTable;
  v11 = v7;
  v63 = v7;
  v12 = WitnessTable;
  v62 = WitnessTable;
  v86 = v9;
  v87 = v10;
  v61 = v9;
  v13 = v10;
  v59 = v10;
  v78 = MEMORY[0x277CDEB90];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = OpaqueTypeMetadata2;
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v70 = v54 - v15;
  v60 = a2;
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = v17;
  v56 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = type metadata accessor for WrappedAppPageDestination(255, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  v54[1] = v21;
  v23 = type metadata accessor for AppDestinationPageView(255, v16, v17, v22);
  v64 = v23;
  v82 = v5;
  v83 = v55;
  v84 = v11;
  v85 = v12;
  v86 = v9;
  v87 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeConformance2;
  v25 = swift_getWitnessTable();
  v67 = v25;
  v65 = swift_getWitnessTable();
  v82 = OpaqueTypeMetadata2;
  v83 = v21;
  v84 = v23;
  v85 = OpaqueTypeConformance2;
  v86 = v25;
  v87 = v65;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = *(v26 - 8);
  v71 = v26;
  v72 = v27;
  MEMORY[0x28223BE20](v26);
  v58 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v66 = v54 - v30;
  swift_checkMetadataState();
  v31 = v73;
  v55 = *(v73 + 16);
  v32 = v81;
  v33 = v60;
  v55(v81, v80, v60);
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v36 = v56;
  v37 = v77;
  *(v35 + 16) = v56;
  *(v35 + 24) = v37;
  v73 = *(v31 + 32);
  (v73)(v35 + v34, v32, v33);
  swift_checkMetadataState();
  v38 = v70;
  sub_21700A7D4();

  v39 = swift_checkMetadataState();
  v40 = v81;
  v55(v81, v80, v33);
  v41 = swift_allocObject();
  v42 = v77;
  *(v41 + 16) = v36;
  *(v41 + 24) = v42;
  (v73)(v41 + v34, v40, v33);
  v43 = swift_checkMetadataState();
  v44 = v65;
  v45 = v58;
  v47 = v68;
  v46 = v69;
  v48 = v67;
  sub_21700A7D4();

  (*(v74 + 8))(v38, v46);
  v82 = v46;
  v83 = v39;
  v84 = v43;
  v85 = v47;
  v86 = v48;
  v87 = v44;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v66;
  v51 = v71;
  sub_2166C24DC(v45, v71, v49);
  v52 = *(v72 + 8);
  v52(v45, v51);
  sub_2166C24DC(v50, v51, v49);
  return (v52)(v50, v51);
}

uint64_t sub_216BD45F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v8 = sub_2170080D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  sub_216B803CC(a1, a5, type metadata accessor for FlowAction);
  v15 = *a2;
  v16 = type metadata accessor for FlowActionPageView(0);
  *(a5 + *(v16 + 20)) = v15;
  v17 = (a5 + *(v16 + 24));
  type metadata accessor for MusicStackAuthority(0);
  sub_216BD4ED0(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);

  *v17 = sub_217008CF4();
  v17[1] = v18;
  KeyPath = swift_getKeyPath();
  v21 = type metadata accessor for NavigationDestinationsModifier(0, v32, v33, v20);
  sub_216C0C924(v21, v22, v23, v24, v25, v26, v27, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  (*(v9 + 104))(v11, *MEMORY[0x277CDF3C0], v8);
  LOBYTE(a2) = sub_2170080C4();
  v29 = *(v9 + 8);
  v29(v11, v8);
  v29(v14, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5370, &qword_217050650);
  v31 = a5 + *(result + 36);
  *v31 = KeyPath;
  *(v31 + 8) = a2 & 1;
  return result;
}

uint64_t sub_216BD4834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2168E3350();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216BD488C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a2;
  v41 = a5;
  v8 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v36 - v14;
  v17 = type metadata accessor for AppDestinationPageView(0, a3, a4, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v36 - v23;
  (*(v13 + 16))(v15, a1, AssociatedTypeWitness, v22);
  v25 = a4;
  v27 = type metadata accessor for NavigationDestinationsModifier(0, a3, a4, v26);
  v28 = v37;
  (*(v38 + 16))(v37, v39 + *(v27 + 36), a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = a1 + *(type metadata accessor for WrappedAppPageDestination(0, AssociatedTypeWitness, AssociatedConformanceWitness, v30) + 40);
  v32 = v40;
  sub_216B803CC(v31, v40, type metadata accessor for MusicAppDestinationContext);
  sub_216B5EEBC(v15, v28, v32, a3, v25, v20);
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v20, v17, WitnessTable);
  v34 = *(v18 + 8);
  v34(v20, v17);
  sub_2166C24DC(v24, v17, WitnessTable);
  return (v34)(v24, v17);
}

uint64_t sub_216BD4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for NavigationDestinationsModifier(0, a3, a4, a4);
  (*(*(a3 - 8) + 32))(&a5[*(v8 + 36)], a2, a3);
  v9 = *(v8 + 40);
  *&a5[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_216BD4CD0()
{
  result = qword_280E2B2C8;
  if (!qword_280E2B2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5370, &qword_217050650);
    sub_216BD4ED0(qword_280E3F018, type metadata accessor for FlowActionPageView, &unk_217018DE4);
    sub_216BD4D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2C8);
  }

  return result;
}

unint64_t sub_216BD4D8C()
{
  result = qword_280E2A700;
  if (!qword_280E2A700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7388, &qword_21701B6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A700);
  }

  return result;
}

uint64_t sub_216BD4E20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NavigationDestinationsModifier(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

uint64_t sub_216BD4ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216BD4F40(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_217007C34();
  OUTLINED_FUNCTION_1();
  v27 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_217007BF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) + 40);
  v17 = *v16;
  v18 = *(v16 + 16);
  v19 = sub_217007C04();
  sub_217007C44();
  v26 = sub_21700EF64();
  result = sub_21700F144();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v15, v10);
  }

  if ((v18 & 1) == 0)
  {
    if (v17)
    {
LABEL_9:

      sub_217007C74();

      v21 = v27;
      if ((*(v27 + 88))(v9, v5) == *MEMORY[0x277D85B00])
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v9, v5);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_217007BD4();
      _os_signpost_emit_with_name_impl(&dword_216679000, v19, v26, v24, v17, v22, v23, 2u);
      OUTLINED_FUNCTION_19_6();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v17 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v17 & 0xFFFFF800) != 0xD800)
  {
    if (v17 >> 16 <= 0x10)
    {
      v17 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_216BD51CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *a2;
  v3[10] = *a2;
  v5 = sub_21700DD44();
  v3[11] = v5;
  OUTLINED_FUNCTION_2(v5);
  v3[12] = v6;
  v3[13] = OUTLINED_FUNCTION_80();
  v7 = *(v4 + 88);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = OUTLINED_FUNCTION_80();
  v8 = sub_217007C24();
  v3[17] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[18] = v9;
  v3[19] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[20] = OUTLINED_FUNCTION_80();
  v10 = sub_21700DD54();
  v3[21] = v10;
  OUTLINED_FUNCTION_2(v10);
  v3[22] = v11;
  v3[23] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[24] = sub_21700EA24();
  v13 = sub_21700E9B4();
  v3[25] = v13;
  v3[26] = v12;

  return MEMORY[0x2822009F8](sub_216BD540C, v13, v12);
}

uint64_t sub_216BD540C()
{
  v1 = v0[10];
  v0[2] = v1[10];
  v2 = v0[14];
  v3 = v1[12];
  v0[27] = v3;
  v4 = v1[13];
  v5 = v1[15];
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v5;
  v6 = type metadata accessor for ReplacePageUpdate(0, (v0 + 2));
  v0[28] = v6;
  sub_21700DDB4();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v0[29] = v0[6];
  if (v3 == v6)
  {
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    *v7 = 1;
    (*(v8 + 104))(v7, *MEMORY[0x277D222A0], v9);
    sub_21700DD94();
    (*(v8 + 8))(v7, v9);
  }

  sub_21700DB74();

  sub_21700D4F4();

  sub_21700DB54();

  v10 = sub_21700DB64();
  v0[30] = v10;

  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[9];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v17 = __swift_project_value_buffer(v16, qword_280E73E38);
  (*(v14 + 16))(v12, v17, v13);
  sub_216BD795C(v12, "Fetch", 5, 2, &qword_27CAB82E8, &unk_217067FA0, v11);
  if (v3 == v6)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_216BD56A0;
  v20 = v0[16];

  return sub_2167F1880(v20, v18);
}

uint64_t sub_216BD56A0()
{
  v2 = *v1;
  v2[32] = v0;

  v3 = v2[26];
  v4 = v2[25];
  if (v0)
  {
    v5 = sub_216BD5924;
  }

  else
  {
    v5 = sub_216BD581C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216BD581C()
{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[7];

  (*(v3 + 32))(v5, v2, v4);
  sub_216BD4F40(&qword_27CAB82E8, &unk_217067FA0);

  sub_2167F2BA0(v1);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216BD5924()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[20];

  sub_2167F2BA0(v3);
  if (v2 == v1)
  {
    v4 = v0[32];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    *v5 = v4;
    (*(v6 + 104))(v5, *MEMORY[0x277D22280], v7);
    v8 = v4;
    sub_21700DD84();
    (*(v6 + 8))(v5, v7);
  }

  v9 = v0[32];
  v10 = sub_216BD7C24();
  OUTLINED_FUNCTION_12(&type metadata for PageUpdatePerformer.Error, v10);
  *v11 = v9;
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t sub_216BD5A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[21] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7[22] = AssociatedConformanceWitness;
  v7[23] = *(AssociatedConformanceWitness + 16);
  v10 = swift_getAssociatedTypeWitness();
  v7[24] = v10;
  OUTLINED_FUNCTION_1();
  v7[25] = v11;
  v7[26] = OUTLINED_FUNCTION_80();
  v12 = sub_21700DD44();
  v7[27] = v12;
  OUTLINED_FUNCTION_2(v12);
  v7[28] = v13;
  v7[29] = OUTLINED_FUNCTION_80();
  v14 = sub_21700D194();
  v7[30] = v14;
  OUTLINED_FUNCTION_2(v14);
  v7[31] = v15;
  v7[32] = OUTLINED_FUNCTION_80();
  v16 = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for MappedPageDescriptor(0, v10, v16, v17);
  v7[33] = v18;
  OUTLINED_FUNCTION_2(v18);
  v7[34] = v19;
  v7[35] = OUTLINED_FUNCTION_80();
  v20 = sub_217006A94();
  v7[36] = v20;
  OUTLINED_FUNCTION_2(v20);
  v7[37] = v21;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v22 = type metadata accessor for ContentDescriptor(0);
  v7[41] = v22;
  OUTLINED_FUNCTION_2(v22);
  v7[42] = v23;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = type metadata accessor for SocialProfileHorizontalLockupSection(0);
  v7[46] = OUTLINED_FUNCTION_80();
  v24 = type metadata accessor for SectionContent(0);
  v7[47] = v24;
  OUTLINED_FUNCTION_2(v24);
  v7[48] = v25;
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v26 = _s7SectionVMa(0);
  v7[51] = v26;
  OUTLINED_FUNCTION_2(v26);
  v7[52] = v27;
  v7[53] = OUTLINED_FUNCTION_80();
  updated = type metadata accessor for PageUpdateDescriptor(0, AssociatedTypeWitness, AssociatedConformanceWitness, v28);
  v7[54] = updated;
  OUTLINED_FUNCTION_2(updated);
  v7[55] = v30;
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v31 = sub_217007C24();
  v7[59] = v31;
  OUTLINED_FUNCTION_2(v31);
  v7[60] = v32;
  v7[61] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  sub_21700EA34();
  v7[65] = sub_21700EA24();
  v34 = sub_21700E9B4();
  v7[66] = v34;
  v7[67] = v33;

  return MEMORY[0x2822009F8](sub_216BD5FD4, v34, v33);
}

uint64_t sub_216BD5FD4()
{
  v150 = v0;
  if (qword_280E485C8 != -1)
  {
    goto LABEL_71;
  }

LABEL_2:
  v1 = v0[64];
  v140 = v0[63];
  v2 = v0[60];
  v3 = v0[61];
  v4 = v0[59];
  v5 = v0[20];
  v146 = v0[19];
  v143 = v0[17];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v7 = __swift_project_value_buffer(v6, qword_280E73E38);
  v0[68] = v7;
  v8 = *(v2 + 16);
  v0[69] = v8;
  v0[70] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v4);
  sub_216BD795C(v3, "Apply", 5, 2, &qword_27CAB82E8, &unk_217067FA0, v1);
  v8(v3, v7, v4);
  sub_216BD795C(v3, "Apply.UpdateJSPage", 18, 2, &qword_27CAB82E8, &unk_217067FA0, v140);
  (*(v5 + 16))(v143, v146, v5);
  v9 = v0[63];
  v10 = v0[58];
  v11 = v0[54];
  (*(v0[55] + 32))(v10, v0[57], v11);
  sub_216BD4F40(&qword_27CAB82E8, &unk_217067FA0);
  sub_2167F2BA0(v9);
  v12 = *(v10 + *(v11 + 36));
  if (!v12)
  {
    goto LABEL_66;
  }

  v13 = v0[52];
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);
  v17 = (63 - v15) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
LABEL_6:
  v144 = v19;
  if (v16)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      OUTLINED_FUNCTION_9_10(&qword_280E485C8);
      goto LABEL_2;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v12 + 64 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
LABEL_11:
      v21 = v0[53];
      v22 = v0[50];
      sub_216BD7C78(*(v12 + 56) + *(v13 + 72) * (__clz(__rbit64(v16)) | (v18 << 6)), v21, _s7SectionVMa);
      OUTLINED_FUNCTION_7_82();
      sub_216BD7C78(v21 + v23, v22, v24);
      sub_216BD7CD0(v21, _s7SectionVMa);
      v25 = v144;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = OUTLINED_FUNCTION_29_0();
        sub_216937BD4(v33, v34, v35, v144);
        v25 = v36;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v28 = v25;
      if (v27 >= v26 >> 1)
      {
        sub_216937BD4(v26 > 1, v27 + 1, 1, v25);
        v28 = v37;
      }

      v16 &= v16 - 1;
      *(v28 + 16) = v27 + 1;
      v19 = v28;
      OUTLINED_FUNCTION_21_1();
      sub_2166C5D28(v32, v29 + v30 + *(v31 + 72) * v27, type metadata accessor for SectionContent);
      goto LABEL_6;
    }
  }

  type metadata accessor for SocialGraphController(0);
  v134 = type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v38 = *(v19 + 16);
  if (v38)
  {
    v39 = 0;
    v139 = v0[45];
    v147 = v0[44];
    v40 = v0[43];
    v135 = 136446210;
    v136 = *(v19 + 16);
    do
    {
      if (v39 >= *(v19 + 16))
      {
        goto LABEL_70;
      }

      v41 = v0[49];
      v42 = v0[47];
      OUTLINED_FUNCTION_7_82();
      sub_216BD7C78(v43, v41, v44);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v46 = v0[49];
      if (EnumCaseMultiPayload == 49)
      {
        v47 = v0[46];
        sub_2166C5D28(v46, v47, type metadata accessor for SocialProfileHorizontalLockupSection);
        v48 = (v47 + *(v139 + 28));
        v50 = *v48;
        v49 = v48[1];
        v145 = v48[2];
        if (!*v48)
        {
          goto LABEL_30;
        }

        if (v50 != 1)
        {
          if (*(v50 + 16))
          {
            v137 = v48[1];
            sub_216F0720C(v50, 0);
            if (qword_27CAB5F48 != -1)
            {
              OUTLINED_FUNCTION_1_162();
              swift_once();
            }

            v51 = sub_217007CA4();
            __swift_project_value_buffer(v51, qword_27CAC5378);
            sub_21700DF14();
            v52 = sub_217007C84();
            v53 = sub_21700EDA4();

            if (os_log_type_enabled(v52, v53))
            {
              v42 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v149[0] = v141;
              *v42 = v135;
              v54 = sub_21700E364();
              v56 = sub_2166A85FC(v54, v55, v149);

              *(v42 + 4) = v56;
              _os_log_impl(&dword_216679000, v52, v53, "Updated user follow states: '%{public}s'", v42, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v141);
              MEMORY[0x21CEA1440](v141, -1, -1);
              OUTLINED_FUNCTION_19_6();
            }

            v49 = v137;
          }

LABEL_30:
          v142 = v39;
          if (v49)
          {
            v57 = *(v49 + 16);
            if (v57)
            {
              OUTLINED_FUNCTION_21_1();
              v60 = v59 + v58;
              v62 = *(v61 + 72);
              v63 = MEMORY[0x277D84F90];
              do
              {
                v64 = v0[44];
                v65 = OUTLINED_FUNCTION_6_83();
                sub_216BD7C78(v65, v64, v66);
                v67 = *(v147 + 24);
                v68 = *(v147 + 32);
                sub_21700DF14();
                OUTLINED_FUNCTION_2_129();
                sub_216BD7CD0(v64, v69);
                if (v68)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_29_0();
                    sub_21693776C();
                    v63 = v73;
                  }

                  v71 = *(v63 + 16);
                  v70 = *(v63 + 24);
                  v42 = v71 + 1;
                  if (v71 >= v70 >> 1)
                  {
                    OUTLINED_FUNCTION_107_1(v70);
                    sub_21693776C();
                    v63 = v74;
                  }

                  *(v63 + 16) = v42;
                  v72 = v63 + 16 * v71;
                  *(v72 + 32) = v67;
                  *(v72 + 40) = v68;
                }

                v60 += v62;
                --v57;
              }

              while (v57);
              sub_216F072A0(v63);

              if (qword_27CAB5F48 != -1)
              {
                OUTLINED_FUNCTION_1_162();
                swift_once();
              }

              v75 = sub_217007CA4();
              __swift_project_value_buffer(v75, qword_27CAC5378);
              sub_21700DF14();
              v76 = sub_217007C84();
              v77 = sub_21700EDA4();

              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                v79 = swift_slowAlloc();
                OUTLINED_FUNCTION_15_56(v79, v80, v81, v82, v83, v84, v85, v86, v133, v134, v135);
                v89 = sub_2166A85FC(v87, v88, v149);

                *(v78 + 4) = v89;
                _os_log_impl(&dword_216679000, v76, v77, "Updated user followers: '%{public}s'", v78, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v42);
                OUTLINED_FUNCTION_19_6();
                MEMORY[0x21CEA1440](v78, -1, -1);
              }

              v38 = v136;
            }
          }

          v90 = v145;
          if (!v145 || (v91 = v145[2]) == 0)
          {
LABEL_63:
            OUTLINED_FUNCTION_8_83();
            v39 = v142;
            v19 = v144;
            goto LABEL_64;
          }

          type metadata accessor for UserSocialProfileCoordinator(0);
          sub_21700E094();
          v138 = v0[13];
          OUTLINED_FUNCTION_21_1();
          v93 = v145 + v92;
          v95 = *(v94 + 72);
          v96 = MEMORY[0x277D84F90];
          while (2)
          {
            v97 = OUTLINED_FUNCTION_6_83();
            sub_216BD7C78(v97, v98, v99);
            v100 = v40[2];
            v101 = v0[43];
            if (v100)
            {
              v102 = v40[1];
              sub_21700DF14();
              OUTLINED_FUNCTION_2_129();
              sub_216BD7CD0(v101, v103);
              goto LABEL_51;
            }

            v102 = v40[11];
            v100 = v40[12];
            sub_21700DF14();
            OUTLINED_FUNCTION_2_129();
            sub_216BD7CD0(v101, v104);
            if (v100)
            {
LABEL_51:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_29_0();
                sub_21693776C();
                v96 = v108;
              }

              v106 = *(v96 + 16);
              v105 = *(v96 + 24);
              v90 = (v106 + 1);
              if (v106 >= v105 >> 1)
              {
                OUTLINED_FUNCTION_107_1(v105);
                sub_21693776C();
                v96 = v109;
              }

              *(v96 + 16) = v90;
              v107 = v96 + 16 * v106;
              *(v107 + 32) = v102;
              *(v107 + 40) = v100;
            }

            v93 += v95;
            if (!--v91)
            {
              *&v138[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs] = v96;

              if (qword_27CAB5F48 != -1)
              {
                OUTLINED_FUNCTION_1_162();
                swift_once();
              }

              v110 = sub_217007CA4();
              __swift_project_value_buffer(v110, qword_27CAC5378);
              sub_21700DF14();
              v111 = sub_217007C84();
              v112 = sub_21700EDA4();
              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                v114 = swift_slowAlloc();
                OUTLINED_FUNCTION_15_56(v114, v115, v116, v117, v118, v119, v120, v121, v133, v134, v135);
                v123 = v122;
                v125 = v124;

                v126 = sub_2166A85FC(v123, v125, v149);

                *(v113 + 4) = v126;
                _os_log_impl(&dword_216679000, v111, v112, "Updated user shared playlists: '%{public}s'", v113, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v90);
                OUTLINED_FUNCTION_19_6();
                MEMORY[0x21CEA1440](v113, -1, -1);
              }

              else
              {
              }

              v38 = v136;
              goto LABEL_63;
            }

            continue;
          }
        }

        OUTLINED_FUNCTION_8_83();
      }

      else
      {
        sub_216BD7CD0(v46, type metadata accessor for SectionContent);
      }

LABEL_64:
      ++v39;
    }

    while (v39 != v38);
  }

LABEL_66:
  v148 = (*(v0[20] + 24) + **(v0[20] + 24));
  v127 = swift_task_alloc();
  v0[71] = v127;
  *v127 = v0;
  v127[1] = sub_216BD6C3C;
  v128 = v0[58];
  v129 = v0[39];
  v130 = v0[19];
  v131 = v0[20];

  return v148(v129, v128, v130, v131);
}

uint64_t sub_216BD6C3C()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);
  if (v0)
  {
    v5 = sub_216BD742C;
  }

  else
  {
    v5 = sub_216BD6D78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216BD6D78()
{
  v56 = v0[72];
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[61];
  v51 = v0[62];
  v4 = v0[59];
  v5 = v0[39];
  v6 = v0[40];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[20];
  v53 = v0[19];
  v54 = v0[58];
  v52 = v0[16];

  v10 = v8;
  v11 = *(v7 + 32);
  v11(v6, v5, v10);
  v1(v3, v2, v4);
  sub_216BD795C(v3, "Apply.Mapping", 13, 2, &qword_27CAB82E8, &unk_217067FA0, v51);
  (*(v9 + 32))(v54, v6, v52, v53, v9);
  v12 = v0[64];
  v13 = v0[58];
  if (v56)
  {
    v15 = v0[54];
    v14 = v0[55];
    v16 = v0[40];
    v17 = v0[36];
    v18 = v0[37];
    sub_2167F2BA0(v0[62]);
    v19 = sub_216BD7C24();
    OUTLINED_FUNCTION_12(&type metadata for PageUpdatePerformer.Error, v19);
    *v20 = v56 | 0xC000000000000000;
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    sub_2167F2BA0(v12);
    (*(v14 + 8))(v13, v15);
    OUTLINED_FUNCTION_5_95();

    OUTLINED_FUNCTION_3();
  }

  else
  {
    v55 = v11;
    v22 = v0[54];
    sub_216BD4F40(&qword_27CAB82E8, &unk_217067FA0);
    sub_216BD4F40(&qword_27CAB82E8, &unk_217067FA0);
    if (*(v13 + *(v22 + 48)) == 1)
    {
      sub_21700DDB4();
      type metadata accessor for ObjectGraph(0);
      OUTLINED_FUNCTION_8();
      sub_21700E094();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
      sub_21700E094();
      v23 = v0[5];
      v24 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
      (*(v24 + 8))(v23, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      sub_21700E324();
      v25 = sub_21700D0E4();
      if (*v26)
      {
        sub_2166EF928();
      }

      else
      {
      }

      v25(v0 + 7, 0);
      v28 = v0[31];
      v27 = v0[32];
      v30 = v0[29];
      v29 = v0[30];
      v31 = v0[27];
      v32 = v0[28];
      (*(v28 + 16))(v30, v27, v29);
      (*(v32 + 104))(v30, *MEMORY[0x277D22290], v31);
      sub_21700DD84();

      (*(v32 + 8))(v30, v31);
      (*(v28 + 8))(v27, v29);
    }

    v33 = v0[64];
    v34 = v0[58];
    v35 = v0[55];
    v49 = v0[54];
    v50 = v0[56];
    v48 = v0[40];
    v44 = v0[38];
    v36 = v0[35];
    v46 = v0[36];
    v37 = v0[33];
    v38 = v0[34];
    v39 = v0[25];
    v40 = v0[26];
    v41 = v0[24];
    v47 = v0[22];
    v45 = v0[21];
    v43 = v0[14];
    sub_2167F2BA0(v0[62]);
    sub_2167F2BA0(v33);
    (*(v39 + 16))(v40, v36, v41);
    LOBYTE(v41) = *(v36 + *(v37 + 36));
    (*(v38 + 8))(v36, v37);
    (*(v35 + 16))(v50, v34, v49);
    v55(v44, v48, v46);
    sub_216BD75DC(v40, v41, v50, v44, v45, v47, v43);
    (*(v35 + 8))(v34, v49);

    OUTLINED_FUNCTION_3();
  }

  return v21();
}

uint64_t sub_216BD742C()
{
  v1 = v0[72];
  v2 = v0[64];
  v3 = v0[58];
  v4 = v0[54];
  v5 = v0[55];

  v6 = sub_216BD7C24();
  OUTLINED_FUNCTION_12(&type metadata for PageUpdatePerformer.Error, v6);
  *v7 = v1 | 0x8000000000000000;
  swift_willThrow();
  sub_2167F2BA0(v2);
  (*(v5 + 8))(v3, v4);
  OUTLINED_FUNCTION_5_95();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216BD75DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  (*(v14 + 32))(a7, a1);
  updated = type metadata accessor for PageUpdatePerformer.Result(0, a5, a6, v15);
  *(a7 + updated[9]) = a2;
  v17 = updated[10];
  type metadata accessor for PageUpdateDescriptor(0, a5, a6, v18);
  OUTLINED_FUNCTION_9();
  (*(v19 + 32))(a7 + v17, a3);
  v20 = updated[11];
  sub_217006A94();
  OUTLINED_FUNCTION_9();
  v22 = *(v21 + 32);

  return v22(a7 + v20, a4);
}

uint64_t sub_216BD7734(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v2;
  v3 = sub_217005D24();
  *(inited + 72) = sub_216BD8664();
  *(inited + 48) = v3;
  return sub_21700E384();
}

uint64_t sub_216BD782C(uint64_t a1)
{
  v2 = sub_216BD8610();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_216BD7868(uint64_t a1)
{
  v2 = sub_216BD8610();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_216BD78B8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5378);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

uint64_t sub_216BD795C@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a3;
  v14 = sub_217007BF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v24 = a7 + *(v23 + 40);
  v39 = a2;
  v25 = v40;
  *v24 = a2;
  *(v24 + 8) = v25;
  v38 = a4;
  *(v24 + 16) = a4;
  v26 = sub_217007C24();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v40 = a7;
  v28(a7, a1, v26);
  sub_217007BE4();
  v29 = sub_217007C04();
  v37 = sub_21700EF74();
  result = sub_21700F144();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v35 = v26;
  v36 = v14;
  if ((v38 & 1) == 0)
  {
    v31 = v39;
    if (v39)
    {
LABEL_9:
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_217007BD4();
      _os_signpost_emit_with_name_impl(&dword_216679000, v29, v37, v33, v31, "", v32, 2u);
      OUTLINED_FUNCTION_19_6();
      v26 = v35;
      v14 = v36;
LABEL_10:

      (*(v16 + 16))(v19, v22, v14);
      sub_217007C64();
      swift_allocObject();
      v34 = sub_217007C54();
      (*(v27 + 8))(a1, v26);
      result = (*(v16 + 8))(v22, v14);
      *(v40 + *(v23 + 36)) = v34;
      return result;
    }

    __break(1u);
  }

  if (v39 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v39 & 0xFFFFF800) != 0xD800)
  {
    if (v39 >> 16 <= 0x10)
    {
      v31 = &v41;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_216BD7C24()
{
  result = qword_280E3D868;
  if (!qword_280E3D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D868);
  }

  return result;
}

uint64_t sub_216BD7C78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216BD7CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216BD7D64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216BD7DB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_216BD7E2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for PageUpdateDescriptor(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      result = sub_217006A94();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_216BD7EFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 84);
  v6 = *(v32 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v4 + 84);
  }

  v10 = sub_217006A94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v4 + 64);
  v15 = *(v6 + 64);
  v16 = *(v11 + 80);
  v17 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v18 = v10;
  v19 = *(v6 + 80) & 0xF8 | 7;
  v20 = v15 + 7;
  v21 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v16 + 11;
  v22 = a1;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v23 = ((v21 + ((v14 + v19 + 1) & ~v19)) & ~v16) + v17;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_13;
  }

  v27 = ((a2 - v13 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_31;
      }

LABEL_13:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_31;
      }

LABEL_21:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v29 = v23;
        }

        else
        {
          v29 = 4;
        }

        switch(v29)
        {
          case 2:
            v30 = *a1;
            break;
          case 3:
            v30 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v30 = *a1;
            break;
          default:
            v30 = *a1;
            break;
        }
      }

      else
      {
        v30 = 0;
      }

      return v13 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  if (v5 == v13)
  {
    v12 = v5;
    v18 = AssociatedTypeWitness;
LABEL_37:

    return __swift_getEnumTagSinglePayload(v22, v12, v18);
  }

  v22 = ((a1 + v14 + v19 + 1) & ~v19);
  if (v13 != v8)
  {
    v22 = ((v22 + v21) & ~v16);
    goto LABEL_37;
  }

  if (v7 >= 0x7FFFFFFE)
  {
    v12 = v7;
    v18 = v32;
    goto LABEL_37;
  }

  v31 = *((v22 + v20) & 0xFFFFFFFFFFFFFFF8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  if ((v31 + 1) >= 2)
  {
    return v31;
  }

  else
  {
    return 0;
  }
}

void sub_216BD823C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v32 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = sub_217006A94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v10;
  }

  v15 = *(v5 + 64);
  v16 = *(v7 + 80) & 0xF8 | 7;
  v17 = *(v7 + 64) + 7;
  v18 = *(v12 + 80);
  v19 = (v17 & 0xFFFFFFFFFFFFFFF8) + v18 + 11;
  v20 = ((v19 + ((v15 + v16 + 1) & ~v16)) & ~v18) + *(*(v11 - 8) + 64);
  v21 = 8 * v20;
  if (a3 <= v14)
  {
    v24 = 0;
    v22 = a1;
    v23 = a2;
  }

  else
  {
    v22 = a1;
    v23 = a2;
    if (v20 <= 3)
    {
      v27 = ((a3 - v14 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v27))
      {
        v24 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  if (v14 >= v23)
  {
    switch(v24)
    {
      case 1:
        v22[v20] = 0;
        if (v23)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&v22[v20] = 0;
        if (v23)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *&v22[v20] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!v23)
        {
          return;
        }

LABEL_33:
        if (v6 == v14)
        {
          v30 = v22;
          v13 = v6;
          v11 = AssociatedTypeWitness;
        }

        else
        {
          v30 = &v22[v15 + 1 + v16] & ~v16;
          if (v14 == v9)
          {
            if (v8 < 0x7FFFFFFE)
            {
              v31 = ((v17 + v30) & 0xFFFFFFFFFFFFFFF8);
              if (v23 > 0x7FFFFFFE)
              {
                *v31 = 0;
                *v31 = v23 - 0x7FFFFFFF;
              }

              else
              {
                *v31 = v23;
              }

              return;
            }

            v13 = v8;
            v11 = v32;
          }

          else
          {
            v30 = (v19 + v30) & ~v18;
          }
        }

        __swift_storeEnumTagSinglePayload(v30, v23, v13, v11);
        break;
    }
  }

  else
  {
    v25 = ~v14 + v23;
    if (v20 < 4)
    {
      v26 = (v25 >> v21) + 1;
      if (v20)
      {
        v29 = v25 & ~(-1 << v21);
        bzero(v22, v20);
        if (v20 == 3)
        {
          *v22 = v29;
          v22[2] = BYTE2(v29);
        }

        else if (v20 == 2)
        {
          *v22 = v29;
        }

        else
        {
          *v22 = v25;
        }
      }
    }

    else
    {
      bzero(v22, v20);
      *v22 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        v22[v20] = v26;
        break;
      case 2:
        *&v22[v20] = v26;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&v22[v20] = v26;
        break;
      default:
        return;
    }
  }
}
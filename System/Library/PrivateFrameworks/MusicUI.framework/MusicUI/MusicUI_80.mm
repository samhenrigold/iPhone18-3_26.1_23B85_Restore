uint64_t sub_216F09FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3B8, &qword_2170711E0);
  return sub_216F0A004(a1, a2 + *(v4 + 44));
}

uint64_t sub_216F0A004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3C0, &qword_2170711E8);
  sub_216F0A2DC(a1, a2 + *(v8 + 44));
  v9 = sub_217009CE4();
  v10 = type metadata accessor for LinkView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_217007F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3C8, &qword_2170711F0) + 36);
  *v19 = v9;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  v20 = sub_217009CB4();
  v21 = a1 + *(v10 + 24);
  v22 = *(v21 + 8);
  if (*(v21 + 32) != 1)
  {
    v23 = *v21;
    v48 = v4;
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);

    sub_21700ED94();
    v26 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v23, v22, v24, v25, 0);
    (*(v5 + 8))(v7, v48);
  }

  sub_217007F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3D0, &qword_2170711F8) + 36);
  *v35 = v20;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  v36 = sub_217009CD4();
  sub_217007F24();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3D8, &qword_217071200);
  v46 = a2 + *(result + 36);
  *v46 = v36;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_216F0A2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3E0, &qword_217071208);
  MEMORY[0x28223BE20](v4);
  v6 = (&v37 - v5);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3E8, &qword_217071210);
  MEMORY[0x28223BE20](v38);
  v8 = &v37 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3F0, &qword_217071218);
  MEMORY[0x28223BE20](v39);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v44 = &v37 - v14;
  v15 = (a1 + *(type metadata accessor for LinkComponentModel(0) + 28));
  v16 = v15[1];
  if (v16)
  {
    v42 = *v15;
    v43 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v17 = qword_27CAB6260;
  v18 = v16;
  sub_21700DF14();
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_27CACD378;
  KeyPath = swift_getKeyPath();
  v41 = v19;
  v20 = qword_27CAB6268;

  if (v20 != -1)
  {
    swift_once();
  }

  v37 = qword_27CACD380;

  v21 = sub_21700ADB4();
  sub_21700B3B4();
  sub_217008BB4();
  v22 = (v6 + *(v4 + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
  v24 = *MEMORY[0x277CE1050];
  v25 = sub_21700ADF4();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  *v6 = v21;
  memcpy(v6 + 1, __src, 0x70uLL);
  if (qword_27CAB6270 != -1)
  {
    swift_once();
  }

  v26 = qword_27CACD388;
  v27 = swift_getKeyPath();
  sub_2167A4788();
  v28 = &v8[*(v38 + 36)];
  *v28 = v27;
  v28[1] = v26;
  v29 = qword_27CAB6278;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_27CACD390;
  v38 = qword_27CACD390;
  sub_2167A4788();
  *&v12[*(v39 + 36)] = v30;
  v31 = v44;
  sub_2167A4788();
  v32 = v45;
  sub_2166A6EA4();
  v34 = v42;
  v33 = v43;
  *a2 = v42;
  *(a2 + 8) = v18;
  *(a2 + 16) = 0;
  *(a2 + 24) = v33;
  v35 = v41;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v35;
  *(a2 + 48) = v37;
  *(a2 + 56) = 0x4024000000000000;
  *(a2 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD3F8, &unk_217071280);
  sub_2166A6EA4();

  sub_2167770D0(v34, v18, 0, v33);

  sub_216697664(v31, &qword_27CACD3F0, &qword_217071218);
  sub_216697664(v32, &qword_27CACD3F0, &qword_217071218);
  sub_2167C4DF0(v34, v18, 0, v33);
}

uint64_t sub_216F0A850@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_217009EB4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_2_187();
  sub_216F0AA74();
  v8 = type metadata accessor for LinkView(0);
  (*(v6 + 104))(v2, *MEMORY[0x277CE0A90], v4);
  sub_2167CD8D8();
  sub_2170082A4();
  v9 = a2 + *(v8 + 24);
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  return result;
}

uint64_t sub_216F0A9C4(uint64_t a1)
{
  result = sub_216F0AB3C(&qword_280E2BAE0, type metadata accessor for LinkView, &unk_21707107C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F0AA1C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216F0AA74()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216F0AACC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216F09FB0(v4, a1);
}

uint64_t sub_216F0AB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F0AB84(uint64_t a1)
{
  v2 = type metadata accessor for ActionButtonListStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216F0ABE0(uint64_t a1)
{
  result = sub_217009D54();
  qword_27CACD378 = result;
  return result;
}

uint64_t sub_216F0AC00(uint64_t a1)
{
  result = sub_21700AC54();
  qword_27CACD380 = result;
  return result;
}

uint64_t sub_216F0AC20(uint64_t a1)
{
  sub_217009D54();
  sub_217009DE4();
  v1 = sub_217009E34();

  qword_27CACD388 = v1;
  return result;
}

uint64_t sub_216F0AC64()
{
  v0 = [objc_opt_self() tertiaryLabelColor];
  result = sub_21700AC44();
  qword_27CACD390 = result;
  return result;
}

unint64_t sub_216F0ACA4()
{
  result = qword_27CACD400;
  if (!qword_27CACD400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD3A8, &qword_217071180);
    sub_216F0AD30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD400);
  }

  return result;
}

unint64_t sub_216F0AD30()
{
  result = qword_27CACD408;
  if (!qword_27CACD408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD3A0, &qword_217071178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD398, &qword_217071110);
    type metadata accessor for ActionButtonListStyle(255);
    sub_216F0AE68(&qword_27CACD3B0, &qword_27CACD398, &qword_217071110);
    sub_216F0AB3C(&qword_27CAC36D0, type metadata accessor for ActionButtonListStyle, &unk_21702C964);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD408);
  }

  return result;
}

uint64_t sub_216F0AE68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_216F0AEE8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {

    v4 = sub_216921BA0();

    if (v4)
    {
      sub_21700B3B4();
      result = sub_2170083C4();
      v6 = v11;
      v7 = v12;
      v8 = v13;
      v9 = v14;
      v10 = v15;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0uLL;
    }

    *a3 = v4;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
    *(a3 + 32) = v9;
    *(a3 + 40) = v10;
  }

  else
  {
    _s18HighlightViewModelCMa();
    sub_216F0AFCC();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

unint64_t sub_216F0AFCC()
{
  result = qword_27CAC3670;
  if (!qword_27CAC3670)
  {
    _s18HighlightViewModelCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3670);
  }

  return result;
}

unint64_t sub_216F0B034()
{
  result = qword_27CACD410;
  if (!qword_27CACD410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD418, &qword_217071358);
    sub_216F0B0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD410);
  }

  return result;
}

unint64_t sub_216F0B0B8()
{
  result = qword_27CACD420;
  if (!qword_27CACD420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD428, &qword_217071360);
    sub_216F0B144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD420);
  }

  return result;
}

unint64_t sub_216F0B144()
{
  result = qword_27CACD430;
  if (!qword_27CACD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD430);
  }

  return result;
}

id sub_216F0B198(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateAlignment_];
  return v2;
}

uint64_t sub_216F0B1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216F0B2D4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_216F0B244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216F0B2D4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_216F0B2A8(uint64_t a1)
{
  sub_216F0B2D4();
  sub_2170094F4();
  __break(1u);
}

unint64_t sub_216F0B2D4()
{
  result = qword_27CACD438;
  if (!qword_27CACD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD438);
  }

  return result;
}

unint64_t sub_216F0B370(uint64_t a1)
{
  result = type metadata accessor for FacetBarState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObjectGraph(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SearchResultsPageIntent(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for JSIntentDispatcher();
        if (v5 <= 0x3F)
        {
          result = sub_216820E14();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_216F0B458()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_2(v3);
  v1[4] = v4;
  v1[5] = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v6);
  v1[7] = OUTLINED_FUNCTION_80();

  return MEMORY[0x2822009F8](sub_216F0B534, 0, 0);
}

uint64_t sub_216F0B534()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  OUTLINED_FUNCTION_1_222();
  sub_216F0CDE8(v4, v2, v6);
  sub_21700EA34();
  v7 = sub_21700EA24();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  OUTLINED_FUNCTION_0_261();
  sub_216F0CE48(v2, v11 + v8, v12);
  sub_21677EDF4();
  v14 = v13;
  v0[8] = v13;
  v15 = swift_task_alloc();
  v0[9] = v15;
  v16 = type metadata accessor for SearchResultsViewModel.Data(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  *v15 = v0;
  v15[1] = sub_216F0B6CC;
  v21 = v0[2];
  v22 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v21, v14, v16, v17, v22, v18, v19, v20);
}

uint64_t sub_216F0B6CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 80) = v0;

  if (v0)
  {
    v5 = sub_216F0B840;
  }

  else
  {
    v5 = sub_216F0B7D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_216F0B7D0()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216F0B840()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216F0B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a1;
  v4[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58, &unk_2170354D0);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558, &qword_217053830);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for SearchResultsViewModel(0);
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v4[21] = *(v6 + 64);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0, &qword_2170539C0);
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for SearchResultsListSection(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for JSSearchResultsPage(0);
  v4[29] = swift_task_alloc();
  sub_21700EA34();
  v4[30] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v4[31] = v8;
  v4[32] = v7;

  return MEMORY[0x2822009F8](sub_216F0BACC, v8, v7);
}

uint64_t sub_216F0BACC()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v1 + 24);
  v4 = type metadata accessor for SearchResultsPageIntent(0);
  v0[5] = v4;
  v5 = sub_216F0D3B8(&qword_27CACD460, type metadata accessor for SearchResultsPageIntent, &unk_217061A08);
  v0[6] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_216F0CDE8(v2 + v3, boxed_opaque_existential_1, type metadata accessor for SearchResultsPageIntent);
  v0[33] = sub_216CE0740(v0 + 2, *(v2 + 8), *(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));
  sub_216697664((v0 + 2), &qword_27CAC9698, &qword_217060060);
  v0[10] = v4;
  v0[11] = v5;
  v7 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_216F0CDE8(v2 + v3, v7, type metadata accessor for SearchResultsPageIntent);
  sub_216D5DFC0();
  v9 = v8;
  v0[34] = v8;
  sub_216697664((v0 + 7), &qword_27CAC9698, &qword_217060060);
  v10 = swift_task_alloc();
  v0[35] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  *v10 = v0;
  v10[1] = sub_216F0BCA4;
  v16 = v0[28];
  v15 = v0[29];
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v15, v9, v16, v11, v17, v12, v13, v14);
}

uint64_t sub_216F0BCA4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_216F0C230;
  }

  else
  {
    v5 = sub_216F0BDE0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216F0BDE0()
{
  v2 = v0[23];
  v1 = v0[24];

  sub_216EC6014();
  sub_216CE08F4(v3, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_216697664(v0[23], &qword_27CABA5A0, &qword_2170539C0);
    sub_216C03C2C(0);
  }

  else
  {
    v5 = v0[26];
    v4 = v0[27];
    v6 = v0[25];
    v7 = v0[22];
    v8 = v0[20];
    v9 = v0[18];
    v31 = v0[29];
    v32 = v0[17];
    v10 = v0[16];
    v33 = v4;
    v34 = v0[28];
    sub_216F0CE48(v0[23], v4, type metadata accessor for SearchResultsListSection);
    sub_216EC6014();
    v30 = sub_21687898C(v11);

    sub_216F0CDE8(v4, v5, type metadata accessor for SearchResultsListSection);
    sub_216F0CDE8(v5, v6, type metadata accessor for SearchResultsListSection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A8, &qword_217020B50);
    swift_allocObject();
    v12 = sub_21687C83C(v6);
    sub_216F0D0D8(v5, type metadata accessor for SearchResultsListSection);
    OUTLINED_FUNCTION_1_222();
    sub_216F0CDE8(v10, v7, v13);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_0_261();
    sub_216F0CE48(v7, v16 + v14, v17);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
    sub_217007DB4();
    swift_endAccess();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v18);
    type metadata accessor for FacetBarState.Data(0);
    swift_allocObject();
    v19 = sub_216C03494(v30, v12, sub_216F0D130, v15, v9);
    sub_216C03C2C(v19);
    sub_216681B04(v31 + *(v34 + 32), v32, &qword_27CABFD58, &unk_2170354D0);
    Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
    v21 = __swift_getEnumTagSinglePayload(v32, 1, Context) != 1;
    sub_216697664(v32, &qword_27CABFD58, &unk_2170354D0);
    sub_216C03D94(v21);
    sub_216F0D0D8(v33, type metadata accessor for SearchResultsListSection);
  }

  v22 = v0[33];
  v23 = v0[28];
  v24 = v0[29];
  v25 = v0[15];
  sub_216681B04(v24 + v23[8], v25, &qword_27CABFD58, &unk_2170354D0);
  v26 = v23[7];
  v27 = type metadata accessor for SearchResultsViewModel.Data(0);
  sub_216681B04(v24 + v26, v25 + v27[5], &qword_27CAC5E40, &qword_2170714D0);
  LOBYTE(v26) = *(v24 + 16);
  LOBYTE(v23) = *(v24 + v23[9]);
  sub_216F0D0D8(v24, type metadata accessor for JSSearchResultsPage);
  *(v25 + v27[6]) = (v26 & 1) == 0;
  *(v25 + v27[7]) = v23;
  *(v25 + v27[8]) = v22;

  OUTLINED_FUNCTION_3();

  return v28();
}

uint64_t sub_216F0C230()
{

  if (qword_27CAB6280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CACD440);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 288);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_216679000, v4, v5, "Unable to load search results data: error='%{public}@'", v7, 0xCu);
    sub_216697664(v8, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_216F0C448(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + *(type metadata accessor for SearchResultsViewModel(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(a2 + 8);

  return sub_216C02D04(v5, v6, v7, a1);
}

uint64_t sub_216F0C498()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_2(v3);
  v1[4] = v4;
  v1[5] = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_80();
  v6 = type metadata accessor for SearchResultsViewModel.Data(0);
  OUTLINED_FUNCTION_2(v6);
  v1[7] = v7;
  v1[8] = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v9);
  v1[10] = OUTLINED_FUNCTION_80();

  return MEMORY[0x2822009F8](sub_216F0C5C4, 0, 0);
}

uint64_t sub_216F0C5C4()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];
  v9 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  sub_216F0CDE8(v8, v1, type metadata accessor for SearchResultsViewModel.Data);
  OUTLINED_FUNCTION_1_222();
  sub_216F0CDE8(v6, v5, v10);
  sub_21700EA34();
  v11 = sub_21700EA24();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v3 + *(v7 + 80) + v12) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v11;
  *(v14 + 24) = v15;
  sub_216F0CE48(v1, v14 + v12, type metadata accessor for SearchResultsViewModel.Data);
  OUTLINED_FUNCTION_0_261();
  sub_216F0CE48(v5, v14 + v13, v16);
  sub_21677BBA0();

  OUTLINED_FUNCTION_3();

  return v17();
}

uint64_t sub_216F0C768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21700EA34();
  v5[5] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_216F0C800, v7, v6);
}

uint64_t sub_216F0C800()
{
  OUTLINED_FUNCTION_33();
  v1 = [objc_opt_self() defaultCenter];
  if (qword_280E29C88 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  [v1 postNotificationName:qword_280E739F8 object:0];

  if (*(v2 + *(type metadata accessor for SearchResultsViewModel.Data(0) + 28)) == 1)
  {
    type metadata accessor for UnifiedMessages.Coordinator(0);
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    v3 = v0[2];
    v0[8] = v3;

    return MEMORY[0x2822009F8](sub_216F0C958, v3, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_216F0C958()
{
  OUTLINED_FUNCTION_33();
  sub_216A04BA8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_216F0C9B8, v1, v2);
}

uint64_t sub_216F0C9B8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216F0CA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SearchResultsViewModel.Data(0);
  v7 = *(a1 + *(v6 + 32));
  v8 = type metadata accessor for SearchResultsViewModel(0);
  v9 = (v2 + *(v8 + 24));
  v19 = v9[1];
  v20 = *v9;
  type metadata accessor for MenuBuilder();
  v10 = v2[1];
  sub_21700DF14();
  v11 = sub_216C65C14();
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  v12 = *(v8 + 32);
  type metadata accessor for MusicPageMetricsProvider(0);

  v18 = *(v3 + v12);
  swift_unknownObjectRetain();
  sub_21700D4B4();
  v13 = _s14descr28290C1A9V11ContentViewVMa(0);
  sub_216681B04(a1, a2 + v13[8], &qword_27CABFD58, &unk_2170354D0);
  sub_216681B04(a1 + *(v6 + 20), a2 + v13[9], &qword_27CAC5E40, &qword_2170714D0);
  v14 = *v3;
  *a2 = v7;
  *(a2 + 8) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v19;
  *(a2 + 40) = v22;
  *(a2 + v13[10]) = v10;
  *(a2 + v13[11]) = v14;
  sub_216F0D3B8(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);

  v15 = sub_217007D54();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD458, &qword_2170714D8);
  v17 = (a2 + *(result + 36));
  *v17 = v15;
  v17[1] = v21;
  return result;
}

uint64_t sub_216F0CC18()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACD440);
  __swift_project_value_buffer(v0, qword_27CACD440);
  return sub_217007C94();
}

uint64_t sub_216F0CC98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A0;

  return sub_216F0B458();
}

uint64_t sub_216F0CD34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return sub_216F0C498();
}

uint64_t sub_216F0CDE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216F0CE48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216F0CEA8(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for SearchResultsViewModel.Data(0);
  OUTLINED_FUNCTION_2(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_36(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2166AB4A4;

  return sub_216F0C768(a1, v13, v14, v1 + v7, v1 + v12);
}

uint64_t sub_216F0CFEC(uint64_t a1)
{
  v4 = type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_36(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2166AB4A4;

  return sub_216F0B8B0(a1, v7, v8, v1 + v6);
}

uint64_t sub_216F0D0D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216F0D130(uint64_t a1)
{
  v3 = type metadata accessor for SearchResultsViewModel(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216F0C448(a1, v5);
}

void sub_216F0D1C4(uint64_t a1)
{
  sub_216F0D2A8(319, qword_280E3DD30, type metadata accessor for JSSearchResultsPage.QueryContext);
  if (v1 <= 0x3F)
  {
    sub_216F0D2A8(319, qword_280E3DDE0, type metadata accessor for JSSearchResultsPage.NoResultsContent);
    if (v2 <= 0x3F)
    {
      sub_216C06B18(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F0D2A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_216F0D2FC()
{
  result = qword_280E2B290;
  if (!qword_280E2B290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD458, &qword_2170714D8);
    sub_216F0D3B8(qword_280E38CD8, _s14descr28290C1A9V11ContentViewVMa, &unk_217053A24);
    sub_216F0D400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B290);
  }

  return result;
}

uint64_t sub_216F0D3B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216F0D400()
{
  result = qword_280E2A7E8;
  if (!qword_280E2A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18, &unk_2170543F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A7E8);
  }

  return result;
}

uint64_t sub_216F0D464(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_216F0D610(a1, &v10 - v5);
  v7 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  OUTLINED_FUNCTION_49_30();
  sub_216826A18(v6, v1 + v8);
  return swift_endAccess();
}

uint64_t sub_216F0D524(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = sub_21700D194();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  OUTLINED_FUNCTION_49_30();
  sub_216826A18(v6, v1 + v8);
  return swift_endAccess();
}

uint64_t sub_216F0D610@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_21700D704();
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v39 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700CFB4();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v38 = sub_216F0DBDC(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD498, &unk_2170715B0);
  v8 = *(sub_21700D114() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v36 = *(v8 + 72);
  v10 = swift_allocObject();
  v42 = xmmword_217013D90;
  *(v10 + 16) = xmmword_217013D90;
  v37 = v10;
  v41 = v10 + v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  v31 = xmmword_217013DA0;
  *(inited + 16) = xmmword_217013DA0;
  v12 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 72) = v12;
  *(inited + 48) = 1701273968;
  *(inited + 56) = 0xE400000000000000;
  sub_21700E384();
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E78, &qword_21701F060);
  v34 = sub_21700DEE4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v33 = 2 * *(v15 + 72);
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_27_57(v17);
  sub_21700DEB4();
  sub_21700DED4();
  sub_216F0F260(v17);
  v35 = "supportsMusicShareSheet";
  OUTLINED_FUNCTION_28_48();
  sub_21700CFA4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4A0, &qword_2170715C0);
  v19 = *(sub_21700D184() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v30[3] = v18;
  v30[2] = v21 + 2 * v20;
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_27_57(v22);
  sub_21700D174();
  sub_21700D154();
  sub_216F0F458(v22);
  sub_21700D104();
  v23 = swift_initStackObject();
  *(v23 + 16) = v31;
  *(v23 + 32) = 0x707954746E657665;
  *(v23 + 40) = 0xE900000000000065;
  *(v23 + 72) = MEMORY[0x277D837D0];
  *(v23 + 48) = 0x6973736572706D69;
  *(v23 + 56) = 0xEB00000000736E6FLL;
  sub_21700E384();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_217015230;
  v25 = v24 + v16;
  sub_21700DEB4();
  sub_21700DED4();
  if (qword_280E2A178 != -1)
  {
    swift_once();
  }

  v26 = v34;
  v27 = __swift_project_value_buffer(v34, qword_280E73A38);
  (*(v14 + 16))(v25 + v33, v27, v26);
  sub_216F0F260(v24);
  OUTLINED_FUNCTION_28_48();
  sub_21700CFA4();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_27_57(v28);
  sub_21700D164();
  sub_21700D144();
  sub_216F0F458(v28);
  sub_21700D104();
  sub_21700D6F4();
  sub_216C5570C(MEMORY[0x277D84F90]);
  return sub_21700D124();
}

uint64_t sub_216F0DBDC(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v46 = *a1;
  MusicMetrics.PageType.rawValue.getter();
  v6 = MEMORY[0x277D837D0];
  v49 = MEMORY[0x277D837D0];
  v47 = v7;
  v48 = v8;
  OUTLINED_FUNCTION_39_31();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_32();
  sub_2166EF9D4();
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v49 = v6;
  v47 = v9;
  v48 = v10;
  OUTLINED_FUNCTION_39_31();
  sub_21700DF14();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_32();
  sub_2166EF9D4();
  v11 = v43;
  v12 = type metadata accessor for MusicMetrics.PageFields(0);
  sub_2167DE934(&a1[v12[7]], v5);
  v13 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v13) == 1)
  {
    sub_21669987C(v5, &qword_27CABA820, &unk_217018CE0);
    OUTLINED_FUNCTION_15_78();
    sub_216934F28();
    if (v45)
    {
      sub_21669987C(&v44, &unk_27CABF7A0, &unk_217014D20);
    }
  }

  else
  {
    v45 = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(*(v13 - 8) + 32))(boxed_opaque_existential_1, v5, v13);
    OUTLINED_FUNCTION_51_15();
  }

  if (v49)
  {
    OUTLINED_FUNCTION_39_31();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_188();
    sub_2166EF9D4();
    v11 = v43;
  }

  else
  {
    sub_21669987C(&v47, &unk_27CABF7A0, &unk_217014D20);
    sub_2166AF66C(0x6C725565676170, 0xE700000000000000);
    if (v15)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_29_55();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
      OUTLINED_FUNCTION_22_63(v16);
      OUTLINED_FUNCTION_21_72();
      v17 = OUTLINED_FUNCTION_40_32();
      OUTLINED_FUNCTION_38_42(v17, v18, MEMORY[0x277D837D0]);
    }

    else
    {
      OUTLINED_FUNCTION_17_75();
    }

    sub_21669987C(&v44, &unk_27CABF7A0, &unk_217014D20);
  }

  v19 = &a1[v12[8]];
  v20 = *(v19 + 1);
  if (v20)
  {
    v21 = *v19;
    v45 = v6;
    *&v44 = v21;
    *(&v44 + 1) = v20;
    OUTLINED_FUNCTION_51_15();
  }

  else
  {
    OUTLINED_FUNCTION_15_78();
    OUTLINED_FUNCTION_28_6();
    sub_216934F28();
    if (v45)
    {
      sub_21669987C(&v44, &unk_27CABF7A0, &unk_217014D20);
    }
  }

  if (v49)
  {
    OUTLINED_FUNCTION_39_31();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_188();
    OUTLINED_FUNCTION_47_2();
    sub_2166EF9D4();
    v11 = v43;
  }

  else
  {
    sub_21700DF14();
    sub_21669987C(&v47, &unk_27CABF7A0, &unk_217014D20);
    v22 = OUTLINED_FUNCTION_109();
    sub_2166AF66C(v22, v23);
    if (v24)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_29_55();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
      OUTLINED_FUNCTION_22_63(v25);
      OUTLINED_FUNCTION_21_72();
      v26 = OUTLINED_FUNCTION_40_32();
      OUTLINED_FUNCTION_38_42(v26, v27, MEMORY[0x277D837D0]);
    }

    else
    {
      OUTLINED_FUNCTION_17_75();
    }

    sub_21669987C(&v44, &unk_27CABF7A0, &unk_217014D20);
  }

  v28 = &a1[v12[9]];
  v29 = *(v28 + 1);
  if (v29)
  {
    v30 = *v28;
    v45 = v6;
    *&v44 = v30;
    *(&v44 + 1) = v29;
    OUTLINED_FUNCTION_51_15();
  }

  else
  {
    OUTLINED_FUNCTION_15_78();
    sub_216934F28();
    if (v45)
    {
      sub_21669987C(&v44, &unk_27CABF7A0, &unk_217014D20);
    }
  }

  if (v49)
  {
    OUTLINED_FUNCTION_39_31();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_188();
    sub_2166EF9D4();
    v11 = v43;
  }

  else
  {
    sub_21700DF14();
    sub_21669987C(&v47, &unk_27CABF7A0, &unk_217014D20);
    sub_2166AF66C(0x6554686372616573, 0xEA00000000006D72);
    if (v31)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_29_55();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
      OUTLINED_FUNCTION_22_63(v32);
      OUTLINED_FUNCTION_21_72();
      v33 = OUTLINED_FUNCTION_40_32();
      OUTLINED_FUNCTION_38_42(v33, v34, MEMORY[0x277D837D0]);
    }

    else
    {
      OUTLINED_FUNCTION_17_75();
    }

    sub_21669987C(&v44, &unk_27CABF7A0, &unk_217014D20);
  }

  v35 = *&a1[v12[10]];
  if (v35)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890, &qword_217033E20);
    *&v44 = v35;
    OUTLINED_FUNCTION_51_15();
  }

  else
  {
    OUTLINED_FUNCTION_15_78();
    OUTLINED_FUNCTION_28_6();
    sub_216934F28();
    if (v45)
    {
      sub_21669987C(&v44, &unk_27CABF7A0, &unk_217014D20);
    }
  }

  if (v49)
  {
    OUTLINED_FUNCTION_39_31();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_188();
    OUTLINED_FUNCTION_47_2();
    sub_2166EF9D4();
    return v43;
  }

  else
  {
    sub_21700DF14();
    sub_21669987C(&v47, &unk_27CABF7A0, &unk_217014D20);
    v36 = OUTLINED_FUNCTION_109();
    v38 = sub_2166AF66C(v36, v37);
    if (v39)
    {
      v40 = v38;
      swift_isUniquelyReferenced_nonNull_native();
      v43 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
      sub_21700F554();
      v11 = v43;

      sub_2166EF9C4((*(v11 + 56) + 32 * v40), &v44);
      sub_21700F574();
    }

    else
    {
      OUTLINED_FUNCTION_17_75();
    }

    sub_21669987C(&v44, &unk_27CABF7A0, &unk_217014D20);
  }

  return v11;
}

uint64_t sub_216F0E280(uint64_t a1)
{
  if (qword_280E45D78 != -1)
  {
    swift_once();
  }

  sub_21700DF14();
  sub_21700DF14();
  OUTLINED_FUNCTION_28_48();

  return sub_21700CFA4();
}

void sub_216F0E32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E78, &qword_21701F060);
  sub_21700DEE4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217013D90;
  sub_21700DEB4();
  sub_21700DED4();
  sub_216F0F260(v0);
  qword_280E45D80 = v1;
}

uint64_t sub_216F0E400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD480, &qword_217071588);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD488, &unk_217071590);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217015220;
  v4 = v3 + v2;
  v21 = *(v0 + 48);
  sub_21700D684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E78, &qword_21701F060);
  v5 = sub_21700DEE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217018C90;
  v10 = v9 + v8;
  sub_21700DEB4();
  sub_21700DED4();
  if (qword_280E2A160 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_280E73A08);
  v12 = *(v6 + 16);
  v12(v10 + 2 * v7, v11, v5);
  if (qword_280E2A170 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280E73A20);
  v12(v10 + 3 * v7, v13, v5);
  sub_216F0F260(v9);
  *(v4 + v21) = v14;
  v15 = *(v0 + 48);
  sub_21700D664();
  if (qword_280E45D78 != -1)
  {
    swift_once();
  }

  *(v4 + v1 + v15) = qword_280E45D80;
  v16 = *(v0 + 48);
  sub_21700DF14();
  sub_21700D694();
  *(v4 + 2 * v1 + v16) = qword_280E45D80;
  v17 = *(v0 + 48);
  sub_21700DF14();
  sub_21700D674();
  *(v4 + 3 * v1 + v17) = qword_280E45D80;
  v18 = *(v0 + 48);
  sub_21700DF14();
  sub_21700D654();
  *(v4 + 4 * v1 + v18) = qword_280E45D80;
  v19 = *(v0 + 48);
  sub_21700DF14();
  sub_21700D6A4();
  *(v4 + 5 * v1 + v19) = qword_280E45D80;
  sub_21700D6B4();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD490, &unk_2170715A0);
  sub_216F0FE08(&qword_280E2A1E8, MEMORY[0x277D21E98], MEMORY[0x277D21EA0]);
  result = sub_21700E384();
  qword_280E45D98 = result;
  return result;
}

uint64_t sub_216F0E7AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD468, &qword_217071570);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD470, &qword_217071578) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217015220;
  v4 = v3 + v2;
  v5 = v0[14];
  sub_21700D684();
  v6 = MEMORY[0x277D84FA0];
  *(v4 + v5) = MEMORY[0x277D84FA0];
  v7 = v0[14];
  sub_21700D664();
  *(v4 + v1 + v7) = v6;
  v8 = v0[14];
  sub_21700D694();
  *(v4 + 2 * v1 + v8) = v6;
  v9 = v0[14];
  sub_21700D674();
  *(v4 + 3 * v1 + v9) = v6;
  v10 = v0[14];
  sub_21700D654();
  *(v4 + 4 * v1 + v10) = v6;
  v11 = v0[14];
  sub_21700D6A4();
  *(v4 + 5 * v1 + v11) = v6;
  sub_21700D6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD478, &qword_217071580);
  sub_216F0FE08(&qword_280E2A1E8, MEMORY[0x277D21E98], MEMORY[0x277D21EA0]);
  result = sub_21700E384();
  qword_280E45DB0 = result;
  return result;
}

uint64_t sub_216F0E97C()
{
  v0 = sub_21700CF84();
  __swift_allocate_value_buffer(v0, qword_280E73DB0);
  __swift_project_value_buffer(v0, qword_280E73DB0);
  if (qword_280E45D90 != -1)
  {
    swift_once();
  }

  v1 = qword_280E45DA8;
  sub_21700DF14();
  if (v1 != -1)
  {
    swift_once();
  }

  sub_21700DF14();
  return sub_21700CF74();
}

uint64_t sub_216F0EA7C()
{
  sub_21669987C(v0 + OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics, &qword_27CAB8DF8, qword_21701B930);

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216F0EAF8(uint64_t a1)
{
  v4 = sub_2166BF3C8(a1);
  if (v4)
  {
    v2 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4B8, &qword_2170715E8);
    v5 = OUTLINED_FUNCTION_6_129();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v23 = sub_2166BF3C8(a1);
  if (v23)
  {
    v6 = 0;
    v7 = v5 + 56;
    OUTLINED_FUNCTION_4_154();
    while (1)
    {
      OUTLINED_FUNCTION_3_179();
      sub_216C746F0();
      if (v2)
      {
        v8 = OUTLINED_FUNCTION_109();
        v9 = MEMORY[0x21CEA0220](v8);
      }

      else
      {
        v9 = *(v22 + 8 * v6);
      }

      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      v24 = v9;
      v11 = sub_217007D44();
      OUTLINED_FUNCTION_10_108();
      sub_216F0FE08(&qword_27CABF9D0, v12, MEMORY[0x277CBCDB0]);
      v2 = &v24;
      sub_21700E424();
      OUTLINED_FUNCTION_1_223();
      v15 = ~v14;
      while (1)
      {
        v16 = v13 & v15;
        v17 = (v13 & v15) >> 6;
        v18 = *(v7 + 8 * v17);
        v19 = v1 << (v13 & v15);
        if ((v19 & v18) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_10_108();
        sub_216F0FE08(&qword_27CABF9D8, v20, MEMORY[0x277CBCDB8]);
        v2 = v11;
        if (sub_21700E494())
        {

          goto LABEL_17;
        }

        v13 = v16 + 1;
      }

      *(v7 + 8 * v17) = v19 | v18;
      *(*(v5 + 48) + 8 * v16) = v9;
      OUTLINED_FUNCTION_23_62();
      if (v10)
      {
        goto LABEL_20;
      }

      *(v5 + 16) = v21;
LABEL_17:
      if (v6 == v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_216F0ECD4()
{
  OUTLINED_FUNCTION_48_28();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABACA8, &qword_217022D88), v4 = OUTLINED_FUNCTION_6_129(), (v5 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_36_46();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_30_54();
      sub_21700DF14();
      OUTLINED_FUNCTION_47_2();
      sub_21700E614();
      sub_21700F944();
      OUTLINED_FUNCTION_1_223();
      while (1)
      {
        OUTLINED_FUNCTION_34_39();
        if (v8)
        {
          break;
        }

        OUTLINED_FUNCTION_45_33();
        v8 = v8 && v7 == v2;
        if (v8 || (sub_21700F7D4() & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_19_65(v6);
      if (v10)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v9;
LABEL_15:
      if (v3 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

uint64_t sub_216F0EDEC()
{
  OUTLINED_FUNCTION_48_28();
  if (!v1)
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4B0, &qword_2170715E0);
  result = OUTLINED_FUNCTION_6_129();
  v3 = result;
  v115 = *(v0 + 16);
  if (!v115)
  {
    goto LABEL_42;
  }

  v4 = 0;
  v117 = result;
  v118 = result + 56;
  v113 = v0;
  v114 = v0 + 32;
  while (1)
  {
    if (v4 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v5 = (v114 + 32 * v4);
    v119 = *v5;
    v120 = v5[1];
    sub_21700F8F4();
    v6 = v120.i64[1];
    v7 = v119.i64[1];
    if (v120.i64[1])
    {
      MEMORY[0x21CEA0720](0);
      sub_21700F914();
      sub_21700DF14();
      if (v119.i64[1])
      {
        sub_21700DF14();
        sub_21700E614();
      }

      sub_21700E614();
    }

    else
    {
      MEMORY[0x21CEA0720](1);
    }

    result = sub_21700F944();
    v8 = -1 << *(v3 + 32);
    v9 = result & ~v8;
    v10 = v9 >> 6;
    v11 = *(v118 + 8 * (v9 >> 6));
    v12 = 1 << v9;
    if (((1 << v9) & v11) == 0)
    {
      break;
    }

    v116 = v4;
    v122 = ~v8;
    v13 = v118;
    while (1)
    {
      v14 = *(v3 + 48) + 32 * v9;
      v16 = *v14;
      v15 = *(v14 + 16);
      v18 = *(v14 + 8);
      v123 = v15;
      v17 = *(&v15 + 1);
      v124 = *v14;
      if (!*(&v15 + 1))
      {
        break;
      }

      if (!v6)
      {
        sub_21700DF14();
        v44 = sub_21700DF14();
        v52 = OUTLINED_FUNCTION_31_54(v44, v45, v46, v47, v48, v49, v50, v51, v113, v114, v115, v116, v117, v118, v119.i64[0], v119.i64[1], v120.i64[0], v120.i64[1], v121, v122, v123.i64[0], v123.i64[1], v124.i64[0]);
        sub_216781E14(v52, v53, v54, v17);
        OUTLINED_FUNCTION_28_6();
        v43 = 0;
        goto LABEL_22;
      }

      if (v18)
      {
        if (!v7)
        {
          OUTLINED_FUNCTION_7_124();
          sub_216781DD0(v77, v78, v79, v80);
          OUTLINED_FUNCTION_13_86();
          sub_216781DD0(v81, v82, v83, v84);
          OUTLINED_FUNCTION_13_86();
          sub_216781E14(v85, v86, v87, v88);
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_43_35(vceqq_s64(v16, v119));
        if ((v20 & 1) == 0)
        {
          v21 = v19;
          if ((sub_21700F7D4() & 1) == 0)
          {
            sub_216781DD0(v21, v18, v123.i64[0], v123.i64[1]);
            v22 = OUTLINED_FUNCTION_0_262();
            sub_216781DD0(v22, v23, v24, v25);
            v26 = v21;
            v27 = v18;
            v28 = v123.i64[0];
            goto LABEL_25;
          }
        }
      }

      else if (v7)
      {
        v55 = OUTLINED_FUNCTION_0_262();
        sub_216781DD0(v55, v56, v57, v58);
        sub_216781DD0(v124.i64[0], 0, v123.i64[0], v123.i64[1]);
        v26 = v124.i64[0];
        v27 = 0;
        v28 = v123.i64[0];
        v13 = v118;
LABEL_25:
        sub_216781E14(v26, v27, v28, v123.i64[1]);
LABEL_30:
        OUTLINED_FUNCTION_7_124();
        result = sub_216781E14(v89, v90, v91, v92);
        v3 = v117;
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_43_35(vceqq_s64(v123, v120));
      if (v59)
      {
        OUTLINED_FUNCTION_7_124();
        sub_216781DD0(v97, v98, v99, v100);
        OUTLINED_FUNCTION_7_124();
        sub_216781E14(v101, v102, v103, v104);
        v105 = OUTLINED_FUNCTION_0_262();
        result = sub_216781E14(v105, v106, v107, v108);
        v0 = v113;
        v3 = v117;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_7_124();
      v60 = sub_21700F7D4();
      OUTLINED_FUNCTION_13_86();
      sub_216781DD0(v61, v62, v63, v64);
      v65 = OUTLINED_FUNCTION_0_262();
      sub_216781DD0(v65, v66, v67, v68);
      OUTLINED_FUNCTION_13_86();
      sub_216781E14(v69, v70, v71, v72);
      v73 = OUTLINED_FUNCTION_0_262();
      result = sub_216781E14(v73, v74, v75, v76);
      v3 = v117;
      v13 = v118;
      if (v60)
      {
        v109 = OUTLINED_FUNCTION_0_262();
        goto LABEL_37;
      }

LABEL_31:
      v9 = (v9 + 1) & v122;
      v10 = v9 >> 6;
      v11 = *(v13 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if ((v11 & (1 << v9)) == 0)
      {
        v0 = v113;
        v4 = v116;
        goto LABEL_33;
      }
    }

    if (v6)
    {
      sub_21700DF14();
      v29 = sub_21700DF14();
      v37 = OUTLINED_FUNCTION_31_54(v29, v30, v31, v32, v33, v34, v35, v36, v113, v114, v115, v116, v117, v118, v119.i64[0], v119.i64[1], v120.i64[0], v120.i64[1], v121, v122, v123.i64[0], 0, v124.i64[0]);
      sub_216781E14(v37, v38, v39, 0);
      v40 = OUTLINED_FUNCTION_0_262();
LABEL_22:
      result = sub_216781E14(v40, v41, v42, v43);
      goto LABEL_31;
    }

    sub_216781E14(v16.i64[0], v18, v15, 0);
    OUTLINED_FUNCTION_28_6();
    v112 = 0;
LABEL_37:
    result = sub_216781E14(v109, v110, v111, v112);
    v0 = v113;
LABEL_38:
    v4 = v116;
LABEL_39:
    if (++v4 == v115)
    {
LABEL_42:

      return v3;
    }
  }

LABEL_33:
  *(v118 + 8 * v10) = v11 | v12;
  v93 = (*(v3 + 48) + 32 * v9);
  *v93 = v119;
  v93[1] = v120;
  v94 = *(v3 + 16);
  v95 = __OFADD__(v94, 1);
  v96 = v94 + 1;
  if (!v95)
  {
    *(v3 + 16) = v96;
    goto LABEL_39;
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_216F0F260(uint64_t a1)
{
  v4 = sub_21700DEE4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_33_42(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABAEF0, &unk_217022E08), v15 = OUTLINED_FUNCTION_6_129(), *(a1 + 16)))
  {
    OUTLINED_FUNCTION_5_147();
    while (v16 < *(a1 + 16))
    {
      v17 = OUTLINED_FUNCTION_12_93(v16);
      (a1)(v17);
      v18 = *(v15 + 40);
      OUTLINED_FUNCTION_9_111();
      v20 = sub_216F0FE08(&unk_280E2A150, v19, MEMORY[0x277D22328]);
      OUTLINED_FUNCTION_50_24(v20);
      OUTLINED_FUNCTION_47_36();
      while (1)
      {
        OUTLINED_FUNCTION_20_70();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_24_50();
        (a1)(v23);
        OUTLINED_FUNCTION_9_111();
        v25 = sub_216F0FE08(&qword_280E2A148, v24, MEMORY[0x277D22330]);
        OUTLINED_FUNCTION_41_36(v25);
        v26 = OUTLINED_FUNCTION_44_31();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v2;
          goto LABEL_12;
        }

        v15 = v2;
      }

      v27 = OUTLINED_FUNCTION_16_78(v21);
      v28(v27);
      v29 = *(v15 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v31;
LABEL_12:
      OUTLINED_FUNCTION_32_40();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

uint64_t sub_216F0F458(uint64_t a1)
{
  v2 = sub_21700D184();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4A8, &qword_2170715C8);
  result = sub_21700F394();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_216F0FE08(&qword_280E2A238, MEMORY[0x277D21BE0], MEMORY[0x277D21BE8]);
    v14 = sub_21700E424();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v4, *(v8 + 48) + v16 * v12, v2);
      sub_216F0FE08(&qword_280E2A230, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
      v21 = sub_21700E494();
      v22 = *v11;
      (*v11)(v4, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_216F0F79C(uint64_t a1)
{
  v4 = sub_2166BF3C8(a1);
  if (v4)
  {
    v1 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4C0, &qword_2170715F0);
    v5 = OUTLINED_FUNCTION_6_129();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v17 = sub_2166BF3C8(a1);
  if (v17)
  {
    v6 = 0;
    OUTLINED_FUNCTION_4_154();
    while (1)
    {
      OUTLINED_FUNCTION_3_179();
      sub_216C746F0();
      if (v1)
      {
        v7 = OUTLINED_FUNCTION_109();
        v8 = MEMORY[0x21CEA0220](v7);
      }

      else
      {
        v8 = *(v16 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      v1 = v8;
      sub_21700F0F4();
      OUTLINED_FUNCTION_1_223();
      while (1)
      {
        OUTLINED_FUNCTION_37_47();
        if (v12)
        {
          break;
        }

        sub_216685F4C(0, &qword_280E29D48, 0x277CCAE58);
        v13 = *(*(v5 + 48) + 8 * v2);
        v1 = sub_21700F104();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_26_53(v11);
      *(v14 + 8 * v2) = v9;
      OUTLINED_FUNCTION_23_62();
      if (v10)
      {
        goto LABEL_20;
      }

      *(v5 + 16) = v15;
LABEL_17:
      if (v6 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_216F0F90C(uint64_t a1)
{
  v4 = sub_2166BF3C8(a1);
  if (v4)
  {
    v1 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4C8, &qword_2170715F8);
    v5 = OUTLINED_FUNCTION_6_129();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v17 = sub_2166BF3C8(a1);
  if (v17)
  {
    v6 = 0;
    OUTLINED_FUNCTION_4_154();
    while (1)
    {
      OUTLINED_FUNCTION_3_179();
      sub_216C746F0();
      if (v1)
      {
        v7 = OUTLINED_FUNCTION_109();
        v8 = MEMORY[0x21CEA0220](v7);
      }

      else
      {
        v8 = *(v16 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      v1 = v8;
      sub_21700F0F4();
      OUTLINED_FUNCTION_1_223();
      while (1)
      {
        OUTLINED_FUNCTION_37_47();
        if (v12)
        {
          break;
        }

        sub_216685F4C(0, &qword_280E29CF0, 0x277D757D8);
        v13 = *(*(v5 + 48) + 8 * v2);
        v1 = sub_21700F104();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_26_53(v11);
      *(v14 + 8 * v2) = v9;
      OUTLINED_FUNCTION_23_62();
      if (v10)
      {
        goto LABEL_20;
      }

      *(v5 + 16) = v15;
LABEL_17:
      if (v6 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_216F0FA7C(uint64_t a1)
{
  v4 = sub_2170062F4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_33_42(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4D0, &qword_217071600), v15 = OUTLINED_FUNCTION_6_129(), *(a1 + 16)))
  {
    OUTLINED_FUNCTION_5_147();
    while (v16 < *(a1 + 16))
    {
      v17 = OUTLINED_FUNCTION_12_93(v16);
      (a1)(v17);
      v18 = *(v15 + 40);
      OUTLINED_FUNCTION_8_117();
      v20 = sub_216F0FE08(&qword_27CACD4D8, v19, MEMORY[0x277CC99D8]);
      OUTLINED_FUNCTION_50_24(v20);
      OUTLINED_FUNCTION_47_36();
      while (1)
      {
        OUTLINED_FUNCTION_20_70();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_24_50();
        (a1)(v23);
        OUTLINED_FUNCTION_8_117();
        v25 = sub_216F0FE08(&qword_27CACD4E0, v24, MEMORY[0x277CC99E0]);
        OUTLINED_FUNCTION_41_36(v25);
        v26 = OUTLINED_FUNCTION_44_31();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v2;
          goto LABEL_12;
        }

        v15 = v2;
      }

      v27 = OUTLINED_FUNCTION_16_78(v21);
      v28(v27);
      v29 = *(v15 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v31;
LABEL_12:
      OUTLINED_FUNCTION_32_40();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void sub_216F0FC74()
{
  OUTLINED_FUNCTION_48_28();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4E8, &qword_217071608), v2 = OUTLINED_FUNCTION_6_129(), (v19 = *(v0 + 16)) != 0))
  {
    v3 = 0;
    v17 = v0;
    v18 = v0 + 32;
    while (v3 < *(v0 + 16))
    {
      v4 = *(v18 + 8 * v3);
      v20 = v3 + 1;
      sub_21700F8F4();
      MEMORY[0x21CEA0720](0);
      v5 = v4;
      sub_21700F114();
      sub_21700F944();
      OUTLINED_FUNCTION_1_223();
      v8 = ~v7;
      while (1)
      {
        v9 = v6 & v8;
        v10 = (v6 & v8) >> 6;
        if (((1 << (v6 & v8)) & *(v2 + 56 + 8 * v10)) == 0)
        {
          break;
        }

        v11 = *(*(v2 + 48) + 8 * v9);
        sub_216685F4C(0, &qword_27CAC2310, 0x277D82BB8);
        v12 = v11;
        v13 = sub_21700F104();

        if (v13)
        {

          goto LABEL_12;
        }

        v6 = v9 + 1;
      }

      OUTLINED_FUNCTION_26_53(v10);
      *(v14 + 8 * v9) = v5;
      OUTLINED_FUNCTION_23_62();
      if (v16)
      {
        goto LABEL_15;
      }

      *(v2 + 16) = v15;
LABEL_12:
      v3 = v20;
      v0 = v17;
      if (v20 == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_216F0FE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_216F0FE50()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_180();
  sub_2166C0AF0(v0, v1, &unk_217071670);
  sub_2170066D4();

  sub_21700DF14();
  return result;
}

uint64_t sub_216F0FEE4(uint64_t a1)
{
  v3 = sub_21700B5A4();
  OUTLINED_FUNCTION_1();
  v20 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v19 = sub_21700B5E4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  v15 = sub_21700EE84();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = a1;
  aBlock[4] = sub_216F119B4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_47;
  v17 = _Block_copy(aBlock);

  sub_21700B5C4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2166C0AF0(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
  sub_2166D9530(&qword_280E29E50, &unk_27CABC970, &unk_2170187C0, MEMORY[0x277D83970]);
  sub_21700F214();
  MEMORY[0x21CE9FCB0](0, v14, v8, v17);
  _Block_release(v17);

  (*(v20 + 8))(v8, v3);
  return (*(v10 + 8))(v14, v19);
}

uint64_t sub_216F101C0@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD508, &qword_217071790);
  OUTLINED_FUNCTION_1();
  v65 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v64 = &v62 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD510, &qword_217071798);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v69 = &v62 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD518, &qword_2170717A0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v63 = &v62 - v10;
  v11 = sub_2170098A4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v62 - v29;
  type metadata accessor for SearchScopeBar(0);
  v66 = v1;
  sub_216C0C900();
  (*(v13 + 104))(v27, *MEMORY[0x277CE0558], v11);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v11);
  v31 = *(v18 + 56);
  sub_2169270E4(v30, v21);
  sub_2169270E4(v27, &v21[v31]);
  OUTLINED_FUNCTION_24_1(v21);
  if (!v32)
  {
    sub_2169270E4(v21, v24);
    OUTLINED_FUNCTION_24_1(&v21[v31]);
    if (!v32)
    {
      v62 = v8;
      (*(v13 + 32))(v17, &v21[v31], v11);
      sub_2166C0AF0(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v46 = sub_21700E494();
      v47 = *(v13 + 8);
      v47(v17, v11);
      sub_216697664(v27, &qword_27CAB8600, &qword_217020AD0);
      sub_216697664(v30, &qword_27CAB8600, &qword_217020AD0);
      v47(v24, v11);
      sub_216697664(v21, &qword_27CAB8600, &qword_217020AD0);
      if (v46)
      {
        goto LABEL_12;
      }

LABEL_10:
      v33 = v64;
      sub_216F109C8(v64);
      v34 = v65;
      v35 = v67;
      (v65[2])(v69, v33, v67);
      swift_storeEnumTagMultiPayload();
      v68 = sub_216F11BA0();
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD528, &qword_2170717B0);
      v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
      v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD530, &qword_2170717B8);
      v39 = sub_217009614();
      OUTLINED_FUNCTION_2_189();
      v42 = sub_2166D9530(v40, &qword_27CACD530, &qword_2170717B8, v41);
      v72 = v38;
      v73 = v39;
      v43 = OUTLINED_FUNCTION_1_224(v42, MEMORY[0x277CDE058]);
      v44 = sub_216C1BF40();
      v72 = v36;
      v73 = v37;
      v74 = v43;
      v75 = v44;
      OUTLINED_FUNCTION_4_155();
      sub_217009554();
      return (v34[1])(v33, v35);
    }

    sub_216697664(v27, &qword_27CAB8600, &qword_217020AD0);
    sub_216697664(v30, &qword_27CAB8600, &qword_217020AD0);
    (*(v13 + 8))(v24, v11);
LABEL_9:
    sub_216697664(v21, &qword_27CAB8708, &qword_21701A3E0);
    goto LABEL_10;
  }

  sub_216697664(v27, &qword_27CAB8600, &qword_217020AD0);
  sub_216697664(v30, &qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_24_1(&v21[v31]);
  if (!v32)
  {
    goto LABEL_9;
  }

  v62 = v8;
  sub_216697664(v21, &qword_27CAB8600, &qword_217020AD0);
LABEL_12:
  v48 = sub_21700B314();
  v65 = &v62;
  MEMORY[0x28223BE20](v48);
  MEMORY[0x28223BE20](v49);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD520, &qword_2170717A8);
  sub_216F11D30();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD528, &qword_2170717B0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD530, &qword_2170717B8);
  v53 = sub_217009614();
  OUTLINED_FUNCTION_2_189();
  v56 = sub_2166D9530(v54, &qword_27CACD530, &qword_2170717B8, v55);
  v72 = v52;
  v73 = v53;
  v57 = OUTLINED_FUNCTION_1_224(v56, MEMORY[0x277CDE058]);
  v58 = sub_216C1BF40();
  v72 = v50;
  v73 = v51;
  v74 = v57;
  v75 = v58;
  OUTLINED_FUNCTION_4_155();
  v59 = v63;
  sub_21700B324();
  v60 = v62;
  v61 = v70;
  (*(v62 + 16))(v69, v59, v70);
  swift_storeEnumTagMultiPayload();
  sub_216F11BA0();
  sub_217009554();
  return (*(v60 + 8))(v59, v61);
}

uint64_t sub_216F109C8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for SearchScopeBar(0);
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = v3;
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2170090F4();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_217009614();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217006274();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21700E4C4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD530, &qword_2170717B8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD528, &qword_2170717B0);
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  sub_21700E4B4();
  sub_217006264();
  v49 = sub_21700E584();
  v50 = v17;
  v18 = *(v1 + 8);
  v19 = *(v1 + 16);
  v46 = *v1;
  v47 = v18;
  v48 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB10, &qword_21702B898);
  sub_21700B0E4();
  v46 = v42;
  v47 = v43;
  v48 = v44;
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD520, &qword_2170717A8);
  sub_216F11E0C();
  sub_216F11D30();
  sub_2167B2E14();
  v20 = v34;
  sub_21700B004();
  sub_217009604();
  v21 = sub_2166D9530(&qword_280E2A530, &qword_27CACD530, &qword_2170717B8, MEMORY[0x277CDF038]);
  sub_21700A424();
  (*(v5 + 8))(v7, v20);
  (*(v11 + 8))(v13, v10);
  LOBYTE(v13) = *(v1 + 32);

  if ((v13 & 1) == 0)
  {
    sub_21700ED94();
    v22 = sub_217009C34();
    sub_217007BC4();

    v23 = v31;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v32 + 8))(v23, v33);
  }

  sub_216F0FE50();
  v25 = v24;

  v46 = v25;
  v26 = v39;
  sub_216F11F08(v1, v39);
  v27 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v28 = swift_allocObject();
  sub_216F11F6C(v26, v28 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F60, &qword_217054160);
  v42 = v10;
  v43 = v20;
  v44 = v21;
  v45 = MEMORY[0x277CDE058];
  swift_getOpaqueTypeConformance2();
  sub_216C1BF40();
  v29 = v36;
  sub_21700AB04();

  return (*(v35 + 8))(v16, v29);
}

uint64_t sub_216F11060(uint64_t a1, uint64_t a2)
{
  v3 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  LOBYTE(a1) = *(a1 + 32);

  if ((a1 & 1) == 0)
  {
    sub_21700ED94();
    v10 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v3);
  }

  sub_216F0FE50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F60, &qword_217054160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD538, &qword_2170717C0);
  sub_2166D9530(&qword_280E29FF8, &qword_27CAC5F60, &qword_217054160, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
  sub_2167C4D74();
  sub_216F11E0C();
  swift_getOpaqueTypeConformance2();
  sub_216F11EB4();
  return sub_21700B164();
}

uint64_t sub_216F112A8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = 285;
  }

  else
  {
    v4 = 284;
  }

  result = sub_216983738(v4);
  v6 = MEMORY[0x277D84F90];
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_216F112F8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDB10, &qword_21702B898);
  MEMORY[0x21CE9BEE0](&v5);
  result = sub_216C0CA0C(v5, v2);
  if ((result & 1) == 0)
  {
    if (*(v2 + 16))
    {
      v4 = *(v2 + 32);
    }

    else
    {
      v4 = 1;
    }

    LOBYTE(v5) = v4;

    sub_21700B0D4();
  }

  return result;
}

void sub_216F113F0(uint64_t a1, uint64_t a2)
{

  sub_216F11454(a2);
  sub_2166C0A20();
  LOBYTE(a2) = sub_2166C129C();

  sub_2166C1368(a2 & 1);
}

uint64_t sub_216F11454(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_2166C1994(KeyPath, sub_216861440, &v5);
}

uint64_t sub_216F114C8(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v6[3] = a1;
    sub_2166C1994(v4, sub_216F119DC, v6);
  }
}

void sub_216F1159C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  sub_216685F4C(0, &qword_27CACD4F0, 0x277CD6040);
  v5 = v4;
  v6 = sub_21700F104();

  if (v6)
  {
    v7 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[2] = v2;
    v10[3] = a1;
    sub_2166C1994(v9, sub_216F119C0, v10);
  }
}

void sub_216F116AC()
{
  sub_2166C0A20();
  v0 = sub_2166C129C();

  sub_2166C1368(v0 & 1);
}

uint64_t sub_216F1173C()
{
  swift_getKeyPath();
  sub_2166C0AF0(&unk_280E42D08, type metadata accessor for SearchScopeBar.Manager, &unk_217071670);
  sub_2170066D4();
}

uint64_t sub_216F11838(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
}

void sub_216F118A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = a2;
  v3 = a2;
}

uint64_t sub_216F118D4()
{

  v1 = OBJC_IVAR____TtCV7MusicUI14SearchScopeBar7Manager___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_216F11954()
{
  sub_216F118D4();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216F11A40(uint64_t a1)
{
  sub_216F11ADC();
  if (v1 <= 0x3F)
  {
    sub_216F11B2C(319);
    if (v2 <= 0x3F)
    {
      sub_2167FCA6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216F11ADC()
{
  if (!qword_280E2A500)
  {
    v0 = sub_21700B104();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A500);
    }
  }
}

void sub_216F11B2C(uint64_t a1)
{
  if (!qword_280E2B4B0)
  {
    type metadata accessor for SearchScopeBar.Manager(255);
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B4B0);
    }
  }
}

unint64_t sub_216F11BA0()
{
  result = qword_280E2A4C0;
  if (!qword_280E2A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD518, &qword_2170717A0);
    sub_216F11D30();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD528, &qword_2170717B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD530, &qword_2170717B8);
    sub_217009614();
    sub_2166D9530(&qword_280E2A530, &qword_27CACD530, &qword_2170717B8, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    sub_216C1BF40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A4C0);
  }

  return result;
}

unint64_t sub_216F11D30()
{
  result = qword_280E2A4D0;
  if (!qword_280E2A4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD520, &qword_2170717A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
    sub_2167C4D74();
    sub_216F11E0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A4D0);
  }

  return result;
}

unint64_t sub_216F11E0C()
{
  result = qword_280E44FC0;
  if (!qword_280E44FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44FC0);
  }

  return result;
}

unint64_t sub_216F11EB4()
{
  result = qword_280E44FB0;
  if (!qword_280E44FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44FB0);
  }

  return result;
}

uint64_t sub_216F11F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchScopeBar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F11F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchScopeBar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F11FD0(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for SearchScopeBar(0);

  return sub_216F112F8(a1, a2);
}

unint64_t sub_216F12050()
{
  result = qword_280E2AA10;
  if (!qword_280E2AA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD540, &qword_2170717C8);
    sub_216F11BA0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD528, &qword_2170717B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD530, &qword_2170717B8);
    sub_217009614();
    sub_2166D9530(&qword_280E2A530, &qword_27CACD530, &qword_2170717B8, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    sub_216C1BF40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA10);
  }

  return result;
}

void sub_216F121D8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v23[-v7];
  v29 = type metadata accessor for SquareLockup(0);
  MEMORY[0x28223BE20](v29);
  v28 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v32 = sub_2166BF3C8(a1);
  v10 = 0;
  v31 = a1 & 0xC000000000000001;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1;
  v27 = v8;
  while (v32 != v10)
  {
    if (v31)
    {
      MEMORY[0x21CEA0220](v10, a1);
    }

    else
    {
      if (v10 >= *(v30 + 16))
      {
        goto LABEL_33;
      }
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v11 = v5;
    v12 = v28;
    sub_216DE9428();
    sub_216683A80(&v12[*(v29 + 80)], v8, &qword_27CAB6A00, &unk_217016B60);
    v13 = v12;
    v5 = v11;
    sub_216F20984(v13, type metadata accessor for SquareLockup);
    sub_216683A80(v8, v11, &qword_27CAB6A00, &unk_217016B60);
    v14 = type metadata accessor for ContentDescriptor(0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
    {
      sub_216699778(v11, &qword_27CAB6A00);
      sub_216699778(v8, &qword_27CAB6A00);

      goto LABEL_19;
    }

    memcpy(__dst, (v11 + 8), 0x69uLL);
    sub_21686BC90(__dst, v33);
    sub_216F20984(v11, type metadata accessor for ContentDescriptor);
    memcpy(v33, __dst, 0x69uLL);
    v15 = sub_2168955E4();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
LABEL_11:
      sub_21686BCEC(__dst);
      sub_216699778(v27, &qword_27CAB6A00);
      if (!*(*v25 + 16) || (sub_2166AF66C(v17, v18), (v19 & 1) == 0))
      {

        a1 = v26;
LABEL_18:
        v8 = v27;
        goto LABEL_19;
      }

      type metadata accessor for SocialProfileUpdater.PlaylistDescriptor(0);
      swift_allocObject();
      sub_216B02100();
      a1 = v26;
      if (!v20)
      {
        goto LABEL_18;
      }

      MEMORY[0x21CE9F610]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      v24 = v35;
      ++v10;
      v8 = v27;
    }

    else
    {
      v18 = __dst[11];
      if (__dst[11])
      {
        v17 = __dst[10];
        v21 = HIBYTE(__dst[11]) & 0xFLL;
        if ((__dst[11] & 0x2000000000000000) == 0)
        {
          v21 = __dst[10] & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          goto LABEL_28;
        }
      }

      v18 = __dst[3];
      if (__dst[3])
      {
        v17 = __dst[2];
        v22 = HIBYTE(__dst[3]) & 0xFLL;
        if ((__dst[3] & 0x2000000000000000) == 0)
        {
          v22 = __dst[2] & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {
LABEL_28:
          sub_21700DF14();
          goto LABEL_11;
        }
      }

      sub_21686BCEC(__dst);
      v8 = v27;
      sub_216699778(v27, &qword_27CAB6A00);

      a1 = v26;
LABEL_19:
      ++v10;
    }
  }
}

void sub_216F126A0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v105 = v2;
  v4 = v3;
  v104 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v122 = &v101 - v13;
  v123 = type metadata accessor for SocialProfileEditorPlaylistLockup(0);
  OUTLINED_FUNCTION_1();
  v121 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v120 = v17 - v16;
  v18 = type metadata accessor for MappedSection.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = (v21 - v20);
  type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_1();
  v115 = v23;
  v116 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38, &unk_217017F60);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_77();
  v102 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v101 - v32;
  LOBYTE(v124) = 0;
  sub_21700AEA4();
  v34 = v126;
  *v7 = v125;
  *(v7 + 8) = v34;
  LOBYTE(v124) = 0;
  sub_21700AEA4();
  v35 = v126;
  *(v7 + 40) = v125;
  *(v7 + 48) = v35;
  v36 = *(type metadata accessor for SocialProfileEditorPageView(0) + 32);
  v37 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  v117 = v36;
  __swift_storeEnumTagSinglePayload(v7 + v36, 1, 1, v37);
  v106 = v7;
  *(v7 + 56) = v4;
  v108 = v33;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v37);
  v38 = *(v1 + 56);
  v103 = v4;

  v118 = v38(v105, v1);
  v39 = *(v118 + 16);
  if (v39)
  {
    v40 = *(v115 + 28);
    v41 = v118 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v42 = *(v116 + 72);
    v43 = MEMORY[0x277D84F90];
    v119 = v27;
    do
    {
      sub_216F20928(v41, v27, type metadata accessor for MappedSection);
      sub_216F20928(v27 + v40, v22, type metadata accessor for MappedSection.Content);
      sub_216F20984(v27, type metadata accessor for MappedSection);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 40)
      {
        v45 = v11;
        v46 = v42;
        v47 = v40;
        v48 = v18;
        v49 = v37;
        v50 = v43;
        v51 = v108;
        sub_216699778(v108, &qword_27CAB7A38);
        sub_216F1F038(v22, v51, type metadata accessor for SocialProfileEditorHeaderLockup);
        v52 = v51;
        v43 = v50;
        v37 = v49;
        v18 = v48;
        v40 = v47;
        v42 = v46;
        v11 = v45;
        v27 = v119;
        __swift_storeEnumTagSinglePayload(v52, 0, 1, v37);
      }

      else if (EnumCaseMultiPayload == 52)
      {

        v43 = *v22;
      }

      else
      {
        sub_216F20984(v22, type metadata accessor for MappedSection.Content);
      }

      v41 += v42;
      --v39;
    }

    while (v39);
    v101 = v43;
  }

  else
  {

    v101 = MEMORY[0x277D84F90];
  }

  v53 = v108;
  sub_216F13240(v108, v106 + v117);
  v54 = MEMORY[0x277D84F90];
  v115 = sub_21700E384();
  v125 = v115;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v37);
  v56 = v122;
  if (!EnumTagSinglePayload)
  {
    v54 = *&v108[*(v37 + 60)];
    if (v54)
    {
      sub_21700DF14();
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }
  }

  v57 = *(v54 + 16);
  if (!v57)
  {
LABEL_73:

    sub_216F121D8(v101, &v125);

    v96 = v108;
    sub_216683A80(v108, v102, &qword_27CAB7A38, &unk_217017F60);
    type metadata accessor for SocialProfileUpdater(0);
    swift_allocObject();
    sub_216AFBA30();
    v98 = v97;
    OUTLINED_FUNCTION_50();
    (*(v99 + 8))(v104);

    v100 = v106;
    *(v106 + 16) = sub_2167D8C58;
    *(v100 + 24) = v98;
    *(v100 + 32) = 0;
    sub_216699778(v96, &qword_27CAB7A38);
    OUTLINED_FUNCTION_26();
    return;
  }

  v58 = 0;
  v59 = v120;
  v60 = v54 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
  v110 = *(v54 + 16);
  v111 = v54;
  v109 = v60;
  while (v58 < *(v54 + 16))
  {
    sub_216F20928(v60 + *(v121 + 72) * v58, v59, type metadata accessor for SocialProfileEditorPlaylistLockup);
    sub_216F20928(v59 + *(v123 + 28), v56, type metadata accessor for ContentDescriptor);
    v61 = type metadata accessor for ContentDescriptor(0);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v61);
    sub_216683A80(v56, v11, &qword_27CAB6A00, &unk_217016B60);
    if (__swift_getEnumTagSinglePayload(v11, 1, v61) != 1)
    {
      v62 = *(v11 + 16);
      v116 = *(v11 + 8);
      v63 = *(v11 + 32);
      v107 = *(v11 + 24);
      v65 = *(v11 + 40);
      v64 = *(v11 + 48);
      v67 = *(v11 + 56);
      v66 = *(v11 + 64);
      v68 = *(v11 + 72);
      v69 = *(v11 + 80);
      v70 = *(v11 + 96);
      v112 = *(v11 + 88);
      v114 = *(v11 + 104);
      v113 = *(v11 + 112);
      v118 = v70;
      sub_21700DF14();
      v119 = v62;
      sub_21700DF14();
      v117 = v63;
      sub_21700DF14();
      sub_21700DF14();
      sub_21700DF14();
      sub_21700DF14();
      sub_216F20984(v11, type metadata accessor for ContentDescriptor);
      if (v64)
      {
        v71 = HIBYTE(v64) & 0xF;
        if ((v64 & 0x2000000000000000) == 0)
        {
          v71 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v71)
        {
          sub_21700DF14();
          v72 = v64;
          goto LABEL_35;
        }
      }

      if (v66)
      {
        v73 = HIBYTE(v66) & 0xF;
        if ((v66 & 0x2000000000000000) == 0)
        {
          v73 = v67 & 0xFFFFFFFFFFFFLL;
        }

        if (v73)
        {
          sub_21700DF14();
          v72 = v66;
          v65 = v67;
          goto LABEL_35;
        }
      }

      if (v69)
      {
        v74 = HIBYTE(v69) & 0xF;
        if ((v69 & 0x2000000000000000) == 0)
        {
          v74 = v68 & 0xFFFFFFFFFFFFLL;
        }

        if (v74)
        {
          sub_21700DF14();
          v72 = v69;
          v65 = v68;
LABEL_35:
          v56 = v122;
LABEL_36:
          sub_216699778(v56, &qword_27CAB6A00);

LABEL_37:

          v75 = v120;
LABEL_38:

          v76 = *(v75 + *(v123 + 24));
          v77 = v125;
          swift_isUniquelyReferenced_nonNull_native();
          v124 = v77;
          v78 = sub_2166AF66C(v65, v72);
          if (__OFADD__(v77[2], (v79 & 1) == 0))
          {
            goto LABEL_75;
          }

          v80 = v78;
          v81 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD550, &unk_2170717D0);
          if (sub_21700F554())
          {
            v82 = sub_2166AF66C(v65, v72);
            v59 = v120;
            if ((v81 & 1) != (v83 & 1))
            {
              goto LABEL_77;
            }

            v80 = v82;
            if ((v81 & 1) == 0)
            {
LABEL_42:
              v84 = v124;
              v124[(v80 >> 6) + 8] |= 1 << v80;
              v85 = (v84[6] + 16 * v80);
              *v85 = v65;
              v85[1] = v72;
              *(v84[7] + v80) = v76;
              OUTLINED_FUNCTION_1_225();
              v86 = v84[2];
              v87 = __OFADD__(v86, 1);
              v88 = v86 + 1;
              if (v87)
              {
                goto LABEL_76;
              }

              v84[2] = v88;
LABEL_46:
              v115 = v84;
              v125 = v84;
              v56 = v122;
              v54 = v111;
LABEL_47:
              v60 = v109;
              v57 = v110;
              goto LABEL_48;
            }
          }

          else
          {
            v59 = v120;
            if ((v81 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          v84 = v124;
          *(v124[7] + v80) = v76;
          OUTLINED_FUNCTION_1_225();
          goto LABEL_46;
        }
      }

      v56 = v122;
      v89 = v119;
      v65 = v116;
      if (v119)
      {
        v90 = HIBYTE(v119) & 0xF;
        if ((v119 & 0x2000000000000000) == 0)
        {
          v90 = v116 & 0xFFFFFFFFFFFFLL;
        }

        if (v90)
        {
          sub_21700DF14();
          v72 = v89;
          goto LABEL_36;
        }
      }

      v91 = v113;
      if (!v114)
      {
        v91 = 1;
      }

      v92 = v118;
      if ((v91 & 1) == 0)
      {
        v124 = v114;
        v65 = sub_21700F784();
        v72 = v94;
        goto LABEL_36;
      }

      sub_216699778(v122, &qword_27CAB6A00);
      v65 = v112;
      if (v92)
      {
        v93 = HIBYTE(v92) & 0xF;
        if ((v92 & 0x2000000000000000) == 0)
        {
          v93 = v112 & 0xFFFFFFFFFFFFLL;
        }

        if (v93)
        {
          v72 = v92;
          goto LABEL_37;
        }
      }

      v72 = v117;
      if (v117)
      {
        v65 = v107;
        if ((v117 & 0x2000000000000000) != 0)
        {
          v95 = HIBYTE(v117) & 0xF;
        }

        else
        {
          v95 = v107 & 0xFFFFFFFFFFFFLL;
        }

        if (v95)
        {
          v75 = v120;
          goto LABEL_38;
        }

        v59 = v120;
      }

      else
      {

        v59 = v120;
      }

      v54 = v111;

      OUTLINED_FUNCTION_1_225();
      goto LABEL_47;
    }

    sub_216699778(v56, &qword_27CAB6A00);
    OUTLINED_FUNCTION_1_225();
    sub_216699778(v11, &qword_27CAB6A00);
LABEL_48:
    if (v57 == ++v58)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  sub_21700F824();
  __break(1u);
}

uint64_t type metadata accessor for SocialProfileEditorPageView(uint64_t a1)
{
  result = qword_280E32E60;
  if (!qword_280E32E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216F13240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38, &unk_217017F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_216F132B4@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  sub_21700AEA4();
  sub_21700AEA4();
  sub_21700AEA4();
  type metadata accessor for SocialProfileUpdater(0);
  OUTLINED_FUNCTION_10_109();
  sub_216F208E0(v11, v12, &unk_217043C4C);
  v13 = sub_217008CF4();
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  a7[1].n128_u8[0] = a3;
  a7[1].n128_u64[1] = a5;
  a7[2].n128_u64[0] = a6;
  a7[2].n128_u8[8] = a4;
  a7[3].n128_u8[0] = v19.n128_u8[0];
  a7[3].n128_u64[1] = v19.n128_u64[1];
  a7[4].n128_u8[0] = v19.n128_u8[0];
  a7[4].n128_u64[1] = v19.n128_u64[1];
  result = v19;
  a7[5] = v19;
  a7[6].n128_u64[0] = v20;
  a7[6].n128_u64[1] = v13;
  a7[7].n128_u64[0] = v15;
  return result;
}

void sub_216F133F8()
{
  OUTLINED_FUNCTION_49();
  v46 = v1;
  sub_217009124();
  OUTLINED_FUNCTION_1();
  v44 = v3;
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v43 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD558, &qword_217071850);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD560, &qword_217071858);
  OUTLINED_FUNCTION_1();
  v40 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD568, &qword_217071860);
  OUTLINED_FUNCTION_1();
  v41 = v17;
  v42 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  sub_217009C64();
  v48 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD570, &qword_217071868);
  sub_216F1ED20();
  sub_217008054();
  v47 = v0;
  v22 = OUTLINED_FUNCTION_8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_9_112();
  v27 = sub_21669E098(v25, &qword_27CACD558, &qword_217071850, v26);
  OUTLINED_FUNCTION_8_118();
  v30 = sub_21669E098(v28, &qword_27CACD5A0, &qword_217071880, v29);
  sub_21700AAD4();
  (*(v8 + 8))(v11, v6);
  v53 = sub_216983738(97);
  v54 = v31;
  v49 = v6;
  v50 = v24;
  v51 = v27;
  v52 = v30;
  OUTLINED_FUNCTION_4_97();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_2167B2E14();
  v34 = MEMORY[0x277D837D0];
  sub_21700A5D4();

  (*(v40 + 8))(v16, v12);
  v35 = v43;
  v36 = v44;
  v37 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CDDDC0], v45);
  v49 = v12;
  v50 = v34;
  v51 = OpaqueTypeConformance2;
  v52 = v33;
  OUTLINED_FUNCTION_0_4();
  swift_getOpaqueTypeConformance2();
  v38 = v41;
  sub_21700A904();
  (*(v36 + 8))(v35, v37);
  (*(v42 + 8))(v21, v38);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F13804@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_216F13884(a2);
  v3 = sub_217009C74();
  sub_217007F24();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD570, &qword_217071868);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_216F13884(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v137 = v1;
  v234 = v3;
  v4 = type metadata accessor for SocialProfileEditorPageView(0);
  v197 = *(v4 - 8);
  v196 = *(v197 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v194 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD648, &qword_2170719C0);
  MEMORY[0x28223BE20](v228);
  v129 = &v125 - v6;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB338, &qword_217023488);
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v231 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v230 = &v125 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC17A0, &unk_217062460);
  v11 = *(v10 - 8);
  v139 = v10;
  v140 = v11;
  MEMORY[0x28223BE20](v10);
  v138 = &v125 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB330, &qword_217023480) - 8;
  MEMORY[0x28223BE20](v141);
  v229 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v235 = &v125 - v15;
  v16 = *(v2 + 48);
  LOBYTE(v275[0]) = *(v2 + 40);
  v275[1] = v16;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  v227 = v279[0];
  v226 = v279[1];
  v225 = LOBYTE(v279[2]);
  type metadata accessor for SocialProfileUpdater(0);
  sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
  v224 = sub_217008CF4();
  v223 = v17;
  v222 = sub_2170081B4();
  v220 = sub_217007D54();
  v219 = sub_216983738(327);
  v218 = v18;
  v217 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v215 = sub_21700AD34();
  v214 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  v213 = swift_getKeyPath();
  v212 = swift_getKeyPath();
  v296[112] = 1;
  v211 = sub_217009CA4();
  sub_217007F24();
  v210 = v19;
  v209 = v20;
  v208 = v21;
  v207 = v22;
  v296[120] = 0;
  v206 = sub_216983738(332);
  v205 = v23;
  v204 = sub_217009E94();
  v202 = swift_getKeyPath();
  v203 = sub_21700AD34();
  v201 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  v200 = swift_getKeyPath();
  v199 = sub_217008CF4();
  v198 = v24;
  v195 = sub_2170081B4();
  v193 = sub_217007D54();
  v192 = sub_217009CA4();
  sub_217007F24();
  v191 = v25;
  v190 = v26;
  v188 = v28;
  v189 = v27;
  LOBYTE(v279[0]) = 0;
  v29 = sub_216983738(334);
  v186 = v30;
  v187 = v29;
  v185 = sub_217009E94();
  v184 = swift_getKeyPath();
  v183 = sub_21700AD34();
  v182 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  v180 = swift_getKeyPath();
  v181 = sub_217009CA4();
  sub_217007F24();
  v178 = v32;
  v179 = v31;
  v176 = v34;
  v177 = v33;
  v291[112] = 0;
  v35 = sub_216983738(333);
  v174 = v36;
  v175 = v35;
  v173 = sub_217009E94();
  v172 = swift_getKeyPath();
  v171 = sub_21700AD34();
  v170 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  v168 = swift_getKeyPath();
  v167 = swift_getKeyPath();
  v288[112] = 1;
  v169 = sub_217009CA4();
  sub_217007F24();
  v165 = v38;
  v166 = v37;
  v163 = v40;
  v164 = v39;
  v288[120] = 0;
  v41 = sub_217008CF4();
  v161 = v42;
  v162 = v41;
  v160 = sub_2170081B4();
  v159 = sub_217007D54();
  v158 = sub_217009CA4();
  sub_217007F24();
  v156 = v44;
  v157 = v43;
  v154 = v46;
  v155 = v45;
  LOBYTE(v279[0]) = 0;
  v47 = sub_216983738(317);
  v152 = v48;
  v153 = v47;
  v151 = sub_217009E94();
  v150 = swift_getKeyPath();
  v149 = sub_21700AD34();
  v148 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  v146 = swift_getKeyPath();
  v147 = sub_217009CA4();
  sub_217007F24();
  v144 = v50;
  v145 = v49;
  v142 = v52;
  v143 = v51;
  v284[112] = 0;
  v275[0] = sub_216983738(144);
  v275[1] = v53;
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  sub_2167B2E14();
  v54 = v138;
  sub_21700B064();
  sub_217009D94();
  sub_21669E098(&qword_27CAC17B8, &qword_27CAC17A0, &unk_217062460, MEMORY[0x277CDF068]);
  v55 = v235;
  v56 = v139;
  sub_21700A304();
  (*(v140 + 8))(v54, v56);
  sub_21700B3B4();
  sub_2170083C4();
  v57 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD650, &qword_217071A80) + 36));
  v58 = v298;
  *v57 = v297;
  v57[1] = v58;
  v57[2] = v299;
  v59 = sub_217009CD4();
  sub_217007F24();
  v60 = v55 + *(v141 + 44);
  *v60 = v59;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  LODWORD(v141) = sub_217009CA4();
  sub_217007F24();
  v139 = v66;
  v140 = v65;
  v138 = v67;
  v136 = v68;
  v69 = sub_216983738(328);
  v134 = v70;
  v135 = v69;
  v133 = sub_217009E94();
  v132 = swift_getKeyPath();
  v131 = sub_21700AD34();
  v130 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  v127 = swift_getKeyPath();
  v126 = swift_getKeyPath();
  v280 = 1;
  v128 = sub_217009CA4();
  sub_217007F24();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v281 = 0;
  v79 = v137;
  v80 = v194;
  sub_216F20928(v137, v194, type metadata accessor for SocialProfileEditorPageView);
  v81 = (*(v197 + 80) + 16) & ~*(v197 + 80);
  v82 = swift_allocObject();
  sub_216F1F038(v80, v82 + v81, type metadata accessor for SocialProfileEditorPageView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD658, &qword_217071A88);
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD660, &qword_217071A90);
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD668, &qword_217071A98);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD670, &qword_217071AA0);
  v86 = sub_216F1F2F8();
  v87 = sub_216F1F5E8();
  v88 = sub_216F1F6A0();
  v279[0] = v83;
  v279[1] = MEMORY[0x277CE1350];
  v279[2] = v84;
  v279[3] = v85;
  v279[4] = v86;
  v279[5] = MEMORY[0x277CE1340];
  v279[6] = v87;
  v279[7] = v88;
  swift_getOpaqueTypeConformance2();
  v89 = v129;
  sub_21700AF14();
  if (qword_27CAB6290 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v90 = (v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD6C0, &qword_217071AD0) + 36));
  v91 = v301;
  *v90 = v300;
  v90[1] = v91;
  v90[2] = v302;
  v92 = sub_217009C74();
  sub_217007F24();
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v101 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD6C8, &qword_217071AD8) + 36);
  *v101 = v92;
  *(v101 + 8) = v94;
  *(v101 + 16) = v96;
  *(v101 + 24) = v98;
  *(v101 + 32) = v100;
  *(v101 + 40) = 0;
  v102 = sub_217009CA4();
  sub_217007F24();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v111 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD6D0, &qword_217071AE0) + 36);
  *v111 = v102;
  *(v111 + 8) = v104;
  *(v111 + 16) = v106;
  *(v111 + 24) = v108;
  *(v111 + 32) = v110;
  *(v111 + 40) = 0;
  v112 = swift_getKeyPath();
  v113 = v89 + *(v228 + 36);
  *v113 = v112;
  *(v113 + 8) = 0;
  v114 = *(v79 + 8);
  LOBYTE(v275[0]) = *v79;
  v275[1] = v114;
  v115 = sub_21700AED4();
  MEMORY[0x28223BE20](v115);
  sub_216F1F760();
  v116 = v230;
  sub_21700A354();

  sub_216699778(v89, &qword_27CACD648);
  v250[0] = v227;
  v250[1] = v226;
  v251 = v225;
  v252 = v224;
  v253 = v223;
  v254 = v220;
  v255 = v222;
  v256 = v250;
  v249[0] = v219;
  v249[1] = v218;
  v117 = MEMORY[0x277D84F90];
  v249[2] = 0;
  v249[3] = MEMORY[0x277D84F90];
  v249[4] = KeyPath;
  v249[5] = v217;
  v249[6] = v214;
  v249[7] = v215;
  memcpy(&v249[8], v296, 0x70uLL);
  v249[22] = v213;
  LOBYTE(v249[23]) = 0;
  *(&v249[23] + 1) = *v295;
  HIDWORD(v249[23]) = *&v295[3];
  v249[24] = v212;
  v249[25] = 0;
  LOBYTE(v249[26]) = 1;
  *(&v249[26] + 1) = *v294;
  HIDWORD(v249[26]) = *&v294[3];
  LOBYTE(v249[27]) = v211;
  HIDWORD(v249[27]) = *&v293[3];
  *(&v249[27] + 1) = *v293;
  v249[28] = v210;
  v249[29] = v209;
  v249[30] = v208;
  v249[31] = v207;
  LOBYTE(v249[32]) = 0;
  v257 = v249;
  v248[0] = v206;
  v248[1] = v205;
  v248[2] = 0;
  v248[3] = MEMORY[0x277D84F90];
  v248[4] = v202;
  v248[5] = v204;
  v248[6] = v201;
  v248[7] = v203;
  memcpy(&v248[8], v292, 0x70uLL);
  v248[22] = v200;
  LOBYTE(v248[23]) = 0;
  v247[0] = v199;
  v247[1] = v198;
  v247[2] = v193;
  v247[3] = v195;
  LOBYTE(v247[4]) = v192;
  v247[5] = v191;
  v247[6] = v190;
  v247[7] = v189;
  v247[8] = v188;
  LOBYTE(v247[9]) = 0;
  v258 = v248;
  v259 = v247;
  v246[0] = v187;
  v246[1] = v186;
  v246[2] = 0;
  v246[3] = MEMORY[0x277D84F90];
  v246[4] = v184;
  v246[5] = v185;
  v246[6] = v182;
  v246[7] = v183;
  memcpy(&v246[8], v291, 0x70uLL);
  v246[22] = v180;
  LOBYTE(v246[23]) = 0;
  *(&v246[23] + 1) = *v290;
  HIDWORD(v246[23]) = *&v290[3];
  LOBYTE(v246[24]) = v181;
  *(&v246[24] + 1) = *v289;
  HIDWORD(v246[24]) = *&v289[3];
  v246[25] = v179;
  v246[26] = v178;
  v246[27] = v177;
  v246[28] = v176;
  LOBYTE(v246[29]) = 0;
  v260 = v246;
  v245[0] = v175;
  v245[1] = v174;
  v245[2] = 0;
  v245[3] = MEMORY[0x277D84F90];
  v245[4] = v172;
  v245[5] = v173;
  v245[6] = v170;
  v245[7] = v171;
  memcpy(&v245[8], v288, 0x70uLL);
  v245[22] = v168;
  LOBYTE(v245[23]) = 0;
  *(&v245[23] + 1) = *v287;
  HIDWORD(v245[23]) = *&v287[3];
  v245[24] = v167;
  v245[25] = 0;
  LOBYTE(v245[26]) = 1;
  *(&v245[26] + 1) = *v286;
  HIDWORD(v245[26]) = *&v286[3];
  LOBYTE(v245[27]) = v169;
  HIDWORD(v245[27]) = *&v285[3];
  *(&v245[27] + 1) = *v285;
  v245[28] = v166;
  v245[29] = v165;
  v245[30] = v164;
  v245[31] = v163;
  LOBYTE(v245[32]) = 0;
  v244[0] = v162;
  v244[1] = v161;
  v244[2] = v159;
  v244[3] = v160;
  LOBYTE(v244[4]) = v158;
  v244[5] = v157;
  v244[6] = v156;
  v244[7] = v155;
  v244[8] = v154;
  LOBYTE(v244[9]) = 0;
  v261 = v245;
  v262 = v244;
  v243[0] = v153;
  v243[1] = v152;
  v243[2] = 0;
  v243[3] = MEMORY[0x277D84F90];
  v243[4] = v150;
  v243[5] = v151;
  v243[6] = v148;
  v243[7] = v149;
  memcpy(&v243[8], v284, 0x70uLL);
  v243[22] = v146;
  LOBYTE(v243[23]) = 0;
  *(&v243[23] + 1) = *v283;
  HIDWORD(v243[23]) = *&v283[3];
  LOBYTE(v243[24]) = v147;
  *(&v243[24] + 1) = *v282;
  HIDWORD(v243[24]) = *&v282[3];
  v243[25] = v145;
  v243[26] = v144;
  v243[27] = v143;
  v243[28] = v142;
  LOBYTE(v243[29]) = 0;
  v263 = v243;
  v118 = v235;
  v119 = v229;
  sub_216683A80(v235, v229, &qword_27CABB330, &qword_217023480);
  v237 = v141;
  v238 = v140;
  v239 = v139;
  v240 = v138;
  v241 = v136;
  v242 = 0;
  v264 = v119;
  v265 = &v237;
  v236[0] = v135;
  v236[1] = v134;
  v236[2] = 0;
  v236[3] = v117;
  v236[4] = v132;
  v236[5] = v133;
  v236[6] = v130;
  v236[7] = v131;
  memcpy(&v236[8], v271, 0x70uLL);
  v236[22] = v127;
  LOBYTE(v236[23]) = 0;
  *(&v236[23] + 1) = *v270;
  HIDWORD(v236[23]) = *&v270[3];
  v236[24] = v126;
  v236[25] = 0;
  LOBYTE(v236[26]) = 1;
  *(&v236[26] + 1) = *v269;
  HIDWORD(v236[26]) = *&v269[3];
  LOBYTE(v236[27]) = v128;
  HIDWORD(v236[27]) = *&v268[3];
  *(&v236[27] + 1) = *v268;
  v236[28] = v72;
  v236[29] = v74;
  v236[30] = v76;
  v236[31] = v78;
  LOBYTE(v236[32]) = 0;
  v266 = v236;
  v120 = v232;
  v121 = v231;
  v122 = v233;
  (*(v232 + 16))(v231, v116, v233);
  v267 = v121;
  sub_2168AB218();
  v123 = *(v120 + 8);
  v123(v116, v122);
  sub_216699778(v118, &qword_27CABB330);
  v123(v121, v122);
  memcpy(v272, v236, 0x101uLL);
  sub_216699778(v272, &unk_27CABB340);
  sub_216699778(v119, &qword_27CABB330);
  memcpy(v273, v243, 0xE9uLL);
  sub_216699778(v273, &qword_27CAB7E18);
  memcpy(v274, v244, 0x49uLL);
  sub_216699778(v274, &qword_27CABB350);
  memcpy(v275, v245, 0x101uLL);
  sub_216699778(v275, &unk_27CABB340);
  memcpy(v276, v246, 0xE9uLL);
  sub_216699778(v276, &qword_27CAB7E18);
  memcpy(v277, v247, 0x49uLL);
  sub_216699778(v277, &qword_27CAB7E20);
  memcpy(v278, v248, 0xB9uLL);
  sub_216699778(v278, &qword_27CABB348);
  memcpy(v279, v249, 0x101uLL);
  sub_216699778(v279, &unk_27CABB340);
}

uint64_t sub_216F14E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for SocialProfileEditorPageView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = sub_216983738(73);
  v29 = v6;
  sub_2167B2E14();
  v7 = sub_21700A174();
  v25 = v8;
  v26 = v7;
  v23 = v9;
  v24 = v10;
  v11 = sub_216983738(326);
  v22[1] = v12;
  v22[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD708, &qword_217071B20);
  v22[0] = *(*(sub_21700AC24() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_217013D90;
  v28 = sub_216983738(72);
  v29 = v13;
  v14 = sub_21700A174();
  v16 = v15;
  v18 = v17;
  sub_216F20928(a1, v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialProfileEditorPageView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_216F1F038(v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SocialProfileEditorPageView);
  sub_21700AC04();
  sub_21678817C(v14, v16, v18 & 1);

  sub_21700AC14();
  return sub_2170080B4();
}

uint64_t sub_216F150C8(uint64_t a1)
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
  sub_2170081B4();
  sub_216B01774(1, 0, 2, 1, 0, 0);
}

uint64_t sub_216F15180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD5B8, &qword_217071888);
  MEMORY[0x28223BE20](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD5C0, &qword_217071890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = sub_217009684();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD5C8, &qword_217071898);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  sub_217009644();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD5D0, &unk_2170718A0);
  sub_216F1EE64();
  sub_2170081F4();
  sub_217009634();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD5E0, &qword_2170718B0);
  sub_216F1EF54();
  sub_2170081F4();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_217009404();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_216F15490@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DismissModalPresentationAction(0);
  a1[3] = v2;
  a1[4] = sub_216F208E0(qword_280E30D30, type metadata accessor for DismissModalPresentationAction, &unk_21706A900);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v4 = boxed_opaque_existential_1 + *(v2 + 20);
  *v4 = 0;
  v4[8] = 1;
  v5 = type metadata accessor for SystemActionButton(0);
  sub_217007EE4();
  v6 = *(v5 + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + *(v5 + 32);
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v8 = sub_21700AC54();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD5D0, &unk_2170718A0);
  v11 = (a1 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  return result;
}

uint64_t sub_216F155D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SocialProfileEditorPageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_216F20928(a1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SocialProfileEditorPageView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_216F1F038(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for SocialProfileEditorPageView);
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD600, &qword_2170718C8);
  sub_216F1F0B4();
  sub_21700AF14();
  type metadata accessor for SocialProfileUpdater(0);
  sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
  sub_2170081B4();
  sub_216AFEE24();
  v10 = v9;

  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = (v10 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD5E0, &qword_2170718B0);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_2167D2420;
  v14[2] = v12;
  return result;
}

uint64_t sub_216F1581C(uint64_t a1)
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
  sub_2170081B4();
  sub_216AFD014(1, 0, 0);
}

uint64_t sub_216F158C8@<X0>(uint64_t a2@<X8>)
{
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0, &unk_217026510);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD628, &qword_2170718D8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD618, &qword_2170718D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v33 = sub_21700ADB4();
  sub_217009D94();
  sub_21700A304();

  v12 = sub_21700AC54();
  KeyPath = swift_getKeyPath();
  v14 = &v7[*(v5 + 44)];
  *v14 = KeyPath;
  v14[1] = v12;
  type metadata accessor for SocialProfileUpdater(0);
  sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
  sub_2170081B4();
  v15 = sub_216AFF2F0();

  v16 = 1.0;
  if (v15)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  sub_2167C5834(v7, v11, &qword_27CACD628, &qword_2170718D8);
  *&v11[*(v9 + 44)] = v17;
  v18 = sub_21700B3B4();
  v20 = v19;
  v21 = v29;
  sub_217008294();
  sub_2170081B4();
  v22 = sub_216AFF2F0();

  if ((v22 & 1) == 0)
  {
    v16 = 0.0;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD600, &qword_2170718C8);
  v24 = v32;
  v25 = v32 + *(v23 + 36);
  (*(v30 + 32))(v25, v21, v31);
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD640, &qword_217071950) + 36)) = v16;
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD638, &qword_2170718E0) + 36));
  *v26 = v18;
  v26[1] = v20;
  return sub_2167C5834(v11, v24, &qword_27CACD618, &qword_2170718D0);
}

uint64_t sub_216F15CA4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD710, &qword_217071B28);
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD698, &qword_217071AB0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD688, &qword_217071AA8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD660, &qword_217071A90);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - v11;
  v12 = sub_216983738(72);
  v14 = v13;
  sub_21700B3B4();
  sub_217008BB4();
  v15 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v33[0] = v12;
  v33[1] = v14;
  v33[2] = 0;
  v33[3] = MEMORY[0x277D84F90];
  v33[18] = KeyPath;
  v33[19] = v15;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD6A0, &qword_217071AB8);
  sub_216F1F530();
  v17 = v27;
  sub_21700A304();
  memcpy(v34, v33, 0xA0uLL);
  sub_216699778(v34, &qword_27CACD6A0);
  v18 = sub_21700ACF4();
  v19 = swift_getKeyPath();
  (*(v30 + 32))(v6, v17, v31);
  v20 = &v6[*(v4 + 44)];
  *v20 = v19;
  v20[1] = v18;
  LOBYTE(v18) = sub_217009C84();
  sub_2167C5834(v6, v10, &qword_27CACD698, &qword_217071AB0);
  v21 = &v10[*(v8 + 44)];
  *v21 = v18;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  v22 = sub_21700AC54();
  LOBYTE(v19) = sub_217009C84();
  v23 = v28;
  sub_2167C5834(v10, v28, &qword_27CACD688, &qword_217071AA8);
  v24 = v23 + *(v29 + 36);
  *v24 = v22;
  *(v24 + 8) = v19;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD668, &qword_217071A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD670, &qword_217071AA0);
  sub_216F1F2F8();
  sub_216F1F5E8();
  sub_216F1F6A0();
  sub_21700AB34();
  return sub_216699778(v23, &qword_27CACD660);
}

uint64_t sub_216F160EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD668, &qword_217071A98) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_217009294();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00, &unk_217018260) + 36)) = 256;
  return sub_216683A80(a1, a2, &qword_27CACD660, &qword_217071A90);
}

uint64_t sub_216F161B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD670, &qword_217071AA0) + 36));
  v5 = *(sub_217008B44() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  return sub_216683A80(a1, a2, &qword_27CACD660, &qword_217071A90);
}

uint64_t sub_216F162A4(uint64_t a1)
{
  result = sub_21700B304();
  v2 = 50.0;
  if (result)
  {
    v2 = 48.0;
  }

  qword_27CACD548 = *&v2;
  return result;
}

uint64_t sub_216F162DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_2170093B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD8D8, &qword_217071F58);
  return sub_216F16344(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_216F16344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD8E0, &qword_217071F60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = v38 - v9;
  MEMORY[0x28223BE20](v10);
  v40 = v38 - v11;
  MEMORY[0x28223BE20](v12);
  v39 = v38 - v13;
  v14 = sub_216983738(331);
  v16 = v15;
  v38[0] = a2;
  v17 = sub_216F16758(a1, a2);
  v44 = v14;
  v45 = v16;
  v46 = v17;
  v47 = v18;
  v48 = v19 & 1;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v38[1] = sub_216F20008();

  sub_21700A494();

  v21 = sub_216983738(330);
  v23 = v22;
  type metadata accessor for SocialProfileUpdater(0);
  sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
  v24 = v38[0];
  sub_217008CC4();
  swift_getKeyPath();
  sub_217008CE4();

  v25 = v44;
  v26 = v45;
  v27 = v46;
  v44 = v21;
  v45 = v23;
  v46 = v25;
  v47 = v26;
  v48 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = v24;

  v29 = v40;
  sub_21700A494();

  v30 = *(v6 + 16);
  v31 = v41;
  v32 = v39;
  v30(v41, v39, v5);
  v33 = v42;
  v30(v42, v29, v5);
  v34 = v43;
  v30(v43, v31, v5);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD8F0, &qword_217071F90);
  v30(&v34[*(v35 + 64)], v33, v5);
  v36 = *(v6 + 8);
  v36(v29, v5);
  v36(v32, v5);
  v36(v33, v5);
  return (v36)(v31, v5);
}

uint64_t sub_216F16758(uint64_t a1, uint64_t a2)
{
  sub_21700EA34();

  v4 = sub_21700EA24();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;

  v7 = sub_21700EA24();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  sub_21700B0F4();
  return v10;
}

uint64_t sub_216F1684C(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {

    sub_216AFCAF0(a3 & 1);
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    OUTLINED_FUNCTION_10_109();
    sub_216F208E0(v5, v6, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

void sub_216F168DC()
{
  OUTLINED_FUNCTION_49();
  v1 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDA58, &qword_217072298);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  *v11 = sub_2170091A4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDA60, &qword_2170722A0);
  sub_216F16AA4(v0, &v11[*(v12 + 44)]);
  sub_21700B3B4();
  sub_2170083C4();
  v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDA68, &qword_2170722A8) + 36)];
  v14 = v15[1];
  *v13 = v15[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v15[2];
  v11[*(v8 + 36)] = 0;
  sub_2170099B4();
  sub_216F2066C();
  sub_21700A784();
  (*(v3 + 8))(v7, v1);
  sub_216699778(v11, &qword_27CACDA58);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F16AA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508, &qword_21703DF68);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = *a1;
  v11 = a1[1];
  sub_21700DF14();
  v12 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  *&v31 = v10;
  *(&v31 + 1) = v11;
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v34 = KeyPath;
  v35 = v12;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();

  v14 = sub_21700AD14();
  v15 = swift_getKeyPath();
  v16 = &v9[*(v4 + 44)];
  *v16 = v15;
  v16[1] = v14;
  v31 = *(a1 + 1);
  LOBYTE(v32) = *(a1 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  MEMORY[0x21CE9BEE0](&v30);
  v18 = sub_21700ADB4();
  v19 = sub_217009E14();
  v20 = swift_getKeyPath();
  v31 = *(a1 + 1);
  LOBYTE(v32) = *(a1 + 32);
  MEMORY[0x21CE9BEE0](&v30, v17);
  if (v30 == 1)
  {
    v21 = sub_21700AC54();
  }

  else
  {
    v21 = sub_21700AD34();
  }

  v22 = v21;
  v23 = swift_getKeyPath();
  sub_216683A80(v9, v6, &qword_27CAC1508, &qword_21703DF68);
  v24 = v29;
  sub_216683A80(v6, v29, &qword_27CAC1508, &qword_21703DF68);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDA90, &qword_2170722B8);
  v26 = v24 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = (v24 + *(v25 + 64));
  *v27 = v18;
  v27[1] = v20;
  v27[2] = v19;
  v27[3] = v23;
  v27[4] = v22;

  sub_216699778(v9, &qword_27CAC1508);

  return sub_216699778(v6, &qword_27CAC1508);
}

uint64_t sub_216F16E0C@<X0>(uint64_t a1@<X2>, BOOL *a3@<X8>)
{
  if (a1)
  {

    v4 = sub_216AFF500();

    *a3 = (v4 & 1) == 0;
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F16EBC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = *a1;

    sub_216AFCAF0((v5 & 1) == 0);
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F16F70@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD718, &qword_217071D28);
  return sub_216F16FC4(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_216F16FC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD720, &unk_217071D30);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8 - 8];
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v40[0] = *a1;
  v10 = v40[0];
  v40[1] = v11;
  LOBYTE(v40[2]) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  sub_21700B0E4();
  v13 = v39[0];
  v14 = v39[1];
  v15 = v39[2];
  v38 = v10;
  v37 = *(a1 + 24);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  sub_216B8ED34(&v38, v40);

  sub_216683A80(&v37, v40, &qword_27CACD728, &qword_217071D40);
  sub_216F132B4(v13, v14, v15, 0, sub_216F1FB24, v16, v36);
  LOBYTE(v13) = sub_217009CA4();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v40[0]) = 0;
  *v9 = sub_2170093C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD730, &qword_217071D48);
  sub_216F18370(a1, &v9[*(v26 + 44)]);
  LOBYTE(v14) = sub_217009CA4();
  sub_217007F24();
  v27 = &v9[*(v4 + 44)];
  *v27 = v14;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_216683A80(v9, v6, &qword_27CACD720, &unk_217071D30);
  memcpy(v39, v36, 0x78uLL);
  LOBYTE(v39[15]) = v13;
  v39[16] = v19;
  v39[17] = v21;
  v39[18] = v23;
  v39[19] = v25;
  LOBYTE(v39[20]) = 0;
  v32 = v35;
  memcpy(v35, v39, 0xA1uLL);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD738, &qword_217071D50);
  sub_216683A80(v6, v32 + *(v33 + 64), &qword_27CACD720, &unk_217071D30);
  sub_216683A80(v39, v40, &qword_27CACD740, &qword_217071D58);
  sub_216699778(v9, &qword_27CACD720);
  sub_216699778(v6, &qword_27CACD720);
  memcpy(v40, v36, sizeof(v40));
  v41 = v13;
  v42 = v19;
  v43 = v21;
  v44 = v23;
  v45 = v25;
  v46 = 0;
  return sub_216699778(v40, &qword_27CACD740);
}

uint64_t sub_216F172DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v71 - v4;
  v5 = sub_21700C444();
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x28223BE20](v5);
  v87 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v7);
  v71 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v71 - v16;
  v85 = sub_217007474();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v71 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = &v71 - v22;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD800, &qword_217071E40);
  MEMORY[0x28223BE20](v76);
  v78 = &v71 - v23;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD808, &qword_217071E48);
  MEMORY[0x28223BE20](v75);
  v25 = &v71 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD810, &qword_217071E50);
  MEMORY[0x28223BE20](v73);
  v77 = &v71 - v26;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD818, &qword_217071E58);
  MEMORY[0x28223BE20](v74);
  v82 = &v71 - v27;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD820, &qword_217071E60);
  MEMORY[0x28223BE20](v80);
  v90 = &v71 - v28;
  v91 = a1;
  if (*(a1 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_217007DE4();

    if (__swift_getEnumTagSinglePayload(v14, 1, v7))
    {
      sub_216699778(v14, &qword_27CAB6D60);
      v29 = sub_21700C4B4();
      v30 = v17;
      v31 = 1;
    }

    else
    {
      v32 = v71;
      sub_216F20928(v14, v71, type metadata accessor for Artwork);
      sub_216699778(v14, &qword_27CAB6D60);
      v33 = sub_21700C4B4();
      (*(*(v33 - 8) + 16))(v17, v32, v33);
      sub_216F20984(v32, type metadata accessor for Artwork);
      v30 = v17;
      v31 = 0;
      v29 = v33;
    }

    __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
    sub_217007434();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v7);
    v35 = v86;
    if (EnumTagSinglePayload)
    {
      sub_216699778(v11, &qword_27CAB6D60);
      v36 = v89;
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v89);
      v37 = v87;
      sub_21700C414();
      v38 = __swift_getEnumTagSinglePayload(v35, 1, v36);
      v39 = v88;
      if (v38 != 1)
      {
        sub_216699778(v35, &qword_27CAB7530);
      }
    }

    else
    {
      v40 = v71;
      sub_216F20928(v11, v71, type metadata accessor for Artwork);
      sub_216699778(v11, &qword_27CAB6D60);
      v39 = v88;
      v36 = v89;
      (*(v88 + 16))(v35, v40 + *(v7 + 20), v89);
      sub_216F20984(v40, type metadata accessor for Artwork);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
      v37 = v87;
      (*(v39 + 32))(v87, v35, v36);
    }

    v41 = v72;
    sub_2170073E4();
    (*(v39 + 8))(v37, v36);
    v42 = *(v83 + 8);
    v43 = v85;
    v42(v19, v85);
    v44 = sub_216AFF32C();
    v46 = v45;

    v47 = swift_allocObject();
    *(v47 + 16) = v44;
    *(v47 + 24) = v46;
    sub_2167C505C();
    v48 = v79;
    sub_2170073F4();

    v42(v41, v43);
    v49 = sub_216AFF430();

    if (v49)
    {

      v50 = 0.0;
    }

    else
    {
      v50 = 1.0;
    }

    v51 = v78;
    (*(v81 + 32))(v78, v48, v84);
    *(v51 + *(v76 + 36)) = v50;
    v52 = sub_217009834();
    v53 = sub_217009C84();
    sub_2167C5834(v51, v25, &qword_27CACD800, &qword_217071E40);
    v54 = &v25[*(v75 + 36)];
    *v54 = v52;
    v54[4] = v53;
    v55 = v25;
    v56 = v77;
    sub_2167C5834(v55, v77, &qword_27CACD808, &qword_217071E48);
    *(v56 + *(v73 + 36)) = 256;
    sub_21700ACC4();
    v57 = sub_21700AD04();

    v58 = v56;
    v59 = v82;
    sub_2167C5834(v58, v82, &qword_27CACD810, &qword_217071E50);
    v60 = v59 + *(v74 + 36);
    *v60 = v57;
    *(v60 + 8) = xmmword_217029750;
    *(v60 + 24) = 0x4034000000000000;
    v61 = sub_21700B3B4();
    v63 = v62;
    sub_216F17EBC(v91, v100);
    memcpy(v95, v100, 0x68uLL);
    v95[13] = v61;
    v95[14] = v63;
    v64 = v90;
    sub_2167C5834(v59, v90, &qword_27CACD818, &qword_217071E58);
    memcpy((v64 + *(v80 + 36)), v95, 0x78uLL);
    memcpy(v96, v100, sizeof(v96));
    v97 = v61;
    v98 = v63;
    sub_216683A80(v95, v101, &qword_27CACD828, &qword_217071EB0);
    sub_216699778(v96, &qword_27CACD828);
    v65 = sub_21700B3B4();
    v67 = v66;
    sub_216F1814C(v99);
    memcpy(v94, v99, sizeof(v94));
    memcpy(v100, v99, 0xA8uLL);
    v100[21] = v65;
    v100[22] = v67;
    v68 = v92;
    sub_2167C5834(v64, v92, &qword_27CACD820, &qword_217071E60);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD830, &qword_217071EB8);
    memcpy((v68 + *(v69 + 36)), v100, 0xB8uLL);
    memcpy(v101, v94, sizeof(v101));
    v102 = v65;
    v103 = v67;
    sub_216683A80(v100, &v93, &qword_27CACD838, &qword_217071EC0);
    return sub_216699778(v101, &qword_27CACD838);
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

void sub_216F17EBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21700ADC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {

    v9 = sub_216AFF430();

    if (v9)
    {
      v10 = v9;
      sub_21700ADA4();
      (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
      v9 = sub_21700AE04();

      (*(v6 + 8))(v8, v5);
      sub_21700B3B4();
      sub_2170083C4();
      v11 = v24;
      v12 = v26;
      v20 = v28;
      v23 = v25;
      v22 = v27;
      v21 = 1;
      v13 = v25;
      v14 = v27;
      sub_21700ACC4();
      v15 = sub_21700AD04();

      v16 = v20;
      v17 = 16777217;
      v18 = 0x4034000000000000;
      v19 = 0x402E000000000000;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v15 = 0;
      v19 = 0;
      v18 = 0;
      v14 = 0;
      v13 = 0;
      v17 = 0;
      v16 = 0uLL;
    }

    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    *(a2 + 24) = v12;
    *(a2 + 32) = v14;
    *(a2 + 40) = v16;
    *(a2 + 56) = 0;
    *(a2 + 64) = v17;
    *(a2 + 72) = v15;
    *(a2 + 80) = v19;
    *(a2 + 88) = 0;
    *(a2 + 96) = v18;
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    sub_217008CD4();
    __break(1u);
  }
}

double sub_216F1814C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21700ADC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21700ADB4();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = sub_21700AE04();

  (*(v4 + 8))(v6, v3);
  sub_21700B3B4();
  sub_2170083C4();
  v15 = 1;
  *&v14[8] = v16;
  *&v14[24] = v17;
  *&v14[40] = v18;
  v8 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v10 = sub_217009C84();
  v15 = 0;
  sub_21700ACC4();
  v11 = sub_21700AD04();

  v12 = *&v14[18];
  *(a1 + 18) = *&v14[2];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v12;
  *(a1 + 50) = *&v14[34];
  *(a1 + 64) = *&v14[48];
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v8;
  *(a1 + 88) = v10;
  *(a1 + 96) = 0x4054C00000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v11;
  result = 15.0;
  *(a1 + 144) = xmmword_217029750;
  *(a1 + 160) = 0x4034000000000000;
  return result;
}

uint64_t sub_216F18370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD748, &qword_217071D60);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD750, &qword_217071D68);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  *v16 = sub_2170091A4();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD758, &qword_217071D70);
  sub_216F18768(a1, &v16[*(v17 + 44)]);
  v18 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v20 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD760, &qword_217071D78) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = sub_21700AD14();
  v22 = swift_getKeyPath();
  v23 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD768, &qword_217071D80) + 36)];
  *v23 = v22;
  v23[1] = v21;
  sub_21700B3B4();
  sub_2170083C4();
  v24 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD770, &qword_217071D88) + 36)];
  v25 = v41;
  *v24 = v40;
  *(v24 + 1) = v25;
  *(v24 + 2) = v42;
  *&v16[*(v11 + 60)] = 0;
  *v9 = sub_2170091A4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD778, &qword_217071D90);
  sub_216F19188(a1, &v9[*(v26 + 44)]);
  v27 = sub_217009D54();
  v28 = swift_getKeyPath();
  v29 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD780, &qword_217071D98) + 36)];
  *v29 = v28;
  v29[1] = v27;
  v30 = sub_21700AD14();
  v31 = swift_getKeyPath();
  v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD788, &qword_217071DA0) + 36)];
  *v32 = v31;
  v32[1] = v30;
  sub_21700B3B4();
  sub_2170083C4();
  v33 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD790, &qword_217071DA8) + 36)];
  v34 = v44;
  *v33 = v43;
  *(v33 + 1) = v34;
  *(v33 + 2) = v45;
  *&v9[*(v4 + 60)] = 1;
  sub_216683A80(v16, v13, &qword_27CACD750, &qword_217071D68);
  sub_216683A80(v9, v6, &qword_27CACD748, &qword_217071D60);
  v35 = v39;
  sub_216683A80(v13, v39, &qword_27CACD750, &qword_217071D68);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD798, &unk_217071DB0);
  sub_216683A80(v6, v35 + *(v36 + 64), &qword_27CACD748, &qword_217071D60);
  sub_216699778(v9, &qword_27CACD748);
  sub_216699778(v16, &qword_27CACD750);
  sub_216699778(v6, &qword_27CACD748);
  return sub_216699778(v13, &qword_27CACD750);
}

uint64_t sub_216F18768@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F40, &qword_217054140);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FA8, &qword_2170467D8);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  MEMORY[0x28223BE20](v6);
  v63 = v60 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7D0, &qword_217071DE8);
  v68 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = v60 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7D8, &qword_217071DF0);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v61 = v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7E0, &qword_217071DF8);
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x28223BE20](v11);
  v72 = v60 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7E8, &qword_217071E00);
  MEMORY[0x28223BE20](v70);
  v74 = v60 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7F0, &qword_217071E08);
  MEMORY[0x28223BE20](v71);
  v82 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = v60 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = v60 - v18;
  v19 = sub_216983738(164);
  v80 = v20;
  v81 = v19;
  v79 = sub_217009CD4();
  sub_217007F24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(__src[0]) = 0;
  sub_217009264();
  v65 = a1;
  v30 = a1[3];
  v29 = a1[4];
  v31 = type metadata accessor for SocialProfileUpdater(0);
  v32 = sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
  v60[2] = v31;
  v60[3] = v29;
  sub_217008CC4();
  swift_getKeyPath();
  v60[1] = v32;
  sub_217008CE4();
  v33 = v61;

  v34 = v63;
  v35 = v62;
  sub_21700B4B4();
  sub_217009A54();
  v36 = sub_217009A64();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v36);
  v37 = sub_21669E098(&qword_27CACD7C0, &qword_27CAC2FA8, &qword_2170467D8, MEMORY[0x277CDF1A8]);
  v38 = v64;
  v39 = v66;
  sub_21700A8E4();
  sub_216699778(v5, &qword_27CAC5F40);
  (*(v67 + 8))(v34, v39);
  __src[0] = v39;
  __src[1] = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CE9B5E0](1, v35, OpaqueTypeConformance2);
  (*(v68 + 8))(v38, v35);
  if (v30)
  {

    v41 = sub_216AFF32C();
    v43 = v42;

    __src[0] = v41;
    __src[1] = v43;
    v44 = v65;
    v97 = *v65;
    v45 = swift_allocObject();
    v46 = *(v44 + 1);
    *(v45 + 16) = *v44;
    *(v45 + 32) = v46;
    *(v45 + 48) = v44[4];

    sub_216B8ED34(&v97, &v85);

    v85 = v35;
    v86 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v47 = v72;
    v48 = v75;
    sub_21700AB04();

    (*(v73 + 8))(v33, v48);
    sub_21700B3D4();
    sub_217008BB4();
    v49 = v74;
    (*(v76 + 32))(v74, v47, v77);
    memcpy((v49 + *(v70 + 36)), __src, 0x70uLL);
    KeyPath = swift_getKeyPath();
    v51 = v69;
    sub_2167C5834(v49, v69, &qword_27CACD7E8, &qword_217071E00);
    v52 = v51 + *(v71 + 36);
    *v52 = KeyPath;
    *(v52 + 8) = 2;
    v53 = v78;
    sub_2167C5834(v51, v78, &qword_27CACD7F0, &qword_217071E08);
    v54 = v82;
    sub_216683A80(v53, v82, &qword_27CACD7F0, &qword_217071E08);
    v56 = v80;
    v55 = v81;
    v84[0] = v81;
    v84[1] = v80;
    v84[2] = 0;
    v84[3] = MEMORY[0x277D84F90];
    LOBYTE(v44) = v79;
    LOBYTE(v84[4]) = v79;
    *(&v84[4] + 1) = v98[0];
    HIDWORD(v84[4]) = *(v98 + 3);
    v84[5] = v22;
    v84[6] = v24;
    v84[7] = v26;
    v84[8] = v28;
    LOBYTE(v84[9]) = 0;
    v57 = v83;
    memcpy(v83, v84, 0x49uLL);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7F8, &qword_217071E38);
    sub_216683A80(v54, v57 + *(v58 + 48), &qword_27CACD7F0, &qword_217071E08);
    sub_216683A80(v84, &v85, &qword_27CABB5F0, &unk_217023E30);
    sub_216699778(v53, &qword_27CACD7F0);
    sub_216699778(v54, &qword_27CACD7F0);
    v85 = v55;
    v86 = v56;
    v87 = 0;
    v88 = MEMORY[0x277D84F90];
    v89 = v44;
    *v90 = v98[0];
    *&v90[3] = *(v98 + 3);
    v91 = v22;
    v92 = v24;
    v93 = v26;
    v94 = v28;
    v95 = 0;
    return sub_216699778(&v85, &qword_27CABB5F0);
  }

  else
  {
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F190A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v4 == 32 && v5 == 0xE100000000000000;
  if (v6 || (result = sub_21700F7D4(), (result & 1) != 0))
  {
    if (*(a3 + 24))
    {

      sub_216AFC974(0, 0xE000000000000000);
    }

    else
    {
      type metadata accessor for SocialProfileUpdater(0);
      sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
      result = sub_217008CD4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_216F19188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FA8, &qword_2170467D8);
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v5 = &v48 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7A0, &qword_217071DC0);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7A8, &qword_217071DC8);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v48 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7B0, &qword_217071DD0);
  MEMORY[0x28223BE20](v51);
  v55 = &v48 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7B8, &qword_217071DD8);
  MEMORY[0x28223BE20](v52);
  v63 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v59 = &v48 - v15;
  v16 = sub_216983738(367);
  v61 = v17;
  v62 = v16;
  v60 = sub_217009CD4();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(__src[0]) = 0;
  sub_217009264();
  sub_216F198FC();
  v26 = v7;
  v27 = v49;
  sub_21700B4B4();
  v28 = sub_21669E098(&qword_27CACD7C0, &qword_27CAC2FA8, &qword_2170467D8, MEMORY[0x277CDF1A8]);
  MEMORY[0x21CE9B5E0](1, v27, v28);
  (*(v3 + 8))(v5, v27);
  if (a1[3])
  {

    v29 = sub_216AFF340();
    v31 = v30;

    __src[0] = v29;
    __src[1] = v31;
    v78 = *a1;
    v32 = swift_allocObject();
    v33 = *(a1 + 1);
    *(v32 + 16) = *a1;
    *(v32 + 32) = v33;
    *(v32 + 48) = a1[4];

    sub_216B8ED34(&v78, &v66);

    v66 = v27;
    v67 = v28;
    swift_getOpaqueTypeConformance2();
    v34 = v53;
    v35 = v56;
    sub_21700AB04();

    (*(v54 + 8))(v26, v35);
    sub_21700B3D4();
    sub_217008BB4();
    v36 = v55;
    (*(v57 + 32))(v55, v34, v58);
    memcpy((v36 + *(v51 + 36)), __src, 0x70uLL);
    KeyPath = swift_getKeyPath();
    v38 = v50;
    sub_2167C5834(v36, v50, &qword_27CACD7B0, &qword_217071DD0);
    v39 = v38 + *(v52 + 36);
    *v39 = KeyPath;
    *(v39 + 8) = 2;
    v40 = v59;
    sub_2167C5834(v38, v59, &qword_27CACD7B8, &qword_217071DD8);
    v41 = v63;
    sub_216683A80(v40, v63, &qword_27CACD7B8, &qword_217071DD8);
    v43 = v61;
    v42 = v62;
    v65[0] = v62;
    v65[1] = v61;
    v65[2] = 0;
    v65[3] = MEMORY[0x277D84F90];
    v44 = v60;
    LOBYTE(v65[4]) = v60;
    *(&v65[4] + 1) = v79[0];
    HIDWORD(v65[4]) = *(v79 + 3);
    v65[5] = v19;
    v65[6] = v21;
    v65[7] = v23;
    v65[8] = v25;
    LOBYTE(v65[9]) = 0;
    v45 = v64;
    memcpy(v64, v65, 0x49uLL);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7C8, &qword_217071DE0);
    sub_216683A80(v41, v45 + *(v46 + 48), &qword_27CACD7B8, &qword_217071DD8);
    sub_216683A80(v65, &v66, &qword_27CABB5F0, &unk_217023E30);
    sub_216699778(v40, &qword_27CACD7B8);
    sub_216699778(v41, &qword_27CACD7B8);
    v66 = v42;
    v67 = v43;
    v68 = 0;
    v69 = MEMORY[0x277D84F90];
    v70 = v44;
    *v71 = v79[0];
    *&v71[3] = *(v79 + 3);
    v72 = v19;
    v73 = v21;
    v74 = v23;
    v75 = v25;
    v76 = 0;
    return sub_216699778(&v66, &qword_27CABB5F0);
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F198FC()
{
  v1 = v0;
  v12 = *v0;
  v11 = *(v0 + 3);
  sub_21700EA34();
  sub_216B8ED34(&v12, &v10);

  sub_216683A80(&v11, &v10, &qword_27CACD728, &qword_217071D40);
  v2 = sub_21700EA24();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(v0 + 1);
  *(v3 + 32) = *v0;
  *(v3 + 48) = v5;
  *(v3 + 64) = v0[4];
  sub_216B8ED34(&v12, &v10);

  sub_216683A80(&v11, &v10, &qword_27CACD728, &qword_217071D40);
  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = *(v1 + 1);
  *(v7 + 32) = *v1;
  *(v7 + 48) = v8;
  *(v7 + 64) = v1[4];
  sub_21700B0F4();
  return v10;
}

void sub_216F19A6C(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = *a2 == 32 && v3 == 0xE100000000000000;
    if (v8 || (sub_21700F7D4() & 1) != 0 || sub_21700E624() > 32 || (v9 = objc_allocWithZone(MEMORY[0x277CCAC68]), (v10 = sub_2169FAA38(0x307A2D615A2D415BLL, 0xED00002B5D5F392DLL, 0)) != 0) && ((v11 = sub_21700E624(), v12 = sub_21700E4D4(), v13 = [v10 rangeOfFirstMatchInString:v12 options:0 range:{0, v11}], v15 = v14, v10, v12, v13) || v11 != v15))
    {
      if (*(a3 + 24))
      {

        sub_21700DF14();
        sub_216AFC988(v6, v7);
      }

      else
      {
        type metadata accessor for SocialProfileUpdater(0);
        sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
        sub_217008CD4();
        __break(1u);
      }
    }
  }
}

uint64_t sub_216F19C8C@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (*(a1 + 24))
  {

    v3 = sub_216AFF340();
    v5 = v4;

    MEMORY[0x21CE9F490](v3, v5);

    *a2 = 64;
    a2[1] = 0xE100000000000000;
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F19D68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = *(a4 + 24);
  if (!v6)
  {
    if (v7)
    {

      v12 = 64;
      v13 = 0xE100000000000000;
      goto LABEL_8;
    }

LABEL_11:
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
    return result;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  sub_21700DF14();
  v8 = sub_216E1A9A8(1uLL, v4, v5);
  v9 = MEMORY[0x21CE9F400](v8);
  v11 = v10;

  v12 = v9;
  v13 = v11;
LABEL_8:
  sub_216AFC988(v12, v13);
}

void sub_216F19EB4()
{
  OUTLINED_FUNCTION_49();
  v56 = v0;
  v58 = v1;
  v3 = *(v2 + 16);
  v4 = v2;
  v60 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDA98, &qword_2170722C0);
  v6 = *(v4 + 24);
  v7 = sub_2167B2E14();
  v8 = MEMORY[0x277CE14C0];
  v9 = sub_21669E098(&qword_27CACDAA0, &qword_27CACDA98, &qword_2170722C0, MEMORY[0x277CE14C0]);
  v71 = v3;
  v72 = MEMORY[0x277D837D0];
  v59 = v3;
  v73 = v5;
  v74 = v6;
  v75 = v7;
  v76 = v9;
  OUTLINED_FUNCTION_7_125();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDAA8, &qword_2170722C8);
  v10 = sub_2170089F4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDAB0, &unk_2170722D0);
  v71 = v3;
  v72 = MEMORY[0x277D837D0];
  v73 = v5;
  v74 = v6;
  v75 = v7;
  v76 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_130();
  v15 = sub_21669E098(v13, &qword_27CACDAA8, &qword_2170722C8, v14);
  v77 = OpaqueTypeConformance2;
  v78 = v15;
  v57 = MEMORY[0x277CDFAD8];
  v48[1] = v10;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_21669E098(&qword_27CACDAC0, &qword_27CACDAB0, &unk_2170722D0, v8);
  v71 = v10;
  v72 = v11;
  v73 = WitnessTable;
  v74 = v17;
  v18 = sub_217009F14();
  OUTLINED_FUNCTION_1();
  v52 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = v48 - v21;
  v51 = sub_2170089F4();
  v54 = *(v51 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v49 = v48 - v24;
  v25 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v55 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77();
  v50 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v53 = v48 - v31;
  v64 = v59;
  v65 = v6;
  v32 = v56;
  v66 = v56;
  v61 = v59;
  v62 = v6;
  v33 = v59;
  v48[0] = v6;
  v63 = v56;
  sub_217009F04();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v6;
  memcpy(v34 + 4, v32, 0x78uLL);
  OUTLINED_FUNCTION_50();
  v36 = *(v35 + 16);
  v36(&v71, v32);
  OUTLINED_FUNCTION_38_28();
  v37 = swift_getWitnessTable();
  v38 = v49;
  sub_21700AAF4();

  (*(v52 + 8))(v22, v18);
  v39 = swift_allocObject();
  v40 = v48[0];
  v39[2] = v59;
  v39[3] = v40;
  memcpy(v39 + 4, v32, 0x78uLL);
  (v36)(&v71, v32, v60);
  v41 = MEMORY[0x277CE0790];
  v69 = v37;
  v70 = MEMORY[0x277CE0790];
  v42 = v51;
  v43 = swift_getWitnessTable();
  v44 = v50;
  sub_21700A414();

  (*(v54 + 8))(v38, v42);
  v67 = v43;
  v68 = v41;
  v45 = swift_getWitnessTable();
  v46 = v53;
  sub_2166C24DC(v44, v25, v45);
  v47 = *(v55 + 8);
  v47(v44, v25);
  sub_2166C24DC(v46, v25, v45);
  v47(v46, v25);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F1A458@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDAF8, &unk_217072370);
  MEMORY[0x28223BE20](v77);
  v76 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v72 - v9;
  v75 = sub_21700B134();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDB00, &qword_217072380);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v72 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDB08, &qword_217072388);
  v17 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = &v72 - v20;
  MEMORY[0x28223BE20](v21);
  v87 = &v72 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDB10, &unk_217072390);
  MEMORY[0x28223BE20](v26 - 8);
  v83 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v72 - v29;
  v31 = a1[40];
  v89 = v25;
  v84 = &v72 - v29;
  v85 = v17;
  if (v31)
  {
    v32 = swift_allocObject();
    v32[2] = a2;
    v32[3] = a3;
    memcpy(v32 + 4, a1, 0x78uLL);
    v34 = type metadata accessor for SocialProfilePhotoEditorView(0, a2, a3, v33);
    (*(*(v34 - 8) + 16))(v90, a1, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420, &unk_21706D110);
    v30 = v84;
    sub_21669E098(&qword_280E2A5E0, &qword_27CABA420, &unk_21706D110, MEMORY[0x277CDEFF0]);
    sub_21700AF14();
    (*(v17 + 32))(v30, v25, v86);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v30, v35, 1, v86);
  v36 = swift_allocObject();
  v36[2] = a2;
  v36[3] = a3;
  memcpy(v36 + 4, a1, 0x78uLL);
  v38 = type metadata accessor for SocialProfilePhotoEditorView(0, a2, a3, v37);
  v39 = *(*(v38 - 8) + 16);
  v39(v90, a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA420, &unk_21706D110);
  sub_21669E098(&qword_280E2A5E0, &qword_27CABA420, &unk_21706D110, MEMORY[0x277CDEFF0]);
  sub_21700AF14();
  v40 = swift_allocObject();
  v40[2] = a2;
  v40[3] = a3;
  memcpy(v40 + 4, a1, 0x78uLL);
  v39(v90, a1, v38);
  sub_21700AF14();
  v41 = sub_216F1B0B4();
  v42 = 1;
  v43 = v85;
  if (v41)
  {
    sub_21700B124();
    v44 = v72;
    sub_217007ED4();
    v45 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
    v46 = swift_allocObject();
    v46[2] = a2;
    v46[3] = a3;
    memcpy(v46 + 4, a1, 0x78uLL);
    v39(v90, a1, v38);
    v47 = v89;
    sub_21700AF04();
    v48 = v73;
    v49 = *(v73 + 16);
    v50 = v74;
    v51 = v75;
    v49(v74, v80, v75);
    v52 = *(v85 + 16);
    v53 = v82;
    v54 = v47;
    v55 = v86;
    v52(v82, v54, v86);
    v56 = v76;
    v49(v76, v50, v51);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDB20, &qword_2170723A8);
    v52((v56 + *(v57 + 48)), v53, v55);
    v58 = *(v85 + 8);
    v58(v89, v55);
    v59 = *(v48 + 8);
    v59(v80, v51);
    v58(v53, v55);
    v43 = v85;
    v59(v50, v51);
    sub_2167C5834(v56, v81, &qword_27CACDAF8, &unk_217072370);
    v42 = 0;
  }

  v60 = v86;
  v61 = v81;
  __swift_storeEnumTagSinglePayload(v81, v42, 1, v77);
  v62 = v83;
  sub_216683A80(v84, v83, &qword_27CACDB10, &unk_217072390);
  v63 = *(v43 + 16);
  v64 = v89;
  v63(v89, v87, v60);
  v65 = v82;
  v63(v82, v88, v60);
  v66 = v43;
  v67 = v78;
  sub_216683A80(v61, v78, &qword_27CACDB00, &qword_217072380);
  v68 = v79;
  sub_216683A80(v62, v79, &qword_27CACDB10, &unk_217072390);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDB18, &qword_2170723A0);
  v63((v68 + v69[12]), v64, v60);
  v63((v68 + v69[16]), v65, v60);
  sub_216683A80(v67, v68 + v69[20], &qword_27CACDB00, &qword_217072380);
  sub_216699778(v61, &qword_27CACDB00);
  v70 = *(v66 + 8);
  v70(v88, v60);
  v70(v87, v60);
  sub_216699778(v84, &qword_27CACDB10);
  sub_216699778(v67, &qword_27CACDB00);
  v70(v65, v60);
  v70(v89, v60);
  return sub_216699778(v83, &qword_27CACDB10);
}

uint64_t sub_216F1AF48()
{
  sub_216983738(47);
  sub_2167B2E14();
  return sub_21700AE34();
}

uint64_t sub_216F1AFB0(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = *(a1 + 3);
  LOBYTE(v9[0]) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDAD8, &qword_217072310);
  sub_21700AEC4();
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  v14 = v6;
  *&v11 = v6;
  *(&v11 + 1) = v5;
  v12 = v7;
  sub_216B8ED34(&v14, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  MEMORY[0x21CE9BEE0](&v13);
  v9[0] = v6;
  v9[1] = v5;
  v10 = v7;
  sub_21700B0D4();
  sub_216B8EE00(&v14);
}

uint64_t sub_216F1B0B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  if (*(v0 + 104))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_217007DE4();

    v4 = type metadata accessor for Artwork(0);
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_216699778(v3, &qword_27CAB6D60);
      v5 = sub_216AFF430();

      if (!v5)
      {
        return 0;
      }
    }

    else
    {

      sub_216699778(v3, &qword_27CAB6D60);
    }

    return 1;
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F1B264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if (*(a1 + 104))
  {

    v5 = sub_216AFF430();
    if (v5)
    {

      sub_216AFF4A4();
    }

    else
    {
      v7 = type metadata accessor for Artwork(0);
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
      sub_216AFCA14();
    }
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F1B3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_216983738(a1);
  sub_2167B2E14();
  return sub_21700AE34();
}

uint64_t sub_216F1B428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v36 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDA98, &qword_2170722C0);
  v41 = v8;
  v9 = sub_2167B2E14();
  v31 = v9;
  v10 = sub_21669E098(&qword_27CACDAA0, &qword_27CACDA98, &qword_2170722C0, MEMORY[0x277CE14C0]);
  v53 = a2;
  v54 = MEMORY[0x277D837D0];
  v55 = v8;
  v56 = a3;
  v57 = v9;
  v58 = v10;
  v34 = MEMORY[0x277CDEE08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v40 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDAA8, &qword_2170722C8);
  v12 = sub_2170089F4();
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v35 = &v30 - v16;
  v17 = a1;
  (*(a1 + 24))(v15);
  v51 = sub_216983738(96);
  v52 = v18;
  v50 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  v45 = a2;
  v46 = a3;
  v47 = a1;
  v19 = v31;
  v20 = v30;
  sub_21700A9B4();

  (*(v36 + 8))(v20, a2);
  v42 = a2;
  v43 = a3;
  v44 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDAC8, &qword_2170722E0);
  v53 = a2;
  v54 = MEMORY[0x277D837D0];
  v55 = v41;
  v56 = a3;
  v57 = v19;
  v58 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_216F20824();
  v22 = OpaqueTypeMetadata2;
  sub_21698D020();
  v23 = v32;
  v24 = v40;
  sub_21700A2D4();
  (*(v37 + 8))(v24, v22);
  v25 = sub_21669E098(&qword_27CACDAB8, &qword_27CACDAA8, &qword_2170722C8, MEMORY[0x277CE0328]);
  v48 = OpaqueTypeConformance2;
  v49 = v25;
  WitnessTable = swift_getWitnessTable();
  v27 = v35;
  sub_2166C24DC(v23, v12, WitnessTable);
  v28 = *(v38 + 8);
  v28(v23, v12);
  sub_2166C24DC(v27, v12, WitnessTable);
  return (v28)(v27, v12);
}

uint64_t sub_216F1B988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, char *a4@<X8>)
{
  v62 = a3;
  v61 = a2;
  v64 = a4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDAE0, &unk_217072350);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v57 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7408, &qword_2170584F8);
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F40, &qword_217054140);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2FA8, &qword_2170467D8);
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7D0, &qword_217071DE8);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v18 = &v57 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD7D8, &qword_217071DF0);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v65 = &v57 - v21;
  v22 = sub_216983738(164);
  v24 = v23;
  v57 = a1;
  v78 = *(a1 + 80);
  v79 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
  sub_21700AED4();
  v76 = v22;
  v77 = v24;
  sub_2167B2E14();
  sub_21700B4C4();
  sub_217009A54();
  v25 = sub_217009A64();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  v26 = sub_21669E098(&qword_27CACD7C0, &qword_27CAC2FA8, &qword_2170467D8, MEMORY[0x277CDF1A8]);
  sub_21700A8E4();
  sub_216699778(v13, &qword_27CAC5F40);
  (*(v58 + 8))(v16, v14);
  v76 = v14;
  v77 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v65;
  v29 = v59;
  MEMORY[0x21CE9B5E0](1, v59, OpaqueTypeConformance2);
  (*(v60 + 8))(v18, v29);
  v76 = sub_216983738(43);
  v77 = v30;
  v31 = v66;
  sub_21700AF44();
  v32 = swift_allocObject();
  v33 = v61;
  v34 = v62;
  v32[2] = v61;
  v32[3] = v34;
  v35 = v57;
  memcpy(v32 + 4, v57, 0x78uLL);
  v37 = type metadata accessor for SocialProfilePhotoEditorView(0, v33, v34, v36);
  (*(*(v37 - 8) + 16))(&v76, v35, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDAE8, &qword_217072360);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
  v39 = sub_2167C4D74();
  v76 = v38;
  v77 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v71;
  sub_21700AF14();
  v41 = *(v69 + 16);
  v42 = v67;
  v43 = v28;
  v44 = v68;
  v41(v67, v43, v68);
  v62 = *(v74 + 16);
  v45 = v70;
  v62(v70, v31, v72);
  v46 = *(v75 + 16);
  v47 = v63;
  v46(v63, v40, v73);
  v48 = v64;
  v41(v64, v42, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDAF0, &qword_217072368);
  v50 = v72;
  v62(&v48[*(v49 + 48)], v45, v72);
  v51 = v73;
  v46(&v48[*(v49 + 64)], v47, v73);
  v52 = *(v75 + 8);
  v52(v71, v51);
  v53 = *(v74 + 8);
  v53(v66, v50);
  v54 = *(v69 + 8);
  v55 = v68;
  v54(v65, v68);
  v52(v47, v51);
  v53(v70, v50);
  return (v54)(v67, v55);
}

uint64_t sub_216F1C270(uint64_t a1)
{
  if (*(a1 + 104))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
    sub_21700AEB4();
    sub_216AFC974(v2, v3);
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F1C344()
{
  sub_216983738(90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  sub_2167C4D74();
  sub_21700A964();
}

uint64_t sub_216F1C3CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SocialProfileUpdater(0);
  sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
  sub_217008CC4();
  swift_getKeyPath();
  sub_217008CE4();

  v22 = *(&v29 + 1);
  v23 = v29;
  v6 = v30;
  v25 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDAD8, &qword_217072310);
  sub_21700AED4();
  v7 = v27;
  v8 = v28;
  v27 = *a1;
  v28 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  sub_21700B0E4();
  v9 = v25;
  v10 = v26;
  if (qword_27CAB5A98 != -1)
  {
    swift_once();
  }

  v11 = qword_27CB22938;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  swift_storeEnumTagMultiPayload();
  v12 = v5 + v3[7];
  v13 = v3[9];
  v14 = (v5 + v3[5]);
  *v14 = v23;
  v14[1] = v22;
  v14[2] = v6;
  v15 = v5 + v3[6];
  *v15 = v7;
  v15[16] = v8;
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 0;
  v16 = v5 + v3[8];
  *v16 = v9;
  v16[16] = v10;
  *(v5 + v13) = v11;
  sub_21700DF14();
  sub_21700B3B4();
  sub_2170083C4();
  v17 = v24;
  sub_216F20928(v5, v24, type metadata accessor for ImagePicker);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDAC8, &qword_2170722E0) + 36));
  v19 = v30;
  *v18 = v29;
  v18[1] = v19;
  v18[2] = v31;
  return sub_216F20984(v5, type metadata accessor for ImagePicker);
}

uint64_t sub_216F1C6BC(uint64_t result)
{
  if (*(result + 40))
  {
    if (*(result + 104))
    {

      sub_216AFF32C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
      return sub_21700AEC4();
    }

    else
    {
      type metadata accessor for SocialProfileUpdater(0);
      sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
      result = sub_217008CD4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_216F1C7AC(uint64_t result)
{
  if (*(result + 40))
  {
    if (*(result + 104))
    {

      sub_216AFEE24();
      if (v1)
      {
        sub_216AFD014(0, 0, 0);
      }
    }

    else
    {
      type metadata accessor for SocialProfileUpdater(0);
      sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
      result = sub_217008CD4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_216F1C8C8@<X0>(uint64_t a2@<X8>)
{
  sub_21700B124();
  sub_21700B3B4();
  sub_2170083C4();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD8F8, &qword_217071F98) + 36));
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v4 = sub_217009834();
  v5 = sub_217009C84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CACD900, &qword_217071FA0);
  v7 = a2 + *(result + 36);
  *v7 = v4;
  *(v7 + 4) = 1041865114;
  *(v7 + 8) = v5;
  return result;
}

void sub_216F1C98C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v27[1] = v4;
  v5 = sub_2170086D4();
  OUTLINED_FUNCTION_1();
  v27[0] = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD840, &qword_217071EF8);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD848, &qword_217071F00);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = v27 - v21;
  v27[4] = v3;
  v27[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD850, &qword_217071F08);
  sub_216F1FC20();
  sub_217009ED4();
  sub_2170086C4();
  OUTLINED_FUNCTION_9_92();
  v25 = sub_21669E098(v23, &qword_27CACD840, &qword_217071EF8, v24);
  v26 = MEMORY[0x277CDD980];
  sub_21700ABC4();
  (*(v27[0] + 8))(v10, v5);
  (*(v13 + 8))(v16, v11);
  v27[6] = v11;
  v27[7] = v5;
  v27[8] = v25;
  v27[9] = v26;
  OUTLINED_FUNCTION_5_140();
  swift_getOpaqueTypeConformance2();
  sub_21700A794();
  (*(v19 + 8))(v22, v17);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F1CC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD868, &qword_217071F10);
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = v16 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD850, &qword_217071F08);
  MEMORY[0x28223BE20](v17);
  v9 = v16 - v8;
  if (a1)
  {

    v10 = sub_216AFF318();

    v20 = v10;
    v16[1] = swift_getKeyPath();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2918, &qword_217043B38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD878, &qword_217071F18);
    sub_21669E098(&qword_27CACD8C0, &qword_27CAC2918, &qword_217043B38, MEMORY[0x277D83980]);
    sub_216F208E0(&qword_27CACD8C8, type metadata accessor for SocialProfileUpdater.PlaylistDescriptor, &unk_217043C0C);
    sub_216F1FD5C();
    sub_21700B154();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_216F1FFB4;
    *(v13 + 24) = v12;
    (*(v5 + 32))(v9, v7, v18);
    v14 = &v9[*(v17 + 36)];
    *v14 = sub_216F1FFBC;
    *(v14 + 1) = v13;
    sub_2167C5834(v9, v19, &qword_27CACD850, &qword_217071F08);
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F1CF7C@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);

  v6 = sub_217008CF4();
  v8 = v7;
  type metadata accessor for SocialProfileUpdater.PlaylistDescriptor(0);
  sub_216F208E0(&qword_27CACD8D0, type metadata accessor for SocialProfileUpdater.PlaylistDescriptor, &unk_217043BAC);
  v9 = sub_217008684();
  if (a2)
  {
    v11 = v9;
    v12 = v10;

    v13 = sub_217007D54();
    result = sub_217009394();
    *a4 = v11;
    *(a4 + 8) = v12;
    *(a4 + 16) = v6;
    *(a4 + 24) = v8;
    *(a4 + 32) = v13;
    *(a4 + 40) = a2;
    *(a4 + 48) = result;
    *(a4 + 56) = sub_21680A0F8;
    *(a4 + 64) = 0;
    *(a4 + 72) = xmmword_21705A7C0;
    *(a4 + 88) = xmmword_21705A7C0;
    *(a4 + 104) = 0;
  }

  else
  {
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F1D0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_216F1D1B8(a1, a2, a3, a4);
  if (a3)
  {

    sub_216AFCEF8(a1, a2);
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

void sub_216F1D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_217006314();
  if ((v7 & 1) == 0)
  {
    if (a3)
    {
      v8 = v6;
      swift_retain_n();
      v9 = sub_216AFF318();
      v10 = sub_2166BF3C8(v9);

      if (v8 >= v10 || (v11 = a2 - (v8 < a2), v11 < 0))
      {
      }

      else
      {
        v12 = sub_216AFF318();

        v13 = sub_2166BF3C8(v12);

        if (v11 >= v13)
        {
        }

        else
        {
          v14 = sub_216AFF318();

          sub_216C746F0();
          if ((v14 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x21CEA0220](v11, v14);
          }

          else
          {
            v15 = *(v14 + 8 * v11 + 32);
          }

          v17 = *(v15 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_title);
          v16 = *(v15 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_title + 8);
          sub_21700DF14();

          if (v16)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_217013DA0;
            *(inited + 56) = MEMORY[0x277D837D0];
            *(inited + 64) = sub_2167C6E08();
            *(inited + 32) = v17;
            *(inited + 40) = v16;
            if (v11 >= v8)
            {
              v19 = 14;
            }

            else
            {
              v19 = 15;
            }

            sub_216983808(v19, inited);
            v20 = *MEMORY[0x277D76438];
            v21 = sub_21700E4D4();

            UIAccessibilityPostNotification(v20, v21);
          }
        }
      }
    }

    else
    {
      type metadata accessor for SocialProfileUpdater(0);
      sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
      sub_217008CD4();
      __break(1u);
    }
  }
}

uint64_t sub_216F1D418(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD9C8, &qword_2170721E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  *v10 = sub_2170091A4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD9D0, &qword_2170721E8);
  sub_216F1D590(a1, a2, a3, a4, &v10[*(v11 + 44)]);
  v10[*(v8 + 36)] = 0;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  sub_216F203E0();

  sub_21700A494();

  return sub_216699778(v10, &qword_27CACD9C8);
}

uint64_t sub_216F1D590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v54 = a3;
  v55 = a4;
  v52 = a1;
  v53 = a2;
  v64 = a5;
  v5 = sub_217009314();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD9F0, &qword_217072200);
  MEMORY[0x28223BE20](v58);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v49 - v11;
  MEMORY[0x28223BE20](v12);
  v62 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD9F8, &qword_217072208);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = &v49 - v17;
  v18 = sub_2170099D4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDA00, &qword_217072210);
  MEMORY[0x28223BE20](v22);
  v24 = (&v49 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDA08, &qword_217072218);
  v60 = *(v25 - 8);
  v61 = v25;
  MEMORY[0x28223BE20](v25);
  v59 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v57 = &v49 - v28;
  sub_216F1DCCC(v52, v53, v54, v55, v24);
  sub_2170099B4();
  sub_216F204C4();
  sub_21700A784();
  (*(v19 + 8))(v21, v18);
  sub_216699778(v24, &qword_27CACDA00);
  v29 = sub_21700ADB4();
  v30 = sub_217009E14();
  KeyPath = swift_getKeyPath();
  v66 = v29;
  v67 = KeyPath;
  v68 = v30;
  sub_2170092E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250, &qword_217019260);
  sub_2167E947C();
  sub_21700A8A4();
  v32 = v51;
  v55 = *(v50 + 8);
  v55(v7, v51);

  sub_216983738(266);
  v33 = v56;
  sub_217008964();

  sub_216699778(v9, &qword_27CACD9F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B0, &unk_217037BF0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_217013DA0;
  sub_2170092F4();
  v66 = v34;
  sub_216F208E0(&qword_280E2AC28, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC02B8, &qword_21706C760);
  sub_21669E098(&qword_280E29E60, &qword_27CAC02B8, &qword_21706C760, MEMORY[0x277D83970]);
  v35 = v32;
  sub_21700F214();
  v36 = v62;
  sub_2170089A4();
  v55(v7, v35);
  sub_216699778(v33, &qword_27CACD9F0);
  sub_216F20574();
  v37 = v65;
  sub_21700A804();
  sub_216699778(v36, &qword_27CACD9F0);
  v38 = v59;
  v39 = v60;
  v40 = *(v60 + 16);
  v41 = v57;
  v42 = v61;
  v40(v59, v57, v61);
  v43 = v63;
  sub_216683A80(v37, v63, &qword_27CACD9F8, &qword_217072208);
  v44 = v64;
  v40(v64, v38, v42);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDA30, &unk_217072230);
  v46 = &v44[*(v45 + 48)];
  *v46 = 0;
  v46[8] = 1;
  sub_216683A80(v43, &v44[*(v45 + 64)], &qword_27CACD9F8, &qword_217072208);
  sub_216699778(v65, &qword_27CACD9F8);
  v47 = *(v39 + 8);
  v47(v41, v42);
  sub_216699778(v43, &qword_27CACD9F8);
  return (v47)(v38, v42);
}

uint64_t sub_216F1DCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v97 = a3;
  v98 = a4;
  v96 = a1;
  v99 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v6 - 8);
  v87 = &v82 - v7;
  v8 = sub_21700C444();
  v89 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v88 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v82 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v82 - v17;
  v19 = sub_217007474();
  v85 = *(v19 - 8);
  v86 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v84 = &v82 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v91 = *(v24 - 8);
  v92 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3770, &unk_2170485A0);
  MEMORY[0x28223BE20](v83);
  v95 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v82 - v29;
  MEMORY[0x28223BE20](v31);
  v101 = &v82 - v32;
  sub_216B02EE8();
  v104 = sub_21700ADB4();
  v103 = sub_217009E14();
  KeyPath = swift_getKeyPath();
  v33 = sub_216B02EE8();
  v90 = v26;
  if (v33)
  {
    v34 = sub_21700AC54();
  }

  else
  {
    v34 = sub_21700AD34();
  }

  v94 = v34;
  v93 = swift_getKeyPath();
  v35 = OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_artwork;
  swift_beginAccess();
  sub_216683A80(a2 + v35, v15, &qword_27CAB6D60, &qword_217014E40);
  v36 = type metadata accessor for Artwork(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v36);
  v100 = a2;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v15, &qword_27CAB6D60);
    v38 = sub_21700C4B4();
    v39 = v18;
    v40 = 1;
  }

  else
  {
    v41 = v8;
    v42 = sub_21700C4B4();
    (*(*(v42 - 8) + 16))(v18, v15, v42);
    sub_216F20984(v15, type metadata accessor for Artwork);
    v39 = v18;
    v40 = 0;
    v38 = v42;
    v8 = v41;
    a2 = v100;
  }

  __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
  sub_217007434();
  sub_216683A80(a2 + v35, v12, &qword_27CAB6D60, &qword_217014E40);
  if (__swift_getEnumTagSinglePayload(v12, 1, v36) == 1)
  {
    sub_216699778(v12, &qword_27CAB6D60);
    v43 = v87;
    __swift_storeEnumTagSinglePayload(v87, 1, 1, v8);
    v44 = v88;
    sub_21700C404();
    v45 = __swift_getEnumTagSinglePayload(v43, 1, v8);
    v46 = v89;
    if (v45 != 1)
    {
      sub_216699778(v43, &qword_27CAB7530);
    }
  }

  else
  {
    v46 = v89;
    v47 = v87;
    (*(v89 + 16))(v87, &v12[*(v36 + 20)], v8);
    sub_216F20984(v12, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v8);
    v44 = v88;
    (*(v46 + 32))(v88, v47, v8);
  }

  v48 = v84;
  sub_2170073E4();
  (*(v46 + 8))(v44, v8);
  v49 = *(v85 + 8);
  v50 = v21;
  v51 = v86;
  v49(v50, v86);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  v52 = v90;
  sub_2170073F4();

  v49(v48, v51);
  v53 = &v30[*(v83 + 36)];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  v55 = &v53[*(v54 + 36)];
  v56 = *(sub_217008B44() + 20);
  v57 = *MEMORY[0x277CE0118];
  v58 = sub_217009294();
  (*(*(v58 - 8) + 104))(&v55[v56], v57, v58);
  __asm { FMOV            V0.2D, #7.0 }

  *v55 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v64 = qword_280E73AA0;
  v65 = byte_280E73AA8;
  v66 = qword_280E73AB0;
  v67 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930, &qword_21701A680) + 36)];
  sub_216F20928(v55, v67, MEMORY[0x277CDFC08]);
  *(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
  (*(v91 + 32))(v30, v52, v92);
  *v53 = v64;
  v53[8] = v65;
  *(v53 + 2) = v66;
  v68 = &v53[*(v54 + 40)];
  *v68 = swift_getKeyPath();
  v68[8] = 0;
  v69 = v30;
  v70 = v101;
  sub_2167C5834(v69, v101, &qword_27CAC3770, &unk_2170485A0);

  v92 = sub_2170093C4();
  v106 = 1;
  sub_216F1E7A8(v100, v110);
  memcpy(v107, v110, sizeof(v107));
  memcpy(v108, v110, sizeof(v108));
  sub_216683A80(v107, v109, &qword_27CACDA38, &qword_217072270);
  sub_216699778(v108, &qword_27CACDA38);
  memcpy(&v105[7], v107, 0xF8uLL);
  v71 = v106;
  LODWORD(v100) = v106;
  v72 = v95;
  sub_216683A80(v70, v95, &qword_27CAC3770, &unk_2170485A0);
  v73 = v99;
  v75 = KeyPath;
  v74 = v103;
  *v99 = v104;
  v73[1] = v75;
  v77 = v93;
  v76 = v94;
  v73[2] = v74;
  v73[3] = v77;
  v73[4] = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACDA40, &qword_217072278);
  sub_216683A80(v72, v73 + *(v78 + 48), &qword_27CAC3770, &unk_2170485A0);
  v79 = *(v78 + 64);
  v80 = v92;
  v109[0] = v92;
  v109[1] = 0;
  LOBYTE(v109[2]) = v71;
  memcpy(&v109[2] + 1, v105, 0xFFuLL);
  memcpy(v73 + v79, v109, 0x110uLL);

  sub_216683A80(v109, v110, &qword_27CACDA48, &qword_217072280);
  sub_216699778(v101, &qword_27CAC3770);
  v110[0] = v80;
  v110[1] = 0;
  LOBYTE(v110[2]) = v100;
  memcpy(&v110[2] + 1, v105, 0xFFuLL);
  sub_216699778(v110, &qword_27CACDA48);
  sub_216699778(v72, &qword_27CAC3770);
}

uint64_t sub_216F1E7A8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_title + 8))
  {
    v19 = *(a1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_title);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v15 = *(a1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_title + 8);
  sub_21700DF14();
  v17 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v16 = sub_21700AD14();
  v4 = swift_getKeyPath();
  sub_21700B3C4();
  sub_2170083C4();
  v13 = swift_getKeyPath();
  v40 = 0;
  v5 = *(a1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_subtitle + 8);
  if (v5)
  {
    v11 = *(a1 + OBJC_IVAR____TtCC7MusicUI20SocialProfileUpdater18PlaylistDescriptor_subtitle);
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  sub_21700DF14();
  v6 = sub_217009E94();
  v7 = swift_getKeyPath();
  v8 = sub_21700AD34();
  v9 = swift_getKeyPath();
  sub_21700B3C4();
  sub_2170083C4();
  *__src = v19;
  *&__src[8] = v15;
  *&__src[16] = 0;
  *&__src[24] = v18;
  *&__src[32] = KeyPath;
  *&__src[40] = v17;
  *&__src[48] = v4;
  *&__src[56] = v16;
  *&__src[64] = v37;
  *&__src[80] = v38;
  *&__src[96] = v39;
  *&__src[112] = v13;
  *&__src[120] = 2;
  __src[128] = 0;
  memcpy(__dst, __src, 0x81uLL);
  *&v25[0] = v11;
  *(&v25[0] + 1) = v5;
  *&v25[1] = 0;
  *(&v25[1] + 1) = v12;
  *&v25[2] = v7;
  *(&v25[2] + 1) = v6;
  *&v25[3] = v9;
  *(&v25[3] + 1) = v8;
  v25[4] = v21;
  v25[5] = v22;
  v25[6] = v23;
  memcpy(&__dst[136], v25, 0x70uLL);
  memcpy(a2, __dst, 0xF8uLL);
  v26[0] = v11;
  v26[1] = v5;
  v26[2] = 0;
  v26[3] = v12;
  v26[4] = v7;
  v26[5] = v6;
  v26[6] = v9;
  v26[7] = v8;
  v27 = v21;
  v28 = v22;
  v29 = v23;
  sub_216683A80(__src, v30, &qword_27CACDA50, &unk_217072288);
  sub_216683A80(v25, v30, &qword_27CAC17D0, &qword_21703F210);
  sub_216699778(v26, &qword_27CAC17D0);
  v30[0] = v19;
  v30[1] = v15;
  v30[2] = 0;
  v30[3] = v18;
  v30[4] = KeyPath;
  v30[5] = v17;
  v30[6] = v4;
  v30[7] = v16;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v13;
  v35 = 2;
  v36 = 0;
  return sub_216699778(v30, &qword_27CACDA50);
}

uint64_t sub_216F1EAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {

    sub_216AFCC2C(a2);
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_216F208E0(&qword_280E3B500, type metadata accessor for SocialProfileUpdater, &unk_217043C4C);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216F1EBD4(uint64_t a1)
{
  sub_216854FAC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2167D1B08(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = type metadata accessor for ObjectGraph(319);
      if (v6 <= 0x3F)
      {
        sub_216F1ECA4(319);
        v2 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_216F1ECA4(uint64_t a1)
{
  if (!qword_280E2FD88[0])
  {
    type metadata accessor for SocialProfileEditorHeaderLockup(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, qword_280E2FD88);
    }
  }
}

unint64_t sub_216F1ED20()
{
  result = qword_27CACD578;
  if (!qword_27CACD578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD570, &qword_217071868);
    sub_216F1EDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD578);
  }

  return result;
}

unint64_t sub_216F1EDAC()
{
  result = qword_27CACD580;
  if (!qword_27CACD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD588, &qword_217071870);
    sub_21669E098(&qword_27CACD590, &unk_27CACD598, &unk_217071878, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD580);
  }

  return result;
}

unint64_t sub_216F1EE64()
{
  result = qword_27CACD5D8;
  if (!qword_27CACD5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD5D0, &unk_2170718A0);
    sub_216F208E0(&qword_27CAC1700, type metadata accessor for SystemActionButton, &unk_21702CBA0);
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD5D8);
  }

  return result;
}

unint64_t sub_216F1EF54()
{
  result = qword_27CACD5E8;
  if (!qword_27CACD5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD5E0, &qword_2170718B0);
    sub_21669E098(&qword_27CACD5F0, &unk_27CACD5F8, &unk_2170718B8, MEMORY[0x277CDF028]);
    sub_21669E098(&qword_280E2A6E0, &qword_27CABF2D0, &unk_217032D90, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD5E8);
  }

  return result;
}

uint64_t sub_216F1F038(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216F1F0B4()
{
  result = qword_27CACD608;
  if (!qword_27CACD608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD600, &qword_2170718C8);
    sub_216F1F16C();
    sub_21669E098(&qword_27CACD630, &qword_27CACD638, &qword_2170718E0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD608);
  }

  return result;
}

unint64_t sub_216F1F16C()
{
  result = qword_27CACD610;
  if (!qword_27CACD610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD618, &qword_2170718D0);
    sub_216F1F1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD610);
  }

  return result;
}

unint64_t sub_216F1F1F8()
{
  result = qword_27CACD620;
  if (!qword_27CACD620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD628, &qword_2170718D8);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD620);
  }

  return result;
}

unint64_t sub_216F1F2F8()
{
  result = qword_27CACD678;
  if (!qword_27CACD678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD660, &qword_217071A90);
    sub_216F1F3B0();
    sub_21669E098(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD678);
  }

  return result;
}

unint64_t sub_216F1F3B0()
{
  result = qword_27CACD680;
  if (!qword_27CACD680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD688, &qword_217071AA8);
    sub_216F1F43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD680);
  }

  return result;
}

unint64_t sub_216F1F43C()
{
  result = qword_27CACD690;
  if (!qword_27CACD690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD698, &qword_217071AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD6A0, &qword_217071AB8);
    sub_216F1F530();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD690);
  }

  return result;
}

unint64_t sub_216F1F530()
{
  result = qword_27CACD6A8;
  if (!qword_27CACD6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD6A0, &qword_217071AB8);
    sub_216C83938();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD6A8);
  }

  return result;
}

unint64_t sub_216F1F5E8()
{
  result = qword_27CACD6B0;
  if (!qword_27CACD6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD668, &qword_217071A98);
    sub_216F1F2F8();
    sub_21669E098(&qword_27CAB7BF8, &qword_27CAB7C00, &unk_217018260, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD6B0);
  }

  return result;
}

unint64_t sub_216F1F6A0()
{
  result = qword_27CACD6B8;
  if (!qword_27CACD6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD670, &qword_217071AA0);
    sub_216F1F2F8();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD6B8);
  }

  return result;
}

unint64_t sub_216F1F760()
{
  result = qword_27CACD6D8;
  if (!qword_27CACD6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD648, &qword_2170719C0);
    sub_216F1F818();
    sub_21669E098(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD6D8);
  }

  return result;
}

unint64_t sub_216F1F818()
{
  result = qword_27CACD6E0;
  if (!qword_27CACD6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD6D0, &qword_217071AE0);
    sub_216F1F8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD6E0);
  }

  return result;
}

unint64_t sub_216F1F8A4()
{
  result = qword_27CACD6E8;
  if (!qword_27CACD6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD6C8, &qword_217071AD8);
    sub_216F1F930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD6E8);
  }

  return result;
}

unint64_t sub_216F1F930()
{
  result = qword_27CACD6F0;
  if (!qword_27CACD6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD6C0, &qword_217071AD0);
    sub_21669E098(&qword_27CACD6F8, &unk_27CACD700, &unk_217071B18, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD6F0);
  }

  return result;
}

uint64_t sub_216F1FA00(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SocialProfileEditorPageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_65Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_216F1FC20()
{
  result = qword_27CACD858;
  if (!qword_27CACD858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD850, &qword_217071F08);
    sub_216F1FCD8();
    sub_21669E098(&qword_27CACD8A8, &unk_27CACD8B0, &unk_217071F30, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD858);
  }

  return result;
}

unint64_t sub_216F1FCD8()
{
  result = qword_27CACD860;
  if (!qword_27CACD860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD868, &qword_217071F10);
    sub_216F1FD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD860);
  }

  return result;
}

unint64_t sub_216F1FD5C()
{
  result = qword_27CACD870;
  if (!qword_27CACD870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD878, &qword_217071F18);
    sub_216F1FE14();
    sub_21669E098(&qword_280E2A8D8, &qword_27CAB8860, &unk_21701A550, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD870);
  }

  return result;
}

unint64_t sub_216F1FE14()
{
  result = qword_27CACD880;
  if (!qword_27CACD880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD888, &qword_217071F20);
    sub_216F1FEA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD880);
  }

  return result;
}

unint64_t sub_216F1FEA0()
{
  result = qword_27CACD890;
  if (!qword_27CACD890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD898, &qword_217071F28);
    sub_216F1FF58();
    sub_21669E098(&qword_27CAB7C98, &qword_27CAB7CA0, &qword_21704B150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD890);
  }

  return result;
}

unint64_t sub_216F1FF58()
{
  result = qword_27CACD8A0;
  if (!qword_27CACD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD8A0);
  }

  return result;
}

unint64_t sub_216F20008()
{
  result = qword_27CACD8E8;
  if (!qword_27CACD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD8E8);
  }

  return result;
}

uint64_t objectdestroy_121Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216F200D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216F20110(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_216F20150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216F201E4()
{
  result = qword_27CACD9A8;
  if (!qword_27CACD9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CACD900, &qword_217071FA0);
    sub_216F2029C();
    sub_21669E098(&qword_27CACD9B8, &unk_27CACD9C0, &unk_2170720E8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD9A8);
  }

  return result;
}

unint64_t sub_216F2029C()
{
  result = qword_27CACD9B0;
  if (!qword_27CACD9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD8F8, &qword_217071F98);
    sub_216F208E0(&qword_27CAB9428, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD9B0);
  }

  return result;
}

unint64_t sub_216F203E0()
{
  result = qword_27CACD9D8;
  if (!qword_27CACD9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD9C8, &qword_2170721E0);
    sub_21669E098(&qword_27CACD9E0, &unk_27CACD9E8, &unk_2170721F0, MEMORY[0x277CE1138]);
    sub_21669E098(&qword_280E2A8E8, &qword_27CAC3CE0, &qword_2170623C0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD9D8);
  }

  return result;
}

unint64_t sub_216F204C4()
{
  result = qword_27CACDA10;
  if (!qword_27CACDA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDA00, &qword_217072210);
    sub_21669E098(&qword_27CACDA18, &unk_27CACDA20, &unk_217072220, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACDA10);
  }

  return result;
}

unint64_t sub_216F20574()
{
  result = qword_27CACDA28;
  if (!qword_27CACDA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD9F0, &qword_217072200);
    sub_2167E947C();
    sub_216F208E0(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACDA28);
  }

  return result;
}

uint64_t objectdestroy_92Tm()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  OUTLINED_FUNCTION_19_5();

  return swift_deallocObject();
}

unint64_t sub_216F2066C()
{
  result = qword_27CACDA70;
  if (!qword_27CACDA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDA58, &qword_217072298);
    sub_216F20724();
    sub_21669E098(&qword_280E2A8E8, &qword_27CAC3CE0, &qword_2170623C0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACDA70);
  }

  return result;
}

unint64_t sub_216F20724()
{
  result = qword_27CACDA78;
  if (!qword_27CACDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDA68, &qword_2170722A8);
    sub_21669E098(&qword_27CACDA80, &unk_27CACDA88, &unk_2170722B0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACDA78);
  }

  return result;
}

unint64_t sub_216F20824()
{
  result = qword_27CACDAD0;
  if (!qword_27CACDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACDAC8, &qword_2170722E0);
    sub_216F208E0(&unk_27CABDA50, type metadata accessor for ImagePicker, &unk_21702B514);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACDAD0);
  }

  return result;
}

uint64_t sub_216F208E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216F20928(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216F20984(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_158Tm()
{

  return swift_deallocObject();
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA5GroupVyALyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAA5ColorVSgGG_AHyAHyAHy010_MusicKit_aB007ArtworkT0V018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVA1_tcAaBRzlFQOy_05MusicB0018ArtworkPlaceholderC033_04B67128FBEAE856B7A16D69C2A36DCALLVQo_AA11_ClipEffectVyAA16RoundedRectangleVGGAA09_GeometryS6EffectVGA16_011InnerStrokecX033_07BF97FC6ACFAFCAA9CBB7ED81BC8B8FLLVyA24_GGAA6VStackVyALyAHyAHyAHyAHyAA4TextVSgAZGA3_GAA12_FrameLayoutVGAVySiSgGG_A44_tGGtGG_Qo__AA6SpacerVAHyAHyA_AA0p10AttachmentX0VGA56_GtGGAA01_j5ShapeX0VyAA9RectangleVGG_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_100(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216F20B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21700D284();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_216F20BC8(uint64_t a1, uint64_t a2)
{
  v3[79] = v2;
  v3[78] = a2;
  v3[77] = a1;
  v4 = type metadata accessor for JSReplayPage(0);
  OUTLINED_FUNCTION_36(v4);
  v3[80] = OUTLINED_FUNCTION_80();
  v5 = type metadata accessor for OpaqueReplayPageIntent(0);
  v3[81] = v5;
  OUTLINED_FUNCTION_36(v5);
  v3[82] = OUTLINED_FUNCTION_80();
  v6 = type metadata accessor for MappedReplayYearModel(0);
  OUTLINED_FUNCTION_36(v6);
  v3[83] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088, &qword_21702DA60);
  OUTLINED_FUNCTION_36(v7);
  v3[84] = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE090, &unk_217072520);
  OUTLINED_FUNCTION_36(v8);
  v3[85] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[86] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v3[87] = v10;
  v3[88] = v9;

  return MEMORY[0x2822009F8](sub_216F20D28, v10, v9);
}

uint64_t sub_216F20D28()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 712) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 624);
    v3 = (v2 + *(type metadata accessor for SelectReplayPeriodAction(0) + 20));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      v6 = *(v0 + 672);
      *(v0 + 720) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98, &unk_21702DAD0);
      MEMORY[0x21CE9BEE0]();
      v7 = swift_task_alloc();
      v8 = type metadata accessor for ReplayModel(0);
      *v7 = v8;
      v9 = sub_216F21F14(&qword_27CAB6FA0, type metadata accessor for ReplayModel, &unk_217015560);
      v7[1] = v9;
      swift_getKeyPath();

      v10 = swift_task_alloc();
      *v10 = v8;
      v10[1] = v9;
      swift_getKeyPath();

      sub_217007DE4();

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0, &qword_21702DAC0);
      if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
      {
        v12 = *(v0 + 672);
        v13 = &qword_27CABE088;
        v14 = &qword_21702DA60;
      }

      else
      {
        v19 = *(v0 + 680);
        v20 = *(v0 + 672);
        sub_21696EC00();
        sub_216697664(v20, &qword_27CABE0A0, &qword_21702DAC0);
        v21 = type metadata accessor for MappedReplayModel(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v21);
        v23 = *(v0 + 680);
        if (EnumTagSinglePayload == 1)
        {
          v13 = &qword_27CABE090;
          v14 = &unk_217072520;
          v12 = *(v0 + 680);
        }

        else
        {
          v24 = *(v0 + 664);
          sub_216F21B70(v23 + *(v21 + 20), v24, type metadata accessor for MappedReplayYearModel);
          sub_216F21B18(v23, type metadata accessor for MappedReplayModel);
          v25 = *v24;
          v26 = v24[1];
          v27 = v24[2];
          v28 = v24[3];
          sub_21700DF14();
          sub_21700DF14();
          sub_21700DF14();
          sub_216F21B18(v24, type metadata accessor for MappedReplayYearModel);
          sub_21700DF14();
          sub_216BF47DC(v25, v26, v27, v28, v5, v4, (v0 + 352));

          if (*(v0 + 360))
          {
            memcpy((v0 + 240), (v0 + 352), 0x70uLL);
            sub_216970008(v0 + 240, v0 + 464);
            sub_21700B0D4();
            sub_216970064(v0 + 240);
LABEL_16:
            v29 = *(v0 + 656);
            v30 = *(v0 + 648);
            sub_216FFA868();
            v31 = type metadata accessor for AnyReplayPageRequest(0);
            __swift_storeEnumTagSinglePayload(v29, 0, 1, v31);
            *(v0 + 600) = v30;
            *(v0 + 608) = sub_216F21F14(&qword_27CACDB30, type metadata accessor for OpaqueReplayPageIntent, &unk_2170318D4);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 576));
            sub_216F21B70(v29, boxed_opaque_existential_1, type metadata accessor for OpaqueReplayPageIntent);
            v33 = swift_task_alloc();
            *(v0 + 728) = v33;
            *v33 = v0;
            v33[1] = sub_216F21274;

            return sub_216D0F92C();
          }

          v13 = &qword_27CABA698;
          v14 = &qword_217020E70;
          v12 = v0 + 352;
        }
      }

      sub_216697664(v12, v13, v14);
      goto LABEL_16;
    }

    sub_216F21754();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }

  else
  {

    sub_216F21754();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_3_181();

  OUTLINED_FUNCTION_3();

  return v17();
}

uint64_t sub_216F21274()
{
  v2 = *v1;
  (*v1)[92] = v0;

  if (v0)
  {
    sub_216697664((v2 + 72), &qword_27CAC5B38, &unk_217072590);
    v3 = v2[88];
    v4 = v2[87];
    v5 = sub_216F214F4;
  }

  else
  {
    sub_216F21B18(v2[80], type metadata accessor for JSReplayPage);
    sub_216697664((v2 + 72), &qword_27CAC5B38, &unk_217072590);
    v3 = v2[88];
    v4 = v2[87];
    v5 = sub_216F213DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216F213DC()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 616);

  OUTLINED_FUNCTION_1_226();
  sub_216F21B18(v1, v3);
  sub_216970064(v0 + 16);
  v4 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 104))(v2, v4);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216F214F4()
{
  v1 = *(v0 + 656);

  sub_216970008(v0 + 16, v0 + 128);
  sub_21700B0D4();
  swift_willThrow();

  OUTLINED_FUNCTION_1_226();
  sub_216F21B18(v1, v2);
  sub_216970064(v0 + 16);
  OUTLINED_FUNCTION_3_181();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216F215D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216F21B70(a1, a3, type metadata accessor for JSReplayPage);
  *(a3 + *(type metadata accessor for ReplaceReplayPageUpdate(0) + 20)) = a2;
}

uint64_t sub_216F21638(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2167AF644;

  return sub_216F20BC8(a1, a2);
}

unint64_t sub_216F216E0(uint64_t a1)
{
  result = sub_216881128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216F21754()
{
  result = qword_27CACDB28;
  if (!qword_27CACDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACDB28);
  }

  return result;
}

uint64_t sub_216F217A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for ReplayModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  sub_216F219E0(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216697664(v8, &qword_27CABE0B8, &unk_21705F810);
    sub_2167EB34C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_216F21A50(v8, v15);
    sub_216F21A50(v15, v12);
    v17 = *(v9 + 20);
    v18 = type metadata accessor for ReplayYearModel(0);
    sub_216F21AB4(v2, &v12[v17 + *(v18 + 20)]);
    sub_216F21B70(v12, a2, type metadata accessor for ReplayModel);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0, &unk_21702DAE0);
    *(a2 + v19[9]) = 0;
    *(a2 + v19[10]) = 0;
    *(a2 + v19[11]) = 0;
    *(a2 + v19[12]) = 0;
    return sub_216F21B18(v12, type metadata accessor for ReplayModel);
  }
}

uint64_t sub_216F219E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F21A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F21AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSReplayPage(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216F21B18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216F21B70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for ReplaceReplayPageUpdate(uint64_t a1)
{
  result = qword_27CACDB38;
  if (!qword_27CACDB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216F21C44(uint64_t a1)
{
  type metadata accessor for JSReplayPage(319);
  if (v1 <= 0x3F)
  {
    sub_2169702E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SelectReplayPeriodImplementation.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216F21DA8()
{
  result = qword_27CACDB48;
  if (!qword_27CACDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACDB48);
  }

  return result;
}

uint64_t sub_216F21E64(uint64_t a1)
{
  result = sub_216F21F14(&qword_27CACDB50, type metadata accessor for ReplaceReplayPageUpdate, &unk_217072628);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F21EBC(uint64_t a1)
{
  result = sub_216F21F14(&qword_27CACDB58, type metadata accessor for ReplaceReplayPageUpdate, &unk_217072650);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216F21F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_216F21F80()
{
  v0 = type metadata accessor for AttributedDateRange(0);
  result = OUTLINED_FUNCTION_11_94(*(v0 + 24));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t sub_216F21FF4(double a1)
{
  result = type metadata accessor for AttributedDateRange(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_216F2202C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for AttributedDateRange(0) + 24);
  *(a1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_11_94(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *a1 = v4;
  return OUTLINED_FUNCTION_53_22();
}

double sub_216F220D8()
{
  v0 = type metadata accessor for AttributedDateRange(0);
  result = OUTLINED_FUNCTION_11_94(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t sub_216F22100(double a1)
{
  result = type metadata accessor for AttributedDateRange(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_216F22138(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for AttributedDateRange(0) + 28);
  *(a1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_11_94(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *a1 = v4;
  return OUTLINED_FUNCTION_53_22();
}

uint64_t sub_216F22190(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_216F221FC()
{
  v0 = type metadata accessor for AttributedDateRange(0);
  OUTLINED_FUNCTION_35_0(*(v0 + 32));
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F22248()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_47_37() + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t (*sub_216F22284())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_30_55(v1) + 32);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_35_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;
  sub_21700DF14();
  return sub_216F2230C;
}

uint64_t sub_216F22334()
{
  v1 = (v0 + *(type metadata accessor for AttributedDateRange(0) + 32));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_216F2236C()
{
  v0 = type metadata accessor for AttributedDateRange(0);
  OUTLINED_FUNCTION_35_0(*(v0 + 36));
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F223B8()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_47_37() + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t (*sub_216F223F4())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_30_55(v1) + 36);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_35_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;
  sub_21700DF14();
  return sub_216F27AA8;
}

uint64_t sub_216F224A0()
{
  v1 = (v0 + *(type metadata accessor for AttributedDateRange(0) + 36));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_216F224D8()
{
  type metadata accessor for AttributedDateRange(0);
  OUTLINED_FUNCTION_12_1();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216F22544(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 12) = *(type metadata accessor for AttributedDateRange(0) + 40);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v2);
  return OUTLINED_FUNCTION_53_22();
}

uint64_t sub_216F225F0()
{
  type metadata accessor for AttributedDateRange(0);
  OUTLINED_FUNCTION_12_1();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216F2265C(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 12) = *(type metadata accessor for AttributedDateRange(0) + 44);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_42_1(v2);
  return OUTLINED_FUNCTION_53_22();
}

uint64_t sub_216F226B0(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_216F22728()
{
  v0 = type metadata accessor for AttributedDateRange(0);
  OUTLINED_FUNCTION_35_0(*(v0 + 48));
  sub_21700DF14();
  return OUTLINED_FUNCTION_8();
}

uint64_t sub_216F22774()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_47_37() + 48));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t (*sub_216F227B0())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_30_55(v1) + 48);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_35_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;
  sub_21700DF14();
  return sub_216F27AA8;
}

void sub_216F22838(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);
    sub_21700DF14();

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

uint64_t sub_216F228E4()
{
  v1 = (v0 + *(type metadata accessor for AttributedDateRange(0) + 48));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_216F2291C(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_216F22948()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = *(type metadata accessor for AttributedDateRange(v2) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t sub_216F229B8(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributedDateRange(0) + 20);
  sub_217007884();
  OUTLINED_FUNCTION_34();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void sub_216F22AA4(uint64_t a1@<X8>)
{
  sub_216F22A78();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_216F22AE8(uint64_t a1@<X8>)
{
  sub_216F22A78();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_216F22B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F25598();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_216F22BA0()
{
  nullsub_1();
  v1 = v0;
  nullsub_1();
  return v1 == v2;
}

void sub_216F22BEC(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for AttributedDateRange(0);
  sub_217007874();
  OUTLINED_FUNCTION_39_32(a1 + v2[6]);
  v3 = a1 + v2[7];
  *v3 = 0;
  v3[8] = v4;
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[9]);
  *v6 = 0;
  v6[1] = 0;
  OUTLINED_FUNCTION_40_1(a1 + v2[10]);
  v7 = a1 + v2[11];
  *v7 = 0;
  *(v7 + 4) = v8;
  v9 = (a1 + v2[12]);
  *v9 = 0;
  v9[1] = 0;
}

uint64_t sub_216F22CB8()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22B00);
  __swift_project_value_buffer(v0, qword_27CB22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21705BDD0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "start_date";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_217007B14();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "end_date";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "date_format";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "language_tag";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "date_style";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "time_style";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "format_string";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "excluded_patterns";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  return sub_217007B24();
}

uint64_t sub_216F2304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    OUTLINED_FUNCTION_109();
    result = sub_217007914();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_7_2();
        sub_216F23140(v6, v7, v8, v9);
        break;
      case 2:
        v22 = OUTLINED_FUNCTION_7_2();
        sub_216F231A4(v22, v23, v24, v25);
        break;
      case 3:
        v14 = OUTLINED_FUNCTION_7_2();
        sub_216F23208(v14, v15, v16, v17);
        break;
      case 4:
        v18 = OUTLINED_FUNCTION_7_2();
        sub_216F2326C(v18, v19, v20, v21);
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_7_2();
        sub_216F232D0(v10, v11, v12, v13);
        break;
      case 6:
        v26 = OUTLINED_FUNCTION_7_2();
        sub_216F23344(v26, v27, v28, v29);
        break;
      case 7:
        v30 = OUTLINED_FUNCTION_7_2();
        sub_216F233B8(v30, v31, v32, v33);
        break;
      case 8:
        sub_217007984();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_216F232D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttributedDateRange(0);
  sub_216F25598();
  return sub_217007954();
}

uint64_t sub_216F23344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttributedDateRange(0);
  sub_216F25598();
  return sub_217007954();
}

uint64_t sub_216F2341C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_615();
  result = sub_216F23524(v5, v6, v7, v8);
  if (!v4)
  {
    v10 = OUTLINED_FUNCTION_4_0();
    sub_216F2359C(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_4_0();
    sub_216F23614(v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_4_0();
    sub_216F2368C(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_4_0();
    sub_216F23704(v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_4_0();
    sub_216F237A8(v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_4_0();
    sub_216F2384C(v30, v31, v32, v33);
    if (*(*v3 + 16))
    {
      OUTLINED_FUNCTION_615();
      sub_217007AB4();
    }

    type metadata accessor for AttributedDateRange(0);
    return sub_217007864();
  }

  return result;
}

uint64_t sub_216F23524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AttributedDateRange(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_217007AC4();
  }

  return result;
}

uint64_t sub_216F2359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AttributedDateRange(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_217007AC4();
  }

  return result;
}

uint64_t sub_216F23614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AttributedDateRange(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F2368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AttributedDateRange(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F23704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AttributedDateRange(0);
  if ((*(a1 + *(result + 40) + 9) & 1) == 0)
  {
    sub_216F25598();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F237A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AttributedDateRange(0);
  if ((*(a1 + *(result + 44) + 9) & 1) == 0)
  {
    sub_216F25598();
    return sub_217007A84();
  }

  return result;
}

uint64_t sub_216F2384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AttributedDateRange(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_217007AD4();
  }

  return result;
}

uint64_t sub_216F238C4()
{
  v0 = OUTLINED_FUNCTION_102();
  type metadata accessor for AttributedDateRange(v0);
  OUTLINED_FUNCTION_55_0();
  if (v2)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_25();
    if (v3)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_55_0();
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_25();
    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_24();
  if (v9)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v8);
    v12 = v12 && v10 == v11;
    if (!v12 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v14);
    v18 = v12 && v16 == v17;
    if (!v18 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  OUTLINED_FUNCTION_56();
  if (v21)
  {
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v20 & 1) != 0 || !OUTLINED_FUNCTION_41_37(v19))
  {
    return 0;
  }

  OUTLINED_FUNCTION_56();
  if (v24)
  {
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v23 & 1) != 0 || !OUTLINED_FUNCTION_41_37(v22))
  {
    return 0;
  }

  OUTLINED_FUNCTION_24();
  if (v27)
  {
    if (!v25)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5_78(v26);
    v30 = v12 && v28 == v29;
    if (!v30 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  sub_216E20CEC();
  if (v31)
  {
    sub_217007884();
    OUTLINED_FUNCTION_0_263();
    sub_216F25550(v32, v33, MEMORY[0x277D216D0]);
    return sub_21700E494() & 1;
  }

  return 0;
}

uint64_t sub_216F23A64()
{
  sub_21700F8F4();
  type metadata accessor for AttributedDateRange(0);
  sub_216F25550(&qword_27CACE020, type metadata accessor for AttributedDateRange, &unk_217072940);
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F23AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_217007884();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_216F23B64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_217007884();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_216F23C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_216F25550(&qword_27CACE078, type metadata accessor for AttributedDateRange, &unk_2170728B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_216F23C9C(uint64_t a1)
{
  v2 = sub_216F25550(&qword_27CAC3DD0, type metadata accessor for AttributedDateRange, &unk_217072840);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_216F23D0C(uint64_t a1, uint64_t a2)
{
  sub_216F25550(&qword_27CAC3DD0, type metadata accessor for AttributedDateRange, &unk_217072840);

  return sub_217007A34();
}

uint64_t sub_216F23D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700F8F4();
  sub_21700E434();
  return sub_21700F944();
}

uint64_t sub_216F23DE0()
{
  v0 = sub_217007B44();
  __swift_allocate_value_buffer(v0, qword_27CB22B18);
  __swift_project_value_buffer(v0, qword_27CB22B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0A8, &unk_217072A30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACE0B0, &unk_217074140) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217015220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "STYLE_UNSPECIFIED";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_217007B14();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STYLE_NONE";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "STYLE_SHORT";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "STYLE_MEDIUM";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "STYLE_LONG";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "STYLE_FULL";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return sub_217007B24();
}

uint64_t sub_216F240C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_217007B44();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_216F2413C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_217007B44();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_216F241EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  sub_217007B44();
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();

  return v4(v3);
}

uint64_t sub_216F24254()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for PosterLockup.Kind.OneOf_Kind(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F242A4()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Top(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F242DC()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24314()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24394()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for HorizontalLockupCollection.OneOf_Presentation(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F243CC()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for Page.Header(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24404()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for PageMetricsFields(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F2443C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ReplayYearGradient(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F244E0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for SongTrackLockupCollection.OneOf_Presentation(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F2453C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ContentDescriptor(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24574()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F245D0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for VideoArtwork.Dictionary(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24624()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyAction(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F2465C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ReplayYearPeriodList(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24694()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ReplayPage(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F246D0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyAction.OneOf_BaseAction(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24708()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for Artwork.ArtworkDictionary(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24760()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for Section.Content.OneOf_InnerContent(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24798()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for Section.Header.OneOf_InnerHeader(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F247F4()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AttributedLinkList(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F2482C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for Link(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F248AC()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for SquareLockupCollection.OneOf_Presentation(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F248E4()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayRequestBody.OneOf_InnerBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F2491C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayRequestBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24954()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayYearRequestBody.OneOf_InnerBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F2498C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayYearRequestBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F249C4()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayPageRequestBody.OneOf_InnerBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F249FC()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayPageRequestBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24AE8()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for SuperHeroLockup(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24B20()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ContentDescriptor.ContentKind.OneOf_Kind(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24B58()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ContentDescriptor.ContentKind(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24B90()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ContentIdentifiers(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24BC8()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ReplayYearList(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24C00()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for ReplayYear(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24C38()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyPageRequestBody.OneOf_InnerBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24C70()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyPageRequestBody(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24CA8()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for BaseURLRequest(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24CE0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayYearRequest(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24D18()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AnyReplayPageRequest(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_216F24D74(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_216F24DC0()
{
  v0 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for AccessoryButton.OneOf_BaseAccessoryButton(v0);
  v1 = OUTLINED_FUNCTION_21();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_216F24EA0()
{
  OUTLINED_FUNCTION_49();
  v30 = v0;
  v28 = v1;
  v3 = v2;
  v5 = v4;
  v29 = v6(0);
  OUTLINED_FUNCTION_6_131();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_113();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = *(v5 + 16);
  if (v14 == *(v3 + 16) && v14 && v5 != v3)
  {
    OUTLINED_FUNCTION_8_119();
    v16 = v5 + v15;
    v17 = v3 + v15;
    v19 = *(v18 + 72);
    while (1)
    {
      sub_216F27A34();
      sub_216F27A34();
      v20 = *(v29 + 20);
      v21 = *&v13[v20];
      v22 = *(v10 + v20);
      if (v21 != v22)
      {

        v23 = v28(v21, v22);

        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      sub_217007884();
      OUTLINED_FUNCTION_0_263();
      sub_216F25550(&qword_27CACE018, v24, MEMORY[0x277D216D0]);
      if ((sub_21700E494() & 1) == 0)
      {
        break;
      }

      v25 = v30;
      sub_216F279DC(v10, v30);
      sub_216F279DC(v13, v25);
      v17 += v19;
      v16 += v19;
      if (!--v14)
      {
        goto LABEL_11;
      }
    }

    v26 = v30;
    sub_216F279DC(v10, v30);
    sub_216F279DC(v13, v26);
  }

LABEL_11:
  OUTLINED_FUNCTION_26();
}
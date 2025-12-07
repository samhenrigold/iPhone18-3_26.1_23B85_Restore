unint64_t sub_26981CABC()
{
  result = qword_280325BD0;
  if (!qword_280325BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BD0);
  }

  return result;
}

unint64_t sub_26981CB14()
{
  result = qword_280325BD8;
  if (!qword_280325BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BD8);
  }

  return result;
}

unint64_t sub_26981CB6C()
{
  result = qword_280325BE0;
  if (!qword_280325BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BE0);
  }

  return result;
}

unint64_t sub_26981CBC4()
{
  result = qword_280325BE8;
  if (!qword_280325BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BE8);
  }

  return result;
}

unint64_t sub_26981CC1C()
{
  result = qword_280325BF0;
  if (!qword_280325BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BF0);
  }

  return result;
}

unint64_t sub_26981CC74()
{
  result = qword_280325BF8;
  if (!qword_280325BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325BF8);
  }

  return result;
}

unint64_t sub_26981CCCC()
{
  result = qword_280325C00;
  if (!qword_280325C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C00);
  }

  return result;
}

unint64_t sub_26981CD24()
{
  result = qword_280325C08;
  if (!qword_280325C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C08);
  }

  return result;
}

unint64_t sub_26981CD7C()
{
  result = qword_280325C10;
  if (!qword_280325C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C10);
  }

  return result;
}

unint64_t sub_26981CDD0()
{
  result = qword_280325C18;
  if (!qword_280325C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C18);
  }

  return result;
}

unint64_t sub_26981CE24()
{
  result = qword_280325C20;
  if (!qword_280325C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_24(uint64_t a1)
{
  *(v1 - 96) = a1;
  *(v1 - 66) = 1;
  return v1 - 66;
}

uint64_t OUTLINED_FUNCTION_19_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2698556E4();
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return swift_getWitnessTable();
}

uint64_t sub_26981CF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_26973CEF8(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_89_1(v3);
  }

  else
  {
    return 0;
  }
}

double sub_26981CFD4()
{
  OUTLINED_FUNCTION_163_0();
  if (v4 && (v5 = v3, v6 = sub_26973CEF8(v1, v2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_2696B6F94(v8, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

void *sub_26981D04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26973CEF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_26981D094(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_26973ED38(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_89_1(v2);
  }

  else
  {
    return 0;
  }
}

double sub_26981D0E8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26973ED3C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_2696B6F94(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_26981D14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_26973CEF8(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_89_1(v3);
    }
  }
}

uint64_t sub_26981D198(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_26973ED3C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_1(v2);
  return swift_unknownObjectRetain();
}

double sub_26981D1E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_26973D098(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 40 * v5;

    sub_2696A73F8(v7, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_26981D250(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_26973D0FC(a1);
    if (v2)
    {
    }
  }
}

void sub_26981D2A4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_26973ED38(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_89_1(v2);
    }
  }
}

uint64_t sub_26981D2F0(void x0_0, uint64_t a1)
{
  if (*(a1 + 16) && (sub_26973D178(), (v2 & 1) != 0))
  {
    type metadata accessor for DeviceSelectionDonationAggregations(0);
    OUTLINED_FUNCTION_4_3();
    sub_26982A098();
    v3 = OUTLINED_FUNCTION_78_0();
  }

  else
  {
    type metadata accessor for DeviceSelectionDonationAggregations(0);
    v3 = OUTLINED_FUNCTION_3_0();
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26981D3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if (v4)
  {
    return OUTLINED_FUNCTION_89_1(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26981D434(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 4;
  }

  v3 = sub_26973ED40();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 4;
  }
}

uint64_t sub_26981D480(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 9;
  }

  v3 = sub_26973ED40();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 9;
  }
}

uint64_t sub_26981D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v5 = sub_26973D3A8(a1, a2, a3, a4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_1(v5);
}

uint64_t sub_26981D518()
{
  OUTLINED_FUNCTION_163_0();
  if (v2 && (sub_26973CEF8(v0, v1), (v3 & 1) != 0))
  {
    _s8PlayableVMa(0);
    OUTLINED_FUNCTION_4_3();
    sub_26982A098();
    v4 = OUTLINED_FUNCTION_78_0();
  }

  else
  {
    _s8PlayableVMa(0);
    v4 = OUTLINED_FUNCTION_3_0();
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26981D5B8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_26973D434();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_1(v2);
}

void sub_26981D604()
{
  OUTLINED_FUNCTION_163_0();
  if (v4 && (v5 = v3, v6 = sub_26973CEF8(v1, v2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);
    v13 = *(v8 + 24);
    v12 = *(v8 + 32);
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
    v12 = 0;
  }

  *v0 = v10;
  v0[1] = v9;
  v0[2] = v11;
  v0[3] = v13;
  v0[4] = v12;
}

uint64_t sub_26981D690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_26973CEF8(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_168_0(v3);
    }
  }

  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_26981D6D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_26973D314(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_168_0(v2);
    }
  }

  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_26981D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_163_0();
  if (v9 && (v10 = v8, v11 = sub_26973CEF8(v6, v7), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    OUTLINED_FUNCTION_4_3();
    (*(v16 + 16))(v4, v14 + *(v16 + 72) * v13, v15);
    v17 = OUTLINED_FUNCTION_78_0();
  }

  else
  {
    a4(0);
    v17 = OUTLINED_FUNCTION_3_0();
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void VideoDataModels.VideoResult.init(id:title:metadataPreamble:inTheatersDetail:contentRatingValue:contentRatingSystem:image:actionProperty:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_19_1();
  v71 = v29;
  v72 = v30;
  v68 = v31;
  v69 = v32;
  v66 = v33;
  v67 = v34;
  v64 = v35;
  v65 = v36;
  v78 = a27;
  v79 = a28;
  v76 = a23;
  v77 = a24;
  v74 = a21;
  v75 = a22;
  v73 = a26;
  v70 = a25;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_24_3();
  v60[5] = v38;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_116_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_115_2();
  MEMORY[0x28223BE20](v41);
  v43 = v60 - v42;
  v80 = 0;
  v81 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v44 = type metadata accessor for VideoDataModels.VideoResult(0);
  v60[4] = v44[5];
  OUTLINED_FUNCTION_39_7();
  v60[3] = v44[6];
  OUTLINED_FUNCTION_39_7();
  v60[2] = v44[7];
  OUTLINED_FUNCTION_39_7();
  v63 = v44[8];
  OUTLINED_FUNCTION_39_7();
  v62 = v44[9];
  OUTLINED_FUNCTION_39_7();
  v60[0] = v44[10];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  OUTLINED_FUNCTION_5_25();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v43, &qword_280323030, &qword_26985BAE0);
  v60[1] = v44[11];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v28, &qword_2803239E0, &unk_26985D8B0);
  v61 = v44[12];
  OUTLINED_FUNCTION_39_7();
  v80 = v64;
  v81 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  OUTLINED_FUNCTION_23_11(v67);
  OUTLINED_FUNCTION_127_0();
  sub_2698526A4();
  OUTLINED_FUNCTION_23_11(v69);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_139_0(v53);
  OUTLINED_FUNCTION_23_11(v72);
  OUTLINED_FUNCTION_127_0();
  sub_2698526A4();
  v54 = v70;
  sub_269802A74();
  OUTLINED_FUNCTION_5_25();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_127_0();
  sub_2698526A4();
  sub_26969B0C0(v43, &qword_280323030, &qword_26985BAE0);
  sub_269802A74();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_127_0();
  sub_2698526A4();
  sub_26969B0C0(v28, &qword_2803239E0, &unk_26985D8B0);
  v55 = OUTLINED_FUNCTION_23_11(v75);
  OUTLINED_FUNCTION_139_0(v55);
  v56 = OUTLINED_FUNCTION_23_11(v77);
  OUTLINED_FUNCTION_139_0(v56);
  v57 = OUTLINED_FUNCTION_23_11(v79);
  OUTLINED_FUNCTION_139_0(v57);
  v58 = OUTLINED_FUNCTION_14_26();
  sub_26969B0C0(v58, v59, &unk_26985D8B0);
  sub_26969B0C0(v54, &qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.ResultsListModel.init(results:person:header:)()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_31_2();
  v1 = OUTLINED_FUNCTION_74_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_72_2();
  type metadata accessor for VideoDataModels.ResultsListModel(v5);
  type metadata accessor for VideoDataModels.PersonModel(0);
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_16_18();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v0, &qword_2803239D8, &unk_26985BAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A18, &unk_26985BB20);
  sub_269852674();
  sub_269802A74();
  OUTLINED_FUNCTION_16_18();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
  sub_2698526A4();
  sub_26969B0C0(v0, &qword_2803239D8, &unk_26985BAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  v10 = OUTLINED_FUNCTION_22_3();
  sub_26969B0C0(v10, v11, &unk_26985BAD0);
  OUTLINED_FUNCTION_21_0();
}

uint64_t VideoDataModels.VideoResultDisambiguationModel.init(systemText:resultsListModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VideoDataModels.ResultsListModel(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26_19();
  sub_269852674();
  sub_26982A098();
  type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0);
  sub_26982A098();
  sub_269852674();
  sub_26982A0F0();
  return sub_26982A0F0();
}

void VideoDataModels.ConfirmationViewModel.init(primaryAction:primaryLabel:secondaryAction:secondaryLabel:)()
{
  OUTLINED_FUNCTION_19_1();
  v15 = v2;
  v4 = v3;
  v14 = v3;
  v5 = sub_269852624();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_28();
  type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  sub_269852674();
  v10 = *(v7 + 16);
  v10(v0, v4, v5);
  v10(v1, v0, v5);
  sub_269852674();
  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_18_3();
  v11(v12);
  sub_269852674();
  v10(v0, v15, v5);
  v10(v1, v0, v5);
  sub_269852674();
  (v11)(v15, v5);
  (v11)(v14, v5);
  v13 = OUTLINED_FUNCTION_18_3();
  v11(v13);
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.BasicDisambiguationItem.init(id:displayText:text2:thumbnail:actionProperty:)()
{
  OUTLINED_FUNCTION_19_1();
  v18 = v2;
  v19 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_118_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A78, &unk_26985BEF0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_115_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_28();
  type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  sub_269852674();
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_269802A74();
  OUTLINED_FUNCTION_22_3();
  sub_269852674();
  sub_26969B0C0(v0, &qword_280323A78, &unk_26985BEF0);
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_6_3();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v1, &qword_2803239E0, &unk_26985D8B0);
  sub_269852674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  sub_2698526A4();
  sub_269802A74();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  sub_2698526A4();
  sub_26969B0C0(v0, &qword_280323A78, &unk_26985BEF0);
  OUTLINED_FUNCTION_131();
  sub_269802A74();
  OUTLINED_FUNCTION_6_3();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v19, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v18, &qword_280323A78, &unk_26985BEF0);
  v16 = OUTLINED_FUNCTION_144_0();
  sub_26969B0C0(v16, v17, &unk_26985D8B0);
  OUTLINED_FUNCTION_21_0();
}

uint64_t VideoDataModels.DisambiguateItemsModel.init(systemText:items:viewId:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_269852674();
  type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A70, &unk_26985BEE0);
  sub_269852674();
  return sub_269852674();
}

void VideoDataModels.ButtonModel.init(label:actionProperty:)()
{
  OUTLINED_FUNCTION_19_1();
  v2 = sub_269852624();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_19();
  sub_269852674();
  v7 = *(v4 + 16);
  v8 = OUTLINED_FUNCTION_144_0();
  v7(v8);
  type metadata accessor for VideoDataModels.ButtonModel(0);
  (v7)(v0, v1, v2);
  sub_269852674();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_50_0();
  v9(v10);
  (v9)(v1, v2);
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.PersonModel.init(name:details:imageUrl:actionProperty:)()
{
  OUTLINED_FUNCTION_19_1();
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_118_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26_19();
  v5 = OUTLINED_FUNCTION_16_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_150_0();
  type metadata accessor for VideoDataModels.PersonModel(v9);
  sub_269851C74();
  v10 = OUTLINED_FUNCTION_3_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_54_4();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v0, &qword_280323030, &qword_26985BAE0);
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_6_3();
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v1, &qword_2803239E0, &unk_26985D8B0);
  sub_269852674();
  sub_269852674();
  OUTLINED_FUNCTION_2_6();
  sub_269802A74();
  OUTLINED_FUNCTION_54_4();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_2698526A4();
  v18 = OUTLINED_FUNCTION_14_26();
  sub_26969B0C0(v18, v19, &qword_26985BAE0);
  OUTLINED_FUNCTION_131();
  sub_269802A74();
  OUTLINED_FUNCTION_6_3();
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v24, &qword_2803239E0, &unk_26985D8B0);
  v20 = OUTLINED_FUNCTION_74_2();
  sub_26969B0C0(v20, v21, &qword_26985BAE0);
  v22 = OUTLINED_FUNCTION_144_0();
  sub_26969B0C0(v22, v23, &unk_26985D8B0);
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.snippetHidden(for:idiom:)()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  type metadata accessor for VideoDataModels(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_13();
  v5 = sub_2698542F4();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_3();
  v34 = v9;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_118_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_72_2();
  v12 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  if (qword_2803226E0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_28033D910);
  (*(v14 + 16))(v18, v19, v12);
  v35 = v3;
  v36 = *(v7 + 16);
  v36(v0, v3, v5);
  v32 = v18;
  v20 = sub_2698548B4();
  v33 = v12;
  v21 = sub_269854F14();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v22 = 136315138;
    v36(v1, v0, v5);
    v23 = sub_269854AE4();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_155();
    v1(v26);
    v27 = sub_26974F520(v23, v25, &v37);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_269684000, v20, v21, "VideoDataModels.snippetHidden() called for idiom: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D647170](v31, -1, -1);
    MEMORY[0x26D647170](v22, -1, -1);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_155();
    v1(v28);
  }

  (*(v14 + 8))(v32, v33);
  v36(v34, v35, v5);
  v29 = (*(v7 + 88))(v34, v5);
  v30 = *MEMORY[0x277D61BE8];
  (v1)(v34, v5);
  if (v29 == v30)
  {
    sub_26982A098();
    swift_getEnumCaseMultiPayload();
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t VideoDataModels.VideoResult.id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_269852694();
  return v1;
}

uint64_t (*VideoDataModels.VideoResult.id.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t (*VideoDataModels.VideoResult.title.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResult(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t (*VideoDataModels.VideoResult.metadataPreamble.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResult(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.inTheatersDetail.getter()
{
  type metadata accessor for VideoDataModels.VideoResult(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0(v0);
  return v2;
}

uint64_t VideoDataModels.VideoResult.inTheatersDetail.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  type metadata accessor for VideoDataModels.VideoResult(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*VideoDataModels.VideoResult.inTheatersDetail.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResult(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.contentRatingValue.getter()
{
  type metadata accessor for VideoDataModels.VideoResult(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0(v0);
  return v2;
}

uint64_t VideoDataModels.VideoResult.contentRatingValue.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  type metadata accessor for VideoDataModels.VideoResult(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*VideoDataModels.VideoResult.contentRatingValue.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResult(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.contentRatingSystem.getter()
{
  type metadata accessor for VideoDataModels.VideoResult(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0(v0);
  return v2;
}

uint64_t VideoDataModels.VideoResult.contentRatingSystem.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  type metadata accessor for VideoDataModels.VideoResult(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*VideoDataModels.VideoResult.contentRatingSystem.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResult(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.image.getter()
{
  type metadata accessor for VideoDataModels.VideoResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  return sub_269852694();
}

uint64_t VideoDataModels.VideoResult.image.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_32();
  type metadata accessor for VideoDataModels.VideoResult(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_62_3(v5);
  v6 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v6, v7, &qword_26985BAE0);
}

uint64_t (*VideoDataModels.VideoResult.image.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResult(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_26981F430(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_9();
  sub_269802A74();
  sub_269852674();
  return sub_26969B0C0(a1, a2, a3);
}

uint64_t VideoDataModels.VideoResult.actionProperty.getter()
{
  type metadata accessor for VideoDataModels.VideoResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  return sub_269852694();
}

uint64_t VideoDataModels.VideoResult.actionProperty.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_32();
  type metadata accessor for VideoDataModels.VideoResult(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_62_3(v5);
  v6 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v6, v7, &unk_26985D8B0);
}

uint64_t (*VideoDataModels.VideoResult.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResult(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.VideoResult.description.getter()
{
  type metadata accessor for VideoDataModels.VideoResult(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0(v0);
  return v2;
}

uint64_t VideoDataModels.VideoResult.description.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  type metadata accessor for VideoDataModels.VideoResult(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*VideoDataModels.VideoResult.description.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResult(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_26981F774(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000269881100 == a2;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000269881160 == a2;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000269881120 == a2;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000269881140 == a2;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_269855584();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_26981FA38(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 1819568500;
      goto LABEL_10;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      v3 = 1734438249;
LABEL_10:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 7:
      result = 0x72506E6F69746361;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26981FB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26981F774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26981FB70(uint64_t a1)
{
  v2 = sub_26982A178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26981FBAC(uint64_t a1)
{
  v2 = sub_26982A178();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.VideoResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325C28, &qword_269868878);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_21_2();
  sub_26982A178();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_1_57();
  sub_26982A5F8(v29);
  OUTLINED_FUNCTION_10_33();
  sub_269855514();
  if (!v27)
  {
    type metadata accessor for VideoDataModels.VideoResult(0);
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
    sub_26982A1CC();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A404();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
  }

  v30 = OUTLINED_FUNCTION_5_25();
  v31(v30);
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.VideoResult.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v104 = v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8();
  v87 = v4;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v6);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_8();
  v88 = v7;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8();
  v99 = v10;
  v100 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_3();
  v86 = v12;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_3();
  v94 = v14;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_130(v20);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325C90, &qword_269868880);
  OUTLINED_FUNCTION_8();
  v98 = v21;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_29_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_26_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v26);
  v27 = OUTLINED_FUNCTION_72_2();
  v28 = type metadata accessor for VideoDataModels.VideoResult(v27);
  v29 = (v28 - 8);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  v32 = v31 - v30;
  v105 = 0;
  v106 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v33 = v29[7];
  v105 = 0;
  v106 = 0;
  v97 = v33;
  OUTLINED_FUNCTION_90_2();
  v34 = v29[8];
  v105 = 0;
  v106 = 0;
  v96 = v34;
  OUTLINED_FUNCTION_90_2();
  v35 = v29[9];
  v105 = 0;
  v106 = 0;
  v95 = v35;
  OUTLINED_FUNCTION_90_2();
  v93 = v29[10];
  OUTLINED_FUNCTION_90_2();
  v105 = 0;
  v106 = 0;
  OUTLINED_FUNCTION_90_2();
  v36 = v29[12];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v2, &qword_280323030, &qword_26985BAE0);
  v41 = v29[13];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v1, &qword_2803239E0, &unk_26985D8B0);
  v46 = v29[14];
  v105 = 0;
  v106 = 0;
  sub_269852674();
  OUTLINED_FUNCTION_56_5(v104, v104[3]);
  sub_26982A178();
  OUTLINED_FUNCTION_156_0();
  sub_2698556E4();
  if (!v0)
  {
    LOBYTE(v105) = 0;
    OUTLINED_FUNCTION_0_62();
    v48 = sub_26982A5F8(v47);
    OUTLINED_FUNCTION_114_2(v99, &v105, v102, v99);
    v103 = *(v100 + 40);
    v103(v32, v101, v99);
    OUTLINED_FUNCTION_95_2(1);
    v49 = OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_114_2(v49, v50, v51, v52);
    v53 = OUTLINED_FUNCTION_81_1(v97);
    (v103)(v53);
    OUTLINED_FUNCTION_95_2(2);
    v54 = OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_114_2(v54, v55, v56, v57);
    v58 = OUTLINED_FUNCTION_81_1(v96);
    (v103)(v58);
    OUTLINED_FUNCTION_95_2(3);
    v59 = OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_114_2(v59, v60, v61, v62);
    v63 = OUTLINED_FUNCTION_81_1(v95);
    (v103)(v63);
    OUTLINED_FUNCTION_95_2(4);
    v64 = OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_121_1(v64, v65, v66, v67, v48);
    v68 = OUTLINED_FUNCTION_81_1(v93);
    (v103)(v68);
    OUTLINED_FUNCTION_95_2(5);
    v69 = OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_121_1(v69, v70, v71, v72, v48);
    OUTLINED_FUNCTION_126_0();
    v103(v32 + v73, v94, v99);
    LOBYTE(v105) = 6;
    sub_26982A6A8();
    OUTLINED_FUNCTION_102_1();
    v74 = OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_121_1(v74, v75, v76, v77, v78);
    (*(v88 + 40))(v32 + v36, v92, v91);
    LOBYTE(v105) = 7;
    sub_26982A734();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_121_1(v90, v79, v102, v90, v80);
    (*(v87 + 40))(v32 + v41, v89, v90);
    OUTLINED_FUNCTION_95_2(8);
    OUTLINED_FUNCTION_156_0();
    OUTLINED_FUNCTION_121_1(v81, v82, v83, v84, v85);
    (*(v98 + 8))(v48, v102);
    v103(v32 + v46, v86, v99);
    sub_26982A098();
  }

  __swift_destroy_boxed_opaque_existential_0(v104);
  sub_26982A0F0();
  OUTLINED_FUNCTION_44();
}

uint64_t sub_269820718@<X0>(uint64_t *a1@<X8>)
{
  result = VideoDataModels.VideoResult.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*VideoDataModels.PersonModel.name.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t (*VideoDataModels.PersonModel.details.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.PersonModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.PersonModel.imageUrl.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_32();
  type metadata accessor for VideoDataModels.PersonModel(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_62_3(v5);
  v6 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v6, v7, &qword_26985BAE0);
}

uint64_t (*VideoDataModels.PersonModel.imageUrl.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.PersonModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.PersonModel.actionProperty.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_32();
  type metadata accessor for VideoDataModels.PersonModel(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_62_3(v5);
  v6 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v6, v7, &unk_26985D8B0);
}

uint64_t (*VideoDataModels.PersonModel.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.PersonModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269820AFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C72556567616D69 && a2 == 0xE800000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_269820C5C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x736C6961746564;
      break;
    case 2:
      result = 0x6C72556567616D69;
      break;
    case 3:
      result = 0x72506E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269820CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269820AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269820D14(uint64_t a1)
{
  v2 = sub_26982A7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269820D50(uint64_t a1)
{
  v2 = sub_26982A7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.PersonModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_43();
  a20 = v23;
  a21 = v24;
  OUTLINED_FUNCTION_119_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CB0, &qword_269868888);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_21_2();
  sub_26982A7C0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  HIBYTE(a11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  sub_26982A814(v26);
  OUTLINED_FUNCTION_41_6(v22, &a11 + 3);
  if (!v21)
  {
    v27 = *(type metadata accessor for VideoDataModels.PersonModel(0) + 20);
    BYTE2(a11) = 1;
    OUTLINED_FUNCTION_41_6(v22 + v27, &a11 + 2);
    OUTLINED_FUNCTION_47();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
    sub_26982A1CC();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
    OUTLINED_FUNCTION_46();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A404();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
  }

  v28 = OUTLINED_FUNCTION_5_25();
  v29(v28);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.PersonModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_43();
  a20 = v23;
  a21 = v24;
  v77 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8();
  v78 = v27;
  v79 = v26;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_29_16();
  v70 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  OUTLINED_FUNCTION_8();
  v80 = v31;
  v81 = v30;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_29_16();
  v71 = v33;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8();
  v73 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24_3();
  v72 = v36;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_13();
  v74 = v38;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CC8, &qword_269868890);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_29_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_15_28();
  v42 = OUTLINED_FUNCTION_131();
  __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_150_0();
  v47 = type metadata accessor for VideoDataModels.PersonModel(v46);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3_1();
  v51 = v50 - v49;
  v53 = *(v52 + 24);
  sub_269851C74();
  v54 = OUTLINED_FUNCTION_3_0();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v21, &qword_280323030, &qword_26985BAE0);
  v58 = *(v47 + 28);
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  sub_269802A74();
  sub_269852674();
  v63 = OUTLINED_FUNCTION_18_3();
  sub_26969B0C0(v63, v64, &unk_26985D8B0);
  OUTLINED_FUNCTION_56_5(v77, v77[3]);
  sub_26982A7C0();
  OUTLINED_FUNCTION_156_0();
  sub_2698556E4();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v77);
    (*(v80 + 8))(v51 + v53, v81);
    OUTLINED_FUNCTION_45_6();
    v66(v51 + v58, v79);
  }

  else
  {
    HIBYTE(a11) = 0;
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v65);
    OUTLINED_FUNCTION_166(v75, &a11 + 3, v76);
    v67 = *(v73 + 32);
    v67(v51, v74, v75);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_166(v75, &a11 + 2, v76);
    v67(v51 + *(v47 + 20), v72, v75);
    OUTLINED_FUNCTION_47();
    sub_26982A6A8();
    sub_269855494();
    (*(v80 + 40))(v51 + v53, v71, v81);
    OUTLINED_FUNCTION_46();
    sub_26982A734();
    sub_269855494();
    v68 = OUTLINED_FUNCTION_48_8();
    v69(v68, v76);
    (*(v78 + 40))(v51 + v58, v70, v79);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v77);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_44();
}

uint64_t VideoDataModels.ResultsListModel.results.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CD8, &qword_269868898);
  sub_269852694();
  return v1;
}

uint64_t (*VideoDataModels.ResultsListModel.results.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CD8, &qword_269868898);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t VideoDataModels.ResultsListModel.person.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_32();
  type metadata accessor for VideoDataModels.ResultsListModel(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
  OUTLINED_FUNCTION_62_3(v5);
  v6 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v6, v7, &unk_26985BAD0);
}

uint64_t (*VideoDataModels.ResultsListModel.person.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.ResultsListModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_2698218EC(void (*a1)(void))
{
  a1(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0(v1);
  return v3;
}

uint64_t sub_269821958()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*VideoDataModels.ResultsListModel.header.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.ResultsListModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269821A18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_269821B28(char a1)
{
  if (!a1)
  {
    return 0x73746C75736572;
  }

  if (a1 == 1)
  {
    return 0x6E6F73726570;
  }

  return 0x726564616568;
}

uint64_t sub_269821B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269821A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269821BA8(uint64_t a1)
{
  v2 = sub_26982A880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269821BE4(uint64_t a1)
{
  v2 = sub_26982A880();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.ResultsListModel.encode(to:)()
{
  OUTLINED_FUNCTION_76_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CE0, &qword_2698688A0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_21_2();
  sub_26982A880();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CD8, &qword_269868898);
  v3 = sub_26982A8D4();
  OUTLINED_FUNCTION_21_22(v3);
  if (!v0)
  {
    v4 = *(type metadata accessor for VideoDataModels.ResultsListModel(0) + 20);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
    v5 = sub_26982AAC8();
    OUTLINED_FUNCTION_22_21(v1 + v4, v16, v6, v7, v5);
    OUTLINED_FUNCTION_47();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    OUTLINED_FUNCTION_1_57();
    sub_26982A5F8(v8);
    v9 = OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_22_21(v9, &v15, v10, v11, v12);
  }

  v13 = OUTLINED_FUNCTION_68_5();
  v14(v13);
  OUTLINED_FUNCTION_158();
}

void VideoDataModels.ResultsListModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v42 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8();
  v39 = v5;
  v40 = v4;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_29_16();
  v31 = v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A20, &unk_26985D920);
  OUTLINED_FUNCTION_8();
  v41 = v8;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_29_16();
  v34 = v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325CD8, &qword_269868898);
  OUTLINED_FUNCTION_8();
  v32 = v11;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_130(v13);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D40, &qword_2698688A8);
  OUTLINED_FUNCTION_8();
  v33 = v14;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239D8, &unk_26985BAD0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_116_2();
  v18 = type metadata accessor for VideoDataModels.ResultsListModel(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  v23 = *(v19 + 28);
  type metadata accessor for VideoDataModels.PersonModel(0);
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v2, &qword_2803239D8, &unk_26985BAD0);
  v28 = *(v19 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  OUTLINED_FUNCTION_56_5(v42, v42[3]);
  sub_26982A880();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v42);
    (*(v41 + 8))(v22 + v23, v38);
    OUTLINED_FUNCTION_45_6();
    v29(v22 + v28, v40);
  }

  else
  {
    sub_26982ACBC();
    sub_269855494();
    (*(v32 + 32))(v22, v36, v35);
    sub_26982AD48();
    sub_269855494();
    (*(v41 + 40))(v22 + v23, v34, v38);
    OUTLINED_FUNCTION_0_62();
    sub_26982A5F8(v30);
    sub_269855494();
    (*(v33 + 8))(v1, v37);
    (*(v39 + 40))(v22 + v28, v31, v40);
    OUTLINED_FUNCTION_18_21();
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_4_43();
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_26982232C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5654656C707061 && a2 == 0xE700000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000269881180 == a2;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000002698811A0 == a2;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x80000002698811C0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_269855584();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_269822518(char a1)
{
  result = 0x6567616D69;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6349707061;
      break;
    case 2:
      result = 0x5654656C707061;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269822610(uint64_t a1)
{
  v2 = sub_26982AF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26982264C(uint64_t a1)
{
  v2 = sub_26982AF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982268C(uint64_t a1)
{
  v2 = sub_26982AF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698226C8(uint64_t a1)
{
  v2 = sub_26982AF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26982232C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269822734(uint64_t a1)
{
  v2 = sub_26982ADD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269822770(uint64_t a1)
{
  v2 = sub_26982ADD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2698227AC(uint64_t a1)
{
  v2 = sub_26982AFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698227E8(uint64_t a1)
{
  v2 = sub_26982AFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269822824(uint64_t a1)
{
  v2 = sub_26982AED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269822860(uint64_t a1)
{
  v2 = sub_26982AED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982289C(uint64_t a1)
{
  v2 = sub_26982AE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698228D8(uint64_t a1)
{
  v2 = sub_26982AE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269822914(uint64_t a1)
{
  v2 = sub_26982AE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269822950(uint64_t a1)
{
  v2 = sub_26982AE28();

  return MEMORY[0x2821FE720](a1, v2);
}

void static VideoDataModels.BasicDisambiguationItem.Thumbnail.__derived_enum_equals(_:_:)()
{
  OUTLINED_FUNCTION_19_1();
  v1 = sub_269851C74();
  OUTLINED_FUNCTION_8();
  v23 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D58, &qword_2698688B0);
  OUTLINED_FUNCTION_8_9(v12);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_143_0();
  v15 = (v0 + *(v14 + 56));
  sub_26982A098();
  sub_26982A098();
  OUTLINED_FUNCTION_14_26();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_19_19();
      sub_26982A098();
      v19 = *v10;
      v18 = v10[1];
      if (OUTLINED_FUNCTION_141_0() != 1)
      {

        goto LABEL_20;
      }

      if (v19 != *v15 || v18 != v15[1])
      {
        sub_269855584();
      }

      goto LABEL_23;
    case 2u:
      if (OUTLINED_FUNCTION_141_0() == 2)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    case 3u:
      if (OUTLINED_FUNCTION_141_0() == 3)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    case 4u:
      if (OUTLINED_FUNCTION_141_0() == 4)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    case 5u:
      if (OUTLINED_FUNCTION_141_0() != 5)
      {
        goto LABEL_20;
      }

LABEL_23:
      OUTLINED_FUNCTION_20_19();
      break;
    default:
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_54_4();
      sub_26982A098();
      if (OUTLINED_FUNCTION_141_0())
      {
        v16 = OUTLINED_FUNCTION_88_1();
        v17(v16, v1);
LABEL_20:
        sub_26969B0C0(v0, &qword_280325D58, &qword_2698688B0);
      }

      else
      {
        (*(v23 + 32))(v6, v15, v1);
        sub_269851C34();
        v21 = *(v23 + 8);
        v21(v6, v1);
        v22 = OUTLINED_FUNCTION_18_3();
        (v21)(v22);
        OUTLINED_FUNCTION_20_19();
      }

      break;
  }

  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.BasicDisambiguationItem.Thumbnail.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43();
  a25 = v28;
  a26 = v29;
  v116 = v27;
  v117 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D60, &qword_2698688B8);
  OUTLINED_FUNCTION_8();
  v112 = v31;
  v113 = v30;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_29_16();
  v111 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D68, &qword_2698688C0);
  OUTLINED_FUNCTION_8();
  v109 = v35;
  v110 = v34;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_29_16();
  v108 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D70, &qword_2698688C8);
  OUTLINED_FUNCTION_8();
  v106 = v39;
  v107 = v38;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_29_16();
  v105 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D78, &qword_2698688D0);
  OUTLINED_FUNCTION_8();
  v103 = v43;
  v104 = v42;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_29_16();
  v99 = v45;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D80, &qword_2698688D8);
  OUTLINED_FUNCTION_8();
  v100 = v46;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v47);
  v49 = &v95 - v48;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D88, &qword_2698688E0);
  OUTLINED_FUNCTION_8();
  v98 = v50;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_9();
  v97 = sub_269851C74();
  OUTLINED_FUNCTION_8();
  v96 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v56 = v55 - v54;
  v57 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325D90, &qword_2698688E8);
  OUTLINED_FUNCTION_8();
  v114 = v60;
  v115 = v59;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_16_27();
  v62 = OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_56_5(v62, v63);
  sub_26982ADD4();
  OUTLINED_FUNCTION_137();
  sub_2698556F4();
  OUTLINED_FUNCTION_19_19();
  sub_26982A098();
  OUTLINED_FUNCTION_144_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26982AF78();
      v88 = v115;
      sub_2698554B4();
      OUTLINED_FUNCTION_14_26();
      v89 = v102;
      sub_2698554E4();

      (*(v100 + 8))(v49, v89);
      v73 = OUTLINED_FUNCTION_77_3();
      v75 = v88;
      goto LABEL_7;
    case 2u:
      a13 = 2;
      v82 = sub_26982AF24();
      v77 = v99;
      OUTLINED_FUNCTION_43_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.AppleTVCodingKeys, &a13, v83, v84, v82);
      v81 = v103;
      v80 = v104;
      goto LABEL_9;
    case 3u:
      a14 = 3;
      v85 = sub_26982AED0();
      v77 = v105;
      OUTLINED_FUNCTION_43_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.MatchpointClassicCodingKeys, &a14, v86, v87, v85);
      v81 = v106;
      v80 = v107;
      goto LABEL_9;
    case 4u:
      a15 = 4;
      v76 = sub_26982AE7C();
      v77 = v108;
      OUTLINED_FUNCTION_43_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.MatchpointSetTopBoxCodingKeys, &a15, v78, v79, v76);
      v81 = v109;
      v80 = v110;
      goto LABEL_9;
    case 5u:
      a16 = 5;
      v90 = sub_26982AE28();
      v77 = v111;
      OUTLINED_FUNCTION_43_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.MatchpointStreamingStickCodingKeys, &a16, v91, v92, v90);
      v81 = v112;
      v80 = v113;
LABEL_9:
      (*(v81 + 8))(v77, v80);
      v93 = OUTLINED_FUNCTION_77_3();
      v94(v93, v57);
      break;
    default:
      v64 = v96;
      v65 = OUTLINED_FUNCTION_131();
      v66 = v97;
      v67(v65);
      sub_26982AFCC();
      v68 = v115;
      sub_2698554B4();
      OUTLINED_FUNCTION_59_3();
      sub_26982A3C0(v69);
      v70 = v101;
      sub_269855514();
      v71 = OUTLINED_FUNCTION_66_3();
      v72(v71, v70);
      (*(v64 + 8))(v56, v66);
      v73 = OUTLINED_FUNCTION_77_3();
      v75 = v68;
LABEL_7:
      v74(v73, v75);
      break;
  }

  OUTLINED_FUNCTION_44();
}

void VideoDataModels.BasicDisambiguationItem.Thumbnail.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43();
  a25 = v30;
  a26 = v31;
  v158 = v26;
  v33 = v32;
  v156 = v34;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DD0, &qword_2698688F0);
  OUTLINED_FUNCTION_8();
  v153 = v35;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_29_16();
  v152 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DD8, &qword_2698688F8);
  OUTLINED_FUNCTION_8();
  v144 = v39;
  v145 = v38;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_29_16();
  v151 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DE0, &qword_269868900);
  OUTLINED_FUNCTION_8();
  v142 = v43;
  v143 = v42;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_130(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DE8, &qword_269868908);
  OUTLINED_FUNCTION_8();
  v139 = v47;
  v140 = v46;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_29_16();
  v150 = v49;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DF0, &qword_269868910);
  OUTLINED_FUNCTION_8();
  v147 = v50;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_29_16();
  v149 = v52;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325DF8, &qword_269868918);
  OUTLINED_FUNCTION_8();
  v146 = v53;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_29_16();
  v148 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E00, &qword_269868920);
  OUTLINED_FUNCTION_8();
  v154 = v57;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v58);
  v60 = &v133 - v59;
  v61 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_26_19();
  v157 = v33;
  v65 = OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_56_5(v65, v66);
  sub_26982ADD4();
  v67 = v158;
  sub_2698556E4();
  if (v67)
  {
    goto LABEL_8;
  }

  v135 = v27;
  v136 = v28;
  v68 = v155;
  v137 = v29;
  v158 = v61;
  v69 = sub_2698554A4();
  v73 = sub_26982B020(v69, 0);
  if (v71 == v72 >> 1)
  {
LABEL_7:
    v86 = v158;
    v87 = sub_269855254();
    swift_allocError();
    v89 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E08, &qword_269868928);
    *v89 = v86;
    v90 = sub_269855404();
    OUTLINED_FUNCTION_122_1(v90, "Invalid number of keys found, expected one.");
    (*(*(v87 - 8) + 104))(v89, *MEMORY[0x277D84160], v87);
    swift_willThrow();
    swift_unknownObjectRelease();
    v91 = OUTLINED_FUNCTION_15_31();
    v92(v91);
LABEL_8:
    v93 = v157;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v93);
    OUTLINED_FUNCTION_44();
    return;
  }

  v134 = 0;
  if (v71 < (v72 >> 1))
  {
    v133 = *(v70 + v71);
    sub_26982BCA4(v71 + 1, v72 >> 1, v73, v70, v71, v72);
    v75 = v74;
    v77 = v76;
    swift_unknownObjectRelease();
    v78 = v153;
    if (v75 == v77 >> 1)
    {
      v79 = v134;
      v80 = v152;
      switch(v133)
      {
        case 1:
          a12 = 1;
          v116 = sub_26982AF78();
          OUTLINED_FUNCTION_47_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.AppIconCodingKeys, &a12, v117, v118, v116);
          v125 = sub_269855464();
          v127 = v126;
          swift_unknownObjectRelease();
          v128 = OUTLINED_FUNCTION_80_1();
          v129(v128);
          v130 = OUTLINED_FUNCTION_15_31();
          v131(v130);
          v132 = v135;
          *v135 = v125;
          v132[1] = v127;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_17_25();
          goto LABEL_20;
        case 2:
          a13 = 2;
          v101 = sub_26982AF24();
          OUTLINED_FUNCTION_47_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.AppleTVCodingKeys, &a13, v102, v103, v101);
          swift_unknownObjectRelease();
          v104 = OUTLINED_FUNCTION_88_1();
          v105(v104);
          v106 = OUTLINED_FUNCTION_15_31();
          v107(v106);
          OUTLINED_FUNCTION_37_9();
          goto LABEL_13;
        case 3:
          a14 = 3;
          v108 = sub_26982AED0();
          OUTLINED_FUNCTION_47_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.MatchpointClassicCodingKeys, &a14, v109, v110, v108);
          swift_unknownObjectRelease();
          v111 = OUTLINED_FUNCTION_88_1();
          v112(v111);
          v113 = OUTLINED_FUNCTION_15_31();
          v114(v113);
          OUTLINED_FUNCTION_37_9();
          goto LABEL_13;
        case 4:
          a15 = 4;
          v94 = sub_26982AE7C();
          OUTLINED_FUNCTION_47_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.MatchpointSetTopBoxCodingKeys, &a15, v95, v96, v94);
          swift_unknownObjectRelease();
          v97 = OUTLINED_FUNCTION_88_1();
          v98(v97);
          v99 = OUTLINED_FUNCTION_15_31();
          v100(v99);
          OUTLINED_FUNCTION_37_9();
LABEL_13:
          swift_storeEnumTagMultiPayload();
          goto LABEL_14;
        case 5:
          a16 = 5;
          sub_26982AE28();
          sub_2698553F4();
          if (v79)
          {
            v119 = OUTLINED_FUNCTION_15_31();
            v120(v119);
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v78 + 8))(v80, v68);
          v121 = OUTLINED_FUNCTION_15_31();
          v122(v121);
          OUTLINED_FUNCTION_37_9();
          swift_storeEnumTagMultiPayload();
          v115 = v157;
LABEL_19:
          OUTLINED_FUNCTION_17_25();
          OUTLINED_FUNCTION_16_16();
          sub_26982BAA8();
          v93 = v115;
          break;
        default:
          a11 = 0;
          v81 = sub_26982AFCC();
          OUTLINED_FUNCTION_47_7(&type metadata for VideoDataModels.BasicDisambiguationItem.Thumbnail.ImageCodingKeys, &a11, v82, v83, v81);
          sub_269851C74();
          OUTLINED_FUNCTION_59_3();
          sub_26982A3C0(v84);
          OUTLINED_FUNCTION_126_0();
          sub_269855494();
          v85 = v154;
          swift_unknownObjectRelease();
          v123 = OUTLINED_FUNCTION_80_1();
          v124(v123);
          (*(v85 + 8))(v60, v56);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_17_25();
LABEL_20:
          sub_26982BAA8();
LABEL_14:
          v115 = v157;
          goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.id.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t sub_269823D44(void (*a1)(void))
{
  a1(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_125_0(v1);
  return v3;
}

uint64_t sub_269823DB0()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  return OUTLINED_FUNCTION_52_5(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.displayText.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.BasicDisambiguationItem(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.text2.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.BasicDisambiguationItem(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269823FA0()
{
  v0 = OUTLINED_FUNCTION_50_6();
  v1(v0);
  v2 = OUTLINED_FUNCTION_2_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_269852694();
}

uint64_t VideoDataModels.BasicDisambiguationItem.thumbnail.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_32();
  type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  OUTLINED_FUNCTION_62_3(v5);
  v6 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v6, v7, &unk_26985BEF0);
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.thumbnail.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.BasicDisambiguationItem(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.BasicDisambiguationItem.actionProperty.getter()
{
  type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  return sub_269852694();
}

uint64_t VideoDataModels.BasicDisambiguationItem.actionProperty.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_32();
  type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_62_3(v5);
  v6 = OUTLINED_FUNCTION_22_3();
  return sub_26969B0C0(v6, v7, &unk_26985D8B0);
}

uint64_t (*VideoDataModels.BasicDisambiguationItem.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.BasicDisambiguationItem(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269824274(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x3274786574 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_269855584();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_269824424(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x5479616C70736964;
      break;
    case 2:
      result = 0x3274786574;
      break;
    case 3:
      result = 0x69616E626D756874;
      break;
    case 4:
      result = 0x72506E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2698244D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269824274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2698244F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26982441C();
  *a1 = result;
  return result;
}

uint64_t sub_269824520(uint64_t a1)
{
  v2 = sub_26982B068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26982455C(uint64_t a1)
{
  v2 = sub_26982B068();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.BasicDisambiguationItem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_119_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E10, &qword_269868930);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_21_2();
  sub_26982B068();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  a16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  sub_26982A814(v31);
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_27_16();
  sub_269855514();
  if (!v27)
  {
    v32 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
    v33 = *(v32 + 20);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
    OUTLINED_FUNCTION_1_57();
    sub_26982A5F8(v34);
    OUTLINED_FUNCTION_41_6(v26 + v33, &a15);
    v35 = *(v32 + 24);
    a14 = 2;
    OUTLINED_FUNCTION_41_6(v26 + v35, &a14);
    OUTLINED_FUNCTION_46();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
    sub_26982B0BC();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A404();
    OUTLINED_FUNCTION_27_16();
    sub_269855514();
  }

  v36 = OUTLINED_FUNCTION_5_25();
  v37(v36);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.BasicDisambiguationItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  v95 = v22;
  v96 = v20;
  v84[0] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  OUTLINED_FUNCTION_8();
  v97 = v25;
  v98 = v24;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v27);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  OUTLINED_FUNCTION_8();
  v99 = v28;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v30);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  OUTLINED_FUNCTION_8();
  v103 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24_3();
  v85 = v33;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_13();
  v86 = v35;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8();
  v87 = v36;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_29_16();
  v90 = v38;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E48, &qword_269868938);
  OUTLINED_FUNCTION_8();
  v88 = v39;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_29_16();
  v107 = v41;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_3();
  v92 = v43;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v44);
  v46 = v84 - v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A78, &unk_26985BEF0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_115_2();
  MEMORY[0x28223BE20](v48);
  v50 = v84 - v49;
  v51 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v52 = (v51 - 8);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v53 = v52[7];
  v105 = 0;
  v106 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  v102 = v53;
  sub_269852674();
  v54 = v52[8];
  v105 = 0;
  v106 = 0;
  v100 = v54;
  sub_269852674();
  v55 = v52[9];
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  sub_269802A74();
  v93 = v55;
  sub_269852674();
  sub_26969B0C0(v50, &qword_280323A78, &unk_26985BEF0);
  v60 = v52[10];
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  sub_269802A74();
  v65 = v95;
  sub_269852674();
  sub_26969B0C0(v46, &qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_56_5(v65, v65[3]);
  sub_26982B068();
  v66 = v96;
  OUTLINED_FUNCTION_156_0();
  sub_2698556E4();
  if (v66)
  {
    v69 = v104;
    v70 = v101;
    v71 = v93;
    __swift_destroy_boxed_opaque_existential_0(v65);
    v72 = v98;
    v73 = *(v103 + 8);
    v73(v21 + v102, v70);
    v73(v21 + v100, v70);
    (*(v99 + 8))(v21 + v71, v69);
    (*(v97 + 8))(v21 + v60, v72);
  }

  else
  {
    LOBYTE(v105) = 0;
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v67);
    OUTLINED_FUNCTION_102_1();
    v68 = v89;
    sub_269855494();
    (*(v87 + 32))(v21, v90, v68);
    LOBYTE(v105) = 1;
    OUTLINED_FUNCTION_0_62();
    sub_26982A5F8(v74);
    OUTLINED_FUNCTION_102_1();
    v75 = v86;
    v76 = v101;
    v96 = v77;
    sub_269855494();
    v78 = v93;
    v79 = v75;
    v80 = *(v103 + 40);
    v80(v21 + v102, v79, v76);
    OUTLINED_FUNCTION_95_2(2);
    sub_269855494();
    v80(v21 + v100, v85, v76);
    LOBYTE(v105) = 3;
    sub_26982B2B0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_146_0();
    v81 = v104;
    sub_269855494();
    v82 = v98;
    (*(v99 + 40))(v21 + v78, v76, v81);
    LOBYTE(v105) = 4;
    sub_26982A734();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_126_0();
    v83 = v91;
    sub_269855494();
    (*(v88 + 8))(v107, v83);
    (*(v97 + 40))(v21 + v60, v84[1], v82);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v65);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_269824FF8@<X0>(uint64_t *a1@<X8>)
{
  result = VideoDataModels.VideoResultDisambiguationModel.systemText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*VideoDataModels.DisambiguateItemsModel.systemText.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t VideoDataModels.DisambiguateItemsModel.items.getter()
{
  type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
  sub_269852694();
  return v1;
}

uint64_t VideoDataModels.DisambiguateItemsModel.items.setter(uint64_t a1)
{
  type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
  return sub_2698526A4();
}

uint64_t (*VideoDataModels.DisambiguateItemsModel.items.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.DisambiguateItemsModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.DisambiguateItemsModel.viewId.getter()
{
  type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
  sub_269852694();
  return v1;
}

uint64_t VideoDataModels.DisambiguateItemsModel.viewId.setter(char a1)
{
  type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
  return sub_2698526A4();
}

uint64_t (*VideoDataModels.DisambiguateItemsModel.viewId.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.DisambiguateItemsModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269825384(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x644977656976 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_269825494(char a1)
{
  if (!a1)
  {
    return 0x65546D6574737973;
  }

  if (a1 == 1)
  {
    return 0x736D657469;
  }

  return 0x644977656976;
}

uint64_t sub_2698254F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269825384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269825518(uint64_t a1)
{
  v2 = sub_26982B33C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269825554(uint64_t a1)
{
  v2 = sub_26982B33C();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.DisambiguateItemsModel.encode(to:)()
{
  OUTLINED_FUNCTION_76_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E68, &qword_269868950);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_21_2();
  sub_26982B33C();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  v4 = sub_26982A814(v3);
  OUTLINED_FUNCTION_21_22(v4);
  if (!v0)
  {
    v5 = *(type metadata accessor for VideoDataModels.DisambiguateItemsModel(0) + 20);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
    v6 = sub_26982B390();
    OUTLINED_FUNCTION_22_21(v1 + v5, v16, v7, v8, v6);
    OUTLINED_FUNCTION_47();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
    sub_26982B584();
    v9 = OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_22_21(v9, &v15, v10, v11, v12);
  }

  v13 = OUTLINED_FUNCTION_68_5();
  v14(v13);
  OUTLINED_FUNCTION_158();
}

void VideoDataModels.DisambiguateItemsModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_43();
  v21 = v20;
  v53 = v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E60, &qword_269868948);
  OUTLINED_FUNCTION_8();
  v52 = v23;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_29_16();
  v55 = v25;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E58, &qword_269868940);
  OUTLINED_FUNCTION_8();
  v56 = v26;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v49 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8();
  v57 = v31;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_29_16();
  v61 = v33;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325EB8, &qword_269868958);
  OUTLINED_FUNCTION_8();
  v58 = v34;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_9();
  v36 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v40 = v39 - v38;
  v41 = v21[3];
  v62 = v21;
  OUTLINED_FUNCTION_56_5(v21, v41);
  sub_26982B33C();
  sub_2698556E4();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    v51 = v40;
    v42 = v59;
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v43);
    OUTLINED_FUNCTION_85_3();
    sub_269855494();
    v44 = *(v57 + 32);
    v45 = v61;
    v61 = v30;
    v44(v51, v45, v30);
    OUTLINED_FUNCTION_48();
    sub_26982B6B8();
    sub_269855494();
    v50 = v36;
    (*(v56 + 32))(v51 + *(v36 + 20), v29, v42);
    OUTLINED_FUNCTION_47();
    sub_26982B744();
    v46 = v54;
    sub_269855494();
    v47 = OUTLINED_FUNCTION_69_4();
    v48(v47);
    (*(v52 + 32))(v51 + *(v50 + 24), v55, v46);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v62);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t (*VideoDataModels.VideoResultDisambiguationModel.systemText.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t property wrapper backing initializer of VideoDataModels.VideoResultDisambiguationModel.resultsListModel(uint64_t a1)
{
  type metadata accessor for VideoDataModels.ResultsListModel(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_14_26();
  sub_26982A098();
  sub_269852674();
  OUTLINED_FUNCTION_4_43();
  return sub_26982A0F0();
}

uint64_t sub_269825D58()
{
  v0 = OUTLINED_FUNCTION_50_6();
  v1(v0);
  v2 = OUTLINED_FUNCTION_2_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_269852694();
}

uint64_t VideoDataModels.VideoResultDisambiguationModel.resultsListModel.setter()
{
  v0 = OUTLINED_FUNCTION_29_14();
  v1 = type metadata accessor for VideoDataModels.ResultsListModel(v0);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_22_3();
  sub_26982A098();
  type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED0, &qword_269868960);
  OUTLINED_FUNCTION_8_37();
  sub_2698526A4();
  OUTLINED_FUNCTION_4_43();
  return sub_26982A0F0();
}

uint64_t (*VideoDataModels.VideoResultDisambiguationModel.resultsListModel.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED0, &qword_269868960);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_269825EBC;
}

uint64_t sub_269825EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002698811E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_269855584();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_269825F98(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x65546D6574737973;
  }
}

uint64_t sub_269825FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269825EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269826008(uint64_t a1)
{
  v2 = sub_26982B7D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269826044(uint64_t a1)
{
  v2 = sub_26982B7D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.VideoResultDisambiguationModel.encode(to:)()
{
  OUTLINED_FUNCTION_76_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED8, &qword_269868968);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_21_2();
  sub_26982B7D0();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  v11[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  v3 = sub_26982A814(v2);
  OUTLINED_FUNCTION_21_22(v3);
  if (!v0)
  {
    type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED0, &qword_269868960);
    OUTLINED_FUNCTION_1_57();
    sub_26982B824(v4);
    v5 = OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_22_21(v5, v11, v6, v7, v8);
  }

  v9 = OUTLINED_FUNCTION_68_5();
  v10(v9);
  OUTLINED_FUNCTION_158();
}

void VideoDataModels.VideoResultDisambiguationModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325ED0, &qword_269868960);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_73_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_29_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F00, &qword_269868970);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34_12();
  type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v8 = OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_56_5(v8, v9);
  sub_26982B7D0();
  OUTLINED_FUNCTION_105_0();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v10);
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_123_0(v11, v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_107_0();
    v17(v16);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_0_62();
    v19 = sub_26982B824(v18);
    OUTLINED_FUNCTION_84_2(v19);
    v20 = OUTLINED_FUNCTION_75_3();
    v21(v20, v1);
    v22 = OUTLINED_FUNCTION_93_3();
    v23(v22);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v3);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t VideoDataModels.ConfirmationViewModel.primaryAction.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);

  return sub_269852694();
}

uint64_t VideoDataModels.ConfirmationViewModel.primaryAction.setter()
{
  OUTLINED_FUNCTION_29_14();
  sub_269852624();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_6_50(v1, v7);
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  sub_2698526A4();
  v4 = OUTLINED_FUNCTION_22_3();
  return v5(v4);
}

uint64_t (*VideoDataModels.ConfirmationViewModel.primaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t sub_2698266B0(void (*a1)(void))
{
  a1(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_125_0(v1);
  return v3;
}

uint64_t sub_26982671C()
{
  v0 = OUTLINED_FUNCTION_86_1();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  return OUTLINED_FUNCTION_52_5(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*VideoDataModels.ConfirmationViewModel.primaryLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.ConfirmationViewModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269826804()
{
  v0 = OUTLINED_FUNCTION_50_6();
  v1(v0);
  v2 = OUTLINED_FUNCTION_2_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_269852694();
}

uint64_t VideoDataModels.ConfirmationViewModel.secondaryAction.setter()
{
  OUTLINED_FUNCTION_29_14();
  sub_269852624();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_6_50(v1, v7);
  v3(v2);
  type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  sub_2698526A4();
  v4 = OUTLINED_FUNCTION_22_3();
  return v5(v4);
}

uint64_t (*VideoDataModels.ConfirmationViewModel.secondaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.ConfirmationViewModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t VideoDataModels.ConfirmationViewModel.secondaryLabel.getter()
{
  type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_125_0(v0);
  return v2;
}

uint64_t VideoDataModels.ConfirmationViewModel.secondaryLabel.setter()
{
  v0 = OUTLINED_FUNCTION_86_1();
  type metadata accessor for VideoDataModels.ConfirmationViewModel(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  return OUTLINED_FUNCTION_52_5(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t (*VideoDataModels.ConfirmationViewModel.secondaryLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.ConfirmationViewModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

uint64_t sub_269826B0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C7972616D697270 && a2 == 0xEC0000006C656261;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7261646E6F636573 && a2 == 0xEE006C6562614C79)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_269826C80(char a1)
{
  result = 0x417972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x4C7972616D697270;
      break;
    case 2:
    case 3:
      result = 0x7261646E6F636573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269826D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269826B0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269826D50(uint64_t a1)
{
  v2 = sub_26982B8E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269826D8C(uint64_t a1)
{
  v2 = sub_26982B8E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.ConfirmationViewModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_119_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F18, &qword_269868980);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_21_2();
  sub_26982B8E8();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_1_57();
  sub_26982B93C(v26);
  OUTLINED_FUNCTION_10_33();
  sub_269855514();
  if (!v24)
  {
    type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
    OUTLINED_FUNCTION_1_57();
    sub_26982A814(v27);
    sub_269855514();
    OUTLINED_FUNCTION_10_33();
    sub_269855514();
    sub_269855514();
  }

  v28 = OUTLINED_FUNCTION_5_25();
  v29(v28);
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.ConfirmationViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_43();
  v24 = v23;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8();
  v52 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_3();
  v51 = v27;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_13();
  v54 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_8();
  v53 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_13();
  v55 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F30, &qword_269868988);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_73_2();
  v39 = type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_143_0();
  v41 = OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_56_5(v41, v42);
  sub_26982B8E8();
  sub_2698556E4();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    v49 = v35;
    v50 = v21;
    OUTLINED_FUNCTION_0_62();
    sub_26982B93C(v43);
    sub_269855494();
    v44 = *(v53 + 32);
    v44(v21, v55, v30);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v45);
    sub_269855494();
    v46 = *(v52 + 32);
    v46(v50 + v39[5], v54, v56);
    OUTLINED_FUNCTION_47();
    sub_269855494();
    v44(v50 + v39[6], v49, v30);
    OUTLINED_FUNCTION_46();
    sub_269855494();
    v47 = OUTLINED_FUNCTION_65_3();
    v48(v47);
    v46(v50 + v39[7], v51, v56);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t _s16SiriVideoIntents0B10DataModelsO0B25ResultDisambiguationModelV10systemTextSSvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  sub_269852694();
  return v1;
}

uint64_t (*VideoDataModels.ButtonModel.label.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_13(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  *(v0 + 32) = OUTLINED_FUNCTION_124_1();
  return sub_26982EB30;
}

uint64_t sub_269827624()
{
  sub_269852624();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_6_50(v1, v7);
  v3(v2);
  sub_269852674();
  v4 = OUTLINED_FUNCTION_22_3();
  return v5(v4);
}

uint64_t VideoDataModels.ButtonModel.actionProperty.setter()
{
  OUTLINED_FUNCTION_29_14();
  sub_269852624();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_6_50(v1, v7);
  v3(v2);
  type metadata accessor for VideoDataModels.ButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  sub_2698526A4();
  v4 = OUTLINED_FUNCTION_22_3();
  return v5(v4);
}

uint64_t (*VideoDataModels.ButtonModel.actionProperty.modify())()
{
  v1 = OUTLINED_FUNCTION_31_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_39(v2);
  type metadata accessor for VideoDataModels.ButtonModel(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_8_37();
  *(v0 + 32) = sub_269852684();
  return sub_26982EB30;
}

void sub_2698278A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2698278EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E6F69746361 && a2 == 0xEE0079747265706FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_269855584();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2698279B8(char a1)
{
  if (a1)
  {
    return 0x72506E6F69746361;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_269827A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2698278EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269827A28(uint64_t a1)
{
  v2 = sub_26982BA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269827A64(uint64_t a1)
{
  v2 = sub_26982BA00();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.ButtonModel.encode(to:)()
{
  OUTLINED_FUNCTION_76_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F40, &qword_269868990);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_21_2();
  sub_26982BA00();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_44_9();
  sub_2698556F4();
  v11[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_1_57();
  v3 = sub_26982A814(v2);
  OUTLINED_FUNCTION_21_22(v3);
  if (!v0)
  {
    type metadata accessor for VideoDataModels.ButtonModel(0);
    OUTLINED_FUNCTION_48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
    OUTLINED_FUNCTION_1_57();
    sub_26982B93C(v4);
    v5 = OUTLINED_FUNCTION_148_0();
    OUTLINED_FUNCTION_22_21(v5, v11, v6, v7, v8);
  }

  v9 = OUTLINED_FUNCTION_68_5();
  v10(v9);
  OUTLINED_FUNCTION_158();
}

void VideoDataModels.ButtonModel.init(from:)()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F10, &qword_269868978);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_73_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323ED0, &qword_269868870);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_29_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F50, &qword_269868998);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34_12();
  type metadata accessor for VideoDataModels.ButtonModel(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  v8 = OUTLINED_FUNCTION_54_4();
  OUTLINED_FUNCTION_56_5(v8, v9);
  sub_26982BA00();
  OUTLINED_FUNCTION_105_0();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_0_62();
    sub_26982A814(v10);
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_123_0(v11, v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_107_0();
    v17(v16);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_0_62();
    v19 = sub_26982B93C(v18);
    OUTLINED_FUNCTION_84_2(v19);
    v20 = OUTLINED_FUNCTION_75_3();
    v21(v20, v1);
    v22 = OUTLINED_FUNCTION_93_3();
    v23(v22);
    sub_26982A098();
    __swift_destroy_boxed_opaque_existential_0(v3);
    sub_26982A0F0();
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_269827EEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C73746C75736572 && a2 == 0xEF77656956747369;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000269881200 == a2;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001DLL && 0x8000000269881220 == a2;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000269881240 == a2;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000269881260 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_269855584();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_26982809C(char a1)
{
  result = 0x4C73746C75736572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269828154(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2698281FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269827EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269828224(uint64_t a1)
{
  v2 = sub_26982BA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269828260(uint64_t a1)
{
  v2 = sub_26982BA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982829C(uint64_t a1)
{
  v2 = sub_26982BB54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698282D8(uint64_t a1)
{
  v2 = sub_26982BB54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269828314(uint64_t a1)
{
  v2 = sub_26982BBFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269828350(uint64_t a1)
{
  v2 = sub_26982BBFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982838C(uint64_t a1)
{
  v2 = sub_26982BC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698283C8(uint64_t a1)
{
  v2 = sub_26982BC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269828404(uint64_t a1)
{
  v2 = sub_26982BB00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269828440(uint64_t a1)
{
  v2 = sub_26982BB00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26982847C(uint64_t a1)
{
  v2 = sub_26982BBA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2698284B8(uint64_t a1)
{
  v2 = sub_26982BBA8();

  return MEMORY[0x2821FE720](a1, v2);
}

void VideoDataModels.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F58, &qword_2698689A0);
  OUTLINED_FUNCTION_8();
  v104 = v31;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_29_16();
  v33 = OUTLINED_FUNCTION_2_13();
  v103 = type metadata accessor for VideoDataModels.ButtonModel(v33);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_130(v36 - v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F60, &qword_2698689A8);
  OUTLINED_FUNCTION_8();
  v102 = v37;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_29_16();
  v39 = OUTLINED_FUNCTION_2_13();
  v101 = type metadata accessor for VideoDataModels.ConfirmationViewModel(v39);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F68, &qword_2698689B0);
  OUTLINED_FUNCTION_8();
  v100 = v41;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_29_16();
  v43 = OUTLINED_FUNCTION_2_13();
  v99 = type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(v43);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_1();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F70, &qword_2698689B8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_35_2(v46);
  v97 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_35_2(v49 - v48);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F78, &qword_2698689C0);
  OUTLINED_FUNCTION_8();
  v95 = v50;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52_4();
  type metadata accessor for VideoDataModels.ResultsListModel(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_143_0();
  type metadata accessor for VideoDataModels(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_1();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325F80, &qword_2698689C8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_56_5(v30, v30[3]);
  sub_26982BA54();
  sub_2698556F4();
  sub_26982A098();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26982BAA8();
      a13 = 1;
      v86 = sub_26982BBFC();
      OUTLINED_FUNCTION_42_9(&type metadata for VideoDataModels.DisambiguationListCodingKeys, &a13, v87, v88, v86);
      OUTLINED_FUNCTION_61_2();
      sub_26982A3C0(v89);
      v90 = OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_170(v90, v91, v98, v97, v92);
      v93 = OUTLINED_FUNCTION_66_3();
      v94(v93, v98);
      goto LABEL_7;
    case 2u:
      sub_26982BAA8();
      OUTLINED_FUNCTION_47();
      v68 = sub_26982BBA8();
      OUTLINED_FUNCTION_42_9(&type metadata for VideoDataModels.VideoResultDisambiguationListCodingKeys, &a14, v69, v70, v68);
      OUTLINED_FUNCTION_56_6();
      sub_26982A3C0(v71);
      v72 = OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_170(v72, v73, v100, v99, v74);
      v75 = OUTLINED_FUNCTION_66_3();
      v76(v75, v100);
      goto LABEL_7;
    case 3u:
      sub_26982BAA8();
      a15 = 3;
      v77 = sub_26982BB54();
      OUTLINED_FUNCTION_42_9(&type metadata for VideoDataModels.ConfirmationViewCodingKeys, &a15, v78, v79, v77);
      OUTLINED_FUNCTION_55_6();
      sub_26982A3C0(v80);
      v81 = OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_170(v81, v82, v102, v101, v83);
      v84 = OUTLINED_FUNCTION_66_3();
      v85(v84, v102);
      goto LABEL_7;
    case 4u:
      sub_26982BAA8();
      a16 = 4;
      v59 = sub_26982BB00();
      OUTLINED_FUNCTION_42_9(&type metadata for VideoDataModels.StandardButtonViewCodingKeys, &a16, v60, v61, v59);
      OUTLINED_FUNCTION_57_4();
      sub_26982A3C0(v62);
      v63 = OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_170(v63, v64, v104, v103, v65);
      v66 = OUTLINED_FUNCTION_66_3();
      v67(v66, v104);
LABEL_7:
      sub_26982A0F0();
      v56 = OUTLINED_FUNCTION_5_25();
      break;
    default:
      OUTLINED_FUNCTION_5_25();
      sub_26982BAA8();
      sub_26982BC50();
      sub_2698554B4();
      OUTLINED_FUNCTION_58_2();
      sub_26982A3C0(v55);
      sub_269855514();
      (*(v95 + 8))(v26, v96);
      OUTLINED_FUNCTION_4_43();
      sub_26982A0F0();
      v56 = OUTLINED_FUNCTION_77_3();
      v58 = v105;
      break;
  }

  v57(v56, v58);
  OUTLINED_FUNCTION_44();
}

void VideoDataModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FD8, &qword_2698689D0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_29_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FE0, &qword_2698689D8);
  OUTLINED_FUNCTION_8();
  v131 = v33;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_29_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FE8, &qword_2698689E0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_130(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FF0, &qword_2698689E8);
  OUTLINED_FUNCTION_8();
  v130 = v37;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_29_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325FF8, &qword_2698689F0);
  OUTLINED_FUNCTION_8();
  v129 = v39;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_29_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326000, &qword_2698689F8);
  OUTLINED_FUNCTION_8();
  v133 = v42;
  v134 = v41;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_143_0();
  v132 = type metadata accessor for VideoDataModels(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_151();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_49_8();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_26_19();
  v135 = v31;
  OUTLINED_FUNCTION_56_5(v31, v31[3]);
  sub_26982BA54();
  sub_2698556E4();
  if (v27)
  {
    goto LABEL_10;
  }

  v50 = v26;
  v51 = sub_2698554A4();
  v55 = sub_26982B020(v51, 0);
  if (v53 == v54 >> 1)
  {
    v57 = v132;
    v56 = v133;
LABEL_9:
    v72 = sub_269855254();
    swift_allocError();
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325E08, &qword_269868928);
    *v74 = v57;
    v75 = sub_269855404();
    OUTLINED_FUNCTION_122_1(v75, "Invalid number of keys found, expected one.");
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x277D84160], v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v56 + 8))(v50, v134);
LABEL_10:
    v76 = v135;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_44();
    return;
  }

  if (v53 < (v54 >> 1))
  {
    v58 = *(v52 + v53);
    sub_26982BCA4(v53 + 1, v54 >> 1, v55, v52, v53, v54);
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      switch(v58)
      {
        case 1:
          a13 = 1;
          v99 = sub_26982BBFC();
          OUTLINED_FUNCTION_28_18(&type metadata for VideoDataModels.DisambiguationListCodingKeys, &a13, v100, v101, v99);
          v102 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
          OUTLINED_FUNCTION_61_2();
          v104 = sub_26982A3C0(v103);
          OUTLINED_FUNCTION_165(v102, v105, v106, v107, v104);
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v125 = OUTLINED_FUNCTION_66_3();
          v126(v125, v130);
          v127 = OUTLINED_FUNCTION_13_30();
          v128(v127);
          swift_storeEnumTagMultiPayload();
          goto LABEL_17;
        case 2:
          OUTLINED_FUNCTION_47();
          v86 = sub_26982BBA8();
          OUTLINED_FUNCTION_28_18(&type metadata for VideoDataModels.VideoResultDisambiguationListCodingKeys, &a14, v87, v88, v86);
          v89 = type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(0);
          OUTLINED_FUNCTION_56_6();
          sub_26982A3C0(v90);
          OUTLINED_FUNCTION_146_0();
          OUTLINED_FUNCTION_164(v89, v91, v92, v93, v94);
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v112 = OUTLINED_FUNCTION_120_0();
          v113(v112);
          v114 = OUTLINED_FUNCTION_13_30();
          v115(v114);
          goto LABEL_16;
        case 3:
          a15 = 3;
          v95 = sub_26982BB54();
          OUTLINED_FUNCTION_28_18(&type metadata for VideoDataModels.ConfirmationViewCodingKeys, &a15, v96, v97, v95);
          type metadata accessor for VideoDataModels.ConfirmationViewModel(0);
          OUTLINED_FUNCTION_55_6();
          sub_26982A3C0(v98);
          OUTLINED_FUNCTION_146_0();
          sub_269855494();
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v116 = OUTLINED_FUNCTION_66_3();
          v117(v116, v131);
          v118 = OUTLINED_FUNCTION_13_30();
          v119(v118);
          swift_storeEnumTagMultiPayload();
LABEL_17:
          v124 = v135;
          break;
        case 4:
          a16 = 4;
          v77 = sub_26982BB00();
          OUTLINED_FUNCTION_28_18(&type metadata for VideoDataModels.StandardButtonViewCodingKeys, &a16, v78, v79, v77);
          v80 = type metadata accessor for VideoDataModels.ButtonModel(0);
          OUTLINED_FUNCTION_57_4();
          sub_26982A3C0(v81);
          OUTLINED_FUNCTION_146_0();
          OUTLINED_FUNCTION_164(v80, v82, v83, v84, v85);
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_120_0();
          v109(v108);
          v110 = OUTLINED_FUNCTION_13_30();
          v111(v110);
LABEL_16:
          swift_storeEnumTagMultiPayload();
          v124 = v135;
          break;
        default:
          a12 = 0;
          v63 = sub_26982BC50();
          OUTLINED_FUNCTION_28_18(&type metadata for VideoDataModels.ResultsListViewCodingKeys, &a12, v64, v65, v63);
          v66 = type metadata accessor for VideoDataModels.ResultsListModel(0);
          OUTLINED_FUNCTION_58_2();
          sub_26982A3C0(v67);
          OUTLINED_FUNCTION_126_0();
          OUTLINED_FUNCTION_165(v66, v68, v69, v70, v71);
          OUTLINED_FUNCTION_135();
          swift_unknownObjectRelease();
          v120 = OUTLINED_FUNCTION_66_3();
          v121(v120, v129);
          v122 = OUTLINED_FUNCTION_13_30();
          v123(v122);
          swift_storeEnumTagMultiPayload();
          v124 = v135;
          break;
      }

      sub_26982BAA8();
      sub_26982BAA8();
      v76 = v124;
      goto LABEL_11;
    }

    v57 = v132;
    v56 = v133;
    v50 = v26;
    goto LABEL_9;
  }

  __break(1u);
}

void VideoDataModels.VideoResult.init(dict:)()
{
  OUTLINED_FUNCTION_19_1();
  v63[2] = v1;
  v63[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_116_2();
  v4 = OUTLINED_FUNCTION_131();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_3();
  v65 = v7;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_151();
  MEMORY[0x28223BE20](v9);
  v11 = v63 - v10;
  v66 = 0;
  v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v12 = type metadata accessor for VideoDataModels.VideoResult(0);
  v13 = v12[5];
  v66 = 0;
  v67 = 0;
  v63[3] = v13;
  OUTLINED_FUNCTION_91_2();
  v14 = v12[6];
  v66 = 0;
  v67 = 0;
  v63[4] = v14;
  OUTLINED_FUNCTION_91_2();
  v66 = 0;
  v67 = 0;
  OUTLINED_FUNCTION_91_2();
  v15 = v12[8];
  v66 = 0;
  v67 = 0;
  v63[5] = v15;
  OUTLINED_FUNCTION_91_2();
  v16 = v12[9];
  v66 = 0;
  v67 = 0;
  v63[6] = v16;
  OUTLINED_FUNCTION_91_2();
  v17 = v12[10];
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  v63[0] = v18;
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  sub_269802A74();
  v63[7] = v17;
  sub_269852674();
  v64 = v11;
  sub_26969B0C0(v11, &qword_280323030, &qword_26985BAE0);
  sub_269852624();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_269802A74();
  sub_269852674();
  sub_26969B0C0(v0, &qword_2803239E0, &unk_26985D8B0);
  v66 = 0;
  v67 = 0;
  sub_269852674();
  sub_26981CFD4();
  if (v68)
  {
    OUTLINED_FUNCTION_30_19(v26, v27, v28, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_35_14();
    if (v31)
    {
      v30 = 0;
    }
  }

  else
  {
    sub_26969B0C0(&v66, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  v66 = v29;
  v67 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  OUTLINED_FUNCTION_167_0();
  v35 = v65;
  if (v68)
  {
    OUTLINED_FUNCTION_30_19(v32, v33, v34, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v66, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  v37 = OUTLINED_FUNCTION_136_0(v36);
  OUTLINED_FUNCTION_169_0(v37);
  sub_26981CFD4();
  if (v68)
  {
    OUTLINED_FUNCTION_30_19(v38, v39, v40, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v66, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  v42 = OUTLINED_FUNCTION_136_0(v41);
  OUTLINED_FUNCTION_169_0(v42);
  sub_26981CFD4();
  if (v68)
  {
    OUTLINED_FUNCTION_30_19(v43, v44, v45, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v66, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  v47 = OUTLINED_FUNCTION_136_0(v46);
  OUTLINED_FUNCTION_169_0(v47);
  sub_26981CFD4();
  if (v68)
  {
    OUTLINED_FUNCTION_30_19(v48, v49, v50, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v66, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  v52 = OUTLINED_FUNCTION_136_0(v51);
  OUTLINED_FUNCTION_169_0(v52);
  OUTLINED_FUNCTION_167_0();
  if (v68)
  {
    if (OUTLINED_FUNCTION_30_19(v53, v54, v55, MEMORY[0x277D837D0]))
    {

      OUTLINED_FUNCTION_16_16();
      sub_269851C64();
      swift_bridgeObjectRelease_n();
      goto LABEL_23;
    }
  }

  else
  {
    sub_26969B0C0(&v66, &qword_280322F88, qword_26985AB90);
  }

  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v63[0]);
LABEL_23:
  sub_269802A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_2698526A4();
  sub_26969B0C0(v35, &qword_280323030, &qword_26985BAE0);
  sub_26981CFD4();

  if (v68)
  {
    OUTLINED_FUNCTION_30_19(v59, v60, v61, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_35_14();
  }

  else
  {
    sub_26969B0C0(&v66, &qword_280322F88, qword_26985AB90);
    OUTLINED_FUNCTION_106_2();
  }

  OUTLINED_FUNCTION_136_0(v62);
  sub_2698526A4();
  OUTLINED_FUNCTION_21_0();
}

void VideoDataModels.VideoResult.asDict()()
{
  OUTLINED_FUNCTION_19_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_8_9(v1);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_16_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230C0, &unk_269859340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269860B70;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_269852694();
  *(inited + 48) = v9;
  *(inited + 64) = 0x656C746974;
  *(inited + 72) = 0xE500000000000000;
  type metadata accessor for VideoDataModels.VideoResult(0);
  sub_269852694();
  *(inited + 80) = v9;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x8000000269881100;
  OUTLINED_FUNCTION_104_1();
  *(inited + 112) = v9;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000269881120;
  OUTLINED_FUNCTION_104_1();
  *(inited + 144) = v9;
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x8000000269881140;
  OUTLINED_FUNCTION_104_1();
  *(inited + 176) = v9;
  *(inited + 192) = 0x6567616D69;
  *(inited + 200) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A08, &unk_26985BB10);
  sub_269852694();
  v4 = sub_269851C74();
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    sub_26969B0C0(v0, &qword_280323030, &qword_26985BAE0);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = sub_269851BF4();
    v6 = v7;
    (*(*(v4 - 8) + 8))(v0, v4);
  }

  *(inited + 208) = v5;
  *(inited + 216) = v6;
  *(inited + 224) = 0x7470697263736564;
  *(inited + 232) = 0xEB000000006E6F69;
  OUTLINED_FUNCTION_104_1();
  *(inited + 240) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  v8 = sub_269854A04();
  sub_2697DB828(v8);

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26982A098()
{
  OUTLINED_FUNCTION_31_2();
  v1(0);
  OUTLINED_FUNCTION_4_3();
  v2 = OUTLINED_FUNCTION_50_0();
  v3(v2);
  return v0;
}

uint64_t sub_26982A0F0()
{
  v1 = OUTLINED_FUNCTION_29_14();
  v2(v1);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(v0);
  return v0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_26982A178()
{
  result = qword_280325C30;
  if (!qword_280325C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C30);
  }

  return result;
}

unint64_t sub_26982A1CC()
{
  result = qword_280325C48;
  if (!qword_280325C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A08, &unk_26985BB10);
    sub_26982A258();
    sub_26982A30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C48);
  }

  return result;
}

unint64_t sub_26982A258()
{
  result = qword_280325C50;
  if (!qword_280325C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323030, &qword_26985BAE0);
    sub_26982A3C0(&qword_2803250B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C50);
  }

  return result;
}

unint64_t sub_26982A30C()
{
  result = qword_280325C58;
  if (!qword_280325C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323030, &qword_26985BAE0);
    sub_26982A3C0(&unk_280325C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C58);
  }

  return result;
}

unint64_t sub_26982A3C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982A404()
{
  result = qword_280325C68;
  if (!qword_280325C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A490();
    sub_26982A544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C68);
  }

  return result;
}

unint64_t sub_26982A490()
{
  result = qword_280325C70;
  if (!qword_280325C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803239E0, &unk_26985D8B0);
    sub_26982A3C0(&unk_280325C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C70);
  }

  return result;
}

unint64_t sub_26982A544()
{
  result = qword_280325C80;
  if (!qword_280325C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803239E0, &unk_26985D8B0);
    sub_26982A3C0(&unk_280325C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325C80);
  }

  return result;
}

unint64_t sub_26982A5F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A00, &unk_26985BF00);
    sub_26982BDEC(&unk_280325C40);
    sub_26982BDEC(&qword_2803230D8);
    result = OUTLINED_FUNCTION_140_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982A6A8()
{
  result = qword_280325CA0;
  if (!qword_280325CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A08, &unk_26985BB10);
    sub_26982A258();
    sub_26982A30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CA0);
  }

  return result;
}

unint64_t sub_26982A734()
{
  result = qword_280325CA8;
  if (!qword_280325CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A10, &unk_26985BF10);
    sub_26982A490();
    sub_26982A544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CA8);
  }

  return result;
}

unint64_t sub_26982A7C0()
{
  result = qword_280325CB8;
  if (!qword_280325CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CB8);
  }

  return result;
}

unint64_t sub_26982A814(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323ED0, &qword_269868870);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982A880()
{
  result = qword_280325CE8;
  if (!qword_280325CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CE8);
  }

  return result;
}

unint64_t sub_26982A8D4()
{
  result = qword_280325CF0;
  if (!qword_280325CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325CD8, &qword_269868898);
    sub_26982A960();
    sub_26982AA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CF0);
  }

  return result;
}

unint64_t sub_26982A960()
{
  result = qword_280325CF8;
  if (!qword_280325CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A18, &unk_26985BB20);
    sub_26982A3C0(&unk_280325D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325CF8);
  }

  return result;
}

unint64_t sub_26982AA14()
{
  result = qword_280325D08;
  if (!qword_280325D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A18, &unk_26985BB20);
    sub_26982A3C0(&unk_280325D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D08);
  }

  return result;
}

unint64_t sub_26982AAC8()
{
  result = qword_280325D18;
  if (!qword_280325D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A20, &unk_26985D920);
    sub_26982AB54();
    sub_26982AC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D18);
  }

  return result;
}

unint64_t sub_26982AB54()
{
  result = qword_280325D20;
  if (!qword_280325D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803239D8, &unk_26985BAD0);
    sub_26982A3C0(&unk_280325D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D20);
  }

  return result;
}

unint64_t sub_26982AC08()
{
  result = qword_280325D30;
  if (!qword_280325D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803239D8, &unk_26985BAD0);
    sub_26982A3C0(&unk_280325D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D30);
  }

  return result;
}

unint64_t sub_26982ACBC()
{
  result = qword_280325D48;
  if (!qword_280325D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325CD8, &qword_269868898);
    sub_26982A960();
    sub_26982AA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D48);
  }

  return result;
}

unint64_t sub_26982AD48()
{
  result = qword_280325D50;
  if (!qword_280325D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A20, &unk_26985D920);
    sub_26982AB54();
    sub_26982AC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D50);
  }

  return result;
}

unint64_t sub_26982ADD4()
{
  result = qword_280325D98;
  if (!qword_280325D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325D98);
  }

  return result;
}

unint64_t sub_26982AE28()
{
  result = qword_280325DA0;
  if (!qword_280325DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DA0);
  }

  return result;
}

unint64_t sub_26982AE7C()
{
  result = qword_280325DA8;
  if (!qword_280325DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DA8);
  }

  return result;
}

unint64_t sub_26982AED0()
{
  result = qword_280325DB0;
  if (!qword_280325DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DB0);
  }

  return result;
}

unint64_t sub_26982AF24()
{
  result = qword_280325DB8;
  if (!qword_280325DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DB8);
  }

  return result;
}

unint64_t sub_26982AF78()
{
  result = qword_280325DC0;
  if (!qword_280325DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DC0);
  }

  return result;
}

unint64_t sub_26982AFCC()
{
  result = qword_280325DC8;
  if (!qword_280325DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325DC8);
  }

  return result;
}

uint64_t sub_26982B020(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_26982B068()
{
  result = qword_280325E18;
  if (!qword_280325E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E18);
  }

  return result;
}

unint64_t sub_26982B0BC()
{
  result = qword_280325E20;
  if (!qword_280325E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A80, &unk_269868860);
    sub_26982B148();
    sub_26982B1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E20);
  }

  return result;
}

unint64_t sub_26982B148()
{
  result = qword_280325E28;
  if (!qword_280325E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A78, &unk_26985BEF0);
    sub_26982A3C0(&unk_280325E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E28);
  }

  return result;
}

unint64_t sub_26982B1FC()
{
  result = qword_280325E38;
  if (!qword_280325E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A78, &unk_26985BEF0);
    sub_26982A3C0(&unk_280325E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E38);
  }

  return result;
}

unint64_t sub_26982B2B0()
{
  result = qword_280325E50;
  if (!qword_280325E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A80, &unk_269868860);
    sub_26982B148();
    sub_26982B1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E50);
  }

  return result;
}

unint64_t sub_26982B33C()
{
  result = qword_280325E70;
  if (!qword_280325E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E70);
  }

  return result;
}

unint64_t sub_26982B390()
{
  result = qword_280325E78;
  if (!qword_280325E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325E58, &qword_269868940);
    sub_26982B41C();
    sub_26982B4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E78);
  }

  return result;
}

unint64_t sub_26982B41C()
{
  result = qword_280325E80;
  if (!qword_280325E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A70, &unk_26985BEE0);
    sub_26982A3C0(&unk_280325E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E80);
  }

  return result;
}

unint64_t sub_26982B4D0()
{
  result = qword_280325E90;
  if (!qword_280325E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323A70, &unk_26985BEE0);
    sub_26982A3C0(&unk_280325E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325E90);
  }

  return result;
}

unint64_t sub_26982B584()
{
  result = qword_280325EA0;
  if (!qword_280325EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325E60, &qword_269868948);
    sub_26982B610();
    sub_26982B664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EA0);
  }

  return result;
}

unint64_t sub_26982B610()
{
  result = qword_280325EA8;
  if (!qword_280325EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EA8);
  }

  return result;
}

unint64_t sub_26982B664()
{
  result = qword_280325EB0;
  if (!qword_280325EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EB0);
  }

  return result;
}

unint64_t sub_26982B6B8()
{
  result = qword_280325EC0;
  if (!qword_280325EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325E58, &qword_269868940);
    sub_26982B41C();
    sub_26982B4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EC0);
  }

  return result;
}

unint64_t sub_26982B744()
{
  result = qword_280325EC8;
  if (!qword_280325EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325E60, &qword_269868948);
    sub_26982B610();
    sub_26982B664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EC8);
  }

  return result;
}

unint64_t sub_26982B7D0()
{
  result = qword_280325EE0;
  if (!qword_280325EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325EE0);
  }

  return result;
}

unint64_t sub_26982B824(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325ED0, &qword_269868960);
    sub_26982A3C0(&unk_280325EF0);
    sub_26982A3C0(&unk_280325EF8);
    result = OUTLINED_FUNCTION_140_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982B8E8()
{
  result = qword_280325F20;
  if (!qword_280325F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325F20);
  }

  return result;
}

unint64_t sub_26982B93C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325F10, &qword_269868978);
    sub_26982A3C0(&unk_280325C78);
    sub_26982A3C0(&unk_280325C88);
    result = OUTLINED_FUNCTION_140_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26982BA00()
{
  result = qword_280325F48;
  if (!qword_280325F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325F48);
  }

  return result;
}

unint64_t sub_26982BA54()
{
  result = qword_280325F88;
  if (!qword_280325F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325F88);
  }

  return result;
}

uint64_t sub_26982BAA8()
{
  OUTLINED_FUNCTION_31_2();
  v1(0);
  OUTLINED_FUNCTION_4_3();
  v2 = OUTLINED_FUNCTION_50_0();
  v3(v2);
  return v0;
}

unint64_t sub_26982BB00()
{
  result = qword_280325F90;
  if (!qword_280325F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325F90);
  }

  return result;
}

unint64_t sub_26982BB54()
{
  result = qword_280325FA0;
  if (!qword_280325FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325FA0);
  }

  return result;
}

unint64_t sub_26982BBA8()
{
  result = qword_280325FB0;
  if (!qword_280325FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325FB0);
  }

  return result;
}

unint64_t sub_26982BBFC()
{
  result = qword_280325FC0;
  if (!qword_280325FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325FC0);
  }

  return result;
}

unint64_t sub_26982BC50()
{
  result = qword_280325FD0;
  if (!qword_280325FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325FD0);
  }

  return result;
}

uint64_t sub_26982BCA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_26982BDEC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_99_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26982C2D4(uint64_t a1)
{
  result = type metadata accessor for VideoDataModels.ResultsListModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VideoDataModels.DisambiguateItemsModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for VideoDataModels.VideoResultDisambiguationModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for VideoDataModels.ConfirmationViewModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for VideoDataModels.ButtonModel(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26982C3AC(uint64_t a1)
{
  sub_26982C958(319, &qword_280326058, &qword_280322EA0, &unk_2698577C0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26982C958(319, &qword_280326060, &qword_280323030, &qword_26985BAE0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_26982C958(319, &qword_280326068, &qword_2803239E0, &unk_26985D8B0);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_26982C4D8(uint64_t a1)
{
  sub_26982C9AC(319, &qword_280326080, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26982C958(319, &qword_280326060, &qword_280323030, &qword_26985BAE0);
    if (v2 <= 0x3F)
    {
      sub_26982C958(319, &qword_280326068, &qword_2803239E0, &unk_26985D8B0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26982C5DC(uint64_t a1)
{
  sub_26982C958(319, &qword_280326098, &qword_280323A18, &unk_26985BB20);
  if (v1 <= 0x3F)
  {
    sub_26982C958(319, &qword_2803260A0, &qword_2803239D8, &unk_26985BAD0);
    if (v2 <= 0x3F)
    {
      sub_26982C958(319, &qword_280326058, &qword_280322EA0, &unk_2698577C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26982C6E8(uint64_t a1)
{
  sub_26982C9AC(319, &qword_280326080, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26982C958(319, &qword_280326058, &qword_280322EA0, &unk_2698577C0);
    if (v2 <= 0x3F)
    {
      sub_26982C958(319, &qword_2803260B8, &qword_280323A78, &unk_26985BEF0);
      if (v3 <= 0x3F)
      {
        sub_26982C958(319, &qword_280326068, &qword_2803239E0, &unk_26985D8B0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26982C7F4(uint64_t a1)
{
  result = sub_269851C74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26982C884(uint64_t a1)
{
  sub_26982C9AC(319, &qword_280326080, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26982C958(319, &qword_2803260E0, &qword_280323A70, &unk_26985BEE0);
    if (v2 <= 0x3F)
    {
      sub_26982C9AC(319, &qword_2803260E8, &type metadata for ResponseViewIDs);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26982C958(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2698526B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26982C9AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2698526B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26982CA68(uint64_t a1)
{
  sub_26982CB34(319, &qword_280326118, MEMORY[0x277D62ED0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26982C9AC(319, &qword_280326080, MEMORY[0x277D837D0]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_26982CB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2698526B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_70Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_33_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_93_2();
  if (*(v13 + 84) == v7)
  {
    v14 = OUTLINED_FUNCTION_103_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    OUTLINED_FUNCTION_152_0();
    v14 = v8 + v16;
  }

  return __swift_getEnumTagSinglePayload(v14, v7, v15);
}

uint64_t __swift_store_extra_inhabitant_index_71Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_93_2();
  if (*(v11 + 84) == a3)
  {
    OUTLINED_FUNCTION_94_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    OUTLINED_FUNCTION_160_0();
  }

  OUTLINED_FUNCTION_108_0();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_26982CD1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_26982C9AC(319, &qword_280326080, MEMORY[0x277D837D0]);
  if (v7 <= 0x3F)
  {
    sub_26982CB34(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26982CE48(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_112_1(-1);
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
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_112_1(v8);
}

_BYTE *sub_26982CECC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_111_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_109(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_110_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26982CFA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_112_1(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_112_1(v8);
}

_BYTE *sub_26982D02C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_111_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_109(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_110_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoDataModels.BasicDisambiguationItem.Thumbnail.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26982D1E4(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_142(a1);
}

_BYTE *sub_26982D230(_BYTE *result, int a2, int a3)
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

uint64_t sub_26982D31C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_112_1(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_112_1(v8);
}

_BYTE *sub_26982D3A0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_111_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_109(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_110_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26982D46C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_112_1(-1);
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
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_112_1((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_112_1(v8);
}

_BYTE *sub_26982D4F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_111_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_109(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_110_1(result, v6);
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoDataModels.VideoResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26982D69C()
{
  result = qword_280326130;
  if (!qword_280326130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326130);
  }

  return result;
}

unint64_t sub_26982D6F4()
{
  result = qword_280326138;
  if (!qword_280326138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326138);
  }

  return result;
}

unint64_t sub_26982D74C()
{
  result = qword_280326140;
  if (!qword_280326140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326140);
  }

  return result;
}

unint64_t sub_26982D7A4()
{
  result = qword_280326148;
  if (!qword_280326148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326148);
  }

  return result;
}

unint64_t sub_26982D7FC()
{
  result = qword_280326150;
  if (!qword_280326150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326150);
  }

  return result;
}

unint64_t sub_26982D854()
{
  result = qword_280326158;
  if (!qword_280326158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326158);
  }

  return result;
}

unint64_t sub_26982D8AC()
{
  result = qword_280326160;
  if (!qword_280326160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326160);
  }

  return result;
}

unint64_t sub_26982D904()
{
  result = qword_280326168;
  if (!qword_280326168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326168);
  }

  return result;
}

unint64_t sub_26982D95C()
{
  result = qword_280326170;
  if (!qword_280326170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326170);
  }

  return result;
}

unint64_t sub_26982D9B4()
{
  result = qword_280326178;
  if (!qword_280326178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326178);
  }

  return result;
}

unint64_t sub_26982DA0C()
{
  result = qword_280326180;
  if (!qword_280326180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326180);
  }

  return result;
}

unint64_t sub_26982DA64()
{
  result = qword_280326188;
  if (!qword_280326188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326188);
  }

  return result;
}

unint64_t sub_26982DABC()
{
  result = qword_280326190;
  if (!qword_280326190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326190);
  }

  return result;
}

unint64_t sub_26982DB14()
{
  result = qword_280326198;
  if (!qword_280326198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326198);
  }

  return result;
}

unint64_t sub_26982DB6C()
{
  result = qword_2803261A0;
  if (!qword_2803261A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261A0);
  }

  return result;
}

unint64_t sub_26982DBC4()
{
  result = qword_2803261A8;
  if (!qword_2803261A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261A8);
  }

  return result;
}

unint64_t sub_26982DC1C()
{
  result = qword_2803261B0;
  if (!qword_2803261B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261B0);
  }

  return result;
}

unint64_t sub_26982DC74()
{
  result = qword_2803261B8;
  if (!qword_2803261B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261B8);
  }

  return result;
}

unint64_t sub_26982DCCC()
{
  result = qword_2803261C0;
  if (!qword_2803261C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261C0);
  }

  return result;
}

unint64_t sub_26982DD24()
{
  result = qword_2803261C8;
  if (!qword_2803261C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261C8);
  }

  return result;
}

unint64_t sub_26982DD7C()
{
  result = qword_2803261D0;
  if (!qword_2803261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261D0);
  }

  return result;
}

unint64_t sub_26982DDD4()
{
  result = qword_2803261D8;
  if (!qword_2803261D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261D8);
  }

  return result;
}

unint64_t sub_26982DE2C()
{
  result = qword_2803261E0;
  if (!qword_2803261E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261E0);
  }

  return result;
}

unint64_t sub_26982DE84()
{
  result = qword_2803261E8;
  if (!qword_2803261E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261E8);
  }

  return result;
}

unint64_t sub_26982DEDC()
{
  result = qword_2803261F0;
  if (!qword_2803261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261F0);
  }

  return result;
}

unint64_t sub_26982DF34()
{
  result = qword_2803261F8;
  if (!qword_2803261F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803261F8);
  }

  return result;
}

unint64_t sub_26982DF8C()
{
  result = qword_280326200;
  if (!qword_280326200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326200);
  }

  return result;
}

unint64_t sub_26982DFE4()
{
  result = qword_280326208;
  if (!qword_280326208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326208);
  }

  return result;
}

unint64_t sub_26982E03C()
{
  result = qword_280326210;
  if (!qword_280326210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326210);
  }

  return result;
}

unint64_t sub_26982E094()
{
  result = qword_280326218;
  if (!qword_280326218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326218);
  }

  return result;
}

unint64_t sub_26982E0EC()
{
  result = qword_280326220;
  if (!qword_280326220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326220);
  }

  return result;
}

unint64_t sub_26982E144()
{
  result = qword_280326228;
  if (!qword_280326228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326228);
  }

  return result;
}

unint64_t sub_26982E19C()
{
  result = qword_280326230;
  if (!qword_280326230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326230);
  }

  return result;
}

unint64_t sub_26982E1F4()
{
  result = qword_280326238;
  if (!qword_280326238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326238);
  }

  return result;
}

unint64_t sub_26982E24C()
{
  result = qword_280326240;
  if (!qword_280326240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326240);
  }

  return result;
}

unint64_t sub_26982E2A4()
{
  result = qword_280326248;
  if (!qword_280326248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326248);
  }

  return result;
}

unint64_t sub_26982E2FC()
{
  result = qword_280326250;
  if (!qword_280326250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326250);
  }

  return result;
}

unint64_t sub_26982E354()
{
  result = qword_280326258;
  if (!qword_280326258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326258);
  }

  return result;
}

unint64_t sub_26982E3AC()
{
  result = qword_280326260;
  if (!qword_280326260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326260);
  }

  return result;
}

unint64_t sub_26982E404()
{
  result = qword_280326268;
  if (!qword_280326268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326268);
  }

  return result;
}

unint64_t sub_26982E45C()
{
  result = qword_280326270;
  if (!qword_280326270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326270);
  }

  return result;
}

unint64_t sub_26982E4B4()
{
  result = qword_280326278;
  if (!qword_280326278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326278);
  }

  return result;
}

unint64_t sub_26982E50C()
{
  result = qword_280326280;
  if (!qword_280326280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326280);
  }

  return result;
}

unint64_t sub_26982E564()
{
  result = qword_280326288;
  if (!qword_280326288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326288);
  }

  return result;
}

unint64_t sub_26982E5BC()
{
  result = qword_280326290;
  if (!qword_280326290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326290);
  }

  return result;
}

unint64_t sub_26982E614()
{
  result = qword_280326298;
  if (!qword_280326298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326298);
  }

  return result;
}

unint64_t sub_26982E66C()
{
  result = qword_2803262A0;
  if (!qword_2803262A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262A0);
  }

  return result;
}

unint64_t sub_26982E6C4()
{
  result = qword_2803262A8;
  if (!qword_2803262A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262A8);
  }

  return result;
}

unint64_t sub_26982E71C()
{
  result = qword_2803262B0;
  if (!qword_2803262B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262B0);
  }

  return result;
}

unint64_t sub_26982E774()
{
  result = qword_2803262B8;
  if (!qword_2803262B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262B8);
  }

  return result;
}

unint64_t sub_26982E7CC()
{
  result = qword_2803262C0;
  if (!qword_2803262C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262C0);
  }

  return result;
}

unint64_t sub_26982E824()
{
  result = qword_2803262C8;
  if (!qword_2803262C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262C8);
  }

  return result;
}

unint64_t sub_26982E87C()
{
  result = qword_2803262D0;
  if (!qword_2803262D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262D0);
  }

  return result;
}

unint64_t sub_26982E8D4()
{
  result = qword_2803262D8;
  if (!qword_2803262D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262D8);
  }

  return result;
}

unint64_t sub_26982E92C()
{
  result = qword_2803262E0;
  if (!qword_2803262E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262E0);
  }

  return result;
}

unint64_t sub_26982E984()
{
  result = qword_2803262E8;
  if (!qword_2803262E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262E8);
  }

  return result;
}

unint64_t sub_26982E9DC()
{
  result = qword_2803262F0;
  if (!qword_2803262F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262F0);
  }

  return result;
}

unint64_t sub_26982EA34()
{
  result = qword_2803262F8;
  if (!qword_2803262F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803262F8);
  }

  return result;
}

unint64_t sub_26982EA8C()
{
  result = qword_280326300;
  if (!qword_280326300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326300);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_32()
{

  return sub_269802A74();
}

uint64_t OUTLINED_FUNCTION_20_19()
{

  return sub_26982A0F0();
}

uint64_t OUTLINED_FUNCTION_21_22(uint64_t a1)
{

  return sub_269855514();
}

uint64_t OUTLINED_FUNCTION_22_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269855514();
}

uint64_t OUTLINED_FUNCTION_28_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2698553F4();
}

uint64_t OUTLINED_FUNCTION_30_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_7()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;

  return sub_269852674();
}

uint64_t OUTLINED_FUNCTION_41_6(uint64_t a1, uint64_t a2)
{

  return sub_269855514();
}

uint64_t OUTLINED_FUNCTION_42_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2698554B4();
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2698554B4();
}

uint64_t OUTLINED_FUNCTION_47_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2698553F4();
}

uint64_t OUTLINED_FUNCTION_52_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2698526A4();
}

uint64_t OUTLINED_FUNCTION_62_3(uint64_t a1)
{

  return sub_2698526A4();
}

void *OUTLINED_FUNCTION_84_2(uint64_t a1)
{

  return sub_269855494();
}

uint64_t OUTLINED_FUNCTION_90_2()
{

  return sub_269852674();
}

uint64_t OUTLINED_FUNCTION_91_2()
{

  return sub_269852674();
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return sub_269852694();
}

uint64_t OUTLINED_FUNCTION_107_0()
{
  result = v0;
  *(v1 - 160) = v0;
  return result;
}

void *OUTLINED_FUNCTION_114_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_269855494();
}

void *OUTLINED_FUNCTION_121_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269855494();
}

uint64_t OUTLINED_FUNCTION_122_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return MEMORY[0x2821FD170](a1, 0xD00000000000002BLL, (a2 - 32) | 0x8000000000000000, 0);
}

void *OUTLINED_FUNCTION_123_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269855494();
}

uint64_t OUTLINED_FUNCTION_124_1()
{

  return sub_269852684();
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1)
{

  return sub_269852694();
}

uint64_t OUTLINED_FUNCTION_136_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = v1;
  return v2 - 112;
}

uint64_t OUTLINED_FUNCTION_139_0(uint64_t a1)
{

  return sub_2698526A4();
}

uint64_t OUTLINED_FUNCTION_140_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_141_0()
{

  return swift_getEnumCaseMultiPayload();
}

void *OUTLINED_FUNCTION_164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269855494();
}

void *OUTLINED_FUNCTION_165(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269855494();
}

void *OUTLINED_FUNCTION_166(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269855494();
}

double OUTLINED_FUNCTION_167_0()
{

  return sub_26981CFD4();
}

double OUTLINED_FUNCTION_168_0(uint64_t a1)
{

  return result;
}

uint64_t OUTLINED_FUNCTION_169_0(uint64_t a1)
{

  return sub_2698526A4();
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_269855514();
}

id sub_26982F6E0()
{
  sub_2696BAEF0();
  v0 = sub_2696CD66C(1);
  sub_26982F8B4(0x6C7070612E6D6F63, 0xEC00000076742E65, v0);
  if (qword_2803226C8 != -1)
  {
    swift_once();
  }

  v1 = sub_269851C74();
  __swift_project_value_buffer(v1, qword_28033D8F0);
  v2 = sub_269851C24();
  [v0 setPunchOutUri_];

  return v0;
}

uint64_t sub_26982F7A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_269851C74();
  __swift_allocate_value_buffer(v3, qword_28033D8F0);
  v4 = __swift_project_value_buffer(v3, qword_28033D8F0);
  sub_269851C64();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void sub_26982F8B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setBundleId_];
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_26982F998(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
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

uint64_t sub_26982F9D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_26982FA20(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_26982FA4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_3_50();
      sub_269855204();
      MEMORY[0x26D645A60](0xD000000000000033, 0x8000000269881490);
      v8 = OUTLINED_FUNCTION_2_43();
      MEMORY[0x26D645A60](v8);
      v4 = 0x646C65696620;
      v5 = 0xE600000000000000;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_3_50();
      sub_269855204();
      OUTLINED_FUNCTION_8_1();
      MEMORY[0x26D645A60](0xD00000000000002DLL);
      v6 = OUTLINED_FUNCTION_2_43();
      MEMORY[0x26D645A60](v6);
      MEMORY[0x26D645A60](0x3A746E65746E6920, 0xE900000000000020);
      v7 = sub_269855544();
      MEMORY[0x26D645A60](v7);

      break;
    case 3:
      OUTLINED_FUNCTION_8_1();
      break;
    default:
      OUTLINED_FUNCTION_3_50();
      sub_269855204();

      v4 = OUTLINED_FUNCTION_2_43();
LABEL_6:
      MEMORY[0x26D645A60](v4, v5);
      break;
  }
}

uint64_t sub_26982FDAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        return 0;
      }

      goto LABEL_21;
    case 2:
      if (a8 != 2)
      {
        return 0;
      }

      v10 = a1 == a5 && a2 == a6;
      if (v10)
      {
        return a3 == a7;
      }

      v11 = sub_269855584();
      result = 0;
      if (v11)
      {
        return a3 == a7;
      }

      return result;
    case 3:
      v13 = a3 | a2;
      if (a3 | a2 | a1)
      {
        if (a1 != 1 || v13)
        {
          if (a1 != 2 || v13)
          {
            if (a1 != 3 || v13)
            {
              if (a1 != 4 || v13)
              {
                if (a1 != 5 || v13)
                {
                  if (a1 != 6 || v13)
                  {
                    if (a1 != 7 || v13)
                    {
                      if (a1 != 8 || v13)
                      {
                        if (a1 != 9 || v13)
                        {
                          if (a1 != 10 || v13)
                          {
                            if (a1 != 11 || v13)
                            {
                              if (a1 != 12 || v13)
                              {
                                if (a1 != 13 || v13)
                                {
                                  if (a1 != 14 || v13)
                                  {
                                    OUTLINED_FUNCTION_0_64();
                                    if (!v10 || v46 != 15)
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_0_64();
                                    if (!v10 || v44 != 14)
                                    {
                                      return 0;
                                    }
                                  }
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_0_64();
                                  if (!v10 || v42 != 13)
                                  {
                                    return 0;
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_0_64();
                                if (!v10 || v40 != 12)
                                {
                                  return 0;
                                }
                              }
                            }

                            else
                            {
                              OUTLINED_FUNCTION_0_64();
                              if (!v10 || v38 != 11)
                              {
                                return 0;
                              }
                            }
                          }

                          else
                          {
                            OUTLINED_FUNCTION_0_64();
                            if (!v10 || v36 != 10)
                            {
                              return 0;
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0_64();
                          if (!v10 || v34 != 9)
                          {
                            return 0;
                          }
                        }
                      }

                      else
                      {
                        OUTLINED_FUNCTION_0_64();
                        if (!v10 || v32 != 8)
                        {
                          return 0;
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_64();
                      if (!v10 || v30 != 7)
                      {
                        return 0;
                      }
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_64();
                    if (!v10 || v28 != 6)
                    {
                      return 0;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_0_64();
                  if (!v10 || v26 != 5)
                  {
                    return 0;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_0_64();
                if (!v10 || v24 != 4)
                {
                  return 0;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_0_64();
              if (!v10 || v22 != 3)
              {
                return 0;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_0_64();
            if (!v10 || v20 != 2)
            {
              return 0;
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_64();
          if (!v10 || v14 != 1)
          {
            return 0;
          }
        }

        if (!(a7 | v15))
        {
          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_64();
        if (v10 && !(a7 | v19 | v18))
        {
          return 1;
        }
      }

      return 0;
    default:
      if (a8)
      {
        return 0;
      }

LABEL_21:
      if (a1 == a5 && a2 == a6)
      {
        return 1;
      }

      return sub_269855584();
  }
}

uint64_t sub_2698300B0(char a1)
{
  if (!a1)
  {
    return 0x736C6562614CLL;
  }

  if (a1 == 1)
  {
    return 0x657449616964654DLL;
  }

  return 0x6944736C6562614CLL;
}

void sub_269830114()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_269851E24();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v14 = [objc_opt_self() sharedInstance];
  if (v14)
  {
    v15 = v14;
    v24 = v6;
    if (v2)
    {
      if (v2 == 1)
      {
        v23 = 0xED0000657079546DLL;
        v6 = 0x657449616964654DLL;
      }

      else
      {
        OUTLINED_FUNCTION_29_17(0xEA00000000007463);
        v6 = v6 & 0xFFFFFFFFFFFFLL | 0x6944000000000000;
      }
    }

    else
    {
      OUTLINED_FUNCTION_29_17(0xE600000000000000);
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_269852C94();
    v26[2] = sub_269851DB4();
    v26[3] = v18;
    v26[0] = 45;
    v26[1] = 0xE100000000000000;
    v25[0] = 95;
    v25[1] = 0xE100000000000000;
    v19 = sub_269693054();
    v20 = sub_269855104(v26, v25, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837D0], v19, v19, v19);
    v22 = v21;
    (*(v9 + 8))(v13, v7);

    sub_269831E74(v24, v4, v6, v23, v17, v20, v22, v15);

    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    __break(1u);
  }
}

void sub_269830380()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_25_21();
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26985C7B0;
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_269831F68();
    *(v13 + 32) = v11;
    *(v13 + 40) = v9;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = v7;
    *(v13 + 80) = v5;
    *(v13 + 136) = v14;
    *(v13 + 144) = v15;
    *(v13 + 112) = v3;
    *(v13 + 120) = v1;

    OUTLINED_FUNCTION_50_0();
    sub_269854AB4();
    OUTLINED_FUNCTION_1_59();
  }

  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269830474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269830114();
  if (v6)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
    v8 = OUTLINED_FUNCTION_28_19(v7);
    *(v8 + 16) = xmmword_2698580D0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    v9 = sub_269831F68();
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    v10 = MEMORY[0x277D83C10];
    *(v8 + 96) = MEMORY[0x277D83B88];
    *(v8 + 104) = v10;
    *(v8 + 64) = v9;
    *(v8 + 72) = a3;

    OUTLINED_FUNCTION_50_0();
    sub_269854AB4();
    OUTLINED_FUNCTION_1_59();
  }

  return OUTLINED_FUNCTION_22_3();
}

uint64_t sub_26983055C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_38();
  sub_269830114();
  if (v4)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
    v6 = OUTLINED_FUNCTION_57_1(v5);
    *(v6 + 16) = xmmword_269857710;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_269831F68();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    OUTLINED_FUNCTION_50_0();
    sub_269854AB4();
    OUTLINED_FUNCTION_1_59();
  }

  return OUTLINED_FUNCTION_22_3();
}

uint64_t sub_26983060C()
{
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_25_21();
  if (v0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
    v2 = OUTLINED_FUNCTION_28_19(v1);
    *(v2 + 16) = xmmword_2698580D0;
    *(v2 + 56) = MEMORY[0x277D837D0];
    v3 = sub_269831F68();
    OUTLINED_FUNCTION_24_22(v3);

    OUTLINED_FUNCTION_50_0();
    sub_269854AB4();
    OUTLINED_FUNCTION_1_59();
  }

  return OUTLINED_FUNCTION_22_3();
}

uint64_t sub_2698306C8()
{
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_25_21();
  if (v0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
    v2 = OUTLINED_FUNCTION_28_19(v1);
    *(v2 + 16) = xmmword_2698580D0;
    *(v2 + 56) = MEMORY[0x277D837D0];
    v3 = sub_269831F68();
    OUTLINED_FUNCTION_24_22(v3);

    OUTLINED_FUNCTION_50_0();
    sub_269854AB4();
    OUTLINED_FUNCTION_1_59();
  }

  return OUTLINED_FUNCTION_22_3();
}

uint64_t sub_269830784(uint64_t a1, uint64_t a2)
{
  sub_269830114();
  if (v4)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
    v6 = OUTLINED_FUNCTION_57_1(v5);
    *(v6 + 16) = xmmword_269857710;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_269831F68();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    OUTLINED_FUNCTION_50_0();
    sub_269854AB4();
    OUTLINED_FUNCTION_1_59();
    swift_bridgeObjectRelease_n();
  }

  return OUTLINED_FUNCTION_22_3();
}

uint64_t sub_269830860(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    OUTLINED_FUNCTION_25_21();
    if (v4)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
      v6 = OUTLINED_FUNCTION_57_1(v5);
      *(v6 + 16) = xmmword_269857710;
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = sub_269831F68();
      *(v6 + 32) = a1;
      *(v6 + 40) = a2;
      OUTLINED_FUNCTION_23_21();
    }
  }

  return OUTLINED_FUNCTION_22_3();
}

uint64_t sub_269830930(void *a1)
{
  v2 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = [a1 type];
  if ((v9 - 2) < 2)
  {
    sub_269830E14();
    goto LABEL_6;
  }

  if (v9 == 1)
  {
    v16 = [a1 seasonCount];
    v17 = v16;
    if (!v16)
    {
      return 0;
    }

    v18 = [v16 integerValue];

    OUTLINED_FUNCTION_8_1();
    sub_269830114();
    if (v19)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
      v21 = OUTLINED_FUNCTION_57_1(v20);
      v22 = MEMORY[0x277D83B88];
      *(v21 + 16) = xmmword_269857710;
      v23 = MEMORY[0x277D83C10];
      *(v21 + 56) = v22;
      *(v21 + 64) = v23;
      *(v21 + 32) = v18;
      v12 = sub_269854AB4();
      v13 = v24;

      goto LABEL_7;
    }

    return 0;
  }

  if (v9 != 4)
  {
    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v2, qword_28033D910);
    (*(v4 + 16))(v8, v25, v2);
    v26 = sub_2698548B4();
    v27 = sub_269854F24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_269684000, v26, v27, "Unknown content type present. Unable to retrieve localized string", v28, 2u);
      MEMORY[0x26D647170](v28, -1, -1);
    }

    (*(v4 + 8))(v8, v2);
    return 0;
  }

  v10 = sub_269830C2C(a1);
LABEL_6:
  v12 = v10;
  v13 = v11;
LABEL_7:
  sub_26974FAB0(a1, &selRef_ratingValue);
  if (v14)
  {

    sub_26974FAB0(a1, &selRef_ratingSystem);
    if (v15)
    {

      v12 = sub_269830860(v12, v13);
    }
  }

  return v12;
}

uint64_t sub_269830C2C(void *a1)
{
  v1 = [a1 runtimeInMinutes];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];

    v4 = v3 % 60;
    v5 = (v3 % 60) & ~((v3 % 60) >> 63);
    if (v3 >= 60)
    {
      v11 = v3 / 0x3CuLL;
      if (v4 < 1)
      {
        OUTLINED_FUNCTION_33_17();
        sub_269830114();
        if (v17)
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
          v19 = OUTLINED_FUNCTION_57_1(v18);
          v20 = MEMORY[0x277D83B88];
          *(v19 + 16) = xmmword_269857710;
          v21 = MEMORY[0x277D83C10];
          *(v19 + 56) = v20;
          *(v19 + 64) = v21;
          *(v19 + 32) = v11;
          goto LABEL_12;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_25_21();
        if (v12)
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
          v14 = OUTLINED_FUNCTION_28_19(v13);
          *(v14 + 16) = xmmword_2698580D0;
          v15 = MEMORY[0x277D83B88];
          v16 = MEMORY[0x277D83C10];
          *(v14 + 56) = MEMORY[0x277D83B88];
          *(v14 + 64) = v16;
          *(v14 + 32) = v11;
          *(v14 + 96) = v15;
          *(v14 + 104) = v16;
          *(v14 + 72) = v5;
          goto LABEL_12;
        }
      }
    }

    else if (v4 >= 1)
    {
      OUTLINED_FUNCTION_33_17();
      sub_269830114();
      if (v6)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
        v8 = OUTLINED_FUNCTION_57_1(v7);
        v9 = MEMORY[0x277D83B88];
        *(v8 + 16) = xmmword_269857710;
        v10 = MEMORY[0x277D83C10];
        *(v8 + 56) = v9;
        *(v8 + 64) = v10;
        *(v8 + 32) = v5;
LABEL_12:
        OUTLINED_FUNCTION_50_0();
        sub_269854AB4();
        OUTLINED_FUNCTION_1_59();
      }
    }
  }

  return OUTLINED_FUNCTION_22_3();
}

void sub_269830E14()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v0;
  v4 = v3;
  sub_269851E84();
  OUTLINED_FUNCTION_8();
  v82 = v6;
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  sub_269851B94();
  OUTLINED_FUNCTION_8();
  v80 = v11;
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  v79 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - v15;
  v17 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12();
  *&v78 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_28();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v74 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v74 - v28;
  v30 = sub_26974FAB0(v4, &selRef_seasonNumber);
  if (v31)
  {
    v32 = v31;
    v74 = v30;
    v77 = v1;
    v33 = [v4 releaseDate];
    if (v33)
    {
      v34 = v33;
      v76 = v2;
      sub_269851D14();

      (*(v19 + 32))(v29, v27, v17);
      sub_269851E54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803232E8, &unk_26985A3A0);
      v35 = sub_269851E64();
      OUTLINED_FUNCTION_8();
      v75 = v17;
      v37 = v36;
      v38 = v19;
      v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_269857710;
      (*(v37 + 104))(v40 + v39, *MEMORY[0x277CC9988], v35);
      sub_2698318AC();
      sub_269851E34();

      (*(v82 + 8))(v9, v83);
      v41 = sub_269851B84();
      v43 = v42;
      (*(v80 + 8))(v16, v81);
      if ((v43 & 1) == 0)
      {
        v63 = v75;
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_25_21();
        if (v64)
        {
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
          v66 = OUTLINED_FUNCTION_28_19(v65);
          *(v66 + 16) = xmmword_2698580D0;
          *(v66 + 56) = MEMORY[0x277D837D0];
          v67 = sub_269831F68();
          *(v66 + 32) = v74;
          *(v66 + 40) = v32;
          v68 = MEMORY[0x277D83C10];
          *(v66 + 96) = MEMORY[0x277D83B88];
          *(v66 + 104) = v68;
          *(v66 + 64) = v67;
          *(v66 + 72) = v41;
          OUTLINED_FUNCTION_23_21();

          (*(v38 + 8))(v29, v63);
          goto LABEL_20;
        }

        (*(v38 + 8))(v29, v63);
        goto LABEL_19;
      }

      v17 = v75;
      (*(v38 + 8))(v29, v75);

      v19 = v38;
    }

    else
    {
    }

    v1 = v77;
  }

  v44 = sub_26974FAB0(v4, &selRef_seasonNumber);
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    OUTLINED_FUNCTION_8_38();
    sub_269830114();
    if (v48)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
      v50 = OUTLINED_FUNCTION_57_1(v49);
      *(v50 + 16) = xmmword_269857710;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = sub_269831F68();
      *(v50 + 32) = v46;
      *(v50 + 40) = v47;
      OUTLINED_FUNCTION_23_21();

      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  v51 = [v4 releaseDate];
  if (v51)
  {
    v52 = v78;
    sub_269851D14();

    (*(v19 + 32))(v1, v52, v17);
    sub_269851E54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803232E8, &unk_26985A3A0);
    v53 = sub_269851E64();
    OUTLINED_FUNCTION_8();
    v55 = v54;
    v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = swift_allocObject();
    v78 = xmmword_269857710;
    *(v57 + 16) = xmmword_269857710;
    (*(v55 + 104))(v57 + v56, *MEMORY[0x277CC9988], v53);
    sub_2698318AC();
    v58 = v79;
    sub_269851E34();

    (*(v82 + 8))(v9, v83);
    v59 = sub_269851B84();
    LOBYTE(v53) = v60;
    (*(v80 + 8))(v58, v81);
    if ((v53 & 1) == 0)
    {
      sub_269830114();
      if (v69)
      {
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803233F0, &unk_26985A580);
        v71 = OUTLINED_FUNCTION_57_1(v70);
        v72 = MEMORY[0x277D83B88];
        *(v71 + 16) = v78;
        v73 = MEMORY[0x277D83C10];
        *(v71 + 56) = v72;
        *(v71 + 64) = v73;
        *(v71 + 32) = v59;
        sub_269854AB4();
      }
    }

    v61 = OUTLINED_FUNCTION_42_1();
    v62(v61);
  }

LABEL_20:
  OUTLINED_FUNCTION_21_0();
}

void sub_26983159C(uint64_t a1)
{
  if (sub_26975004C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326330, &unk_26986A800);
    v2 = OUTLINED_FUNCTION_11_40();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = sub_26975004C();
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      sub_269750050();
      v5 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x26D646120](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_269855054();
      OUTLINED_FUNCTION_18_22();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        sub_269831FD4();
        v15 = *(*(v2 + 48) + 8 * v11);
        v16 = sub_269855064();

        if (v16)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v6;
      v17 = *(v2 + 16);
      v7 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v18;
LABEL_17:
      if (v3 == v19)
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

void sub_269831730(uint64_t a1)
{
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00), v2 = OUTLINED_FUNCTION_11_40(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = (a1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_269855674();

      sub_269854B34();
      sub_2698556C4();
      OUTLINED_FUNCTION_18_22();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (sub_269855584() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v22;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_2698318AC()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  v4 = sub_269851E64();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_20(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326310, &qword_26986A7F0), v15 = OUTLINED_FUNCTION_11_40(), *(v3 + 16)))
  {
    OUTLINED_FUNCTION_2_44();
    while (v16 < *(v3 + 16))
    {
      v17 = OUTLINED_FUNCTION_4_44(v16);
      (v3)(v17);
      v18 = *(v15 + 40);
      OUTLINED_FUNCTION_3_51();
      v20 = sub_269832018(&qword_280326318, v19, MEMORY[0x277CC99D8]);
      OUTLINED_FUNCTION_34_13(v20);
      OUTLINED_FUNCTION_30_20();
      while (1)
      {
        OUTLINED_FUNCTION_12_33();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_13_31();
        (v3)(v23);
        OUTLINED_FUNCTION_3_51();
        v25 = sub_269832018(&qword_280326320, v24, MEMORY[0x277CC99E0]);
        OUTLINED_FUNCTION_22_22(v25);
        v26 = OUTLINED_FUNCTION_31_17();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v1;
          goto LABEL_12;
        }

        v15 = v1;
      }

      v27 = OUTLINED_FUNCTION_9_39(v21);
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
      OUTLINED_FUNCTION_21_23();
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

    OUTLINED_FUNCTION_21_0();
  }
}

void sub_269831A98(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326328, &qword_26986A7F8), v2 = OUTLINED_FUNCTION_11_40(), v3 = v2, (v25 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v23 = v1;
    v24 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v24 + 8 * v4++);
      sub_269854A94();
      sub_269855674();
      v26 = v6;
      sub_269854B34();
      v7 = sub_2698556C4();

      OUTLINED_FUNCTION_18_22();
      v9 = ~v8;
      while (1)
      {
        v10 = v7 & v9;
        v11 = (v7 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v7 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = sub_269854A94();
        v16 = v15;
        if (v14 == sub_269854A94() && v16 == v17)
        {

          goto LABEL_17;
        }

        v19 = sub_269855584();

        if (v19)
        {

          goto LABEL_17;
        }

        v7 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v22;
LABEL_17:
      v1 = v23;
      if (v4 == v25)
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

void sub_269831C88()
{
  OUTLINED_FUNCTION_19_1();
  v3 = v2;
  v4 = sub_269851F04();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_20(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280326338, &unk_26986A810), v15 = OUTLINED_FUNCTION_11_40(), *(v3 + 16)))
  {
    OUTLINED_FUNCTION_2_44();
    while (v16 < *(v3 + 16))
    {
      v17 = OUTLINED_FUNCTION_4_44(v16);
      (v3)(v17);
      v18 = *(v15 + 40);
      OUTLINED_FUNCTION_5_46();
      v20 = sub_269832018(&qword_280325860, v19, MEMORY[0x277D39218]);
      OUTLINED_FUNCTION_34_13(v20);
      OUTLINED_FUNCTION_30_20();
      while (1)
      {
        OUTLINED_FUNCTION_12_33();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_13_31();
        (v3)(v23);
        OUTLINED_FUNCTION_5_46();
        v25 = sub_269832018(&qword_280323F50, v24, MEMORY[0x277D39220]);
        OUTLINED_FUNCTION_22_22(v25);
        v26 = OUTLINED_FUNCTION_31_17();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v1;
          goto LABEL_12;
        }

        v15 = v1;
      }

      v27 = OUTLINED_FUNCTION_9_39(v21);
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
      OUTLINED_FUNCTION_21_23();
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

    OUTLINED_FUNCTION_21_0();
  }
}

uint64_t sub_269831E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_269854A64();
  v11 = sub_269854A64();

  v12 = sub_269854A64();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_269854A94();

  return v14;
}

unint64_t sub_269831F68()
{
  result = qword_280326308;
  if (!qword_280326308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326308);
  }

  return result;
}

unint64_t sub_269831FD4()
{
  result = qword_280326360;
  if (!qword_280326360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280326360);
  }

  return result;
}

uint64_t sub_269832018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_2_44()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_11_40()
{

  return sub_2698551E4();
}

uint64_t OUTLINED_FUNCTION_22_22(uint64_t a1)
{

  return sub_269854A54();
}

uint64_t OUTLINED_FUNCTION_23_21()
{

  return sub_269854AB4();
}

double OUTLINED_FUNCTION_24_22(uint64_t a1)
{
  v5[4] = v4;
  v5[5] = v2;
  v5[12] = v6;
  v5[13] = a1;
  v5[8] = a1;
  v5[9] = v3;
  v5[10] = v1;

  return result;
}

void OUTLINED_FUNCTION_25_21()
{

  sub_269830114();
}

uint64_t OUTLINED_FUNCTION_28_19(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34_13(uint64_t a1)
{

  return sub_269854A24();
}

uint64_t ResponseViewIDs.rawValue.getter(char a1)
{
  result = 0x65704F6F65646976;
  switch(a1)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_0_65();
      result = v6 - 1;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 8:
      OUTLINED_FUNCTION_0_65();
      result = v7 | 2;
      break;
    case 5:
      OUTLINED_FUNCTION_0_65();
      result = v8 - 4;
      break;
    case 6:
      OUTLINED_FUNCTION_0_65();
      result = v5 + 6;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      return result;
    case 10:
      OUTLINED_FUNCTION_0_65();
      result = v9 + 3;
      break;
    case 11:
    case 12:
      OUTLINED_FUNCTION_0_65();
      result = v4 - 9;
      break;
    case 13:
      result = 0xD00000000000001DLL;
      break;
    default:
      OUTLINED_FUNCTION_0_65();
      result = v3 + 5;
      break;
  }

  return result;
}

SiriVideoIntents::ResponseViewIDs_optional __swiftcall ResponseViewIDs.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2698553E4();

  if (v1 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_269832510()
{
  result = qword_280326340;
  if (!qword_280326340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280326340);
  }

  return result;
}

SiriVideoIntents::ResponseViewIDs_optional sub_26983257C@<W0>(Swift::String *a1@<X0>, SiriVideoIntents::ResponseViewIDs_optional *a2@<X8>)
{
  result.value = ResponseViewIDs.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_2698325AC@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseViewIDs.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ResponseViewIDs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}
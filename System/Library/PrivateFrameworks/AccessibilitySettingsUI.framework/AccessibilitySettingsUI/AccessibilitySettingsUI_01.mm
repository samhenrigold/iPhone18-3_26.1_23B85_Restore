uint64_t sub_23D939880@<X0>(uint64_t (**a1)@<X0>(char *@<X8>)@<X8>)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v8[2] = v1[2];
  v4 = swift_allocObject();
  v5 = v1[1];
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v1[2];
  *a1 = sub_23D939FD4;
  a1[1] = v4;
  return sub_23D9388FC(v8, &v7);
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

uint64_t sub_23D939910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D939958(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_23D9399F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D939A40(uint64_t *a1, int a2)
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

uint64_t sub_23D939A88(uint64_t result, int a2, int a3)
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

unint64_t sub_23D939B34()
{
  result = qword_27E2F4C50;
  if (!qword_27E2F4C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4C48, &qword_23D9DD0D0);
    sub_23D939BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4C50);
  }

  return result;
}

unint64_t sub_23D939BC0()
{
  result = qword_27E2F4C58;
  if (!qword_27E2F4C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4C60, &qword_23D9DD0D8);
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
    sub_23D91F01C(&qword_27E2F4720, &qword_27E2F4728, &qword_23D9DC7A0, MEMORY[0x277CE08A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4C58);
  }

  return result;
}

uint64_t sub_23D939CA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D9DABB4();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23D939E34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D939E90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23D939EC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23D928310;

  return sub_23D938AD8();
}

uint64_t sub_23D939FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
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

uint64_t sub_23D93A0D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
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

uint64_t type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(uint64_t a1)
{
  result = qword_27E2F4C98;
  if (!qword_27E2F4C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D93A1EC(uint64_t a1)
{
  sub_23D93A270(319);
  if (v1 <= 0x3F)
  {
    sub_23D93A2C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23D93A270(uint64_t a1)
{
  if (!qword_27E2F4CA8)
  {
    sub_23D9DAC94();
    v1 = sub_23D9DA6E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F4CA8);
    }
  }
}

void sub_23D93A2C8()
{
  if (!qword_27E2F4CB0)
  {
    v0 = sub_23D9DA604();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F4CB0);
    }
  }
}

uint64_t sub_23D93A334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CD0, &qword_23D9DD250);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CC8, &unk_23D9DD240);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  sub_23D93BF30(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_23D93BF98(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_23D93B644(sub_23D93BFFC, v14, v8);
  KeyPath = swift_getKeyPath();
  v16 = &v8[*(v6 + 36)];
  *v16 = KeyPath;
  v16[8] = 0;
  v17._countAndFlagsBits = 0x45474155474E414CLL;
  v17._object = 0xEE00454C5449545FLL;
  v35 = AXSUILocString(_:)(v17);
  v18 = sub_23D93BE78();
  v19 = sub_23D91B650();
  v20 = MEMORY[0x277D837D0];
  sub_23D9DA064();

  sub_23D91F344(v8, &qword_27E2F4CD0, &qword_23D9DD250);
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B60, &unk_23D9DCF00);
  v35._countAndFlagsBits = v6;
  v35._object = v20;
  v36 = v18;
  v37 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v22 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
  v35._countAndFlagsBits = v21;
  v35._object = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v32;
  sub_23D9DA1A4();
  (*(v10 + 8))(v12, v9);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CB8, &unk_23D9DE880) + 36);
  type metadata accessor for AXSUINavigationManager(0);
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  v34 = v25;
  sub_23D9DA3A4();
  object = v35._object;
  *v24 = v35._countAndFlagsBits;
  *(v24 + 8) = object;
  *(v24 + 16) = swift_getKeyPath();
  *(v24 + 24) = 0;
  v27 = type metadata accessor for AXNavigationSink(0);
  v28 = *(v27 + 24);
  *(v24 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  swift_storeEnumTagMultiPayload();
  v29 = *(v27 + 28);
  *(v24 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  return swift_storeEnumTagMultiPayload();
}

double sub_23D93A7D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v55 = a3;
  v51 = a1;
  v54 = a4;
  v7 = type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0);
  v8 = *(v7 - 8);
  *&v62 = v7 - 8;
  *&v57 = v8;
  v53 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D9D8954();
  v11 = *(v10 - 8);
  v56 = v10 - 8;
  v58 = v11;
  v12 = v11;
  v13 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v49 - v15;
  v63 = &v49 - v15;
  v17 = sub_23D9D89C4();
  v60 = v17;
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a2, v17);
  v19 = *(v18 + 56);
  v59 = v18 + 56;
  v61 = v19;
  v19(v16, 0, 1, v17);
  sub_23D9DA9B4();
  v20 = sub_23D9DA9A4();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v50 = *(v12 + 16);
  v23 = v10;
  v50(&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v24 = v52;
  sub_23D93BF30(a3, v52);
  v25 = sub_23D9DA9A4();
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = (v13 + *(v57 + 80) + v26) & ~*(v57 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = MEMORY[0x277D85700];
  (*(v12 + 32))(v28 + v26, v49, v23);
  sub_23D93BF98(v24, v28 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9DA594();
  v57 = v71;
  v30 = v72;
  v29 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_23D9DC3E0;
  v50((v31 + v26), v51, v23);
  v32 = sub_23D93D8F8(v31);
  swift_setDeallocating();
  (*(v12 + 8))(v31 + v26, v23);
  swift_deallocClassInstance();
  *&v64 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();

  v33 = v69;
  v34 = v55 + *(v62 + 28);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  *&v64 = v35;
  *(&v64 + 1) = v36;
  LOBYTE(v65) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  v62 = v70;
  sub_23D9DA584();
  v37 = v66;
  v38 = v67;
  LOBYTE(v24) = v68;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_23D9DA3A4();
  v39 = v65;
  v40 = v54;
  *v54 = v64;
  *(v40 + 2) = v39;
  v41 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v42 = v41[5];
  v61(v40 + v42, 1, 1, v60);
  v43 = v40 + v41[7];
  *v43 = swift_getKeyPath();
  v43[40] = 0;
  v44 = v41[11];
  *(v40 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  sub_23D93DA98(v63, v40 + v42);
  v45 = v40 + v41[8];
  *v45 = v57;
  *(v45 + 2) = v30;
  *(v45 + 3) = v29;
  v46 = v40 + v41[9];
  *v46 = v33;
  result = *&v62;
  *(v46 + 8) = v62;
  *(v40 + v41[6]) = 1;
  v48 = v40 + v41[10];
  *v48 = v37;
  *(v48 + 1) = v38;
  v48[16] = v24;
  return result;
}

uint64_t sub_23D93ADC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D9D8954();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = *a1;
  v19 = a1[1];
  v27 = v18;
  v20 = sub_23D9DA9F4();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  (*(v12 + 16))(v14, a4, v11);
  sub_23D93BF30(a5, v10);
  sub_23D9DA9B4();

  v21 = sub_23D9DA9A4();
  v22 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v23 = (v13 + *(v28 + 80) + v22) & ~*(v28 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 2) = v21;
  *(v24 + 3) = v25;
  *(v24 + 4) = v27;
  *(v24 + 5) = v19;
  (*(v12 + 32))(&v24[v22], v14, v11);
  sub_23D93BF98(v10, &v24[v23]);
  sub_23D9BB718(0, 0, v17, &unk_23D9DD3F8, v24);
}

uint64_t sub_23D93B080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v8 = sub_23D9D88A4();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v7[20] = swift_task_alloc();
  sub_23D9D8DA4();
  v7[21] = swift_task_alloc();
  v9 = sub_23D9D90B4();
  v7[22] = v9;
  v7[23] = *(v9 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  sub_23D9DA9B4();
  v7[26] = sub_23D9DA9A4();
  v11 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D93B244, v11, v10);
}

uint64_t sub_23D93B244()
{
  v1 = *(v0 + 112);

  if (v1)
  {
    v32 = *(v0 + 192);
    v30 = *(v0 + 184);
    v31 = *(v0 + 176);
    v2 = *(v0 + 160);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v28 = *(v0 + 136);
    v29 = *(v0 + 200);
    v5 = *(v0 + 120);
    v6 = sub_23D9D8954();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v2, v5, v6);
    (*(v7 + 56))(v2, 0, 1, v6);

    sub_23D9D8D74();
    sub_23D9D8894();
    sub_23D9D8874();
    (*(v4 + 8))(v3, v28);
    sub_23D9D9054();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
    sub_23D9DA6A4();
    v8 = *(v0 + 96);
    v9 = *MEMORY[0x277CE7910];
    swift_beginAccess();
    v10 = *&v8[v9];

    (*(v30 + 16))(v32, v29, v31);
    v11 = sub_23D9DAB04();
    v13 = v12;
    v14 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_23D93C6D8(0, v14[2] + 1, 1, v14, &qword_27E2F4CF8, &qword_23D9DD400, MEMORY[0x277CE78C8]);
      *v13 = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_23D93C6D8((v16 > 1), v17 + 1, 1, v14, &qword_27E2F4CF8, &qword_23D9DD400, MEMORY[0x277CE78C8]);
      *v13 = v14;
    }

    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);
    v22 = *(v0 + 128);
    v14[2] = v17 + 1;
    (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v18, v20);
    v11();

    v23 = (v22 + *(type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0) + 20));
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v23) = *(v23 + 16);
    *(v0 + 72) = v24;
    *(v0 + 80) = v25;
    *(v0 + 88) = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
    sub_23D9DA564();
    (*(v21 + 8))(v19, v20);
  }

  v26 = *(v0 + 8);

  return v26();
}

double sub_23D93B644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CE8, &unk_23D9DE890);
  v11 = v10[17];
  v12 = sub_23D9D8954();
  v13 = *(*(v12 - 8) + 56);
  v13(a3 + v11, 1, 1, v12);
  v14 = v10[18];
  *(a3 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v15 = a3 + v10[19];
  v24 = 1;
  sub_23D9DA3A4();
  v16 = v26;
  *v15 = v25;
  *(v15 + 8) = v16;
  v17 = a3 + v10[20];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a3 + v10[21];
  *v18 = swift_getKeyPath();
  *(v18 + 40) = 0;
  v13(v9, 1, 1, v12);
  sub_23D93C220(v9, v6);
  sub_23D9DA3A4();
  sub_23D91F344(v9, &qword_27E2F4210, &qword_23D9DBE60);
  v19 = v23;
  *a3 = v22;
  *(a3 + 8) = v19;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

uint64_t sub_23D93B878(uint64_t a1)
{
  v2 = sub_23D9D9BC4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_23D9D9BA4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  sub_23D9D94B4();
  v7 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
  MEMORY[0x23EEF2F00](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D93BA64(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D93BF30(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D93BF98(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = 1162760004;
  v10 = 0xE400000000000000;
  return sub_23D9DA404();
}

uint64_t sub_23D93BBA4(uint64_t a1)
{
  type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  return sub_23D9DA564();
}

uint64_t sub_23D93BC14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CB8, &unk_23D9DE880);
  sub_23D93BC8C();
  return sub_23D9D96D4();
}

unint64_t sub_23D93BC8C()
{
  result = qword_27E2F4CC0;
  if (!qword_27E2F4CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4CB8, &unk_23D9DE880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4CC8, &unk_23D9DD240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B60, &unk_23D9DCF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4CD0, &qword_23D9DD250);
    sub_23D93BE78();
    sub_23D91B650();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B50, &qword_23D9DCE20);
    sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D93DB08(&qword_27E2F63D0, type metadata accessor for AXNavigationSink, &unk_23D9DEED4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4CC0);
  }

  return result;
}

unint64_t sub_23D93BE78()
{
  result = qword_27E2F4CD8;
  if (!qword_27E2F4CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4CD0, &qword_23D9DD250);
    sub_23D91F01C(&qword_27E2F4CE0, &qword_27E2F4CE8, &unk_23D9DE890, &protocol conformance descriptor for AXSUITTSLanguageList<A, B>);
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4CD8);
  }

  return result;
}

uint64_t sub_23D93BF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D93BF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_23D93BFFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_23D93A7D4(a1, a2, v8, a3);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_23D93C1A8()
{
  v1 = *(type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D93BBA4(v2);
}

uint64_t sub_23D93C220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D93C290()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23D93C2D0()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(*(type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0) - 8) + 80);
  v6 = (v3 + v4 + v5) & ~v5;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_23D93C45C(uint64_t *a1)
{
  v3 = *(sub_23D9D8954() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_23D93ADC8(a1, v7, v8, v1 + v4, v9);
}

char *sub_23D93C534(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D00, &qword_23D9DD408);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_23D93C6D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_23D93C8B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D10, &qword_23D9DD418);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_23D93C9B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D08, &qword_23D9DD410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23D93CAC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23D93DB08(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v33 = a2;
  v11 = sub_23D9DA874();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23D93DB08(&qword_27E2F4730, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v21 = sub_23D9DA894();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23D93D100(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23D93CDA4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23D9D8954();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CF0, &unk_23D9DD3E0);
  result = sub_23D9DAE44();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23D93DB08(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
      result = sub_23D9DA874();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23D93D100(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23D93CDA4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23D93D3A4();
      goto LABEL_12;
    }

    sub_23D93D5DC(v11 + 1);
  }

  v13 = *v3;
  sub_23D93DB08(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v14 = sub_23D9DA874();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_23D93DB08(&qword_27E2F4730, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v22 = sub_23D9DA894();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23D9DAFE4();
  __break(1u);
  return result;
}

void *sub_23D93D3A4()
{
  v1 = v0;
  v2 = sub_23D9D8954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CF0, &unk_23D9DD3E0);
  v6 = *v0;
  v7 = sub_23D9DAE34();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_23D93D5DC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23D9D8954();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CF0, &unk_23D9DD3E0);
  v7 = sub_23D9DAE44();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23D93DB08(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
      result = sub_23D9DA874();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23D93D8F8(uint64_t a1)
{
  v2 = sub_23D9D8954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_23D93DB08(&qword_27E2F58C0, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  result = MEMORY[0x23EEF3D60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_23D93CAC4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_23D93DA98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D93DB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D93DB50()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(*(type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0) - 8) + 80);
  v6 = (v3 + v4 + v5) & ~v5;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_23D93DCE4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23D9D8954() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_23D928310;

  return sub_23D93B080(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_23D93DEA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[9];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_23D93E054(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[9];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t type metadata accessor for VoiceRotorItemView(uint64_t a1)
{
  result = qword_27E2F4D48;
  if (!qword_27E2F4D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D93E238(uint64_t a1)
{
  sub_23D93E528(319, &qword_27E2F4338, &type metadata for AXSUIVoiceOverSpeechViewContext, MEMORY[0x277CDF470]);
  if (v1 <= 0x3F)
  {
    sub_23D93E460(319, &qword_27E2F4D58, MEMORY[0x277CDFA20], MEMORY[0x277CDF470]);
    if (v2 <= 0x3F)
    {
      sub_23D93E460(319, &qword_27E2F4D60, MEMORY[0x277CE78C8], MEMORY[0x277CE1200]);
      if (v3 <= 0x3F)
      {
        sub_23D93E4C4(319, &qword_27E2F4D68, &qword_27E2F41B8, &qword_23D9DBE20, MEMORY[0x277CE1200]);
        if (v4 <= 0x3F)
        {
          sub_23D93E4C4(319, &qword_27E2F4D70, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277CE1200]);
          if (v5 <= 0x3F)
          {
            sub_23D93E4C4(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
            if (v6 <= 0x3F)
            {
              sub_23D93E528(319, &qword_27E2F46A0, MEMORY[0x277D839B0], MEMORY[0x277CE10B0]);
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

void sub_23D93E460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D93E4C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_23D93E528(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23D93E594@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x28223BE20](v2);
  v33 = &v29 - v4;
  v5 = sub_23D9D8DA4();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23D9D90B4();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VoiceRotorItemView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D80, &qword_23D9DD4D8);
  MEMORY[0x28223BE20](v29);
  v15 = &v29 - v14;
  sub_23D93F5FC(v1, &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  sub_23D93F8E4(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v37 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D90, &qword_23D9DD4E8);
  sub_23D93FA04();
  sub_23D9DA404();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  MEMORY[0x23EEF3850](v18);
  sub_23D9D9094();
  (*(v8 + 8))(v10, v30);
  v19 = sub_23D9D8D84();
  v21 = v20;
  (*(v31 + 8))(v7, v32);
  v22 = &v15[*(v29 + 36)];
  v23 = type metadata accessor for AXSUIVoiceLoader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3D4();
  KeyPath = swift_getKeyPath();
  *v22 = v19;
  v22[1] = v21;
  v25 = v22 + *(v23 + 24);
  *v25 = KeyPath;
  v25[8] = 0;
  v26 = v33;
  sub_23D9D9B54();
  sub_23D93FAF0();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  v27 = v34;
  sub_23D9D9FA4();
  (*(v35 + 8))(v26, v27);
  return sub_23D91F344(v15, &qword_27E2F4D80, &qword_23D9DD4D8);
}

uint64_t sub_23D93EA1C(uint64_t a1)
{
  v2 = sub_23D9D90B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VoiceRotorItemView(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  MEMORY[0x23EEF3850](v7);
  v8 = sub_23D9D9064();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v11 = a1 + *(v6 + 28);
  v12 = *(v11 + 8);
  v14[2] = *v11;
  v14[3] = v12;
  v15 = *(v11 + 16);
  v14[0] = v8;
  v14[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4DE8, &qword_23D9DE9E0);
  return sub_23D9DA564();
}

double sub_23D93EB6C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23D9D9664();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for VoiceRotorItemView(0);
  sub_23D95DE1C(v5);
  v6 = (v3 + 8);
  if (sub_23D9D9654())
  {
    v22 = sub_23D9D9AB4();
    LOBYTE(v23) = 1;
    sub_23D93FCC4();
  }

  else
  {
    v22 = sub_23D9D99B4();
    LOBYTE(v23) = 1;
    sub_23D93FC00();
  }

  v7 = sub_23D9DA764();
  (*v6)(v5, v2);

  sub_23D93ED44(&v12);
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v17 = v12;
  v18 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v22 = v12;
  v23 = v13;
  sub_23D93FC54(&v17, v11);
  sub_23D91F344(&v22, &qword_27E2F4DB8, &unk_23D9E2850);

  *a1 = v7;
  v8 = v17;
  *(a1 + 24) = v18;
  v9 = v20;
  *(a1 + 40) = v19;
  *(a1 + 56) = v9;
  result = *&v21;
  *(a1 + 72) = v21;
  *(a1 + 8) = v8;
  return result;
}

uint64_t sub_23D93ED44@<X0>(uint64_t *a1@<X8>)
{
  v90 = a1;
  v72 = sub_23D9D89C4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23D9D8954();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v73 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v70 - v4;
  v5 = sub_23D9D8DA4();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D9D8C74();
  v92 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  v14 = sub_23D9D90B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = type metadata accessor for VoiceRotorItemView(0);
  v22 = *(v21 + 24);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  v78 = v22;
  v77 = v23;
  MEMORY[0x23EEF3850]();
  v24 = sub_23D9D9034();
  v26 = v25;
  v27 = *(v15 + 8);
  v79 = v14;
  v28 = v14;
  v29 = v27;
  v27(v20, v28);
  v76 = v7;
  v80 = v21;
  if (!v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    sub_23D9DA3B4();
    v30 = v92;
    if ((*(v92 + 48))(v13, 1, v7))
    {
      sub_23D91F344(v13, &qword_27E2F4460, &qword_23D9DC2A0);
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    else
    {
      v31 = v74;
      (*(v30 + 16))(v74, v13, v7);
      sub_23D91F344(v13, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v24 = v32;
      v33 = v30;
      v26 = v34;
      (*(v33 + 8))(v31, v7);
    }
  }

  v96 = v24;
  v97 = v26;
  sub_23D91B650();
  v35 = sub_23D9D9F04();
  v85 = v36;
  v86 = v35;
  v81 = v37;
  v87 = v38;
  MEMORY[0x23EEF3850](v77);
  v39 = v82;
  sub_23D9D9094();
  v29(v17, v79);
  v40 = v88;
  sub_23D9D8CC4();
  (*(v83 + 8))(v39, v84);
  v41 = v89;
  v42 = v91;
  if ((*(v89 + 48))(v40, 1, v91))
  {
    sub_23D91F344(v40, &qword_27E2F4210, &qword_23D9DBE60);
  }

  else
  {
    v48 = v73;
    (*(v41 + 16))(v73, v40, v42);
    sub_23D91F344(v40, &qword_27E2F4210, &qword_23D9DBE60);
    v46 = sub_23D9D8934();
    v47 = v49;
    (*(v41 + 8))(v48, v42);
    if (v47)
    {
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v43 = v75;
  sub_23D9DA3B4();
  v44 = v92;
  v45 = v76;
  if ((*(v92 + 48))(v43, 1, v76))
  {
    sub_23D91F344(v43, &qword_27E2F4460, &qword_23D9DC2A0);
  }

  else
  {
    v50 = v74;
    (*(v44 + 16))(v74, v43, v45);
    sub_23D91F344(v43, &qword_27E2F4460, &qword_23D9DC2A0);
    v51 = v70;
    sub_23D9D8C04();
    (*(v44 + 8))(v50, v45);
    v46 = sub_23D9D8964();
    v47 = v52;
    (*(v71 + 8))(v51, v72);
    if (v47)
    {

      goto LABEL_14;
    }
  }

  swift_bridgeObjectRelease_n();
  v46 = 0;
  v47 = 0xE000000000000000;
LABEL_14:
  v96 = v46;
  v97 = v47;
  v53 = sub_23D9D9F04();
  v55 = v54;
  v57 = v56;
  sub_23D9DA2F4();
  v58 = sub_23D9D9EB4();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_23D9274BC(v53, v55, v57 & 1);

  v65 = v81 & 1;
  LOBYTE(v96) = v81 & 1;
  v95 = v81 & 1;
  v94 = 1;
  v93 = v62 & 1;
  v66 = v90;
  v68 = v85;
  v67 = v86;
  *v90 = v86;
  v66[1] = v68;
  *(v66 + 16) = v65;
  v66[3] = v87;
  v66[4] = 0;
  *(v66 + 40) = 1;
  v66[6] = v58;
  v66[7] = v60;
  *(v66 + 64) = v62 & 1;
  v66[9] = v64;
  sub_23D91E0AC(v67, v68, v65);

  sub_23D91E0AC(v58, v60, v62 & 1);

  sub_23D9274BC(v58, v60, v62 & 1);

  sub_23D9274BC(v67, v68, v96);
}

uint64_t sub_23D93F5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceRotorItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D93F660()
{
  v1 = type metadata accessor for VoiceRotorItemView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_23D91F080(*v2, *(v2 + 8));
  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[6];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10) + 32);
  v7 = sub_23D9D90B4();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = v2 + v1[9];
  v9 = sub_23D9D8C74();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);

  return swift_deallocObject();
}

uint64_t sub_23D93F8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceRotorItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D93F948()
{
  v1 = *(type metadata accessor for VoiceRotorItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D93EA1C(v2);
}

double sub_23D93F9A8@<D0>(uint64_t a1@<X8>)
{
  sub_23D93EB6C(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

unint64_t sub_23D93FA04()
{
  result = qword_27E2F4D98;
  if (!qword_27E2F4D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D90, &qword_23D9DD4E8);
    sub_23D91F01C(&qword_27E2F4DA0, &qword_27E2F4DA8, &unk_23D9DD4F0, MEMORY[0x277CDF508]);
    sub_23D91F01C(&qword_27E2F4DB0, &qword_27E2F4DB8, &unk_23D9E2850, MEMORY[0x277CE14C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4D98);
  }

  return result;
}

unint64_t sub_23D93FAF0()
{
  result = qword_27E2F4DC0;
  if (!qword_27E2F4DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D80, &qword_23D9DD4D8);
    sub_23D91F01C(&qword_27E2F4DC8, &qword_27E2F4DD0, &qword_23D9DD528, MEMORY[0x277CDF030]);
    sub_23D93FBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4DC0);
  }

  return result;
}

unint64_t sub_23D93FBA8()
{
  result = qword_27E2F4818;
  if (!qword_27E2F4818)
  {
    type metadata accessor for AXSUIVoiceLoader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4818);
  }

  return result;
}

unint64_t sub_23D93FC00()
{
  result = qword_27E2F4DD8;
  if (!qword_27E2F4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4DD8);
  }

  return result;
}

uint64_t sub_23D93FC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4DB8, &unk_23D9E2850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D93FCC4()
{
  result = qword_27E2F4DE0;
  if (!qword_27E2F4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4DE0);
  }

  return result;
}

uint64_t sub_23D93FD18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D80, &qword_23D9DD4D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  sub_23D93FAF0();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D93FDDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  sub_23D91F2DC(v1 + *(v10 + 24), v9, &qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9664();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D93FFE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  sub_23D91F2DC(v1 + *(v10 + 28), v9, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9574();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LiveSpeechCategoryDetailView.categoryDetailBackgroundColor.getter()
{
  v0 = sub_23D9D9464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - v5;
  sub_23D9473A8(type metadata accessor for LiveSpeechCategoryDetailView, v11 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3C8], v0);
  v7 = sub_23D9D9454();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    v11[1] = sub_23D9DA2A4();
    sub_23D94038C();
    return sub_23D9DA324();
  }

  else
  {
    v10 = [objc_opt_self() systemGray6Color];
    return sub_23D9DA244();
  }
}

unint64_t sub_23D94038C()
{
  result = qword_27E2F4DF0;
  if (!qword_27E2F4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4DF0);
  }

  return result;
}

uint64_t sub_23D9403E4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v44 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v49 = v2;
  v50 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D9D9464();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E80, &qword_23D9DD670);
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v12 = v43 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E70, &qword_23D9DD660);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E60, &qword_23D9DD650);
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x28223BE20](v14);
  v52 = v43 - v15;
  v56 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F00, &unk_23D9DD830);
  sub_23D91F01C(&qword_27E2F4F08, &qword_27E2F4F00, &unk_23D9DD830, MEMORY[0x277CE14C8]);
  sub_23D9D9E84();
  v16 = v1;
  sub_23D9473A8(type metadata accessor for LiveSpeechCategoryDetailView, v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF3C8], v3);
  v17 = sub_23D9D9454();
  v18 = *(v4 + 8);
  v18(v6, v3);
  v18(v9, v3);
  if (v17)
  {
    v57 = sub_23D9DA2A4();
    sub_23D94038C();
    v19 = sub_23D9DA324();
  }

  else
  {
    v20 = [objc_opt_self() systemGray6Color];
    v19 = sub_23D9DA244();
  }

  v57 = v19;
  v21 = sub_23D91F01C(&qword_27E2F4E88, &qword_27E2F4E80, &qword_23D9DD670, MEMORY[0x277CDE5A8]);
  v22 = v46;
  v23 = v45;
  sub_23D9DA134();

  (*(v10 + 8))(v12, v23);
  v24 = v16 + *(v44 + 32);
  v43[1] = v16;
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v24) = *(v24 + 16);
  v57 = v25;
  v58 = v26;
  LOBYTE(v59) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA584();
  v27 = v16;
  v28 = v50;
  sub_23D94A314(v27, v50, type metadata accessor for LiveSpeechCategoryDetailView);
  v29 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v30 = swift_allocObject();
  sub_23D94A37C(v28, v30 + v29, type metadata accessor for LiveSpeechCategoryDetailView);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E78, &qword_23D9DD668);
  v57 = v23;
  v58 = MEMORY[0x277CE0F80];
  v59 = v21;
  v60 = MEMORY[0x277CE0F58];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_23D94957C();
  v35 = v51;
  v34 = v52;
  sub_23D9DA184();

  v36 = (*(v48 + 8))(v22, v35);
  MEMORY[0x28223BE20](v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E68, &qword_23D9DD658);
  v57 = v35;
  v58 = v31;
  v59 = OpaqueTypeConformance2;
  v60 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EA0, &qword_23D9DD678);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EA8, &qword_23D9DD680);
  v39 = sub_23D949638();
  v57 = v38;
  v58 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v57 = v37;
  v58 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v54;
  sub_23D9DA1A4();
  return (*(v53 + 8))(v34, v41);
}

uint64_t sub_23D940B8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F80, &qword_23D9DD9C0);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F88, &qword_23D9DD9C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F90, &qword_23D9DD9D0);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F98, &qword_23D9DD9D8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  sub_23D941050(&v32 - v20);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v22 = v37;
    v23 = [v37 isRecents];

    if (v23)
    {
      sub_23D941378(v10);
      sub_23D92A2BC(v10, v15, &qword_27E2F4F88, &qword_23D9DD9C8);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v32 = v15;
    (*(v8 + 56))(v15, v24, 1, v7);
    v25 = v34;
    sub_23D941A20(v34);
    v26 = v21;
    sub_23D91F2DC(v21, v18, &qword_27E2F4F98, &qword_23D9DD9D8);
    v27 = v33;
    sub_23D91F2DC(v15, v33, &qword_27E2F4F90, &qword_23D9DD9D0);
    v28 = v35;
    sub_23D91F2DC(v25, v35, &qword_27E2F4F80, &qword_23D9DD9C0);
    v29 = v36;
    sub_23D91F2DC(v18, v36, &qword_27E2F4F98, &qword_23D9DD9D8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FA0, &qword_23D9DD9E0);
    sub_23D91F2DC(v27, v29 + *(v30 + 48), &qword_27E2F4F90, &qword_23D9DD9D0);
    sub_23D91F2DC(v28, v29 + *(v30 + 64), &qword_27E2F4F80, &qword_23D9DD9C0);
    sub_23D91F344(v25, &qword_27E2F4F80, &qword_23D9DD9C0);
    sub_23D91F344(v32, &qword_27E2F4F90, &qword_23D9DD9D0);
    sub_23D91F344(v26, &qword_27E2F4F98, &qword_23D9DD9D8);
    sub_23D91F344(v28, &qword_27E2F4F80, &qword_23D9DD9C0);
    sub_23D91F344(v27, &qword_27E2F4F90, &qword_23D9DD9D0);
    return sub_23D91F344(v18, &qword_27E2F4F98, &qword_23D9DD9D8);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D941050@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5120, &qword_23D9DDBD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5128, &qword_23D9DDBD8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5130, &qword_23D9DDBE0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v23 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5138, &qword_23D9DDBE8);
  sub_23D94B3E8();
  sub_23D9DA684();
  sub_23D9DA734();
  sub_23D9D9764();
  (*(v4 + 32))(v9, v6, v3);
  v14 = &v9[*(v7 + 36)];
  v15 = v30;
  *(v14 + 4) = v29;
  *(v14 + 5) = v15;
  *(v14 + 6) = v31;
  v16 = v26;
  *v14 = v25;
  *(v14 + 1) = v16;
  v17 = v28;
  *(v14 + 2) = v27;
  *(v14 + 3) = v17;
  sub_23D9D9504();
  sub_23D94B538();
  sub_23D9DA074();
  sub_23D91F344(v9, &qword_27E2F5128, &qword_23D9DDBD8);
  v24 = LiveSpeechCategoryDetailView.categoryDetailBackgroundColor.getter();
  v18 = sub_23D9DA4D4();
  v19 = v22;
  (*(v11 + 32))(v22, v13, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F98, &qword_23D9DD9D8);
  *(v19 + *(result + 36)) = v18;
  return result;
}

uint64_t sub_23D941378@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v45 = sub_23D9D9A84();
  v36 = *(v45 - 8);
  v40 = v36;
  MEMORY[0x28223BE20](v45);
  v44 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23D9D9CE4();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FA8, &qword_23D9DD9E8);
  MEMORY[0x28223BE20](v35);
  v8 = (&v34 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FB0, &qword_23D9DD9F0);
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F88, &qword_23D9DD9C8);
  MEMORY[0x28223BE20](v37);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v38 = &v34 - v16;
  MEMORY[0x28223BE20](v17);
  v46 = &v34 - v18;
  *v8 = sub_23D9DA734();
  v8[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FB8, &qword_23D9DD9F8);
  sub_23D946AFC(v2, v8 + *(v20 + 44));
  sub_23D9D9CC4();
  v21 = sub_23D91F01C(&qword_27E2F4FC0, &qword_27E2F4FA8, &qword_23D9DD9E8, MEMORY[0x277CE11B0]);
  sub_23D9DA0D4();
  (*(v4 + 8))(v6, v39);
  sub_23D91F344(v8, &qword_27E2F4FA8, &qword_23D9DD9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FC8, &qword_23D9DDA00);
  v22 = v40;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23D9DC3E0;
  sub_23D9D9A64();
  v48._countAndFlagsBits = v23;
  sub_23D949044(&qword_27E2F4FD0, MEMORY[0x277CE01E8], MEMORY[0x277CE01F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FD8, &qword_23D9DDA08);
  sub_23D91F01C(&qword_27E2F4FE0, &qword_27E2F4FD8, &qword_23D9DDA08, MEMORY[0x277D83970]);
  v25 = v44;
  v24 = v45;
  sub_23D9DADD4();
  v48._countAndFlagsBits = v35;
  v48._object = v21;
  v26 = v38;
  swift_getOpaqueTypeConformance2();
  v27 = v42;
  sub_23D9DA104();
  (*(v22 + 8))(v25, v24);
  (*(v43 + 8))(v12, v27);
  v28._object = 0x800000023D9E3F40;
  v28._countAndFlagsBits = 0xD000000000000017;
  v48 = AXSUILocString(_:)(v28);
  sub_23D91B650();
  sub_23D9D9684();

  sub_23D91F344(v14, &qword_27E2F4F88, &qword_23D9DD9C8);
  if (*v41)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v29 = sub_23D9543E4(v48._countAndFlagsBits);
    v31 = v30;

    v48._countAndFlagsBits = v29;
    v48._object = v31;
    v32 = v46;
    sub_23D9D9694();

    sub_23D91F344(v26, &qword_27E2F4F88, &qword_23D9DD9C8);
    sub_23D9D96A4();
    return sub_23D91F344(v32, &qword_27E2F4F88, &qword_23D9DD9C8);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D941A20@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5030, &qword_23D9DDA38);
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5038, &qword_23D9DDA40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5040, &qword_23D9DDA48);
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5048, &qword_23D9DDA50);
  sub_23D94AC4C();
  v16 = v15;
  sub_23D9DA684();
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v17 = v44;
    v18 = [v44 isRecents];

    if (v18 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), , sub_23D9D9384(), , , , v19 = v44, v20 = [v44 isSaved], v19, (v20))
    {
      v22 = 1;
      v23 = v41;
    }

    else
    {
      v38[3] = v38;
      MEMORY[0x28223BE20](v21);
      v38[2] = &v38[-4];
      v38[-2] = v1;
      v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50A8, &unk_23D9DDA80);
      v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49E8, &unk_23D9DCCD0);
      v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F50B0, &unk_23D9DDA90);
      v26 = sub_23D934B8C();
      v27 = sub_23D91B650();
      v28 = sub_23D91F01C(&qword_27E2F50B8, &qword_27E2F50B0, &unk_23D9DDA90, MEMORY[0x277CE14C8]);
      v44 = v24;
      v45 = MEMORY[0x277D837D0];
      v46 = v25;
      v47 = MEMORY[0x277CE0BD0];
      v48 = v26;
      v49 = v27;
      v50 = v28;
      v51 = MEMORY[0x277CE0BC0];
      swift_getOpaqueTypeConformance2();
      v29 = v39;
      sub_23D9DA684();
      v23 = v41;
      (*(v41 + 32))(v9, v29, v2);
      v22 = 0;
    }

    (*(v23 + 56))(v9, v22, 1, v2);
    v30 = v10;
    v31 = *(v10 + 16);
    v32 = v40;
    v31(v12, v16, v40);
    sub_23D91F2DC(v9, v6, &qword_27E2F5038, &qword_23D9DDA40);
    v33 = v6;
    v34 = v42;
    v31(v42, v12, v32);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50C0, &qword_23D9DDAA0);
    sub_23D91F2DC(v33, &v34[*(v35 + 48)], &qword_27E2F5038, &qword_23D9DDA40);
    sub_23D91F344(v9, &qword_27E2F5038, &qword_23D9DDA40);
    v36 = *(v30 + 8);
    v36(v16, v32);
    sub_23D91F344(v33, &qword_27E2F5038, &qword_23D9DDA40);
    return (v36)(v12, v32);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D942004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a1;
  v4 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (a1 + *(v6 + 40));
  v8 = *v7;
  v9 = v7[1];
  LOBYTE(v7) = *(v7 + 16);
  v31 = v8;
  v32 = v9;
  v33 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA584();
  v11 = v28;
  v10 = v29;
  v25 = v30;
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  v12 = sub_23D9D9794();
  v14 = v13;
  KeyPath = swift_getKeyPath();
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  *(a2 + CustomCategoryView[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  *(a2 + CustomCategoryView[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  *a2 = v12;
  a2[1] = v14;
  v17 = a2 + CustomCategoryView[7];
  *v17 = v11;
  *(v17 + 1) = v10;
  v17[16] = v25;
  v18 = a2 + CustomCategoryView[8];
  LOBYTE(v28) = 0;
  sub_23D9DA3A4();
  v19 = v32;
  *v18 = v31;
  *(v18 + 1) = v19;
  sub_23D94A314(v26, &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LiveSpeechCategoryDetailView);
  v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v21 = swift_allocObject();
  sub_23D94A37C(&v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for LiveSpeechCategoryDetailView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E78, &qword_23D9DD668);
  v23 = (a2 + *(result + 36));
  *v23 = sub_23D94A944;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  return result;
}

uint64_t sub_23D9422C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4EA0, &qword_23D9DD678);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  sub_23D9423F0(v8 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EA8, &qword_23D9DD680);
  v5 = sub_23D949638();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EEF2F00](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23D9423F0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F10, &qword_23D9DD840);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = v24 - v4;
  v5 = sub_23D9D9BC4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4EB8, &qword_23D9DD688);
  v27 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v26 = v24 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4EA8, &qword_23D9DD680);
  MEMORY[0x28223BE20](v29);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v25 = v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v13 = v31;
    v14 = [v31 isRecents];

    if (v14)
    {
      (*(v3 + 56))(v9, 1, 1, v2);
      v15 = sub_23D91F01C(&qword_27E2F4EC0, &qword_27E2F4EB8, &qword_23D9DD688, MEMORY[0x277CDD7A0]);
      v31 = v6;
      v32 = v15;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x23EEF2F10](v9, v2, OpaqueTypeConformance2);
      sub_23D91F344(v9, &qword_27E2F4EA8, &qword_23D9DD680);
    }

    else
    {
      v17 = sub_23D9D9B84();
      v24[1] = v24;
      MEMORY[0x28223BE20](v17);
      v24[-2] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F18, &unk_23D9DD890);
      sub_23D91F01C(&qword_27E2F4F20, &qword_27E2F4F18, &unk_23D9DD890, MEMORY[0x277CE1150]);
      v18 = v26;
      sub_23D9D94B4();
      v19 = sub_23D91F01C(&qword_27E2F4EC0, &qword_27E2F4EB8, &qword_23D9DD688, MEMORY[0x277CDD7A0]);
      v20 = v28;
      MEMORY[0x23EEF2F00](v18, v6, v19);
      (*(v3 + 16))(v9, v20, v2);
      (*(v3 + 56))(v9, 0, 1, v2);
      v31 = v6;
      v32 = v19;
      v21 = swift_getOpaqueTypeConformance2();
      MEMORY[0x23EEF2F10](v9, v2, v21);
      sub_23D91F344(v9, &qword_27E2F4EA8, &qword_23D9DD680);
      (*(v3 + 8))(v20, v2);
      (*(v27 + 8))(v18, v6);
    }

    v22 = sub_23D949638();
    MEMORY[0x23EEF2F00](v12, v29, v22);
    return sub_23D91F344(v12, &qword_27E2F4EA8, &qword_23D9DD680);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D942978@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v30 - v3;
  v35 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v30 = *(v35 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LiveSpeechAddPhraseView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F28, &qword_23D9DD8A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F30, &qword_23D9DD8A8);
  MEMORY[0x28223BE20](v31);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F38, &qword_23D9DD8B0);
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_23D932FB0(v7);
  v16 = v1;
  v17 = *v1;
  if (*v1)
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);

    v18 = sub_23D9D9324();
    sub_23D94A37C(v7, v10, type metadata accessor for LiveSpeechAddPhraseView);
    v19 = &v10[*(v8 + 36)];
    *v19 = v18;
    v19[1] = v17;
    v20 = v32;
    sub_23D94A314(v16, v32, type metadata accessor for LiveSpeechCategoryDetailView);
    v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v22 = swift_allocObject();
    sub_23D94A37C(v20, v22 + v21, type metadata accessor for LiveSpeechCategoryDetailView);
    sub_23D92A2BC(v10, v12, &qword_27E2F4F28, &qword_23D9DD8A0);
    v23 = &v12[*(v31 + 36)];
    *v23 = sub_23D94A6B8;
    v23[1] = v22;
    v23[2] = 0;
    v23[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F40, &qword_23D9DD8B8);
    sub_23D94A6D0();
    sub_23D94A7BC();
    sub_23D9D95C4();
    if (*(v16 + *(v35 + 40)))
    {
      v24 = 1;
      v25 = v36;
    }

    else
    {
      v25 = v36;
      sub_23D9D8894();
      v24 = 0;
    }

    v26 = sub_23D9D88A4();
    (*(*(v26 - 8) + 56))(v25, v24, 1, v26);
    v27 = v37;
    (*(v33 + 32))(v37, v15, v34);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F18, &unk_23D9DD890);
    return sub_23D92A2BC(v25, v27 + *(v28 + 52), &unk_27E2F6A30, &qword_23D9E0BC0);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D942EB0(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_23D9D9394();
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D942F80@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_23D9D9A84();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23D9D9CE4();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F78, &qword_23D9DD910);
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F40, &qword_23D9DD8B8);
  MEMORY[0x28223BE20](v25);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v29._countAndFlagsBits = sub_23D9DA364();
  sub_23D9D9CC4();
  v16 = MEMORY[0x277CE1090];
  v17 = MEMORY[0x277CE1080];
  sub_23D9DA0D4();
  (*(v4 + 8))(v6, v22);

  sub_23D9D9A64();
  v29._countAndFlagsBits = v16;
  v29._object = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_23D9DA104();
  (*(v26 + 8))(v3, v27);
  (*(v24 + 8))(v10, v18);
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v19._object = 0x800000023D9E3C50;
  v29 = AXSUILocString(_:)(v19);
  sub_23D91B650();
  sub_23D9D9684();

  sub_23D91F344(v12, &qword_27E2F4F40, &qword_23D9DD8B8);
  sub_23D9D96A4();
  return sub_23D91F344(v15, &qword_27E2F4F40, &qword_23D9DD8B8);
}

uint64_t sub_23D943340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_23D9D9CE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5148, &qword_23D9DDBF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5170, &qword_23D9DDBF8);
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - v11;
  *v9 = sub_23D9D9AB4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5178, &unk_23D9DDC00);
  sub_23D943704(a1, &v9[*(v13 + 44)]);
  sub_23D9D9CD4();
  sub_23D91F01C(&qword_27E2F5150, &qword_27E2F5148, &qword_23D9DDBF0, MEMORY[0x277CE11A0]);
  sub_23D9DA0D4();
  (*(v4 + 8))(v6, v3);
  sub_23D91F344(v9, &qword_27E2F5148, &qword_23D9DDBF0);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v14 = v24;
    v15 = [v24 isRecents];

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23D9D9384();

      v17 = v24;
      v18 = [v24 isSaved];

      v16 = v18 ^ 1;
    }

    v19 = v23;
    (*(v10 + 32))(v23, v12, v22);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5138, &qword_23D9DDBE8);
    *(v19 + *(result + 36)) = v16;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D943704@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4938, &unk_23D9DCC60);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4940, &unk_23D9DDC10);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5180, &qword_23D9DDF50);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v12 = type metadata accessor for SymbolPlatter(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5188, &qword_23D9DDC20);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v80 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v65 - v17;
  v66 = a1;
  if (!*a1)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9384();

  v18 = v88;
  v19 = [v88 symbol];

  v20 = sub_23D9DA8B4();
  v22 = v21;

  *v14 = v20;
  v14[1] = v22;
  v88 = 0x404C000000000000;
  sub_23D94B5F0();
  sub_23D9D94D4();
  v88 = 0x4057000000000000;
  sub_23D9D94D4();
  v23 = *MEMORY[0x277CDF990];
  v24 = sub_23D9D9664();
  (*(*(v24 - 8) + 104))(v11, v23, v24);
  sub_23D949044(&qword_27E2F5198, MEMORY[0x277CDFA20], MEMORY[0x277CDFA40]);
  if ((sub_23D9DA894() & 1) == 0)
  {
    __break(1u);
LABEL_9:
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
    return result;
  }

  v71 = a2;
  sub_23D949044(&qword_27E2F51A0, type metadata accessor for SymbolPlatter, &unk_23D9DF140);
  sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50, MEMORY[0x277D84470]);
  sub_23D9DA044();
  sub_23D91F344(v11, &qword_27E2F5180, &qword_23D9DDF50);
  sub_23D94B644(v14);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9384();

  v25 = v88;
  v26 = [v88 localizedName];

  v27 = sub_23D9DA8B4();
  v29 = v28;

  v88 = v27;
  v89 = v29;
  sub_23D91B650();
  v30 = sub_23D9D9F04();
  v32 = v31;
  LOBYTE(v29) = v33;
  sub_23D9D9E34();
  v34 = sub_23D9D9EE4();
  v36 = v35;
  v38 = v37;

  sub_23D9274BC(v30, v32, v29 & 1);

  sub_23D9D9E14();
  v70 = sub_23D9D9EA4();
  v69 = v39;
  LOBYTE(v29) = v40;
  v79 = v41;
  sub_23D9274BC(v34, v36, v38 & 1);

  v68 = sub_23D9D9D44();
  v78 = v29 & 1;
  LOBYTE(v88) = v29 & 1;
  LOBYTE(v82) = 1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9384();

  v42 = v88;
  LOBYTE(v29) = [v88 isRecents];

  v43 = 1;
  v44 = v73;
  v45 = v72;
  if ((v29 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v46 = v88;
    v47 = [v88 isSaved];

    if (v47)
    {
      v43 = 1;
    }

    else
    {
      MEMORY[0x28223BE20](v48);
      *(&v65 - 2) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E8, &unk_23D9DCCD0);
      sub_23D934B8C();
      v49 = v67;
      sub_23D9DA684();
      (*(v45 + 32))(v77, v49, v44);
      v43 = 0;
    }
  }

  v50 = v77;
  (*(v45 + 56))(v77, v43, 1, v44);
  v51 = v74;
  v52 = *(v74 + 16);
  v53 = v80;
  v54 = v75;
  v52(v80, v81, v75);
  v55 = v76;
  sub_23D91F2DC(v50, v76, &qword_27E2F4940, &unk_23D9DDC10);
  v56 = v71;
  v52(v71, v53, v54);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F51B0, &qword_23D9DDC28);
  v58 = &v56[*(v57 + 48)];
  v59 = v70;
  *&v82 = v70;
  v60 = v69;
  *(&v82 + 1) = v69;
  LOBYTE(v83) = v78;
  *(&v83 + 1) = *v104;
  DWORD1(v83) = *&v104[3];
  *(&v83 + 1) = v79;
  LOWORD(v84) = 256;
  *(&v84 + 2) = v102;
  WORD3(v84) = v103;
  LOBYTE(v53) = v68;
  BYTE8(v84) = v68;
  *(&v84 + 9) = *v101;
  HIDWORD(v84) = *&v101[3];
  v86 = 0u;
  v85 = 0u;
  v87 = 1;
  v58[80] = 1;
  v61 = v85;
  *(v58 + 2) = v84;
  *(v58 + 3) = v61;
  *(v58 + 4) = v86;
  v62 = v83;
  *v58 = v82;
  *(v58 + 1) = v62;
  sub_23D91F2DC(v55, &v56[*(v57 + 64)], &qword_27E2F4940, &unk_23D9DDC10);
  sub_23D91F2DC(&v82, &v88, &qword_27E2F51B8, &qword_23D9DDC30);
  sub_23D91F344(v50, &qword_27E2F4940, &unk_23D9DDC10);
  v63 = *(v51 + 8);
  v63(v81, v54);
  sub_23D91F344(v55, &qword_27E2F4940, &unk_23D9DDC10);
  v88 = v59;
  v89 = v60;
  v90 = v78;
  *v91 = *v104;
  *&v91[3] = *&v104[3];
  v92 = v79;
  v93 = 256;
  v94 = v102;
  v95 = v103;
  v96 = v53;
  *v97 = *v101;
  *&v97[3] = *&v101[3];
  v98 = 0u;
  v99 = 0u;
  v100 = 1;
  sub_23D91F344(&v88, &qword_27E2F51B8, &qword_23D9DDC30);
  return (v63)(v80, v54);
}

uint64_t sub_23D944238@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5060, &qword_23D9DDA58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v31 >> 62)
    {
      v11 = sub_23D9DAF34();
    }

    else
    {
      v11 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 <= 0)
    {
      v22 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23D9D9384();

      KeyPath = swift_getKeyPath();
      v27 = type metadata accessor for LiveSpeechCategoryDetailView;
      sub_23D94A314(a1, v6, type metadata accessor for LiveSpeechCategoryDetailView);
      v12 = v10;
      v13 = *(v4 + 80);
      v29 = v8;
      v14 = (v13 + 16) & ~v13;
      v15 = swift_allocObject();
      v25 = type metadata accessor for LiveSpeechCategoryDetailView;
      sub_23D94A37C(v6, v15 + v14, type metadata accessor for LiveSpeechCategoryDetailView);
      v16 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50D8, &unk_23D9DE2C0);
      v24 = a1;
      v28 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5080, &qword_23D9DDA68);
      sub_23D91F01C(&qword_27E2F50E0, &qword_27E2F50D8, &unk_23D9DE2C0, MEMORY[0x277D83980]);
      sub_23D949044(&qword_27E2F50E8, MEMORY[0x277D70710], MEMORY[0x277D85378]);
      sub_23D94AE0C();
      v7 = v28;
      v17 = v30;
      sub_23D9DA614();
      sub_23D94A314(v24, v6, v27);
      v18 = swift_allocObject();
      v19 = v18 + v14;
      v8 = v29;
      sub_23D94A37C(v16, v19, v25);
      v20 = swift_allocObject();
      *(v20 + 16) = sub_23D94B05C;
      *(v20 + 24) = v18;
      v21 = (v12 + *(v7 + 36));
      *v21 = sub_23D94B0F8;
      v21[1] = v20;
      sub_23D92A2BC(v12, v17, &qword_27E2F5060, &qword_23D9DDA58);
      v22 = 0;
    }

    return (*(v8 + 56))(v30, v22, 1, v7);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D94470C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F30, &qword_23D9DD8A8);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5118, &qword_23D9DDB80);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5090, &unk_23D9DDA70);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  v18 = *a1;
  v26[4] = v18;
  sub_23D944AA4(a2, v18, v10);
  sub_23D94A7BC();
  sub_23D9D95C4();
  if (*(a2 + *(type metadata accessor for LiveSpeechCategoryDetailView(0) + 40)))
  {
    v19 = 1;
  }

  else
  {
    sub_23D9D8894();
    v19 = 0;
  }

  v20 = sub_23D9D88A4();
  (*(*(v20 - 8) + 56))(v7, v19, 1, v20);
  (*(v12 + 32))(v17, v14, v11);
  sub_23D92A2BC(v7, &v17[*(v15 + 52)], &unk_27E2F6A30, &qword_23D9E0BC0);
  v21 = [v18 text];
  v22 = sub_23D9DA8B4();
  v24 = v23;

  v26[6] = 0x657361726850534CLL;
  v26[7] = 0xEF5F6E6F74747542;
  MEMORY[0x23EEF3C30](v22, v24);

  sub_23D91F01C(&qword_27E2F5088, &qword_27E2F5090, &unk_23D9DDA70, MEMORY[0x277CE1150]);
  sub_23D9DA114();

  return sub_23D91F344(v17, &qword_27E2F5090, &unk_23D9DDA70);
}

id sub_23D944AA4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = a2;
  v4 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for LiveSpeechAddPhraseView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F28, &qword_23D9DD8A0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4F30, &qword_23D9DD8A8);
  MEMORY[0x28223BE20](v23);
  v13 = &v23 - v12;
  sub_23D932FB0(v8);
  v14 = a1;
  v15 = *a1;
  if (*a1)
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);

    v16 = sub_23D9D9324();
    sub_23D94A37C(v8, v11, type metadata accessor for LiveSpeechAddPhraseView);
    v17 = &v11[*(v9 + 36)];
    *v17 = v16;
    v17[1] = v15;
    sub_23D94A314(v14, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechCategoryDetailView);
    v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v19 = swift_allocObject();
    sub_23D94A37C(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for LiveSpeechCategoryDetailView);
    *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    sub_23D92A2BC(v11, v13, &qword_27E2F4F28, &qword_23D9DD8A0);
    v20 = &v13[*(v23 + 36)];
    *v20 = sub_23D94B34C;
    v20[1] = v19;
    v20[2] = 0;
    v20[3] = 0;
    sub_23D92A2BC(v13, v25, &qword_27E2F4F30, &qword_23D9DD8A8);
    v21 = v26;

    return v21;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D944E30(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9394();
    swift_getKeyPath();
    swift_getKeyPath();

    v3 = a2;
    return sub_23D9D9394();
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D944F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 text];
  sub_23D9DA8B4();

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_23D944FD0(uint64_t a1)
{
  v2 = v1;
  v64[4] = *MEMORY[0x277D85DE8];
  v55 = sub_23D9D91F4();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_23D9D91D4();
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D9D89D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50F0, &unk_23D9DDB70);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v47 - v14;
  v47[1] = a1;
  sub_23D9D89E4();
  v16 = *(v13 + 44);
  v17 = v9;
  v18 = sub_23D9D89F4();
  v19 = sub_23D949044(&qword_27E2F50F8, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v61 = (v10 + 8);
  v62 = v19;
  v20 = v18;
  v51 = *MEMORY[0x277D704D8];
  v49 = (v4 + 8);
  v50 = (v4 + 104);
  v58 = (v6 + 8);
  *&v21 = 138412290;
  v48 = v21;
  v56 = v2;
  v52 = v9;
  v53 = v8;
  v60 = v16;
  while (1)
  {
    v23 = v63;
    sub_23D9DAA74();
    sub_23D949044(&qword_27E2F5100, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v24 = sub_23D9DA894();
    (*v61)(v23, v17);
    if (v24)
    {
      break;
    }

    v25 = sub_23D9DAA94();
    v27 = *v26;
    v25(v64, 0);
    v28 = v20;
    sub_23D9DAA84();
    if (!*v2)
    {
      goto LABEL_20;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if ((v64[0] & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x23EEF4180](v27, v64[0]);
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
      }

      if (v27 >= *((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v29 = *(v64[0] + v27 + 4);
    }

    v30 = v29;

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v31 = v64[0];
    v64[0] = 0;
    v32 = [v31 deletePhrase:v30 error:v64];

    if (v32)
    {
      v22 = v64[0];
    }

    else
    {
      v33 = v64[0];
      v34 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D9214();
      v35 = v34;
      v36 = sub_23D9D91C4();
      v37 = sub_23D9DACC4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v38 = v48;
        v40 = v54;
        v39 = v55;
        (*v50)(v54, v51, v55);
        sub_23D9D9204();
        sub_23D949044(&qword_27E2F4928, MEMORY[0x277D70518], MEMORY[0x277D70520]);
        swift_allocError();
        sub_23D9D91E4();
        v41 = v39;
        v17 = v52;
        (*v49)(v40, v41);
        v8 = v53;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v42;
        v43 = v57;
        *v57 = v42;
        _os_log_impl(&dword_23D918000, v36, v37, "%@", v38, 0xCu);
        sub_23D91F344(v43, &qword_27E2F4930, &unk_23D9DCC50);
        v44 = v43;
        v2 = v56;
        MEMORY[0x23EEF4BC0](v44, -1, -1);
        MEMORY[0x23EEF4BC0](v38, -1, -1);
      }

      else
      {
      }

      (*v58)(v8, v59);
    }

    v20 = v28;
  }

  sub_23D91F344(v15, &qword_27E2F50F0, &unk_23D9DDB70);
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v45 = sub_23D9D9374();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50D8, &unk_23D9DE2C0);
    sub_23D91F01C(&qword_27E2F5108, &qword_27E2F50D8, &unk_23D9DE2C0, MEMORY[0x277D83960]);
    sub_23D91F01C(&qword_27E2F5110, &qword_27E2F50D8, &unk_23D9DE2C0, MEMORY[0x277D83990]);
    sub_23D9DAAA4();
    v45(v64, 0);
  }

  else
  {
LABEL_20:
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D945830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E8, &unk_23D9DCCD0);
  MEMORY[0x28223BE20](v20[0]);
  v12 = v20 - v11;
  sub_23D94A314(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechCategoryDetailView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_23D94A37C(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LiveSpeechCategoryDetailView);
  sub_23D9DA404();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  sub_23D9DA114();
  (*(v8 + 8))(v10, v7);
  v15._countAndFlagsBits = 0xD000000000000019;
  v15._object = 0x800000023D9E4040;
  v23 = AXSUILocString(_:)(v15);
  v16 = (a1 + *(v4 + 44));
  v17 = *v16;
  v18 = *(v16 + 1);
  v21 = v17;
  v22 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v20[8] = a1;
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50B0, &unk_23D9DDA90);
  sub_23D934B8C();
  sub_23D91B650();
  sub_23D91F01C(&qword_27E2F50B8, &qword_27E2F50B0, &unk_23D9DDA90, MEMORY[0x277CE14C8]);
  sub_23D9DA0B4();

  return sub_23D91F344(v12, &qword_27E2F49E8, &unk_23D9DCCD0);
}

uint64_t sub_23D945C60(uint64_t a1)
{
  type metadata accessor for LiveSpeechCategoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D945CD4@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E4040;
  v2._countAndFlagsBits = 0xD000000000000019;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  v3 = sub_23D9D9F04();
  v5 = v4;
  v7 = v6;
  sub_23D9DA274();
  v8 = sub_23D9D9EC4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_23D9274BC(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_23D945DD8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v42 = *(v1 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50C8, &qword_23D9DDAF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E8, &unk_23D9DCCD0);
  MEMORY[0x28223BE20](v10 - 8);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v38 = &v35 - v13;
  MEMORY[0x28223BE20](v14);
  v37 = &v35 - v15;
  MEMORY[0x28223BE20](v16);
  v36 = &v35 - v17;
  v18._countAndFlagsBits = 0x45434E41435F534CLL;
  v18._object = 0xE90000000000004CLL;
  v45 = AXSUILocString(_:)(v18);
  sub_23D9D93D4();
  v19 = sub_23D9D93E4();
  v20 = *(*(v19 - 8) + 56);
  v20(v5, 0, 1, v19);
  sub_23D91B650();
  sub_23D9DA424();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  sub_23D9DA114();
  v21 = *(v7 + 8);
  v35 = v7 + 8;
  v21(v9, v6);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x800000023D9E4040;
  v45 = AXSUILocString(_:)(v22);
  sub_23D9D93B4();
  v20(v5, 0, 1, v19);
  v23 = v39;
  sub_23D94A314(v43, v39, type metadata accessor for LiveSpeechCategoryDetailView);
  v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v25 = swift_allocObject();
  sub_23D94A37C(v23, v25 + v24, type metadata accessor for LiveSpeechCategoryDetailView);
  sub_23D9DA424();
  v26 = v37;
  sub_23D9DA114();
  v21(v9, v6);
  v27 = v36;
  v28 = v38;
  sub_23D91F2DC(v36, v38, &qword_27E2F49E8, &unk_23D9DCCD0);
  v29 = v26;
  v30 = v26;
  v31 = v40;
  sub_23D91F2DC(v29, v40, &qword_27E2F49E8, &unk_23D9DCCD0);
  v32 = v44;
  sub_23D91F2DC(v28, v44, &qword_27E2F49E8, &unk_23D9DCCD0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50D0, &qword_23D9DDAF8);
  sub_23D91F2DC(v31, v32 + *(v33 + 48), &qword_27E2F49E8, &unk_23D9DCCD0);
  sub_23D91F344(v30, &qword_27E2F49E8, &unk_23D9DCCD0);
  sub_23D91F344(v27, &qword_27E2F49E8, &unk_23D9DCCD0);
  sub_23D91F344(v31, &qword_27E2F49E8, &unk_23D9DCCD0);
  return sub_23D91F344(v28, &qword_27E2F49E8, &unk_23D9DCCD0);
}

uint64_t sub_23D946348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4._object = 0x800000023D9E4060;
  v4._countAndFlagsBits = 0xD000000000000018;
  AXSUILocString(_:)(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4560, &qword_23D9DC3F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23D9DC3E0;
  if (*a1)
  {
    v6 = v5;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v13 >> 62)
    {
      v7 = sub_23D9DAF34();
    }

    else
    {
      v7 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x277D83C10];
    v6[7] = MEMORY[0x277D83B88];
    v6[8] = v8;
    v6[4] = v7;
    sub_23D9DA8C4();

    sub_23D91B650();
    result = sub_23D9D9F04();
    *a2 = result;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v12;
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D946534(uint64_t *a1)
{
  v2 = sub_23D9D9574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v6 = v13;
    v7 = [v13 categoryID];

    if (!v7)
    {
      sub_23D9DA8B4();
      v7 = sub_23D9DA8A4();
    }

    v8 = objc_opt_self();
    [v8 deleteCategoryWithID_];

    v9 = [v8 categories];
    sub_23D9DAD44();
    v10 = sub_23D9DA974();

    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v10;

    sub_23D9D9394();
    sub_23D9524C0();

    sub_23D93FFE4(v5);
    sub_23D9D9564();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D9467C0(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_23D94A314(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechCategoryDetailView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23D94A37C(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LiveSpeechCategoryDetailView);
  sub_23D9DA404();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  sub_23D9DA114();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23D946A18(uint64_t a1)
{
  type metadata accessor for LiveSpeechCategoryDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  return sub_23D9DA564();
}

uint64_t sub_23D946A8C@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E40C0;
  v2._countAndFlagsBits = 0xD000000000000017;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23D946AFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25[2] = a2;
  v3 = type metadata accessor for MaxRecentCountSelectionView(0);
  MEMORY[0x28223BE20](v3);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FE8, &qword_23D9DDA10);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = sub_23D9D9664();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D93FDDC(v15);
  v16 = sub_23D9D9654();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v26 = sub_23D9D9AC4();
    v27 = 0;
    v28 = 1;
    sub_23D93FCC4();
  }

  else
  {
    v26 = sub_23D9D99B4();
    v27 = 0;
    v28 = 0;
    sub_23D93FC00();
  }

  v17 = sub_23D9DA764();
  v25[1] = v25;
  MEMORY[0x28223BE20](v17);
  v25[-2] = v18;
  v25[-1] = a1;
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  *v5 = sub_23D9D9794();
  v5[1] = v19;
  v20 = *(v3 + 20);
  *(v5 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v21 = *a1;
  if (*a1)
  {

    v22 = sub_23D9D9324();
    sub_23D94A37C(v5, v8, type metadata accessor for MaxRecentCountSelectionView);
    v23 = &v8[*(v6 + 36)];
    *v23 = v22;
    v23[1] = v21;
    sub_23D92A2BC(v8, v11, &qword_27E2F4FE8, &qword_23D9DDA10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FF0, &qword_23D9DDA18);
    sub_23D94A9E8(&qword_27E2F4FF8, &qword_27E2F4FF0, &qword_23D9DDA18, sub_23D94AA70);
    sub_23D94AB54();
    sub_23D9D95C4();
  }

  else
  {
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D946ED0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5008, &unk_23D9DDA20);
  sub_23D94AA70();
  return sub_23D9DA684();
}

double sub_23D946F40@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{

  sub_23D94700C(a2, &v10);
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v15 = v10;
  v16 = v11;
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = v14;
  v20[0] = v10;
  v20[1] = v11;
  sub_23D91F2DC(&v15, &v9, &qword_27E2F5018, &qword_23D9DDA30);
  sub_23D91F344(v20, &qword_27E2F5018, &qword_23D9DDA30);
  *a3 = a1;
  v6 = v15;
  *(a3 + 24) = v16;
  v7 = v18;
  *(a3 + 40) = v17;
  *(a3 + 56) = v7;
  result = *&v19;
  *(a3 + 72) = v19;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_23D94700C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D9664();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8._object = 0x800000023D9E3F40;
  v8._countAndFlagsBits = 0xD000000000000017;
  v49 = AXSUILocString(_:)(v8);
  sub_23D91B650();
  v9 = sub_23D9D9F04();
  v43 = v10;
  v44 = v9;
  v42 = v11;
  v45 = v12;
  sub_23D93FDDC(v7);
  v13 = sub_23D9D9654();
  (*(v5 + 8))(v7, v4);
  if (*a1)
  {
    v41 = (v13 & 1) == 0;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v14 = sub_23D9543E4(v49._countAndFlagsBits);
    v16 = v15;

    v49._countAndFlagsBits = v14;
    v49._object = v16;
    v17 = sub_23D9D9F04();
    v19 = v18;
    v21 = v20;
    sub_23D9D9DC4();
    sub_23D9D9E04();
    sub_23D9D9E54();

    v22 = sub_23D9D9EE4();
    v24 = v23;
    v26 = v25;
    v40 = v13;

    sub_23D9274BC(v17, v19, v21 & 1);

    sub_23D9DA2F4();
    v27 = sub_23D9D9EB4();
    v29 = v28;
    LOBYTE(v16) = v30;
    v32 = v31;

    sub_23D9274BC(v22, v24, v26 & 1);

    v33 = v41;
    v34 = v42 & 1;
    LOBYTE(v49._countAndFlagsBits) = v42 & 1;
    v48 = v42 & 1;
    v35 = v40 & 1;
    v47 = v40 & 1;
    v46 = v16 & 1;
    v37 = v43;
    v36 = v44;
    *a2 = v44;
    *(a2 + 8) = v37;
    *(a2 + 16) = v34;
    *(a2 + 24) = v45;
    *(a2 + 32) = 0;
    *(a2 + 40) = v33;
    *(a2 + 41) = v35;
    *(a2 + 48) = v27;
    *(a2 + 56) = v29;
    *(a2 + 64) = v16 & 1;
    *(a2 + 72) = v32;
    sub_23D91E0AC(v36, v37, v34);

    sub_23D91E0AC(v27, v29, v16 & 1);

    sub_23D9274BC(v27, v29, v16 & 1);

    sub_23D9274BC(v36, v37, v49._countAndFlagsBits);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D9473A8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D9D9954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v13 = (a1)(0, v10);
  sub_23D91F2DC(v2 + *(v13 + 20), v12, &qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23D9D9464();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t MaxRecentCountSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_23D9D99A4();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4DF8, &qword_23D9DD530);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E00, &qword_23D9DD538);
  v10 = *(v9 - 8);
  v22 = v9;
  v23 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v27 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E08, &qword_23D9DD540);
  sub_23D947A3C();
  sub_23D9D9E84();
  v13._object = 0x800000023D9E3F40;
  v13._countAndFlagsBits = 0xD000000000000017;
  v28 = AXSUILocString(_:)(v13);
  v14 = sub_23D91F01C(&qword_27E2F4E38, &qword_27E2F4DF8, &qword_23D9DD530, MEMORY[0x277CDE5A8]);
  v15 = sub_23D91B650();
  v16 = MEMORY[0x277D837D0];
  sub_23D9DA064();

  (*(v6 + 8))(v8, v5);
  v18 = v24;
  v17 = v25;
  (*(v24 + 104))(v4, *MEMORY[0x277CDDDB8], v25);
  v28._countAndFlagsBits = v5;
  v28._object = v16;
  v29 = v14;
  v30 = v15;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_23D9DA144();
  (*(v18 + 8))(v4, v17);
  return (*(v23 + 8))(v12, v19);
}

uint64_t sub_23D94790C(uint64_t a1)
{
  v1._object = 0x800000023D9E3F80;
  v1._countAndFlagsBits = 0xD000000000000018;
  AXSUILocString(_:)(v1);
  sub_23D91B650();
  sub_23D9D9F04();
  v2._object = 0x800000023D9E3FA0;
  v2._countAndFlagsBits = 0xD000000000000018;
  AXSUILocString(_:)(v2);
  sub_23D9D9F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E20, &qword_23D9DD548);
  sub_23D947ACC();
  return sub_23D9DA674();
}

unint64_t sub_23D947A3C()
{
  result = qword_27E2F4E10;
  if (!qword_27E2F4E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E08, &qword_23D9DD540);
    sub_23D947ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4E10);
  }

  return result;
}

unint64_t sub_23D947ACC()
{
  result = qword_27E2F4E18;
  if (!qword_27E2F4E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E20, &qword_23D9DD548);
    sub_23D947B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4E18);
  }

  return result;
}

unint64_t sub_23D947B50()
{
  result = qword_27E2F4E28;
  if (!qword_27E2F4E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E30, &unk_23D9DD550);
    sub_23D91F01C(&qword_27E2F4990, &qword_27E2F4998, &qword_23D9DCCA0, MEMORY[0x277CDF030]);
    sub_23D949044(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4E28);
  }

  return result;
}

uint64_t sub_23D947C70(uint64_t a1)
{
  v2 = type metadata accessor for MaxRecentCountSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = &unk_284FDD770;
  swift_getKeyPath();
  sub_23D94A314(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MaxRecentCountSelectionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D94A37C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MaxRecentCountSelectionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4EF0, &unk_23D9DD770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4E30, &unk_23D9DD550);
  sub_23D91F01C(&qword_27E2F4EF8, &qword_27E2F4EF0, &unk_23D9DD770, MEMORY[0x277D83980]);
  sub_23D947B50();
  return sub_23D9DA614();
}

uint64_t sub_23D947E50(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for MaxRecentCountSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4998, &qword_23D9DCCA0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-v9];
  v11 = *a1;
  sub_23D94A314(a2, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MaxRecentCountSelectionView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_23D94A37C(&v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for MaxRecentCountSelectionView);
  *(v13 + v12 + v6) = v11;
  v17 = a2;
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A60, &unk_23D9DCD80);
  sub_23D91F01C(&qword_27E2F4A68, &qword_27E2F4A60, &unk_23D9DCD80, MEMORY[0x277CE1140]);
  sub_23D9DA404();
  LOBYTE(v19) = v11;
  v14 = sub_23D9DA8D4();
  v19 = 0xD00000000000001ALL;
  v20 = 0x800000023D9E3FC0;
  MEMORY[0x23EEF3C30](v14);

  sub_23D91F01C(&qword_27E2F4990, &qword_27E2F4998, &qword_23D9DCCA0, MEMORY[0x277CDF030]);
  sub_23D9DA114();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_23D948144(uint64_t *a1, char a2)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_23D9D9394();
    v2 = objc_opt_self();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D9D9384();

    [v2 setMaxPreferredPhraseCount_];
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D9482A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23D9D99B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A70, &unk_23D9DD780);
  return sub_23D948308(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_23D948308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v69 = a3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A28, &unk_23D9DCCF0);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = (&v55 - v5);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A30, &unk_23D9DD790);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A38, &qword_23D9DCD00);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v55 - v12;
  v13 = sub_23D9D9464();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  if (*a1)
  {
    v65 = a2;
    v77 = sub_23D9543E4(a2);
    v78 = v20;
    sub_23D91B650();
    v21 = sub_23D9D9F04();
    v23 = v22;
    v25 = v24;
    sub_23D9473A8(type metadata accessor for MaxRecentCountSelectionView, v19);
    (*(v14 + 104))(v16, *MEMORY[0x277CDF3C8], v13);
    v26 = sub_23D9D9454();
    v27 = *(v14 + 8);
    v27(v16, v13);
    v27(v19, v13);
    if (v26)
    {
      v28 = sub_23D9DA2C4();
    }

    else
    {
      v28 = sub_23D9DA2A4();
    }

    v77 = v28;
    v64 = sub_23D9D9EC4();
    v63 = v29;
    v31 = v30;
    v72 = v32;
    sub_23D9274BC(v21, v23, v25 & 1);

    v71 = sub_23D9D9D84();
    v61 = v31 & 1;
    v92 = v31 & 1;
    v89 = 1;
    *(&v62 + 1) = sub_23D9D9DD4();
    *&v62 = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v33 = 1;
    if (qword_23D9DDCD0[v77] == qword_23D9DDCD0[v65])
    {
      v77 = sub_23D9DA364();
      sub_23D9D9E14();
      v34 = v55;
      sub_23D9D9F84();

      v35 = v57;
      v36 = *(v57 + 16);
      v37 = v56;
      v38 = v58;
      v36(v56, v34, v58);
      v39 = v59;
      *v59 = 0;
      *(v39 + 8) = 1;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A58, &unk_23D9DCD50);
      v36((v39 + *(v40 + 48)), v37, v38);
      v41 = *(v35 + 8);
      v41(v34, v38);
      v41(v37, v38);
      sub_23D92A2BC(v39, v70, &qword_27E2F4A28, &unk_23D9DCCF0);
      v33 = 0;
    }

    v42 = v70;
    (*(v66 + 56))(v70, v33, 1, v67);
    v43 = v68;
    sub_23D91F2DC(v42, v68, &qword_27E2F4A38, &qword_23D9DCD00);
    v44 = v64;
    *&v73 = v64;
    v45 = v63;
    *(&v73 + 1) = v63;
    v46 = v61;
    LOBYTE(v74) = v61;
    *(&v74 + 1) = *v91;
    DWORD1(v74) = *&v91[3];
    *(&v74 + 1) = v72;
    v75[0] = v71;
    *&v75[1] = *v90;
    *&v75[4] = *&v90[3];
    memset(&v75[8], 0, 32);
    v75[40] = 1;
    *&v75[44] = *&v93[3];
    *&v75[41] = *v93;
    v47 = v62;
    v76 = v62;
    v48 = v74;
    v49 = v69;
    *v69 = v73;
    v49[1] = v48;
    v50 = *v75;
    v51 = *&v75[16];
    v52 = v76;
    v49[4] = *&v75[32];
    v49[5] = v52;
    v49[2] = v50;
    v49[3] = v51;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A78, &qword_23D9DCD90);
    sub_23D91F2DC(v43, v49 + *(v53 + 48), &qword_27E2F4A38, &qword_23D9DCD00);
    sub_23D91F2DC(&v73, &v77, &qword_27E2F4A50, &unk_23D9DD820);
    sub_23D91F344(v42, &qword_27E2F4A38, &qword_23D9DCD00);
    sub_23D91F344(v43, &qword_27E2F4A38, &qword_23D9DCD00);
    v77 = v44;
    v78 = v45;
    v79 = v46;
    *v80 = *v91;
    *&v80[3] = *&v91[3];
    v81 = v72;
    v82 = v71;
    *v83 = *v90;
    *&v83[3] = *&v90[3];
    v84 = 0u;
    v85 = 0u;
    v86 = 1;
    *v87 = *v93;
    *&v87[3] = *&v93[3];
    v88 = v47;
    return sub_23D91F344(&v77, &qword_27E2F4A50, &unk_23D9DD820);
  }

  else
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D949044(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D948BAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[8] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23D948D38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_23D948ECC(uint64_t a1)
{
  sub_23D934258(319);
  if (v1 <= 0x3F)
  {
    sub_23D94908C(319, &qword_27E2F48D8, MEMORY[0x277CDF3E8]);
    if (v2 <= 0x3F)
    {
      sub_23D94908C(319, &qword_27E2F4D58, MEMORY[0x277CDFA20]);
      if (v3 <= 0x3F)
      {
        sub_23D94908C(319, &qword_27E2F4610, MEMORY[0x277CDD840]);
        if (v4 <= 0x3F)
        {
          sub_23D9490E0(319, &qword_27E2F4CB0, MEMORY[0x277CE1200]);
          if (v5 <= 0x3F)
          {
            sub_23D9490E0(319, &qword_27E2F46A0, MEMORY[0x277CE10B0]);
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

uint64_t sub_23D949044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23D94908C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D9484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D9490E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23D949148(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23D949224(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23D9492F4(uint64_t a1)
{
  sub_23D934258(319);
  if (v1 <= 0x3F)
  {
    sub_23D94908C(319, &qword_27E2F48D8, MEMORY[0x277CDF3E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23D949394()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E60, &qword_23D9DD650);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E68, &qword_23D9DD658);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E70, &qword_23D9DD660);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E78, &qword_23D9DD668);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E80, &qword_23D9DD670);
  sub_23D91F01C(&qword_27E2F4E88, &qword_27E2F4E80, &qword_23D9DD670, MEMORY[0x277CDE5A8]);
  swift_getOpaqueTypeConformance2();
  sub_23D94957C();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EA0, &qword_23D9DD678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EA8, &qword_23D9DD680);
  sub_23D949638();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D94957C()
{
  result = qword_27E2F4E90;
  if (!qword_27E2F4E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E78, &qword_23D9DD668);
    sub_23D949044(&qword_27E2F4E98, type metadata accessor for LiveSpeechCreateCustomCategoryView, &unk_23D9DF190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4E90);
  }

  return result;
}

unint64_t sub_23D949638()
{
  result = qword_27E2F4EB0;
  if (!qword_27E2F4EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EA8, &qword_23D9DD680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EB8, &qword_23D9DD688);
    sub_23D91F01C(&qword_27E2F4EC0, &qword_27E2F4EB8, &qword_23D9DD688, MEMORY[0x277CDD7A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4EB0);
  }

  return result;
}

uint64_t sub_23D94972C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4E00, &qword_23D9DD538);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4DF8, &qword_23D9DD530);
  sub_23D91F01C(&qword_27E2F4E38, &qword_27E2F4DF8, &qword_23D9DD530, MEMORY[0x277CDE5A8]);
  sub_23D91B650();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D949850(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4EC8, &qword_23D9DD728);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4ED0, &qword_23D9DD730);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  if (a2)
  {
    v10._object = 0x800000023D9E3F60;
    v10._countAndFlagsBits = 0xD000000000000015;
    v13 = AXSUILocString(_:)(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4ED8, &qword_23D9DD738);
    sub_23D91F01C(&qword_27E2F4EE8, &qword_27E2F4ED8, &qword_23D9DD738, MEMORY[0x277CE04B8]);
    sub_23D91B650();
    sub_23D9DA084();

    sub_23D91F2DC(v9, v6, &qword_27E2F4ED0, &qword_23D9DD730);
    swift_storeEnumTagMultiPayload();
    sub_23D949B08();
    sub_23D9D9B14();
    return sub_23D91F344(v9, &qword_27E2F4ED0, &qword_23D9DD730);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4ED8, &qword_23D9DD738);
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    swift_storeEnumTagMultiPayload();
    sub_23D949B08();
    sub_23D91F01C(&qword_27E2F4EE8, &qword_27E2F4ED8, &qword_23D9DD738, MEMORY[0x277CE04B8]);
    return sub_23D9D9B14();
  }
}

unint64_t sub_23D949B08()
{
  result = qword_27E2F4EE0;
  if (!qword_27E2F4EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4ED0, &qword_23D9DD730);
    sub_23D91F01C(&qword_27E2F4EE8, &qword_27E2F4ED8, &qword_23D9DD738, MEMORY[0x277CE04B8]);
    sub_23D949044(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4EE0);
  }

  return result;
}

uint64_t sub_23D949C10()
{
  v1 = (type metadata accessor for MaxRecentCountSelectionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9464();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D949D2C(char *a1)
{
  v3 = *(type metadata accessor for MaxRecentCountSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D947E50(a1, v4);
}

uint64_t sub_23D949DAC()
{
  v1 = (type metadata accessor for MaxRecentCountSelectionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9464();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D949ECC()
{
  v1 = *(type metadata accessor for MaxRecentCountSelectionView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = *(v2 + *(v1 + 64));

  return sub_23D948144(v2, v3);
}

uint64_t sub_23D949F58@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_23D9D9A84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F51D0, &qword_23D9DDCB8);
  MEMORY[0x28223BE20](v16);
  v11 = &v14[-v10];
  if (a1)
  {
    sub_23D9D9A44();
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    sub_23D949044(&qword_27E2F4FD0, MEMORY[0x277CE01E8], MEMORY[0x277CE01F8]);
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FD8, &qword_23D9DDA08);
    sub_23D91F01C(&qword_27E2F4FE0, &qword_27E2F4FD8, &qword_23D9DDA08, MEMORY[0x277D83970]);
    LOBYTE(a1) = v15;
    sub_23D9DADD4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F51D8, &unk_23D9DDCC0);
  sub_23D91F01C(&qword_27E2F51E0, &qword_27E2F51D8, &unk_23D9DDCC0, MEMORY[0x277CE04B8]);
  sub_23D9DA104();
  v12 = *(v4 + 8);
  v12(v9, v3);
  if (a1)
  {
    v18 = MEMORY[0x277D84F90];
    sub_23D949044(&qword_27E2F4FD0, MEMORY[0x277CE01E8], MEMORY[0x277CE01F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4FD8, &qword_23D9DDA08);
    sub_23D91F01C(&qword_27E2F4FE0, &qword_27E2F4FD8, &qword_23D9DDA08, MEMORY[0x277D83970]);
    sub_23D9DADD4();
  }

  else
  {
    sub_23D9D9A44();
  }

  sub_23D9D96B4();
  v12(v6, v3);
  return sub_23D91F344(v11, &qword_27E2F51D0, &qword_23D9DDCB8);
}

uint64_t sub_23D94A314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D94A37C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D94A3E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LiveSpeechCategoryDetailView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D942004(v4, a1);
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9464();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D9D9664();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D9D9574();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_23D94A6D0()
{
  result = qword_27E2F4F48;
  if (!qword_27E2F4F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4F40, &qword_23D9DD8B8);
    swift_getOpaqueTypeConformance2();
    sub_23D949044(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4F48);
  }

  return result;
}

unint64_t sub_23D94A7BC()
{
  result = qword_27E2F4F50;
  if (!qword_27E2F4F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4F30, &qword_23D9DD8A8);
    sub_23D94A848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4F50);
  }

  return result;
}

unint64_t sub_23D94A848()
{
  result = qword_27E2F4F58;
  if (!qword_27E2F4F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4F28, &qword_23D9DD8A0);
    sub_23D949044(&qword_27E2F4F60, type metadata accessor for LiveSpeechAddPhraseView, &protocol conformance descriptor for LiveSpeechAddPhraseView);
    sub_23D91F01C(&qword_27E2F4F68, &qword_27E2F4F70, &qword_23D9DD8C0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4F58);
  }

  return result;
}

uint64_t sub_23D94A9E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23D94AA70()
{
  result = qword_27E2F5000;
  if (!qword_27E2F5000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5008, &unk_23D9DDA20);
    sub_23D91F01C(&qword_27E2F4DA0, &qword_27E2F4DA8, &unk_23D9DD4F0, MEMORY[0x277CDF508]);
    sub_23D91F01C(&qword_27E2F5010, &qword_27E2F5018, &qword_23D9DDA30, MEMORY[0x277CE14C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5000);
  }

  return result;
}

unint64_t sub_23D94AB54()
{
  result = qword_27E2F5020;
  if (!qword_27E2F5020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4FE8, &qword_23D9DDA10);
    sub_23D949044(&qword_27E2F5028, type metadata accessor for MaxRecentCountSelectionView, &protocol conformance descriptor for MaxRecentCountSelectionView);
    sub_23D91F01C(&qword_27E2F4F68, &qword_27E2F4F70, &qword_23D9DD8C0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5020);
  }

  return result;
}

unint64_t sub_23D94AC4C()
{
  result = qword_27E2F5050;
  if (!qword_27E2F5050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5048, &qword_23D9DDA50);
    sub_23D94ACD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5050);
  }

  return result;
}

unint64_t sub_23D94ACD0()
{
  result = qword_27E2F5058;
  if (!qword_27E2F5058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5060, &qword_23D9DDA58);
    sub_23D94AD88();
    sub_23D91F01C(&qword_27E2F5098, &qword_27E2F50A0, &qword_23D9DEA30, MEMORY[0x277CE04A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5058);
  }

  return result;
}

unint64_t sub_23D94AD88()
{
  result = qword_27E2F5068;
  if (!qword_27E2F5068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5070, &qword_23D9DDA60);
    sub_23D94AE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5068);
  }

  return result;
}

unint64_t sub_23D94AE0C()
{
  result = qword_27E2F5078;
  if (!qword_27E2F5078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5080, &qword_23D9DDA68);
    sub_23D91F01C(&qword_27E2F5088, &qword_27E2F5090, &unk_23D9DDA70, MEMORY[0x277CE1150]);
    sub_23D949044(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5078);
  }

  return result;
}

uint64_t sub_23D94AF14(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LiveSpeechCategoryDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23D94AFDC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LiveSpeechCategoryDetailView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_23D94470C(a1, v6, a2);
}

uint64_t sub_23D94B0C0()
{

  return swift_deallocObject();
}

uint64_t sub_23D94B108()
{
  v1 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D9D9464();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D9D9664();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D9D9574();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D94B34C()
{
  v1 = *(type metadata accessor for LiveSpeechCategoryDetailView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D944E30((v0 + v2), v3);
}

unint64_t sub_23D94B3E8()
{
  result = qword_27E2F5140;
  if (!qword_27E2F5140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5138, &qword_23D9DDBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5148, &qword_23D9DDBF0);
    sub_23D91F01C(&qword_27E2F5150, &qword_27E2F5148, &qword_23D9DDBF0, MEMORY[0x277CE11A0]);
    swift_getOpaqueTypeConformance2();
    sub_23D94B4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5140);
  }

  return result;
}

unint64_t sub_23D94B4E4()
{
  result = qword_27E2F5158;
  if (!qword_27E2F5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5158);
  }

  return result;
}

unint64_t sub_23D94B538()
{
  result = qword_27E2F5160;
  if (!qword_27E2F5160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5128, &qword_23D9DDBD8);
    sub_23D94A9E8(&qword_27E2F5168, &qword_27E2F5120, &qword_23D9DDBD0, sub_23D94B3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5160);
  }

  return result;
}

unint64_t sub_23D94B5F0()
{
  result = qword_27E2F5190;
  if (!qword_27E2F5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5190);
  }

  return result;
}

uint64_t sub_23D94B644(uint64_t a1)
{
  v2 = type metadata accessor for SymbolPlatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D94B6C8()
{
  result = qword_27E2F51C0;
  if (!qword_27E2F51C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F51C8, &qword_23D9DDC38);
    sub_23D949B08();
    sub_23D91F01C(&qword_27E2F4EE8, &qword_27E2F4ED8, &qword_23D9DD738, MEMORY[0x277CE04B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F51C0);
  }

  return result;
}

uint64_t sub_23D94B784(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXSUIVoiceOverSpeechViewContext(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23D94B908()
{
  result = qword_27E2F51E8;
  if (!qword_27E2F51E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F51D0, &qword_23D9DDCB8);
    sub_23D91F01C(&qword_27E2F51E0, &qword_27E2F51D8, &unk_23D9DDCC0, MEMORY[0x277CE04B8]);
    sub_23D949044(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F51E8);
  }

  return result;
}

uint64_t sub_23D94BA20()
{
  type metadata accessor for LiveSpeechDataViewModel(0);
  swift_allocObject();
  return sub_23D951DBC();
}

void *LiveSpeechCategoryManagerView.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23D94BA20;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = sub_23D9DA3A4();
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  return result;
}

uint64_t LiveSpeechCategoryManagerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F51F0, &qword_23D9DDCF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F51F8, &qword_23D9DDCF8);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - v5;
  v7 = v1[1];
  v35 = *v1;
  *v36 = v7;
  *&v36[16] = v1[2];
  v29 = &v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5200, &qword_23D9DDD00);
  sub_23D94F7F0(&qword_27E2F5208, &qword_27E2F5200, &qword_23D9DDD00, sub_23D94C07C);
  sub_23D9DA684();
  v28 = &v35;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5240, &qword_23D9DDD20);
  v9 = sub_23D91F01C(&qword_27E2F5248, &qword_27E2F51F0, &qword_23D9DDCF0, &unk_23D9DDEE0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5250, &unk_23D9DDD28);
  v11 = sub_23D91F01C(&qword_27E2F5258, &qword_27E2F5250, &unk_23D9DDD28, MEMORY[0x277CDD7A0]);
  v30 = v10;
  v31 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D9DA1A4();
  sub_23D91F344(v4, &qword_27E2F51F0, &qword_23D9DDCF0);
  v34 = *&v36[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v13 = swift_allocObject();
  v14 = *v36;
  v13[1] = v35;
  v13[2] = v14;
  v13[3] = *&v36[16];
  sub_23D94CFF4(&v35, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5260, &qword_23D9DDD38);
  v30 = v2;
  v31 = v8;
  v32 = v9;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_23D94D02C();
  v15 = v27;
  v16 = v25;
  sub_23D9DA184();

  (*(v26 + 8))(v6, v16);
  v17 = swift_allocObject();
  v18 = *v36;
  *(v17 + 1) = v35;
  *(v17 + 2) = v18;
  *(v17 + 3) = *&v36[16];
  v19 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5270, &qword_23D9DDD40) + 36));
  *v19 = sub_23D94D318;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  sub_23D94CFF4(&v35, &v30);
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  v20 = sub_23D9D9494();
  v21 = sub_23D9D9324();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5278, &qword_23D9DDD48);
  v23 = (v15 + *(result + 36));
  *v23 = v21;
  v23[1] = v20;
  return result;
}

uint64_t sub_23D94BFC0@<X0>(_OWORD *a1@<X0>, uint64_t a7@<X8>)
{
  v9 = a1[1];
  v14[0] = *a1;
  v14[1] = v9;
  v14[2] = a1[2];
  sub_23D94C1B0(a7);
  v10 = swift_allocObject();
  v11 = a1[1];
  *(v10 + 1) = *a1;
  *(v10 + 2) = v11;
  *(v10 + 3) = a1[2];
  v12 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5200, &qword_23D9DDD00) + 36));
  *v12 = sub_23D9517B4;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  return sub_23D94CFF4(a1, v14);
}

unint64_t sub_23D94C07C()
{
  result = qword_27E2F5210;
  if (!qword_27E2F5210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5218, &qword_23D9DDD08);
    sub_23D94C100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5210);
  }

  return result;
}

unint64_t sub_23D94C100()
{
  result = qword_27E2F5220;
  if (!qword_27E2F5220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5228, &qword_23D9DDD10);
    sub_23D91F01C(&qword_27E2F5230, &qword_27E2F5238, &qword_23D9DDD18, MEMORY[0x277CE1140]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5220);
  }

  return result;
}

uint64_t sub_23D94C1B0@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5228, &qword_23D9DDD10);
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = &v9 - v2;
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  sub_23D9D9494();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  if (v12 >> 62)
  {
    v4 = sub_23D9DAF34();
  }

  else
  {
    v4 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < 1)
  {
    v7 = 1;
    v6 = v10;
    v5 = v11;
  }

  else
  {
    sub_23D9D9494();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D9D9384();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49F8, &unk_23D9DE140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5238, &qword_23D9DDD18);
    sub_23D91F01C(&qword_27E2F4A00, &qword_27E2F49F8, &unk_23D9DE140, MEMORY[0x277D83980]);
    sub_23D91F01C(&qword_27E2F5230, &qword_27E2F5238, &qword_23D9DDD18, MEMORY[0x277CE1140]);
    sub_23D9517BC(&qword_27E2F4A08, MEMORY[0x277D70718], MEMORY[0x277D70720]);
    sub_23D9DA624();
    v6 = v10;
    v5 = v11;
    (*(v1 + 32))(v11, v3, v10);
    v7 = 0;
  }

  return (*(v1 + 56))(v5, v7, 1, v6);
}

uint64_t sub_23D94C540(uint64_t *a1)
{
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  sub_23D9D9494();
  sub_23D9524C0();
}

uint64_t sub_23D94C5E0(uint64_t a1)
{
  v2 = sub_23D9D9BC4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5250, &unk_23D9DDD28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  sub_23D9D9B84();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53B8, &qword_23D9DE1E0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F53C0, &qword_23D9DE1E8);
  v8 = sub_23D9514E4();
  v13 = v7;
  v14 = MEMORY[0x277D837D0];
  v15 = v8;
  v16 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  sub_23D9D94B4();
  v9 = sub_23D91F01C(&qword_27E2F5258, &qword_27E2F5250, &unk_23D9DDD28, MEMORY[0x277CDD7A0]);
  MEMORY[0x23EEF2F00](v6, v3, v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D94C7F8@<X0>(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53E8, &qword_23D9DE1F8);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53C0, &qword_23D9DE1E8);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  sub_23D94C9D4();
  sub_23D95162C();
  sub_23D9DA114();
  sub_23D91F344(v4, &qword_27E2F53E8, &qword_23D9DE1F8);
  KeyPath = swift_getKeyPath();
  v9 = &v7[*(v5 + 36)];
  *v9 = 0xD000000000000016;
  *(v9 + 1) = 0x800000023D9E4100;
  *(v9 + 2) = KeyPath;
  v9[24] = 0;
  v11[2] = 0x657461657263;
  v11[3] = 0xE600000000000000;
  sub_23D9DA794();
  sub_23D9514E4();
  sub_23D9DA124();
  return sub_23D91F344(v7, &qword_27E2F53C0, &qword_23D9DE1E8);
}

uint64_t sub_23D94C9D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53F8, &qword_23D9DE200);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53E8, &qword_23D9DE1F8);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  v8 = v0[1];
  v14[0] = *v0;
  v14[1] = v8;
  v14[2] = v0[2];
  v9 = swift_allocObject();
  v10 = v0[1];
  v9[1] = *v0;
  v9[2] = v10;
  v9[3] = v0[2];
  sub_23D94CFF4(v14, v13);
  sub_23D9DA404();
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x800000023D9E4120;
  v13[0] = AXSUILocString(_:)(v11);
  sub_23D91F01C(&qword_27E2F53F0, &qword_27E2F53F8, &qword_23D9DE200, MEMORY[0x277CDF030]);
  sub_23D91B650();
  sub_23D9DA0A4();

  (*(v2 + 8))(v4, v1);
  sub_23D9D96A4();
  return sub_23D91F344(v7, &qword_27E2F53E8, &qword_23D9DE1F8);
}

uint64_t sub_23D94CC60@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_23D9D9C94();
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  MEMORY[0x28223BE20](CustomCategoryView);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v11 = v29;
  v10 = v30;
  v12 = v31;
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  v13 = sub_23D9D9794();
  v15 = v14;
  *(v9 + CustomCategoryView[5]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  *(v9 + CustomCategoryView[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  *v9 = v13;
  v9[1] = v15;
  v16 = v9 + CustomCategoryView[7];
  *v16 = v11;
  *(v16 + 1) = v10;
  v16[16] = v12;
  v17 = v9 + CustomCategoryView[8];
  LOBYTE(v32) = 0;
  sub_23D9DA3A4();
  v18 = v30;
  *v17 = v29;
  *(v17 + 1) = v18;
  v29 = 0x657461657263;
  v30 = 0xE600000000000000;
  sub_23D9DA794();
  sub_23D9D9B44();
  sub_23D9517BC(&qword_27E2F4E98, type metadata accessor for LiveSpeechCreateCustomCategoryView, &unk_23D9DF190);
  v19 = v28;
  v20 = v26;
  sub_23D9DA0E4();
  (*(v27 + 8))(v6, v20);
  sub_23D951804(v9, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v21 = swift_allocObject();
  v22 = a1[1];
  *(v21 + 1) = *a1;
  *(v21 + 2) = v22;
  *(v21 + 3) = a1[2];
  v23 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5260, &qword_23D9DDD38) + 36));
  *v23 = sub_23D9514CC;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  return sub_23D94CFF4(a1, &v29);
}

unint64_t sub_23D94D02C()
{
  result = qword_27E2F5268;
  if (!qword_27E2F5268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5260, &qword_23D9DDD38);
    type metadata accessor for LiveSpeechCreateCustomCategoryView(255);
    sub_23D9D9C94();
    sub_23D9517BC(&qword_27E2F4E98, type metadata accessor for LiveSpeechCreateCustomCategoryView, &unk_23D9DF190);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5268);
  }

  return result;
}

uint64_t sub_23D94D138(uint64_t *a1)
{
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  sub_23D9D9494();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_23D9D9394();
}

uint64_t sub_23D94D1FC(uint64_t *a1)
{
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  sub_23D9D9494();
  v1 = [objc_opt_self() categories];
  sub_23D9DAD44();
  sub_23D9DA974();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9394();
  sub_23D9524C0();
}

uint64_t sub_23D94D33C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9DA364();
  *a1 = result;
  return result;
}

uint64_t sub_23D94D370@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_23D9D99B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5400, &qword_23D9DE230);
  return sub_23D94D3C8(v3, a2 + *(v4 + 44));
}

uint64_t sub_23D94D3C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v42 = a2;
  v2 = sub_23D9D9A84();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23D9D9CE4();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CategoryRowView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5408, &qword_23D9DE238);
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v13 = &v34 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5410, &qword_23D9DE240);
  MEMORY[0x28223BE20](v39);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = &v34 - v17;
  type metadata accessor for LiveSpeechDataViewModel(0);
  sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  *v10 = sub_23D9D9794();
  *(v10 + 1) = v18;
  v43 = 0;
  sub_23D9DA3A4();
  v19 = v45;
  v10[16] = v44;
  *(v10 + 3) = v19;
  v44 = 0x4034000000000000;
  sub_23D94B5F0();
  sub_23D9D94D4();
  v20 = v36;
  *&v10[*(v8 + 28)] = v36;
  v21 = v20;
  sub_23D9D9CC4();
  v22 = sub_23D9517BC(&qword_27E2F5418, type metadata accessor for CategoryRowView, &unk_23D9DDE90);
  sub_23D9DA0D4();
  (*(v5 + 8))(v7, v38);
  sub_23D951804(v10, type metadata accessor for CategoryRowView);
  sub_23D9D9A64();
  v44 = v8;
  v45 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v35;
  sub_23D9DA104();
  (*(v40 + 8))(v4, v41);
  (*(v11 + 8))(v13, v23);
  v24 = [v21 localizedName];
  v25 = sub_23D9DA8B4();
  v27 = v26;

  v44 = v25;
  v45 = v27;
  sub_23D91B650();
  v28 = v37;
  sub_23D9D9684();

  sub_23D91F344(v15, &qword_27E2F5410, &qword_23D9DE240);
  v29 = [v21 name];
  v30 = sub_23D9DA8B4();
  v32 = v31;

  v44 = 0xD000000000000011;
  v45 = 0x800000023D9E4160;
  MEMORY[0x23EEF3C30](v30, v32);

  sub_23D9D96A4();

  return sub_23D91F344(v28, &qword_27E2F5410, &qword_23D9DE240);
}

uint64_t sub_23D94D920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23D94D97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_23D94D9F0()
{
  result = qword_27E2F5280;
  if (!qword_27E2F5280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5278, &qword_23D9DDD48);
    sub_23D94DAA8();
    sub_23D91F01C(&qword_27E2F4F68, &qword_27E2F4F70, &qword_23D9DD8C0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5280);
  }

  return result;
}

unint64_t sub_23D94DAA8()
{
  result = qword_27E2F5288;
  if (!qword_27E2F5288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5270, &qword_23D9DDD40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F51F8, &qword_23D9DDCF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5260, &qword_23D9DDD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F51F0, &qword_23D9DDCF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5240, &qword_23D9DDD20);
    sub_23D91F01C(&qword_27E2F5248, &qword_27E2F51F0, &qword_23D9DDCF0, &unk_23D9DDEE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5250, &unk_23D9DDD28);
    sub_23D91F01C(&qword_27E2F5258, &qword_27E2F5250, &unk_23D9DDD28, MEMORY[0x277CDD7A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D94D02C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5288);
  }

  return result;
}

uint64_t sub_23D94DCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23D94DD9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CategoryRowView(uint64_t a1)
{
  result = qword_27E2F5298;
  if (!qword_27E2F5298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D94DEB0(uint64_t a1)
{
  sub_23D934258(319);
  if (v1 <= 0x3F)
  {
    sub_23D9273D0();
    if (v2 <= 0x3F)
    {
      sub_23D94DF64(319);
      if (v3 <= 0x3F)
      {
        sub_23D9DAD44();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23D94DF64(uint64_t a1)
{
  if (!qword_27E2F52A8[0])
  {
    sub_23D94B5F0();
    v1 = sub_23D9D94F4();
    if (!v2)
    {
      atomic_store(v1, qword_27E2F52A8);
    }
  }
}

uint64_t sub_23D94DFC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23D94E038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_23D94E178(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_23D94E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for CategoryRowView(0);
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = v4;
  v51 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44[-v12];
  v14 = type metadata accessor for LiveSpeechCategoryDetailView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5358, &qword_23D9DDF40);
  MEMORY[0x28223BE20](v48);
  v18 = &v44[-v17];
  LOBYTE(v17) = *(a1 + 16);
  v52 = a1;
  v19 = *(a1 + 24);
  v57[0] = v17;
  v58 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v20 = v54;
  v46 = v55;
  v45 = v56;
  type metadata accessor for LiveSpeechDataViewModel(0);
  v47 = sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
  v21 = sub_23D9D9794();
  v23 = v22;
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  swift_storeEnumTagMultiPayload();
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  *v16 = v21;
  v16[1] = v23;
  sub_23D92A2BC(v13, v16 + v14[5], &qword_27E2F48B0, &unk_23D9DF0F0);
  sub_23D92A2BC(v10, v16 + v14[6], &qword_27E2F4D38, &unk_23D9DD440);
  sub_23D92A2BC(v7, v16 + v14[7], &qword_27E2F45D8, &unk_23D9DCB30);
  v24 = v16 + v14[8];
  v25 = v46;
  *v24 = v20;
  *(v24 + 1) = v25;
  v24[16] = v45;
  v26 = v16 + v14[9];
  v57[0] = 0;
  sub_23D9DA3A4();
  v27 = v55;
  *v26 = v54;
  *(v26 + 1) = v27;
  v28 = [objc_opt_self() mainBundle];
  v29 = [v28 bundleIdentifier];

  if (v29)
  {
    v30 = sub_23D9DA8B4();
    v32 = v31;

    if (v30 == 0xD000000000000010 && 0x800000023D9E40E0 == v32)
    {
      LOBYTE(v29) = 1;
    }

    else
    {
      LOBYTE(v29) = sub_23D9DAFC4();
    }
  }

  *(v16 + v14[10]) = v29 & 1;
  v33 = v52;
  v34 = *v52;
  if (*v52)
  {

    v35 = sub_23D9D9324();
    sub_23D95115C(v16, v18, type metadata accessor for LiveSpeechCategoryDetailView);
    v36 = &v18[*(v48 + 36)];
    *v36 = v35;
    v36[1] = v34;
    v37 = v33;
    v38 = v51;
    sub_23D950FE8(v37, v51);
    v39 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v40 = swift_allocObject();
    sub_23D95115C(v38, v40 + v39, type metadata accessor for CategoryRowView);
    v41 = v53;
    sub_23D92A2BC(v18, v53, &qword_27E2F5358, &qword_23D9DDF40);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5330, &qword_23D9DDF30);
    v43 = (v41 + *(result + 36));
    *v43 = sub_23D9511C4;
    v43[1] = v40;
    v43[2] = 0;
    v43[3] = 0;
  }

  else
  {
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D94E9B0()
{
  if (!*v0)
  {
    type metadata accessor for LiveSpeechDataViewModel(0);
    sub_23D9517BC(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel, &unk_23D9DE3D0);
    result = sub_23D9D9784();
    __break(1u);
    return result;
  }

  v1 = *(v0 + *(type metadata accessor for CategoryRowView(0) + 28));
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  sub_23D9D9394();

  v3 = [v2 phrases];
  sub_23D9DACF4();
  v4 = sub_23D9DA974();

  swift_getKeyPath();
  swift_getKeyPath();
  *v21 = v4;
  sub_23D9D9394();
  v5 = [v2 isRecents];
  swift_getKeyPath();
  swift_getKeyPath();
  if ((v5 & 1) == 0)
  {

    v7 = sub_23D9D9374();
    sub_23D94F95C(v8);
    v7(v21, 0);
  }

  sub_23D9D9384();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9384();

  if (v21[0] > 2u)
  {
    v6 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v6 = qword_23D9DE258[v21[0]];
  }

  v10 = sub_23D951314(v6, *v21);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_23D9DAFD4();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v16 >> 1, v14))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v20 != (v16 >> 1) - v14)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_8:
    sub_23D94FC74(v10, v12, v14, v16);
    v18 = v17;
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v18 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v18)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

LABEL_16:
  swift_getKeyPath();
  swift_getKeyPath();
  *v21 = v18;
  return sub_23D9D9394();
}

uint64_t sub_23D94ED9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23D9D99B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5368, &qword_23D9DDF48);
  return sub_23D94EDF4(a1, a2 + *(v4 + 44));
}

uint64_t sub_23D94EDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5180, &qword_23D9DDF50);
  MEMORY[0x28223BE20](v49);
  v5 = &v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5370, &qword_23D9DDF58);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v48 = type metadata accessor for CategoryRowView(0);
  v50 = *(a1 + *(v48 + 28));
  v12 = [v50 symbol];
  sub_23D9DA8B4();

  v13 = sub_23D9DA384();
  v14 = sub_23D9D9E44();
  KeyPath = swift_getKeyPath();
  v47 = v13;
  v57 = v13;
  v58 = 0;
  LOWORD(v59) = 1;
  v60 = KeyPath;
  v61 = v14;
  v16 = *MEMORY[0x277CDF990];
  v17 = sub_23D9D9664();
  (*(*(v17 - 8) + 104))(v5, v16, v17);
  sub_23D9517BC(&qword_27E2F5198, MEMORY[0x277CDFA20], MEMORY[0x277CDFA40]);
  result = sub_23D9DA894();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5378, &qword_23D9DDF90);
    sub_23D950DB8();
    v44 = v6;
    v46 = a2;
    v45 = v8;
    sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50, MEMORY[0x277D84470]);
    sub_23D9DA044();
    sub_23D91F344(v5, &qword_27E2F5180, &qword_23D9DDF50);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    sub_23D9D94E4();
    sub_23D9D94E4();
    sub_23D9DA734();
    sub_23D9D9544();
    v19 = &v11[*(v44 + 36)];
    v20 = v53[1];
    *v19 = v53[0];
    *(v19 + 1) = v20;
    *(v19 + 2) = v53[2];
    v21 = [v50 localizedName];
    v22 = sub_23D9DA8B4();
    v24 = v23;

    v57 = v22;
    v58 = v24;
    sub_23D91B650();
    v25 = sub_23D9D9F04();
    v27 = v26;
    v29 = v28;
    sub_23D9D9DD4();
    v30 = sub_23D9D9EE4();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    sub_23D9274BC(v25, v27, v29 & 1);

    LOBYTE(v27) = sub_23D9D9D84();
    LOBYTE(v57) = v34 & 1;
    LOBYTE(v54) = 1;
    v37 = v45;
    sub_23D950EF4(v11, v45);
    v38 = v46;
    sub_23D950EF4(v37, v46);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53A8, &qword_23D9DDFA8);
    v40 = (v38 + *(v39 + 48));
    *&v54 = v30;
    *(&v54 + 1) = v32;
    LOBYTE(v55) = v34 & 1;
    *(&v55 + 1) = *v52;
    DWORD1(v55) = *&v52[3];
    *(&v55 + 1) = v36;
    v56[0] = v27;
    *&v56[1] = *v51;
    *&v56[4] = *&v51[3];
    memset(&v56[8], 0, 32);
    v56[40] = 1;
    v41 = v55;
    *v40 = v54;
    v40[1] = v41;
    v42 = *&v56[16];
    v40[2] = *v56;
    v40[3] = v42;
    *(v40 + 57) = *&v56[25];
    v43 = v38 + *(v39 + 64);
    *v43 = 0;
    *(v43 + 8) = 1;
    sub_23D950F64(&v54, &v57);
    sub_23D91F344(v11, &qword_27E2F5370, &qword_23D9DDF58);
    v57 = v30;
    v58 = v32;
    LOBYTE(v59) = v34 & 1;
    *(&v59 + 1) = *v52;
    HIDWORD(v59) = *&v52[3];
    v60 = v36;
    LOBYTE(v61) = v27;
    *(&v61 + 1) = *v51;
    HIDWORD(v61) = *&v51[3];
    v62 = 0u;
    v63 = 0u;
    v64 = 1;
    sub_23D91F344(&v57, &qword_27E2F4AB8, &qword_23D9DCDC0);
    return sub_23D91F344(v37, &qword_27E2F5370, &qword_23D9DDF58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D94F3C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5330, &qword_23D9DDF30);
  MEMORY[0x28223BE20](v1);
  v5 = v0;
  sub_23D94E3B4(v0, &v4[-v2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5338, &qword_23D9DDF38);
  sub_23D91F01C(&qword_27E2F5340, &qword_27E2F5338, &qword_23D9DDF38, MEMORY[0x277CE1140]);
  sub_23D94F7F0(&qword_27E2F5348, &qword_27E2F5330, &qword_23D9DDF30, sub_23D94F874);
  return sub_23D9D95C4();
}

uint64_t sub_23D94F560(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v17 = MEMORY[0x277D84A98];
  v18 = v2;
  v19 = MEMORY[0x277D84AA8];
  v20 = v3;
  v4 = sub_23D9D9E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v14 = v2;
  v15 = v3;
  v16 = v1;
  sub_23D9D9E84();
  swift_getWitnessTable();
  sub_23D91F510();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_23D91F510();
  return (v11)(v10, v4);
}

uint64_t sub_23D94F6FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D91F510();
  sub_23D91F510();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23D94F7F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23D94F874()
{
  result = qword_27E2F5350;
  if (!qword_27E2F5350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5358, &qword_23D9DDF40);
    sub_23D9517BC(&qword_27E2F5360, type metadata accessor for LiveSpeechCategoryDetailView, &protocol conformance descriptor for LiveSpeechCategoryDetailView);
    sub_23D91F01C(&qword_27E2F4F68, &qword_27E2F4F70, &qword_23D9DD8C0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5350);
  }

  return result;
}

uint64_t sub_23D94F95C(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_23D951260(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_23D94FD58(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23D94F9D4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v4;
  return result;
}

uint64_t sub_23D94FA7C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v4;
  return result;
}

uint64_t sub_23D94FAFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D9D9394();
}

void *sub_23D94FB78(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
  v4 = *(sub_23D9D8954() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23D94FC74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_23D9DACF4();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53B0, &unk_23D9DE130);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_23D94FD58(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_23D9DAF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23D9DACF4();
        v6 = sub_23D9DA984();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_23D950010(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23D94FE5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23D94FE5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 text];
      sub_23D9DA8B4();

      v11 = sub_23D9DA8E4();
      v13 = v12;

      v14 = [v9 text];
      sub_23D9DA8B4();

      v15 = sub_23D9DA8E4();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_23D9DAFC4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23D950010(void ***a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v5 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = v4;
LABEL_109:
      v4 = *(v109 + 2);
      if (v4 >= 2)
      {
        while (*v5)
        {
          v110 = *&v109[16 * v4];
          v111 = v109;
          v112 = *&v109[16 * v4 + 24];
          sub_23D9508B4(*v5 + v110, *v5 + *&v109[16 * v4 + 16], *v5 + v112, v6);
          if (v127)
          {
            goto LABEL_117;
          }

          if (v112 < v110)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_23D950D9C(v111);
          }

          if (v4 - 2 >= *(v111 + 2))
          {
            goto LABEL_133;
          }

          v113 = &v111[16 * v4];
          *v113 = v110;
          *(v113 + 1) = v112;
          sub_23D950D10(v4 - 1);
          v109 = v111;
          v4 = *(v111 + 2);
          if (v4 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_143;
      }

LABEL_117:

      return;
    }

LABEL_139:
    v109 = sub_23D950D9C(v4);
    goto LABEL_109;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v123 = v7;
      v116 = v9;
      v118 = v10;
      v4 = *v6;
      v11 = *(*v6 + v8);
      v12 = *(*v6 + v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 text];
      sub_23D9DA8B4();

      v5 = sub_23D9DA8E4();
      v17 = v16;

      v18 = [v14 text];
      sub_23D9DA8B4();

      v19 = sub_23D9DA8E4();
      v21 = v20;

      if (v5 == v19 && v17 == v21)
      {
        v128 = 0;
      }

      else
      {
        v128 = sub_23D9DAFC4();
      }

      v10 = v118;
      v8 = v118 + 2;
      if (v118 + 2 < v123)
      {
        v4 += 8 * v118 + 16;
        do
        {
          v125 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 text];
          sub_23D9DA8B4();

          v28 = sub_23D9DA8E4();
          v30 = v29;

          v31 = [v26 text];
          sub_23D9DA8B4();
          v5 = v32;

          v33 = sub_23D9DA8E4();
          v35 = v34;

          if (v28 == v33 && v30 == v35)
          {

            v8 = v125;
            if (v128)
            {
              v6 = a3;
              v9 = v116;
              v10 = v118;
              goto LABEL_25;
            }
          }

          else
          {
            v23 = sub_23D9DAFC4();

            v8 = v125;
            if ((v128 ^ v23))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v123 != v8);
        v8 = v123;
LABEL_23:
        v10 = v118;
      }

      v6 = a3;
      v9 = v116;
      if (v128)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v37 = 8 * v8 - 8;
          v38 = 8 * v10;
          v39 = v8;
          v40 = v10;
          do
          {
            if (v40 != --v39)
            {
              v41 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v42 = *&v41[v38];
              *&v41[v38] = *&v41[v37];
              *&v41[v37] = v42;
            }

            ++v40;
            v37 -= 8;
            v38 += 8;
          }

          while (v40 < v39);
        }
      }
    }

    v43 = v6[1];
    if (v8 < v43)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    v62 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v62;
    }

    else
    {
      v9 = sub_23D93C534(0, *(v62 + 2) + 1, 1, v62);
    }

    v4 = *(v9 + 2);
    v63 = *(v9 + 3);
    v64 = v4 + 1;
    if (v4 >= v63 >> 1)
    {
      v9 = sub_23D93C534((v63 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v64;
    v65 = &v9[16 * v4];
    *(v65 + 4) = v10;
    *(v65 + 5) = v8;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v66 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v9 + 4);
          v68 = *(v9 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_74:
          if (v70)
          {
            goto LABEL_123;
          }

          v83 = &v9[16 * v64];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_126;
          }

          v89 = &v9[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_130;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v64 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v93 = &v9[16 * v64];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_88:
        if (v88)
        {
          goto LABEL_125;
        }

        v96 = &v9[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_128;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v66 - 1;
        if (v66 - 1 >= v64)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v104 = v8;
        v105 = v9;
        v106 = *&v9[16 * v4 + 32];
        v107 = *&v9[16 * v66 + 40];
        sub_23D9508B4(*v6 + v106, *v6 + *&v9[16 * v66 + 32], *v6 + v107, v5);
        if (v127)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_23D950D9C(v105);
        }

        if (v4 >= *(v105 + 2))
        {
          goto LABEL_120;
        }

        v108 = &v105[16 * v4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        sub_23D950D10(v66);
        v9 = v105;
        v64 = *(v105 + 2);
        v8 = v104;
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v9[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_121;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_122;
      }

      v78 = &v9[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_124;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_127;
      }

      if (v82 >= v74)
      {
        v100 = &v9[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_131;
        }

        if (v69 < v103)
        {
          v66 = v64 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  v44 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v44 >= v43)
  {
    v44 = v6[1];
  }

  if (v44 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v44)
  {
    goto LABEL_54;
  }

  v117 = v9;
  v119 = v10;
  v129 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v45 = v10 - v8;
  v121 = v44;
LABEL_43:
  v124 = v4;
  v126 = v8;
  v46 = v129[v8];
  v122 = v45;
  v47 = v45;
  while (1)
  {
    v48 = *v4;
    v49 = v46;
    v5 = v48;
    v50 = [v49 text];
    sub_23D9DA8B4();

    v51 = sub_23D9DA8E4();
    v53 = v52;

    v54 = [v5 text];
    sub_23D9DA8B4();

    v55 = sub_23D9DA8E4();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_42:
      v8 = v126 + 1;
      v4 = v124 + 8;
      v45 = v122 - 1;
      if (v126 + 1 == v121)
      {
        v8 = v121;
        v6 = a3;
        v9 = v117;
        v10 = v119;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v59 = sub_23D9DAFC4();

    if ((v59 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v129)
    {
      break;
    }

    v60 = *v4;
    v46 = *(v4 + 8);
    *v4 = v46;
    *(v4 + 8) = v60;
    v4 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_23D9508B4(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v6 = v13;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v51 = v6;
      v15 = v4;
      v16 = *v4;
      v17 = *v6;
      v18 = v16;
      v19 = [v17 text];
      sub_23D9DA8B4();

      v20 = sub_23D9DA8E4();
      v22 = v21;

      v23 = [v18 text];
      sub_23D9DA8B4();

      v24 = sub_23D9DA8E4();
      v26 = v25;

      if (v20 == v24 && v22 == v26)
      {
        break;
      }

      v28 = sub_23D9DAFC4();

      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }

      v14 = v51;
      v6 = v51 + 1;
      v4 = v15;
      if (v13 != v51)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v13;
      if (v4 >= v54)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v14 = v15;
    v4 = v15 + 1;
    v6 = v51;
    if (v13 == v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v13 = *v14;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v12] <= a4)
  {
    memmove(a4, __src, 8 * v12);
  }

  v54 = &v4[v12];
  if (v10 >= 8 && v6 > __dst)
  {
    v47 = v4;
LABEL_30:
    v52 = v6;
    v29 = v6 - 1;
    v30 = v5;
    v31 = v54;
    v48 = v29;
    do
    {
      v32 = *--v31;
      v33 = *v29;
      v34 = v32;
      v35 = v33;
      v49 = v34;
      v36 = [v34 text];
      sub_23D9DA8B4();

      v37 = sub_23D9DA8E4();
      v39 = v38;

      v50 = v35;
      v40 = [v35 text];
      sub_23D9DA8B4();

      v41 = sub_23D9DA8E4();
      v43 = v42;

      if (v37 == v41 && v39 == v43)
      {

        v5 = v30 - 1;
      }

      else
      {
        v45 = sub_23D9DAFC4();

        v5 = v30 - 1;
        if (v45)
        {
          v4 = v47;
          if (v30 != v52)
          {
            *v5 = *v48;
          }

          if (v54 <= v47 || (v6 = v48, v48 <= __dst))
          {
            v6 = v48;
            goto LABEL_47;
          }

          goto LABEL_30;
        }
      }

      v4 = v47;
      v29 = v48;
      if (v54 != v30)
      {
        *v5 = *v31;
      }

      v54 = v31;
      v30 = v5;
    }

    while (v31 > v47);
    v54 = v31;
    v6 = v52;
  }

LABEL_47:
  if (v6 != v4 || v6 >= (v4 + ((v54 - v4 + (v54 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v54 - v4));
  }

  return 1;
}

uint64_t sub_23D950D10(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23D950D9C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_23D950DB8()
{
  result = qword_27E2F5380;
  if (!qword_27E2F5380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5378, &qword_23D9DDF90);
    sub_23D950E70();
    sub_23D91F01C(&qword_27E2F5398, &qword_27E2F53A0, &qword_23D9DDFA0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5380);
  }

  return result;
}

unint64_t sub_23D950E70()
{
  result = qword_27E2F5388;
  if (!qword_27E2F5388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5390, &qword_23D9DDF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5388);
  }

  return result;
}

uint64_t sub_23D950EF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5370, &qword_23D9DDF58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D950F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AB8, &qword_23D9DCDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D950FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D95104C()
{
  v1 = (type metadata accessor for CategoryRowView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_23D95115C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D951260(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23D9DAF34();
  }

  return sub_23D9DAE94();
}

uint64_t sub_23D951314(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v11 = result;
    v5 = sub_23D9DAF34();
    result = v11;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_32;
  }

LABEL_4:
  v7 = -result;
  if (v6 > 0 || v6 <= v7)
  {
    v8 = v5 - result;
    if (__OFADD__(v5, v7))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v5 < v8)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = 0;
    if (!v4)
    {
LABEL_8:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_23D9DAF34();
LABEL_13:
  if (result < v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4)
  {
    result = sub_23D9DAF34();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v5)
  {
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v3 & 0xC000000000000001) == 0 || v8 == v5)
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v8 < v5)
  {
    sub_23D9DACF4();

    v9 = v8;
    do
    {
      v10 = v9 + 1;
      sub_23D9DAE74();
      v9 = v10;
    }

    while (v5 != v10);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_23D9DAF44();
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_23D9514E4()
{
  result = qword_27E2F53C8;
  if (!qword_27E2F53C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F53C0, &qword_23D9DE1E8);
    sub_23D951570();
    sub_23D91EAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F53C8);
  }

  return result;
}

unint64_t sub_23D951570()
{
  result = qword_27E2F53D0;
  if (!qword_27E2F53D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F53D8, &qword_23D9DE1F0);
    sub_23D95162C();
    sub_23D9517BC(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F53D0);
  }

  return result;
}

unint64_t sub_23D95162C()
{
  result = qword_27E2F53E0;
  if (!qword_27E2F53E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F53E8, &qword_23D9DE1F8);
    sub_23D91F01C(&qword_27E2F53F0, &qword_27E2F53F8, &qword_23D9DE200, MEMORY[0x277CDF030]);
    sub_23D9517BC(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F53E0);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  sub_23D94CFE4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_23D9517BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D951804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D951950()
{
  v1 = *v0;
  sub_23D9DB034();
  MEMORY[0x23EEF4340](qword_23D9DE6D0[v1]);
  return sub_23D9DB064();
}

uint64_t sub_23D9519D8(uint64_t a1)
{
  v2 = *v1;
  sub_23D9DB034();
  MEMORY[0x23EEF4340](qword_23D9DE6D0[v2]);
  return sub_23D9DB064();
}

uint64_t sub_23D951A38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23D95483C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23D951AA0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  return v3;
}

uint64_t sub_23D951B34(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  return v3;
}

uint64_t sub_23D951BF0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  return v3;
}

uint64_t sub_23D951C5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  return v1;
}

id sub_23D951CD0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D9D9394();
  v1 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  return [v1 setMaxPreferredPhraseCount_];
}

uint64_t sub_23D951DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54F8, &qword_23D9DE5E0);
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = &v38 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54F0, &qword_23D9DE5D8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54E8, &qword_23D9DE5D0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54E0, &qword_23D9DE5C8);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v38 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54D8, &qword_23D9DE5C0);
  v9 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54D0, &qword_23D9DE5B8);
  v44 = *(v12 - 8);
  v13 = v44;
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__selectedCategoryName;
  v43 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__selectedCategoryName;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_23D9D9344();
  v17 = *(v13 + 32);
  v17(v0 + v16, v15, v12);
  v18 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__selectedCategorySymbol;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_23D9D9344();
  v17(v0 + v18, v15, v12);
  v19 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__tapCategory;
  v56 = [objc_opt_self() makeEmptyCategory];
  sub_23D9DAD44();
  sub_23D9D9344();
  (*(v9 + 32))(v0 + v19, v11, v39);
  v20 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__tapPhrase;
  v21 = objc_opt_self();
  v56 = [v21 makeEmptyPhrase];
  sub_23D9DACF4();
  v22 = v40;
  sub_23D9D9344();
  (*(v41 + 32))(v0 + v20, v22, v42);
  v23 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__categories;
  v24 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49F8, &unk_23D9DE140);
  v25 = v45;
  sub_23D9D9344();
  (*(v46 + 32))(v0 + v23, v25, v47);
  v26 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__phrases;
  v56 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50D8, &unk_23D9DE2C0);
  v27 = v48;
  sub_23D9D9344();
  (*(v49 + 32))(v0 + v26, v27, v50);
  v28 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__isEditingPhrase;
  LOBYTE(v56) = 0;
  v29 = v51;
  sub_23D9D9344();
  v30 = v53;
  v31 = *(v52 + 32);
  v31(v0 + v28, v29, v53);
  v32 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__isEditingCategory;
  LOBYTE(v56) = 0;
  sub_23D9D9344();
  v31(v0 + v32, v29, v30);
  v33 = v43;
  swift_beginAccess();
  v34 = *(v44 + 8);
  v34(v0 + v33, v12);
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_23D9D9344();
  swift_endAccess();
  swift_beginAccess();
  v34(v0 + v18, v12);
  v54 = 0x69662E6573756F68;
  v55 = 0xEA00000000006C6CLL;
  sub_23D9D9344();
  swift_endAccess();
  v35 = [v21 maxPreferredPhraseCount];
  v36 = 0;
  if (v35 > 49)
  {
    if (v35 == 50)
    {
      v36 = 1;
    }

    else if (v35 == 100)
    {
      v36 = 2;
    }
  }

  else if (v35 == 1)
  {
    v36 = 3;
  }

  else if (v35 == 10)
  {
    v36 = 0;
  }

  swift_beginAccess();
  LOBYTE(v54) = v36;
  sub_23D9D9344();
  swift_endAccess();
  return v0;
}

uint64_t sub_23D9524C0()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_23D9D9374();
  sub_23D952984(v3);
  v2(v26, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  v4 = v26[0];
  v5 = v26[0] & 0xFFFFFFFFFFFFFF8;
  if (v26[0] >> 62)
  {
LABEL_36:
    v6 = sub_23D9DAF34();
  }

  else
  {
    v6 = *((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      goto LABEL_16;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x23EEF4180](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [v8 isSaved];

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_34;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_23D9D9374();
  v13 = sub_23D9529FC(v7);
  v12(v26, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  v15 = sub_23D9D9374();
  if (*v16 >> 62 && sub_23D9DAF34() < 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  sub_23D954750(0, 0, v14);

  v15(v26, 0);

LABEL_16:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  v4 = v26[0];
  v5 = v26[0] & 0xFFFFFFFFFFFFFF8;
  if (v26[0] >> 62)
  {
    v17 = sub_23D9DAF34();
  }

  else
  {
    v17 = *((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  while (1)
  {
    if (v17 == v18)
    {
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x23EEF4180](v18, v4);
    }

    else
    {
      if (v18 >= *(v5 + 16))
      {
        goto LABEL_33;
      }

      v19 = *(v4 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = [v19 isRecents];

    if (v21)
    {
      break;
    }

    v11 = __OFADD__(v18++, 1);
    if (v11)
    {
      goto LABEL_35;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = sub_23D9D9374();
  v24 = sub_23D9529FC(v18);
  v23(v26, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v24;
  v1 = sub_23D9D9374();
  if (!(*v25 >> 62))
  {
LABEL_30:
    sub_23D954750(0, 0, v14);

    v1(v26, 0);
  }

LABEL_40:
  result = sub_23D9DAF34();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D952984(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_23D95125C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_23D95338C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23D9529FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_23D95125C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_23D952A8C()
{
  v1 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__selectedCategoryName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54D0, &qword_23D9DE5B8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__selectedCategorySymbol, v2);
  v4 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__tapCategory;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54D8, &qword_23D9DE5C0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__tapPhrase;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54E0, &qword_23D9DE5C8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__categories;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54E8, &qword_23D9DE5D0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__phrases;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54F0, &qword_23D9DE5D8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__isEditingPhrase;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54F8, &qword_23D9DE5E0);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__isEditingCategory, v13);
  v15 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__phraseCountSelection;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5500, &qword_23D9DE5E8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LiveSpeechDataViewModel(uint64_t a1)
{
  result = qword_27E2F5478;
  if (!qword_27E2F5478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D952DA0(uint64_t a1)
{
  sub_23D9530D4(319, &qword_27E2F5488, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_23D95302C(319, &qword_27E2F5490, MEMORY[0x277D70718]);
    if (v2 <= 0x3F)
    {
      sub_23D95302C(319, &qword_27E2F5498, MEMORY[0x277D70710]);
      if (v3 <= 0x3F)
      {
        sub_23D953080(319, &qword_27E2F54A0, &qword_27E2F49F8, &unk_23D9DE140);
        if (v4 <= 0x3F)
        {
          sub_23D953080(319, &qword_27E2F54A8, &qword_27E2F50D8, &unk_23D9DE2C0);
          if (v5 <= 0x3F)
          {
            sub_23D9530D4(319, &qword_27E2F54B0, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_23D9530D4(319, &qword_27E2F54B8, &type metadata for LiveSpeechMaxRecentsOption);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D95302C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D93A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D953080(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23D9D93A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23D9530D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23D9D93A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LiveSpeechMaxRecentsOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LiveSpeechMaxRecentsOption(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23D953284()
{
  result = qword_27E2F54C0;
  if (!qword_27E2F54C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EF0, &unk_23D9DD770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F54C0);
  }

  return result;
}

unint64_t sub_23D9532EC()
{
  result = qword_27E2F54C8;
  if (!qword_27E2F54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F54C8);
  }

  return result;
}

uint64_t sub_23D95334C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LiveSpeechDataViewModel(0);
  result = sub_23D9D9334();
  *a2 = result;
  return result;
}

uint64_t sub_23D95338C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23D9DAF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23D9DAD44();
        v6 = sub_23D9DA984();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_23D953644(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23D953490(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23D953490(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      sub_23D9DA8B4();

      v11 = sub_23D9DA8E4();
      v13 = v12;

      v14 = [v9 name];
      sub_23D9DA8B4();

      v15 = sub_23D9DA8E4();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_23D9DAFC4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23D953644(unint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a3 + 8);
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v5 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = v4;
LABEL_109:
      v4 = *(v109 + 2);
      if (v4 >= 2)
      {
        while (*v5)
        {
          v110 = *&v109[16 * v4];
          v111 = v109;
          v112 = *&v109[16 * v4 + 24];
          sub_23D953EE8(*v5 + v110, *v5 + *&v109[16 * v4 + 16], *v5 + v112, v6);
          if (v127)
          {
            goto LABEL_117;
          }

          if (v112 < v110)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_23D950D9C(v111);
          }

          if (v4 - 2 >= *(v111 + 2))
          {
            goto LABEL_133;
          }

          v113 = &v111[16 * v4];
          *v113 = v110;
          *(v113 + 1) = v112;
          sub_23D950D10(v4 - 1);
          v109 = v111;
          v4 = *(v111 + 2);
          if (v4 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_143;
      }

LABEL_117:

      return;
    }

LABEL_139:
    v109 = sub_23D950D9C(v4);
    goto LABEL_109;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v123 = v7;
      v116 = v9;
      v118 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 name];
      sub_23D9DA8B4();

      v5 = sub_23D9DA8E4();
      v17 = v16;

      v18 = [v14 name];
      sub_23D9DA8B4();

      v19 = sub_23D9DA8E4();
      v21 = v20;

      if (v5 == v19 && v17 == v21)
      {
        v128 = 0;
      }

      else
      {
        v128 = sub_23D9DAFC4();
      }

      v10 = v118;
      v8 = v118 + 2;
      if (v118 + 2 < v123)
      {
        v4 += 8 * v118 + 16;
        do
        {
          v125 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 name];
          sub_23D9DA8B4();

          v28 = sub_23D9DA8E4();
          v30 = v29;

          v31 = [v26 name];
          sub_23D9DA8B4();
          v5 = v32;

          v33 = sub_23D9DA8E4();
          v35 = v34;

          if (v28 == v33 && v30 == v35)
          {

            v8 = v125;
            if (v128)
            {
              v6 = a3;
              v9 = v116;
              v10 = v118;
              goto LABEL_25;
            }
          }

          else
          {
            v23 = sub_23D9DAFC4();

            v8 = v125;
            if ((v128 ^ v23))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v123 != v8);
        v8 = v123;
LABEL_23:
        v10 = v118;
      }

      v6 = a3;
      v9 = v116;
      if (v128)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v37 = 8 * v8 - 8;
          v38 = 8 * v10;
          v39 = v8;
          v40 = v10;
          do
          {
            if (v40 != --v39)
            {
              v41 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v42 = *&v41[v38];
              *&v41[v38] = *&v41[v37];
              *&v41[v37] = v42;
            }

            ++v40;
            v37 -= 8;
            v38 += 8;
          }

          while (v40 < v39);
        }
      }
    }

    v43 = *(v6 + 8);
    if (v8 < v43)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    v62 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v62;
    }

    else
    {
      v9 = sub_23D93C534(0, *(v62 + 2) + 1, 1, v62);
    }

    v4 = *(v9 + 2);
    v63 = *(v9 + 3);
    v64 = v4 + 1;
    if (v4 >= v63 >> 1)
    {
      v9 = sub_23D93C534((v63 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v64;
    v65 = &v9[16 * v4];
    *(v65 + 4) = v10;
    *(v65 + 5) = v8;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v66 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v9 + 4);
          v68 = *(v9 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_74:
          if (v70)
          {
            goto LABEL_123;
          }

          v83 = &v9[16 * v64];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_126;
          }

          v89 = &v9[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_130;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v64 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v93 = &v9[16 * v64];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_88:
        if (v88)
        {
          goto LABEL_125;
        }

        v96 = &v9[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_128;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v66 - 1;
        if (v66 - 1 >= v64)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v104 = v8;
        v105 = v9;
        v106 = *&v9[16 * v4 + 32];
        v107 = *&v9[16 * v66 + 40];
        sub_23D953EE8((*v6 + 8 * v106), (*v6 + 8 * *&v9[16 * v66 + 32]), (*v6 + 8 * v107), v5);
        if (v127)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_23D950D9C(v105);
        }

        if (v4 >= *(v105 + 2))
        {
          goto LABEL_120;
        }

        v108 = &v105[16 * v4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        sub_23D950D10(v66);
        v9 = v105;
        v64 = *(v105 + 2);
        v8 = v104;
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v9[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_121;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_122;
      }

      v78 = &v9[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_124;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_127;
      }

      if (v82 >= v74)
      {
        v100 = &v9[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_131;
        }

        if (v69 < v103)
        {
          v66 = v64 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v7 = *(v6 + 8);
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  v44 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v44 >= v43)
  {
    v44 = *(v6 + 8);
  }

  if (v44 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v44)
  {
    goto LABEL_54;
  }

  v117 = v9;
  v119 = v10;
  v129 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v45 = v10 - v8;
  v121 = v44;
LABEL_43:
  v124 = v4;
  v126 = v8;
  v46 = v129[v8];
  v122 = v45;
  v47 = v45;
  while (1)
  {
    v48 = *v4;
    v49 = v46;
    v5 = v48;
    v50 = [v49 name];
    sub_23D9DA8B4();

    v51 = sub_23D9DA8E4();
    v53 = v52;

    v54 = [v5 name];
    sub_23D9DA8B4();

    v55 = sub_23D9DA8E4();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_42:
      v8 = v126 + 1;
      v4 = v124 + 8;
      v45 = v122 - 1;
      if (v126 + 1 == v121)
      {
        v8 = v121;
        v6 = a3;
        v9 = v117;
        v10 = v119;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v59 = sub_23D9DAFC4();

    if ((v59 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v129)
    {
      break;
    }

    v60 = *v4;
    v46 = *(v4 + 8);
    *v4 = v46;
    *(v4 + 8) = v60;
    v4 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}
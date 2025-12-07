void type metadata accessor for VRXIdiom()
{
  if (!qword_280095998)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280095998);
    }
  }
}

uint64_t sub_2666B1ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_2666D805C();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959A0, &qword_2666D9538);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959A8, &qword_2666D9540);
  OUTLINED_FUNCTION_3();
  v29 = v17;
  v30 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  *v15 = sub_2666D863C();
  *(v15 + 1) = 0x4020000000000000;
  v15[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959B0, &qword_2666D9548);
  sub_2666B1D98(v2, &v15[*(v20 + 44)]);
  OUTLINED_FUNCTION_0();
  v23 = sub_2666B2B90(v21, &qword_2800959A0, &qword_2666D9538, v22);
  sub_2666D884C();
  sub_2666B2A70(v15, &qword_2800959A0, &qword_2666D9538);
  v24 = *(v5 + 104);
  v24(v11, *MEMORY[0x277D62F20], v3);
  v24(v9, *MEMORY[0x277D62F38], v3);
  v32 = v12;
  v33 = v23;
  OUTLINED_FUNCTION_1();
  swift_getOpaqueTypeConformance2();
  v25 = v30;
  sub_2666D881C();
  v26 = *(v5 + 8);
  v26(v9, v3);
  v26(v11, v3);
  return (*(v29 + 8))(v19, v25);
}

uint64_t sub_2666B1D98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C0, &qword_2666D9550);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C8, &qword_2666D9558);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  *v14 = sub_2666D858C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959D0, &qword_2666D9560);
  sub_2666B20A0(a1, &v14[*(v15 + 44)]);
  *v8 = sub_2666D863C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959D8, &qword_2666D9568);
  v19[1] = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959E0, &qword_2666D9570);
  sub_2666D7F5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959E8, &qword_2666D9578);
  sub_2666B2B90(&qword_2800959F0, &qword_2800959E0, &qword_2666D9570, MEMORY[0x277D83980]);
  sub_2666B2800();
  sub_2666B28E8(&qword_280095A18, MEMORY[0x277D558F0], MEMORY[0x277D558F8]);
  sub_2666D8A4C();
  sub_2666B2930(v14, v12);
  sub_2666B2998(v8, v6);
  v16 = v19[0];
  sub_2666B2930(v12, v19[0]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A20, &qword_2666D9588);
  sub_2666B2998(v6, v16 + *(v17 + 48));
  sub_2666B2A08(v8);
  sub_2666B2A70(v14, &qword_2800959C8, &qword_2666D9558);
  sub_2666B2A08(v6);
  return sub_2666B2A70(v12, &qword_2800959C8, &qword_2666D9558);
}

uint64_t sub_2666B20A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_2666D7FFC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A28, &unk_2666D95C0);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A30, &qword_2666D9960);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v10 = qword_2800978F0;
  v11 = sub_2666D87DC();
  v13 = v12;
  v50 = v11;
  v51 = v12;
  v15 = v14 & 1;
  v52 = v14 & 1;
  v53 = v16;
  sub_2666D88FC();
  sub_2666B2B2C(v11, v13, v15);

  v50 = *(*a1 + 16);
  v17 = sub_2666D7F7C();
  sub_2666B2B3C(v17, v18, v19);
  sub_2666D7DFC();
  sub_2666B2B90(&qword_280095A40, &qword_280095A28, &unk_2666D95C0, MEMORY[0x277CC8CE8]);
  v20 = sub_2666D87CC();
  v22 = v21;
  v24 = v23;
  LODWORD(v50) = sub_2666D86AC();
  v25 = sub_2666D878C();
  v27 = v26;
  v28 = v9;
  v45 = v9;
  v30 = v29;
  v32 = v31;
  sub_2666B2B2C(v20, v22, v24 & 1);

  v33 = v46;
  v34 = *(v46 + 16);
  v35 = v48;
  v36 = v28;
  v37 = v47;
  v34(v48, v36, v47);
  v38 = v49;
  v34(v49, v35, v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A48, &qword_2666D95D0);
  v40 = &v38[*(v39 + 48)];
  *v40 = 0;
  v40[8] = 1;
  v41 = &v38[*(v39 + 64)];
  *v41 = v25;
  *(v41 + 1) = v27;
  v41[16] = v30 & 1;
  *(v41 + 3) = v32;
  sub_2666B2BD8(v25, v27, v30 & 1);
  v42 = *(v33 + 8);

  v42(v45, v37);
  sub_2666B2B2C(v25, v27, v30 & 1);

  return (v42)(v35, v37);
}

uint64_t sub_2666B24E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2666B2AC8(a1, a2);
  v3 = type metadata accessor for ParticipantLabelView(0);
  *(a2 + *(v3 + 20)) = 0;
  *(a2 + *(v3 + 24)) = 0;
  v4 = sub_2666D876C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959E8, &qword_2666D9578);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

void sub_2666B25DC(uint64_t a2@<X8>)
{
  sub_2666B2610();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_2666B2648@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666D84CC();
  *a1 = result;
  return result;
}

uint64_t sub_2666B26B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2666B26F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2666B2800()
{
  result = qword_2800959F8;
  if (!qword_2800959F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800959E8, &qword_2666D9578);
    sub_2666B28E8(&qword_280095A00, type metadata accessor for ParticipantLabelView, &unk_2666DAD88);
    sub_2666B2B90(&qword_280095A08, &qword_280095A10, &qword_2666D9580, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800959F8);
  }

  return result;
}

uint64_t sub_2666B28E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666B2930(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C8, &qword_2666D9558);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666B2998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C0, &qword_2666D9550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B2A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959C0, &qword_2666D9550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666B2A70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2666B2AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2666D81DC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B2B2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2666B2B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280095A38;
  if (!qword_280095A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095A38);
  }

  return result;
}

uint64_t sub_2666B2B90(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2666B2BD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2666B2BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800959A8, &qword_2666D9540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800959A0, &qword_2666D9538);
  OUTLINED_FUNCTION_0();
  sub_2666B2B90(v0, &qword_2800959A0, &qword_2666D9538, v1);
  OUTLINED_FUNCTION_1();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2666B2D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2666D825C();
  OUTLINED_FUNCTION_2_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_2666D815C();
  OUTLINED_FUNCTION_2_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2666B2E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2666D825C();
  OUTLINED_FUNCTION_2_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2666D815C();
    OUTLINED_FUNCTION_2_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for RenderableEvent(uint64_t a1)
{
  result = qword_280095A50;
  if (!qword_280095A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666B2F90(uint64_t a1)
{
  result = sub_2666D825C();
  if (v2 <= 0x3F)
  {
    result = sub_2666D815C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2666B3028()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = *(v0 + *(type metadata accessor for RenderableEvent(0) + 24));
  }

  return v1;
}

uint64_t sub_2666B3080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666B3028();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2666B30A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v66 = a1;
  sub_2666D82AC();
  OUTLINED_FUNCTION_3();
  v70 = v5;
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v68 = v6;
  MEMORY[0x28223BE20](v7);
  v61 = &v58 - v8;
  v64 = sub_2666D809C();
  OUTLINED_FUNCTION_3();
  v59 = v9;
  MEMORY[0x28223BE20](v10);
  v58 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A60, &qword_2666D9628);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A68, &unk_2666DAB40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v65 = sub_2666D815C();
  OUTLINED_FUNCTION_3();
  v63 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v60 = v20;
  MEMORY[0x28223BE20](v21);
  v67 = &v58 - v22;
  v23 = sub_2666D7F5C();
  OUTLINED_FUNCTION_3();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for RenderableEvent(0);
  v29 = (a3 + *(v62 + 24));
  sub_2666D7F4C();
  v30 = sub_2666D7F3C();
  v32 = v31;
  (*(v25 + 8))(v28, v23);
  *v29 = v30;
  v29[1] = v32;
  v33 = v66;
  v34 = v64;
  v69 = a3;
  sub_2666B3738(v66, a3);
  v35 = sub_2666D825C();
  sub_2666B379C(v33 + *(v35 + 56), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v34) == 1)
  {
    v36 = v65;
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v65);
  }

  else
  {
    v37 = v59;
    v38 = v58;
    (*(v59 + 32))(v58, v14, v34);
    v74[3] = v34;
    v74[4] = sub_2666B38D0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
    (*(v37 + 16))(boxed_opaque_existential_1, v38, v34);
    sub_2666B3988(v74, v73);
    sub_2666D812C();
    __swift_destroy_boxed_opaque_existential_1(v74);
    (*(v37 + 8))(v38, v34);
    v36 = v65;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v36);
  v41 = v70;
  if (EnumTagSinglePayload == 1)
  {
    sub_2666B380C(v17);
    v42 = sub_2666D828C();
    v43 = v61;
    v44 = v71;
    (*(v41 + 16))(v61, v42, v71);
    v45 = sub_2666D829C();
    v46 = sub_2666D8DAC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2666B0000, v45, v46, "[RenderableEvent] Using event store to make event cell model", v47, 2u);
      MEMORY[0x26678ACD0](v47, -1, -1);
    }

    (*(v41 + 8))(v43, v44);
    v48 = v60;
    v49 = v72;
    v50 = v74[7];
    sub_2666D210C(v72, v60);
    sub_2666B3874(v33);

    if (v50)
    {
      sub_2666B3874(v69);
    }

    else
    {
      return (*(v63 + 32))(v69 + *(v62 + 20), v48, v36);
    }
  }

  else
  {
    v52 = *(v63 + 32);
    v52(v67, v17, v36);
    v53 = sub_2666D828C();
    v54 = v71;
    (*(v41 + 16))(v68, v53, v71);
    v55 = sub_2666D829C();
    v56 = sub_2666D8DAC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2666B0000, v55, v56, "[RenderableEvent] Using event cell model to render event", v57, 2u);
      MEMORY[0x26678ACD0](v57, -1, -1);
    }

    sub_2666B3874(v33);
    (*(v41 + 8))(v68, v54);
    return (v52)(v69 + *(v62 + 20), v67, v36);
  }
}

uint64_t sub_2666B3738(uint64_t a1, uint64_t a2)
{
  v4 = sub_2666D825C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B379C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A60, &qword_2666D9628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B380C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A68, &unk_2666DAB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666B3874(uint64_t a1)
{
  v2 = sub_2666D825C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2666B38D0()
{
  result = qword_280095A70;
  if (!qword_280095A70)
  {
    sub_2666D809C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095A70);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2666B3988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_2666B3A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RenderableEvent(0);
  OUTLINED_FUNCTION_2_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  OUTLINED_FUNCTION_2_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28) + 48);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2666B3B7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for RenderableEvent(0);
  OUTLINED_FUNCTION_2_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
    OUTLINED_FUNCTION_2_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 48) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for EventCellView(uint64_t a1)
{
  result = qword_280095A80;
  if (!qword_280095A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666B3CC0(uint64_t a1)
{
  type metadata accessor for RenderableEvent(319);
  if (v1 <= 0x3F)
  {
    sub_2666B3E2C(319, &qword_280095A90, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2666B3DDC(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_2666B3E2C(319, &qword_280095AA0, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2666B3DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280095A98)
  {
    v4 = type metadata accessor for IdiomConstant(0, &type metadata for CommonConstants, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_280095A98);
    }
  }
}

void sub_2666B3E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2666B3EAC()
{
  v1 = sub_2666D857C();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for EventCellView(0) + 32);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_2666D8D9C();
    v10 = sub_2666D86DC();
    sub_2666D827C();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_2666B3FEC()
{
  sub_2666B3EAC();
  sub_2666D8DDC();
  sub_2666D874C();
  sub_2666D875C();

  sub_2666D873C();
  type metadata accessor for EventCellView(0);
  sub_2666D80EC();
  swift_allocObject();
  return sub_2666D80DC();
}

uint64_t sub_2666B40D8@<X0>(_BYTE *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4();
  v5 = sub_2666D7F2C();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for EventCellView(0);
  sub_2666B467C(v1 + *(v12 + 20), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    sub_2666B2A70(v2, &qword_280095A78, &unk_2666DAB30);
LABEL_6:
    *a1 = 0;
    v15 = MEMORY[0x277CF7D10];
    goto LABEL_7;
  }

  v13 = *(v7 + 32);
  v13(v11, v2, v5);
  sub_2666D825C();
  if ((sub_2666D7DDC() & 1) == 0)
  {
    (*(v7 + 8))(v11, v5);
    goto LABEL_6;
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AD0, &unk_2666D96B0) + 48);
  v13(a1, v11, v5);
  a1[v14] = 0;
  v15 = MEMORY[0x277CF7D18];
LABEL_7:
  v16 = *v15;
  sub_2666D811C();
  OUTLINED_FUNCTION_2();
  return (*(v17 + 104))(a1, v16);
}

__n128 sub_2666B42DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v35 = a1;
  v4 = sub_2666D811C();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_1();
  v7 = (v6 - v5);
  v8 = sub_2666D815C();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AA8, &qword_2666D9698);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AB0, &qword_2666D96A0);
  OUTLINED_FUNCTION_3();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_4();
  v23 = type metadata accessor for RenderableEvent(v22);
  (*(v10 + 16))(v14, v3 + *(v23 + 20), v8);
  sub_2666B40D8(v7);
  sub_2666D80FC();
  sub_2666B3FEC();
  sub_2666B4594();
  sub_2666D887C();

  sub_2666B2A70(v17, &qword_280095AA8, &qword_2666D9698);
  v24 = sub_2666D86EC();
  v25 = *(v3 + *(type metadata accessor for EventCellView(0) + 28) + 32);
  v26 = 0uLL;
  v27 = 0uLL;
  if ((v25 & 1) == 0)
  {
    sub_2666D82BC();
    *(&v27 + 1) = v28;
    v26.n128_u64[1] = v29;
  }

  v33 = v27;
  v34 = v26;
  v30 = v35;
  (*(v20 + 32))(v35, v2, v18);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AC8, &qword_2666D96A8) + 36);
  *v31 = v24;
  result = v34;
  *(v31 + 24) = v33;
  *(v31 + 8) = result;
  *(v31 + 40) = v25;
  return result;
}

unint64_t sub_2666B4594()
{
  result = qword_280095AB8;
  if (!qword_280095AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AA8, &qword_2666D9698);
    sub_2666B4618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095AB8);
  }

  return result;
}

unint64_t sub_2666B4618()
{
  result = qword_280095AC0;
  if (!qword_280095AC0)
  {
    sub_2666D810C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095AC0);
  }

  return result;
}

uint64_t sub_2666B4670(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_2666B467C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666B46F0()
{
  result = qword_280095AD8;
  if (!qword_280095AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AC8, &qword_2666D96A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095AA8, &qword_2666D9698);
    sub_2666B4594();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095AD8);
  }

  return result;
}

uint64_t sub_2666B4890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = sub_2666D81AC();
  v8 = sub_2666D819C();

  LOBYTE(v4) = sub_2666D8C6C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v4 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2666B49C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_2666D8B9C();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2666B4A6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PunchoutButtonSnippet(uint64_t a1)
{
  result = qword_280095AE0;
  if (!qword_280095AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666B4B38(uint64_t a1)
{
  result = sub_2666D8B9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2666B4BD0()
{
  v1 = type metadata accessor for PunchoutButtonSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666B506C(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2666B50D4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095AF0, &qword_2666DA9A0);
  sub_2666B2B90(&qword_280095AF8, &qword_280095AF0, &qword_2666DA9A0, MEMORY[0x277CDF028]);
  return sub_2666D8AAC();
}

uint64_t sub_2666B4D20(uint64_t a1)
{
  v2 = type metadata accessor for PunchoutButtonSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2666B506C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2666B50D4(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  return sub_2666D8A2C();
}

uint64_t sub_2666B4E54()
{
  v0 = sub_2666D8C7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PunchoutButtonSnippet(0);
  sub_2666D8B7C();
  v4 = sub_2666D81EC();
  sub_2666D8C5C();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2666B4F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = 0;
    v5 = *a1;
    v6 = MEMORY[0x277D84F90];
    v7 = v3;
  }

  else
  {
    sub_2666D85EC();
    if (qword_280095990 != -1)
    {
      swift_once();
    }

    v8 = qword_2800978F0;
    v5 = sub_2666D87DC();
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v6;
}

uint64_t sub_2666B506C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutButtonSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B50D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutButtonSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B5138()
{
  v1 = *(type metadata accessor for PunchoutButtonSnippet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2666B4D20(v2);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for PunchoutButtonSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_2666D8B9C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666B5290()
{
  type metadata accessor for PunchoutButtonSnippet(0);

  return sub_2666B4E54();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2666B5354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2666B53A8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_2666B5430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a1;
  v32 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B10, &qword_2666D97E0);
  OUTLINED_FUNCTION_3();
  v33 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B18, &qword_2666D97E8);
  OUTLINED_FUNCTION_3();
  v30 = v8;
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v27 = v26 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B20, &qword_2666D97F0);
  MEMORY[0x28223BE20](v29);
  v11 = v26 - v10;
  v36 = *v2;
  v37 = *(v2 + 16);
  v34 = *v2;
  v35 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B28, &qword_2666D97F8);
  sub_2666D82EC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B30, &unk_2666D9800);
  v13 = sub_2666B2B90(&qword_280095B38, &qword_280095B30, &unk_2666D9800, MEMORY[0x277CE04B0]);
  sub_2666D892C();

  v34 = v36;
  v35 = v37;
  sub_2666D82CC();
  v14 = *(v2 + 3);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_1_2(v15);
  sub_2666B5ADC(&v36, &v34);
  v16 = v14;
  *&v34 = v12;
  *(&v34 + 1) = v13;
  v17 = v27;
  swift_getOpaqueTypeConformance2();
  v18 = v28;
  sub_2666D893C();

  v33[1](v6, v18);
  if (v14)
  {
    v33 = v16;
    v19 = sub_2666D8CEC();

    v20 = swift_allocObject();
    v21 = OUTLINED_FUNCTION_1_2(v20);
    (*(v30 + 32))(v11, v17, v31, v21);
    v22 = v29;
    *&v11[*(v29 + 52)] = v19;
    v23 = &v11[*(v22 + 56)];
    *v23 = sub_2666B5BE4;
    v23[1] = v20;
    sub_2666B5BEC(v11, v32);
    sub_2666B5ADC(&v36, &v34);
    v24 = v33;

    return v24;
  }

  else
  {
    sub_2666D8D1C();
    sub_2666B5B4C();
    result = sub_2666D842C();
    __break(1u);
  }

  return result;
}

void sub_2666B5848(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B28, &qword_2666D97F8);
  sub_2666D82CC();
  v2 = *(a1 + 3);
  if (v5 == 1)
  {
    if (v2)
    {
      v3 = v2;
      sub_2666D8CDC();
      v4 = [objc_allocWithZone(sub_2666D8C8C()) init];
      sub_2666D8CFC();

LABEL_6:
      return;
    }
  }

  else if (v2)
  {
    v3 = v2;
    sub_2666D8CCC();
    goto LABEL_6;
  }

  sub_2666D8D1C();
  sub_2666B5B4C();
  sub_2666D842C();
  __break(1u);
}

uint64_t sub_2666B5928(uint64_t a1, __int128 *a2)
{
  v4 = sub_2666D8D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D63F38])
  {
    return (*(v5 + 8))(v7, v4);
  }

  result = (*(v5 + 96))(v7, v4);
  if ((*v7 - 3) <= 1)
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    v9[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B28, &qword_2666D97F8);
    return sub_2666D82DC();
  }

  return result;
}

uint64_t sub_2666B5ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B28, &qword_2666D97F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666B5B4C()
{
  result = qword_280095B40;
  if (!qword_280095B40)
  {
    sub_2666D8D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095B40);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2666B5BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B20, &qword_2666D97F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_1_2(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t sub_2666B5CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2666D8B9C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2666B5D68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PromptForTitleSnippet(uint64_t a1)
{
  result = qword_280095B50;
  if (!qword_280095B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666B5E34(uint64_t a1)
{
  sub_2666B5EC8();
  if (v1 <= 0x3F)
  {
    sub_2666D8B9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2666B5EC8()
{
  if (!qword_280095B60)
  {
    v0 = sub_2666D8A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280095B60);
    }
  }
}

uint64_t sub_2666B5F34()
{
  v1 = sub_2666D8C7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  v15 = v5;
  v16 = v6;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BA8, &qword_2666D98C0);
  sub_2666D89FC();
  v9 = v14[1];
  v8 = v14[2];

  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    type metadata accessor for PromptForTitleSnippet(0);
    sub_2666D8B7C();
    v15 = v5;
    v16 = v6;
    v17 = v7;
    sub_2666D89FC();
    v12 = sub_2666D817C();
    sub_2666CF2CC(v12, v13, v4);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_2666B60AC()
{
  v1 = type metadata accessor for PromptForTitleSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666B78A8(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_1_3();
  sub_2666B805C(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B68, &qword_2666D9888);
  sub_2666B2B90(&qword_280095B70, &qword_280095B68, &qword_2666D9888, MEMORY[0x277CE14C0]);
  return sub_2666D8AAC();
}

uint64_t sub_2666B6200@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v129 = a2;
  v131 = sub_2666D8ADC();
  v130 = *(v131 - 8);
  v3 = MEMORY[0x28223BE20](v131);
  v139 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v138 = &v109 - v5;
  v125 = sub_2666D838C();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v122 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromptForTitleSnippet(0);
  v121 = *(v7 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_2666D832C();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2666D865C();
  v113 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B78, &qword_2666D9890);
  v110 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v109 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B80, &qword_2666D9898);
  v112 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v17 = &v109 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B88, &qword_2666D98A0);
  v116 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v109 = &v109 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B90, &qword_2666D98A8) - 8;
  MEMORY[0x28223BE20](v123);
  v20 = &v109 - v19;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B98, &qword_2666D98B0);
  MEMORY[0x28223BE20](v127);
  v126 = (&v109 - v21);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BA0, &qword_2666D98B8);
  v128 = *(v137 - 8);
  v22 = MEMORY[0x28223BE20](v137);
  v140 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v134 = &v109 - v24;
  v136 = sub_2666D8CBC();
  v135 = *(v136 - 8);
  v25 = MEMORY[0x28223BE20](v136);
  v133 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v109 - v27;
  v29 = sub_2666B71FC();
  v148 = MEMORY[0x277CE11C8];
  v149 = MEMORY[0x277D63A60];
  v145 = v29;
  v132 = v28;
  sub_2666D8CAC();
  v30 = *(a1 + 24);
  v141 = *(a1 + 8);
  v142 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BA8, &qword_2666D98C0);
  sub_2666D8A0C();
  sub_2666D8A5C();
  sub_2666D864C();
  v31 = sub_2666B2B90(&qword_280095BB0, &qword_280095B78, &qword_2666D9890, MEMORY[0x277CDF1A8]);
  v32 = sub_2666B81A4(&qword_280095BB8, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
  sub_2666D88EC();
  (*(v113 + 8))(v12, v10);
  (*(v110 + 8))(v15, v13);
  v33 = v114;
  sub_2666D831C();
  v145 = v13;
  v146 = v10;
  v147 = v31;
  v148 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v109;
  v36 = v111;
  sub_2666D88AC();
  (*(v117 + 8))(v33, v118);
  v37 = v36;
  (*(v112 + 8))(v17, v36);
  v38 = v119;
  sub_2666B78A8(a1, v119);
  v39 = (*(v121 + 80) + 16) & ~*(v121 + 80);
  v40 = swift_allocObject();
  sub_2666B805C(v38, v40 + v39, type metadata accessor for PromptForTitleSnippet);
  v41 = v122;
  sub_2666D837C();
  v145 = v37;
  v146 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v115;
  sub_2666D894C();

  (*(v124 + 8))(v41, v125);
  (*(v116 + 8))(v35, v42);
  LOBYTE(OpaqueTypeConformance2) = sub_2666D86FC();
  sub_2666D82BC();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BC0, &qword_2666D98C8) + 36)];
  *v51 = OpaqueTypeConformance2;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  LODWORD(OpaqueTypeConformance2) = sub_2666D869C();
  v52 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BC8, &qword_2666D98D0) + 36)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BD0, &qword_2666D98D8);
  v54 = &v52[*(v53 + 52)];
  v55 = *(sub_2666D841C() + 20);
  v56 = *MEMORY[0x277CE0118];
  v57 = sub_2666D861C();
  (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
  __asm { FMOV            V0.2D, #5.0 }

  *v54 = _Q0;
  *v52 = OpaqueTypeConformance2;
  *&v52[*(v53 + 56)] = 256;
  LOBYTE(OpaqueTypeConformance2) = sub_2666D82FC();
  v64 = v63;
  LOBYTE(v56) = v65;
  sub_2666D8D1C();
  sub_2666B81A4(&qword_280095B40, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  v66 = sub_2666D843C();
  v67 = &v20[*(v123 + 44)];
  *v67 = OpaqueTypeConformance2 & 1;
  *(v67 + 1) = v64;
  v67[16] = v56 & 1;
  *(v67 + 3) = v66;
  *(v67 + 4) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BD8, &qword_2666D98E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2666D9810;
  LOBYTE(v52) = sub_2666D86EC();
  *(inited + 32) = v52;
  v70 = sub_2666D870C();
  *(inited + 33) = v70;
  v71 = sub_2666D871C();
  sub_2666D871C();
  if (sub_2666D871C() != v52)
  {
    v71 = sub_2666D871C();
  }

  sub_2666D871C();
  if (sub_2666D871C() != v70)
  {
    v71 = sub_2666D871C();
  }

  v72 = v126;
  sub_2666B7980(v20, v126);
  v73 = &v72[*(v127 + 36)];
  *v73 = v71;
  *(v73 + 8) = 0u;
  *(v73 + 24) = 0u;
  v73[40] = 1;
  sub_2666B79E8();
  v74 = v134;
  sub_2666D883C();
  sub_2666B7DD8(v72);
  v75 = sub_2666B74F0();
  v149 = MEMORY[0x277D63A60];
  v148 = MEMORY[0x277CE11C8];
  v145 = v75;
  v76 = sub_2666D85EC();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = type metadata accessor for CalendarButtonView(0);
  v143 = v83;
  v144 = sub_2666B81A4(&qword_280095C10, type metadata accessor for CalendarButtonView, &unk_2666DA924);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v141);
  boxed_opaque_existential_1[7] = MEMORY[0x277D558C8];
  boxed_opaque_existential_1[8] = sub_2666B7E38(boxed_opaque_existential_1, v85, v86);
  *(boxed_opaque_existential_1 + 32) = 2;
  *(boxed_opaque_existential_1 + 72) = 1;
  v87 = type metadata accessor for CalendarButtonView.Model(0);
  v88 = v87[6];
  v89 = *MEMORY[0x277D63A88];
  v90 = sub_2666D8A7C();
  (*(*(v90 - 8) + 104))(boxed_opaque_existential_1 + v88, v89, v90);
  *boxed_opaque_existential_1 = v76;
  boxed_opaque_existential_1[1] = v78;
  *(boxed_opaque_existential_1 + 16) = v80 & 1;
  boxed_opaque_existential_1[3] = v82;
  *(boxed_opaque_existential_1 + v87[7]) = 0;
  *(boxed_opaque_existential_1 + v87[8]) = 0;
  v91 = boxed_opaque_existential_1 + *(v83 + 20);
  *v91 = swift_getKeyPath();
  v91[8] = 0;
  sub_2666D8B8C();
  v92 = v138;
  sub_2666D8ACC();
  v93 = *(v135 + 16);
  v94 = v133;
  v95 = v136;
  v93(v133, v132, v136);
  v96 = v128;
  v127 = *(v128 + 16);
  (v127)(v140, v74, v137);
  v97 = v130;
  v126 = *(v130 + 16);
  v98 = v92;
  v99 = v131;
  (v126)(v139, v98, v131);
  v100 = v129;
  v93(v129, v94, v95);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C20, &qword_2666D9918);
  v102 = v137;
  (v127)(&v100[*(v101 + 48)], v140, v137);
  v103 = v139;
  (v126)(&v100[*(v101 + 64)], v139, v99);
  v104 = *(v97 + 8);
  v104(v138, v99);
  v105 = *(v96 + 8);
  v105(v134, v102);
  v106 = *(v135 + 8);
  v107 = v136;
  v106(v132, v136);
  v104(v103, v99);
  v105(v140, v102);
  return (v106)(v133, v107);
}

uint64_t sub_2666B71FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A30, &qword_2666D9960);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - v2;
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v4 = qword_2800978F0;
  v5 = sub_2666D87DC();
  v7 = v6;
  v16 = v5;
  v17 = v6;
  v9 = v8 & 1;
  v18 = v8 & 1;
  v19 = v10;
  v11 = MEMORY[0x277CE0BD8];
  v12 = MEMORY[0x277CE0BC8];
  sub_2666D88FC();
  sub_2666B2B2C(v5, v7, v9);

  v16 = v11;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_2666D87FC();
  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_2666B7410@<X0>(uint64_t a1@<X8>)
{
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v2 = qword_2800978F0;
  result = sub_2666D87DC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2666B74F0()
{
  v1 = type metadata accessor for PromptForTitleSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CalendarButtonView.Model(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CalendarButtonView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C28, &qword_2666D9920);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = sub_2666D85EC();
  v42 = v17;
  v43 = v16;
  v19 = v18;
  v41 = v20;
  sub_2666B78A8(v0, v4);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_1_3();
  sub_2666B805C(v4, v23 + v21, v24);
  *(v8 + 4) = sub_2666B7F7C;
  *(v8 + 5) = v22;
  v8[72] = 0;
  v25 = v5[6];
  v26 = *MEMORY[0x277D63A90];
  sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  (*(v27 + 104))(&v8[v25], v26);
  v28 = v42;
  *v8 = v43;
  *(v8 + 1) = v28;
  v8[16] = v19 & 1;
  *(v8 + 3) = v41;
  *&v8[v5[7]] = 0;
  *&v8[v5[8]] = 0;
  sub_2666B805C(v8, v12, type metadata accessor for CalendarButtonView.Model);
  v29 = &v12[*(v9 + 20)];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  sub_2666D8B8C();
  v30 = *(v0 + 24);
  v47 = *(v0 + 8);
  v48 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095BA8, &qword_2666D98C0);
  sub_2666D89FC();
  v32 = v45;
  v31 = v46;

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v32 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v33 == 0;
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  sub_2666B805C(v12, v15, type metadata accessor for CalendarButtonView);
  v37 = &v15[*(v44 + 36)];
  *v37 = KeyPath;
  v37[1] = sub_2666B8044;
  v37[2] = v36;
  sub_2666B80BC();
  v38 = sub_2666D87FC();
  sub_2666B81EC(v15);
  return v38;
}

uint64_t sub_2666B78A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptForTitleSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666B7910@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for PromptForTitleSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2666B6200(v4, a1);
}

uint64_t sub_2666B7980(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B90, &qword_2666D98A8);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2666B79E8()
{
  result = qword_280095BE0;
  if (!qword_280095BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B98, &qword_2666D98B0);
    sub_2666B7A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095BE0);
  }

  return result;
}

unint64_t sub_2666B7A74()
{
  result = qword_280095BE8;
  if (!qword_280095BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B90, &qword_2666D98A8);
    v3 = sub_2666B7B00();
    sub_2666B7D84(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095BE8);
  }

  return result;
}

unint64_t sub_2666B7B00()
{
  result = qword_280095BF0;
  if (!qword_280095BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095BC8, &qword_2666D98D0);
    sub_2666B7BB8();
    sub_2666B2B90(&qword_280095C00, &qword_280095BD0, &qword_2666D98D8, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095BF0);
  }

  return result;
}

unint64_t sub_2666B7BB8()
{
  result = qword_280095BF8;
  if (!qword_280095BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095BC0, &qword_2666D98C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B88, &qword_2666D98A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B80, &qword_2666D9898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095B78, &qword_2666D9890);
    sub_2666D865C();
    sub_2666B2B90(&qword_280095BB0, &qword_280095B78, &qword_2666D9890, MEMORY[0x277CDF1A8]);
    sub_2666B81A4(&qword_280095BB8, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095BF8);
  }

  return result;
}

unint64_t sub_2666B7D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280095C08;
  if (!qword_280095C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095C08);
  }

  return result;
}

uint64_t sub_2666B7DD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095B98, &qword_2666D98B0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_2666B7E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280095C18;
  if (!qword_280095C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095C18);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for PromptForTitleSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666B7FDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2666D850C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2666B805C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2666B80BC()
{
  result = qword_280095C30;
  if (!qword_280095C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095C28, &qword_2666D9920);
    sub_2666B81A4(&qword_280095C38, type metadata accessor for CalendarButtonView, &unk_2666DA94C);
    sub_2666B2B90(&qword_280095C40, &qword_280095C48, &qword_2666D9958, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095C30);
  }

  return result;
}

uint64_t sub_2666B81A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666B81EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C28, &qword_2666D9920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666B82D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_17();
  type metadata accessor for RenderableEvent(v6);
  OUTLINED_FUNCTION_2_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
    OUTLINED_FUNCTION_2_0();
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[6];
    }

    else
    {
      v9 = sub_2666D8B9C();
      v15 = a3[8];
    }

    v10 = v3 + v15;
    goto LABEL_11;
  }

  v11 = *(v3 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_2666B83F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_17();
  type metadata accessor for RenderableEvent(v8);
  OUTLINED_FUNCTION_2_0();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
    OUTLINED_FUNCTION_2_0();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[6];
    }

    else
    {
      v11 = sub_2666D8B9C();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for ConflictingEventConfirmationSnippet(uint64_t a1)
{
  result = qword_280095C68;
  if (!qword_280095C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666B8554(uint64_t a1)
{
  type metadata accessor for RenderableEvent(319);
  if (v1 <= 0x3F)
  {
    sub_2666B86C8(319, &qword_280095C78, type metadata accessor for RenderableEvent, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2666B86C8(319, &qword_280095C80, MEMORY[0x277D55908], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2666B86C8(319, &qword_280095AA0, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2666D8B9C();
          if (v5 <= 0x3F)
          {
            sub_2666B3DDC(319, v5, v6, v7);
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

void sub_2666B86C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2666B8748()
{
  v1 = sub_2666D857C();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for ConflictingEventConfirmationSnippet(0) + 28);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_2666D8D9C();
    v9 = sub_2666D86DC();
    sub_2666D827C();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v8;
}

uint64_t sub_2666B8890()
{
  OUTLINED_FUNCTION_18();
  sub_2666D89CC();
  sub_2666D87EC();
  OUTLINED_FUNCTION_13();
  v0 = sub_2666D879C();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_15();
  sub_2666B2B2C(v5, v6, v7);

  OUTLINED_FUNCTION_18();
  sub_2666D85EC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v8 = qword_2800978F0;
  OUTLINED_FUNCTION_15();
  sub_2666D87DC();
  OUTLINED_FUNCTION_13();
  v13 = sub_2666D879C();
  v9 = OUTLINED_FUNCTION_15();
  sub_2666B2B2C(v9, v10, v11);

  sub_2666B2B2C(v0, v2, v4 & 1);

  return v13;
}

uint64_t sub_2666B8A20@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for ConflictingEventConfirmationSnippet(0);
  v3 = OUTLINED_FUNCTION_10(v2);
  v38 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C88, &qword_2666D9A18);
  OUTLINED_FUNCTION_3();
  v39 = v8;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C90, &qword_2666D9A20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C98, &qword_2666D9A28);
  OUTLINED_FUNCTION_3();
  v17 = v16;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  sub_2666B8748();
  if (sub_2666D8DDC())
  {
    sub_2666B8E24(v20);
    (*(v17 + 16))(v14, v20, v15);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095CB0, &qword_2666D9A38);
    OUTLINED_FUNCTION_5();
    v23 = sub_2666B2B90(v21, &qword_280095CB0, &qword_2666D9A38, v22);
    OUTLINED_FUNCTION_4_0(v23);
    sub_2666B2B90(&qword_280095CC0, &qword_280095C88, &qword_2666D9A18, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_11();
    sub_2666D868C();
    return (*(v17 + 8))(v20, v15);
  }

  else
  {
    OUTLINED_FUNCTION_9();
    sub_2666BC104(v1, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    swift_allocObject();
    OUTLINED_FUNCTION_8();
    sub_2666BC1B0(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CA0, &qword_2666D9A30);
    OUTLINED_FUNCTION_7();
    sub_2666B2B90(v27, &qword_280095CA0, &qword_2666D9A30, v28);
    sub_2666D8AAC();
    v29 = v39;
    v30 = OUTLINED_FUNCTION_15();
    v31(v30);
    swift_storeEnumTagMultiPayload();
    v32 = OUTLINED_FUNCTION_12();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v32, v33);
    OUTLINED_FUNCTION_5();
    v36 = sub_2666B2B90(v34, &qword_280095CB0, &qword_2666D9A38, v35);
    OUTLINED_FUNCTION_4_0(v36);
    sub_2666B2B90(&qword_280095CC0, &qword_280095C88, &qword_2666D9A18, &qword_2666D9A30);
    OUTLINED_FUNCTION_11();
    sub_2666D868C();
    return (*(v29 + 8))(v11, v7);
  }
}

uint64_t sub_2666B8E24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v26 = sub_2666D8C9C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ConflictingEventConfirmationSnippet(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CB0, &qword_2666D9A38);
  OUTLINED_FUNCTION_3();
  v14 = v13;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  OUTLINED_FUNCTION_9();
  sub_2666BC104(v2, v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_8();
  sub_2666BC1B0(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CC8, &qword_2666D9A40);
  OUTLINED_FUNCTION_7();
  sub_2666B2B90(v20, &qword_280095CC8, &qword_2666D9A40, v21);
  sub_2666D8AAC();
  v22 = *(v9 + 44);
  v23 = v26;
  *v7 = *(v25[1] + v22 + 16);
  (*(v4 + 104))(v7, *MEMORY[0x277D63ED0], v23);
  sub_2666B2B90(&qword_280095CB8, &qword_280095CB0, &qword_2666D9A38, MEMORY[0x277D63B90]);
  sub_2666D885C();
  (*(v4 + 8))(v7, v23);
  return (*(v14 + 8))(v17, v12);
}

uint64_t sub_2666B911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v99 = a2;
  v110 = sub_2666D8ADC();
  v115 = *(v110 - 8);
  v3 = MEMORY[0x28223BE20](v110);
  v108 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v107 = &v91 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D20, &qword_2666D9B48);
  MEMORY[0x28223BE20](v98);
  v97 = (&v91 - v6);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D28, &qword_2666D9B50);
  v109 = *(v106 - 8);
  v7 = MEMORY[0x28223BE20](v106);
  v105 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v114 = &v91 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D30, &qword_2666D9B58);
  MEMORY[0x28223BE20](v94);
  v11 = &v91 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D38, &qword_2666D9B60);
  v96 = *(v95 - 1);
  MEMORY[0x28223BE20](v95);
  v93 = &v91 - v12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D40, &qword_2666D9B68);
  v104 = *(v112 - 8);
  v13 = MEMORY[0x28223BE20](v112);
  v111 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = &v91 - v15;
  v16 = sub_2666D805C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SingleEventView(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D48, &qword_2666D9B70);
  v103 = *(v102 - 8);
  v23 = MEMORY[0x28223BE20](v102);
  v101 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v100 = &v91 - v25;
  sub_2666BC104(a1, v22);
  v22[v20[5]] = 0;
  sub_2666D8B8C();
  v26 = &v22[v20[7]];
  KeyPath = swift_getKeyPath();
  v119 = 0;
  v118 = 1;
  *v26 = KeyPath;
  v26[8] = 0;
  *(v26 + 2) = 0x4030000000000000;
  *(v26 + 3) = 0;
  v26[32] = 1;
  *(v26 + 5) = 1;
  *(v26 + 6) = sub_2666BD078;
  *(v26 + 7) = 0;
  v28 = &v22[v20[8]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  *(v28 + 1) = xmmword_2666D9980;
  *(v28 + 4) = 1;
  *(v28 + 5) = sub_2666BD0AC;
  *(v28 + 6) = 0;
  v29 = &v22[v20[9]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  (*(v17 + 104))(v19, *MEMORY[0x277D62F20], v16);
  sub_2666BBFF0(&qword_280095D50, type metadata accessor for SingleEventView, &unk_2666D9EF8);
  sub_2666D882C();
  (*(v17 + 8))(v19, v16);
  sub_2666BC208(v22, type metadata accessor for SingleEventView);
  v30 = sub_2666B8890();
  v32 = v31;
  LOBYTE(v19) = v33;
  v35 = v34;
  v36 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D58, &qword_2666D9B78) + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D60, &qword_2666D9B80) + 28);
  sub_2666D866C();
  v38 = sub_2666D867C();
  __swift_storeEnumTagSinglePayload(v36 + v37, 0, 1, v38);
  *v36 = swift_getKeyPath();
  *v11 = v30;
  *(v11 + 1) = v32;
  v11[16] = v19 & 1;
  *(v11 + 3) = v35;
  v39 = sub_2666D86EC();
  v40 = v94;
  v41 = &v11[*(v94 + 36)];
  *v41 = v39;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  v41[40] = 1;
  v42 = type metadata accessor for ConflictingEventConfirmationSnippet(0);
  v43 = v92;
  v44 = sub_2666BBDC0();
  v45 = v93;
  sub_2666D884C();
  sub_2666BC15C(v11, &qword_280095D30, &qword_2666D9B58);
  v117[0] = v40;
  v117[1] = v44;
  swift_getOpaqueTypeConformance2();
  v46 = v95;
  sub_2666D883C();
  (*(v96 + 8))(v45, v46);
  v47 = sub_2666D862C();
  v48 = v97;
  *v97 = v47;
  *(v48 + 8) = 0x4024000000000000;
  *(v48 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D80, &qword_2666D9BB8);
  v117[0] = *(v43 + *(v42 + 20));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D88, &unk_2666D9BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D90, &qword_2666DAB20);
  sub_2666B2B90(&qword_280095D98, &qword_280095D88, &unk_2666D9BC0, MEMORY[0x277D83980]);
  sub_2666BBF04();
  sub_2666BBFF0(&qword_280095DB8, type metadata accessor for RenderableEvent, &unk_2666D95F0);
  sub_2666D8A4C();
  sub_2666B2B90(&qword_280095DC0, &qword_280095D20, &qword_2666D9B48, MEMORY[0x277CE1198]);
  sub_2666D883C();
  sub_2666BC15C(v48, &qword_280095D20, &qword_2666D9B48);
  v96 = sub_2666D85EC();
  v95 = v49;
  LOBYTE(v16) = v50;
  v97 = v51;
  v52 = type metadata accessor for CalendarButtonView(0);
  v117[3] = v52;
  v53 = sub_2666BBFF0(&qword_280095C10, type metadata accessor for CalendarButtonView, &unk_2666DA924);
  v117[4] = v53;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
  boxed_opaque_existential_1[7] = MEMORY[0x277D558C8];
  v98 = sub_2666B7E38(boxed_opaque_existential_1, v55, v56);
  boxed_opaque_existential_1[8] = v98;
  *(boxed_opaque_existential_1 + 32) = 0;
  *(boxed_opaque_existential_1 + 72) = 1;
  v57 = type metadata accessor for CalendarButtonView.Model(0);
  v58 = v57[6];
  v59 = *MEMORY[0x277D63A90];
  v60 = sub_2666D8A7C();
  v61 = *(*(v60 - 8) + 104);
  v61(boxed_opaque_existential_1 + v58, v59, v60);
  v62 = v95;
  *boxed_opaque_existential_1 = v96;
  boxed_opaque_existential_1[1] = v62;
  *(boxed_opaque_existential_1 + 16) = v16 & 1;
  boxed_opaque_existential_1[3] = v97;
  *(boxed_opaque_existential_1 + v57[7]) = 0;
  *(boxed_opaque_existential_1 + v57[8]) = 0;
  v63 = boxed_opaque_existential_1 + *(v52 + 20);
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  sub_2666D8B8C();
  v64 = sub_2666D85EC();
  v66 = v65;
  LOBYTE(v59) = v67;
  v69 = v68;
  v116[3] = v52;
  v116[4] = v53;
  v70 = __swift_allocate_boxed_opaque_existential_1(v116);
  v71 = v98;
  v70[7] = MEMORY[0x277D558C8];
  v70[8] = v71;
  *(v70 + 32) = 2;
  *(v70 + 72) = 1;
  v61(v70 + v57[6], *MEMORY[0x277D63A88], v60);
  *v70 = v64;
  v70[1] = v66;
  *(v70 + 16) = v59 & 1;
  v70[3] = v69;
  *(v70 + v57[7]) = 0;
  *(v70 + v57[8]) = 0;
  v72 = v70 + *(v52 + 20);
  *v72 = swift_getKeyPath();
  v72[8] = 0;
  sub_2666D8B8C();
  v73 = v107;
  sub_2666D8ACC();
  v95 = *(v103 + 16);
  v74 = v101;
  v75 = v102;
  (v95)(v101, v100, v102);
  v98 = *(v104 + 16);
  v98(v111, v113, v112);
  v97 = *(v109 + 16);
  v76 = v105;
  v97(v105, v114, v106);
  v96 = *(v115 + 16);
  v77 = v108;
  v78 = v73;
  v79 = v110;
  (v96)(v108, v78, v110);
  v80 = v99;
  (v95)(v99, v74, v75);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095DC8, &unk_2666D9BD0);
  v98(v80 + v81[12], v111, v112);
  v82 = v106;
  v97((v80 + v81[16]), v76, v106);
  (v96)(v80 + v81[20], v77, v79);
  v83 = *(v115 + 8);
  v115 += 8;
  v83(v107, v79);
  v84 = *(v109 + 8);
  v85 = v82;
  v84(v114, v82);
  v86 = *(v104 + 8);
  v87 = v112;
  v86(v113, v112);
  v88 = *(v103 + 8);
  v89 = v102;
  v88(v100, v102);
  v83(v108, v110);
  v84(v105, v85);
  v86(v111, v87);
  return (v88)(v101, v89);
}

uint64_t sub_2666B9FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5 - 7];
  sub_2666BC104(a1, a2);
  v7 = sub_2666D7F2C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = type metadata accessor for EventCellView(0);
  v9 = v8[5];
  __swift_storeEnumTagSinglePayload(a2 + v9, 1, 1, v7);
  v10 = a2 + v8[7];
  KeyPath = swift_getKeyPath();
  v19 = 0;
  v17 = 1;
  *v10 = KeyPath;
  *(v10 + 8) = 0;
  *(v10 + 9) = *v18;
  *(v10 + 12) = *&v18[3];
  *(v10 + 16) = 0x4030000000000000;
  *(v10 + 24) = 0;
  *(v10 + 32) = 1;
  *(v10 + 33) = *v16;
  *(v10 + 36) = *&v16[3];
  *(v10 + 40) = 1;
  *(v10 + 48) = sub_2666BD078;
  *(v10 + 56) = 0;
  v12 = a2 + v8[8];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  sub_2666BC038(v6, a2 + v9);
  *(a2 + v8[6]) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D90, &qword_2666DAB20);
  sub_2666BC104(a1, a2 + *(v13 + 36));
  type metadata accessor for PunchoutToEventDetailsModifier(0);
  return sub_2666D8B8C();
}

uint64_t sub_2666BA188@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v70 = sub_2666D8ADC();
  v77 = *(v70 - 8);
  v3 = MEMORY[0x28223BE20](v70);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v75 = &v62 - v5;
  v6 = type metadata accessor for EventCellView(0);
  v7 = (v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CD8, &qword_2666D9A48);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CE0, &qword_2666D9A50);
  v76 = *(v67 - 8);
  v15 = MEMORY[0x28223BE20](v67);
  v73 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v62 - v17;
  *v14 = sub_2666D858C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CE8, &qword_2666D9A58);
  sub_2666BA948(a1, &v14[*(v18 + 44)]);
  type metadata accessor for ConflictingEventConfirmationSnippet(0);
  sub_2666B2B90(&qword_280095CF0, &qword_280095CD8, &qword_2666D9A48, MEMORY[0x277CE1138]);
  sub_2666D884C();
  sub_2666BC15C(v14, &qword_280095CD8, &qword_2666D9A48);
  sub_2666BC104(a1, v11);
  v19 = v7[7];
  v20 = sub_2666D7F2C();
  __swift_storeEnumTagSinglePayload(&v11[v19], 1, 1, v20);
  KeyPath = swift_getKeyPath();
  v11[v7[8]] = 0;
  v22 = &v11[v7[9]];
  v72 = v11;
  v23 = swift_getKeyPath();
  v83 = 0;
  v81 = 1;
  *v22 = v23;
  v22[8] = 0;
  *(v22 + 9) = *v82;
  *(v22 + 3) = *&v82[3];
  *(v22 + 2) = 0x4030000000000000;
  *(v22 + 3) = 0;
  v22[32] = 1;
  *(v22 + 33) = *v80;
  *(v22 + 9) = *&v80[3];
  *(v22 + 5) = 1;
  *(v22 + 6) = sub_2666BD078;
  *(v22 + 7) = 0;
  v24 = &v11[v7[10]];
  *v24 = KeyPath;
  v24[8] = 0;
  v63 = sub_2666D85EC();
  v26 = v25;
  v64 = v27;
  v65 = v28;
  v29 = type metadata accessor for CalendarButtonView(0);
  v79[3] = v29;
  v30 = sub_2666BBFF0(&qword_280095C10, type metadata accessor for CalendarButtonView, &unk_2666DA924);
  v79[4] = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
  boxed_opaque_existential_1[7] = MEMORY[0x277D558C8];
  v66 = sub_2666B7E38(boxed_opaque_existential_1, v32, v33);
  boxed_opaque_existential_1[8] = v66;
  *(boxed_opaque_existential_1 + 32) = 0;
  *(boxed_opaque_existential_1 + 72) = 1;
  v34 = type metadata accessor for CalendarButtonView.Model(0);
  v35 = v34[6];
  v36 = *MEMORY[0x277D63A90];
  v37 = sub_2666D8A7C();
  v38 = *(*(v37 - 8) + 104);
  v38(boxed_opaque_existential_1 + v35, v36, v37);
  *boxed_opaque_existential_1 = v63;
  boxed_opaque_existential_1[1] = v26;
  *(boxed_opaque_existential_1 + 16) = v64 & 1;
  boxed_opaque_existential_1[3] = v65;
  *(boxed_opaque_existential_1 + v34[7]) = 0;
  *(boxed_opaque_existential_1 + v34[8]) = 0;
  v39 = boxed_opaque_existential_1 + *(v29 + 20);
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  sub_2666D8B8C();
  v40 = sub_2666D85EC();
  v42 = v41;
  LOBYTE(v36) = v43;
  v45 = v44;
  v78[3] = v29;
  v78[4] = v30;
  v46 = __swift_allocate_boxed_opaque_existential_1(v78);
  v47 = v66;
  v46[7] = MEMORY[0x277D558C8];
  v46[8] = v47;
  *(v46 + 32) = 2;
  *(v46 + 72) = 1;
  v38(v46 + v34[6], *MEMORY[0x277D63A88], v37);
  *v46 = v40;
  v46[1] = v42;
  *(v46 + 16) = v36 & 1;
  v46[3] = v45;
  *(v46 + v34[7]) = 0;
  *(v46 + v34[8]) = 0;
  v48 = v46 + *(v29 + 20);
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  sub_2666D8B8C();
  v49 = v75;
  sub_2666D8ACC();
  v50 = *(v76 + 16);
  v51 = v73;
  v52 = v67;
  v50(v73, v74, v67);
  v53 = v68;
  sub_2666BC104(v72, v68);
  v66 = *(v77 + 16);
  v54 = v69;
  v55 = v49;
  v56 = v70;
  v66(v69, v55, v70);
  v57 = v71;
  v50(v71, v51, v52);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095CF8, &qword_2666D9AC0);
  sub_2666BC104(v53, &v57[*(v58 + 48)]);
  v66(&v57[*(v58 + 64)], v54, v56);
  v59 = *(v77 + 8);
  v59(v75, v56);
  sub_2666BC208(v72, type metadata accessor for EventCellView);
  v60 = *(v76 + 8);
  v60(v74, v52);
  v59(v54, v56);
  sub_2666BC208(v53, type metadata accessor for EventCellView);
  return (v60)(v73, v52);
}

uint64_t sub_2666BA948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v74 = a2;
  v2 = sub_2666D85DC();
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2666D7EDC();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2666D7EBC();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2666D7EFC();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2666D7F1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  v18 = type metadata accessor for DateHeaderView(0);
  v19 = (v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v72 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  sub_2666D825C();
  sub_2666D7DCC();
  *&v23[v19[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  swift_storeEnumTagMultiPayload();
  *&v23[v19[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  swift_storeEnumTagMultiPayload();
  sub_2666D8B8C();
  v24 = &v23[v19[10]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(v24 + 2) = 0;
  v24[24] = 1;
  *(v24 + 4) = 1;
  *(v24 + 5) = sub_2666C1B98;
  *(v24 + 6) = 0;
  MEMORY[0x2667897B0]();
  sub_2666D7EEC();
  sub_2666D7F0C();
  (*(v64 + 8))(v7, v65);
  v25 = *(v9 + 8);
  v25(v12, v8);
  v26 = v66;
  sub_2666D7EAC();
  sub_2666D7E7C();
  (*(v67 + 8))(v26, v68);
  v25(v15, v8);
  v27 = v69;
  sub_2666D7ECC();
  sub_2666D7E9C();
  (*(v70 + 8))(v27, v71);
  v25(v17, v8);
  *&v23[v19[12]] = &unk_287810A08;
  sub_2666D85CC();
  sub_2666D85BC();
  v71 = type metadata accessor for ConflictingEventConfirmationSnippet(0);
  v77[0] = *(*(v75 + *(v71 + 20)) + 16);
  sub_2666D859C();
  sub_2666D85BC();
  sub_2666D85FC();
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v28 = qword_2800978F0;
  v29 = sub_2666D87DC();
  v31 = v30;
  v33 = v32;
  LODWORD(v77[0]) = sub_2666D86AC();
  v34 = sub_2666D878C();
  v36 = v35;
  v38 = v37;
  sub_2666B2B2C(v29, v31, v33 & 1);

  sub_2666D877C();
  v39 = sub_2666D87BC();
  v41 = v40;
  v43 = v42;
  v73 = v44;

  sub_2666B2B2C(v34, v36, v38 & 1);

  v45 = sub_2666D872C();
  v46 = *(v75 + *(v71 + 36) + 32);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  if ((v46 & 1) == 0)
  {
    sub_2666D82BC();
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v50 = v54;
  }

  v55 = v43 & 1;
  v91 = v43 & 1;
  v88 = v46;
  v56 = v72;
  sub_2666BC104(v23, v72);
  v57 = v74;
  sub_2666BC104(v56, v74);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D10, &qword_2666D9B38);
  v59 = v57 + *(v58 + 48);
  *v59 = 0;
  *(v59 + 8) = 1;
  v60 = *(v58 + 64);
  __src[0] = v39;
  __src[1] = v41;
  LOBYTE(__src[2]) = v55;
  *(&__src[2] + 1) = *v90;
  HIDWORD(__src[2]) = *&v90[3];
  v61 = v39;
  v62 = v73;
  __src[3] = v73;
  LOBYTE(__src[4]) = v45;
  *(&__src[4] + 1) = *v89;
  HIDWORD(__src[4]) = *&v89[3];
  __src[5] = v47;
  __src[6] = v48;
  __src[7] = v49;
  __src[8] = v50;
  LOBYTE(__src[9]) = v46;
  memcpy((v57 + v60), __src, 0x49uLL);
  sub_2666BC0A8(__src, v77, &qword_280095D18, &qword_2666D9B40);
  sub_2666BC208(v23, type metadata accessor for DateHeaderView);
  v77[0] = v61;
  v77[1] = v41;
  v78 = v55;
  *v79 = *v90;
  *&v79[3] = *&v90[3];
  v80 = v62;
  v81 = v45;
  *v82 = *v89;
  *&v82[3] = *&v89[3];
  v83 = v47;
  v84 = v48;
  v85 = v49;
  v86 = v50;
  v87 = v46;
  sub_2666BC15C(v77, &qword_280095D18, &qword_2666D9B40);
  return sub_2666BC208(v56, type metadata accessor for DateHeaderView);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for ConflictingEventConfirmationSnippet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = sub_2666D825C();
  v7 = v6[8];
  sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v0 + v3 + v7);

  v9 = v0 + v3 + v6[12];
  v10 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = *(v10 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4();
      (*(v12 + 8))(v9 + v11);
    }
  }

  v13 = v6[14];
  v14 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = *(type metadata accessor for RenderableEvent(0) + 20);
  sub_2666D815C();
  OUTLINED_FUNCTION_1_4();
  (*(v16 + 8))(v5 + v15);

  v17 = v5 + v1[6];
  v18 = sub_2666D81FC();
  if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
  {

    v19 = *(v18 + 28);
    v20 = sub_2666D7F2C();
    if (!__swift_getEnumTagSinglePayload(v17 + v19, 1, v20))
    {
      (*(*(v20 - 8) + 8))(v17 + v19, v20);
    }

    v21 = *(v18 + 32);
    if (!__swift_getEnumTagSinglePayload(v17 + v21, 1, v20))
    {
      (*(*(v20 - 8) + 8))(v17 + v21, v20);
    }
  }

  sub_2666B4670(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v22 = v1[8];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4();
  (*(v23 + 8))(v5 + v22);
  sub_2666B4670(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666BB670(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConflictingEventConfirmationSnippet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2666BB6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v59 = a2;
  v60 = a3;
  v7 = sub_2666D825C();
  v8 = OUTLINED_FUNCTION_10(v7);
  v67 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v66 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = v55 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v55 - v14;
  v16 = type metadata accessor for RenderableEvent(0);
  v17 = OUTLINED_FUNCTION_10(v16);
  v64 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v55 - v22;
  v24 = type metadata accessor for ConflictingEventConfirmationSnippet(0);
  v25 = a5 + v24[7];
  KeyPath = swift_getKeyPath();
  *v25 = KeyPath;
  *(v25 + 8) = 0;
  v27 = v24[8];
  v57 = KeyPath;
  v58 = v27;
  sub_2666D8B8C();
  v28 = a5 + v24[9];
  v29 = swift_getKeyPath();
  v72 = 0;
  v71 = 1;
  *v28 = v29;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0x4030000000000000;
  *(v28 + 24) = 0;
  *(v28 + 32) = 1;
  *(v28 + 40) = 1;
  *(v28 + 48) = sub_2666BD078;
  *(v28 + 56) = 0;
  sub_2666BC104(a1, v15);
  v30 = v68;
  v31 = v69;
  sub_2666B30A8(v15, v30, v23);
  if (v31)
  {

    sub_2666BC15C(v60, &qword_280095C60, &unk_2666D9990);
    OUTLINED_FUNCTION_0_1();
    sub_2666BC208(a1, v32);
LABEL_3:

    sub_2666D8B9C();
    OUTLINED_FUNCTION_1_4();
    (*(v33 + 8))(a5 + v58);
  }

  else
  {
    v68 = v21;
    v69 = 0;
    v62 = v24;
    v63 = v30;
    v55[1] = v29;
    v56 = a1;
    OUTLINED_FUNCTION_6();
    sub_2666BC1B0(v23, a5);
    v36 = v59;
    v35 = v60;
    v37 = *(v59 + 16);
    if (v37)
    {
      v55[0] = a5;
      v70 = MEMORY[0x277D84F90];
      result = sub_2666C8090(0, v37, 0);
      v38 = 0;
      v39 = v70;
      v40 = v67;
      v61 = v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      while (v38 < *(v36 + 16))
      {
        v41 = v65;
        sub_2666BC104(v61 + *(v40 + 72) * v38, v65);
        v42 = v66;
        sub_2666BC104(v41, v66);
        v43 = v63;
        v44 = v69;
        sub_2666B30A8(v42, v43, v68);
        v69 = v44;
        if (v44)
        {

          sub_2666BC15C(v35, &qword_280095C60, &unk_2666D9990);
          v53 = MEMORY[0x277D55918];
          sub_2666BC208(v56, MEMORY[0x277D55918]);
          sub_2666BC208(v41, v53);

          a5 = v55[0];
          sub_2666BC208(v55[0], type metadata accessor for RenderableEvent);
          goto LABEL_3;
        }

        v45 = v36;
        v46 = v35;
        OUTLINED_FUNCTION_0_1();
        sub_2666BC208(v41, v47);
        v70 = v39;
        v49 = *(v39 + 16);
        v48 = *(v39 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_2666C8090((v48 > 1), v49 + 1, 1);
          v39 = v70;
        }

        ++v38;
        *(v39 + 16) = v49 + 1;
        OUTLINED_FUNCTION_6();
        result = sub_2666BC1B0(v68, v50);
        v35 = v46;
        v36 = v45;
        v40 = v67;
        v51 = v62;
        if (v37 == v38)
        {
          OUTLINED_FUNCTION_0_1();
          sub_2666BC208(v56, v54);

          a5 = v55[0];
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {

      OUTLINED_FUNCTION_0_1();
      sub_2666BC208(v56, v52);
      v39 = MEMORY[0x277D84F90];
      v51 = v62;
LABEL_14:
      *(a5 + v51[5]) = v39;
      return sub_2666BC25C(v35, a5 + v51[6]);
    }
  }

  return result;
}

uint64_t sub_2666BBC30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2666D850C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2666BBC88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095DD0, &qword_2666D9BE0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2666BC0A8(a1, &v5 - v3, &qword_280095DD0, &qword_2666D9BE0);
  return sub_2666D84BC();
}

uint64_t sub_2666BBD30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2666D850C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2666BBDC0()
{
  result = qword_280095D68;
  if (!qword_280095D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095D30, &qword_2666D9B58);
    sub_2666BBE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095D68);
  }

  return result;
}

unint64_t sub_2666BBE4C()
{
  result = qword_280095D70;
  if (!qword_280095D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095D58, &qword_2666D9B78);
    sub_2666B2B90(&qword_280095D78, &qword_280095D60, &qword_2666D9B80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095D70);
  }

  return result;
}

unint64_t sub_2666BBF04()
{
  result = qword_280095DA0;
  if (!qword_280095DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095D90, &qword_2666DAB20);
    sub_2666BBFF0(&qword_280095DA8, type metadata accessor for EventCellView, &unk_2666D9648);
    sub_2666BBFF0(&qword_280095DB0, type metadata accessor for PunchoutToEventDetailsModifier, &unk_2666DA2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095DA0);
  }

  return result;
}

uint64_t sub_2666BBFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666BC038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666BC0A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_12();
  v6(v5);
  return a2;
}

uint64_t sub_2666BC104(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_12();
  v6(v5);
  return a2;
}

uint64_t sub_2666BC15C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2666BC1B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_12();
  v6(v5);
  return a2;
}

uint64_t sub_2666BC208(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2666BC25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2666BC2D0()
{
  result = qword_280095DD8;
  if (!qword_280095DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095DE0, &qword_2666D9BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095CB0, &qword_2666D9A38);
    v1 = MEMORY[0x277D63B90];
    sub_2666B2B90(&qword_280095CB8, &qword_280095CB0, &qword_2666D9A38, MEMORY[0x277D63B90]);
    swift_getOpaqueTypeConformance2();
    sub_2666B2B90(&qword_280095CC0, &qword_280095C88, &qword_2666D9A18, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095DD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2666BC54C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666D844C();
  *a1 = result;
  return result;
}

uint64_t TamaleEvent.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TamaleEvent.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TamaleEvent.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TamaleEvent(0) + 20);
  sub_2666D7DEC();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TamaleEvent(uint64_t a1)
{
  result = qword_280095DE8;
  if (!qword_280095DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TamaleEvent.dateInterval.setter()
{
  v2 = OUTLINED_FUNCTION_1_5();
  v3 = *(type metadata accessor for TamaleEvent(v2) + 20);
  sub_2666D7DEC();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*TamaleEvent.dateInterval.modify())()
{
  v0 = OUTLINED_FUNCTION_1_5();
  type metadata accessor for TamaleEvent(v0);
  return nullsub_1;
}

uint64_t TamaleEvent.allDay.setter(char a1)
{
  result = type metadata accessor for TamaleEvent(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

void (*TamaleEvent.allDay.modify())()
{
  v0 = OUTLINED_FUNCTION_1_5();
  type metadata accessor for TamaleEvent(v0);
  return nullsub_1;
}

uint64_t TamaleEvent.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for TamaleEvent(0) + 28));

  return v1;
}

uint64_t TamaleEvent.location.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TamaleEvent(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*TamaleEvent.location.modify())()
{
  v0 = OUTLINED_FUNCTION_1_5();
  type metadata accessor for TamaleEvent(v0);
  return nullsub_1;
}

uint64_t TamaleEvent.init(title:dateInterval:allDay:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for TamaleEvent(0);
  v15 = &a7[v14[7]];
  *a7 = a1;
  *(a7 + 1) = a2;
  v16 = v14[5];
  sub_2666D7DEC();
  OUTLINED_FUNCTION_2();
  result = (*(v17 + 32))(&a7[v16], a3);
  a7[v14[6]] = a4;
  *v15 = a5;
  *(v15 + 1) = a6;
  return result;
}

id sub_2666BC9B4()
{
  v1 = *v0;
  v2 = [v1 defaultCalendarForNewEvents];
  if (v2)
  {
    goto LABEL_2;
  }

  v5 = [v1 calendarsForEntityType_];
  sub_2666BD4BC();
  v6 = sub_2666D8D7C();

  result = sub_2666BD054(v6);
  if (!result)
  {

    v2 = [objc_opt_self() calendarForEntityType:0 eventStore:v1];
LABEL_2:
    v3 = v2;

    return v3;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26678A7C0](0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_7:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

SiriCalendarUI::SiriCalendarTamaleEventViewProvider __swiftcall SiriCalendarTamaleEventViewProvider.init()()
{
  v1 = v0;
  result.eventStore.super.isa = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v1->eventStore.super.isa = result.eventStore.super.isa;
  return result;
}

int *SiriCalendarTamaleEventViewProvider.getView(for:)(char *a1)
{
  v4 = type metadata accessor for SingleEventView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RenderableEvent(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *v1;
  sub_2666BCD2C(a1, v10);
  if (!v2)
  {
    sub_2666BD408(v10, v7, type metadata accessor for RenderableEvent);
    v7[v4[5]] = 0;
    sub_2666D8B8C();
    v11 = &v7[v4[7]];
    KeyPath = swift_getKeyPath();
    v16[8] = 0;
    v16[0] = 1;
    *v11 = KeyPath;
    v11[8] = 0;
    *(v11 + 2) = 0x4030000000000000;
    *(v11 + 3) = 0;
    v11[32] = 1;
    *(v11 + 5) = 1;
    *(v11 + 6) = sub_2666BD078;
    *(v11 + 7) = 0;
    v13 = &v7[v4[8]];
    *v13 = swift_getKeyPath();
    v13[8] = 0;
    *(v13 + 1) = xmmword_2666D9980;
    *(v13 + 4) = 1;
    *(v13 + 5) = sub_2666BD0AC;
    *(v13 + 6) = 0;
    v14 = &v7[v4[9]];
    *v14 = swift_getKeyPath();
    v14[8] = 0;
    sub_2666BD0D4();
    v4 = sub_2666D87FC();
    sub_2666BD468();
    sub_2666BD468();
  }

  return v4;
}

void *sub_2666BCD2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E00, &qword_2666D9CD8);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = v23 - v6;
  v7 = sub_2666D7DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2666D825C();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - v15;
  v17 = *v2;
  v28 = *v2;
  sub_2666BC9B4();
  result = sub_2666D81BC();
  if (!v3)
  {
    v19 = *(a1 + 1);
    v25 = *a1;
    v23[1] = v19;
    v20 = type metadata accessor for TamaleEvent(0);
    (*(v8 + 16))(v10, &a1[*(v20 + 20)], v7);
    v24 = a1[*(v20 + 24)];
    v21 = sub_2666D822C();
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v21);

    sub_2666D824C();
    sub_2666D823C();
    sub_2666BD408(v16, v14, MEMORY[0x277D55918]);
    v22 = v17;
    sub_2666B30A8(v14, v22, v27);
    return sub_2666BD468();
  }

  return result;
}

uint64_t sub_2666BCFE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666D844C();
  *a1 = result;
  return result;
}

uint64_t sub_2666BD054(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_2666BD078@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_2666C192C(a2, a3, a4);
  *a1 = v6;
  *(a1 + 8) = result;
  *(a1 + 16) = v7 & 1;
  return result;
}

unint64_t sub_2666BD0D4()
{
  result = qword_280095D50;
  if (!qword_280095D50)
  {
    type metadata accessor for SingleEventView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095D50);
  }

  return result;
}

uint64_t sub_2666BD140(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2666D7DEC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2666BD1DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2666D7DEC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2666BD25C(uint64_t a1)
{
  sub_2666D7DEC();
  if (v1 <= 0x3F)
  {
    sub_2666BD2F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2666BD2F8()
{
  if (!qword_280095DF8)
  {
    v0 = sub_2666D8DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280095DF8);
    }
  }
}

uint64_t sub_2666BD37C(uint64_t *a1, int a2)
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

uint64_t sub_2666BD3BC(uint64_t result, int a2, int a3)
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

uint64_t sub_2666BD408(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666BD468()
{
  v1 = OUTLINED_FUNCTION_1_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_2666BD4BC()
{
  result = qword_280095E08;
  if (!qword_280095E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280095E08);
  }

  return result;
}

uint64_t sub_2666BD520(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_17();
  type metadata accessor for RenderableEvent(v6);
  OUTLINED_FUNCTION_2_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  type metadata accessor for CalendarButtonView.Model(0);
  OUTLINED_FUNCTION_2_0();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_11:
    v10 = v3 + v13;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E10, &unk_2666D9CE0);
  OUTLINED_FUNCTION_2_0();
  if (*(v15 + 84) == a2)
  {
    v9 = v14;
    v13 = a3[7];
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
  OUTLINED_FUNCTION_2_0();
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v13 = a3[11];
    goto LABEL_11;
  }

  sub_2666D8B9C();
  OUTLINED_FUNCTION_2_0();
  if (*(v19 + 84) == a2)
  {
    v9 = v18;
    v13 = a3[12];
    goto LABEL_11;
  }

  v21 = *(v3 + a3[13] + 48);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  return (v21 + 1);
}

void sub_2666BD6F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_17();
  type metadata accessor for RenderableEvent(v8);
  OUTLINED_FUNCTION_2_0();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for CalendarButtonView.Model(0);
    OUTLINED_FUNCTION_2_0();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E10, &unk_2666D9CE0);
      OUTLINED_FUNCTION_2_0();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
        OUTLINED_FUNCTION_2_0();
        if (*(v19 + 84) == a3)
        {
          v11 = v18;
          v15 = a4[11];
        }

        else
        {
          sub_2666D8B9C();
          OUTLINED_FUNCTION_2_0();
          if (*(v21 + 84) != a3)
          {
            *(v4 + a4[13] + 48) = (a2 - 1);
            return;
          }

          v11 = v20;
          v15 = a4[12];
        }
      }
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for SingleEventWithButtonsSnippet(uint64_t a1)
{
  result = qword_280095E18;
  if (!qword_280095E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666BD904(uint64_t a1)
{
  type metadata accessor for RenderableEvent(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CalendarButtonView.Model(319);
    if (v2 <= 0x3F)
    {
      sub_2666BDA34(319, &qword_280095E28, type metadata accessor for CalendarButtonView.Model);
      if (v3 <= 0x3F)
      {
        sub_2666BDA34(319, &qword_280095C80, MEMORY[0x277D55908]);
        if (v4 <= 0x3F)
        {
          sub_2666D8B9C();
          if (v5 <= 0x3F)
          {
            sub_2666B3DDC(319, v5, v6, v7);
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

void sub_2666BDA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2666D8DFC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2666BDAA4()
{
  v1 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666BF468(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2666BF368(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E30, &qword_2666D9D60);
  sub_2666B2B90(&qword_280095E38, &qword_280095E30, &qword_2666D9D60, MEMORY[0x277CE14C0]);
  return sub_2666D8AAC();
}

uint64_t sub_2666BDC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E40, &qword_2666D9D68);
  MEMORY[0x28223BE20](v36);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E48, &qword_2666D9D70);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v32 - v9;
  v10 = type metadata accessor for SingleEventView(0);
  v11 = (v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  v17 = *(a1 + *(v16 + 36));
  sub_2666BF468(a1, v15);
  v15[v11[7]] = v17;
  sub_2666D8B8C();
  v18 = &v15[v11[9]];
  KeyPath = swift_getKeyPath();
  v39 = 0;
  v38 = 1;
  *v18 = KeyPath;
  v18[8] = 0;
  *(v18 + 2) = 0x4030000000000000;
  *(v18 + 3) = 0;
  v18[32] = 1;
  *(v18 + 5) = 1;
  *(v18 + 6) = sub_2666BD078;
  *(v18 + 7) = 0;
  v20 = &v15[v11[10]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  *(v20 + 1) = xmmword_2666D9980;
  *(v20 + 4) = 1;
  *(v20 + 5) = sub_2666BD0AC;
  *(v20 + 6) = 0;
  v21 = &v15[v11[11]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = *(a1 + *(v16 + 52) + 16);
  *v4 = sub_2666D862C();
  *(v4 + 1) = v22;
  v4[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E50, &qword_2666D9DA8);
  sub_2666BE058(a1, &v4[*(v23 + 44)]);
  sub_2666B2B90(&qword_280095E58, &qword_280095E40, &qword_2666D9D68, MEMORY[0x277CE1198]);
  v24 = v34;
  sub_2666D884C();
  sub_2666BC15C(v4, &qword_280095E40, &qword_2666D9D68);
  v25 = v33;
  sub_2666BF468(v15, v33);
  v26 = *(v6 + 16);
  v27 = v35;
  v26(v35, v24, v5);
  v28 = v37;
  sub_2666BF468(v25, v37);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E60, &qword_2666D9DB0);
  v26((v28 + *(v29 + 48)), v27, v5);
  v30 = *(v6 + 8);
  v30(v24, v5);
  sub_2666BF3CC(v15, type metadata accessor for SingleEventView);
  v30(v27, v5);
  return sub_2666BF3CC(v25, type metadata accessor for SingleEventView);
}

uint64_t sub_2666BE058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for CalendarButtonView(0);
  MEMORY[0x28223BE20](v3);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E68, &qword_2666D9DB8);
  v64 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v62 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E10, &unk_2666D9CE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - v7;
  v71 = type metadata accessor for CalendarButtonView.Model(0);
  MEMORY[0x28223BE20](v71);
  v61 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E70, &qword_2666D9DC0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v75 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v61 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E78, &qword_2666D9DC8);
  MEMORY[0x28223BE20](v67);
  v15 = &v61 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E80, &qword_2666D9DD0);
  v16 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v18 = &v61 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E88, &qword_2666D9DD8);
  MEMORY[0x28223BE20](v66);
  v65 = &v61 - v19;
  v69 = sub_2666D8ADC();
  v20 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E90, &qword_2666D9DE0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v72 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v68 = &v61 - v26;
  v27 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  v28 = *(a1 + *(v27 + 32));
  v73 = a1;
  if (v28 == 1)
  {
    v29 = *(v27 + 20);
    v81 = v3;
    v30 = v27;
    v31 = sub_2666BF420(&qword_280095C10, type metadata accessor for CalendarButtonView, &unk_2666DA924);
    v82 = v31;
    v32 = __swift_allocate_boxed_opaque_existential_1(&v79);
    sub_2666BF468(a1 + v29, v32);
    v33 = v32 + *(v3 + 20);
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = v30;
    sub_2666D8B8C();
    v35 = *(v30 + 24);
    v78[3] = v3;
    v78[4] = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
    sub_2666BF468(a1 + v35, boxed_opaque_existential_1);
    v37 = boxed_opaque_existential_1 + *(v3 + 20);
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    sub_2666D8B8C();
    sub_2666D8ACC();
    v38 = v69;
    (*(v20 + 16))(v65, v22, v69);
    swift_storeEnumTagMultiPayload();
    sub_2666BF420(&qword_280095EA8, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
    v39 = sub_2666B2B90(&qword_280095EA0, &qword_280095E78, &qword_2666D9DC8, MEMORY[0x277CE1198]);
    v79 = v67;
    v80 = v39;
    swift_getOpaqueTypeConformance2();
    v40 = v68;
    sub_2666D868C();
    (*(v20 + 8))(v22, v38);
    v41 = v40;
  }

  else
  {
    v42 = v27;
    *v15 = sub_2666D862C();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E98, &qword_2666D9DE8);
    sub_2666BEAD0(a1, &v15[*(v43 + 44)]);
    v44 = sub_2666B2B90(&qword_280095EA0, &qword_280095E78, &qword_2666D9DC8, MEMORY[0x277CE1198]);
    v45 = v67;
    sub_2666D883C();
    sub_2666BC15C(v15, &qword_280095E78, &qword_2666D9DC8);
    v46 = v70;
    (*(v16 + 16))(v65, v18, v70);
    swift_storeEnumTagMultiPayload();
    sub_2666BF420(&qword_280095EA8, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
    v79 = v45;
    v80 = v44;
    swift_getOpaqueTypeConformance2();
    v47 = v68;
    sub_2666D868C();
    (*(v16 + 8))(v18, v46);
    v34 = v42;
    v41 = v47;
  }

  sub_2666BF298(v73 + *(v34 + 28), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v71) == 1)
  {
    sub_2666BC15C(v8, &qword_280095E10, &unk_2666D9CE0);
    v48 = 1;
    v49 = v76;
    v50 = v74;
  }

  else
  {
    v51 = v61;
    sub_2666BF368(v8, v61);
    v52 = v63;
    sub_2666BF468(v51, v63);
    v53 = v52 + *(v3 + 20);
    *v53 = swift_getKeyPath();
    *(v53 + 8) = 0;
    sub_2666D8B8C();
    sub_2666BF420(&qword_280095C38, type metadata accessor for CalendarButtonView, &unk_2666DA94C);
    v54 = v62;
    sub_2666D883C();
    sub_2666BF3CC(v52, type metadata accessor for CalendarButtonView);
    sub_2666BF3CC(v51, type metadata accessor for CalendarButtonView.Model);
    v50 = v74;
    v55 = v54;
    v49 = v76;
    (*(v64 + 32))(v74, v55, v76);
    v48 = 0;
  }

  __swift_storeEnumTagSinglePayload(v50, v48, 1, v49);
  v56 = v72;
  sub_2666BF308(v41, v72, &qword_280095E90, &qword_2666D9DE0);
  v57 = v75;
  sub_2666BF308(v50, v75, &qword_280095E70, &qword_2666D9DC0);
  v58 = v77;
  sub_2666BF308(v56, v77, &qword_280095E90, &qword_2666D9DE0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EB0, &qword_2666D9DF0);
  sub_2666BF308(v57, v58 + *(v59 + 48), &qword_280095E70, &qword_2666D9DC0);
  sub_2666BC15C(v50, &qword_280095E70, &qword_2666D9DC0);
  sub_2666BC15C(v41, &qword_280095E90, &qword_2666D9DE0);
  sub_2666BC15C(v57, &qword_280095E70, &qword_2666D9DC0);
  return sub_2666BC15C(v56, &qword_280095E90, &qword_2666D9DE0);
}

uint64_t sub_2666BEAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for CalendarButtonView(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  sub_2666BF468(a1 + *(v16 + 20), v15);
  v17 = &v15[*(v4 + 28)];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  sub_2666D8B8C();
  sub_2666BF468(a1 + *(v16 + 24), v13);
  v18 = &v13[*(v4 + 28)];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  sub_2666D8B8C();
  sub_2666BF468(v15, v10);
  sub_2666BF468(v13, v7);
  v19 = v23;
  sub_2666BF468(v10, v23);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EB8, &qword_2666D9E28);
  sub_2666BF468(v7, v19 + *(v20 + 48));
  sub_2666BF3CC(v13, type metadata accessor for CalendarButtonView);
  sub_2666BF3CC(v15, type metadata accessor for CalendarButtonView);
  sub_2666BF3CC(v7, type metadata accessor for CalendarButtonView);
  return sub_2666BF3CC(v10, type metadata accessor for CalendarButtonView);
}

uint64_t sub_2666BED14()
{
  v1 = type metadata accessor for SingleEventWithButtonsSnippet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v32 = *(*(v1 - 1) + 64);
  v33 = v0;
  v4 = v0 + v3;

  v5 = sub_2666D825C();
  v6 = v5[8];
  sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4();
  (*(v7 + 8))(v0 + v3 + v6);

  v8 = v0 + v3 + v5[12];
  v9 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = *(v9 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4();
      (*(v11 + 8))(v8 + v10);
    }
  }

  v12 = v5[14];
  v13 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v4 + v12, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
  }

  v14 = *(type metadata accessor for RenderableEvent(0) + 20);
  sub_2666D815C();
  OUTLINED_FUNCTION_1_4();
  (*(v15 + 8))(v4 + v14);

  v16 = v4 + v1[5];

  if (*(v16 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v16 + 32));
  }

  else
  {
  }

  v17 = type metadata accessor for CalendarButtonView.Model(0);
  v18 = *(v17 + 24);
  v19 = sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  v21 = *(v20 + 8);
  v21(v16 + v18, v19);

  v22 = v4 + v1[6];

  if (*(v22 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v22 + 32));
  }

  else
  {
  }

  v21(v22 + *(v17 + 24), v19);

  v23 = v4 + v1[7];
  if (!__swift_getEnumTagSinglePayload(v23, 1, v17))
  {

    if (*(v23 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((v23 + 32));
    }

    else
    {
    }

    v21(v23 + *(v17 + 24), v19);
  }

  v24 = v4 + v1[11];
  v25 = sub_2666D81FC();
  if (!__swift_getEnumTagSinglePayload(v24, 1, v25))
  {

    v26 = *(v25 + 28);
    v27 = sub_2666D7F2C();
    if (!__swift_getEnumTagSinglePayload(v24 + v26, 1, v27))
    {
      (*(*(v27 - 8) + 8))(v24 + v26, v27);
    }

    v28 = *(v25 + 32);
    if (!__swift_getEnumTagSinglePayload(v24 + v28, 1, v27))
    {
      (*(*(v27 - 8) + 8))(v24 + v28, v27);
    }
  }

  v29 = v1[12];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4();
  (*(v30 + 8))(v4 + v29);
  sub_2666B4670(*(v4 + v1[13]), *(v4 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v33, v3 + v32, v2 | 7);
}

uint64_t sub_2666BF220@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SingleEventWithButtonsSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2666BDC1C(v4, a1);
}

uint64_t sub_2666BF298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095E10, &unk_2666D9CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666BF308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666BF368(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2666BF3CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2666BF420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666BF468(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2666BF51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RenderableEvent(0);
  OUTLINED_FUNCTION_2_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_2666D8B9C();
  OUTLINED_FUNCTION_2_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28) + 48);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2666BF620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for RenderableEvent(0);
  OUTLINED_FUNCTION_2_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2666D8B9C();
    OUTLINED_FUNCTION_2_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 48) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for SingleEventView(uint64_t a1)
{
  result = qword_280095ED0;
  if (!qword_280095ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666BF758(uint64_t a1)
{
  type metadata accessor for RenderableEvent(319);
  if (v1 <= 0x3F)
  {
    sub_2666D8B9C();
    if (v3 <= 0x3F)
    {
      sub_2666BF84C(319, &qword_280095A98, &type metadata for CommonConstants, v2);
      if (v5 <= 0x3F)
      {
        sub_2666BF84C(319, &qword_280095EE0, &type metadata for SingleEventView.StyleConstants, v4);
        if (v6 <= 0x3F)
        {
          sub_2666BF898(319);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2666BF84C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for IdiomConstant(0, a3, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2666BF898(uint64_t a1)
{
  if (!qword_280095AA0)
  {
    type metadata accessor for VRXIdiom();
    v1 = sub_2666D830C();
    if (!v2)
    {
      atomic_store(v1, &qword_280095AA0);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SingleEventView.StyleConstants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SingleEventView.StyleConstants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2666BF958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  sub_2666D8C9C();
  OUTLINED_FUNCTION_3();
  v42 = v4;
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v38 = v6 - v5;
  v7 = type metadata accessor for SingleEventView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EE8, &qword_2666D9F48);
  OUTLINED_FUNCTION_3();
  v37 = v11;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EF0, &qword_2666D9F50);
  OUTLINED_FUNCTION_3();
  v39 = v16;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095EF8, &qword_2666D9F58);
  OUTLINED_FUNCTION_3();
  v40 = v20;
  v41 = v21;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  sub_2666C1BC8(v2, &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleEventView);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  sub_2666C17A8(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F00, &qword_2666D9F60);
  sub_2666B2B90(&qword_280095F08, &qword_280095F00, &qword_2666D9F60, MEMORY[0x277CE14C0]);
  sub_2666D8AAC();
  v28 = v42;
  v27 = v43;
  v29 = v38;
  (*(v42 + 104))(v38, *MEMORY[0x277D63EC0], v43);
  OUTLINED_FUNCTION_5_0();
  v32 = sub_2666B2B90(v30, &qword_280095EE8, &qword_2666D9F48, v31);
  sub_2666D885C();
  (*(v28 + 8))(v29, v27);
  (*(v37 + 8))(v14, v10);
  v45 = v10;
  v46 = v32;
  OUTLINED_FUNCTION_4_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2666D884C();
  (*(v39 + 8))(v19, v15);
  v45 = v15;
  v46 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_1();
  swift_getOpaqueTypeConformance2();
  v34 = v40;
  sub_2666D883C();
  return (*(v41 + 8))(v24, v34);
}

uint64_t sub_2666BFDE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v58 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F18, &qword_2666D9F68) - 8;
  v2 = MEMORY[0x28223BE20](v56);
  v57 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v55 = &v43 - v4;
  v5 = sub_2666D7EDC();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2666D7EBC();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2666D7EFC();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2666D7F1C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v21 = type metadata accessor for DateHeaderView(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F20, &qword_2666D9F70);
  v48 = *(v50 - 8);
  v24 = MEMORY[0x28223BE20](v50);
  v47 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59 = &v43 - v26;
  sub_2666D825C();
  sub_2666D7DCC();
  *&v23[v21[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D00, &qword_2666D9AF8);
  swift_storeEnumTagMultiPayload();
  *&v23[v21[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D08, &qword_2666D9B30);
  swift_storeEnumTagMultiPayload();
  sub_2666D8B8C();
  v27 = &v23[v21[8]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *(v27 + 2) = 0;
  v27[24] = 1;
  *(v27 + 4) = 1;
  *(v27 + 5) = sub_2666C1B98;
  *(v27 + 6) = 0;
  MEMORY[0x2667897B0]();
  sub_2666D7EEC();
  sub_2666D7F0C();
  (*(v44 + 8))(v10, v45);
  v28 = *(v12 + 8);
  v28(v15, v11);
  v29 = v46;
  sub_2666D7EAC();
  sub_2666D7E7C();
  (*(v49 + 8))(v29, v51);
  v28(v18, v11);
  v30 = v52;
  sub_2666D7ECC();
  sub_2666D7E9C();
  (*(v53 + 8))(v30, v54);
  v28(v20, v11);
  *&v23[v21[10]] = &unk_287810A08;
  type metadata accessor for SingleEventView(0);
  v31 = v43;
  sub_2666C1C24(&qword_280095F28, type metadata accessor for DateHeaderView, &unk_2666DACD0);
  v32 = v59;
  sub_2666D884C();
  sub_2666C1C6C(v23, type metadata accessor for DateHeaderView);
  v33 = v55;
  sub_2666C054C(v31, v55);
  sub_2666C1BC8(v31, &v33[*(v56 + 44)], type metadata accessor for RenderableEvent);
  type metadata accessor for PunchoutToEventDetailsModifier(0);
  sub_2666D8B8C();
  v34 = v47;
  v35 = v48;
  v36 = *(v48 + 16);
  v37 = v50;
  v36(v47, v32, v50);
  v38 = v57;
  sub_2666C1CC0(v33, v57, &qword_280095F18, &qword_2666D9F68);
  v39 = v58;
  v36(v58, v34, v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F30, &qword_2666DA008);
  sub_2666C1CC0(v38, &v39[*(v40 + 48)], &qword_280095F18, &qword_2666D9F68);
  sub_2666BC15C(v33, &qword_280095F18, &qword_2666D9F68);
  v41 = *(v35 + 8);
  v41(v59, v37);
  sub_2666BC15C(v38, &qword_280095F18, &qword_2666D9F68);
  return (v41)(v34, v37);
}

uint64_t sub_2666C054C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F38, &qword_2666DA010);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for EventCellView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F40, &unk_2666DA7A0);
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  sub_2666C1BC8(a1, v12, type metadata accessor for RenderableEvent);
  v18 = sub_2666D7F2C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v18);
  v19 = v10[5];
  __swift_storeEnumTagSinglePayload(&v12[v19], 1, 1, v18);
  v20 = &v12[v10[7]];
  KeyPath = swift_getKeyPath();
  v48 = 0;
  v46 = 1;
  *v20 = KeyPath;
  v20[8] = 0;
  *(v20 + 9) = *v47;
  *(v20 + 3) = *&v47[3];
  *(v20 + 2) = 0x4030000000000000;
  *(v20 + 3) = 0;
  v20[32] = 1;
  *(v20 + 33) = *v45;
  *(v20 + 9) = *&v45[3];
  *(v20 + 5) = 1;
  *(v20 + 6) = sub_2666BD078;
  *(v20 + 7) = 0;
  v22 = &v12[v10[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_2666BC038(v9, &v12[v19]);
  v12[v10[6]] = 0;
  type metadata accessor for SingleEventView(0);
  sub_2666C1C24(&qword_280095DA8, type metadata accessor for EventCellView, &unk_2666D9648);
  v37 = v17;
  sub_2666D884C();
  sub_2666C1C6C(v12, type metadata accessor for EventCellView);
  v23 = v43;
  sub_2666C0A2C(v43);
  v24 = sub_2666C0F30(v44);
  v25 = v38;
  v26 = *(v38 + 16);
  v27 = v42;
  v28 = v17;
  v29 = v39;
  v26(v42, v28, v39, v24);
  v30 = v40;
  sub_2666C1CC0(v23, v40, &qword_280095F38, &qword_2666DA010);
  v31 = v41;
  (v26)(v41, v27, v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F48, &qword_2666DA018);
  sub_2666C1CC0(v30, &v31[*(v32 + 48)], &qword_280095F38, &qword_2666DA010);
  v33 = *(v32 + 64);
  memcpy(v49, v44, 0x71uLL);
  memcpy(&v31[v33], v44, 0x71uLL);
  sub_2666C1CC0(v49, __dst, &qword_280095F50, &qword_2666DA020);
  sub_2666BC15C(v43, &qword_280095F38, &qword_2666DA010);
  v34 = *(v25 + 8);
  v34(v37, v29);
  memcpy(__dst, v44, 0x71uLL);
  sub_2666BC15C(__dst, &qword_280095F50, &qword_2666DA020);
  sub_2666BC15C(v30, &qword_280095F38, &qword_2666DA010);
  return (v34)(v42, v29);
}

uint64_t sub_2666C0A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2666D85DC();
  v4 = OUTLINED_FUNCTION_10_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F58, &qword_2666DA028);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - v9;
  v10 = sub_2666D857C();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v16 = v15 - v14;
  v51 = type metadata accessor for SingleEventView(0);
  v17 = v1 + *(v51 + 36);
  v18 = *v17;
  if ((*(v17 + 8) & 1) == 0)
  {

    sub_2666D8D9C();
    v19 = sub_2666D86DC();
    v50 = v10;
    v20 = a1;
    v21 = v7;
    v22 = v5;
    v23 = v19;
    sub_2666D827C();

    v5 = v22;
    v7 = v21;
    a1 = v20;
    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v18, 0);
    (*(v12 + 8))(v16, v50);
  }

  if ((sub_2666D8DEC() & 1) != 0 && (sub_2666C1168(), v24))
  {
    v48 = v5;
    v49 = v7;
    v50 = a1;
    sub_2666D85CC();
    sub_2666D85BC();
    sub_2666D85AC();

    sub_2666D85BC();
    v25 = sub_2666D85FC();
    v27 = v26;
    v29 = v28;
    if (qword_280095990 != -1)
    {
      swift_once();
    }

    v30 = qword_2800978F0;
    v31 = qword_2800978F0;
    sub_2666D87DC();
    OUTLINED_FUNCTION_9_0();
    sub_2666D873C();
    v32 = sub_2666D87BC();
    v34 = v33;
    v36 = v35;

    v37 = OUTLINED_FUNCTION_12();
    sub_2666B2B2C(v37, v38, v39);

    __dst[0] = sub_2666D86AC();
    sub_2666D878C();
    OUTLINED_FUNCTION_9_0();
    sub_2666B2B2C(v32, v34, v36 & 1);

    v40 = sub_2666D86EC();
    v55 = v27 & 1;
    v54 = 1;
    __src[0] = v30;
    __src[1] = v25;
    LOBYTE(__src[2]) = v27 & 1;
    __src[3] = v29;
    LOBYTE(__src[4]) = v40;
    memset(&__src[5], 0, 32);
    LOBYTE(__src[9]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095D18, &qword_2666D9B40);
    sub_2666C1D0C();
    v41 = v52;
    sub_2666D884C();
    memcpy(__dst, __src, 0x49uLL);
    sub_2666BC15C(__dst, &qword_280095D18, &qword_2666D9B40);
    v42 = v50;
    v43 = v48;
    (*(v49 + 32))(v50, v41, v48);
    v44 = v42;
    v45 = 0;
    v46 = v43;
  }

  else
  {
    v44 = a1;
    v45 = 1;
    v46 = v5;
  }

  return __swift_storeEnumTagSinglePayload(v44, v45, 1, v46);
}

double sub_2666C0F30@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2666D857C();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for SingleEventView(0);
  v11 = v1 + *(v10 + 36);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_2666D8D9C();
    v13 = sub_2666D86DC();
    sub_2666D827C();

    sub_2666D856C();
    swift_getAtKeyPath();
    sub_2666B4670(v12, 0);
    (*(v5 + 8))(v9, v3);
  }

  if ((sub_2666D8DDC() & 1) != 0 || *(v1 + *(v10 + 20)) != 1)
  {
    v14 = 0;
    KeyPath = 0;
    v15 = 0;
LABEL_8:
    v17 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_9;
  }

  v14 = *(v1 + *(sub_2666D825C() + 52));
  v15 = *(v14 + 16);
  if (!v15)
  {
    v14 = 0;
    KeyPath = 0;
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  v17 = 1;
  v18 = 1;

  v19 = sub_2666D86EC();
  v20 = sub_2666BD078;
  v15 = 0x4030000000000000;
  v21 = 1;
LABEL_9:
  *a1 = v14;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = 0;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = v18;
  *(a1 + 48) = v17;
  *(a1 + 56) = v20;
  *(a1 + 64) = 0;
  *(a1 + 72) = v19;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = v21;
  return result;
}

uint64_t sub_2666C1168()
{
  v1 = v0;
  v2 = sub_2666D7F2C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A60, &qword_2666D9628);
  OUTLINED_FUNCTION_10_0(v9);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F68, &unk_2666DA030);
  OUTLINED_FUNCTION_10_0(v13);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = sub_2666D825C();
  sub_2666C1CC0(v1 + *(v17 + 56), v12, &qword_280095A60, &qword_2666D9628);
  v18 = sub_2666D809C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) == 1)
  {
    v19 = &qword_280095A60;
    v20 = &qword_2666D9628;
    v21 = v12;
  }

  else
  {
    sub_2666D808C();
    (*(*(v18 - 8) + 8))(v12, v18);
    v22 = sub_2666D80CC();
    if (__swift_getEnumTagSinglePayload(v16, 1, v22) != 1)
    {
      sub_2666D7DCC();
      v23 = sub_2666D80BC();
      (*(v4 + 8))(v8, v2);
      (*(*(v22 - 8) + 8))(v16, v22);
      return v23;
    }

    v19 = &qword_280095F68;
    v20 = &unk_2666DA030;
    v21 = v16;
  }

  sub_2666BC15C(v21, v19, v20);
  return 0;
}

double sub_2666C1404@<D0>(_OWORD *a1@<X8>)
{
  result = 12.0;
  *a1 = xmmword_2666D9980;
  return result;
}

double sub_2666C1444@<D0>(_OWORD *a1@<X8>)
{
  result = 10.0;
  *a1 = xmmword_2666D9E40;
  return result;
}

uint64_t sub_2666C14D4()
{
  v1 = type metadata accessor for SingleEventView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = sub_2666D825C();
  v7 = v6[8];
  sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v0 + v3 + v7);

  v9 = v0 + v3 + v6[12];
  v10 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = *(v10 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4();
      (*(v12 + 8))(v9 + v11);
    }
  }

  v13 = v6[14];
  v14 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = *(type metadata accessor for RenderableEvent(0) + 20);
  sub_2666D815C();
  OUTLINED_FUNCTION_1_4();
  (*(v16 + 8))(v5 + v15);

  v17 = v1[6];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_1_4();
  (*(v18 + 8))(v5 + v17);
  sub_2666B4670(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  sub_2666B4670(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  sub_2666B4670(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666C17A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleEventView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666C180C@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SingleEventView(0);
  OUTLINED_FUNCTION_10_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2666BFDE0(v5, a1);
}

uint64_t sub_2666C192C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2666C1E38(a1, a2, a3);
  sub_2666D8C3C();
  return v4;
}

double sub_2666C1980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2666C1DE4(a1, a2, a3);
  sub_2666D8C3C();
  return v4;
}

uint64_t sub_2666C19CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2666C1D90(a1, a2, a3);
  sub_2666D8C3C();
  return v4;
}

uint64_t sub_2666C1A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_2666C1B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_2666C19CC(a1, a3, a4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2666C1BC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_12();
  v5(v4);
  return a2;
}

uint64_t sub_2666C1C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666C1C6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2666C1CC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_12_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_12();
  v6(v5);
  return v4;
}

unint64_t sub_2666C1D0C()
{
  result = qword_280095F60;
  if (!qword_280095F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095D18, &qword_2666D9B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095F60);
  }

  return result;
}

unint64_t sub_2666C1D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280095F70;
  if (!qword_280095F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095F70);
  }

  return result;
}

unint64_t sub_2666C1DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280095F78;
  if (!qword_280095F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095F78);
  }

  return result;
}

unint64_t sub_2666C1E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280095F80;
  if (!qword_280095F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095F80);
  }

  return result;
}

uint64_t sub_2666C1E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095EF8, &qword_2666D9F58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095EF0, &qword_2666D9F50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095EE8, &qword_2666D9F48);
  OUTLINED_FUNCTION_5_0();
  sub_2666B2B90(v0, &qword_280095EE8, &qword_2666D9F48, v1);
  OUTLINED_FUNCTION_4_1();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_2666C1FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_25();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_2666C209C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_25();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_2666D8B9C();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t type metadata accessor for ComposeEventSnippet(uint64_t a1)
{
  result = qword_280095F88;
  if (!qword_280095F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666C2180(uint64_t a1)
{
  result = sub_2666D81FC();
  if (v2 <= 0x3F)
  {
    result = sub_2666D8B9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2666C2220@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2666D862C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095F98, &qword_2666DA0A8);
  return sub_2666C2274(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_2666C2274@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v3 = type metadata accessor for ComposeEventSnippet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_2666D8B1C();
  MEMORY[0x28223BE20](v6 - 8);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FA0, &qword_2666DA0B0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v25 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  sub_2666C564C(a1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposeEventSnippet);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_2666C5404(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_2666CAB10(0, sub_2666C61EC, v15, v24);
  sub_2666C564C(v23, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposeEventSnippet);
  v16 = swift_allocObject();
  sub_2666C5404(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FA8, &qword_2666DA0B8);
  sub_2666B2B90(&qword_280095FB0, &qword_280095FA8, &qword_2666DA0B8, MEMORY[0x277CE14C0]);
  sub_2666D8ABC();
  v17 = *(v9 + 16);
  v18 = v25;
  v17(v25, v13, v8);
  v19 = v26;
  v17(v26, v18, v8);
  v20 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FB8, &qword_2666DA0C0) + 48)];
  *v20 = 0;
  v20[8] = 1;
  v21 = *(v9 + 8);
  v21(v13, v8);
  return (v21)(v18, v8);
}

uint64_t sub_2666C25DC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FC0, &qword_2666DA0C8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FC8, &qword_2666DA0D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FD0, &qword_2666DA0D8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FD8, &qword_2666DA0E0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v28 - v22;
  sub_2666C29DC();
  sub_2666C30B0();
  v30 = v11;
  sub_2666C403C();
  sub_2666C42BC();
  v31 = v21;
  sub_2666C1CC0(v23, v21, &qword_280095FD8, &qword_2666DA0E0);
  v29 = v15;
  sub_2666C1CC0(v17, v15, &qword_280095FD0, &qword_2666DA0D8);
  v28 = v9;
  sub_2666C1CC0(v11, v9, &qword_280095FC8, &qword_2666DA0D0);
  v24 = v32;
  sub_2666C1CC0(v5, v32, &qword_280095FC0, &qword_2666DA0C8);
  v25 = v33;
  sub_2666C1CC0(v21, v33, &qword_280095FD8, &qword_2666DA0E0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FE0, &qword_2666DA0E8);
  sub_2666C1CC0(v15, v25 + v26[12], &qword_280095FD0, &qword_2666DA0D8);
  sub_2666C1CC0(v9, v25 + v26[16], &qword_280095FC8, &qword_2666DA0D0);
  sub_2666C1CC0(v24, v25 + v26[20], &qword_280095FC0, &qword_2666DA0C8);
  sub_2666B2A70(v5, &qword_280095FC0, &qword_2666DA0C8);
  sub_2666B2A70(v30, &qword_280095FC8, &qword_2666DA0D0);
  sub_2666B2A70(v17, &qword_280095FD0, &qword_2666DA0D8);
  sub_2666B2A70(v23, &qword_280095FD8, &qword_2666DA0E0);
  sub_2666B2A70(v24, &qword_280095FC0, &qword_2666DA0C8);
  sub_2666B2A70(v28, &qword_280095FC8, &qword_2666DA0D0);
  sub_2666B2A70(v29, &qword_280095FD0, &qword_2666DA0D8);
  return sub_2666B2A70(v31, &qword_280095FD8, &qword_2666DA0E0);
}

void sub_2666C29DC()
{
  OUTLINED_FUNCTION_17_0();
  v75 = v0;
  v72 = sub_2666D8B3C();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  v6 = v5 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096010, &qword_2666DA110);
  OUTLINED_FUNCTION_3();
  v8 = v7;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960A0, &qword_2666DA178);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23();
  v71 = v13;
  v14 = type metadata accessor for ComposeEventSnippet(0);
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096008, &qword_2666DA108);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_14();
  v23 = MEMORY[0x28223BE20](v22);
  v29 = &v67 - v28;
  v30 = *(v26 + 2);
  if (v30)
  {
    v70 = v21;
    v31 = *(v26 + 1);
    v32 = v26;
    v33 = v27;
    v78 = sub_2666D807C();
    v79 = MEMORY[0x277D63868];
    __swift_allocate_boxed_opaque_existential_1(&v76);

    OUTLINED_FUNCTION_26(0xD000000000000016, 0x80000002666DB170);
    OUTLINED_FUNCTION_0_2();
    sub_2666C564C(v32, &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
    v35 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v36 = (v19 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    sub_2666C5404(v20, v37 + v35);
    v38 = (v37 + v36);
    *v38 = v31;
    v38[1] = v30;
    sub_2666D8AFC();
    OUTLINED_FUNCTION_6_0();
    sub_2666C5B28(v39, v40, MEMORY[0x277D63C48]);
    sub_2666D8BDC();
    v41 = v70;
    (*(v33 + 16))(v71, v29, v70);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_14_0(&qword_2800960B0, &qword_280096008, &qword_2666DA108);
    OUTLINED_FUNCTION_3_0();
    v44 = sub_2666C5B28(v42, v43, MEMORY[0x277D63CB8]);
    v76 = v72;
    v77 = v44;
    OUTLINED_FUNCTION_2_1();
    swift_getOpaqueTypeConformance2();
    sub_2666D868C();
    (*(v33 + 8))(v29, v41);
  }

  else
  {
    v68 = v8;
    v69 = v2;
    v46 = *v26;
    if (v46 == 2 || (v67 = v26, LOBYTE(v76) = v46, v80 = 0, sub_2666C56D0(v23, v24, v25), (sub_2666D8D2C() & 1) == 0))
    {
      v45 = 1;
      goto LABEL_10;
    }

    v70 = v21;
    sub_2666D85EC();
    if (qword_280095990 != -1)
    {
      OUTLINED_FUNCTION_15_0(&qword_280095990);
    }

    v47 = qword_2800978F0;
    OUTLINED_FUNCTION_31();
    v48 = sub_2666D87DC();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v78 = MEMORY[0x277CE0BD8];
    v79 = MEMORY[0x277D638E8];
    v55 = swift_allocObject();
    v76 = v55;
    *(v55 + 16) = v48;
    *(v55 + 24) = v50;
    *(v55 + 32) = v52 & 1;
    *(v55 + 40) = v54;
    sub_2666D8B2C();
    OUTLINED_FUNCTION_0_2();
    sub_2666C564C(v67, &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v56);
    v57 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v58 = swift_allocObject();
    sub_2666C5404(v20, v58 + v57);
    OUTLINED_FUNCTION_3_0();
    v61 = sub_2666C5B28(v59, v60, MEMORY[0x277D63CB8]);
    v62 = v11;
    v63 = v72;
    sub_2666D88BC();

    (*(v69 + 8))(v6, v63);
    v64 = v68;
    v65 = v73;
    (*(v68 + 16))(v71, v62, v73);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_14_0(&qword_2800960B0, &qword_280096008, &qword_2666DA108);
    v76 = v63;
    v77 = v61;
    OUTLINED_FUNCTION_2_1();
    swift_getOpaqueTypeConformance2();
    sub_2666D868C();
    (*(v64 + 8))(v62, v65);
  }

  v45 = 0;
LABEL_10:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960A8, &qword_2666DA180);
  __swift_storeEnumTagSinglePayload(v75, v45, 1, v66);
  OUTLINED_FUNCTION_16();
}

void sub_2666C30B0()
{
  OUTLINED_FUNCTION_17_0();
  v176 = v1;
  v171 = sub_2666D8B3C();
  OUTLINED_FUNCTION_3();
  v149 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_18_0(v5 - v4);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096010, &qword_2666DA110);
  OUTLINED_FUNCTION_3();
  v151 = v6;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0(v8);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096018, &qword_2666DA118);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0(v10);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096020, &qword_2666DA120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0(v12);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096008, &qword_2666DA108);
  OUTLINED_FUNCTION_3();
  v154 = v13;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FC8, &qword_2666DA0D0);
  v17 = OUTLINED_FUNCTION_10_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30();
  v173 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096028, &qword_2666DA128);
  v21 = OUTLINED_FUNCTION_10_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_30();
  v170 = v23;
  v24 = type metadata accessor for ComposeEventSnippet(0);
  v25 = OUTLINED_FUNCTION_10(v24);
  v168 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v174 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096030, &unk_2666DA130);
  OUTLINED_FUNCTION_3();
  v167 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  v166 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30();
  v175 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095A78, &unk_2666DAB30);
  v35 = OUTLINED_FUNCTION_10_0(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  v38 = &v140 - v37;
  v39 = sub_2666D7F2C();
  OUTLINED_FUNCTION_3();
  v172 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18_0(&v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_30();
  v165 = v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v140 - v47;
  v49 = sub_2666D81FC();
  v50 = v0;
  sub_2666C1CC0(&v0[*(v49 + 28)], v38, &qword_280095A78, &unk_2666DAB30);
  if (OUTLINED_FUNCTION_37(v38) != 1)
  {
    v80 = v172;
    v82 = v172 + 32;
    v81 = *(v172 + 32);
    v81(v48, v38, v39);
    v145 = sub_2666D807C();
    *(&v178 + 1) = v145;
    v179 = MEMORY[0x277D63868];
    __swift_allocate_boxed_opaque_existential_1(&v177);
    OUTLINED_FUNCTION_26(0x6B636F6C63, 0xE500000000000000);
    OUTLINED_FUNCTION_0_2();
    v146 = v49;
    v152 = v50;
    v83 = v174;
    sub_2666C564C(v50, v174, v84);
    v86 = v80 + 16;
    v85 = *(v80 + 16);
    v87 = v165;
    v151 = v48;
    v141 = v85;
    v85(v165, v48, v39);
    v88 = *(v168 + 80);
    v89 = (v88 + 16) & ~v88;
    v90 = v89 + v28;
    v91 = *(v86 + 64);
    v144 = v90 + 1;
    v92 = (v90 + 1 + v91) & ~v91;
    v149 = v88 | 7;
    v140 = v91;
    v93 = swift_allocObject();
    v168 = v39;
    v94 = v93;
    v150 = v89;
    sub_2666C5404(v83, v93 + v89);
    v147 = v90;
    *(v94 + v90) = 1;
    v142 = v92;
    v148 = v81;
    v143 = v82;
    v81((v94 + v92), v87, v168);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096058, &qword_2666DA148);
    OUTLINED_FUNCTION_7();
    sub_2666B2B90(v96, &qword_280096058, &qword_2666DA148, v97);
    v98 = v168;
    sub_2666D8BDC();
    v99 = v146;
    v100 = v152;
    v101 = v155;
    sub_2666C1CC0(v152 + *(v146 + 32), v155, &qword_280095A78, &unk_2666DAB30);
    if (OUTLINED_FUNCTION_37(v101) == 1)
    {
      sub_2666B2A70(v101, &qword_280095A78, &unk_2666DAB30);
      v102 = 1;
      v104 = v169;
      v103 = v170;
      v105 = v174;
      v106 = v157;
      v107 = v147;
    }

    else
    {
      v108 = v156;
      v155 = v95;
      v148(v156, v101, v98);
      v179 = 0;
      v177 = 0u;
      v178 = 0u;
      OUTLINED_FUNCTION_0_2();
      v109 = v100;
      v110 = v174;
      sub_2666C564C(v109, v174, v111);
      v112 = v165;
      v141(v165, v108, v98);
      v113 = v142;
      swift_allocObject();
      OUTLINED_FUNCTION_29();
      sub_2666C5404(v110, v114);
      v107 = v147;
      *(v98 + v147) = 0;
      v148(v98 + v113, v112, v98);
      v115 = v166;
      sub_2666D8BDC();
      (*(v172 + 8))(v156, v98);
      v104 = v169;
      v103 = v170;
      (*(v167 + 32))(v170, v115, v169);
      v102 = 0;
      v105 = v110;
      v100 = v152;
      v106 = v157;
    }

    v116 = 1;
    __swift_storeEnumTagSinglePayload(v103, v102, 1, v104);
    v117 = *(v100 + *(v99 + 40));
    v118 = v175;
    if (v117 != 4)
    {
      *(&v178 + 1) = v145;
      v179 = MEMORY[0x277D63868];
      __swift_allocate_boxed_opaque_existential_1(&v177);
      OUTLINED_FUNCTION_26(0x746165706572, 0xE600000000000000);
      OUTLINED_FUNCTION_0_2();
      sub_2666C564C(v100, v105, v119);
      swift_allocObject();
      OUTLINED_FUNCTION_29();
      sub_2666C5404(v105, v120);
      *(v107 + 1) = v117;
      sub_2666D8AFC();
      OUTLINED_FUNCTION_6_0();
      sub_2666C5B28(v121, v122, MEMORY[0x277D63C48]);
      v123 = v153;
      sub_2666D8BDC();
      (*(v154 + 32))(v173, v123, v106);
      v116 = 0;
    }

    v124 = v173;
    __swift_storeEnumTagSinglePayload(v173, v116, 1, v106);
    v126 = v166;
    v125 = v167;
    v127 = *(v167 + 16);
    v127(v166, v118, v104);
    v128 = v158;
    sub_2666C1CC0(v103, v158, &qword_280096028, &qword_2666DA128);
    v129 = v159;
    sub_2666C1CC0(v124, v159, &qword_280095FC8, &qword_2666DA0D0);
    v130 = v160;
    v127(v160, v126, v104);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096068, &qword_2666DA150);
    sub_2666C1CC0(v128, v130 + *(v131 + 48), &qword_280096028, &qword_2666DA128);
    sub_2666C1CC0(v129, v130 + *(v131 + 64), &qword_280095FC8, &qword_2666DA0D0);
    sub_2666B2A70(v129, &qword_280095FC8, &qword_2666DA0D0);
    sub_2666B2A70(v128, &qword_280096028, &qword_2666DA128);
    v132 = *(v125 + 8);
    v133 = v169;
    v132(v126, v169);
    sub_2666C1CC0(v130, v163, &qword_280096020, &qword_2666DA120);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7();
    sub_2666B2B90(v134, &qword_280096020, &qword_2666DA120, v135);
    OUTLINED_FUNCTION_3_0();
    v138 = sub_2666C5B28(v136, v137, MEMORY[0x277D63CB8]);
    *&v177 = v171;
    *(&v177 + 1) = v138;
    OUTLINED_FUNCTION_2_1();
    swift_getOpaqueTypeConformance2();
    sub_2666D868C();
    sub_2666B2A70(v130, &qword_280096020, &qword_2666DA120);
    sub_2666B2A70(v173, &qword_280095FC8, &qword_2666DA0D0);
    sub_2666B2A70(v170, &qword_280096028, &qword_2666DA128);
    v132(v175, v133);
    (*(v172 + 8))(v151, v168);
    goto LABEL_13;
  }

  v175 = v28;
  v51 = v171;
  v52 = v174;
  v53 = sub_2666B2A70(v38, &qword_280095A78, &unk_2666DAB30);
  v56 = 1;
  if (*v0 != 2)
  {
    LOBYTE(v177) = *v0;
    v180 = 1;
    sub_2666C56D0(v53, v54, v55);
    if (sub_2666D8D2C())
    {
      sub_2666D85EC();
      if (qword_280095990 != -1)
      {
        OUTLINED_FUNCTION_15_0(&qword_280095990);
      }

      v57 = qword_2800978F0;
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_12();
      v58 = sub_2666D87DC();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      *(&v178 + 1) = MEMORY[0x277CE0BD8];
      v179 = MEMORY[0x277D638E8];
      v65 = swift_allocObject();
      *&v177 = v65;
      *(v65 + 16) = v58;
      *(v65 + 24) = v60;
      *(v65 + 32) = v62 & 1;
      *(v65 + 40) = v64;
      v66 = v148;
      sub_2666D8B2C();
      OUTLINED_FUNCTION_0_2();
      sub_2666C564C(v50, v52, v67);
      v68 = (*(v168 + 80) + 16) & ~*(v168 + 80);
      v69 = swift_allocObject();
      sub_2666C5404(v52, v69 + v68);
      OUTLINED_FUNCTION_3_0();
      v72 = sub_2666C5B28(v70, v71, MEMORY[0x277D63CB8]);
      v73 = v150;
      sub_2666D88BC();

      (*(v149 + 8))(v66, v51);
      v74 = v151;
      v75 = v164;
      (*(v151 + 2))(v163, v73, v164);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7();
      sub_2666B2B90(v76, v77, v78, v79);
      *&v177 = v51;
      *(&v177 + 1) = v72;
      OUTLINED_FUNCTION_2_1();
      swift_getOpaqueTypeConformance2();
      sub_2666D868C();
      (*(v74 + 1))(v73, v75);
LABEL_13:
      v56 = 0;
    }
  }

  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096038, &qword_2666DA140);
  __swift_storeEnumTagSinglePayload(v176, v56, 1, v139);
  OUTLINED_FUNCTION_16();
}

void sub_2666C403C()
{
  OUTLINED_FUNCTION_17_0();
  v3 = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for ComposeEventSnippet(v3);
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096008, &qword_2666DA108);
  OUTLINED_FUNCTION_3();
  v12 = v11;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21();
  v14 = (v1 + *(sub_2666D81FC() + 48));
  v15 = v14[1];
  if (v15)
  {
    v33 = v0;
    v16 = *v14;
    v34[3] = sub_2666D807C();
    v34[4] = MEMORY[0x277D63868];
    __swift_allocate_boxed_opaque_existential_1(v34);

    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_26(v17, v18);
    OUTLINED_FUNCTION_0_2();
    sub_2666C564C(v1, &v34[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v21 = swift_allocObject();
    sub_2666C5404(&v34[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v16;
    v22[1] = v15;
    sub_2666D8AFC();
    OUTLINED_FUNCTION_6_0();
    sub_2666C5B28(v23, v24, MEMORY[0x277D63C48]);
    sub_2666D8BDC();
    (*(v12 + 32))(v33, v2, v10);
    OUTLINED_FUNCTION_34();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v10);
    OUTLINED_FUNCTION_16();
  }

  else
  {
    OUTLINED_FUNCTION_16();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

uint64_t sub_2666C42BC()
{
  v3 = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for ComposeEventSnippet(v3);
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FE8, &qword_2666DA0F0);
  OUTLINED_FUNCTION_3();
  v12 = v11;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21();
  if (*(*(v1 + *(sub_2666D81FC() + 44)) + 16))
  {
    v24[3] = sub_2666D807C();
    v24[4] = MEMORY[0x277D63868];
    __swift_allocate_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_26(v15, v14);
    OUTLINED_FUNCTION_0_2();
    sub_2666C564C(v1, &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    sub_2666C5404(&v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095FF0, &unk_2666DA0F8);
    sub_2666C5514();
    sub_2666D8BDC();
    (*(v12 + 32))(v0, v2, v10);
    OUTLINED_FUNCTION_34();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v10);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(v0, 1, 1, v10);
  }
}

uint64_t sub_2666C450C(unsigned __int8 a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = v2;
  v6 = a1;
  v7 = type metadata accessor for ComposeEventSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  if (v6 == 7)
  {
    (a2)(v10);
    v11 = sub_2666D87FC();
    sub_2666B2B2C(v17, v18, v19);

    v20 = MEMORY[0x277CE11C8];
    v21 = MEMORY[0x277D63A60];
    v17 = v11;
  }

  else
  {
    a2(&v17, v10);
    v12 = sub_2666D87FC();
    sub_2666B2B2C(v17, v18, v19);

    v20 = MEMORY[0x277CE11C8];
    v21 = MEMORY[0x277D63A60];
    v17 = v12;
    sub_2666C564C(v3, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposeEventSnippet);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    sub_2666C5404(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    *(v14 + v13 + v9) = a1;
  }

  return sub_2666D8AEC();
}

void sub_2666C4714()
{
  v1 = OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_10_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  sub_2666C564C(v0, v4 - v3, MEMORY[0x277D55908]);
  sub_2666D818C();
  sub_2666D8E3C();
  __break(1u);
}

uint64_t sub_2666C47E4(uint64_t a1, char a2)
{
  sub_2666B47DC(a2);
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v2 = qword_2800978F0;
  v3 = sub_2666D87DC();
  v5 = v4;
  v7 = v6 & 1;
  sub_2666D87FC();
  sub_2666B2B2C(v3, v5, v7);

  return sub_2666D8AEC();
}

void sub_2666C491C(uint64_t a1)
{
  OUTLINED_FUNCTION_17_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for ComposeEventSnippet(0);
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v20 = v6;
  v21 = v4;
  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  v15 = sub_2666D87FC();
  v23 = MEMORY[0x277CE11C8];
  v24 = MEMORY[0x277D63A60];
  v20 = v15;
  OUTLINED_FUNCTION_0_2();
  sub_2666C564C(v8, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  sub_2666C5404(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + v17 + v14) = v2;
  sub_2666D8AEC();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2666C4A70(uint64_t a1)
{
  v2 = type metadata accessor for ComposeEventSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = *(a1 + *(sub_2666D81FC() + 44));
  sub_2666C564C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComposeEventSnippet);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2666C5404(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800959E0, &qword_2666D9570);
  sub_2666D7F5C();
  sub_2666D8AFC();
  sub_2666B2B90(&qword_2800959F0, &qword_2800959E0, &qword_2666D9570, MEMORY[0x277D83980]);
  sub_2666C5B28(&qword_280096000, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
  sub_2666C5B28(&qword_280095A18, MEMORY[0x277D558F0], MEMORY[0x277D558F8]);
  return sub_2666D8A4C();
}

uint64_t sub_2666C4D24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096070, &qword_2666DA158);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = sub_2666D8AFC();
  v38 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v39 = a3;
  if (a2)
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  sub_2666C450C(v21, sub_2666C5AA0);
  v22 = sub_2666D81FC();
  if (*(a1 + *(v22 + 36)))
  {
    v23 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    *(&v35 - 2) = a3;
    if (a2)
    {
      v24 = 2;
    }

    else
    {
      v24 = 4;
    }

    sub_2666C450C(v24, sub_2666C5AE4);
    (*(v38 + 32))(v11, v18, v12);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v23, 1, v12);
  v25 = v38;
  v26 = *(v38 + 16);
  v26(v15, v20, v12);
  v27 = v36;
  sub_2666C1CC0(v11, v36, &qword_280096070, &qword_2666DA158);
  v28 = v20;
  v29 = v15;
  v30 = v27;
  v31 = v37;
  v26(v37, v29, v12);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096078, &qword_2666DA160) + 48)];
  sub_2666C1CC0(v30, v32, &qword_280096070, &qword_2666DA158);
  sub_2666B2A70(v11, &qword_280096070, &qword_2666DA158);
  v33 = *(v25 + 8);
  v33(v28, v12);
  sub_2666B2A70(v30, &qword_280096070, &qword_2666DA158);
  return (v33)(v29, v12);
}

void sub_2666C5084(uint64_t a1)
{
  OUTLINED_FUNCTION_17_0();
  v36 = v2;
  v37 = v3;
  v35 = v4;
  OUTLINED_FUNCTION_19();
  v5 = sub_2666D7E2C();
  v6 = OUTLINED_FUNCTION_10_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v7 = sub_2666D804C();
  v8 = OUTLINED_FUNCTION_10_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v9 = sub_2666D802C();
  v10 = OUTLINED_FUNCTION_10_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v11 = sub_2666D7FFC();
  v12 = OUTLINED_FUNCTION_10_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096080, &qword_2666DA168);
  OUTLINED_FUNCTION_10_0(v13);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096088, &qword_2666DA170);
  OUTLINED_FUNCTION_10_0(v15);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v16);
  sub_2666D7F1C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_21();
  sub_2666D7F2C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_1();
  v22 = (*(v21 + 16))(v20 - v19, v35);
  v36(v22);
  sub_2666D7E6C();
  OUTLINED_FUNCTION_34();
  v27 = __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v37(v27);
  sub_2666D7E5C();
  OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_2666D7F7C();
  sub_2666D801C();
  sub_2666D803C();
  sub_2666D7E1C();
  sub_2666D7E8C();
  sub_2666C5B28(&qword_280096090, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_2666C5B28(&qword_280096098, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  *v1 = sub_2666D87CC();
  *(v1 + 8) = v32;
  *(v1 + 16) = v33 & 1;
  *(v1 + 24) = v34;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2666C5404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposeEventSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666C5498(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = type metadata accessor for ComposeEventSnippet(v2);
  OUTLINED_FUNCTION_10_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a1(v5);
}

unint64_t sub_2666C5514()
{
  result = qword_280095FF8;
  if (!qword_280095FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280095FF0, &unk_2666DA0F8);
    sub_2666C5B28(&qword_280096000, MEMORY[0x277D63C50], MEMORY[0x277D63C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280095FF8);
  }

  return result;
}

uint64_t sub_2666C55C8(uint64_t a1)
{
  v2 = type metadata accessor for ComposeEventSnippet(0);
  OUTLINED_FUNCTION_10_0(v2);

  return sub_2666C4CA0(a1);
}

uint64_t sub_2666C564C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_12();
  v5(v4);
  return a2;
}

unint64_t sub_2666C56D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280096040;
  if (!qword_280096040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096040);
  }

  return result;
}

uint64_t sub_2666C5724()
{
  sub_2666B2B2C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2666C5778()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for ComposeEventSnippet(v0);
  OUTLINED_FUNCTION_10(v1);
  v3 = OUTLINED_FUNCTION_28(*(v2 + 80));

  return sub_2666C47E4(v3, v4);
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for ComposeEventSnippet(0);
  OUTLINED_FUNCTION_11_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v22 = *(v5 + 64);
  v6 = sub_2666D7F2C();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  v9 = *(v7 + 80);
  v23 = *(v10 + 64);
  v11 = v0 + v4;

  v12 = sub_2666D81FC();
  if (!OUTLINED_FUNCTION_37(v0 + v4 + *(v12 + 28)))
  {
    v13 = OUTLINED_FUNCTION_35();
    v14(v13);
  }

  if (!OUTLINED_FUNCTION_37(v11 + *(v12 + 32)))
  {
    v15 = OUTLINED_FUNCTION_35();
    v16(v15);
  }

  v17 = v3 | v9;
  v18 = (v22 + v4 + v9 + 1) & ~v9;

  v19 = *(v1 + 20);
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v20 + 8))(v11 + v19);
  (*(v8 + 8))(v0 + v18, v6);

  return MEMORY[0x2821FE8E8](v0, v18 + v23, v17 | 7);
}

uint64_t sub_2666C59D4()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = type metadata accessor for ComposeEventSnippet(v2);
  OUTLINED_FUNCTION_10(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = sub_2666D7F2C();
  OUTLINED_FUNCTION_10_0(v8);
  v10 = *(v1 + v7);
  v11 = v1 + ((v7 + *(v9 + 80) + 1) & ~*(v9 + 80));

  return sub_2666C4D24(v1 + v5, v10, v11, v0);
}

uint64_t sub_2666C5B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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
  OUTLINED_FUNCTION_17_0();
  v3 = type metadata accessor for ComposeEventSnippet(0);
  OUTLINED_FUNCTION_11_0();
  v5 = v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_2666D81FC();
  v6 = OUTLINED_FUNCTION_24();
  if (!__swift_getEnumTagSinglePayload(v5 + v2, 1, v6))
  {
    OUTLINED_FUNCTION_9_1();
    (*(v7 + 8))(v5 + v2, v6);
  }

  v8 = *(v1 + 32);
  if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v6))
  {
    OUTLINED_FUNCTION_9_1();
    (*(v9 + 8))(v5 + v8, v6);
  }

  v10 = *(v3 + 20);
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v11 + 8))(v5 + v10);
  OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

void sub_2666C5D00()
{
  v0 = type metadata accessor for ComposeEventSnippet(0);
  OUTLINED_FUNCTION_10_0(v0);
  sub_2666C4714();
}

uint64_t objectdestroy_15Tm()
{
  OUTLINED_FUNCTION_17_0();
  v1 = type metadata accessor for ComposeEventSnippet(0);
  OUTLINED_FUNCTION_11_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  sub_2666D81FC();
  OUTLINED_FUNCTION_24();
  if (!OUTLINED_FUNCTION_20())
  {
    OUTLINED_FUNCTION_9_1();
    v4 = OUTLINED_FUNCTION_33();
    v5(v4);
  }

  if (!OUTLINED_FUNCTION_20())
  {
    OUTLINED_FUNCTION_9_1();
    v6 = OUTLINED_FUNCTION_33();
    v7(v6);
  }

  v8 = *(v1 + 20);
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 8))(v0 + v3 + v8);

  OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

void sub_2666C5F04()
{
  v1 = type metadata accessor for ComposeEventSnippet(0);
  OUTLINED_FUNCTION_10(v1);
  sub_2666C491C(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t objectdestroy_12Tm()
{
  OUTLINED_FUNCTION_17_0();
  v1 = type metadata accessor for ComposeEventSnippet(0);
  OUTLINED_FUNCTION_11_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  sub_2666D81FC();
  OUTLINED_FUNCTION_24();
  if (!OUTLINED_FUNCTION_20())
  {
    OUTLINED_FUNCTION_9_1();
    v4 = OUTLINED_FUNCTION_33();
    v5(v4);
  }

  if (!OUTLINED_FUNCTION_20())
  {
    OUTLINED_FUNCTION_9_1();
    v6 = OUTLINED_FUNCTION_33();
    v7(v6);
  }

  v8 = *(v1 + 20);
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 8))(v0 + v3 + v8);
  OUTLINED_FUNCTION_16();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

void sub_2666C6124()
{
  v0 = type metadata accessor for ComposeEventSnippet(0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_28(*(v1 + 80));

  sub_2666C4714();
}

uint64_t OUTLINED_FUNCTION_14_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D63D98];

  return sub_2666B2B90(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return sub_2666D7F2C();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_2666D81FC();
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2)
{

  return sub_2666D806C();
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id sub_2666C6450()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CC5A40]) initWithEKOptions_];
    if (!v3)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
    }

    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t CalendarSnippetProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t CalendarSnippetProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t CalendarSnippetProvider.snippet(for:mode:idiom:)(uint64_t a1)
{
  v254 = a1;
  v2 = type metadata accessor for EventListSnippet(0);
  v3 = OUTLINED_FUNCTION_10_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_2();
  v250 = v4;
  v5 = OUTLINED_FUNCTION_13_0();
  v247 = type metadata accessor for ComposeEventSnippet(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  v249 = v7;
  OUTLINED_FUNCTION_13_0();
  v8 = sub_2666D81FC();
  v9 = OUTLINED_FUNCTION_10_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_2();
  v248 = v10;
  v11 = OUTLINED_FUNCTION_13_0();
  v245 = type metadata accessor for PromptForTitleSnippet(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_2();
  v246 = v13;
  v14 = OUTLINED_FUNCTION_13_0();
  v227 = type metadata accessor for EventStatusSnippet(v14);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_2();
  v228 = v16;
  v17 = OUTLINED_FUNCTION_13_0();
  v223 = type metadata accessor for SingleEventSnippet(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_2();
  v224 = v19;
  v20 = OUTLINED_FUNCTION_13_0();
  v240 = type metadata accessor for PunchoutButtonSnippet(v20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_2();
  v241 = v22;
  v23 = OUTLINED_FUNCTION_13_0();
  v24 = type metadata accessor for ConflictingEventConfirmationSnippet(v23);
  v25 = OUTLINED_FUNCTION_10_0(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_2();
  v244 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
  v28 = OUTLINED_FUNCTION_10_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v243 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  v242 = &v223 - v32;
  OUTLINED_FUNCTION_13_0();
  v33 = sub_2666D825C();
  v34 = OUTLINED_FUNCTION_10(v33);
  v253 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_0();
  v252 = v54;
  MEMORY[0x28223BE20](v55);
  v57 = &v223 - v56;
  v58 = type metadata accessor for RenderableEvent(0);
  v59 = OUTLINED_FUNCTION_10(v58);
  v251 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = &v223 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v67 = &v223 - v66;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_22();
  v70 = MEMORY[0x28223BE20](v69);
  v72 = &v223 - v71;
  v73 = MEMORY[0x28223BE20](v70);
  v75 = &v223 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v223 - v77;
  MEMORY[0x28223BE20](v76);
  v80 = &v223 - v79;
  v225 = type metadata accessor for DisambiguateEventsSnippet(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_4_2();
  v226 = v82;
  OUTLINED_FUNCTION_13_0();
  v83 = sub_2666D826C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v84);
  v86 = &v223 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2666C8A20(v254, v86, MEMORY[0x277D55930]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v75 = v86[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960C8, &qword_2666DA198) + 48)];
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1();
      sub_2666C7ADC(v148, v149, v150);
      OUTLINED_FUNCTION_2_2();
      v151 = v234;
      sub_2666C8A20(v83, v234, v152);
      v153 = sub_2666C6450();
      v154 = v260;
      sub_2666B30A8(v151, v153, v72);
      if (v154)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_9_2();
      v184 = v224;
      sub_2666C7ADC(v72, v224, v185);
      *(v184 + *(v223 + 20)) = v75;
      v75 = sub_2666C7988(&qword_280096150, &qword_2666DA280, type metadata accessor for SingleEventSnippet, sub_2666C86A0);
      v186 = OUTLINED_FUNCTION_20_0();
      sub_2666C82E8(v186, v187);
      goto LABEL_20;
    case 2u:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1();
      sub_2666C7ADC(v124, v125, v126);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v83, v127, &v252);
      v128 = sub_2666C6450();
      OUTLINED_FUNCTION_17_1(v128, v78);
      if (v1)
      {
        goto LABEL_25;
      }

      sub_2666D6464();
      v96 = v129;
      OUTLINED_FUNCTION_3_1();
      v98 = v78;
      goto LABEL_19;
    case 3u:
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960E0, &qword_2666DA1A8);
      v75 = *&v86[*(v132 + 48)];
      v133 = *(v132 + 64);
      v134 = OUTLINED_FUNCTION_1_6();
      v135 = v235;
      sub_2666C7ADC(v134, v235, v136);
      v137 = &v86[v133];
      v138 = v242;
      sub_2666BC25C(v137, v242);
      OUTLINED_FUNCTION_2_2();
      v139 = v231;
      sub_2666C8A20(v135, v231, v140);
      v141 = v238;
      sub_2666C7B3C(v138, v238);
      v142 = sub_2666C6450();
      v143 = v260;
      sub_2666BB6FC(v139, v75, v141, v142, v244);
      if (v143)
      {
        goto LABEL_27;
      }

      v75 = sub_2666C7988(&qword_280096120, &qword_2666DA270, type metadata accessor for ConflictingEventConfirmationSnippet, sub_2666C84C8);
      v144 = OUTLINED_FUNCTION_20_0();
      sub_2666C82E8(v144, v145);
      goto LABEL_40;
    case 4u:
      v75 = *v86;
      v99 = *(*v86 + 16);
      if (v99)
      {
        *&v257 = MEMORY[0x277D84F90];
        sub_2666C8090(0, v99, 0);
        v100 = 0;
        v101 = v257;
        v254 = v75 + ((*(v253 + 80) + 32) & ~*(v253 + 80));
        do
        {
          if (v100 >= *(v75 + 16))
          {
            __break(1u);
            JUMPOUT(0x2666C77F0);
          }

          v102 = MEMORY[0x277D55918];
          sub_2666C8A20(v254 + *(v253 + 72) * v100, v57, MEMORY[0x277D55918]);
          v103 = v252;
          sub_2666C8A20(v57, v252, v102);
          v104 = sub_2666C6450();
          v105 = v260;
          sub_2666B30A8(v103, v104, v80);
          v260 = v105;
          if (v105)
          {

            OUTLINED_FUNCTION_0_3();
            sub_2666C82E8(v57, v218);

            return v75;
          }

          OUTLINED_FUNCTION_0_3();
          sub_2666C82E8(v57, v106);
          *&v257 = v101;
          v108 = *(v101 + 16);
          v107 = *(v101 + 24);
          if (v108 >= v107 >> 1)
          {
            sub_2666C8090((v107 > 1), v108 + 1, 1);
            v101 = v257;
          }

          ++v100;
          *(v101 + 16) = v108 + 1;
          OUTLINED_FUNCTION_9_2();
          sub_2666C7ADC(v80, v109, v110);
        }

        while (v99 != v100);
      }

      else
      {

        v101 = MEMORY[0x277D84F90];
      }

      v88 = v226;
      *v226 = v101;
      v219 = v225;
      sub_2666D8B8C();
      v220 = &v88[*(v219 + 24)];
      KeyPath = swift_getKeyPath();
      LOBYTE(v257) = 0;
      LOBYTE(v255) = 1;
      *v220 = KeyPath;
      v220[8] = 0;
      *(v220 + 2) = 0x4030000000000000;
      *(v220 + 3) = 0;
      v220[32] = 1;
      *(v220 + 5) = 1;
      *(v220 + 6) = sub_2666BD078;
      *(v220 + 7) = 0;
      v75 = sub_2666C7988(&qword_2800960F0, &qword_2666DA258, type metadata accessor for DisambiguateEventsSnippet, sub_2666C83D8);
      v89 = type metadata accessor for DisambiguateEventsSnippet;
LABEL_45:
      v130 = v89;
      v131 = v88;
      goto LABEL_46;
    case 5u:
      v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960D8, &qword_2666DA1A0) + 48);
      v158 = OUTLINED_FUNCTION_1_6();
      v135 = v236;
      sub_2666C7ADC(v158, v236, v159);
      v160 = &v86[v157];
      v138 = v243;
      sub_2666BC25C(v160, v243);
      OUTLINED_FUNCTION_2_2();
      v161 = v233;
      sub_2666C8A20(v135, v233, v162);
      v163 = sub_2666C6450();
      v164 = v260;
      sub_2666B30A8(v161, v163, v75);
      if (v164)
      {
LABEL_27:
        sub_2666B2A70(v138, &qword_280095C60, &unk_2666D9990);
        OUTLINED_FUNCTION_0_3();
        v156 = v135;
        goto LABEL_34;
      }

      sub_2666D6738();
      v189 = v188;
      OUTLINED_FUNCTION_3_1();
      sub_2666C82E8(v75, v190);
      sub_2666C7828(v189);
      OUTLINED_FUNCTION_22_0();
LABEL_40:
      sub_2666B2A70(v138, &qword_280095C60, &unk_2666D9990);
      OUTLINED_FUNCTION_0_3();
      v131 = v135;
      goto LABEL_46;
    case 6u:
      v168 = OUTLINED_FUNCTION_1_6();
      v169 = v237;
      sub_2666C7ADC(v168, v237, v170);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v169, v171, &v257);
      v172 = sub_2666C6450();
      v173 = v230;
      OUTLINED_FUNCTION_17_1(v172, v230);
      if (v1)
      {
        OUTLINED_FUNCTION_0_3();
        v156 = v169;
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_14_1();
      sub_2666C8A20(v191, v192, v193);
      v194 = v227;
      v195 = *(v227 + 24);
      v75 = *MEMORY[0x277D63D60];
      sub_2666D8BAC();
      OUTLINED_FUNCTION_2();
      (*(v196 + 104))(v83 + v195, v75);
      v197 = sub_2666D85EC();
      *(v83 + *(v194 + 20)) = 1;
      OUTLINED_FUNCTION_21_0(v197, v198, v199, v200, v83 + *(v194 + 28));
      OUTLINED_FUNCTION_11_1();
      sub_2666C8B6C(v201, v202, &unk_2666DAE94);
      sub_2666D87FC();
      OUTLINED_FUNCTION_8_0();
      sub_2666C82E8(v83, v203);
      OUTLINED_FUNCTION_3_1();
      sub_2666C82E8(v173, v204);
      sub_2666C7828(v83);
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_0_3();
      v131 = v169;
      goto LABEL_46;
    case 7u:
      v146 = *v86;
      v88 = v246;
      *v246 = v146;
      v255 = 0;
      v256 = 0xE000000000000000;
      sub_2666D89EC();
      v147 = v258;
      *(v88 + 8) = v257;
      *(v88 + 3) = v147;
      sub_2666D8B8C();
      v75 = sub_2666C7988(&qword_280096168, &qword_2666DA288, type metadata accessor for PromptForTitleSnippet, sub_2666C878C);
      v89 = type metadata accessor for PromptForTitleSnippet;
      goto LABEL_45;
    case 8u:
      v181 = v248;
      sub_2666C7ADC(v86, v248, MEMORY[0x277D55908]);
      sub_2666C8A20(v181, v249, MEMORY[0x277D55908]);
      sub_2666D8B8C();
      v75 = sub_2666C7988(&qword_280096180, &qword_2666DA290, type metadata accessor for ComposeEventSnippet, sub_2666C8878);
      v182 = OUTLINED_FUNCTION_20_0();
      sub_2666C82E8(v182, v183);
      v130 = MEMORY[0x277D55908];
      v131 = v181;
      goto LABEL_46;
    case 9u:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1();
      sub_2666C7ADC(v118, v119, v120);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v83, v121, &v259);
      v122 = sub_2666C6450();
      OUTLINED_FUNCTION_17_1(v122, v67);
      if (v1)
      {
        goto LABEL_25;
      }

      sub_2666D6AA0();
      v96 = v123;
      OUTLINED_FUNCTION_3_1();
      v98 = v67;
      goto LABEL_19;
    case 0xAu:
      v174 = v86[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800960C8, &qword_2666DA198) + 48)];
      v175 = OUTLINED_FUNCTION_1_6();
      v176 = v239;
      sub_2666C7ADC(v175, v239, v177);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v176, v178, &v258);
      v179 = sub_2666C6450();
      v180 = v232;
      OUTLINED_FUNCTION_17_1(v179, v232);
      if (v1)
      {
        OUTLINED_FUNCTION_0_3();
        v156 = v176;
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_10_1();
      v205 = v228;
      sub_2666C8A20(v180, v228, v206);
      v207 = v227;
      v208 = *(v227 + 24);
      v75 = *MEMORY[0x277D63D60];
      sub_2666D8BAC();
      OUTLINED_FUNCTION_2();
      (*(v209 + 104))(v205 + v208, v75);
      v210 = sub_2666D85EC();
      *(v205 + *(v207 + 20)) = v174;
      OUTLINED_FUNCTION_21_0(v210, v211, v212, v213, v205 + *(v207 + 28));
      OUTLINED_FUNCTION_11_1();
      sub_2666C8B6C(v214, v215, &unk_2666DAE94);
      sub_2666D87FC();
      OUTLINED_FUNCTION_8_0();
      sub_2666C82E8(v205, v216);
      OUTLINED_FUNCTION_3_1();
      sub_2666C82E8(v180, v217);
      sub_2666C7828(v205);
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_0_3();
      v131 = v176;
      goto LABEL_46;
    case 0xBu:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1();
      sub_2666C7ADC(v90, v91, v92);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v83, v93, &v261);
      v94 = sub_2666C6450();
      OUTLINED_FUNCTION_17_1(v94, v64);
      if (v1)
      {
        goto LABEL_25;
      }

      sub_2666D6CD8();
      v96 = v95;
      OUTLINED_FUNCTION_3_1();
      v98 = v64;
      goto LABEL_19;
    case 0xCu:
      OUTLINED_FUNCTION_1_6();
      OUTLINED_FUNCTION_14_1();
      sub_2666C7ADC(v111, v112, v113);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18_1(v83, v114, &v262);
      v115 = sub_2666C6450();
      v116 = v229;
      OUTLINED_FUNCTION_17_1(v115, v229);
      if (v1)
      {
LABEL_25:
        OUTLINED_FUNCTION_0_3();
        v156 = v83;
LABEL_34:
        sub_2666C82E8(v156, v155);
      }

      else
      {
        sub_2666D6F40();
        v96 = v117;
        OUTLINED_FUNCTION_3_1();
        v98 = v116;
LABEL_19:
        sub_2666C82E8(v98, v97);
        sub_2666C7828(v96);
        OUTLINED_FUNCTION_22_0();
LABEL_20:
        OUTLINED_FUNCTION_0_3();
        v131 = v83;
LABEL_46:
        sub_2666C82E8(v131, v130);
      }

      return v75;
    case 0xDu:
      v75 = *v86;
      v165 = v86[8];
      v166 = sub_2666C6450();
      v167 = v260;
      sub_2666CC60C(v75, v165, v166, v250);
      if (v167)
      {
        return v75;
      }

      v75 = sub_2666C7988(&qword_2800961A8, &qword_2666DA2A0, type metadata accessor for EventListSnippet, sub_2666C8A80);
      v131 = OUTLINED_FUNCTION_20_0();
      goto LABEL_46;
    default:
      v87 = *v86;
      v88 = v241;
      *v241 = v87;
      sub_2666D8B8C();
      v75 = sub_2666C7988(&qword_280096138, &qword_2666DA278, type metadata accessor for PunchoutButtonSnippet, sub_2666C85B4);
      v89 = type metadata accessor for PunchoutButtonSnippet;
      goto LABEL_45;
  }
}

uint64_t sub_2666C7828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096198, &qword_2666DA298);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v13 - v4);
  v6 = &v13 + *(v3 + 36) - v4;
  sub_2666C7E38(v6);
  v7 = *(type metadata accessor for CalendarEnvironmentSetupModifier(0) + 20);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_2666D8D3C();
  v10 = [v8 BOOLForKey_];

  v6[v7] = v10;
  *v5 = a1;
  sub_2666C8964();

  v11 = sub_2666D87FC();
  sub_2666B2A70(v5, &qword_280096198, &qword_2666DA298);
  return v11;
}

uint64_t sub_2666C7988(uint64_t *a1, uint64_t *a2, void (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v19 = a3;
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = &v19 + *(v8 + 36) - v9;
  sub_2666C7CA4(v11);
  v12 = *(type metadata accessor for CalendarEnvironmentSetupModifier(0) + 20);
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = sub_2666D8D3C();
  v15 = [v13 BOOLForKey_];

  v11[v12] = v15;
  v16 = sub_2666C8A20(v4, v10, v19);
  v20(v16);
  v17 = sub_2666D87FC();
  sub_2666B2A70(v10, a1, a2);
  return v17;
}

uint64_t sub_2666C7ADC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2666C7B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280095C60, &unk_2666D9990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CalendarSnippetProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2666C7C04@<X0>(uint64_t *a1@<X8>)
{
  result = CalendarSnippetProvider.__allocating_init()();
  *a1 = result;
  return result;
}

id sub_2666C7C50()
{
  type metadata accessor for CalendarSnippetProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2800978F0 = result;
  return result;
}

uint64_t sub_2666C7CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096110, &qword_2666DA260);
  v3 = OUTLINED_FUNCTION_10_0(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 languageCode];

  if (v7)
  {
    sub_2666D8D4C();

    sub_2666D7F6C();
    v8 = sub_2666D7FFC();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    return (*(*(v8 - 8) + 32))(a1, v5, v8);
  }

  else
  {
    v10 = sub_2666D7FFC();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    sub_2666D7FBC();
    result = __swift_getEnumTagSinglePayload(v5, 1, v10);
    if (result != 1)
    {
      return sub_2666B2A70(v5, &qword_280096110, &qword_2666DA260);
    }
  }

  return result;
}

uint64_t sub_2666C7E38@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096110, &qword_2666DA260);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 languageCode];

  if (v6)
  {
    sub_2666D8D4C();

    sub_2666D7F6C();
    v7 = sub_2666D7FFC();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
    return (*(*(v7 - 8) + 32))(a1, v4, v7);
  }

  else
  {
    v9 = sub_2666D7FFC();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
    sub_2666D7FBC();
    result = __swift_getEnumTagSinglePayload(v4, 1, v9);
    if (result != 1)
    {
      return sub_2666B2A70(v4, &qword_280096110, &qword_2666DA260);
    }
  }

  return result;
}

void sub_2666C7FD0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_2(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_19_0();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_19_0();

    MEMORY[0x2821FE820](v9);
  }
}

void *sub_2666C8090(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2666C8128(a1, a2, a3, *v3, &qword_280096118, &qword_2666DA268, type metadata accessor for RenderableEvent, type metadata accessor for RenderableEvent);
  *v3 = result;
  return result;
}

void *sub_2666C80E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2666C8128(a1, a2, a3, *v3, &qword_2800961C0, &qword_2666DA2A8, type metadata accessor for DayEventGroupView.DayEventGroup, type metadata accessor for DayEventGroupView.DayEventGroup);
  *v3 = result;
  return result;
}

void *sub_2666C8128(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_2666C7FD0(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

uint64_t sub_2666C82E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2666C83D8()
{
  result = qword_2800960F8;
  if (!qword_2800960F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800960F0, &qword_2666DA258);
    sub_2666C8B6C(&qword_280096100, type metadata accessor for DisambiguateEventsSnippet, &unk_2666DA73C);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier, &unk_2666DA4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800960F8);
  }

  return result;
}

unint64_t sub_2666C84C8()
{
  result = qword_280096128;
  if (!qword_280096128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096120, &qword_2666DA270);
    sub_2666C8B6C(&qword_280096130, type metadata accessor for ConflictingEventConfirmationSnippet, &unk_2666D99C4);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier, &unk_2666DA4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096128);
  }

  return result;
}

unint64_t sub_2666C85B4()
{
  result = qword_280096140;
  if (!qword_280096140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096138, &qword_2666DA278);
    sub_2666C8B6C(&qword_280096148, type metadata accessor for PunchoutButtonSnippet, &unk_2666D96D8);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier, &unk_2666DA4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096140);
  }

  return result;
}

unint64_t sub_2666C86A0()
{
  result = qword_280096158;
  if (!qword_280096158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096150, &qword_2666DA280);
    sub_2666C8B6C(&qword_280096160, type metadata accessor for SingleEventSnippet, &unk_2666DA364);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier, &unk_2666DA4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096158);
  }

  return result;
}

unint64_t sub_2666C878C()
{
  result = qword_280096170;
  if (!qword_280096170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096168, &qword_2666DA288);
    sub_2666C8B6C(&qword_280096178, type metadata accessor for PromptForTitleSnippet, &unk_2666D9838);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier, &unk_2666DA4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096170);
  }

  return result;
}

unint64_t sub_2666C8878()
{
  result = qword_280096188;
  if (!qword_280096188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096180, &qword_2666DA290);
    sub_2666C8B6C(&qword_280096190, type metadata accessor for ComposeEventSnippet, &unk_2666DA054);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier, &unk_2666DA4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096188);
  }

  return result;
}

unint64_t sub_2666C8964()
{
  result = qword_2800961A0;
  if (!qword_2800961A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096198, &qword_2666DA298);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier, &unk_2666DA4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800961A0);
  }

  return result;
}

uint64_t sub_2666C8A20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2666C8A80()
{
  result = qword_2800961B0;
  if (!qword_2800961B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800961A8, &qword_2666DA2A0);
    sub_2666C8B6C(&qword_2800961B8, type metadata accessor for EventListSnippet, &unk_2666DA614);
    sub_2666C8B6C(&qword_280096108, type metadata accessor for CalendarEnvironmentSetupModifier, &unk_2666DA4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800961B0);
  }

  return result;
}

uint64_t sub_2666C8B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_17_1@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{

  return sub_2666B30A8(v2, a1, a2);
}

uint64_t OUTLINED_FUNCTION_18_1@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2666C8A20(a1, v4, a2);
}

uint64_t OUTLINED_FUNCTION_21_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_0()
{
}

uint64_t sub_2666C8D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RenderableEvent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2666C8DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RenderableEvent(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_2666D8B9C();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for PunchoutToEventDetailsModifier(uint64_t a1)
{
  result = qword_2800961C8;
  if (!qword_2800961C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666C8EE4(uint64_t a1)
{
  result = type metadata accessor for RenderableEvent(319);
  if (v2 <= 0x3F)
  {
    result = sub_2666D8B9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2666C8F84(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_2666D7E4C();
  OUTLINED_FUNCTION_3();
  v43 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = sub_2666D82AC();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  if (*(a1 + *(sub_2666D825C() + 44) + 8) && (sub_2666C9B88(), , (v20 = sub_2666D8DCC()) != 0))
  {
    v21 = v20;
    v22 = sub_2666D828C();
    (*(v13 + 16))(v19, v22, v11);
    v23 = v21;
    v24 = sub_2666D829C();
    v25 = sub_2666D8DAC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      v41 = v26;
      *v26 = 136315138;
      v27 = [v23 punchOutUri];
      v42 = v23;

      if (!v27)
      {
        __break(1u);
        return;
      }

      sub_2666D7E3C();

      v28 = v43;
      (*(v43 + 32))(v10, v8, v3);
      sub_2666CA13C();
      v29 = sub_2666D8E6C();
      v31 = v30;
      (*(v28 + 8))(v10, v3);
      v32 = sub_2666C9BCC(v29, v31, &v45);

      v33 = v41;
      *(v41 + 1) = v32;
      _os_log_impl(&dword_2666B0000, v24, v25, "Attempting to punchout to %s", v33, 0xCu);
      v34 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x26678ACD0](v34, -1, -1);
      MEMORY[0x26678ACD0](v33, -1, -1);

      (*(v13 + 8))(v19, v11);
      v23 = v42;
    }

    else
    {

      (*(v13 + 8))(v19, v11);
    }

    v39 = v23;
    sub_2666D8C5C();
  }

  else
  {
    v35 = sub_2666D828C();
    (*(v13 + 16))(v17, v35, v11);
    v36 = sub_2666D829C();
    v37 = sub_2666D8DAC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2666B0000, v36, v37, "Punchout command not available for current event", v38, 2u);
      MEMORY[0x26678ACD0](v38, -1, -1);
    }

    (*(v13 + 8))(v17, v11);
  }
}

uint64_t sub_2666C93C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PunchoutToEventDetailsModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800961D8, &qword_2666DA330);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800961E0, &qword_2666DA338);
  OUTLINED_FUNCTION_2();
  (*(v11 + 16))(v10, a1);
  v10[*(v7 + 36)] = 0;
  sub_2666C967C(v2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_2666C9978(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_2666C9A3C();
  sub_2666D88BC();

  return sub_2666C9B20(v10);
}

uint64_t sub_2666C9590(uint64_t a1)
{
  v2 = sub_2666D8C7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PunchoutToEventDetailsModifier(0);
  sub_2666D8B7C();
  sub_2666C8F84(a1, v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2666C967C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutToEventDetailsModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666C96E0()
{
  v1 = type metadata accessor for PunchoutToEventDetailsModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = sub_2666D825C();
  v7 = v6[8];
  sub_2666D7DEC();
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v0 + v3 + v7);

  v9 = v0 + v3 + v6[12];
  v10 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = *(v10 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2666D7F2C();
      OUTLINED_FUNCTION_2();
      (*(v12 + 8))(v9 + v11);
    }
  }

  v13 = v6[14];
  v14 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = *(type metadata accessor for RenderableEvent(0) + 20);
  sub_2666D815C();
  OUTLINED_FUNCTION_2();
  (*(v16 + 8))(v5 + v15);

  v17 = *(v1 + 20);
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v18 + 8))(v5 + v17);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666C9978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutToEventDetailsModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666C99DC()
{
  v1 = *(type metadata accessor for PunchoutToEventDetailsModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2666C9590(v2);
}

unint64_t sub_2666C9A3C()
{
  result = qword_2800961E8;
  if (!qword_2800961E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800961D8, &qword_2666DA330);
    sub_2666B2B90(&qword_2800961F0, &qword_2800961E0, &qword_2666DA338, MEMORY[0x277CE04B0]);
    sub_2666B2B90(&qword_2800961F8, &qword_280096200, &qword_2666DA340, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800961E8);
  }

  return result;
}

uint64_t sub_2666C9B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800961D8, &qword_2666DA330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2666C9B88()
{
  result = qword_280096208;
  if (!qword_280096208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280096208);
  }

  return result;
}

unint64_t sub_2666C9BCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2666C9C90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2666CA194(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2666C9C90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2666C9D90(a5, a6);
    *a1 = v9;
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
    result = sub_2666D8E2C();
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

uint64_t sub_2666C9D90(uint64_t a1, unint64_t a2)
{
  v3 = sub_2666C9DDC(a1, a2);
  sub_2666C9EF4(&unk_287810A48);
  return v3;
}

uint64_t sub_2666C9DDC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2666D8D6C())
  {
    result = sub_2666C9FD8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2666D8E0C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2666D8E2C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2666C9EF4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2666CA048(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2666C9FD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096218, &qword_2666DA348);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2666CA048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096218, &qword_2666DA348);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_2666CA13C()
{
  result = qword_280096210;
  if (!qword_280096210)
  {
    sub_2666D7E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096210);
  }

  return result;
}

uint64_t sub_2666CA194(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2666CA1F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800961D8, &qword_2666DA330);
  sub_2666C9A3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2666CA268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RenderableEvent(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2666CA338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RenderableEvent(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for SingleEventSnippet(uint64_t a1)
{
  result = qword_280096220;
  if (!qword_280096220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666CA42C(uint64_t a1)
{
  result = type metadata accessor for RenderableEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2666CA4BC()
{
  v1 = type metadata accessor for SingleEventSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2666CAA38(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleEventSnippet);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2666CA964(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  type metadata accessor for SingleEventView(0);
  sub_2666BD0D4();
  return sub_2666D8AAC();
}

uint64_t sub_2666CA5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for SingleEventSnippet(0) + 20));
  sub_2666CAA38(a1, a2, type metadata accessor for RenderableEvent);
  v5 = type metadata accessor for SingleEventView(0);
  *(a2 + v5[5]) = v4;
  sub_2666D8B8C();
  v6 = a2 + v5[7];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(v6 + 16) = 0x4030000000000000;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 40) = 1;
  *(v6 + 48) = sub_2666BD078;
  *(v6 + 56) = 0;
  v7 = a2 + v5[8];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *(v7 + 16) = xmmword_2666D9980;
  *(v7 + 32) = 1;
  *(v7 + 40) = sub_2666BD0AC;
  *(v7 + 48) = 0;
  v8 = a2 + v5[9];
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_2666CA71C()
{
  v1 = *(type metadata accessor for SingleEventSnippet(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;

  v6 = sub_2666D825C();
  v7 = v6[8];
  sub_2666D7DEC();
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v0 + v3 + v7);

  v9 = v0 + v3 + v6[12];
  v10 = sub_2666D822C();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = *(v10 + 28);
    sub_2666D821C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2666D7F2C();
      OUTLINED_FUNCTION_1_4();
      (*(v12 + 8))(v9 + v11);
    }
  }

  v13 = v6[14];
  v14 = sub_2666D809C();
  if (!__swift_getEnumTagSinglePayload(v5 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = *(type metadata accessor for RenderableEvent(0) + 20);
  sub_2666D815C();
  OUTLINED_FUNCTION_1_4();
  (*(v16 + 8))(v5 + v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666CA964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleEventSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666CA9C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SingleEventSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2666CA5E8(v4, a1);
}

uint64_t sub_2666CAA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2666CAAAC()
{
  result = qword_280096230;
  if (!qword_280096230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096238, &qword_2666DA3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096230);
  }

  return result;
}

uint64_t sub_2666CAB10@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a2;
  v69 = a3;
  v67 = a4;
  v64 = sub_2666D86CC();
  OUTLINED_FUNCTION_3();
  v61 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v9 = v8 - v7;
  v10 = sub_2666D807C();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_1();
  v11 = sub_2666D8A8C();
  OUTLINED_FUNCTION_3();
  v60 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096240, &qword_2666DA3F0);
  OUTLINED_FUNCTION_3();
  v65 = v18;
  v66 = v17;
  MEMORY[0x28223BE20](v17);
  v63 = &v59 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096248, &qword_2666DA3F8);
  MEMORY[0x28223BE20](v62);
  v21 = &v59 - v20;
  if (!a1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v22 = sub_2666D85EC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (qword_280095990 != -1)
  {
    swift_once();
  }

  v29 = qword_2800978F0;
  OUTLINED_FUNCTION_31();
  v34 = OUTLINED_FUNCTION_3_2(v22, v24, v26 & 1, v28, v30, v31, v32, v33, v59, v60);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v75 = MEMORY[0x277CE0BD8];
  v76 = MEMORY[0x277D638E8];
  v41 = swift_allocObject();
  v74 = v41;
  *(v41 + 16) = v34;
  *(v41 + 24) = v36;
  *(v41 + 32) = v38 & 1;
  *(v41 + 40) = v40;
  sub_2666D806C();
  sub_2666D8A9C();
  sub_2666D86BC();
  v42 = sub_2666CB244(&qword_280096250, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  v43 = v63;
  sub_2666D891C();
  (*(v61 + 8))(v9, v64);
  (*(v60 + 8))(v16, v11);
  sub_2666D85EC();
  OUTLINED_FUNCTION_31();
  v52 = OUTLINED_FUNCTION_3_2(v45, v46, v44 & 1, v47, v48, v49, v50, v51, v61, v62);
  v54 = v53;
  LOBYTE(v34) = v55;
  v70 = v11;
  v71 = v42;
  swift_getOpaqueTypeConformance2();
  v56 = v66;
  sub_2666D890C();
  sub_2666B2B2C(v52, v54, v34 & 1);

  (*(v65 + 8))(v43, v56);
  sub_2666CB128();
  v57 = sub_2666D87FC();
  sub_2666CB28C(v21);
  v72 = MEMORY[0x277CE11C8];
  v73 = MEMORY[0x277D63A60];
  v70 = v57;

  sub_2666D895C();
  sub_2666D8B0C();
}

unint64_t sub_2666CB030(uint64_t a1, uint64_t a2)
{
  v2 = sub_2666D8E5C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2666CB07C(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_4_3();
  }

  if (a1 == 1)
  {
    return 0x455F4554454C4544;
  }

  return 0x455F455441445055;
}

uint64_t sub_2666CB0E4()
{
  sub_2666B2B2C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2666CB128()
{
  result = qword_280096258;
  if (!qword_280096258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096248, &qword_2666DA3F8);
    sub_2666D8A8C();
    sub_2666CB244(&qword_280096250, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    swift_getOpaqueTypeConformance2();
    sub_2666CB244(&qword_280096260, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096258);
  }

  return result;
}

uint64_t sub_2666CB244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666CB28C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096248, &qword_2666DA3F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s11HeaderTitleOwet(unsigned __int8 *a1, unsigned int a2)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11HeaderTitleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2666CB454);
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

uint64_t sub_2666CB4A8(char a1, char a2)
{
  v2 = 0xE900000000000054;
  v3 = 0x4E4556455F57454ELL;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x455F4554454C4544;
    }

    else
    {
      v4 = 0x455F455441445055;
    }

    v5 = 0xEC000000544E4556;
  }

  else
  {
    v4 = 0x4E4556455F57454ELL;
    v5 = 0xE900000000000054;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x455F4554454C4544;
    }

    else
    {
      v3 = 0x455F455441445055;
    }

    v2 = 0xEC000000544E4556;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2666D8E7C();
  }

  return v7 & 1;
}

uint64_t sub_2666CB5C0(uint64_t a1, char a2)
{
  sub_2666D8D5C();
}

uint64_t sub_2666CB668(uint64_t a1, char a2)
{
  sub_2666D8ECC();
  sub_2666D8D5C();

  return sub_2666D8EEC();
}

unint64_t sub_2666CB71C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2666CB030(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2666CB74C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666CB07C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2666CB77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280096268;
  if (!qword_280096268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280096268);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_2666D87DC();
}

uint64_t sub_2666CB820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2666D7FFC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2666CB8F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2666D7FFC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for CalendarEnvironmentSetupModifier(uint64_t a1)
{
  result = qword_280096270;
  if (!qword_280096270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666CB9E4(uint64_t a1)
{
  result = sub_2666D7FFC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2666CBA74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2666D7FDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2666D7FEC();
  v6 = sub_2666D7FCC();
  (*(v3 + 8))(v5, v2);
  v7 = sub_2666D840C();
  v8 = MEMORY[0x277CDFA90];
  if (v6 != 2)
  {
    v8 = MEMORY[0x277CDFA88];
  }

  return (*(*(v7 - 8) + 104))(a1, *v8, v7);
}

uint64_t sub_2666CBBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v3 = sub_2666D840C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096280, &qword_2666DA538);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096288, &qword_2666DA540);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  KeyPath = swift_getKeyPath();
  v15 = &v10[*(v8 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096290, &qword_2666DA578) + 28);
  sub_2666D7FFC();
  OUTLINED_FUNCTION_0_4();
  (*(v17 + 16))(v15 + v16, v2);
  *v15 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096298, &qword_2666DA580);
  OUTLINED_FUNCTION_0_4();
  (*(v18 + 16))(v10, v27);
  v19 = swift_getKeyPath();
  if (*(v2 + *(type metadata accessor for CalendarEnvironmentSetupModifier(0) + 20)) == 1)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CDFA90], v3);
  }

  else
  {
    sub_2666CBA74(v6);
  }

  v20 = &v13[*(v11 + 36)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800962A0, &qword_2666DA5B8);
  (*(v4 + 32))(v20 + *(v21 + 28), v6, v3);
  *v20 = v19;
  sub_2666CC00C(v10, v13, &qword_280096280, &qword_2666DA538);
  v22 = sub_2666D895C();
  v23 = swift_getKeyPath();
  v24 = v28;
  sub_2666CC00C(v13, v28, &qword_280096288, &qword_2666DA540);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800962A8, &qword_2666DA5F0);
  v26 = (v24 + *(result + 36));
  *v26 = v23;
  v26[1] = v22;
  return result;
}

uint64_t sub_2666CBEB4(uint64_t a1)
{
  v2 = sub_2666D840C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2666D849C();
}

uint64_t sub_2666CBFB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2666D854C();
  *a1 = result;
  return result;
}

uint64_t sub_2666CC00C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_4();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2666CC06C()
{
  result = qword_2800962B0;
  if (!qword_2800962B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800962A8, &qword_2666DA5F0);
    sub_2666CC124();
    sub_2666B2B90(&qword_2800962E0, &qword_2800962E8, &qword_2666DA5F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800962B0);
  }

  return result;
}

unint64_t sub_2666CC124()
{
  result = qword_2800962B8;
  if (!qword_2800962B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096288, &qword_2666DA540);
    sub_2666CC1DC();
    sub_2666B2B90(&qword_2800962D8, &qword_2800962A0, &qword_2666DA5B8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800962B8);
  }

  return result;
}

unint64_t sub_2666CC1DC()
{
  result = qword_2800962C0;
  if (!qword_2800962C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280096280, &qword_2666DA538);
    sub_2666B2B90(&qword_2800962C8, &qword_280096298, &qword_2666DA580, MEMORY[0x277CE04B0]);
    sub_2666B2B90(&qword_2800962D0, &qword_280096290, &qword_2666DA578, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800962C0);
  }

  return result;
}

uint64_t sub_2666CC2E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2666D8B9C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for CalendarButtonView.Model(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_2666CC3C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2666D8B9C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for CalendarButtonView.Model(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for EventListSnippet(uint64_t a1)
{
  result = qword_2800962F0;
  if (!qword_2800962F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666CC4DC(uint64_t a1)
{
  sub_2666CC598(319);
  if (v1 <= 0x3F)
  {
    sub_2666D8B9C();
    if (v2 <= 0x3F)
    {
      sub_2666B3DDC(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        type metadata accessor for CalendarButtonView.Model(319);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2666CC598(uint64_t a1)
{
  if (!qword_280096300)
  {
    type metadata accessor for DayEventGroupView.DayEventGroup(255);
    v1 = sub_2666D8D8C();
    if (!v2)
    {
      atomic_store(v1, &qword_280096300);
    }
  }
}

void sub_2666CC60C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, char *a4@<X8>)
{
  v101 = a3;
  v108 = a2;
  v7 = sub_2666D825C();
  v8 = OUTLINED_FUNCTION_10(v7);
  v102 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v99 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = v81 - v12;
  v13 = OUTLINED_FUNCTION_13_0();
  v14 = type metadata accessor for RenderableEvent(v13);
  v15 = OUTLINED_FUNCTION_10(v14);
  v98 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_2();
  v103 = v17;
  OUTLINED_FUNCTION_13_0();
  v92 = sub_2666D7F5C();
  OUTLINED_FUNCTION_3();
  v84 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_2();
  v91 = v20;
  OUTLINED_FUNCTION_13_0();
  v95 = sub_2666D81CC();
  OUTLINED_FUNCTION_3();
  v87 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_2();
  v94 = v23;
  v24 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for DayEventGroupView.DayEventGroup(v24);
  OUTLINED_FUNCTION_3();
  v89 = v26;
  v90 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_2();
  v88 = v27;
  v28 = OUTLINED_FUNCTION_13_0();
  v29 = type metadata accessor for EventListSnippet(v28);
  v82 = v29[6];
  sub_2666D8B8C();
  v30 = &a4[v29[7]];
  KeyPath = swift_getKeyPath();
  v107 = 0;
  v106 = 1;
  v81[1] = KeyPath;
  *v30 = KeyPath;
  v30[8] = 0;
  *(v30 + 2) = 0x4030000000000000;
  *(v30 + 3) = 0;
  v30[32] = 1;
  *(v30 + 5) = 1;
  *(v30 + 6) = sub_2666BD078;
  *(v30 + 7) = 0;
  v32 = v29[8];
  v86 = a4;
  v33 = &a4[v32];
  v34 = sub_2666D85EC();
  v96 = v34;
  v97 = v35;
  v37 = v36;
  v39 = v38;
  *(v33 + 7) = MEMORY[0x277D558C8];
  *(v33 + 8) = sub_2666B7E38(v34, v36, v38);
  v33[32] = 0;
  v33[72] = 1;
  v40 = type metadata accessor for CalendarButtonView.Model(0);
  v41 = v40[6];
  v42 = *MEMORY[0x277D63A90];
  sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  (*(v43 + 104))(&v33[v41], v42);
  *v33 = v96;
  *(v33 + 1) = v37;
  v33[16] = v39 & 1;
  *(v33 + 3) = v97;
  *&v33[v40[7]] = 0;
  v44 = v40[8];
  v81[0] = v33;
  *&v33[v44] = 0;
  v45 = *(a1 + 16);
  if (v45)
  {
    v105 = MEMORY[0x277D84F90];
    sub_2666C80E0(0, v45, 0);
    v46 = 0;
    v47 = v105;
    v48 = v87;
    OUTLINED_FUNCTION_7_1();
    v93 = a1 + v49;
    ++v84;
    v50 = v94;
    v83 = a1;
    v85 = v45;
    while (v46 < *(a1 + 16))
    {
      v96 = v46;
      v97 = v47;
      sub_2666CD9F0(v93 + *(v48 + 72) * v46, v50, MEMORY[0x277D558E8]);
      v51 = *(v50 + *(v95 + 20));
      v52 = *(v51 + 16);
      if (v52)
      {
        v104 = MEMORY[0x277D84F90];
        sub_2666C8090(0, v52, 0);
        v53 = 0;
        v54 = v104;
        OUTLINED_FUNCTION_7_1();
        v56 = v51 + v55;
        while (v53 < *(v51 + 16))
        {
          v57 = MEMORY[0x277D55918];
          v58 = v100;
          sub_2666CD9F0(v56 + *(v102 + 72) * v53, v100, MEMORY[0x277D55918]);
          v59 = v99;
          sub_2666CD9F0(v58, v99, v57);
          v60 = v101;
          sub_2666B30A8(v59, v60, v103);
          if (v4)
          {

            OUTLINED_FUNCTION_3_3();
            OUTLINED_FUNCTION_2_3();
            sub_2666CDA50(v94, v77);

            sub_2666D8B9C();
            OUTLINED_FUNCTION_2();
            (*(v78 + 8))(&v86[v82]);

            sub_2666CDA50(v81[0], type metadata accessor for CalendarButtonView.Model);
            return;
          }

          OUTLINED_FUNCTION_3_3();
          v104 = v54;
          v62 = *(v54 + 16);
          v61 = *(v54 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_2666C8090((v61 > 1), v62 + 1, 1);
            v54 = v104;
          }

          ++v53;
          *(v54 + 16) = v62 + 1;
          OUTLINED_FUNCTION_7_1();
          sub_2666CDAA8(v103, v54 + v63 + *(v64 + 72) * v62, type metadata accessor for RenderableEvent);
          if (v52 == v53)
          {
            a1 = v83;
            v50 = v94;
            v48 = v87;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v54 = MEMORY[0x277D84F90];
LABEL_13:
      v65 = *(v90 + 24);
      sub_2666D7F2C();
      OUTLINED_FUNCTION_2();
      v67 = v88;
      (*(v66 + 16))(v88 + v65, v50);
      v68 = v91;
      sub_2666D7F4C();
      v69 = sub_2666D7F3C();
      v71 = v70;
      (*v84)(v68, v92);
      OUTLINED_FUNCTION_2_3();
      sub_2666CDA50(v50, v72);
      *v67 = v69;
      v67[1] = v71;
      v67[2] = v54;
      v47 = v97;
      v105 = v97;
      v74 = *(v97 + 16);
      v73 = *(v97 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_2666C80E0((v73 > 1), v74 + 1, 1);
        v47 = v105;
      }

      v46 = v96 + 1;
      *(v47 + 16) = v74 + 1;
      OUTLINED_FUNCTION_7_1();
      sub_2666CDAA8(v67, v47 + v75 + *(v76 + 72) * v74, type metadata accessor for DayEventGroupView.DayEventGroup);
      if (v46 == v85)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
LABEL_19:
    v79 = v86;
    v80 = v108;
    *v86 = v47;
    v79[8] = v80 & 1;
  }
}

uint64_t sub_2666CCDAC()
{
  v1 = type metadata accessor for EventListSnippet(0);
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_2666CD9F0(v0, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EventListSnippet);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2666CDAA8(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for EventListSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096308, &qword_2666DA668);
  sub_2666B2B90(&qword_280096310, &qword_280096308, &qword_2666DA668, MEMORY[0x277CE14C0]);
  return sub_2666D8AAC();
}

uint64_t sub_2666CCF1C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v45 = type metadata accessor for CalendarButtonView(0);
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096318, &qword_2666DA670);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v41 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096320, &qword_2666DA678);
  v42 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v41 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096328, &qword_2666DA680);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096330, &qword_2666DA688);
  MEMORY[0x28223BE20](v49);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096338, &qword_2666DA690);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v51 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = sub_2666D863C();
  v20 = type metadata accessor for EventListSnippet(0);
  v21 = *(v20 + 28);
  v48 = a1;
  v22 = *(a1 + v21 + 16);
  *v12 = v19;
  *(v12 + 1) = v22;
  v12[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096340, &qword_2666DA698);
  v55 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096348, &qword_2666DA6A0);
  type metadata accessor for DayEventGroupView(0);
  sub_2666B2B90(&qword_280096350, &qword_280096348, &qword_2666DA6A0, MEMORY[0x277D83980]);
  sub_2666CD9A0(&qword_280096358, type metadata accessor for DayEventGroupView, &unk_2666DAA0C);
  sub_2666CD9A0(&qword_280096360, type metadata accessor for DayEventGroupView.DayEventGroup, &unk_2666DA9D4);
  sub_2666D8A4C();
  sub_2666B2B90(&qword_280096368, &qword_280096330, &qword_2666DA688, MEMORY[0x277CE1198]);
  sub_2666D884C();
  sub_2666CD868(v12);
  if (*(v48 + 8) == 1)
  {
    v23 = v43;
    sub_2666CD9F0(v48 + *(v20 + 32), v43, type metadata accessor for CalendarButtonView.Model);
    v24 = v45;
    v25 = v23 + *(v45 + 20);
    *v25 = swift_getKeyPath();
    *(v25 + 8) = 0;
    sub_2666D8B8C();
    v26 = sub_2666CD9A0(&qword_280095C38, type metadata accessor for CalendarButtonView, &unk_2666DA94C);
    v27 = v44;
    sub_2666D884C();
    sub_2666CDA50(v23, type metadata accessor for CalendarButtonView);
    v55 = v24;
    v56 = v26;
    swift_getOpaqueTypeConformance2();
    v28 = v41;
    v29 = v47;
    sub_2666D883C();
    (*(v46 + 8))(v27, v29);
    v30 = v50;
    v31 = v52;
    (*(v42 + 32))(v50, v28, v52);
    v32 = 0;
    v33 = v31;
  }

  else
  {
    v32 = 1;
    v33 = v52;
    v30 = v50;
  }

  __swift_storeEnumTagSinglePayload(v30, v32, 1, v33);
  v34 = *(v14 + 16);
  v35 = v51;
  v34(v51, v18, v13);
  v36 = v53;
  sub_2666CD8D0(v30, v53);
  v37 = v54;
  v34(v54, v35, v13);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096370, &qword_2666DA6A8);
  sub_2666CD8D0(v36, &v37[*(v38 + 48)]);
  sub_2666CD938(v30);
  v39 = *(v14 + 8);
  v39(v18, v13);
  sub_2666CD938(v36);
  return (v39)(v35, v13);
}

uint64_t sub_2666CD614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2666CD9F0(a1, a2, type metadata accessor for DayEventGroupView.DayEventGroup);
  type metadata accessor for DayEventGroupView(0);
  return sub_2666D8B8C();
}

uint64_t sub_2666CD668()
{
  v1 = (type metadata accessor for EventListSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_2666D8B9C();
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v3 + v5);
  sub_2666B4670(*(v0 + v3 + v1[9]), *(v0 + v3 + v1[9] + 8));

  v7 = v0 + v3 + v1[10];

  if (*(v7 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v7 + 32));
  }

  else
  {
  }

  v8 = *(type metadata accessor for CalendarButtonView.Model(0) + 24);
  sub_2666D8A7C();
  OUTLINED_FUNCTION_2();
  (*(v9 + 8))(v7 + v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2666CD7F8@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for EventListSnippet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2666CCF1C(v4, a1);
}

uint64_t sub_2666CD868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096330, &qword_2666DA688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2666CD8D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096328, &qword_2666DA680);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666CD938(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096328, &qword_2666DA680);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2666CD9A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2666CD9F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666CDA50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2666CDAA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  v2 = MEMORY[0x277D55918];

  return sub_2666CDA50(v0, v2);
}

uint64_t sub_2666CDBAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2666D8B9C();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2666CDC48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2666D8B9C();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DisambiguateEventsSnippet(uint64_t a1)
{
  result = qword_280096388;
  if (!qword_280096388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666CDD14(uint64_t a1)
{
  sub_2666CDDB0(319);
  if (v1 <= 0x3F)
  {
    sub_2666D8B9C();
    if (v2 <= 0x3F)
    {
      sub_2666B3DDC(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2666CDDB0(uint64_t a1)
{
  if (!qword_280095C78)
  {
    type metadata accessor for RenderableEvent(255);
    v1 = sub_2666D8D8C();
    if (!v2)
    {
      atomic_store(v1, &qword_280095C78);
    }
  }
}

uint64_t sub_2666CDE24()
{
  v1 = type metadata accessor for DisambiguateEventsSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = sub_2666D8B6C();
  v5 = OUTLINED_FUNCTION_10_0(v4);
  MEMORY[0x28223BE20](v5);
  sub_2666CDFFC();
  sub_2666CEDF0(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateEventsSnippet);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_2666CF1B4(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DisambiguateEventsSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280096398, &qword_2666DA790);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800963A0, &qword_2666DA798);
  v9 = sub_2666CEB04();
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  return sub_2666D8B4C();
}
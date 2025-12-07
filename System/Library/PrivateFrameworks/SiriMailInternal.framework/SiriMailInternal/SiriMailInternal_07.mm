uint64_t sub_2676834E8(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v74 = a4;
  v78 = a1;
  v6 = sub_2676C966C();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2676C9CCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v13 = sub_2676CBE4C();
  __swift_project_value_buffer(v13, qword_2801CDC90);

  v14 = a3;
  v15 = sub_2676CBE2C();
  v16 = sub_2676CC23C();

  v17 = os_log_type_enabled(v15, v16);
  v75 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v73 = v10;
    v20 = v19;
    v79[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_2676B0B84(v78, a2, v79);
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v21 = sub_2676CC5FC();
    v23 = sub_2676B0B84(v21, v22, v79);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_2675D4000, v15, v16, "[ResolveRecipientsFlow#instrumentOnFailure(%s)]: %s", v18, 0x16u);
    swift_arrayDestroy();
    v24 = v20;
    v10 = v73;
    MEMORY[0x26D5FEA80](v24, -1, -1);
    MEMORY[0x26D5FEA80](v18, -1, -1);
  }

  v79[0] = a3;
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v73 = sub_2676C970C();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
    v27 = &v8[v26[12]];
    v28 = &v8[v26[20]];
    v29 = &v8[v26[24]];
    v30 = v26[28];
    v31 = v26[32];
    v69 = v26[16];
    v70 = v31;
    v32 = &v8[v26[36]];
    v33 = &v8[v26[40]];
    v34 = &v8[v26[44]];
    v35 = &v8[v26[48]];
    v36 = v26[52];
    v71 = v30;
    v72 = v36;
    v37 = *MEMORY[0x277D5BC08];
    v38 = sub_2676C99EC();
    (*(*(v38 - 8) + 104))(v8, v37, v38);
    v39 = v74;
    v40 = v75;
    *v27 = v78;
    *(v27 + 1) = v40;
    *&v8[v69] = 0;
    *v28 = 0;
    *(v28 + 1) = 0;
    *v29 = 0u;
    *(v29 + 1) = 0u;
    v41 = v70;
    *(v71 + v8) = 0;
    *&v41[v8] = 0;
    *(v32 + 4) = 0;
    *v32 = 0u;
    *(v32 + 1) = 0u;
    v42 = *(v39 + qword_2801D3EA8 + 8);
    *v33 = *(v39 + qword_2801D3EA8);
    *(v33 + 1) = v42;
    *v34 = 0;
    *(v34 + 1) = 0;
    *v35 = 0;
    *(v35 + 1) = 0;
    v43 = *MEMORY[0x277D5B8E8];
    v44 = sub_2676C968C();
    v45 = v72;
    (*(*(v44 - 8) + 104))(&v8[v72], v43, v44);
    __swift_storeEnumTagSinglePayload(&v8[v45], 0, 1, v44);
    (*(v76 + 104))(v8, *MEMORY[0x277D5B8B8], v77);
  }

  else
  {
    v73 = sub_2676C970C();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
    v47 = &v8[v46[12]];
    v48 = v46[16];
    v49 = &v8[v46[20]];
    v50 = &v8[v46[24]];
    v69 = v46[28];
    v70 = a3;
    v68 = v46[32];
    v51 = &v8[v46[36]];
    v52 = &v8[v46[40]];
    v53 = &v8[v46[44]];
    v71 = &v8[v46[48]];
    v72 = v46[52];
    v54 = *MEMORY[0x277D5BC00];
    v55 = sub_2676C99EC();
    (*(*(v55 - 8) + 104))(v8, v54, v55);
    v56 = v74;
    v57 = v75;
    *v47 = v78;
    *(v47 + 1) = v57;
    *&v8[v48] = 0;
    *v49 = 0;
    *(v49 + 1) = 0;
    *v50 = 0u;
    *(v50 + 1) = 0u;
    v58 = v68;
    *&v8[v69] = 0;
    *&v8[v58] = 0;
    *(v51 + 4) = 0;
    *v51 = 0u;
    *(v51 + 1) = 0u;
    v59 = *(v56 + qword_2801D3EA8 + 8);
    *v52 = *(v56 + qword_2801D3EA8);
    *(v52 + 1) = v59;
    *v53 = 0;
    *(v53 + 1) = 0;
    swift_getErrorValue();

    v60 = sub_2676CC5FC();
    v61 = v71;
    *v71 = v60;
    v61[1] = v62;
    v63 = *MEMORY[0x277D5B8D8];
    v64 = sub_2676C968C();
    v65 = v72;
    (*(*(v64 - 8) + 104))(&v8[v72], v63, v64);
    __swift_storeEnumTagSinglePayload(&v8[v65], 0, 1, v64);
    (*(v76 + 104))(v8, *MEMORY[0x277D5B8B8], v77);
  }

  return sub_2676C971C();
}

uint64_t sub_267683B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeedsValuePromptProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267683BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 96) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_3_22(uint64_t a1)
{
  *(v1 - 96) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_27()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_24(uint64_t result)
{
  *v1 = result != 1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_17()
{

  return type metadata accessor for PromptForContactProducer(0);
}

uint64_t OUTLINED_FUNCTION_14_17()
{

  return sub_2676C9B9C();
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal26ResolveRecipientsFlowStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_267683E00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_267683E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_267683E84(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_267683EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_2675EE48C(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_267683FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_2676842B4(v31, v32, v33);
    v25 = sub_2676CBF1C();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2676841A4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_19;
      }

      v7 = sub_267683FAC(a1, a3, MEMORY[0x277CBA2E0], &qword_2801CBF58, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2F0]);
      return v7 & 1;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    case 3:
      if (a1)
      {
        if (a4 != 3 || a3 != 1)
        {
          goto LABEL_19;
        }

LABEL_18:
        v7 = 1;
        return v7 & 1;
      }

      if (a4 == 3 && !a3)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 = 0;
      return v7 & 1;
    default:
      if (a4)
      {
        goto LABEL_19;
      }

      return sub_267683EAC(a1, a3);
  }
}

uint64_t sub_2676842B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2676842FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CCE70, &unk_2676D1300);
  result = sub_2676CC69C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2676843B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);

  return sub_2676C9A5C();
}

uint64_t sub_2676843FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD788, &qword_2676D3568);
  OUTLINED_FUNCTION_3();
  v29 = v11;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD790, &qword_2676D3570);
  OUTLINED_FUNCTION_3();
  v30 = v15;
  v31 = v16;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  sub_2676843B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD760, &qword_2676D34C8);
  sub_267685664();
  sub_2676C9F4C();
  (*(v5 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = *(a1 + 16);
  (*(v5 + 32))(v21 + v20, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
  OUTLINED_FUNCTION_1_26();
  v25 = sub_2676148C4(v23, &qword_2801CD788, &qword_2676D3568, v24);
  sub_2676C953C();

  (*(v29 + 8))(v14, v10);
  v33 = v10;
  v34 = v22;
  v35 = v25;
  OUTLINED_FUNCTION_2_26();
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_2676C933C();
  return (*(v31 + 8))(v19, v26);
}

uint64_t sub_267684748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for ResolveRecipientsPlan(0, a3, a4, a4);
  if (*(a2 + v10[10]) & 1) != 0 || (sub_267684A50(v9))
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v11 = sub_2676CBE4C();
    __swift_project_value_buffer(v11, qword_2801CDC90);

    v12 = sub_2676CBE2C();
    v13 = sub_2676CC23C();

    if (os_log_type_enabled(v12, v13))
    {
      v30 = a5;
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32[0] = v29;
      *v14 = 136315138;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v16 = MEMORY[0x26D5FDDD0](v9, v15);
      v18 = sub_2676B0B84(v16, v17, v32);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2675D4000, v12, v13, "#ResolveRecipientsPlan recipients input: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26D5FEA80](v29, -1, -1);
      v19 = v14;
      a5 = v30;
      MEMORY[0x26D5FEA80](v19, -1, -1);
    }

    v21 = type metadata accessor for ResolveRecipientsFlow(0, a3, a4, v20);
    v22 = (a2 + v10[9]);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(a2 + v10[13]);
    sub_2675F95E4(a2 + v10[11], v32, &qword_2801CC6A8, &unk_2676CF5F0);
    sub_2675F95E4(a2 + v10[12], v31, &qword_2801CC6B0, &qword_2676CFC80);

    v26 = sub_267679614(v9, v23, v24, v25, v32, v31);
    a5[3] = v21;
    result = swift_getWitnessTable();
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD7B0, &qword_2676D3578);
    v26 = swift_allocObject();
    *(v26 + 16) = MEMORY[0x277D84F90];
    *(v26 + 24) = 0;
    a5[3] = v28;
    result = sub_2676148C4(&qword_2801CD7B8, &qword_2801CD7B0, &qword_2676D3578, &unk_2676D3478);
  }

  a5[4] = result;
  *a5 = v26;
  return result;
}

uint64_t sub_267684A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v39 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v46 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 0;
  }

  v21 = *(v16 + 16);
  v20 = v16 + 16;
  v52 = v21;
  v22 = (a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64)));
  v43 = (v13 + 8);
  v44 = (v13 + 32);
  v40 = (v4 + 8);
  v41 = (v4 + 32);
  v47 = *(v20 + 56);
  v48 = (v20 - 8);
  v42 = v20;
  while (1)
  {
    v51 = v19;
    v23 = v52;
    v52(v18, v22, v15);
    v23(v8, v18, v15);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
    sub_2676CB91C();
    sub_2676CB86C();
    sub_2675EC200(&qword_2801CC118, MEMORY[0x277D5C778], MEMORY[0x277D5C6D8]);
    sub_2676CA8EC();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_2675EB7EC(v11, &qword_2801CC038, &qword_2676D5A40);
    }

    else
    {
      v24 = v46;
      (*v44)(v46, v11, v12);
      v25 = sub_2675F8690();
      (*v43)(v24, v12);
      if (v25)
      {
        goto LABEL_14;
      }
    }

    v52(v8, v18, v15);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
    sub_2676CB6AC();
    sub_2675EC200(&qword_2801CC120, MEMORY[0x277D5C558], MEMORY[0x277D5C548]);
    v26 = v50;
    sub_2676CA8EC();
    v27 = v49;
    if (__swift_getEnumTagSinglePayload(v26, 1, v49) == 1)
    {
      sub_2675EB7EC(v26, &qword_2801CC080, &unk_2676D3580);
      goto LABEL_9;
    }

    v28 = v18;
    v29 = v8;
    v30 = v12;
    v31 = v11;
    v32 = v45;
    (*v41)(v45, v26, v27);
    swift_getKeyPath();
    sub_2676CA89C();
    v34 = v33;

    v35 = v32;
    v11 = v31;
    v12 = v30;
    v8 = v29;
    v18 = v28;
    (*v40)(v35, v27);
    if (v34)
    {
      break;
    }

LABEL_9:
    swift_getKeyPath();
    sub_2675EC200(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
    sub_2676CA89C();
    v37 = v36;

    (*v48)(v18, v15);
    if (v37)
    {

      return 1;
    }

    v22 += v47;
    v19 = v51 - 1;
    if (v51 == 1)
    {
      return 0;
    }
  }

LABEL_14:
  (*v48)(v18, v15);
  return 1;
}

uint64_t sub_2676850BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

uint64_t sub_267685110()
{
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CCE70, &unk_2676D1300);
  sub_2676CC69C();
  v2 = sub_2676C9F9C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-1] - v6;
  v13[0] = v0;
  type metadata accessor for FixedResultFlow(0, v1, v8, v9);
  swift_getWitnessTable();
  sub_2676C940C();
  v13[3] = v2;
  v13[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v4 + 16))(boxed_opaque_existential_1, v7, v2);
  sub_2676C961C();
  (*(v4 + 8))(v7, v2);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2676852CC()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CCE70, &unk_2676D1300);
  sub_2676CC69C();
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_267685374()
{
  sub_2676852CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_267685410(uint64_t a1)
{
  sub_2676855A0(319, &qword_2801CD758, &qword_2801CD760, &qword_2676D34C8, MEMORY[0x277D5BC20]);
  if (v1 <= 0x3F)
  {
    sub_2676855A0(319, &qword_2801CD768, &qword_2801CD770, qword_2676D34D0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2676855A0(319, &qword_2801CD778, &qword_2801CD780, &qword_2676D37F0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2676CB38C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2676855A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_267685664()
{
  result = qword_2801CD798;
  if (!qword_2801CD798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD760, &qword_2676D34C8);
    sub_2676148C4(&qword_2801CD7A0, &qword_2801CBF78, &qword_2676CDF00, &protocol conformance descriptor for Entity<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD798);
  }

  return result;
}

uint64_t sub_267685714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ResolveRecipientsPlan(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_267684748(a1, v9, v6, v7, a3);
}

uint64_t type metadata accessor for ResolveSender(uint64_t a1)
{
  result = qword_2801CD7C0;
  if (!qword_2801CD7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267685854(uint64_t a1)
{
  sub_2676858D0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2676858D0(uint64_t a1)
{
  if (!qword_2801CD7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CBF78, &qword_2676CDF00);
    v1 = sub_2676CC2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CD7D0);
    }
  }
}

uint64_t sub_267685934(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  OUTLINED_FUNCTION_4_1(v3);
  v2[10] = OUTLINED_FUNCTION_2_0();
  v4 = sub_2676C8C8C();
  v2[11] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v2[12] = v5;
  v2[13] = OUTLINED_FUNCTION_19();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v6);
  v2[18] = OUTLINED_FUNCTION_19();
  v2[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC360, &unk_2676D3660);
  OUTLINED_FUNCTION_4_1(v7);
  v2[20] = OUTLINED_FUNCTION_2_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC368, &unk_2676CEB00);
  v2[21] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v2[22] = v9;
  v2[23] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CB87C();
  v2[24] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v2[25] = v11;
  v2[26] = OUTLINED_FUNCTION_2_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC358, &unk_2676D3670);
  v2[27] = v12;
  OUTLINED_FUNCTION_4_1(v12);
  v2[28] = OUTLINED_FUNCTION_2_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v13);
  v2[29] = OUTLINED_FUNCTION_19();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_4_1(v14);
  v2[32] = OUTLINED_FUNCTION_2_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_4_1(v15);
  v2[33] = OUTLINED_FUNCTION_19();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v16);
  v2[37] = OUTLINED_FUNCTION_19();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267685C7C, 0, 0);
}

uint64_t sub_267685C7C()
{
  v187 = v0;
  v1 = v0[9];
  v2 = type metadata accessor for ResolveSender(0);
  if (*(v1 + *(v2 + 24)) == 1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v3 = sub_2676CBE4C();
    __swift_project_value_buffer(v3, qword_2801CDC90);
    v4 = sub_2676CBE2C();
    v5 = sub_2676CC23C();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v6, v7, "#ResolveSender found exact span match, returning nil to resolve as a contact in the flow");
      OUTLINED_FUNCTION_2_5();
    }

    v8 = v0[11];

    OUTLINED_FUNCTION_5_2();
    v12 = v8;
    goto LABEL_52;
  }

  v13 = v0[38];
  v14 = v0[39];
  v15 = *(v2 + 20);
  sub_26768704C(v1 + v15, v0[36], &qword_2801CC168, &unk_2676CF510);
  sub_2676CB91C();
  sub_2676CB86C();
  sub_2676870AC(&qword_2801CC118, MEMORY[0x277D5C778], MEMORY[0x277D5C6D8]);
  sub_2676CA8EC();
  sub_26768704C(v14, v13, &qword_2801CC038, &qword_2676D5A40);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  v17 = OUTLINED_FUNCTION_33_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v16);
  v20 = v0[38];
  v21 = v0[32];
  if (EnumTagSinglePayload == 1)
  {
    sub_2675ED6C0(v0[38], &qword_2801CC038, &qword_2676D5A40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  else
  {
    swift_getKeyPath();
    sub_2676870AC(&qword_2801CC310, MEMORY[0x277D5C6A0], MEMORY[0x277D5C688]);
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2();
    (*(v26 + 8))(v20, v16);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    if (__swift_getEnumTagSinglePayload(v21, 1, v27) != 1)
    {
      v63 = v0[32];
      sub_2675ED6C0(v0[39], &qword_2801CC038, &qword_2676D5A40);
      v64 = &qword_2801CC078;
      v65 = &unk_2676D3680;
      v66 = v63;
LABEL_36:
      sub_2675ED6C0(v66, v64, v65);
      OUTLINED_FUNCTION_5_2();
      goto LABEL_52;
    }
  }

  v28 = v0[39];
  v29 = v0[37];
  sub_2675ED6C0(v0[32], &qword_2801CC078, &unk_2676D3680);
  sub_26768704C(v28, v29, &qword_2801CC038, &qword_2676D5A40);
  v30 = __swift_getEnumTagSinglePayload(v29, 1, v16);
  v31 = v0[37];
  if (v30 == 1)
  {
    v32 = v0[24];
    sub_2675ED6C0(v0[37], &qword_2801CC038, &qword_2676D5A40);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  }

  else
  {
    swift_getKeyPath();
    sub_2676CA84C();

    OUTLINED_FUNCTION_14_2();
    (*(v36 + 8))(v31, v16);
  }

  v37 = v0[30];
  v39 = v0[27];
  v38 = v0[28];
  v40 = v0[24];
  (*(v0[25] + 104))(v37, *MEMORY[0x277D5C6E0], v40);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v40);
  v41 = *(v39 + 48);
  v42 = OUTLINED_FUNCTION_28_3();
  sub_26768704C(v42, v43, &qword_2801CC098, &qword_2676CDAD8);
  sub_26768704C(v37, v38 + v41, &qword_2801CC098, &qword_2676CDAD8);
  v44 = OUTLINED_FUNCTION_33_4();
  if (__swift_getEnumTagSinglePayload(v44, v45, v40) == 1)
  {
    v46 = v0[31];
    v47 = v0[24];
    sub_2675ED6C0(v0[30], &qword_2801CC098, &qword_2676CDAD8);
    sub_2675ED6C0(v46, &qword_2801CC098, &qword_2676CDAD8);
    if (__swift_getEnumTagSinglePayload(v38 + v41, 1, v47) == 1)
    {
      sub_2675ED6C0(v0[28], &qword_2801CC098, &qword_2676CDAD8);
LABEL_35:
      v66 = v0[39];
      v64 = &qword_2801CC038;
      v65 = &qword_2676D5A40;
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  v183 = v15;
  v48 = v0[24];
  sub_26768704C(v0[28], v0[29], &qword_2801CC098, &qword_2676CDAD8);
  v49 = __swift_getEnumTagSinglePayload(v38 + v41, 1, v48);
  v51 = v0[30];
  v50 = v0[31];
  v52 = v0[29];
  if (v49 == 1)
  {
    sub_2675ED6C0(v0[30], &qword_2801CC098, &qword_2676CDAD8);
    sub_2675ED6C0(v50, &qword_2801CC098, &qword_2676CDAD8);
    v53 = OUTLINED_FUNCTION_28_3();
    v54(v53);
LABEL_18:
    sub_2675ED6C0(v0[28], &qword_2801CC358, &unk_2676D3670);
    goto LABEL_19;
  }

  v178 = v0[28];
  v182 = v1;
  v112 = v0[25];
  v111 = v0[26];
  v113 = v0[24];
  (*(v112 + 32))(v111, v38 + v41, v113);
  sub_2676870AC(&qword_2801CC370, MEMORY[0x277D5C6E8], MEMORY[0x277D5C6F0]);
  v114 = sub_2676CBF1C();
  v115 = *(v112 + 8);
  v115(v111, v113);
  sub_2675ED6C0(v51, &qword_2801CC098, &qword_2676CDAD8);
  sub_2675ED6C0(v50, &qword_2801CC098, &qword_2676CDAD8);
  v115(v52, v113);
  v1 = v182;
  sub_2675ED6C0(v178, &qword_2801CC098, &qword_2676CDAD8);
  v15 = v183;
  if (v114)
  {
    goto LABEL_35;
  }

LABEL_19:
  sub_26768704C(v1 + v15, v0[35], &qword_2801CC168, &unk_2676CF510);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v56 = OUTLINED_FUNCTION_33_4();
  v58 = __swift_getEnumTagSinglePayload(v56, v57, v55);
  v59 = v0[35];
  if (v58 == 1)
  {
    v60 = &qword_2801CC168;
    v61 = &unk_2676CF510;
    v62 = v0[35];
LABEL_24:
    sub_2675ED6C0(v62, v60, v61);
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
    goto LABEL_25;
  }

  v67 = v0[19];
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_27();
  sub_2676870AC(v68, v69, MEMORY[0x277D5C6A8]);
  sub_2676870AC(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
  sub_2676CA87C();

  OUTLINED_FUNCTION_14_2();
  v71 = *(v70 + 8);
  (v71)(v59, v55);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v67, 1, v72) == 1)
  {
    v62 = v0[19];
    v60 = &qword_2801CC068;
    v61 = &unk_2676D4E00;
    goto LABEL_24;
  }

  log = v71;
  v116 = v0[20];
  v179 = v0[21];
  v184 = v15;
  v118 = v0[18];
  v117 = v0[19];
  v119 = *(v72 - 8);
  (*(v119 + 16))(v118, v117, v72);
  __swift_storeEnumTagSinglePayload(v118, 0, 1, v72);
  sub_2676CB61C();
  sub_2676CB78C();
  sub_2676870AC(&qword_2801CC378, MEMORY[0x277D5C4C8], MEMORY[0x277D5C4B0]);
  sub_2676CA8EC();
  v120 = v117;
  v15 = v184;
  (*(v119 + 8))(v120, v72);
  if (__swift_getEnumTagSinglePayload(v116, 1, v179) != 1)
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    swift_getKeyPath();
    sub_2676CA89C();
    v122 = v121;

    if (v122)
    {
      v123 = v0[39];
      v125 = v0[22];
      v124 = v0[23];
      v126 = v0[21];
      v127 = v0[11];

      (*(v125 + 8))(v124, v126);
      sub_2675ED6C0(v123, &qword_2801CC038, &qword_2676D5A40);
      OUTLINED_FUNCTION_5_2();
      v12 = v127;
      goto LABEL_52;
    }

    swift_getKeyPath();
    v134 = sub_2676CA89C();
    v136 = v135;

    if (!v136)
    {
      (*(v0[22] + 8))(v0[23], v0[21]);
      goto LABEL_47;
    }

    sub_26768704C(v1 + v184, v0[34], &qword_2801CC168, &unk_2676CF510);
    v137 = OUTLINED_FUNCTION_33_4();
    v139 = __swift_getEnumTagSinglePayload(v137, v138, v55);
    v140 = v0[34];
    if (v139 == 1)
    {
      sub_2675ED6C0(v0[34], &qword_2801CC168, &unk_2676CF510);
    }

    else
    {
      swift_getKeyPath();
      sub_2676CA89C();

      (log)(v140, v55);
    }

    static MailAddresseePrototype.from(name:email:)(v134, v0[17]);

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v150 = v0[12];
    v151 = sub_2676CBE4C();
    __swift_project_value_buffer(v151, qword_2801CDC90);
    v152 = *(v150 + 16);
    v153 = OUTLINED_FUNCTION_28_3();
    v152(v153);
    v154 = sub_2676CBE2C();
    v155 = sub_2676CC23C();
    v156 = os_log_type_enabled(v154, v155);
    v157 = v0[39];
    v158 = v0[22];
    v159 = v0[23];
    v185 = v0[21];
    v160 = v0[16];
    if (v156)
    {
      loga = v154;
      v161 = v0[15];
      v180 = v0[39];
      v162 = v0[12];
      v173 = v155;
      v163 = v0[11];
      v176 = v0[23];
      v164 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v186 = v172;
      *v164 = 136380675;
      (v152)(v161, v160, v163);
      v165 = sub_2676CBFBC();
      v167 = v166;
      (*(v162 + 8))(v160, v163);
      v168 = sub_2676B0B84(v165, v167, &v186);

      *(v164 + 4) = v168;
      _os_log_impl(&dword_2675D4000, loga, v173, "#ResolveSender resolving as %{private}s", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v172);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();

      (*(v158 + 8))(v176, v185);
      v169 = v180;
    }

    else
    {
      v171 = v0[11];
      v170 = v0[12];

      (*(v170 + 8))(v160, v171);
      (*(v158 + 8))(v159, v185);
      v169 = v157;
    }

    sub_2675ED6C0(v169, &qword_2801CC038, &qword_2676D5A40);
    v131 = v0[17];
    goto LABEL_42;
  }

LABEL_25:
  v77 = v0[33];
  sub_2675ED6C0(v0[20], &qword_2801CC360, &unk_2676D3660);
  sub_26768704C(v1 + v15, v77, &qword_2801CC168, &unk_2676CF510);
  v78 = OUTLINED_FUNCTION_33_4();
  v80 = __swift_getEnumTagSinglePayload(v78, v79, v55);
  v81 = v0[33];
  if (v80 != 1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_27();
    sub_2676870AC(v82, v83, MEMORY[0x277D5C6A8]);
    v84 = sub_2676CA89C();
    v86 = v85;

    OUTLINED_FUNCTION_14_2();
    (*(v87 + 8))(v81, v55);
    if (!v86)
    {
      goto LABEL_47;
    }

    v88 = v0[10];
    v0[2] = v84;
    v0[3] = v86;
    v0[4] = 39;
    v0[5] = 0xE100000000000000;
    sub_2676C911C();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
    sub_2675E69E4();
    sub_2676CC36C();
    v94 = v93;
    sub_2675ED6C0(v88, &qword_2801CCED8, &unk_2676D1390);
    if ((v94 & 1) == 0)
    {
      v0[6] = v84;
      v0[7] = v86;
      sub_2676CC38C();
    }

    static MailAddresseePrototype.from(name:email:)(0, v0[14]);

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v95 = v0[12];
    v96 = sub_2676CBE4C();
    __swift_project_value_buffer(v96, qword_2801CDC90);
    v97 = *(v95 + 16);
    v98 = OUTLINED_FUNCTION_28_3();
    v97(v98);
    v99 = sub_2676CBE2C();
    v100 = sub_2676CC23C();
    v101 = os_log_type_enabled(v99, v100);
    v102 = v0[39];
    if (v101)
    {
      v103 = v0[15];
      v104 = v0[12];
      v177 = v0[13];
      v105 = v0[11];
      v106 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v186 = v181;
      *v106 = 136380675;
      (v97)(v103, v177, v105);
      v107 = sub_2676CBFBC();
      v109 = v108;
      (*(v104 + 8))(v177, v105);
      v110 = sub_2676B0B84(v107, v109, &v186);

      *(v106 + 4) = v110;
      _os_log_impl(&dword_2675D4000, v99, v100, "#ResolveSender resolving as %{private}s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v181);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {
      v128 = v0[12];
      v129 = v0[13];
      v130 = v0[11];

      (*(v128 + 8))(v129, v130);
    }

    sub_2675ED6C0(v102, &qword_2801CC038, &qword_2676D5A40);
    v131 = v0[14];
LABEL_42:
    v132 = v0[11];
    v133 = v0[8];
    (*(v0[12] + 32))(v133, v131, v132);
    v9 = v133;
    v10 = 0;
    v11 = 1;
    v12 = v132;
    goto LABEL_52;
  }

  sub_2675ED6C0(v0[33], &qword_2801CC168, &unk_2676CF510);
LABEL_47:
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v141 = sub_2676CBE4C();
  __swift_project_value_buffer(v141, qword_2801CDC90);
  v142 = sub_2676CBE2C();
  v143 = sub_2676CC23C();
  if (os_log_type_enabled(v142, v143))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_15_6(&dword_2675D4000, v144, v145, "#ResolveSender could not resolve, return nil");
    OUTLINED_FUNCTION_2_5();
  }

  v146 = v0[39];
  v147 = v0[11];

  sub_2675ED6C0(v146, &qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_5_2();
  v12 = v147;
LABEL_52:
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);

  v148 = v0[1];

  return v148();
}

uint64_t sub_267686F74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MEMORY[0x26D5FD2B0](v1, v2);
}

uint64_t sub_267686FB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26762C5D8;

  return sub_267685934(a1);
}

uint64_t sub_26768704C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14_2();
  v5 = OUTLINED_FUNCTION_28_3();
  v6(v5);
  return a2;
}

uint64_t sub_2676870AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ResolveSendMailIntent(uint64_t a1)
{
  result = qword_2801CD7D8;
  if (!qword_2801CD7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267687180(uint64_t a1)
{
  sub_267687480(319, &qword_2801CC9C8, &qword_2801CC428, &unk_2676CEDD0, MEMORY[0x277D5BC20]);
  if (v1 <= 0x3F)
  {
    sub_26768741C(319, &qword_2801CC8F8, MEMORY[0x277CBA350], MEMORY[0x277D5B9E8]);
    if (v2 <= 0x3F)
    {
      sub_267687480(319, &qword_2801CC9F0, &qword_2801CC9F8, &unk_2676CFE90, MEMORY[0x277D5B9E8]);
      if (v3 <= 0x3F)
      {
        sub_267687480(319, &qword_2801CC9A8, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5B9E8]);
        if (v4 <= 0x3F)
        {
          sub_267687480(319, &qword_2801CCA00, &qword_2801CBFE0, &qword_2676D1070, MEMORY[0x277D5B9E8]);
          if (v5 <= 0x3F)
          {
            sub_26768741C(319, &qword_2801CD1D0, MEMORY[0x277CBA208], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_267687480(319, &qword_2801CD768, &qword_2801CD770, qword_2676D34D0, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_267687480(319, &qword_2801CD778, &qword_2801CD780, &qword_2676D37F0, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_2676CB38C();
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

void sub_26768741C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_267687480(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2676874E4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB92C();
  *v0 = result;
  return result;
}

uint64_t sub_267687538()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB94C();
  *v0 = result;
  return result;
}

uint64_t sub_26768758C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB98C();
  *v0 = result;
  return result;
}

uint64_t sub_2676875E0()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CBAFC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_267687648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v141 = a1;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v139 = v3;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v5);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD7F0, &qword_2676D3870);
  OUTLINED_FUNCTION_3();
  v138 = v6;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v8);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD7F8, &qword_2676D3878);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v10);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v128 = v11;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v13);
  v14 = type metadata accessor for ResolveSendMailIntent(0);
  v15 = *(v14 - 8);
  v167 = (v14 - 8);
  v123 = v15;
  v162 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v161 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_4_1(v17);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v153 = v19;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD800, &qword_2676D3888);
  OUTLINED_FUNCTION_3();
  v125 = v20;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v22);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD808, &qword_2676D3890);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v157 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3();
  v165 = v25;
  v166 = v26;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  v152 = v27;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v28);
  v151 = &v119 - v29;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v30);
  v32 = &v119 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_3();
  v35 = v34;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  v38 = &v119 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD810, &qword_2676D3898);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  v42 = &v119 - v41;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD818, &qword_2676D38A0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  v156 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  v155 = &v119 - v46;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v47);
  v124 = &v119 - v48;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD820, &qword_2676D38A8);
  OUTLINED_FUNCTION_3();
  v131 = v49;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v51);
  sub_2676C9A5C();
  swift_getKeyPath();
  v164 = sub_267689524(&qword_2801CBF68, MEMORY[0x277D5C8D8], MEMORY[0x277D5C780]);
  v146 = sub_267689524(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
  v163 = v33;
  v142 = v38;
  sub_2676C9A4C();

  v52 = *(v35 + 8);
  v159 = v35 + 8;
  v160 = v52;
  v52(v38, v33);
  v53 = v167;
  OpaqueTypeConformance2 = v167[14];
  v54 = v2;
  sub_2675F95E4(v2 + OpaqueTypeConformance2, &v42[v39[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  v144 = v53[15];
  sub_2675F95E4(v2 + v144, &v42[v39[12]], &qword_2801CC6B0, &qword_2676CFC80);
  v55 = *(v2 + v53[16]);
  v56 = &v42[v39[9]];
  *v56 = 0x6E65697069636572;
  *(v56 + 1) = 0xEA00000000007374;
  v42[v39[10]] = 1;
  *&v42[v39[13]] = v55;
  v147 = v53[8];
  v57 = v55;
  v120 = v57;
  v58 = v32;
  v59 = v165;
  sub_2676C980C();
  v150 = sub_2676148C4(&qword_2801CD828, &qword_2801CD810, &qword_2676D3898, &unk_2676D3518);
  v149 = sub_267688E78();
  sub_2676C94EC();
  v60 = *(v166 + 8);
  v166 += 8;
  v143 = v60;
  v60(v58, v59);
  sub_2675EB7EC(v42, &qword_2801CD810, &qword_2676D3898);
  v61 = v142;
  v62 = v163;
  sub_2676C9A5C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_23();
  sub_2676C9A4C();

  v63 = v61;
  v160(v61, v62);
  sub_2675F95E4(v54 + OpaqueTypeConformance2, &v42[v39[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  v64 = v54;
  sub_2675F95E4(v54 + v144, &v42[v39[12]], &qword_2801CC6B0, &qword_2676CFC80);
  OUTLINED_FUNCTION_13_18(&v42[v39[9]]);
  *&v42[v65] = v57;
  v66 = v167;
  v148 = v167[9];
  v158 = v58;
  sub_2676C980C();
  sub_2676C94EC();
  v143(v58, v59);
  sub_2675EB7EC(v42, &qword_2801CD810, &qword_2676D3898);
  v67 = v163;
  sub_2676C9A5C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_23();
  sub_2676C9A4C();

  v68 = v63;
  v69 = v160;
  v160(v68, v67);
  sub_2675F95E4(v54 + OpaqueTypeConformance2, &v42[v39[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v54 + v144, &v42[v39[12]], &qword_2801CC6B0, &qword_2676CFC80);
  OUTLINED_FUNCTION_13_18(&v42[v39[9]]);
  v121 = v39;
  *&v42[v70] = v120;
  v146 = v66[10];
  v71 = v158;
  v72 = v165;
  sub_2676C980C();
  sub_2676C94EC();
  v143(v71, v72);
  sub_2675EB7EC(v42, &qword_2801CD810, &qword_2676D3898);
  v73 = v142;
  v74 = v163;
  sub_2676C9A5C();
  swift_getKeyPath();
  v75 = v153;
  sub_2676C9A3C();

  v69(v73, v74);
  OUTLINED_FUNCTION_10_17();
  v76 = v158;
  sub_2676C980C();
  OUTLINED_FUNCTION_10_17();
  v77 = v151;
  sub_2676C980C();
  OUTLINED_FUNCTION_10_17();
  v78 = v152;
  sub_2676C980C();
  v79 = type metadata accessor for ResolveStringPlan(0);
  swift_allocObject();
  v168 = sub_26768DC2C(0, v75, v76, v77, v78);
  v80 = v161;
  sub_267688F2C(v64, v161);
  v166 = *(v123 + 80);
  v81 = (v166 + 16) & ~v166;
  v82 = swift_allocObject();
  sub_267688F90(v80, v82 + v81);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v84 = sub_267689524(&qword_2801CD838, type metadata accessor for ResolveStringPlan, &unk_2676D3DE0);
  v85 = v122;
  v123 = v84;
  sub_2676C951C();

  v86 = v126;
  v87 = v127;
  sub_2676C980C();
  v168 = v79;
  v169 = v83;
  v170 = v84;
  v143 = MEMORY[0x277D5B840];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v144 = sub_267689048();
  v88 = v154;
  sub_2676C94EC();
  OUTLINED_FUNCTION_27_5();
  v89(v86, v87);
  OUTLINED_FUNCTION_27_5();
  v90(v85, v88);
  v91 = v163;
  sub_2676C9A5C();
  swift_getKeyPath();
  v92 = v153;
  sub_2676C9A3C();

  v160(v73, v91);
  OUTLINED_FUNCTION_10_17();
  v93 = v158;
  sub_2676C980C();
  OUTLINED_FUNCTION_10_17();
  v94 = v151;
  sub_2676C980C();
  OUTLINED_FUNCTION_10_17();
  v95 = v152;
  sub_2676C980C();
  swift_allocObject();
  v168 = sub_26768DC2C(1, v92, v93, v94, v95);
  v96 = v161;
  sub_267688F2C(v64, v161);
  v120 = v81;
  v97 = swift_allocObject();
  sub_267688F90(v96, v97 + v81);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  v99 = v133;
  v100 = v123;
  sub_2676C951C();

  v101 = v135;
  v102 = v137;
  sub_2676C980C();
  v168 = v79;
  v169 = v98;
  v170 = v100;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = sub_2676893C8();
  v105 = v136;
  sub_2676C94EC();
  OUTLINED_FUNCTION_27_5();
  v106(v101, v102);
  OUTLINED_FUNCTION_27_5();
  v107 = v105;
  v108(v99, v105);
  v109 = v161;
  sub_267688F2C(v64, v161);
  v110 = v120;
  v111 = swift_allocObject();
  sub_267688F90(v109, v111 + v110);
  sub_2676C8D8C();
  v168 = v121;
  v169 = v150;
  v170 = v149;
  swift_getOpaqueTypeConformance2();
  v168 = v154;
  v169 = OpaqueTypeConformance2;
  v170 = v144;
  swift_getOpaqueTypeConformance2();
  v168 = v107;
  v169 = v103;
  v170 = v104;
  swift_getOpaqueTypeConformance2();
  v112 = v129;
  sub_2676C98CC();
  OUTLINED_FUNCTION_3_23();
  sub_2676148C4(v113, &qword_2801CD820, &qword_2676D38A8, v114);
  v115 = v112;
  v116 = v130;
  sub_2676C933C();
  OUTLINED_FUNCTION_27_5();
  return v117(v115, v116);
}

uint64_t sub_2676887E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267688824(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_267688824(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-1] - v5;
  sub_2676C9ECC();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2676C98EC();
  v7 = sub_2676C911C();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = sub_2676B3184(v6, a1, a2);
  sub_2675EB7EC(v6, &qword_2801CCED8, &unk_2676D1390);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t sub_26768893C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_267688824(*a1, a1[1]);
  sub_2676C8EAC();
  v3 = sub_2676C8EBC();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

void sub_2676889A0(uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a5;
  v36 = a6;
  v34 = a7;
  v8 = sub_2676C8D8C();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD860, &unk_2676D39A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  MEMORY[0x28223BE20](v16 - 8);
  v33 = *a4;
  v18 = v34;
  sub_2675F95E4(v35, &v33 - v17, &qword_2801CBFE0, &qword_2676D1070);
  v19 = sub_2676C8A4C();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v19);
  v20 = type metadata accessor for ResolveSendMailIntent(0);
  sub_2675F95E4(v36 + *(v20 + 44), v12, &qword_2801CC3D0, &qword_2676D1D80);

  sub_2676C8CCC();
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v21 = sub_2676CBE4C();
  __swift_project_value_buffer(v21, qword_2801CDC90);
  v23 = v37;
  v22 = v38;
  v24 = v39;
  (*(v38 + 16))(v37, v18, v39);
  v25 = sub_2676CBE2C();
  v26 = sub_2676CC22C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = 136380675;
    v29 = SendMailIntentPrototype.debugDescription.getter();
    v31 = v30;
    (*(v22 + 8))(v23, v24);
    v32 = sub_2676B0B84(v29, v31, &v40);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_2675D4000, v25, v26, "#ResolveSendMailIntent resolved SendMailIntent %{private}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x26D5FEA80](v28, -1, -1);
    MEMORY[0x26D5FEA80](v27, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v23, v24);
  }
}

uint64_t sub_267688DA8(uint64_t a1)
{
  v2 = sub_267689524(&qword_2801CD268, type metadata accessor for ResolveSendMailIntent, &unk_2676D3820);

  return MEMORY[0x2821BA568](a1, v2);
}

unint64_t sub_267688E78()
{
  result = qword_2801CD830;
  if (!qword_2801CD830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9F8, &unk_2676CFE90);
    sub_267689524(&qword_2801CBF58, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD830);
  }

  return result;
}

uint64_t sub_267688F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveSendMailIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267688F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveSendMailIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267688FF4()
{
  v0 = OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_4_1(v0);
  v1 = OUTLINED_FUNCTION_9_25();
  return sub_2676887E0(v1, v2);
}

unint64_t sub_267689048()
{
  result = qword_2801CD840;
  if (!qword_2801CD840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9B0, &unk_2676CFE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD840);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for ResolveSendMailIntent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_2_6();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_2_6();
  (*(v8 + 8))(v0 + v3 + v7);
  v9 = v1[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6();
  v12 = *(v11 + 8);
  v12(v0 + v3 + v9, v10);
  v12(v0 + v3 + v1[7], v10);
  v12(v0 + v3 + v1[8], v10);
  v13 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_2_6();
  (*(v14 + 8))(v0 + v3 + v13);
  v15 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_2_6();
  (*(v16 + 8))(v0 + v3 + v15);
  v17 = v1[11];
  v18 = sub_2676C8BFC();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v17, 1, v18))
  {
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  v19 = v5 + v1[12];
  if (*(v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v20 = v5 + v1[13];
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267689374()
{
  v0 = OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_4_1(v0);
  v1 = OUTLINED_FUNCTION_9_25();
  return sub_26768893C(v1, v2);
}

unint64_t sub_2676893C8()
{
  result = qword_2801CD848;
  if (!qword_2801CD848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CBFE0, &qword_2676D1070);
    sub_267689524(&qword_2801CD850, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD848);
  }

  return result;
}

void sub_26768947C(uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for ResolveSendMailIntent(0);
  OUTLINED_FUNCTION_4_1(v10);
  sub_2676889A0(a4, a5, v6 + ((*(v11 + 80) + 16) & ~*(v11 + 80)), a6);
}

uint64_t sub_267689524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_13_18(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  *(v4 + *(v3 + 40)) = 0;
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return type metadata accessor for ResolveSendMailIntent(0);
}

uint64_t type metadata accessor for ResolveSiriMailMessageIntent(uint64_t a1)
{
  result = qword_2801CD868;
  if (!qword_2801CD868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267689670(uint64_t a1)
{
  sub_267687480(319, &qword_2801CC9C8, &qword_2801CC428, &unk_2676CEDD0, MEMORY[0x277D5BC20]);
  if (v1 <= 0x3F)
  {
    sub_267687480(319, &qword_2801CC998, &qword_2801CC9A0, &unk_2676D22B0, MEMORY[0x277D5B9E8]);
    if (v2 <= 0x3F)
    {
      sub_267687480(319, &qword_2801CC9A8, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5B9E8]);
      if (v3 <= 0x3F)
      {
        sub_267687480(319, &qword_2801CC9B8, &qword_2801CC9C0, &unk_2676D22C0, MEMORY[0x277D5B9E8]);
        if (v4 <= 0x3F)
        {
          sub_26768990C(319, &qword_2801CC900, MEMORY[0x277D5CA28], MEMORY[0x277D5B9E8]);
          if (v5 <= 0x3F)
          {
            sub_26768990C(319, &qword_2801CD1D0, MEMORY[0x277CBA208], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_267687480(319, &qword_2801CD768, &qword_2801CD770, qword_2676D34D0, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_267687480(319, &qword_2801CD778, &qword_2801CD780, &qword_2676D37F0, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_2676CB38C();
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

void sub_26768990C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_267689970@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_3();
  v130 = v2;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v4);
  v129 = type metadata accessor for ResolveState(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v6);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD880, &unk_2676D3A48);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v8);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v159 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v11);
  v12 = type metadata accessor for ResolveSiriMailMessageIntent(0);
  v120 = *(v12 - 8);
  v156 = *(v120 + 64);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v155 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD888, &qword_2676D3A58);
  OUTLINED_FUNCTION_3();
  v157 = v17;
  v158 = v18;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v20);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD890, &unk_2676D3A60);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4();
  v149 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11_5(v119 - v24);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3();
  v165 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v28);
  v164 = v119 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  v150 = v30;
  v31 = *(v30 - 8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  v34 = v119 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD810, &qword_2676D3898);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  v38 = v119 - v37;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD898, &qword_2676D3A70);
  OUTLINED_FUNCTION_3();
  v162 = v39;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v41);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD8A0, &qword_2676D3A78);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_11_5(v119 - v45);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD8A8, &qword_2676D3A80);
  OUTLINED_FUNCTION_3();
  v123 = v46;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v48);
  v160 = v34;
  sub_2676C9A5C();
  swift_getKeyPath();
  v161 = sub_26768BBF4(&qword_2801CBF68, MEMORY[0x277D5C8D8], MEMORY[0x277D5C780]);
  v133 = sub_26768BBF4(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
  sub_2676C9A4C();

  v49 = *(v31 + 8);
  v31 += 8;
  v151 = v31;
  v152 = v49;
  v49(v34, v30);
  v140 = v13[15];
  sub_2675F95E4(v1 + v140, &v38[v35[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  v139 = v13[16];
  sub_2675F95E4(v1 + v139, &v38[v35[12]], &qword_2801CC6B0, &qword_2676CFC80);
  v50 = v13[17];
  v163 = v13;
  v51 = *(v1 + v50);
  v52 = &v38[v35[9]];
  *v52 = 0x6E65697069636572;
  *(v52 + 1) = 0xEA00000000007374;
  v38[v35[10]] = 1;
  *&v38[v35[13]] = v51;
  v138 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9A0, &unk_2676D22B0);
  v54 = sub_2676148C4(&qword_2801CD828, &qword_2801CD810, &qword_2676D3898, &unk_2676D3518);
  OUTLINED_FUNCTION_23_8();
  v137 = v53;
  v136 = v54;
  sub_2676C951C();
  sub_2675EB7EC(v38, &qword_2801CD810, &qword_2676D3898);
  v142 = v13[7];
  v55 = v1;
  v56 = v164;
  v57 = v153;
  sub_2676C980C();
  v167 = v35;
  v168 = v53;
  v169 = v54;
  v119[2] = MEMORY[0x277D5B840];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = sub_26768B608();
  v58 = v166;
  v59 = v31;
  sub_2676C94EC();
  v60 = *(v165 + 8);
  v165 += 8;
  v135 = v60;
  v60(v56, v57);
  v61 = *(v162 + 8);
  v162 += 8;
  v134 = v61;
  v61(v31, v58);
  v62 = v160;
  v63 = v150;
  v64 = v55;
  sub_2676C9A5C();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_13_19(KeyPath);

  v66 = v152;
  v152(v62, v63);
  sub_2675F95E4(v64 + v140, &v38[v35[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v64 + v139, &v38[v35[12]], &qword_2801CC6B0, &qword_2676CFC80);
  OUTLINED_FUNCTION_9_26(&v38[v35[9]]);
  OUTLINED_FUNCTION_11_25(sub_26768BC3C);
  sub_2675EB7EC(v38, &qword_2801CD810, &qword_2676D3898);
  v141 = v163[8];
  v67 = v164;
  sub_2676C980C();
  v68 = v166;
  sub_2676C94EC();
  v135(v67, v57);
  v134(v59, v68);
  v69 = v160;
  v70 = v150;
  sub_2676C9A5C();
  v71 = swift_getKeyPath();
  OUTLINED_FUNCTION_13_19(v71);

  v72 = v70;
  v73 = v151;
  v66(v69, v72);
  v74 = v64;
  sub_2675F95E4(v64 + v140, &v38[v35[11]], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v64 + v139, &v38[v35[12]], &qword_2801CC6B0, &qword_2676CFC80);
  OUTLINED_FUNCTION_9_26(&v38[v35[9]]);
  OUTLINED_FUNCTION_11_25(sub_26768BC3C);
  sub_2675EB7EC(v38, &qword_2801CD810, &qword_2676D3898);
  v140 = v163[9];
  v75 = v164;
  v76 = v153;
  sub_2676C980C();
  v77 = v166;
  sub_2676C94EC();
  v135(v75, v76);
  v134(v59, v77);
  v78 = v160;
  v79 = v150;
  sub_2676C9A5C();
  swift_getKeyPath();
  v80 = v146;
  sub_2676C9A3C();

  v152(v78, v79);
  sub_2676C980C();
  OUTLINED_FUNCTION_23_8();
  sub_2676C980C();
  v81 = v74;
  v82 = v145;
  sub_2676C980C();
  v83 = type metadata accessor for ResolveStringSceneHostPlan(0);
  swift_allocObject();
  v84 = sub_26769012C(0, v80, v75, v73, v82);
  OUTLINED_FUNCTION_14_18(v84);
  v165 = *(v120 + 80);
  v85 = (v165 + 16) & ~v165;
  v86 = swift_allocObject();
  sub_26768B720(v82, v86 + v85);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v88 = sub_26768BBF4(&qword_2801CD8B8, type metadata accessor for ResolveStringSceneHostPlan, &unk_2676D3FF0);
  OUTLINED_FUNCTION_23_8();
  v136 = v87;
  v135 = v88;
  sub_2676C951C();

  v89 = v147;
  v90 = v148;
  sub_2676C980C();
  v167 = v83;
  v168 = v87;
  v169 = v88;
  v139 = swift_getOpaqueTypeConformance2();
  v162 = sub_267689048();
  v91 = v157;
  sub_2676C94EC();
  v92 = *(v159 + 8);
  v159 += 8;
  v138 = v92;
  v92(v89, v90);
  v93 = *(v158 + 8);
  v158 += 8;
  v137 = v93;
  v93(v73, v91);
  v94 = v160;
  sub_2676C9A5C();
  swift_getKeyPath();
  OUTLINED_FUNCTION_23_8();
  sub_2676C9A3C();

  v152(v94, v79);
  v95 = v164;
  v96 = v153;
  sub_2676C980C();
  v97 = v144;
  sub_2676C980C();
  v98 = v145;
  sub_2676C980C();
  swift_allocObject();
  v99 = sub_26769012C(1, v73, v95, v97, v98);
  OUTLINED_FUNCTION_14_18(v99);
  v134 = v85;
  v100 = swift_allocObject();
  sub_26768B720(v96, v100 + v85);
  sub_2676C951C();

  OUTLINED_FUNCTION_23_8();
  v101 = v148;
  sub_2676C980C();
  v102 = v157;
  v103 = v139;
  sub_2676C94EC();
  v138(v73, v101);
  v137(v73, v102);
  v104 = v125;
  v105 = v128;
  sub_2676C980C();
  v106 = v127;
  sub_2676C980C();
  v107 = sub_26768BBF4(&qword_2801CD8C0, type metadata accessor for ResolveState, &unk_2676D3C48);
  v108 = sub_26768BBF4(&qword_2801CD8C8, MEMORY[0x277D5CA28], MEMORY[0x277D5CA30]);
  v109 = v129;
  sub_2676C94EC();
  (*(v130 + 8))(v106, v105);
  sub_26768B818(v104);
  v110 = v155;
  sub_26768B6BC(v81, v155);
  v111 = v134;
  v112 = swift_allocObject();
  sub_26768B720(v110, v111 + v112);
  sub_2676CB18C();
  v167 = v166;
  v168 = OpaqueTypeConformance2;
  v169 = v143;
  swift_getOpaqueTypeConformance2();
  v167 = v157;
  v168 = v103;
  v169 = v162;
  swift_getOpaqueTypeConformance2();
  v167 = v109;
  v168 = v107;
  v169 = v108;
  swift_getOpaqueTypeConformance2();
  v113 = v121;
  sub_2676C98DC();
  OUTLINED_FUNCTION_3_24();
  sub_2676148C4(v114, &qword_2801CD8A8, &qword_2676D3A80, v115);
  v116 = v113;
  v117 = v122;
  sub_2676C933C();
  return (*(v123 + 8))(v116, v117);
}

void sub_26768AD70(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v27 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_5();
  v25 = v7;
  v26 = sub_2676CB14C();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_5();
  v21 = v11;
  v12 = *a1;
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v28 = MEMORY[0x277D84F90];
    sub_2676C27D0(0, v13, 0);
    v14 = v28;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v23 = *(v15 + 56);
    v24 = v16;
    v22 = (v15 - 8);
    v18 = v21;
    do
    {
      v24(v25, v17, v27);
      sub_2676C8C1C();
      sub_2676C8C4C();
      sub_2676CB11C();
      (*v22)(v25, v27);
      v20 = *(v28 + 16);
      v19 = *(v28 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2676C27D0((v19 > 1), v20 + 1, 1);
        v18 = v21;
      }

      *(v28 + 16) = v20 + 1;
      (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v18, v26);
      v17 += v23;
      --v13;
    }

    while (v13);
  }

  *a2 = v14;
}

uint64_t sub_26768AFE8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-1] - v5;
  sub_2676C9ECC();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2676C98EC();
  v7 = sub_2676C911C();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = sub_2676B3184(v6, a1, a2);
  sub_2675EB7EC(v6, &qword_2801CCED8, &unk_2676D1390);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t sub_26768B100@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26768AFE8(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26768B144@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a8;
  v33 = a6;
  v34 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_2676CB0DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v38 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v32 - v18;
  v20 = *a1;
  v21 = a4[1];
  v36 = *a4;
  v37 = v20;
  v41 = v21;
  v22 = a5[1];
  v35 = *a5;
  v40 = v22;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v23 = sub_2676CBE4C();
  __swift_project_value_buffer(v23, qword_2801CDC90);
  v24 = sub_2676CBE2C();
  v25 = sub_2676CC22C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2675D4000, v24, v25, "#ResolveSiriMailMessageIntent resolved SiriMailMessage", v26, 2u);
    MEMORY[0x26D5FEA80](v26, -1, -1);
  }

  v27 = sub_2676CB0AC();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v27);
  (*(v15 + 16))(v38, v33, v14);
  v28 = type metadata accessor for ResolveSiriMailMessageIntent(0);
  sub_2675F95E4(v34 + *(v28 + 48), v13, &qword_2801CC3D0, &qword_2676D1D80);
  v29 = sub_2676C8BFC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v29);

  if (EnumTagSinglePayload == 1)
  {
    sub_2675EB7EC(v13, &qword_2801CC3D0, &qword_2676D1D80);
  }

  else
  {
    sub_2676C8ABC();
    (*(*(v29 - 8) + 8))(v13, v29);
  }

  if (qword_2801CBA70 != -1)
  {
    swift_once();
  }

  return sub_2676CB04C();
}

uint64_t sub_26768B538(uint64_t a1)
{
  v2 = sub_26768BBF4(&qword_2801CD308, type metadata accessor for ResolveSiriMailMessageIntent, &unk_2676D39F8);

  return MEMORY[0x2821BA568](a1, v2);
}

unint64_t sub_26768B608()
{
  result = qword_2801CD8B0;
  if (!qword_2801CD8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC9A0, &unk_2676D22B0);
    sub_26768BBF4(&qword_2801CBF48, MEMORY[0x277D5CA58], MEMORY[0x277D5CA68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD8B0);
  }

  return result;
}

uint64_t sub_26768B6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveSiriMailMessageIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26768B720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolveSiriMailMessageIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26768B818(uint64_t a1)
{
  v2 = type metadata accessor for ResolveState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ResolveSiriMailMessageIntent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_2_6();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6();
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  v10(v0 + v3 + v1[6], v8);
  v10(v0 + v3 + v1[7], v8);
  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_2_6();
  v14 = *(v13 + 8);
  v14(v0 + v3 + v11, v12);
  v14(v0 + v3 + v1[9], v12);
  v15 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_2_6();
  (*(v16 + 8))(v0 + v3 + v15);
  v17 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_2_6();
  (*(v18 + 8))(v0 + v3 + v17);
  v19 = v1[12];
  v20 = sub_2676C8BFC();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v19, 1, v20))
  {
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  v21 = v5 + v1[13];
  if (*(v21 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v22 = v5 + v1[14];
  if (*(v22 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26768BBF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_9_26(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v2;
  *(v3 + *(v4 + 40)) = 0;
  *(v3 + *(v4 + 52)) = *(v5 - 376);
}

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1)
{

  return sub_2676C951C();
}

uint64_t OUTLINED_FUNCTION_13_19(uint64_t a1)
{

  return sub_2676C9A4C();
}

uint64_t OUTLINED_FUNCTION_14_18(uint64_t a1)
{
  *(v2 - 112) = a1;
  v4 = *(v2 - 208);

  return sub_26768B6BC(v1, v4);
}

uint64_t sub_26768BD20()
{
  *(v1 + 16) = v0;
  sub_2676CBF9C();
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26768BDB0, 0, 0);
}

uint64_t sub_26768BDB0()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  v35 = v5;
  v36 = v4;
  v6 = v1[4];
  v7 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v10 = v9;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v11 = sub_2676CBE4C();
  __swift_project_value_buffer(v11, qword_2801CDC90);
  v12 = sub_2676CBE2C();
  v13 = sub_2676CC23C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2675D4000, v12, v13, "#ResolveSRREntity on iOS, converting Markdown to HTML.", v14, 2u);
    MEMORY[0x26D5FEA80](v14, -1, -1);
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v15 = objc_opt_self();

  v16 = sub_2676CBF3C();

  v17 = [objc_opt_self() defaultFormatOptions];
  v18 = [v15 reconstituteAttributedStringFromFormattedString:v16 formatOptions:v17 attributes:0];

  v19 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
  v20 = sub_26768C174();
  if (v21 >> 60 == 15)
  {

LABEL_13:
    v19 = sub_2676CBE2C();
    v31 = sub_2676CC23C();
    if (os_log_type_enabled(v19, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2675D4000, v19, v31, "#ResolveSRREntity returning raw Markdown or nil", v32, 2u);
      MEMORY[0x26D5FEA80](v32, -1, -1);
    }

    v26 = v8;
    v27 = v10;
    goto LABEL_16;
  }

  v22 = v20;
  v23 = v21;
  sub_2676CBF8C();
  v24 = sub_2676CBF7C();
  if (!v25)
  {

    sub_26768C4E8(v22, v23);
    goto LABEL_13;
  }

  v26 = v24;
  v27 = v25;

  v28 = sub_2676CBE2C();
  v29 = sub_2676CC23C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2675D4000, v28, v29, "#ResolveSRREntity returning HTML string", v30, 2u);
    MEMORY[0x26D5FEA80](v30, -1, -1);
  }

  sub_26768C4E8(v22, v23);

LABEL_16:

  v33 = *(v0 + 8);

  return v33(v36, v35, v26, v27);
}

uint64_t sub_26768C174()
{
  v16[10] = *MEMORY[0x277D85DE8];
  v1 = [v0 length];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD8D8, &unk_2676D3C00);
  inited = swift_initStackObject();
  v3 = MEMORY[0x277D74090];
  *(inited + 16) = xmmword_2676CDE20;
  v4 = *v3;
  *(inited + 32) = *v3;
  v5 = *MEMORY[0x277D740C8];
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v6;
  *(inited + 40) = v5;
  type metadata accessor for DocumentAttributeKey(0);
  sub_26768C554();
  v7 = v4;
  v8 = v5;
  sub_2676CBEFC();
  v9 = sub_2676CBEEC();

  v16[0] = 0;
  v10 = [v0 dataFromRange:0 documentAttributes:v1 error:{v9, v16}];

  v11 = v16[0];
  if (v10)
  {
    v12 = sub_2676C900C();
  }

  else
  {
    v13 = v11;
    v14 = sub_2676C8FCC();

    swift_willThrow();
    return 0;
  }

  return v12;
}

uint64_t sub_26768C328(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26768C3B8;

  return sub_26768BD20();
}

uint64_t sub_26768C3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;

  if (!v4)
  {
    v12 = *(v10 + 16);
    *v12 = a1;
    v12[1] = a2;
    v12[2] = a3;
    v12[3] = a4;
  }

  v13 = *(v11 + 8);

  return v13();
}

uint64_t sub_26768C4E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26768C4FC(a1, a2);
  }

  return a1;
}

uint64_t sub_26768C4FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26768C554()
{
  result = qword_2801CBBD0;
  if (!qword_2801CBBD0)
  {
    type metadata accessor for DocumentAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBBD0);
  }

  return result;
}

uint64_t type metadata accessor for ResolveState(uint64_t a1)
{
  result = qword_2801CD8E0;
  if (!qword_2801CD8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26768C620(uint64_t a1)
{
  sub_267621A74(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_26768C68C@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD8F8, &qword_2676D3C98);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD900, &unk_2676D3CA0);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  sub_2676C980C();
  v14 = sub_2676CB0DC();
  sub_26768D088(&qword_2801CD8C8, MEMORY[0x277D5CA28], MEMORY[0x277D5CA30]);
  sub_2676C9BCC();
  OUTLINED_FUNCTION_1_28();
  v17 = sub_2676148C4(v15, &qword_2801CD8F8, &qword_2676D3C98, v16);
  sub_2676C953C();
  (*(v4 + 8))(v7, v2);
  v19[1] = v2;
  v19[2] = v14;
  v19[3] = v17;
  OUTLINED_FUNCTION_2_26();
  swift_getOpaqueTypeConformance2();
  sub_2676C933C();
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_26768C920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_2676CB0DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  sub_26768CFB0(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_26768D020(v6);
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v17 = sub_2676CBE4C();
    __swift_project_value_buffer(v17, qword_2801CDC90);
    v18 = sub_2676CBE2C();
    v19 = sub_2676CC23C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2675D4000, v18, v19, "#ResolveState state is not set, returning .draft", v20, 2u);
      MEMORY[0x26D5FEA80](v20, -1, -1);
    }

    (*(v8 + 104))(v11, *MEMORY[0x277D5CA08], v7);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD910, &qword_2676D3CB0);
    v22 = swift_allocObject();
    (*(v8 + 32))(v22 + *(*v22 + 88), v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD918, &qword_2676D3CB8);
    swift_storeEnumTagMultiPayload();
    a2[3] = v21;
    result = sub_2676148C4(&qword_2801CD920, &qword_2801CD910, &qword_2676D3CB0, &unk_2676D3478);
    a2[4] = result;
    *a2 = v22;
  }

  else
  {
    v24 = *(v8 + 32);
    v49 = v8 + 32;
    v50 = v11;
    v48 = v24;
    v24(v16, v6, v7);
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v25 = sub_2676CBE4C();
    __swift_project_value_buffer(v25, qword_2801CDC90);
    v26 = *(v8 + 16);
    v26(v14, v16, v7);
    v27 = sub_2676CBE2C();
    v28 = sub_2676CC23C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v45 = a2;
      v30 = v29;
      v43 = swift_slowAlloc();
      v51 = v43;
      *v30 = 136315138;
      v31 = sub_2676CB0CC();
      v44 = v26;
      v33 = v32;
      v34 = *(v8 + 8);
      v46 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v47 = v34;
      v34(v14, v7);
      v35 = sub_2676B0B84(v31, v33, &v51);
      v26 = v44;

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2675D4000, v27, v28, "#ResolveState returning state: %s", v30, 0xCu);
      v36 = v43;
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x26D5FEA80](v36, -1, -1);
      v37 = v30;
      a2 = v45;
      MEMORY[0x26D5FEA80](v37, -1, -1);
    }

    else
    {

      v38 = *(v8 + 8);
      v46 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v47 = v38;
      v38(v14, v7);
    }

    v39 = v50;
    v26(v50, v16, v7);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD910, &qword_2676D3CB0);
    v41 = swift_allocObject();
    v48(v41 + *(*v41 + 88), v39, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD918, &qword_2676D3CB8);
    swift_storeEnumTagMultiPayload();
    a2[3] = v40;
    a2[4] = sub_2676148C4(&qword_2801CD920, &qword_2801CD910, &qword_2676D3CB0, &unk_2676D3478);
    *a2 = v41;
    return v47(v16, v7);
  }

  return result;
}

uint64_t sub_26768CEE0(uint64_t a1)
{
  v2 = sub_26768D088(&qword_2801CD8C0, type metadata accessor for ResolveState, &unk_2676D3C48);

  return MEMORY[0x2821BA568](a1, v2);
}

uint64_t sub_26768CFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26768D020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26768D088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26768D0E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2676CBF6C();
  v4 = v3;
  if (v2 == sub_2676CBF6C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2676CC59C();
  }

  return v7 & 1;
}

uint64_t sub_26768D16C(char a1, char a2)
{
  if (a1)
  {
    v2 = 6647407;
  }

  else
  {
    v2 = 7105633;
  }

  if (a2)
  {
    v3 = 6647407;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2676CC59C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26768D1DC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 2036625250;
  }

  else
  {
    v3 = 0x7463656A627573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 2036625250;
  }

  else
  {
    v5 = 0x7463656A627573;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2676CC59C();
  }

  return v8 & 1;
}

uint64_t sub_26768D274(unsigned __int8 a1, char a2)
{
  v2 = 0x7463656A627573;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x7463656A627573;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 2036625250;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7265646E6573;
      break;
    case 3:
      v5 = 0x6E65697069636572;
      v3 = 0xEA00000000007374;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 2036625250;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7265646E6573;
      break;
    case 3:
      v2 = 0x6E65697069636572;
      v6 = 0xEA00000000007374;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1701869940;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2676CC59C();
  }

  return v8 & 1;
}

uint64_t sub_26768D3D0()
{
  sub_2676CB87C();
  sub_26768F95C(&qword_2801CD9D8, MEMORY[0x277D5C6E8], MEMORY[0x277D5C6F8]);
  sub_2676CC0CC();
  sub_2676CC0CC();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2676CC59C();
  }

  return v1 & 1;
}

uint64_t sub_26768D4B0(uint64_t a1)
{
  v1 = a1;
  sub_2676CC64C();
  v2 = sub_26761C130(v1);
  OUTLINED_FUNCTION_19_7(v2, v3, v4);

  return sub_2676CC67C();
}

uint64_t sub_26768D518(uint64_t a1, char a2)
{
  sub_2676CBFFC();
}

uint64_t sub_26768D560(uint64_t a1, char a2)
{
  sub_2676CBFFC();
}

uint64_t sub_26768D5C4(uint64_t a1, char a2)
{
  sub_2676CBFFC();
}

uint64_t sub_26768D684(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2676CC64C();
  v3 = sub_26761C130(v2);
  OUTLINED_FUNCTION_19_7(v3, v4, v5);

  return sub_2676CC67C();
}

uint64_t sub_26768D6D0(uint64_t a1, char a2)
{
  sub_2676CC64C();
  sub_2676CBFFC();

  return sub_2676CC67C();
}

uint64_t sub_26768D748(uint64_t a1, char a2)
{
  sub_2676CC64C();
  sub_2676CBFFC();

  return sub_2676CC67C();
}

uint64_t sub_26768D7AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, v0 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__stringValue, v1);
  sub_2676C9A5C();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_26768D8C4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v3);
  sub_2676C980C();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_26768D9D0@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3();
  v9 = v8;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  sub_2676CBA1C();
  sub_26768F95C(&qword_2801CC670, MEMORY[0x277D5C808], MEMORY[0x277D5C7F0]);
  sub_2676C98BC();
  swift_getKeyPath();
  sub_26768F95C(&qword_2801CBF68, MEMORY[0x277D5C8D8], MEMORY[0x277D5C780]);
  sub_2676C988C();

  (*(v9 + 8))(v12, v7);
  swift_getKeyPath();
  sub_2676C989C();

  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_26768DC2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__to;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
  sub_2676C981C();
  v12 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__cc;
  sub_2676C981C();
  v13 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__bcc;
  sub_2676C981C();
  *(v5 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan_payloadType) = a1 & 1;
  v14 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__stringValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_2_6();
  (*(v15 + 32))(v5 + v14, a2);
  OUTLINED_FUNCTION_16_13(v5 + v11, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6();
  v19 = *(v18 + 40);
  v19(v5 + v11, a3, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_16_13(v5 + v12, v20);
  v19(v5 + v12, a4, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_16_13(v5 + v13, v21);
  v19(v5 + v13, a5, v17);
  swift_endAccess();
  return v5;
}

uint64_t sub_26768DDE0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD998, &qword_2676D3E38);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_26768D7AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  sub_267689048();
  sub_2676C9F4C();
  OUTLINED_FUNCTION_1_26();
  v16 = sub_2676148C4(v14, &qword_2801CD990, &qword_2676D3E30, v15);

  v17 = MEMORY[0x277D837D0];
  sub_2676C956C();

  (*(v5 + 8))(v8, v3);
  v23 = v3;
  v24 = v17;
  v25 = v16;
  OUTLINED_FUNCTION_4_28();
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_2676C933C();
  return (*(v10 + 8))(v13, v18);
}

uint64_t sub_26768E050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2676CB48C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9A8, &qword_2676D3E40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  MEMORY[0x28223BE20](v8 - 8);
  sub_26768D7AC();
  sub_26768D9D0(v7);
  v9 = type metadata accessor for PromptForStringProducer(0);
  v19[3] = v9;
  v19[4] = sub_26768F95C(&qword_2801CD9B0, type metadata accessor for PromptForStringProducer, &unk_2676D3F20);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_26768D8A0();
  sub_26768D8AC();
  sub_26768D8B8();
  v11 = *(a1 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan_payloadType);
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  *boxed_opaque_existential_1 = sub_2676CB42C();
  *(boxed_opaque_existential_1 + 8) = 0;
  *(boxed_opaque_existential_1 + *(v9 + 36)) = v11;
  v12 = sub_2676C9B9C();
  swift_allocObject();
  v13 = sub_2676C9B8C();
  v18[3] = v12;
  v18[4] = MEMORY[0x277D5BD58];
  v18[0] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9B8, &qword_2676D3E48);
  swift_allocObject();
  v18[0] = sub_2676C99DC();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9C0, &qword_2676D3E50);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD9C8, &qword_2676D3E58);
  v16 = sub_2676148C4(&qword_2801CD9D0, &qword_2801CD9B8, &qword_2676D3E48, MEMORY[0x277D5BB00]);
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_2676C93CC();
}

void sub_26768E378(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v3;
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 8);
    v9[0] = *a1;
    v9[1] = v7;
    sub_26768E3E4(v9, v8);
    v3 = v8[0];
    v6 = v8[1];
  }

  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
}

void sub_26768E3E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v5 = sub_2676CBE4C();
  __swift_project_value_buffer(v5, qword_2801CDC90);
  v6 = sub_2676CBE2C();
  v7 = sub_2676CC23C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2675D4000, v6, v7, "#ResolveString doing potentially fatal unwrap", v8, 2u);
    MEMORY[0x26D5FEA80](v8, -1, -1);
  }

  if (v3)
  {
    *a2 = v4;
    a2[1] = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26768E4EC()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__stringValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__to;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_2_6();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__cc, v4);
  v6(v0 + OBJC_IVAR____TtC16SiriMailInternal17ResolveStringPlan__bcc, v4);
  return v0;
}

void sub_26768E608(uint64_t a1)
{
  sub_26768E734(319, &qword_2801CD958, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5BC20]);
  if (v1 <= 0x3F)
  {
    sub_26768E734(319, &qword_2801CC9F0, &qword_2801CC9F8, &unk_2676CFE90, MEMORY[0x277D5B9E8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26768E734(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_26768E7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResolveStringPlan(0);

  return sub_2676C950C();
}

uint64_t sub_26768E80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

uint64_t sub_26768E88C()
{
  sub_26768E4EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for ReplyOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PayloadType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26768EAB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2676CC50C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26768EB08(char a1)
{
  if (a1)
  {
    return 2036625250;
  }

  else
  {
    return 0x7463656A627573;
  }
}

uint64_t sub_26768EB5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26768EAB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26768EB8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26768EB08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26768EBBC()
{
  result = qword_2801CD980;
  if (!qword_2801CD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CD980);
  }

  return result;
}

uint64_t sub_26768EC74(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v3);
  v2[5] = OUTLINED_FUNCTION_2_0();
  v4 = sub_2676C90FC();
  v2[6] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v2[7] = v5;
  v2[8] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v2[9] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v7);
  v2[10] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676C99CC();
  v2[11] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v2[12] = v9;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v10 = sub_2676C9DDC();
  v2[15] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v2[16] = v11;
  v2[17] = OUTLINED_FUNCTION_2_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v12);
  v2[18] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_26768EE74, 0, 0);
}

uint64_t sub_26768EE74()
{
  v1 = type metadata accessor for PromptForStringProducer(0);
  v2 = sub_2676A21D8();
  v3 = sub_2676A21D8();
  v4 = sub_2676A21D8();
  v5 = *(v2 + 16);
  v6 = *(v3 + 16);

  v8 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v4 + 16);

  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v11 >= 2)
  {

LABEL_7:
    v16 = 0;
    goto LABEL_9;
  }

  v12 = v0[18];
  sub_267698E44(v2);

  v13 = sub_2676C8C8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v15 = v0[18];
  if (EnumTagSinglePayload == 1)
  {
    sub_26762C73C(v0[18]);
    goto LABEL_7;
  }

  v16 = sub_267626550();
  (*(*(v13 - 8) + 8))(v15, v13);
LABEL_9:
  v0[19] = v16;
  v17 = v0[4];
  v0[2] = MEMORY[0x277D84F90];
  if (*(v17 + *(v1 + 36)))
  {
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_14_19(v18);

    return sub_267694488(v19, v20, v21);
  }

  else
  {
    v22 = swift_task_alloc();
    v0[20] = v22;
    *v22 = v0;
    v23 = OUTLINED_FUNCTION_14_19(v22);

    return sub_267694BA0(v23, v24, v25);
  }
}

uint64_t sub_26768F0B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v4 + 168) = v1;

  if (v1)
  {
    v7 = sub_26768F724;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_26768F1D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26768F1D4()
{
  MEMORY[0x26D5FDDA0]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2676CC11C();
  }

  OUTLINED_FUNCTION_1_29();
  sub_2676C999C();
  v6 = OUTLINED_FUNCTION_7_24();
  v7(v6);
  OUTLINED_FUNCTION_3_25();
  sub_2676C9D6C();
  sub_26762D4C8(v1);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  OUTLINED_FUNCTION_21_10(v8, v9, v10, v11, v12, v13, v14, v15, v40, v43);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v16 = OUTLINED_FUNCTION_13_20();
  v17(v16);
  sub_2676C9D5C();
  sub_2676C9DAC();
  sub_2676C9DCC();
  v18 = (*(v5 + 8))(v3, v0);
  v26 = OUTLINED_FUNCTION_2_27(v18, v19, v20, v21, v22, v23, v24, v25, v41, v44, v46, v48, v50, v52);
  v27(v26);
  v28 = __swift_storeEnumTagSinglePayload(v4, 0, 1, v0);
  OUTLINED_FUNCTION_17_18(v28, v29, v30, v31, v32, v33, v34, v35, v42, v45, v47, v49, v51, v53);

  v36 = OUTLINED_FUNCTION_20_12();
  v37(v36);

  OUTLINED_FUNCTION_15_0();

  return v38();
}

uint64_t sub_26768F3EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v4 + 192) = v1;

  if (v1)
  {
    v7 = sub_26768F7E0;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_26768F50C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26768F50C()
{
  MEMORY[0x26D5FDDA0]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2676CC11C();
  }

  OUTLINED_FUNCTION_1_29();
  sub_2676C999C();
  v6 = OUTLINED_FUNCTION_7_24();
  v7(v6);
  OUTLINED_FUNCTION_3_25();
  sub_2676C9D6C();
  sub_26762D4C8(v1);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  OUTLINED_FUNCTION_21_10(v8, v9, v10, v11, v12, v13, v14, v15, v40, v43);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v16 = OUTLINED_FUNCTION_13_20();
  v17(v16);
  sub_2676C9D5C();
  sub_2676C9DAC();
  sub_2676C9DCC();
  v18 = (*(v5 + 8))(v3, v0);
  v26 = OUTLINED_FUNCTION_2_27(v18, v19, v20, v21, v22, v23, v24, v25, v41, v44, v46, v48, v50, v52);
  v27(v26);
  v28 = __swift_storeEnumTagSinglePayload(v4, 0, 1, v0);
  OUTLINED_FUNCTION_17_18(v28, v29, v30, v31, v32, v33, v34, v35, v42, v45, v47, v49, v51, v53);

  v36 = OUTLINED_FUNCTION_20_12();
  v37(v36);

  OUTLINED_FUNCTION_15_0();

  return v38();
}

uint64_t sub_26768F724()
{
  OUTLINED_FUNCTION_11_26();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_26768F7E0()
{
  OUTLINED_FUNCTION_11_26();

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_26768F89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E34E4;

  return sub_26768EC74(a1);
}

uint64_t sub_26768F95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26768F9CC(uint64_t a1)
{
  type metadata accessor for SendMailCATsSimple(319);
  if (v1 <= 0x3F)
  {
    sub_26768E734(319, &qword_2801CC9F0, &qword_2801CC9F8, &unk_2676CFE90, MEMORY[0x277D5B9E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return sub_2676CC15C();
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 - 96) = 0;
  *(v14 - 128) = 0u;
  *(v14 - 112) = 0u;
  return a14;
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return sub_2676C9D2C();
}

uint64_t OUTLINED_FUNCTION_11_26()
{
}

uint64_t OUTLINED_FUNCTION_16_13(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return sub_2676C9AAC();
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_2676CBFFC();
}

uint64_t OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_storeEnumTagSinglePayload(a10, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t sub_26768FCAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, v0 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__stringValue, v1);
  sub_2676C9A5C();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_26768FDC4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v3);
  sub_2676C980C();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_26768FED0@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3();
  v9 = v8;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  sub_2676CBA1C();
  sub_267690CC0(&qword_2801CC670, MEMORY[0x277D5C808], MEMORY[0x277D5C7F0]);
  sub_2676C98BC();
  swift_getKeyPath();
  sub_267690CC0(&qword_2801CBF68, MEMORY[0x277D5C8D8], MEMORY[0x277D5C780]);
  sub_2676C988C();

  (*(v9 + 8))(v12, v7);
  swift_getKeyPath();
  sub_2676C989C();

  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_26769012C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__to;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9A0, &unk_2676D22B0);
  sub_2676C981C();
  v12 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__cc;
  sub_2676C981C();
  v13 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__bcc;
  sub_2676C981C();
  *(v5 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan_payloadType) = a1 & 1;
  v14 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__stringValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_2_6();
  (*(v15 + 32))(v5 + v14, a2);
  OUTLINED_FUNCTION_16_13(v5 + v11, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6();
  v19 = *(v18 + 40);
  v19(v5 + v11, a3, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_16_13(v5 + v12, v20);
  v19(v5 + v12, a4, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_16_13(v5 + v13, v21);
  v19(v5 + v13, a5, v17);
  swift_endAccess();
  return v5;
}

uint64_t sub_2676902E0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD990, &qword_2676D3E30);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD998, &qword_2676D3E38);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_26768FCAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  sub_267689048();
  sub_2676C9F4C();
  OUTLINED_FUNCTION_1_26();
  v16 = sub_2676148C4(v14, &qword_2801CD990, &qword_2676D3E30, v15);

  v17 = MEMORY[0x277D837D0];
  sub_2676C956C();

  (*(v5 + 8))(v8, v3);
  v23 = v3;
  v24 = v17;
  v25 = v16;
  OUTLINED_FUNCTION_4_28();
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_2676C933C();
  return (*(v10 + 8))(v13, v18);
}

uint64_t sub_267690550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2676CB48C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9A8, &qword_2676D3E40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  MEMORY[0x28223BE20](v8 - 8);
  sub_26768FCAC();
  sub_26768FED0(v7);
  v9 = type metadata accessor for PromptForStringSceneHostProducer(0);
  v19[3] = v9;
  v19[4] = sub_267690CC0(&qword_2801CDA48, type metadata accessor for PromptForStringSceneHostProducer, &unk_2676D4100);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_26768FDA0();
  sub_26768FDAC();
  sub_26768FDB8();
  v11 = *(a1 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan_payloadType);
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  *boxed_opaque_existential_1 = sub_2676CB42C();
  *(boxed_opaque_existential_1 + 8) = 0;
  *(boxed_opaque_existential_1 + *(v9 + 36)) = v11;
  v12 = sub_2676C9B9C();
  swift_allocObject();
  v13 = sub_2676C9B8C();
  v18[3] = v12;
  v18[4] = MEMORY[0x277D5BD58];
  v18[0] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9B8, &qword_2676D3E48);
  swift_allocObject();
  v18[0] = sub_2676C99DC();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9C0, &qword_2676D3E50);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CD9C8, &qword_2676D3E58);
  v16 = sub_2676148C4(&qword_2801CD9D0, &qword_2801CD9B8, &qword_2676D3E48, MEMORY[0x277D5BB00]);
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_2676C93CC();
}

uint64_t sub_267690878()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__stringValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__to;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_2_6();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__cc, v4);
  v6(v0 + OBJC_IVAR____TtC16SiriMailInternal26ResolveStringSceneHostPlan__bcc, v4);
  return v0;
}

void sub_267690994(uint64_t a1)
{
  sub_26768E734(319, &qword_2801CD958, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5BC20]);
  if (v1 <= 0x3F)
  {
    sub_26768E734(319, &qword_2801CC998, &qword_2801CC9A0, &unk_2676D22B0, MEMORY[0x277D5B9E8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_267690AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResolveStringSceneHostPlan(0);

  return sub_2676C950C();
}

uint64_t sub_267690B34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

uint64_t sub_267690BB4()
{
  sub_267690878();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_267690CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267690D08(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v3);
  v2[5] = OUTLINED_FUNCTION_2_0();
  v4 = sub_2676C90FC();
  v2[6] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v2[7] = v5;
  v2[8] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v2[9] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v7);
  v2[10] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676C99CC();
  v2[11] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v2[12] = v9;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v10 = sub_2676C9DDC();
  v2[15] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v2[16] = v11;
  v2[17] = OUTLINED_FUNCTION_2_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD8, &unk_2676CD9C0);
  OUTLINED_FUNCTION_4_1(v12);
  v2[18] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_267690F08, 0, 0);
}

uint64_t sub_267690F08()
{
  v1 = type metadata accessor for PromptForStringSceneHostProducer(0);
  v2 = sub_2676A239C();
  v3 = sub_2676A239C();
  v4 = sub_2676A239C();
  v5 = *(v2 + 16);
  v6 = *(v3 + 16);

  v8 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v4 + 16);

  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v11 >= 2)
  {

LABEL_7:
    v16 = 0;
    goto LABEL_9;
  }

  v12 = v0[18];
  sub_267698E2C(v2);

  v13 = sub_2676CB14C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v15 = v0[18];
  if (EnumTagSinglePayload == 1)
  {
    sub_2676912CC(v0[18]);
    goto LABEL_7;
  }

  v16 = sub_2676262E8();
  (*(*(v13 - 8) + 8))(v15, v13);
LABEL_9:
  v0[19] = v16;
  v17 = v0[4];
  v0[2] = MEMORY[0x277D84F90];
  if (*(v17 + *(v1 + 36)))
  {
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_14_19(v18);

    return sub_267694488(v19, v20, v21);
  }

  else
  {
    v22 = swift_task_alloc();
    v0[20] = v22;
    *v22 = v0;
    v23 = OUTLINED_FUNCTION_14_19(v22);

    return sub_267694BA0(v23, v24, v25);
  }
}

uint64_t sub_267691148(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675E34E4;

  return sub_267690D08(a1);
}

void sub_267691208(uint64_t a1)
{
  type metadata accessor for SendMailCATsSimple(319);
  if (v1 <= 0x3F)
  {
    sub_26768E734(319, &qword_2801CC998, &qword_2801CC9A0, &unk_2676D22B0, MEMORY[0x277D5B9E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2676912CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD8, &unk_2676CD9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267691338(uint64_t a1, uint64_t a2)
{
  if (sub_2676C996C())
  {
    return 1;
  }

  return MEMORY[0x2821BAB40](a1, a2);
}

uint64_t sub_267691398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDA78, &qword_2676D4138);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2676CA03C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v4, a1);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
    (*(v16 + 32))(v18, v11, v15);
    v22 = sub_2676CA02C();
    MEMORY[0x28223BE20](v22);
    *(&v21 - 4) = a1;
    *(&v21 - 3) = a2;
    *(&v21 - 2) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDA80, &unk_2676D4140);
    sub_267691BF8();
    v19 = sub_2676CC0BC();

    (*(v16 + 8))(v18, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
    sub_267691B70(v11);
    return sub_2676CC13C();
  }

  return v19;
}

id sub_26769166C@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  result = swift_dynamicCastUnknownClass();
  v6 = result;
  if (result)
  {
    result = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2676916BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  return MEMORY[0x2822009F8](sub_2676916E8, 0, 0);
}

uint64_t sub_2676916E8()
{
  v1 = v0[8];
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = xmmword_2676CD5C0;
  *(v2 + 32) = v1;
  v8 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_2676917EC;
  v5 = v0[9];
  v6 = v0[7];

  return v8(v6, v2, v5);
}

uint64_t sub_2676917EC()
{

  return MEMORY[0x2822009F8](sub_267691904, 0, 0);
}

uint64_t sub_267691904()
{
  sub_2676C9ECC();
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  LOBYTE(v2) = sub_267691338(v2, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if ((v2 & 1) == 0)
  {
    v3 = v0[7];
    v5 = v3[3];
    v4 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v5);
    v6 = sub_2675E5E30(0, &qword_2801CDA60, 0x277D479E8);
    v7 = sub_267691398(v5, v6, v4);
    if (sub_267630B8C())
    {
      sub_267692C1C();
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D5FE0E0](0, v7);
      }

      else
      {
        v8 = *(v7 + 32);
      }

      v9 = v8;
      v11 = v0[12];
      v10 = v0[13];
      v13 = v0[10];
      v12 = v0[11];

      sub_2675E5E30(0, &qword_2801CDA68, 0x277D47A18);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2676CD5C0;
      *(v14 + 32) = sub_2675DDEA0(v13, v12);

      sub_267692C70(v14, v11, v10);
      result = sub_2676927E4(v9);
      v18 = result;
      if (!result)
      {
        __break(1u);
        return result;
      }

      MEMORY[0x26D5FDDA0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2676CC11C();
      }

      sub_2676CC15C();
      if (v18)
      {
        sub_2675E5E30(0, &qword_2801CDA70, 0x277D47140);
        v16 = sub_2676CC0EC();
      }

      else
      {
        v16 = 0;
      }

      [v9 setViews_];
    }

    else
    {
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_267691B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDA78, &qword_2676D4138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267691BF8()
{
  result = qword_2801CDA88;
  if (!qword_2801CDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDA80, &unk_2676D4140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDA88);
  }

  return result;
}

uint64_t ResponseFactory.makeResponseOutputWithEmailSnippet(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = OUTLINED_FUNCTION_13_5();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267691C8C()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v2 = swift_allocObject();
  v0[12] = v2;
  *(v2 + 16) = xmmword_2676CD5C0;
  *(v2 + 32) = v1;
  OUTLINED_FUNCTION_2_28(MEMORY[0x277D5BD50]);
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[13] = v4;
  *v4 = v5;
  v4[1] = sub_267691D80;
  v6 = v0[9];
  v7 = v0[7];

  return v9(v7, v2, v6);
}

uint64_t sub_267691D80()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267691E80()
{
  if (*(*(v0 + 80) + 16))
  {
    sub_2676C9ECC();
    v1 = OUTLINED_FUNCTION_4_29();
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if ((v1 & 1) == 0)
    {
      v2 = *(v0 + 56);
      v4 = v2[3];
      v3 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v4);
      v5 = sub_2675E5E30(0, &qword_2801CDA60, 0x277D479E8);
      v6 = sub_267691398(v4, v5, v3);
      if (sub_26762EC3C(v6))
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26D5FE0E0](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_19:
            sub_2676CC11C();
LABEL_9:
            sub_2676CC15C();
            if (v12)
            {
              sub_2675E5E30(0, &qword_2801CDA70, 0x277D47140);
              v10 = sub_2676CC0EC();
            }

            else
            {
              v10 = 0;
            }

            [v3 setViews_];

            goto LABEL_14;
          }

          v7 = *(v6 + 32);
        }

        v3 = v7;

        sub_2675E5E30(0, &unk_2801CDA90, 0x277D472E8);

        sub_267692F2C(v8);
        result = sub_2676927E4(v3);
        v12 = result;
        if (!result)
        {
          __break(1u);
          return result;
        }

        MEMORY[0x26D5FDDA0]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_15_0();

  return v11();
}

uint64_t ResponseFactory.makeResponseOutputWithWidgetView(_:_:_:isSpearfish:hasNextWindow:searchTerm:)()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  *(v1 + 201) = v5;
  *(v1 + 200) = v6;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 96) = v9;
  *(v1 + 152) = sub_2676C916C();
  *(v1 + 160) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267692124()
{
  if (*(*(v0 + 120) + 16) && (sub_2676C9ECC(), v1 = OUTLINED_FUNCTION_4_29(), __swift_destroy_boxed_opaque_existential_1(v0 + 16), (v1 & 1) == 0))
  {
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v14 = *(v0 + 104);
    *v10 = sub_26761C25C(*(v0 + 200), *(v0 + 201), *(v0 + 120));
    v10[1] = v13;
    v10[2] = v12;
    swift_storeEnumTagMultiPayload();
    *(v0 + 80) = v11;
    *(v0 + 88) = sub_267692854();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_2676928AC(v10, boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v16 = swift_allocObject();
    *(v0 + 168) = v16;
    *(v16 + 16) = xmmword_2676CD5C0;
    *(v16 + 32) = v14;
    OUTLINED_FUNCTION_2_28(MEMORY[0x277D5BD38]);

    v17 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 176) = v18;
    *v18 = v19;
    v18[1] = sub_267692370;
    v20 = *(v0 + 112);
    v21 = *(v0 + 96);

    return v22(v21, v0 + 56, v16, v20);
  }

  else
  {
    v2 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v3 = swift_allocObject();
    *(v0 + 184) = v3;
    *(v3 + 16) = xmmword_2676CD5C0;
    *(v3 + 32) = v2;
    OUTLINED_FUNCTION_2_28(MEMORY[0x277D5BD50]);
    v4 = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 192) = v5;
    *v5 = v6;
    v5[1] = sub_2676924D8;
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);

    return (v22)(v8, v3, v7);
  }
}

uint64_t sub_267692370()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267692478()
{
  OUTLINED_FUNCTION_3_0();
  sub_267692910(*(v0 + 160));

  OUTLINED_FUNCTION_15_0();

  return v1();
}

uint64_t sub_2676924D8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_267692604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return ResponseFactory.makeResponseOutputWithEmailSnippet(_:_:_:)(a1, a2, a3, a4);
}

uint64_t sub_2676926C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return ResponseFactory.makeResponseOutputWithWidgetView(_:_:_:isSpearfish:hasNextWindow:searchTerm:)();
}

unint64_t sub_2676927C0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2676927E4(void *a1)
{
  v1 = [a1 views];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2675E5E30(0, &qword_2801CDA70, 0x277D47140);
  v3 = sub_2676CC0FC();

  return v3;
}

unint64_t sub_267692854()
{
  result = qword_2801CBFF8;
  if (!qword_2801CBFF8)
  {
    sub_2676C916C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CBFF8);
  }

  return result;
}

uint64_t sub_2676928AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2676C916C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267692910(uint64_t a1)
{
  v2 = sub_2676C916C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ResponseProviding.makeResponseOutputWithEmailSnippet(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(a6 + 8) + **(a6 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v6 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_26761F624;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ResponseProviding.makeResponseOutputWithWidgetView(_:_:_:isSpearfish:hasNextWindow:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = (*(a10 + 16) + **(a10 + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v10 + 16) = v18;
  *v18 = v19;
  v18[1] = sub_267605CFC;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_4_29()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);

  return sub_267691338(v2, v1);
}

id sub_267692C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_26762E900(a1, v6);
  sub_2675EA76C(a2, a3, v6, &selRef_setText_);

  return v6;
}

uint64_t MailMessagePrototype.idURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2676C8E3C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  v9 = sub_2676C8DDC();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_2();
  v15 = v14 - v13;
  sub_2676C8ABC();
  sub_2676C8DBC();
  sub_2675E69E4();
  v16 = sub_2676CC30C();
  (*(v11 + 8))(v15, v9);

  v17 = sub_2676052B4(v16);
  v19 = v18;

  if (v19)
  {
    sub_2676C8E2C();
    sub_2676C8E1C();
    MEMORY[0x26D5FAAC0](0x6567617373656DLL, 0xE700000000000000);
    MEMORY[0x26D5FDD00](v17, v19);

    MEMORY[0x26D5FAAD0](47, 0xE100000000000000);
    sub_2676C8DEC();
    return (*(v4 + 8))(v8, v2);
  }

  else
  {
    v21 = sub_2676C8FFC();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v21);
  }
}

id sub_267692F2C(uint64_t a1)
{
  v2 = sub_2676C8BFC();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - v9;
  v11 = sub_2676C90FC();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_2();
  v17 = v16 - v15;
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2675DE4C4(v18);
  if (v19)
  {
  }

  else
  {
    sub_2676C90EC();
    v20 = sub_2676C90DC();
    v41 = v4;
    v21 = v10;
    v22 = v18;
    v23 = v2;
    v24 = v20;
    v26 = v25;
    (*(v13 + 8))(v17, v11);
    v27 = v24;
    v2 = v23;
    v18 = v22;
    v10 = v21;
    v4 = v41;
    sub_2675EA76C(v27, v26, v18, &selRef_setAceId_);
  }

  v28 = *(a1 + 16);
  if (v28)
  {
    v38[0] = v18;
    v42 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    v29 = sub_2675E5E30(0, &unk_2801CDAB0, 0x277D472E0);
    v31 = *(v4 + 16);
    v30 = v4 + 16;
    v40 = v31;
    v41 = v29;
    OUTLINED_FUNCTION_2_12();
    v33 = (a1 + v32);
    v34 = *(v30 + 56);
    v38[1] = a1;
    v39 = v34;
    do
    {
      v35 = v40;
      v40(v10, v33, v2);
      v35(v8, v10, v2);
      sub_267693240(v8);
      (*(v30 - 8))(v10, v2);
      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v33 += v39;
      --v28;
    }

    while (v28);

    v36 = v42;
    v18 = v38[0];
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v36, v18, &unk_2801CDAB0, 0x277D472E0, &selRef_setEmails_);
  return v18;
}

id sub_267693240(uint64_t a1)
{
  v123 = a1;
  v115 = sub_2676C8E9C();
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_2();
  v114 = v3 - v2;
  v126 = sub_2676C8EBC();
  OUTLINED_FUNCTION_3();
  v113 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v112 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v110 - v9;
  v11 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v124 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v119 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v118 = &v110 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v110 - v19;
  MEMORY[0x28223BE20](v18);
  v125 = &v110 - v21;
  sub_2676C90CC();
  OUTLINED_FUNCTION_3();
  v121 = v23;
  v122 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_2();
  v120 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v110 - v27;
  v29 = sub_2676C8FFC();
  OUTLINED_FUNCTION_3();
  v117 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_2();
  v116 = v33 - v32;
  v34 = sub_2676C90FC();
  OUTLINED_FUNCTION_3();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_2();
  v40 = v39 - v38;
  v41 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2675DE4C4(v41);
  if (v42)
  {
  }

  else
  {
    sub_2676C90EC();
    v43 = sub_2676C90DC();
    v111 = v10;
    v45 = v44;
    (*(v36 + 8))(v40, v34);
    v46 = v45;
    v10 = v111;
    sub_2675EA76C(v43, v46, v41, &selRef_setAceId_);
  }

  v47 = v123;
  MailMessagePrototype.idURL.getter(v28);
  v48 = v10;
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_2675EB7EC(v28, &unk_2801CDAC0, &unk_2676CF3A0);
  }

  else
  {
    v49 = v116;
    v50 = v117;
    (*(v117 + 32))(v116, v28, v29);
    v51 = sub_2676C8FDC();
    [v41 setIdentifier_];

    (*(v50 + 8))(v49, v29);
  }

  v52 = v126;
  v53 = v120;
  sub_2676C8BDC();
  v54 = sub_2676C905C();
  (*(v121 + 8))(v53, v122);
  [v41 setDateSent_];

  v55 = v125;
  sub_2676C8B3C();
  v56 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
  v57 = sub_2676C8C1C();
  v59 = v124;
  if (v58)
  {
    sub_2676095B4(v57, v58, v56);
  }

  v60 = sub_2676C8C4C();
  sub_2676095A8(v60, v61, v56);
  v125 = v59[1];
  v126 = (v59 + 1);
  (v125)(v55, v11);
  [v41 setFromEmail_];

  v62 = v48;
  sub_2676C8AFC();
  if (__swift_getEnumTagSinglePayload(v48, 1, v52))
  {
    sub_2675EB7EC(v48, &qword_2801CBFE0, &qword_2676D1070);
    v63 = 0;
  }

  else
  {
    v64 = v112;
    v65 = v113;
    (*(v113 + 16))(v112, v62, v52);
    sub_2675EB7EC(v62, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676C8E8C();
    sub_2675E362C();
    sub_2676CC08C();
    (*(v65 + 8))(v64, v52);
    v59 = v124;
    v63 = sub_2676CBF3C();
  }

  [v41 setMessage_];

  v66 = sub_2676C8ADC();
  v67 = *(v66 + 16);
  v122 = v41;
  if (v67)
  {
    OUTLINED_FUNCTION_3_26();
    v68 = v59[2];
    OUTLINED_FUNCTION_2_12();
    v121 = v66;
    v70 = v66 + v69;
    v71 = v59[9];
    do
    {
      v68(v20, v70, v11);
      v72 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
      v73 = sub_2676C8C1C();
      if (v74)
      {
        sub_2676095B4(v73, v74, v72);
      }

      v75 = sub_2676C8C4C();
      sub_2676095A8(v75, v76, v72);
      (v125)(v20, v11);
      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v70 += v71;
      --v67;
    }

    while (v67);

    v77 = v127;
    v41 = v122;
    v47 = v123;
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v77, v41, &unk_2801CDAD0, 0x277D47638, &selRef_setRecipientsBcc_);
  v78 = sub_2676C8A9C();
  v79 = *(v78 + 16);
  if (v79)
  {
    OUTLINED_FUNCTION_3_26();
    v80 = v124 + 2;
    v81 = v124[2];
    OUTLINED_FUNCTION_2_12();
    v121 = v78;
    v83 = v78 + v82;
    v84 = v80[7];
    v85 = v118;
    do
    {
      v81(v85, v83, v11);
      v86 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
      v87 = sub_2676C8C1C();
      if (v88)
      {
        sub_2676095B4(v87, v88, v86);
      }

      v89 = sub_2676C8C4C();
      sub_2676095A8(v89, v90, v86);
      (v125)(v85, v11);
      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v83 += v84;
      --v79;
    }

    while (v79);

    v91 = v127;
    v41 = v122;
    v47 = v123;
  }

  else
  {

    v91 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v91, v41, &unk_2801CDAD0, 0x277D47638, &selRef_setRecipientsCc_);
  v92 = sub_2676C8ACC();
  v93 = *(v92 + 16);
  v94 = v124;
  if (v93)
  {
    OUTLINED_FUNCTION_3_26();
    v95 = v94[2];
    OUTLINED_FUNCTION_2_12();
    v124 = v92;
    v97 = v92 + v96;
    v98 = v94[9];
    v99 = v119;
    do
    {
      v95(v99, v97, v11);
      v100 = [objc_allocWithZone(MEMORY[0x277D47638]) init];
      v101 = sub_2676C8C1C();
      if (v102)
      {
        sub_2676095B4(v101, v102, v100);
      }

      v103 = sub_2676C8C4C();
      sub_2676095A8(v103, v104, v100);
      (v125)(v99, v11);
      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      v97 += v98;
      --v93;
    }

    while (v93);

    v105 = v127;
    v41 = v122;
    v47 = v123;
  }

  else
  {

    v105 = MEMORY[0x277D84F90];
  }

  sub_2675EA6E8(v105, v41, &unk_2801CDAD0, 0x277D47638, &selRef_setRecipientsTo_);
  sub_2676C8BAC();
  if (v106)
  {
    v107 = sub_2676CBF3C();
  }

  else
  {
    v107 = 0;
  }

  [v41 setSubject_];

  sub_2676C8BFC();
  OUTLINED_FUNCTION_2_6();
  (*(v108 + 8))(v47);
  return v41;
}

uint64_t OUTLINED_FUNCTION_3_26()
{
  *(v1 - 88) = v0;

  return sub_2676CC46C();
}

uint64_t type metadata accessor for SendMailCATsSimple(uint64_t a1)
{
  result = qword_2801CDAE0;
  if (!qword_2801CDAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267693D64()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 91) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 90) = v6;
  *(v1 + 89) = v7;
  *(v1 + 88) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267693E18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 90);
  v4 = *(v0 + 89);
  v5 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_2676D15B0;
  *(v6 + 32) = 0x796C7065527369;
  *(v6 + 40) = 0xE700000000000000;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v5;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "isBodyChange");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  *(v6 + 96) = v4;
  *(v6 + 120) = v7;
  *(v6 + 128) = 0xD00000000000001ALL;
  *(v6 + 136) = 0x80000002676D7CB0;
  *(v6 + 144) = v3;
  *(v6 + 168) = v7;
  *(v6 + 176) = 0x7463656A627573;
  *(v6 + 184) = 0xE700000000000000;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v8 = sub_2676CB3FC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
  {
    sub_2675ED6C0(*(v0 + 56), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v6 + 192) = 0u;
    *(v6 + 208) = 0u;
  }

  else
  {
    *(v6 + 216) = v8;
    __swift_allocate_boxed_opaque_existential_1((v6 + 192));
    OUTLINED_FUNCTION_14_2();
    (*(v9 + 32))();
  }

  v10 = *(v0 + 48);
  v11 = *(v0 + 24);
  *(v6 + 224) = 2036625250;
  *(v6 + 232) = 0xE400000000000000;
  sub_2675ED65C(v11, v10, &qword_2801CBFD0, &qword_2676CDEA0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v8) == 1)
  {
    sub_2675ED6C0(*(v0 + 48), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v6 + 240) = 0u;
    *(v6 + 256) = 0u;
  }

  else
  {
    *(v6 + 264) = v8;
    __swift_allocate_boxed_opaque_existential_1((v6 + 240));
    OUTLINED_FUNCTION_14_2();
    (*(v12 + 32))();
  }

  v13 = *(v0 + 32);
  v14 = *(v0 + 91);
  *(v6 + 272) = 0xD000000000000015;
  *(v6 + 280) = 0x80000002676D7C70;
  *(v6 + 288) = v14;
  *(v6 + 312) = v7;
  *(v6 + 320) = 0x6552656C676E6973;
  *(v6 + 328) = 0xEF746E6569706963;
  v15 = 0;
  if (v13)
  {
    v15 = sub_2676CB36C();
  }

  else
  {
    *(v6 + 344) = 0;
    *(v6 + 352) = 0;
  }

  *(v6 + 336) = v13;
  *(v6 + 360) = v15;
  OUTLINED_FUNCTION_6_21();
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_267694164;
  OUTLINED_FUNCTION_10_18();

  return v18();
}

uint64_t sub_267694164()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_2676942A4()
{
  OUTLINED_FUNCTION_3_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267694318()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_27(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_267654A9C;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000018, 0x80000002676D7000, v3);
}

uint64_t sub_2676943D0()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_27(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_267652B50;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000016, 0x80000002676D7020, v3);
}

uint64_t sub_267694488(char a1, char a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  *(v4 + 57) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_2676944A4()
{
  OUTLINED_FUNCTION_12_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  OUTLINED_FUNCTION_4_30();
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = 0xE800000000000000;
  v6 = MEMORY[0x277D839B0];
  v4[3].n128_u8[0] = v1;
  v8 = OUTLINED_FUNCTION_0_27(v4, v6, v7);
  if (v0)
  {
    v8 = sub_2676CB36C();
  }

  else
  {
    v3[19] = 0;
    v3[20] = 0;
  }

  v3[18] = v0;
  v3[21] = v8;
  OUTLINED_FUNCTION_6_21();
  v9 = swift_task_alloc();
  *(v2 + 40) = v9;
  *v9 = v2;
  v9[1] = sub_2676945D8;
  OUTLINED_FUNCTION_10_18();

  return v11();
}

uint64_t sub_2676945D8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_9_8();

    return v11(v10);
  }
}

uint64_t sub_267694708()
{
  OUTLINED_FUNCTION_3_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267694768()
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 65) = v3;
  *(v1 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  *(v1 + 32) = swift_task_alloc();
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267694804()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 65);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = xmmword_2676CF3B0;
  *(v5 + 32) = 0x646E657070417369;
  *(v5 + 40) = 0xE800000000000000;
  *(v5 + 48) = v4;
  OUTLINED_FUNCTION_4_30();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;
  *(v6 + 88) = v9;
  *(v6 + 96) = v3;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0x6D614E7972657571;
  *(v6 + 136) = 0xE900000000000065;
  sub_2675ED65C(v2, v1, &qword_2801CBFD0, &qword_2676CDEA0);
  v10 = sub_2676CB3FC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
  {
    sub_2675ED6C0(*(v0 + 32), &qword_2801CBFD0, &qword_2676CDEA0);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v10;
    __swift_allocate_boxed_opaque_existential_1((v5 + 144));
    OUTLINED_FUNCTION_14_2();
    (*(v11 + 32))();
  }

  OUTLINED_FUNCTION_9_27(MEMORY[0x277D55C70]);
  v15 = v12;
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_267694A04;

  return v15(0xD00000000000001CLL, 0x80000002676D7C90, v5);
}

uint64_t sub_267694A04()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_0_9();

    return v11(v10);
  }
}

uint64_t sub_267694B38()
{
  OUTLINED_FUNCTION_3_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267694BA0(char a1, char a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  *(v4 + 57) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_1_12();
}

uint64_t sub_267694BBC()
{
  OUTLINED_FUNCTION_12_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC180, &qword_2676CDEA8);
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  OUTLINED_FUNCTION_4_30();
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = 0xE800000000000000;
  v6 = MEMORY[0x277D839B0];
  v4[3].n128_u8[0] = v1;
  v8 = OUTLINED_FUNCTION_0_27(v4, v6, v7);
  if (v0)
  {
    v8 = sub_2676CB36C();
  }

  else
  {
    v3[19] = 0;
    v3[20] = 0;
  }

  v3[18] = v0;
  v3[21] = v8;
  OUTLINED_FUNCTION_6_21();
  v9 = swift_task_alloc();
  *(v2 + 40) = v9;
  *v9 = v2;
  v9[1] = sub_267694CF0;
  OUTLINED_FUNCTION_10_18();

  return v11();
}

uint64_t sub_267694CF0()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_9_8();

    return v11(v10);
  }
}

uint64_t sub_267694E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2676CB48C();
  OUTLINED_FUNCTION_8_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CDAC0, &unk_2676CF3A0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2675ED65C(a1, &v15 - v12, &unk_2801CDAC0, &unk_2676CF3A0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2676CB40C();
  (*(v7 + 8))(a2, v3);
  sub_2675ED6C0(a1, &unk_2801CDAC0, &unk_2676CF3A0);
  return v13;
}

uint64_t sub_267694FF0(uint64_t a1, uint64_t a2)
{
  sub_2676CB48C();
  OUTLINED_FUNCTION_8_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2676CB41C();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_0_27@<X0>(__n128 *a1@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[4].n128_u64[1] = a2;
  a1[5].n128_u64[0] = v5;
  a1[5].n128_u64[1] = (v3 - 32) | 0x8000000000000000;
  a1[6].n128_u8[0] = v4;
  a1[7].n128_u64[1] = a2;
  a1[8].n128_u64[0] = 0x6552656C676E6973;
  a1[8].n128_u64[1] = 0xEF746E6569706963;
  return 0;
}

uint64_t OUTLINED_FUNCTION_6_21()
{
}

uint64_t sub_2676951B4(uint64_t a1)
{
  v2 = sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v9 = sub_2676CBE4C();
  __swift_project_value_buffer(v9, qword_2801CDC90);
  (*(v4 + 16))(v8, a1, v2);
  v10 = sub_2676CBE2C();
  v11 = sub_2676CC23C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_2676C9E4C();
    v16 = v15;
    (*(v4 + 8))(v8, v2);
    v17 = sub_2676B0B84(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2675D4000, v10, v11, "#SendMessageFlow accept(input: Input) returning .yes() for input %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  return sub_2676C974C();
}

uint64_t sub_2676953C0@<X0>(ValueMetadata *a1@<X8>)
{
  v2 = v1;
  sub_2676C9E3C();
  OUTLINED_FUNCTION_3();
  v185 = v5;
  v186 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_2();
  v184 = (v7 - v6);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC660, &qword_2676CF578);
  OUTLINED_FUNCTION_3();
  v173 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v160 = v10;
  MEMORY[0x28223BE20](v11);
  v174 = &v153 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v156 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v154 = v16;
  v155 = v15;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v153 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v171 = v20;
  v172 = v19;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v170 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB20, &unk_2676D4378);
  OUTLINED_FUNCTION_3();
  v165 = v24;
  v166 = v23;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v164 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v177 = v28;
  v178 = v27;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  v176 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v168 = v32;
  v169 = v31;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  v167 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3();
  v179 = v36;
  v180 = v35;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  v39 = &v153 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v182 = v41;
  v183 = v40;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4();
  v188 = v42;
  v44 = MEMORY[0x28223BE20](v43);
  v181 = &v153 - v45;
  MEMORY[0x28223BE20](v44);
  v187 = &v153 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB28, &qword_2676D4388);
  OUTLINED_FUNCTION_3();
  v162 = v48;
  v163 = v47;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_9_1();
  v161 = v50;
  v51 = sub_2676C9BFC();
  OUTLINED_FUNCTION_3();
  v157 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_2();
  v56 = v55 - v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB30, &unk_2676D4390);
  OUTLINED_FUNCTION_3();
  v158 = v58;
  v159 = v57;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  v61 = &v153 - v60;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v62 = sub_2676CBE4C();
  __swift_project_value_buffer(v62, qword_2801CDC90);
  v63 = sub_2676CBE2C();
  v64 = sub_2676CC23C();
  v65 = os_log_type_enabled(v63, v64);
  v189 = v1;
  if (v65)
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_2675D4000, v63, v64, "#SendMessageFlow executing action", v66, 2u);
    v2 = v189;
    OUTLINED_FUNCTION_2_5();
  }

  swift_beginAccess();
  v67 = *(v2 + 16);
  if (!(v67 >> 62))
  {
    v185 = *(v2 + 16);
    v186 = a1;
    v73 = *(v67 + 24);
    v74 = *(v67 + 32);
    v75 = *(v67 + 40);
    v174 = *(v67 + 16);
    v175 = v74;
    sub_267697500(v67);
    v184 = v75;

    sub_2676C919C();
    v76 = sub_2676C918C();
    v77 = sub_2676CBE2C();
    v78 = sub_2676CC23C();
    v79 = os_log_type_enabled(v77, v78);
    if (v76)
    {
      if (v79)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        OUTLINED_FUNCTION_44_0(&dword_2675D4000, v80, v81, "#SendMessageFlow pushing SendMailSceneHostPlan");
        OUTLINED_FUNCTION_2_5();
      }

      v82 = v189;
      sub_2675E5D38(v189 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider, &v190);
      v83 = OUTLINED_FUNCTION_9_28();
      v84(v83);
      sub_2676C979C();
      (*(v73 + 8))(v39, v76);
      v85 = *(v82 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_globals);
      sub_2675E5D38(v82 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride, v209);
      v86 = OUTLINED_FUNCTION_24_11();
      v205 = 0u;
      v206 = 0u;
      v207 = 0;
      OUTLINED_FUNCTION_7_13(v86);
      v87 = sub_2676C9B8C();
      v88 = type metadata accessor for SendMailSceneHostPlan(0);
      v89 = OUTLINED_FUNCTION_7_13(v88);
      sub_2676CBA1C();
      sub_267697538();

      sub_2676C97BC();
      *(v89 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions) = 0;
      sub_2675F95E4(v209, &v203, &qword_2801CC6A8, &unk_2676CF5F0);
      sub_2675E5D38(&v190, v202);
      sub_2675F95E4(v208, v201, &qword_2801CC6B0, &qword_2676CFC80);
      OUTLINED_FUNCTION_27_10();
      v198 = v86;
      v199 = &protocol witness table for ResponseFactory;
      v188 = v87;
      v197[0] = v87;
      sub_2676C981C();
      sub_2676C981C();
      sub_2676CB18C();
      sub_2676C981C();
      v90 = v89 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
      *v90 = 0u;
      *(v90 + 16) = 0u;
      *(v90 + 32) = 0;
      *(v89 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v85;
      swift_beginAccess();
      v91 = v85;
      sub_267614854(&v203, v90);
      swift_endAccess();
      sub_2675E5D38(v202, v89 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
      sub_2675F95E4(v201, v89 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675E5D38(v197, v89 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
      OUTLINED_FUNCTION_25_14();
      if (v195)
      {
        sub_2675EB7EC(v200, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v201, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v202);
        sub_2675EB7EC(&v203, &qword_2801CC6A8, &unk_2676CF5F0);
        __swift_destroy_boxed_opaque_existential_1(v197);
        sub_267614E14(&v194, v196);
        OUTLINED_FUNCTION_18_12();
      }

      else
      {
        sub_2676C964C();
        sub_2675EB7EC(v200, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v201, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v202);
        sub_2675EB7EC(&v203, &qword_2801CC6A8, &unk_2676CF5F0);
        __swift_destroy_boxed_opaque_existential_1(v197);
        OUTLINED_FUNCTION_18_12();
        if (v122)
        {
          sub_2675EB7EC(&v194, &off_2801CC6B8, &unk_2676CF600);
        }
      }

      sub_267614E14(v196, v89 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
      v123 = OUTLINED_FUNCTION_17_19();
      v124(v123, v187, v90);
      sub_2676A31F0(&off_2801CC6B8);
      if (v85)
      {
        v125 = v167;
        OUTLINED_FUNCTION_21_11();
        sub_26761F9A8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_11_27();
        v126 = v169;
        sub_2676C97EC();

        (*(v168 + 8))(v125, v126);
        v203 = v174;
        v204 = v85;
        OUTLINED_FUNCTION_8_24();
        (*(v177 + 8))(&qword_2676CFC80, &unk_2676CF600);
      }

      v127 = v184;
      if (v184)
      {
        v128 = v167;
        OUTLINED_FUNCTION_21_11();
        sub_26761F9A8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_11_27();
        v129 = v169;
        sub_2676C97EC();

        (*(v168 + 8))(v128, v129);
        v203 = v175;
        v204 = v127;
        OUTLINED_FUNCTION_8_24();

        v130 = OUTLINED_FUNCTION_19_8();
        v131(v130);
        sub_2675EB7EC(&v205, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v208, &qword_2801CC6B0, &qword_2676CFC80);
        sub_2675EB7EC(v209, &qword_2801CC6A8, &unk_2676CF5F0);
        off_2801CC6B8(v187, v90);
        __swift_destroy_boxed_opaque_existential_1(&v190);
      }

      else
      {

        sub_2675EB7EC(&v205, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v208, &qword_2801CC6B0, &qword_2676CFC80);
        sub_2675EB7EC(v209, &qword_2801CC6A8, &unk_2676CF5F0);
        off_2801CC6B8(v187, v90);
        __swift_destroy_boxed_opaque_existential_1(&v190);
      }

      v190 = v89;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6D8, &qword_2676CF618);
      OUTLINED_FUNCTION_7_13(v145);
      v190 = sub_2676C94CC();
      OUTLINED_FUNCTION_4_31(&qword_2801CC6E8);

      v146 = v161;
      OUTLINED_FUNCTION_23_11(sub_267697590);

      v147 = v163;
      v210 = OUTLINED_FUNCTION_3_27();
      __swift_allocate_boxed_opaque_existential_1(v209);
      v148 = v162;
      OUTLINED_FUNCTION_16_14();
      v149();
      sub_2676C960C();
      __swift_destroy_boxed_opaque_existential_1(v209);
      OUTLINED_FUNCTION_10_19();
      sub_2676C961C();
    }

    else
    {
      if (v79)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        OUTLINED_FUNCTION_44_0(&dword_2675D4000, v100, v101, "#SendMessageFlow pushing SendMailPlan");
        OUTLINED_FUNCTION_2_5();
      }

      v102 = v189;
      sub_2675E5D38(v189 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider, &v190);
      v103 = OUTLINED_FUNCTION_9_28();
      v104(v103);
      sub_2676C979C();
      (*(v73 + 8))(v39, v76);
      v105 = *(v102 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_globals);
      sub_2675E5D38(v102 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride, v209);
      v106 = OUTLINED_FUNCTION_24_11();
      v205 = 0u;
      v206 = 0u;
      v207 = 0;
      OUTLINED_FUNCTION_7_13(v106);
      v107 = sub_2676C9B8C();
      v108 = type metadata accessor for SendMailPlan(0);
      v109 = OUTLINED_FUNCTION_7_13(v108);
      sub_2676CBA1C();
      sub_267697538();

      sub_2676C97BC();
      *(v109 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions) = 0;
      sub_2675F95E4(v209, &v203, &qword_2801CC6A8, &unk_2676CF5F0);
      sub_2675E5D38(&v190, v202);
      sub_2675F95E4(v208, v201, &qword_2801CC6B0, &qword_2676CFC80);
      OUTLINED_FUNCTION_27_10();
      v198 = v106;
      v199 = &protocol witness table for ResponseFactory;
      v187 = v107;
      v197[0] = v107;
      sub_2676C8D8C();
      sub_2676C981C();
      sub_2676CB0DC();
      sub_2676C981C();
      sub_2676C981C();
      sub_2676C981C();
      v110 = v109 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
      *v110 = 0u;
      *(v110 + 16) = 0u;
      *(v110 + 32) = 0;
      *(v109 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v105;
      swift_beginAccess();
      v111 = v105;
      sub_267614854(&v203, v110);
      swift_endAccess();
      sub_2675E5D38(v202, v109 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
      sub_2675F95E4(v201, v109 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675E5D38(v197, v109 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
      OUTLINED_FUNCTION_25_14();
      if (v195)
      {
        sub_2675EB7EC(v200, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v201, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v202);
        sub_2675EB7EC(&v203, &qword_2801CC6A8, &unk_2676CF5F0);
        __swift_destroy_boxed_opaque_existential_1(v197);
        sub_267614E14(&v194, v196);
        OUTLINED_FUNCTION_18_12();
      }

      else
      {
        sub_2676C964C();
        sub_2675EB7EC(v200, &off_2801CC6B8, &unk_2676CF600);
        sub_2675EB7EC(v201, &qword_2801CC6B0, &qword_2676CFC80);
        __swift_destroy_boxed_opaque_existential_1(v202);
        sub_2675EB7EC(&v203, &qword_2801CC6A8, &unk_2676CF5F0);
        __swift_destroy_boxed_opaque_existential_1(v197);
        OUTLINED_FUNCTION_18_12();
        if (v132)
        {
          sub_2675EB7EC(&v194, &off_2801CC6B8, &unk_2676CF600);
        }
      }

      sub_267614E14(v196, v109 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
      v133 = OUTLINED_FUNCTION_17_19();
      v134(v133, v188, &qword_2801CC6B0);
      sub_2676994B8(&off_2801CC6B8);
      if (v105)
      {
        v135 = v170;
        OUTLINED_FUNCTION_21_11();
        sub_26761D288();
        swift_getKeyPath();
        OUTLINED_FUNCTION_11_27();
        v136 = v172;
        sub_2676C97EC();

        (*(v171 + 8))(v135, v136);
        v203 = v174;
        v204 = v105;
        OUTLINED_FUNCTION_8_24();
        v137 = OUTLINED_FUNCTION_19_8();
        v138(v137);
      }

      if (v184)
      {
        v139 = v170;
        OUTLINED_FUNCTION_21_11();
        sub_26761D288();
        swift_getKeyPath();
        v140 = v153;
        v141 = v172;
        sub_2676C97EC();

        (*(v171 + 8))(v139, v141);
        v142 = v156;
        sub_2676C8EAC();
        v143 = sub_2676C8EBC();
        __swift_storeEnumTagSinglePayload(v142, 0, 1, v143);
        v144 = v155;
        sub_2676C984C();

        sub_2675EB7EC(v142, &qword_2801CBFE0, &qword_2676D1070);
        (*(v154 + 8))(v140, v144);
      }

      else
      {
      }

      sub_2675EB7EC(&v205, &off_2801CC6B8, &unk_2676CF600);
      sub_2675EB7EC(v208, &qword_2801CC6B0, &qword_2676CFC80);
      sub_2675EB7EC(v209, &qword_2801CC6A8, &unk_2676CF5F0);
      MEMORY[0](v188, &qword_2801CC6B0);
      __swift_destroy_boxed_opaque_existential_1(&v190);
      v190 = v109;
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6C0, &qword_2676D43A0);
      OUTLINED_FUNCTION_7_13(v150);
      v190 = sub_2676C94CC();
      OUTLINED_FUNCTION_4_31(&qword_2801CC6D0);

      v146 = v164;
      OUTLINED_FUNCTION_23_11(sub_267697608);

      v147 = v166;
      v210 = OUTLINED_FUNCTION_3_27();
      __swift_allocate_boxed_opaque_existential_1(v209);
      v148 = v165;
      OUTLINED_FUNCTION_16_14();
      v151();
      sub_2676C960C();
      __swift_destroy_boxed_opaque_existential_1(v209);
      OUTLINED_FUNCTION_10_19();
      sub_2676C961C();
    }

    __swift_destroy_boxed_opaque_existential_1(&v190);
    (*(v148 + 8))(v146, v147);
    sub_2676C961C();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    __swift_destroy_boxed_opaque_existential_1(&v205);
    OUTLINED_FUNCTION_28_5();
    v72 = v185;
    goto LABEL_39;
  }

  if (v67 >> 62 == 1)
  {
    sub_267697500(*(v2 + 16));

    v68 = v184;
    sub_2676C9E2C();
    v69 = v186;
    v192 = v186;
    OpaqueTypeConformance2 = MEMORY[0x277D5C0F0];
    __swift_allocate_boxed_opaque_existential_1(&v190);
    v70 = v185;
    OUTLINED_FUNCTION_16_14();
    v71();
    OUTLINED_FUNCTION_10_19();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    __swift_destroy_boxed_opaque_existential_1(v209);
    (*(v70 + 8))(v68, v69);
    v72 = v67;
LABEL_39:
    sub_26769751C(v72);
    goto LABEL_40;
  }

  if (v67 == 0x8000000000000000)
  {
    sub_2675E5D38(v2 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_referenceResolver, &v191);
    LOBYTE(v190) = 0;
    (*(v157 + 104))(v56, *MEMORY[0x277D5BDF0], v51);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB38, &unk_2676D4470);
    OUTLINED_FUNCTION_7_13(v112);
    sub_2676975AC();
    v190 = sub_2676C9F5C();

    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB18, &qword_2676D4370);
    v114 = sub_2676148C4(&qword_2801CDB48, &qword_2801CDB38, &unk_2676D4470, MEMORY[0x277D5C1A8]);
    sub_2676C942C();

    v115 = v159;
    v192 = v159;
    v209[0] = v112;
    v209[1] = v113;
    v209[2] = v114;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v190);
    v116 = v158;
    OUTLINED_FUNCTION_16_14();
    v117();
    OUTLINED_FUNCTION_10_19();
    sub_2676C960C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    OUTLINED_FUNCTION_28_5();
    (*(v116 + 8))(v61, v115);
  }

  else if (v67 == 0x8000000000000008)
  {
    v92 = v160;
    sub_2676C9F8C();
    v192 = &type metadata for Cancelled;
    OpaqueTypeConformance2 = sub_26765170C();
    v93 = sub_2676C9EFC();
    OUTLINED_FUNCTION_7_13(v93);
    v94 = sub_2676C9F0C();
    v192 = v93;
    OpaqueTypeConformance2 = MEMORY[0x277D5C188];
    v190 = v94;
    v96 = v174;
    v95 = v175;
    sub_2676C9F6C();
    v97 = v173;
    v98 = *(v173 + 8);
    v98(v92, v95);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    v192 = v95;
    OpaqueTypeConformance2 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
    v99 = __swift_allocate_boxed_opaque_existential_1(&v190);
    (*(v97 + 16))(v99, v96, v95);
    OUTLINED_FUNCTION_10_19();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    OUTLINED_FUNCTION_28_5();
    v98(v96, v95);
  }

  else
  {
    v118 = v174;
    sub_2676C9F8C();
    v119 = v175;
    v192 = v175;
    OpaqueTypeConformance2 = OUTLINED_FUNCTION_0_13(&qword_2801CC668, &qword_2801CC660, &qword_2676CF578);
    v120 = __swift_allocate_boxed_opaque_existential_1(&v190);
    v121 = v173;
    (*(v173 + 16))(v120, v118, v119);
    OUTLINED_FUNCTION_10_19();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    sub_2676C961C();
    OUTLINED_FUNCTION_2_29();
    sub_2676C961C();
    OUTLINED_FUNCTION_28_5();
    (*(v121 + 8))(v118, v119);
  }

LABEL_40:
  sub_2676C961C();
  return __swift_destroy_boxed_opaque_existential_1(&v190);
}

uint64_t sub_267696CE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v5;
  v6[5] = v4;
  swift_beginAccess();

  sub_267696D80(v6);
  swift_endAccess();
}

unint64_t sub_267696D80(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v5 = sub_2676CBE4C();
  __swift_project_value_buffer(v5, qword_2801CDC90);
  sub_267697500(v4);
  sub_267697500(a1);
  v6 = sub_2676CBE2C();
  v7 = sub_2676CC23C();
  sub_26769751C(v4);
  sub_26769751C(a1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    sub_267697500(v4);
    v9 = sub_267696FB8(v4);
    v11 = v10;
    sub_26769751C(v4);
    v12 = sub_2676B0B84(v9, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_267696FB8(a1);
    v15 = sub_2676B0B84(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2675D4000, v6, v7, "#SendMessageFlow change state from: %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
    sub_26769751C(v4);
  }

  else
  {

    sub_26769751C(v4);
  }

  *v2 = a1;

  return sub_267697500(a1);
}

uint64_t sub_267696F64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_267696D80(0x8000000000000010);
  return swift_endAccess();
}

uint64_t sub_267696FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      MEMORY[0x26D5FDD00](*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
      MEMORY[0x26D5FDD00](41, 0xE100000000000000);
      return 0x28726F727265;
    }

    else
    {
      v3 = 0x656C6C65636E6163;
      if (a1 != 0x8000000000000008)
      {
        v3 = 1701736292;
      }

      if (a1 == 0x8000000000000000)
      {
        return 0xD000000000000019;
      }

      else
      {
        return v3;
      }
    }
  }

  else
  {

    sub_2676CC3FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB18, &qword_2676D4370);
    v2 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v2);

    MEMORY[0x26D5FDD00](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_267697148()
{
  sub_26769751C(*(v0 + 16));
  v1 = OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow__sendMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_linkServicesProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_featureFlags);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_referenceResolver);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailFlow_resolverOverride);

  return v0;
}

uint64_t sub_267697204()
{
  sub_267697148();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SendMailFlow(uint64_t a1)
{
  result = qword_2801CDB00;
  if (!qword_2801CDB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676972B0(uint64_t a1)
{
  sub_267697368(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_267697368(uint64_t a1)
{
  if (!qword_2801CDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CC658, &qword_2676D45A0);
    v1 = sub_2676C97CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CDB10);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_16SiriMailInternal04SendB4FlowC5StateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2676973E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_26769743C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
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

unint64_t *sub_26769748C(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_267697500(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_26769751C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_267697538()
{
  result = qword_2801CC670;
  if (!qword_2801CC670)
  {
    sub_2676CBA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC670);
  }

  return result;
}

unint64_t sub_2676975AC()
{
  result = qword_2801CDB40;
  if (!qword_2801CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDB40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_27()
{
  *(v4 - 136) = v1;
  *(v0 + 296) = v2;
  *(v0 + 304) = v3;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_31(unint64_t *a1)
{
  v4 = MEMORY[0x277D5B828];

  return sub_2676148C4(a1, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_8_24()
{

  return sub_2676C984C();
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1)
{

  return sub_2676C938C();
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  *(v1 - 176) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;

  return sub_2676C9B9C();
}

uint64_t OUTLINED_FUNCTION_25_14()
{

  return sub_2675F95E4(v0 + 464, v0 + 344, v1, v2);
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return sub_2675F95E4(v3 - 256, v0 + 464, v1, v2);
}

uint64_t SendMailIntentPrototype.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v0);
  v2 = &v29 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD860, &unk_2676D39A0);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v4);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2676CC3FC();
  MEMORY[0x26D5FDD00](540700532, 0xE400000000000000);
  v8 = sub_2676C8CDC();
  v9 = sub_2676C8C8C();
  v10 = MEMORY[0x26D5FDDD0](v8, v9);
  v12 = v11;

  MEMORY[0x26D5FDD00](v10, v12);

  OUTLINED_FUNCTION_10_20();
  sub_2676C8CAC();
  v13 = MEMORY[0x26D5FDDD0]();
  v15 = v14;

  MEMORY[0x26D5FDD00](v13, v15);

  OUTLINED_FUNCTION_9_29();
  sub_2676C8CFC();
  v16 = MEMORY[0x26D5FDDD0]();
  v18 = v17;

  MEMORY[0x26D5FDD00](v16, v18);

  OUTLINED_FUNCTION_5_22();
  v29 = sub_2676C8D4C();
  v30 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v20 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v20);

  OUTLINED_FUNCTION_7_25();
  sub_2676C8D1C();
  v21 = sub_26762D208();
  v23 = v22;
  sub_2675EB7EC(v7, &qword_2801CBFE0, &qword_2676D1070);
  v29 = v21;
  v30 = v23;
  sub_2676CBFBC();
  OUTLINED_FUNCTION_12_17();

  MEMORY[0x26D5FDD00](0xD000000000000014, 0x80000002676D7D80);
  v24 = *(sub_2676C8C9C() + 16);

  v29 = v24;
  sub_2676CC56C();
  OUTLINED_FUNCTION_12_17();

  OUTLINED_FUNCTION_4_32();
  sub_2676C8D3C();
  sub_2676CBFBC();
  OUTLINED_FUNCTION_12_17();

  MEMORY[0x26D5FDD00](0xD000000000000010, 0x80000002676D7DA0);
  sub_2676C8D6C();
  v25 = sub_2676CC2EC();
  v27 = v26;
  sub_2675EB7EC(v2, &qword_2801CC3D0, &qword_2676D1D80);
  MEMORY[0x26D5FDD00](v25, v27);

  return v31;
}

uint64_t sub_267697B4C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v5 = sub_2676CB48C();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_2();
  v64 = v8 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC440, &qword_2676CEEF0);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v65 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCED8, &unk_2676D1390);
  OUTLINED_FUNCTION_4_1(v11);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v62 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v14);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v68 = sub_2676C8BFC();
  OUTLINED_FUNCTION_3();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_2();
  v23 = v22 - v21;
  v24 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_2();
  v30 = v29 - v28;
  v61 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC508, &qword_2676CF260);
    *(swift_allocObject() + 16) = xmmword_2676CDE20;
    sub_2676C8B3C();
    sub_2676C8B9C();
    sub_2676C8AAC();
    sub_2676C8AEC();
  }

  else
  {
    v31 = sub_2676C8ACC();
    MEMORY[0x28223BE20](v31);
    *(&v59 - 2) = v3;
    v33 = sub_2675DE9C0(sub_267698CEC, (&v59 - 4), v32);
    sub_2676C8B3C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267606D84();
      v33 = v57;
    }

    v34 = *(v33 + 16);
    if (v34 >= *(v33 + 24) >> 1)
    {
      sub_267606D84();
      v33 = v58;
    }

    *(v33 + 16) = v34 + 1;
    (*(v26 + 32))(v33 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v34, v30, v24);
    sub_2676C8B9C();
  }

  v35 = v68;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v36 = sub_2676CBE4C();
  __swift_project_value_buffer(v36, qword_2801CDC90);
  v63 = *(v19 + 16);
  v63(v23, v3, v35);
  v37 = sub_2676CBE2C();
  v38 = sub_2676CC23C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v60 = v17;
    v40 = v35;
    v41 = v39;
    v42 = swift_slowAlloc();
    v69[0] = v42;
    *v41 = 136315394;
    if (v61)
    {
      v43 = 6647407;
    }

    else
    {
      v43 = 7105633;
    }

    v44 = sub_2676B0B84(v43, 0xE300000000000000, v69);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2048;
    v45 = *(sub_2676C8B8C() + 16);

    v46 = v40;
    v17 = v60;
    (*(v19 + 8))(v23, v46);
    *(v41 + 14) = v45;
    _os_log_impl(&dword_2675D4000, v37, v38, "#withReply %s: number of recipients: %ld", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x26D5FEA80](v42, -1, -1);
    MEMORY[0x26D5FEA80](v41, -1, -1);
  }

  else
  {
    (*(v19 + 8))(v23, v35);
  }

  v47 = sub_2676C8BAC();
  if (v48)
  {
    v49 = v47;
    v50 = v48;
    sub_2676C9ECC();
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    v51 = v62;
    sub_2676C98EC();
    v52 = sub_2676C911C();
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
    sub_2676B3184(v51, v49, v50);

    sub_2675EB7EC(v51, &qword_2801CCED8, &unk_2676D1390);
    __swift_destroy_boxed_opaque_existential_1(v69);
    sub_2676CBFEC();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v17, v53, 1, v54);
  type metadata accessor for MailLabelCATs(0);
  sub_2676CB47C();
  sub_2676CB3BC();
  v55 = v65;
  sub_26761A2EC(v17);

  sub_2676CC68C();
  sub_2675EB7EC(v55, &qword_2801CC440, &qword_2676CEEF0);
  sub_2676C8BBC();
  sub_2675EB7EC(v17, &qword_2801CBFD0, &qword_2676CDEA0);
  return (v63)(v67, v3, v68);
}

uint64_t MailMessagePrototype.debugDescription.getter()
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB50, &unk_2676D4480);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_9_1();
  v66 = v1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD860, &unk_2676D39A0);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_1();
  v64 = v3;
  v4 = sub_2676C90CC();
  OUTLINED_FUNCTION_3();
  v63 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_2();
  v9 = v8 - v7;
  v10 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_2();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v17);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_2676CC3FC();
  MEMORY[0x26D5FDD00](540697705, 0xE400000000000000);
  v21 = sub_2676C8ABC();
  MEMORY[0x26D5FDD00](v21);

  MEMORY[0x26D5FDD00](0x203A6F740ALL, 0xE500000000000000);
  sub_2676C8ACC();
  OUTLINED_FUNCTION_11_28();
  v23 = v22;
  v25 = v24;

  MEMORY[0x26D5FDD00](v23, v25);

  OUTLINED_FUNCTION_10_20();
  sub_2676C8A9C();
  OUTLINED_FUNCTION_11_28();
  v27 = v26;
  v29 = v28;

  MEMORY[0x26D5FDD00](v27, v29);

  OUTLINED_FUNCTION_9_29();
  sub_2676C8ADC();
  OUTLINED_FUNCTION_11_28();
  v31 = v30;
  v33 = v32;

  MEMORY[0x26D5FDD00](v31, v33);

  OUTLINED_FUNCTION_5_22();
  v68 = sub_2676C8BAC();
  v69 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v35 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v35);

  OUTLINED_FUNCTION_7_25();
  sub_2676C8AFC();
  v36 = sub_26762D208();
  v38 = v37;
  sub_2675EB7EC(v20, &qword_2801CBFE0, &qword_2676D1070);
  v68 = v36;
  v69 = v38;
  v39 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v39);

  MEMORY[0x26D5FDD00](0x3A7265646E65730ALL, 0xE900000000000020);
  sub_2676C8B3C();
  sub_2676CC49C();
  (*(v12 + 8))(v16, v10);
  MEMORY[0x26D5FDD00](0x6F54796C7065720ALL, 0xEA0000000000203ALL);
  sub_2676C8B8C();
  OUTLINED_FUNCTION_11_28();
  v41 = v40;
  v43 = v42;

  MEMORY[0x26D5FDD00](v41, v43);

  MEMORY[0x26D5FDD00](0x6E6553657461640ALL, 0xEB00000000203A74);
  sub_2676C8BDC();
  sub_2676988D0();
  v44 = sub_2676CC56C();
  MEMORY[0x26D5FDD00](v44);

  v45 = *(v63 + 8);
  v45(v9, v4);
  MEMORY[0x26D5FDD00](0x636552657461640ALL, 0xEF203A6465697665);
  sub_2676C8A7C();
  v46 = sub_2676CC56C();
  MEMORY[0x26D5FDD00](v46);

  v45(v9, v4);
  MEMORY[0x26D5FDD00](0x3A6461655273690ALL, 0xE900000000000020);
  v47 = sub_2676C8B2C();
  v48 = (v47 & 1) == 0;
  if (v47)
  {
    v49 = 1702195828;
  }

  else
  {
    v49 = 0x65736C6166;
  }

  if (v48)
  {
    v50 = 0xE500000000000000;
  }

  else
  {
    v50 = 0xE400000000000000;
  }

  MEMORY[0x26D5FDD00](v49, v50);

  MEMORY[0x26D5FDD00](0x3A6B6E754A73690ALL, 0xE900000000000020);
  v51 = sub_2676C8B1C();
  v52 = (v51 & 1) == 0;
  if (v51)
  {
    v53 = 1702195828;
  }

  else
  {
    v53 = 0x65736C6166;
  }

  if (v52)
  {
    v54 = 0xE500000000000000;
  }

  else
  {
    v54 = 0xE400000000000000;
  }

  MEMORY[0x26D5FDD00](v53, v54);

  MEMORY[0x26D5FDD00](0x756269727474610ALL, 0xED0000203A736574);
  v55 = sub_2676C8A6C();
  v56 = sub_2676C8A5C();
  v57 = MEMORY[0x26D5FDDD0](v55, v56);
  v59 = v58;

  MEMORY[0x26D5FDD00](v57, v59);

  OUTLINED_FUNCTION_4_32();
  sub_2676C8B6C();
  v60 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v60);

  MEMORY[0x26D5FDD00](0x786F626C69616D0ALL, 0xEA0000000000203ALL);
  sub_2676C8B7C();
  sub_2676CBFBC();
  OUTLINED_FUNCTION_12_17();

  return v70;
}

unint64_t sub_2676988D0()
{
  result = qword_2801CC4A8;
  if (!qword_2801CC4A8)
  {
    sub_2676C90CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC4A8);
  }

  return result;
}

BOOL sub_267698928(uint64_t a1)
{
  v2 = sub_2676C8A9C();
  v10 = a1;
  v3 = sub_2676A2748(sub_267698D0C, v9, v2);

  if (v3)
  {
    return 0;
  }

  else
  {
    v5 = sub_2676C8ADC();
    MEMORY[0x28223BE20](v5);
    v8[2] = a1;
    v6 = sub_2676A2748(sub_267698D2C, v8, v5);

    return !v6;
  }
}

uint64_t sub_267698A24(uint64_t a1)
{
  v1 = sub_2676C8C4C();
  v3 = v2;
  if (v1 == sub_2676C8C4C() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_2676CC59C();
  }

  return v6 & 1;
}

uint64_t sub_267698ABC(char a1)
{
  if (a1)
  {
    return 6647407;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_267698ADC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2676CC50C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for ReplyOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_267698C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267698ADC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267698C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267698ABC(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_267698C98()
{
  result = qword_2801CDB58;
  if (!qword_2801CDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDB58);
  }

  return result;
}

void OUTLINED_FUNCTION_4_32()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_5_22()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_7_25()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_9_29()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_10_20()
{

  JUMPOUT(0x26D5FDD00);
}

void OUTLINED_FUNCTION_11_28()
{

  JUMPOUT(0x26D5FDDD0);
}

void OUTLINED_FUNCTION_12_17()
{

  JUMPOUT(0x26D5FDD00);
}

uint64_t sub_267698EB4()
{
  OUTLINED_FUNCTION_59_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  if (v0)
  {
    OUTLINED_FUNCTION_14_2();
    v3 = OUTLINED_FUNCTION_64_4();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_57_9();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_267698F3C()
{
  OUTLINED_FUNCTION_59_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  if (v2)
  {
    sub_2675F95E4(v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v0, &qword_2801CC3D8, &unk_2676CEC00);
  }

  v4 = OUTLINED_FUNCTION_57_9();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26769901C()
{
  OUTLINED_FUNCTION_59_3();
  v1(0);
  if (v0)
  {
    OUTLINED_FUNCTION_14_2();
    v2 = OUTLINED_FUNCTION_64_4();
    v3(v2);
  }

  v4 = OUTLINED_FUNCTION_57_9();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_2676990A4()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB9AC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t SendMailPlan.__allocating_init()()
{
  v0 = swift_allocObject();
  SendMailPlan.init()();
  return v0;
}

uint64_t sub_267699180()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8D4C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676991E8()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CDC();
  *v0 = result;
  return result;
}

uint64_t sub_26769923C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CAC();
  *v0 = result;
  return result;
}

uint64_t sub_267699290()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676C8CFC();
  *v0 = result;
  return result;
}

uint64_t sub_267699308(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_49_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4_1(v5);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_1();
  sub_2675F95E4(a1, v1, &qword_2801CBFE0, &qword_2676D1070);
  return sub_2676C8D2C();
}

uint64_t sub_2676993D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC748, &unk_2676CF7E0);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  sub_2675F95E4(a1, &v12 - v9, &qword_2801CC748, &unk_2676CF7E0);
  return a5(v10);
}

uint64_t sub_2676994B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3();
  v11 = v10;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  (*(v11 + 16))(&v16 - v13, v1 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask, v9);
  (*(v5 + 16))(v8, a1, v3);
  sub_2676C97AC();
  (*(v5 + 8))(a1, v3);
  return (*(v11 + 8))(v14, v9);
}

void (*sub_26769965C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v2[5] = v3;
  v2[6] = __swift_coroFrameAllocStub(*(v5 + 64));
  (*(v4 + 16))();
  OUTLINED_FUNCTION_49_1();
  v2[7] = sub_2676C978C();
  return sub_26765BF6C;
}

uint64_t sub_267699768(void (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_1();
  (*(v6 + 16))(v2, v1 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask, v4);
  a1(v4);
  return (*(v6 + 8))(v2, v4);
}

uint64_t SendMailPlan.init()()
{
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v1, v2, MEMORY[0x277D5C7F0]);
  sub_2676C97BC();
  *(v0 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions) = 0;
  sub_2676CB38C();
  v3 = sub_2676CB37C();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v13 = &type metadata for LinkServicesProvider;
  v14 = &protocol witness table for LinkServicesProvider;
  v4 = sub_2676C9B9C();
  OUTLINED_FUNCTION_7_13(v4);
  v11[3] = v4;
  v11[4] = &protocol witness table for ResponseFactory;
  v11[0] = sub_2676C9B8C();
  sub_2676C8D8C();

  sub_2676C981C();
  sub_2676CB0DC();
  sub_2676C981C();
  sub_2676C981C();
  sub_2676C981C();
  v5 = v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals) = v3;
  swift_beginAccess();
  v6 = v3;
  sub_267614854(v19, v5);
  swift_endAccess();
  sub_2676149CC(v12, v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
  sub_2675F95E4(v17, v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
  sub_2676149CC(v11, v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
  sub_2675F95E4(v15, &v8, &off_2801CC6B8, &unk_2676CF600);
  if (v9)
  {

    sub_267662EC4(v15, &off_2801CC6B8, &unk_2676CF600);
    sub_267662EC4(v17, &qword_2801CC6B0, &qword_2676CFC80);
    sub_267662EC4(v19, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    sub_267614E14(&v8, v10);
  }

  else
  {
    sub_2676C964C();

    sub_267662EC4(v15, &off_2801CC6B8, &unk_2676CF600);
    sub_267662EC4(v17, &qword_2801CC6B0, &qword_2676CFC80);
    sub_267662EC4(v19, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v9)
    {
      sub_267662EC4(&v8, &off_2801CC6B8, &unk_2676CF600);
    }
  }

  sub_267614E14(v10, v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
  return v0;
}

void sub_267699BCC()
{
  OUTLINED_FUNCTION_21_1();
  v194 = v0;
  v3 = v2;
  v201 = v4;
  sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v198 = v6;
  v199 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v197 = v8 - v7;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v187 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v11);
  v12 = sub_2676C9EAC();
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_11_5(v17 - v16);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v177 = v18;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v20);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v175 = v21;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v25 = OUTLINED_FUNCTION_4_1(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD290, &qword_2676D24C0);
  OUTLINED_FUNCTION_4_1(v29);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD298, &unk_2676D1FC0);
  OUTLINED_FUNCTION_3();
  v180 = v33;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC650, &unk_2676CF560);
  OUTLINED_FUNCTION_4_1(v36);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v38);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v182 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v43);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_1();
  v195 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_3();
  v186 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v50);
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v203 = v51;
  v204 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v171 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v171 - v58;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v192 = v14;
  v193 = v12;
  v196 = v46;
  v183 = v32;
  v60 = sub_2676CBE4C();
  v200 = __swift_project_value_buffer(v60, qword_2801CDC90);
  v61 = sub_2676CBE2C();
  v62 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v62))
  {
    v63 = OUTLINED_FUNCTION_17_3();
    *v63 = 0;
    _os_log_impl(&dword_2675D4000, v61, v62, "#SendMailPlan accept(input:)", v63, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v64 = v3;
  sub_2676C9E5C();
  v65 = v203;
  v66 = v204;
  v67 = *(v204 + 88);
  v68 = OUTLINED_FUNCTION_49_1();
  v69 = v67(v68);
  v70 = *MEMORY[0x277D5C160];
  v71 = v59;
  v72 = *(v66 + 8);
  v72(v71, v65);
  v202 = v64;
  if (v69 == v70)
  {
    v172 = v67;
    sub_2676C9E5C();
    sub_2676371E0();
    if (v73)
    {
      sub_2676CA77C();

      v74 = v195;
      sub_267698EB4();

      v72(v57, v65);
      v75 = OUTLINED_FUNCTION_33_4();
      v76 = v196;
      OUTLINED_FUNCTION_21_3(v75, v77, v196);
      if (!v109)
      {
        v171 = v72;
        OUTLINED_FUNCTION_51_2();
        (*(v78 + 32))(v189, v74, v76);
        v79 = *(v57 + 2);
        v80 = v184;
        v81 = OUTLINED_FUNCTION_34_9();
        (v79)(v81);
        sub_2676CBA1C();
        OUTLINED_FUNCTION_0_28();
        sub_2676A15C4(v82, v83, MEMORY[0x277D5C7F0]);
        OUTLINED_FUNCTION_34_9();
        v85 = v84;
        v195 = v86;
        sub_2676CA3FC();
        v87 = v185;
        OUTLINED_FUNCTION_21_3(v85, 1, v185);
        if (!v109)
        {
          OUTLINED_FUNCTION_23_8();
          v128 = v179;
          v129 = OUTLINED_FUNCTION_83_1();
          v130(v129);
          v131 = v190;
          sub_2676C9E5C();
          OUTLINED_FUNCTION_83_1();
          sub_26769C510();
          v171(v131, v203);
          (*(v79 + 8))(v128, v87);
          (*(v57 + 1))(v189, v76);
          goto LABEL_32;
        }

        sub_267662EC4(v85, &qword_2801CC650, &unk_2676CF560);
        v88 = v189;
        (v79)(v80, v189, v76);
        sub_2676CBADC();
        v89 = sub_2676A15C4(&qword_2801CCA48, MEMORY[0x277D5C8A8], MEMORY[0x277D5C890]);
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_34_9();
        sub_2676CA3FC();
        v90 = v183;
        OUTLINED_FUNCTION_21_3(v79, 1, v183);
        if (!v109)
        {
          (*(v180 + 32))(v181, v79, v90);
          KeyPath = swift_getKeyPath();
          OUTLINED_FUNCTION_1_30();
          sub_2676A15C4(v133, v134, MEMORY[0x277D5C780]);
          OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_55_2();
          v204 = v89;
          sub_2676CA3EC();

          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v135);
          sub_267662EC4(v1, &qword_2801CC428, &unk_2676CEDD0);
          if (EnumTagSinglePayload == 1)
          {
            v137 = v174;
            sub_26761D288();
            swift_getKeyPath();
            OUTLINED_FUNCTION_23_8();
            v138 = v176;
            sub_2676C97EC();

            OUTLINED_FUNCTION_27_5();
            v139(v137, v138);
            v140 = v178;
            sub_2676C983C();
            OUTLINED_FUNCTION_27_5();
            v141(KeyPath, v140);
            swift_getKeyPath();
            v142 = sub_26769965C(v205);
            v143 = sub_2676CA3DC();
            if (__swift_getEnumTagSinglePayload(v144, 1, v135))
            {
              v145 = OUTLINED_FUNCTION_29_9();
              v143(v145);

              v146 = OUTLINED_FUNCTION_30_8();
              v142(v146);
            }

            else
            {
              v155 = swift_getKeyPath();
              swift_getKeyPath();
              v156 = v173;
              sub_2676CA3EC();

              v157 = OUTLINED_FUNCTION_86_1();
              OUTLINED_FUNCTION_21_3(v157, v158, v135);
              if (v109)
              {
                sub_267662EC4(v156, &qword_2801CC428, &unk_2676CEDD0);
              }

              else
              {
                swift_getKeyPath();
                sub_2676CA89C();
                v204 = v155;

                OUTLINED_FUNCTION_14_2();
                (*(v159 + 8))(v156, v135);
              }

              sub_2676CA8AC();
              v160 = OUTLINED_FUNCTION_29_9();
              v143(v160);

              v161 = OUTLINED_FUNCTION_30_8();
              v142(v161);
            }

            v162 = sub_2676CBE2C();
            v163 = sub_2676CC23C();
            v164 = OUTLINED_FUNCTION_70_2(v163);
            v165 = v183;
            v166 = v196;
            v167 = v186;
            if (v164)
            {
              *OUTLINED_FUNCTION_17_3() = 0;
              OUTLINED_FUNCTION_4_18(&dword_2675D4000, v168, v169, "#SendMailPlan accept(input:) processed generic update message task, returning .yes");
              OUTLINED_FUNCTION_2_5();
            }

            sub_2676C974C();
            OUTLINED_FUNCTION_27_5();
            v170(v181, v165);
            (*(v167 + 8))(v189, v166);
          }

          else
          {
            v147 = sub_2676CBE2C();
            v148 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_5_7(v148))
            {
              v149 = OUTLINED_FUNCTION_17_3();
              *v149 = 0;
              _os_log_impl(&dword_2675D4000, v147, v148, "#SendMailPlan accept(input:) processed update message task, returning .yes", v149, 2u);
              OUTLINED_FUNCTION_2_5();
            }

            v150 = swift_getKeyPath();
            OUTLINED_FUNCTION_34_7();
            v151 = v181;
            sub_2676CA3EC();

            OUTLINED_FUNCTION_23_8();
            sub_2676CA3BC();
            OUTLINED_FUNCTION_34_7();
            sub_2676C9E5C();
            sub_26769C510();
            v171(v88, v203);
            OUTLINED_FUNCTION_27_5();
            v152(v150, v185);
            OUTLINED_FUNCTION_27_5();
            v153(v151, v90);
            OUTLINED_FUNCTION_27_5();
            v154(v189, v196);
          }

          goto LABEL_32;
        }

        OUTLINED_FUNCTION_27_5();
        v91();
        sub_267662EC4(v79, &qword_2801CD290, &qword_2676D24C0);
        v72 = v171;
        goto LABEL_15;
      }
    }

    else
    {
      v72(v57, v65);
      v74 = v195;
      v92 = OUTLINED_FUNCTION_33_4();
      __swift_storeEnumTagSinglePayload(v92, v93, 1, v94);
    }

    sub_267662EC4(v74, &qword_2801CC640, &unk_2676CF550);
LABEL_15:
    v67 = v172;
  }

  sub_2676C9E5C();
  v95 = OUTLINED_FUNCTION_45_4();
  if (v67(v95) != *MEMORY[0x277D5C150])
  {
    v110 = OUTLINED_FUNCTION_45_4();
    (v72)(v110);
    goto LABEL_24;
  }

  v96 = OUTLINED_FUNCTION_45_4();
  v97(v96);
  v99 = v192;
  v98 = v193;
  v100 = v191;
  (*(v192 + 32))(v191, v1, v193);
  v101 = sub_2676C9E8C();
  v103 = v102;
  v104 = sub_2676C96CC();
  v105 = [v104 identifier];

  v106 = sub_2676CBF6C();
  v108 = v107;

  v109 = v101 == v106 && v103 == v108;
  if (v109)
  {
  }

  else
  {
    sub_2676CC59C();
    OUTLINED_FUNCTION_96_1();

    if ((v101 & 1) == 0)
    {
      (*(v99 + 8))(v100, v98);
LABEL_24:
      v112 = v197;
      v111 = v198;
      v113 = v199;
      (*(v198 + 16))(v197, v202, v199);
      v114 = sub_2676CBE2C();
      v115 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_70_2(v115))
      {
        v116 = OUTLINED_FUNCTION_5_3();
        v117 = OUTLINED_FUNCTION_41_1();
        v205[0] = v117;
        *v116 = 136315138;
        sub_2676C9E5C();
        v118 = sub_2676CBFBC();
        v120 = v119;
        (*(v111 + 8))(v112, v113);
        v121 = sub_2676B0B84(v118, v120, v205);

        *(v116 + 4) = v121;
        _os_log_impl(&dword_2675D4000, v114, v115, "#SendMailPlan accept(input:): got a non USO parse, rejecting parse: %s", v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v117);
        OUTLINED_FUNCTION_33_6();
        OUTLINED_FUNCTION_30_6();
      }

      else
      {

        (*(v111 + 8))(v112, v113);
      }

      sub_2676C973C();
      goto LABEL_32;
    }
  }

  v122 = sub_2676CBE2C();
  v123 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_70_2(v123))
  {
    v72 = OUTLINED_FUNCTION_17_3();
    *v72 = 0;
    OUTLINED_FUNCTION_4_18(&dword_2675D4000, v124, v125, "#SendMailPlan got confirm DI, accepting parse");
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_34_7();
  sub_26761D2DC();
  LOBYTE(v205[0]) = 1;
  v126 = v188;
  sub_2676C984C();
  OUTLINED_FUNCTION_27_5();
  v127(v72, v126);
  sub_2676C974C();
  (*(v99 + 8))(v100, v98);
LABEL_32:
  OUTLINED_FUNCTION_20_1();
}

void sub_26769AE40()
{
  OUTLINED_FUNCTION_21_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD230, &unk_2676D4670);
  OUTLINED_FUNCTION_4_1(v2);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v78 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_1();
  v76 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB68, &qword_2676D4B60);
  OUTLINED_FUNCTION_3();
  v15 = v14;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_50_3();
  v17 = type metadata accessor for ResolveSendMailIntent(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_2();
  v21 = v20 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB70, &qword_2676D4680);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  v77 = v23;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB78, &qword_2676D4688);
  OUTLINED_FUNCTION_3();
  v71 = v24;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB80, &qword_2676D4690);
  OUTLINED_FUNCTION_3();
  v72 = v27;
  v73 = v28;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB88, &qword_2676D4698);
  OUTLINED_FUNCTION_3();
  v74 = v31;
  v75 = v32;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB90, &qword_2676D46A0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB98, &qword_2676D46A8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v38);
  sub_267699750();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v39, v40, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_1_30();
  sub_2676A15C4(v41, v42, MEMORY[0x277D5C780]);
  sub_2676C9A2C();

  (*(v15 + 8))(v1, v13);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v43 = *(v78 + 8);
  v43(v76, v5);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v44 = OUTLINED_FUNCTION_45_4();
  (v43)(v44);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_66_3(KeyPath);

  v46 = OUTLINED_FUNCTION_43_2();
  (v43)(v46);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v47 = swift_getKeyPath();
  OUTLINED_FUNCTION_66_3(v47);

  v48 = OUTLINED_FUNCTION_43_2();
  (v43)(v48);
  v67 = v43;
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v49 = swift_getKeyPath();
  OUTLINED_FUNCTION_66_3(v49);

  v50 = OUTLINED_FUNCTION_43_2();
  (v43)(v50);
  v51 = v17[11];
  v52 = sub_2676C8BFC();
  __swift_storeEnumTagSinglePayload(v21 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
  swift_beginAccess();
  sub_2675F95E4(v0 + v53, v21 + v17[12], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, v21 + v17[13], &qword_2801CC6B0, &qword_2676CFC80);
  v54 = *(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals);
  sub_2676C8D8C();
  v55 = v54;
  sub_2676C981C();
  *(v21 + v17[14]) = v55;
  sub_26761D2DC();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v56);
  sub_2676CBA1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_28_9();
  v59 = sub_2676A15C4(v57, v58, &unk_2676D3820);
  sub_2676C955C();

  sub_267662EC4(v68, &qword_2801CD230, &unk_2676D4670);
  sub_267662C60(v21);
  sub_26761D288();
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_26_10();
  sub_2676A15C4(v60, v61, MEMORY[0x277CBA358]);
  OUTLINED_FUNCTION_36_5();
  sub_2676C94EC();
  v67(v76, v5);
  OUTLINED_FUNCTION_27_5();
  v62(v77, v69);

  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_75_1();
  sub_2676C952C();

  (*(v71 + 8))(v59, v70);

  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_36_5();
  sub_2676C954C();

  (*(v73 + 8))(v76, v72);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_75_1();
  sub_2676C951C();
  (*(v75 + 8))(v59, v74);

  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_89_1();
  sub_2676C94FC();

  v63 = OUTLINED_FUNCTION_45_4();
  v64(v63);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_72_1();
  sub_2676C933C();
  v65 = OUTLINED_FUNCTION_29_0();
  v66(v65);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26769B974(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_26761D3E0(&v3, 0);
}

uint64_t sub_26769B9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD278, &unk_2676D1EA8);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2676C9CCC();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_2676CB0DC();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26769BBA8, 0, 0);
}

uint64_t sub_26769BBA8()
{
  v51 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v49 = (v0 + 16);
  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC26C();
  if (OUTLINED_FUNCTION_5_7(v3))
  {
    v4 = OUTLINED_FUNCTION_17_3();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#SendMailPlan handling cancelation", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v48 = v0;
  v6 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v5 = v0 + 28;
  v12 = v0 + 26;
  v13 = *(v5 - 7);

  sub_26761D2A4();
  (*(v10 + 104))(v9, *MEMORY[0x277D5CA20], v11);
  sub_2676C984C();
  (*(v10 + 8))(v9, v11);
  (*(v6 + 8))(v7, v8);
  *(v5 - 12) = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  v15 = v49;
  if (swift_dynamicCast())
  {
    v16 = 27;
    v17 = v48;
LABEL_9:
    (*(v17[v16] + 8))(*v5, *v12);

    v20 = sub_2676CBE2C();
    v21 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_7(v21))
    {
      v22 = OUTLINED_FUNCTION_17_3();
      *v22 = 0;
      _os_log_impl(&dword_2675D4000, v20, v21, "#SendMailPlan user cancelled or rejected, returning IntentCancelled", v22, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v23 = swift_task_alloc();
    v17[35] = v23;
    *v23 = v17;
    OUTLINED_FUNCTION_49_2(v23);
    OUTLINED_FUNCTION_5_8();

    return sub_26762E11C();
  }

  v17 = v48;
  v5 = v48 + 25;
  v15 = (v48 + 17);
  v18 = v48[21];

  v48[17] = v18;
  v19 = v18;
  OUTLINED_FUNCTION_43_2();
  if (swift_dynamicCast())
  {
    v16 = 24;
    v12 = v48 + 23;
    goto LABEL_9;
  }

  v26 = v48[21];

  v48[18] = v26;
  v27 = v26;
  if (swift_dynamicCast())
  {
    v28 = v48[11];
    v29 = v48[12];
    v48[37] = v28;
    v48[38] = v29;
    v30 = *(v48 + 104);
    if (v30 == 1)
    {
      v31 = sub_2676CBE2C();
      v32 = sub_2676CC26C();
      if (OUTLINED_FUNCTION_5_7(v32))
      {
        v33 = OUTLINED_FUNCTION_17_3();
        *v33 = 0;
        _os_log_impl(&dword_2675D4000, v31, v32, "#SendMailPlan RecipientResolutionError.contactMatchWithoutEmailHandle, returning UnsupportedContactNoEmailAddress", v33, 2u);
        OUTLINED_FUNCTION_33_6();
      }

      v34 = v48[22];

      sub_2676149CC(v34 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory, (v48 + 3));
      v48[2] = v28;
      sub_267651D60(v28, v29, 1);
      v35 = swift_task_alloc();
      v48[39] = v35;
      *v35 = v48;
      OUTLINED_FUNCTION_49_2(v35);
      OUTLINED_FUNCTION_5_8();

      return sub_2676BFAF0();
    }

    sub_267651D40(v28, v29, v30);
  }

  v37 = v48[21];

  v38 = v37;
  v39 = sub_2676CBE2C();
  v40 = sub_2676CC26C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_5_3();
    v42 = OUTLINED_FUNCTION_41_1();
    v50 = v42;
    *v41 = 136315138;
    swift_getErrorValue();
    v43 = sub_2676CC5FC();
    v45 = sub_2676B0B84(v43, v44, &v50);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_2675D4000, v39, v40, "#SendMailPlan error: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_2_5();
  }

  type metadata accessor for GenericError();
  v48[41] = swift_initStackObject();
  v46 = swift_task_alloc();
  v48[42] = v46;
  *v46 = v48;
  OUTLINED_FUNCTION_49_2(v46);
  OUTLINED_FUNCTION_5_8();

  return sub_2676C1B78();
}

uint64_t sub_26769C138()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26769C4D8, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_84_1();

    OUTLINED_FUNCTION_15_0();

    return v7();
  }
}

uint64_t sub_26769C278()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 320) = v0;

  sub_267662E0C(v3 + 16);
  if (v0)
  {
    v7 = sub_26769C4BC;
  }

  else
  {
    v7 = sub_26765F750;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26769C37C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26769C4F4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_84_1();

    OUTLINED_FUNCTION_15_0();

    return v7();
  }
}

void sub_26769C510()
{
  OUTLINED_FUNCTION_21_1();
  v160 = v0;
  v153 = v3;
  v154 = v2;
  v165 = v4;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v141 = v5;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v7);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3();
  v147 = v8;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBE0, &qword_2676D4F20);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  OUTLINED_FUNCTION_3();
  v161 = v16;
  v162 = v17;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v19);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v145 = v20;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v22);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v26);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v143 = v27;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v158 = v31;
  v159 = v30;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  v157 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9A8, &qword_2676D3E40);
  OUTLINED_FUNCTION_3();
  v36 = v35;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  v39 = &KeyPath - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3();
  v42 = v41;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  v45 = &KeyPath - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3();
  v152 = v47;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_19_1();
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_28();
  v155 = sub_2676A15C4(v49, v50, MEMORY[0x277D5C7F0]);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_30();
  v53 = sub_2676A15C4(v51, v52, MEMORY[0x277D5C780]);
  sub_2676C988C();
  v54 = v53;

  (*(v42 + 8))(v45, v40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_78_3();
  v163 = v46;
  v164 = v1;
  sub_2676C989C();

  LOBYTE(v45) = sub_2676C987C();
  v55 = *(v36 + 8);
  v150 = v36 + 8;
  v55(v39, v34);
  if (v45)
  {
    v137 = v55;
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_0();
    sub_2676C97EC();

    v56 = OUTLINED_FUNCTION_29_0();
    v57(v56);
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5();
    v58 = OUTLINED_FUNCTION_83_1();
    v59(v58);
    swift_getKeyPath();
    v60 = sub_26769965C(v166);
    v61 = v54;
    v62 = sub_2676CA3DC();
    v64 = v63;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v65))
    {
      v66 = OUTLINED_FUNCTION_29_9();
      v62(v66);

      v67 = OUTLINED_FUNCTION_30_8();
      v60(v67);
      v54 = v61;
      v55 = v137;
    }

    else
    {
      v142 = v64;
      v143 = v62;
      v144 = v60;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_36_5();
      sub_2676CA3EC();

      OUTLINED_FUNCTION_21_3(v60, 1, v65);
      if (v68)
      {
        sub_267662EC4(v60, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2();
        v69 = OUTLINED_FUNCTION_16_3();
        v70(v69);
      }

      v55 = v137;
      sub_2676CA8AC();
      v71 = OUTLINED_FUNCTION_29_9();
      v143(v71);

      v72 = OUTLINED_FUNCTION_30_8();
      v144(v72);
      v54 = v61;
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_78_3();
  sub_2676C989C();

  v73 = sub_2676C987C();
  v55(v39, v34);
  v74 = v162;
  if (v73)
  {
    v75 = v157;
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_51_2();
    v76 = v159;
    sub_2676C97EC();

    (*(v158 + 8))(v75, v76);
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5();
    v77 = OUTLINED_FUNCTION_29_0();
    v78(v77);
    swift_getKeyPath();
    v79 = sub_26769965C(v166);
    v80 = sub_2676CA3DC();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v82 = OUTLINED_FUNCTION_86_1();
    if (__swift_getEnumTagSinglePayload(v82, v83, v81))
    {
      v84 = OUTLINED_FUNCTION_29_9();
      v80(v84);

      v85 = OUTLINED_FUNCTION_30_8();
      v79(v85);
    }

    else
    {
      v150 = swift_getKeyPath();
      swift_getKeyPath();
      v86 = v138;
      sub_2676CA3EC();

      OUTLINED_FUNCTION_21_3(v86, 1, v81);
      if (v68)
      {
        sub_267662EC4(v86, &qword_2801CC428, &unk_2676CEDD0);
        v87 = v54;
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();
        v87 = v54;

        OUTLINED_FUNCTION_14_2();
        (*(v88 + 8))(v86, v81);
      }

      sub_2676CA8AC();
      v89 = OUTLINED_FUNCTION_29_9();
      v80(v89);

      v90 = OUTLINED_FUNCTION_30_8();
      v79(v90);
      v54 = v87;
    }

    v74 = v162;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_8_25();
  sub_2676A15C4(v91, v92, MEMORY[0x277D5C6A8]);
  v93 = v151;
  v95 = v163;
  v94 = v164;
  OUTLINED_FUNCTION_89_1();
  sub_2676C98AC();

  v96 = v161;
  v97 = sub_2676C987C();
  v100 = *(v74 + 8);
  v98 = v74 + 8;
  v99 = v100;
  v100(v93, v96);
  v149 = v54;
  if (v97)
  {
    v150 = v99;
    OUTLINED_FUNCTION_23_8();
    sub_26769D6B8();
    v101 = sub_2676C976C();
    OUTLINED_FUNCTION_21_3(v96, 1, v101);
    if (!v68)
    {
LABEL_32:
      OUTLINED_FUNCTION_27_5();
      v131(v94, v95);
      OUTLINED_FUNCTION_14_2();
      (*(v132 + 32))(v153, v96, v101);
      goto LABEL_35;
    }

    sub_267662EC4(v96, &qword_2801CDBE0, &qword_2676D4F20);
    sub_26761D288();
    v102 = swift_getKeyPath();
    OUTLINED_FUNCTION_34_10(v102);

    v103 = OUTLINED_FUNCTION_31_5();
    v104(v103);
    OUTLINED_FUNCTION_91_1();
    v105 = OUTLINED_FUNCTION_43_6();
    v106(v105);
    v99 = v150;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_89_1();
  sub_2676C98AC();
  v96 = v161;

  v107 = sub_2676C987C();
  v99(v93, v96);
  if (v107)
  {
    v150 = v99;
    OUTLINED_FUNCTION_23_8();
    sub_26769D6B8();
    v101 = sub_2676C976C();
    OUTLINED_FUNCTION_21_3(v96, 1, v101);
    if (!v68)
    {
      goto LABEL_32;
    }

    sub_267662EC4(v96, &qword_2801CDBE0, &qword_2676D4F20);
    sub_26761D288();
    v108 = swift_getKeyPath();
    OUTLINED_FUNCTION_34_10(v108);

    v109 = OUTLINED_FUNCTION_31_5();
    v110(v109);
    OUTLINED_FUNCTION_91_1();
    v111 = OUTLINED_FUNCTION_43_6();
    v96 = v161;
    v112(v111);
    v99 = v150;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_89_1();
  sub_2676C98AC();

  v113 = sub_2676C987C();
  v99(v93, v96);
  if (v113)
  {
    OUTLINED_FUNCTION_34_7();
    sub_26769D6B8();
    v114 = sub_2676C976C();
    OUTLINED_FUNCTION_21_3(v98, 1, v114);
    if (!v68)
    {
      OUTLINED_FUNCTION_27_5();
      v134(v164, v163);
      OUTLINED_FUNCTION_14_2();
      (*(v135 + 32))(v153, v98, v114);
      goto LABEL_35;
    }

    sub_267662EC4(v98, &qword_2801CDBE0, &qword_2676D4F20);
    sub_26761D288();
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_7();
    sub_2676C97EC();

    v115 = OUTLINED_FUNCTION_45_4();
    v116(v115);
    v117 = v148;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5();
    v118(v98, v117);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v119 = sub_2676CBE4C();
  __swift_project_value_buffer(v119, qword_2801CDC90);

  v120 = sub_2676CBE2C();
  v121 = sub_2676CC23C();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = OUTLINED_FUNCTION_5_3();
    v123 = OUTLINED_FUNCTION_41_1();
    v166[0] = v123;
    *v122 = 136315138;
    swift_getKeyPath();
    v124 = v140;
    sub_2676994A0();
    v125 = v156;
    sub_2676CA3EC();

    OUTLINED_FUNCTION_27_5();
    v126(v124, v125);
    v127 = sub_2676CBFBC();
    v129 = sub_2676B0B84(v127, v128, v166);

    *(v122 + 4) = v129;
    v130 = v164;
    _os_log_impl(&dword_2675D4000, v120, v121, "#SendMailPlan accept(input:) returning .yes() with updated target: %s", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v123);
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_30_6();
  }

  else
  {

    v130 = v164;
  }

  sub_2676C974C();
  OUTLINED_FUNCTION_27_5();
  v133(v130, v163);
LABEL_35:
  OUTLINED_FUNCTION_20_1();
}

void sub_26769D6B8()
{
  OUTLINED_FUNCTION_21_1();
  v199 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBC8, &unk_2676D4960);
  OUTLINED_FUNCTION_3();
  v192 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v11);
  v194 = sub_2676CA43C();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_2();
  v17 = v16 - v15;
  v18 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v196 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v21);
  v23 = &v181 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v24);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_50_3();
  v201 = v5;
  v198 = v3;
  v26 = sub_26762F80C(v5);
  v200 = v7;
  if ((v26 & 1) == 0)
  {
    swift_getKeyPath();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
    OUTLINED_FUNCTION_0_28();
    sub_2676A15C4(v43, v44, MEMORY[0x277D5C7F0]);
    OUTLINED_FUNCTION_1_30();
    sub_2676A15C4(v45, v46, MEMORY[0x277D5C780]);
    OUTLINED_FUNCTION_83_1();
    sub_2676CA3EC();

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v48 = OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_21_3(v48, v49, v47);
    if (v38)
    {
      sub_267662EC4(v1, &qword_2801CC428, &unk_2676CEDD0);
      v53 = MEMORY[0x277D84F90];
    }

    else
    {
      v53 = sub_2675DFE20(v201);
      OUTLINED_FUNCTION_14_2();
      (*(v54 + 8))(v1, v47);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v55 = sub_2676CBE4C();
    __swift_project_value_buffer(v55, qword_2801CDC90);

    v56 = sub_2676CBE2C();
    v57 = sub_2676CC23C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v205[0] = swift_slowAlloc();
      *v58 = 136315394;
      v198 = v42;
      if (v201)
      {
        OUTLINED_FUNCTION_42_5();
        if (v59)
        {
          v61 = 17219;
        }

        else
        {
          v61 = 4408130;
        }

        if (v59)
        {
          v62 = v60;
        }

        else
        {
          v62 = 0xE300000000000000;
        }
      }

      else
      {
        v62 = 0xE200000000000000;
        v61 = 20308;
      }

      v112 = sub_2676B0B84(v61, v62, v205);

      *(v58 + 4) = v112;
      *(v58 + 12) = 2080;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v114 = MEMORY[0x26D5FDDD0](v53, v113);
      v116 = sub_2676B0B84(v114, v115, v205);

      *(v58 + 14) = v116;
      _os_log_impl(&dword_2675D4000, v56, v57, "#SendMailPlan Replacing %s recipients with these recipients: %s", v58, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_30_6();
    }

    else
    {
    }

    swift_getKeyPath();
    v117 = sub_26769965C(v205);
    v118 = sub_2676CA3DC();
    if (!__swift_getEnumTagSinglePayload(v119, 1, v47))
    {
      sub_2675E025C(v201, v53);
    }

    v118(&v202, 0);

    (v117)(v205, 0);
    goto LABEL_61;
  }

  v197 = v13;
  v187 = v8;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v27 = sub_2676CBE4C();
  v28 = __swift_project_value_buffer(v27, qword_2801CDC90);
  v29 = v196;
  v30 = *(v196 + 16);
  v31 = v198;
  v30(v23, v198, v18);
  v32 = v195;
  v30(v195, v31, v18);
  v190 = v28;
  v33 = sub_2676CBE2C();
  v34 = sub_2676CC23C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = MEMORY[0x277D5E478];
  if (v35)
  {
    v185 = v34;
    v37 = swift_slowAlloc();
    v184 = OUTLINED_FUNCTION_41_1();
    v205[0] = v184;
    *v37 = 136315650;
    v186 = v33;
    v189 = v18;
    if (v201)
    {
      OUTLINED_FUNCTION_42_5();
      if (v38)
      {
        v40 = 17219;
      }

      else
      {
        v40 = 4408130;
      }

      if (v38)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0xE300000000000000;
      }
    }

    else
    {
      v41 = 0xE200000000000000;
      v40 = 20308;
    }

    v63 = sub_2676B0B84(v40, v41, v205);

    *(v37 + 4) = v63;
    *(v37 + 12) = 1024;
    v183 = *v36;
    v193 = *(v197 + 104);
    v191 = (v197 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v188 = v37;
    v64 = v197;
    OUTLINED_FUNCTION_75_2();
    v65();
    v66 = v201;
    v67 = sub_2676308A4(v201);
    MEMORY[0x28223BE20](v67);
    OUTLINED_FUNCTION_14_20();
    v69 = sub_2676A2650(sub_267630B90, v68, v67);

    v182 = *(v64 + 8);
    v70 = OUTLINED_FUNCTION_16_3();
    v71(v70);
    v196 = *(v196 + 8);
    (v196)(v23, v189);
    v72 = v188;
    *(v188 + 14) = v69 & 1;
    *(v72 + 18) = 1024;
    v73 = OUTLINED_FUNCTION_52_2();
    (*(v74 - 256))(v73);
    v75 = v195;
    LOBYTE(v67) = v195;
    v76 = sub_2676308A4(v66);
    MEMORY[0x28223BE20](v76);
    OUTLINED_FUNCTION_14_20();
    sub_2676A2650(sub_267630B90, v77, v76);
    OUTLINED_FUNCTION_96_1();
    v52 = v191;
    v78 = OUTLINED_FUNCTION_16_3();
    v182(v78);
    v51 = v193;
    (v196)(v75, v189);
    v31 = v188;
    *(v188 + 20) = v67 & 1;
    v79 = v186;
    _os_log_impl(&dword_2675D4000, v186, v185, "#SendMailPlan %s recipients has a list operation add recipients? %{BOOL}d, remove recipients? %{BOOL}d", v31, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v184);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_2_5();

    LOBYTE(v31) = v198;
  }

  else
  {
    v50 = *(v29 + 8);
    v50(v32, v18);
    v50(v23, v18);

    v51 = *(v197 + 104);
    v52 = (v197 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    OUTLINED_FUNCTION_75_2();
  }

  v80 = OUTLINED_FUNCTION_52_2();
  *(v81 - 256) = v51;
  v51(v80);
  v82 = v201;
  v83 = sub_2676308A4(v201);
  v84 = v52;
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_14_20();
  sub_2676A2650(sub_267630B6C, v85, v83);
  OUTLINED_FUNCTION_96_1();
  v86 = v197 + 8;
  v87 = *(v197 + 8);
  v88 = OUTLINED_FUNCTION_16_3();
  v87(v88);
  v89 = v82;
  if (v31)
  {
    v90 = v87;
    v191 = v84;
    v196 = v17;
    v197 = v86;
    v91 = sub_26762F9DC(v89);
    if (!*(v91 + 16))
    {
      v103 = v89;

      v104 = sub_2676CBE2C();
      v105 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_70_2(v105))
      {
        v106 = OUTLINED_FUNCTION_5_3();
        v107 = OUTLINED_FUNCTION_41_1();
        v205[0] = v107;
        *v106 = 136315138;
        if (v103)
        {
          OUTLINED_FUNCTION_42_5();
          if (v108)
          {
            v110 = 17219;
          }

          else
          {
            v110 = 4408130;
          }

          if (v108)
          {
            v111 = v109;
          }

          else
          {
            v111 = 0xE300000000000000;
          }
        }

        else
        {
          v111 = 0xE200000000000000;
          v110 = 20308;
        }

        v148 = sub_2676B0B84(v110, v111, v205);

        *(v106 + 4) = v148;
        OUTLINED_FUNCTION_54_7();
        _os_log_impl(v149, v150, v151, v152, v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);
        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_36_10();
      }

      v154 = v199;
      v155 = *(v199 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals);
      v156 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
      OUTLINED_FUNCTION_94_2();
      sub_2675F95E4(v154 + v156, v205, &qword_2801CC6A8, &unk_2676CF5F0);
      v204 = 0;
      v202 = 0u;
      v203 = 0u;
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBD0, &unk_2676D4EC0);
      OUTLINED_FUNCTION_7_13(v157);
      v158 = v155;
      OUTLINED_FUNCTION_41_6(MEMORY[0x277D84F90], v159, v160, v158);
      v205[0] = v161;
      v162 = swift_allocObject();
      *(v162 + 16) = v103;
      *(v162 + 24) = v154;

      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
      v164 = sub_2676A1628();
      goto LABEL_77;
    }

    v92 = sub_2676CBE2C();
    v93 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_70_2(v93))
    {
      v94 = swift_slowAlloc();
      v205[0] = swift_slowAlloc();
      *v94 = 136315394;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v96 = MEMORY[0x26D5FDDD0](v91, v95);
      v98 = sub_2676B0B84(v96, v97, v205);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      if (v201)
      {
        OUTLINED_FUNCTION_42_5();
        if (v99)
        {
          v101 = 17219;
        }

        else
        {
          v101 = 4408130;
        }

        if (v99)
        {
          v102 = v100;
        }

        else
        {
          v102 = 0xE300000000000000;
        }
      }

      else
      {
        v102 = 0xE200000000000000;
        v101 = 20308;
      }

      v120 = sub_2676B0B84(v101, v102, v205);

      *(v94 + 14) = v120;
      _os_log_impl(&dword_2675D4000, v92, v93, "#SendMailPlan Adding these recipients %s to %s", v94, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_36_10();
    }

    swift_getKeyPath();
    v121 = sub_26769965C(v205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
    OUTLINED_FUNCTION_0_28();
    sub_2676A15C4(v122, v123, MEMORY[0x277D5C7F0]);
    OUTLINED_FUNCTION_1_30();
    sub_2676A15C4(v124, v125, MEMORY[0x277D5C780]);
    v126 = sub_2676CA3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v127 = OUTLINED_FUNCTION_33_4();
    if (__swift_getEnumTagSinglePayload(v127, v128, v129))
    {

      v126(&v202, 0);

      (v121)(v205, 0);
      v89 = v201;
    }

    else
    {
      v130 = v201;
      sub_2675DFEE4(v201, v91);

      v126(&v202, 0);
      v89 = v130;

      (v121)(v205, 0);
    }

    LOBYTE(v31) = v198;
    OUTLINED_FUNCTION_75_2();
    v87 = v90;
  }

  v131 = OUTLINED_FUNCTION_52_2();
  (*(v132 - 256))(v131);
  v133 = sub_2676308A4(v89);
  v134 = v89;
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_14_20();
  sub_2676A2650(sub_267630B90, v135, v133);
  OUTLINED_FUNCTION_96_1();
  v136 = OUTLINED_FUNCTION_16_3();
  v87(v136);
  if (v31)
  {
    if (*(sub_267630350(v89) + 16))
    {
      sub_26769EDB4();

      goto LABEL_61;
    }

    v140 = sub_2676CBE2C();
    v141 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_70_2(v141))
    {
      v142 = OUTLINED_FUNCTION_5_3();
      v143 = OUTLINED_FUNCTION_41_1();
      v205[0] = v143;
      *v142 = 136315138;
      if (v134)
      {
        OUTLINED_FUNCTION_42_5();
        if (v144)
        {
          v146 = 17219;
        }

        else
        {
          v146 = 4408130;
        }

        if (v144)
        {
          v147 = v145;
        }

        else
        {
          v147 = 0xE300000000000000;
        }
      }

      else
      {
        v147 = 0xE200000000000000;
        v146 = 20308;
      }

      v165 = sub_2676B0B84(v146, v147, v205);

      *(v142 + 4) = v165;
      OUTLINED_FUNCTION_54_7();
      _os_log_impl(v166, v167, v168, v169, v170, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v143);
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_36_10();
    }

    v171 = v199;
    v172 = *(v199 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_globals);
    v173 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride;
    OUTLINED_FUNCTION_94_2();
    sub_2675F95E4(v171 + v173, v205, &qword_2801CC6A8, &unk_2676CF5F0);
    v204 = 0;
    v202 = 0u;
    v203 = 0u;
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBD0, &unk_2676D4EC0);
    OUTLINED_FUNCTION_7_13(v157);
    v174 = v172;
    OUTLINED_FUNCTION_41_6(MEMORY[0x277D84F90], v175, v176, v174);
    v205[0] = v177;
    v178 = swift_allocObject();
    *(v178 + 16) = v134;
    *(v178 + 24) = v171;

    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
    v164 = sub_2676A1628();
LABEL_77:
    OUTLINED_FUNCTION_36_5();
    sub_2676C942C();

    v205[0] = v157;
    v205[1] = v163;
    v205[2] = v164;
    swift_getOpaqueTypeConformance2();
    v138 = v200;
    sub_2676C975C();
    OUTLINED_FUNCTION_27_5();
    v179 = OUTLINED_FUNCTION_34_9();
    v180(v179);
    v137 = 0;
    goto LABEL_62;
  }

LABEL_61:
  v137 = 1;
  v138 = v200;
LABEL_62:
  v139 = sub_2676C976C();
  __swift_storeEnumTagSinglePayload(v138, v137, 1, v139);
  OUTLINED_FUNCTION_20_1();
}
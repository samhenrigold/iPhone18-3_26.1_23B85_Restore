uint64_t sub_220D1887C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D18B04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220D18B64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220D18BBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D18C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D18CAC(uint64_t a1)
{
  v1 = type metadata accessor for PrecipitationPlatterPrecipitationKind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_220D18D04()
{
  v0 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1();
  v3 = v2 - v1;
  type metadata accessor for PrecipitationPlatterTodayFirstSentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  sub_220D1C1EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_220D19DE0();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_220D19378(v3);
    }

    else
    {
      v6 = sub_220D198AC(v3);
    }
  }

  else
  {
    v6 = sub_220D18E90(v3);
  }

  v7 = v6;
  sub_220D18B64(v3, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  return v7;
}

uint64_t type metadata accessor for PrecipitationPlatterTodayFirstSentence(uint64_t a1)
{
  result = qword_27CF95908;
  if (!qword_27CF95908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D18E90(uint64_t a1)
{
  v1 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - v5;
  v7 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1C1EC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D19DE0();
      HIBYTE(v50) = v47;
      v22 = sub_220D1A0C8(&v50 + 7, v6);
      goto LABEL_9;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      sub_220D19DE0();
      sub_220D19DE0();
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_220DC17C0;
      v24 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v24, 0, 1, v25, v26, v27, v28, v29, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      v31 = v30;
      v33 = v32;

      v34 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      v35 = sub_220CEFDB0();
      *(v23 + 64) = v35;
      *(v23 + 32) = v31;
      *(v23 + 40) = v33;
      v36 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v36, 0, 1, v37, v38, v39, v40, v41, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      v43 = v42;
      v45 = v44;

      *(v23 + 96) = v34;
      *(v23 + 104) = v35;
      *(v23 + 72) = v43;
      *(v23 + 80) = v45;
      v22 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      sub_220D19DE0();
      sub_220D19DE0();
      v22 = sub_220D1A55C(1, v6, v4);
LABEL_7:
      sub_220D18B64(v4, type metadata accessor for PrecipitationTotalStringAmount);
      v46 = v6;
      break;
    default:
      v10 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D19DE0();
      BYTE6(v50) = v10;
      sub_220D19E38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_220DC17A0;
      v12 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v12, 0, 1, v13, v14, v15, v16, v17, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      v19 = v18;
      v21 = v20;

      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_220CEFDB0();
      *(v11 + 32) = v19;
      *(v11 + 40) = v21;
      v22 = sub_220DC05F0();

LABEL_9:
      v46 = v6;
      break;
  }

  sub_220D18B64(v46, type metadata accessor for PrecipitationTotalStringAmount);
  return v22;
}

uint64_t sub_220D19378(uint64_t a1)
{
  v1 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - v5;
  v7 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1C1EC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D19DE0();
      HIBYTE(v54) = v51;
      v25 = sub_220D1BB10(&v54 + 7, v6, sub_220D1B59C, 6);
      goto LABEL_9;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      sub_220D19DE0();
      sub_220D19DE0();
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_220DC1CC0;
      v27 = MEMORY[0x277D83C10];
      *(v26 + 56) = MEMORY[0x277D83B88];
      *(v26 + 64) = v27;
      *(v26 + 32) = 6;
      v28 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v28, 0, 1, v29, v30, v31, v32, v33, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v35 = v34;
      v37 = v36;

      v38 = MEMORY[0x277D837D0];
      *(v26 + 96) = MEMORY[0x277D837D0];
      v39 = sub_220CEFDB0();
      *(v26 + 104) = v39;
      *(v26 + 72) = v35;
      *(v26 + 80) = v37;
      v40 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v40, 0, 1, v41, v42, v43, v44, v45, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v47 = v46;
      v49 = v48;

      *(v26 + 136) = v38;
      *(v26 + 144) = v39;
      *(v26 + 112) = v47;
      *(v26 + 120) = v49;
      v25 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      sub_220D19DE0();
      sub_220D19DE0();
      v25 = sub_220D1A55C(6, v6, v4);
LABEL_7:
      sub_220D18B64(v4, type metadata accessor for PrecipitationTotalStringAmount);
      v50 = v6;
      break;
    default:
      v10 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D19DE0();
      BYTE6(v54) = v10;
      sub_220D1B2B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_220DC17C0;
      v12 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v12, 0, 1, v13, v14, v15, v16, v17, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v19 = v18;
      v21 = v20;

      *(v11 + 56) = MEMORY[0x277D837D0];
      v22 = sub_220CEFDB0();
      v23 = MEMORY[0x277D83B88];
      v24 = MEMORY[0x277D83C10];
      *(v11 + 32) = v19;
      *(v11 + 40) = v21;
      *(v11 + 96) = v23;
      *(v11 + 104) = v24;
      *(v11 + 64) = v22;
      *(v11 + 72) = 6;
      v25 = sub_220DC05F0();

LABEL_9:
      v50 = v6;
      break;
  }

  sub_220D18B64(v50, type metadata accessor for PrecipitationTotalStringAmount);
  return v25;
}

uint64_t sub_220D198AC(uint64_t a1)
{
  v1 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - v5;
  v7 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1C1EC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v51 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D19DE0();
      HIBYTE(v54) = v51;
      v25 = sub_220D1BB10(&v54 + 7, v6, sub_220D1BF58, 24);
      goto LABEL_9;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      sub_220D19DE0();
      sub_220D19DE0();
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_220DC1CC0;
      v27 = MEMORY[0x277D83C10];
      *(v26 + 56) = MEMORY[0x277D83B88];
      *(v26 + 64) = v27;
      *(v26 + 32) = 24;
      v28 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v28, 0, 1, v29, v30, v31, v32, v33, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v35 = v34;
      v37 = v36;

      v38 = MEMORY[0x277D837D0];
      *(v26 + 96) = MEMORY[0x277D837D0];
      v39 = sub_220CEFDB0();
      *(v26 + 104) = v39;
      *(v26 + 72) = v35;
      *(v26 + 80) = v37;
      v40 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v40, 0, 1, v41, v42, v43, v44, v45, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v47 = v46;
      v49 = v48;

      *(v26 + 136) = v38;
      *(v26 + 144) = v39;
      *(v26 + 112) = v47;
      *(v26 + 120) = v49;
      v25 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      sub_220D19DE0();
      sub_220D19DE0();
      v25 = sub_220D1A55C(24, v6, v4);
LABEL_7:
      sub_220D18B64(v4, type metadata accessor for PrecipitationTotalStringAmount);
      v50 = v6;
      break;
    default:
      v10 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D19DE0();
      BYTE6(v54) = v10;
      sub_220D1B82C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_220DC17C0;
      v12 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v12, 0, 1, v13, v14, v15, v16, v17, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v19 = v18;
      v21 = v20;

      *(v11 + 56) = MEMORY[0x277D837D0];
      v22 = sub_220CEFDB0();
      v23 = MEMORY[0x277D83B88];
      v24 = MEMORY[0x277D83C10];
      *(v11 + 32) = v19;
      *(v11 + 40) = v21;
      *(v11 + 96) = v23;
      *(v11 + 104) = v24;
      *(v11 + 64) = v22;
      *(v11 + 72) = 24;
      v25 = sub_220DC05F0();

LABEL_9:
      v50 = v6;
      break;
  }

  sub_220D18B64(v50, type metadata accessor for PrecipitationTotalStringAmount);
  return v25;
}

uint64_t sub_220D19DE0()
{
  v2 = OUTLINED_FUNCTION_3_11();
  v3(v2);
  OUTLINED_FUNCTION_6();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_220D19E38()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1A0C8(char *a1, uint64_t a2)
{
  v3 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v40[-1] - v5;
  v7 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40[-1] - v12;
  v14 = *a1;
  sub_220D1C1EC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    HIBYTE(v39) = v14;
    sub_220D1B028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v16 = MEMORY[0x277D83A80];
    *(v15 + 56) = MEMORY[0x277D839F8];
    *(v15 + 64) = v16;
    *(v15 + 32) = v17;
    v18 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v18, 0, 0, v19, v20, v21, v22, v23, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10]);
    v25 = v24;
    v27 = v26;

    *(v15 + 96) = MEMORY[0x277D837D0];
    *(v15 + 104) = sub_220CEFDB0();
    *(v15 + 72) = v25;
    *(v15 + 80) = v27;
    v28 = sub_220DC05F0();

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_220D18B64(v9, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v29 = sub_220DBF410();
    __swift_project_value_buffer(v29, qword_27CF95F48);
    sub_220D1C1EC();
    v30 = sub_220DBF3F0();
    v31 = sub_220DC0980();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136446210;
      sub_220D1C1EC();
      v34 = sub_220DC0630();
      v36 = v35;
      sub_220D18B64(v6, type metadata accessor for PrecipitationTotalStringAmount);
      v37 = sub_220D3F210(v34, v36, v40);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_220CD1000, v30, v31, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223D98FB0](v33, -1, -1);
      MEMORY[0x223D98FB0](v32, -1, -1);
    }

    else
    {

      sub_220D18B64(v6, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v28;
}

uint64_t sub_220D1A55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a1;
  v3 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v4 = MEMORY[0x28223BE20](v3);
  v95 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v104 = &v94 - v7;
  MEMORY[0x28223BE20](v6);
  v100 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v102 = *(v9 - 8);
  v103 = v9;
  MEMORY[0x28223BE20](v9);
  v101 = &v94 - v10;
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v94 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v94 - v19;
  v21 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v98 = v27;
  v106 = v28;

  v29 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v29, 0, 0, v30, v31, v32, v33, v34, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v97 = v35;
  v105 = v36;

  v96 = v3;
  v37 = *(v18 + 56);
  sub_220D1C1EC();
  v38 = v37;
  sub_220D1C1EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220D1C1EC();
      v40 = swift_getEnumCaseMultiPayload();
      v42 = v101;
      v41 = v102;
      v43 = v103;
      (*(v102 + 32))(v101, v16, v103);
      if (v40 != 1)
      {
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v67 = swift_allocObject();
        v68 = MEMORY[0x277D83B88];
        *(v67 + 16) = xmmword_220DC1CE0;
        v69 = MEMORY[0x277D83C10];
        *(v67 + 56) = v68;
        *(v67 + 64) = v69;
        *(v67 + 32) = v99;
        sub_220DBE050();
        v70 = MEMORY[0x277D83A80];
        *(v67 + 96) = MEMORY[0x277D839F8];
        *(v67 + 104) = v70;
        *(v67 + 72) = v71;
        v72 = MEMORY[0x277D837D0];
        *(v67 + 136) = MEMORY[0x277D837D0];
        v73 = sub_220CEFDB0();
        v74 = v106;
        *(v67 + 112) = v98;
        *(v67 + 120) = v74;
        *(v67 + 176) = v72;
        *(v67 + 184) = v73;
        v75 = v97;
        *(v67 + 144) = v73;
        *(v67 + 152) = v75;
        *(v67 + 160) = v105;
        v53 = sub_220DC05F0();

        (*(v41 + 8))(v42, v43);
        sub_220D18B64(&v20[v38], type metadata accessor for PrecipitationTotalStringAmount.Format);
        v66 = v20;
        goto LABEL_16;
      }

      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v44 = swift_allocObject();
      v45 = MEMORY[0x277D83B88];
      *(v44 + 16) = xmmword_220DC1CE0;
      v46 = MEMORY[0x277D83C10];
      *(v44 + 56) = v45;
      *(v44 + 64) = v46;
      *(v44 + 32) = v99;
      sub_220DBE050();
      v47 = MEMORY[0x277D83A80];
      *(v44 + 96) = MEMORY[0x277D839F8];
      *(v44 + 104) = v47;
      *(v44 + 72) = v48;
      v49 = MEMORY[0x277D837D0];
      *(v44 + 136) = MEMORY[0x277D837D0];
      v50 = sub_220CEFDB0();
      v51 = v106;
      *(v44 + 112) = v98;
      *(v44 + 120) = v51;
      *(v44 + 176) = v49;
      *(v44 + 184) = v50;
      v52 = v97;
      *(v44 + 144) = v50;
      *(v44 + 152) = v52;
      *(v44 + 160) = v105;
      v53 = sub_220DC05F0();

      v54 = *(v41 + 8);
      v54(v42, v43);
LABEL_11:
      v54(&v20[v38], v43);
      v66 = v20;
LABEL_16:
      sub_220D18B64(v66, type metadata accessor for PrecipitationTotalStringAmount.Format);
      return v53;
    }
  }

  else
  {
    sub_220D1C1EC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v56 = v101;
      v55 = v102;
      v43 = v103;
      (*(v102 + 32))(v101, v14, v103);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v57 = swift_allocObject();
      v58 = MEMORY[0x277D83B88];
      *(v57 + 16) = xmmword_220DC1CE0;
      v59 = MEMORY[0x277D83C10];
      *(v57 + 56) = v58;
      *(v57 + 64) = v59;
      *(v57 + 32) = v99;
      sub_220DBE050();
      v60 = MEMORY[0x277D83A80];
      *(v57 + 96) = MEMORY[0x277D839F8];
      *(v57 + 104) = v60;
      *(v57 + 72) = v61;
      v62 = MEMORY[0x277D837D0];
      *(v57 + 136) = MEMORY[0x277D837D0];
      v63 = sub_220CEFDB0();
      v64 = v106;
      *(v57 + 112) = v98;
      *(v57 + 120) = v64;
      *(v57 + 176) = v62;
      *(v57 + 184) = v63;
      v65 = v97;
      *(v57 + 144) = v63;
      *(v57 + 152) = v65;
      *(v57 + 160) = v105;
      v53 = sub_220DC05F0();

      v54 = *(v55 + 8);
      v54(v56, v43);
      goto LABEL_11;
    }

    (*(v102 + 8))(v14, v103);
  }

  v76 = v104;
  v77 = v100;
  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v78 = sub_220DBF410();
  __swift_project_value_buffer(v78, qword_27CF95F48);
  sub_220D1C1EC();
  sub_220D1C1EC();
  v79 = sub_220DBF3F0();
  v80 = sub_220DC0980();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    LODWORD(v105) = v80;
    v82 = v81;
    v106 = swift_slowAlloc();
    v107 = v106;
    *v82 = 136446466;
    sub_220D1C1EC();
    v83 = sub_220DC0630();
    v85 = v84;
    sub_220D18B64(v77, type metadata accessor for PrecipitationTotalStringAmount);
    v86 = sub_220D3F210(v83, v85, &v107);

    *(v82 + 4) = v86;
    *(v82 + 12) = 2082;
    v87 = v104;
    sub_220D1C1EC();
    v88 = sub_220DC0630();
    v90 = v89;
    sub_220D18B64(v87, type metadata accessor for PrecipitationTotalStringAmount);
    v91 = sub_220D3F210(v88, v90, &v107);

    *(v82 + 14) = v91;
    _os_log_impl(&dword_220CD1000, v79, v105, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v82, 0x16u);
    v92 = v106;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v92, -1, -1);
    MEMORY[0x223D98FB0](v82, -1, -1);
  }

  else
  {

    sub_220D18B64(v76, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D18B64(v77, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v20);
  return 0;
}

uint64_t sub_220D1B028()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1B2B8()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1B59C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1B82C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1BB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v5 = OUTLINED_FUNCTION_3_11();
  type metadata accessor for PrecipitationTotalStringAmount(v5);
  OUTLINED_FUNCTION_6();
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = *v4;
  sub_220D1C1EC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = (*(v13 + 32))(v15, v11, v12);
    HIBYTE(v47) = v16;
    v45(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v19 = MEMORY[0x277D83A80];
    *(v18 + 56) = MEMORY[0x277D839F8];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    v21 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8]);
    v28 = v27;
    v30 = v29;

    *(v18 + 96) = MEMORY[0x277D837D0];
    v31 = sub_220CEFDB0();
    *(v18 + 72) = v28;
    *(v18 + 80) = v30;
    v32 = MEMORY[0x277D83C10];
    *(v18 + 136) = MEMORY[0x277D83B88];
    *(v18 + 144) = v32;
    v33 = v46;
    *(v18 + 104) = v31;
    *(v18 + 112) = v33;
    v34 = sub_220DC05F0();

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    sub_220D18B64(v11, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v35 = sub_220DBF410();
    __swift_project_value_buffer(v35, qword_27CF95F48);
    OUTLINED_FUNCTION_1_11();
    sub_220D1C1EC();
    v36 = sub_220DBF3F0();
    v37 = sub_220DC0980();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48[0] = v39;
      *v38 = 136446210;
      OUTLINED_FUNCTION_1_11();
      sub_220D1C1EC();
      v40 = sub_220DC0630();
      v42 = v41;
      OUTLINED_FUNCTION_2_8();
      v43 = sub_220D3F210(v40, v42, v48);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_220CD1000, v36, v37, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x223D98FB0](v39, -1, -1);
      MEMORY[0x223D98FB0](v38, -1, -1);
    }

    else
    {

      OUTLINED_FUNCTION_2_8();
    }

    return 0;
  }

  return v34;
}

uint64_t sub_220D1BF58()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1C1EC()
{
  v2 = OUTLINED_FUNCTION_3_11();
  v3(v2);
  OUTLINED_FUNCTION_6();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_220D1C244(uint64_t a1)
{
  result = type metadata accessor for PrecipitationPlatterPrecipitationKind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220D1C2A8()
{
  v1 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1E6A0(v0, v6, type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_220D18B04(v6, v3, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_220D1CBA8(v3);
  }

  else
  {
    v8 = sub_220D1C438(v3);
  }

  v9 = v8;
  sub_220D18B64(v3, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  return v9;
}

uint64_t type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence(uint64_t a1)
{
  result = qword_27CF95918;
  if (!qword_27CF95918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D1C438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v61 - v3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - v15;
  v17 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1E6A0(a1, v19, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D18B04(&v19[*(v44 + 48)], v14, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v64) = 6;
      v39 = sub_220D1D2A0(v14, &v64 + 7);
      v43 = v14;
      break;
    case 2u:
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v19, v14, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v19[v40], v11, type metadata accessor for PrecipitationTotalStringAmount);
      v41 = sub_220D1D7E0();
      goto LABEL_8;
    case 3u:
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v19, v14, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v19[v42], v11, type metadata accessor for PrecipitationTotalStringAmount);
      v41 = sub_220D1D9A0(v14, v11);
LABEL_8:
      v39 = v41;
      sub_220D18B64(v11, type metadata accessor for PrecipitationTotalStringAmount);
      v43 = v14;
      break;
    default:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      v21 = v16;
      sub_220D18B04(&v19[*(v20 + 48)], v16, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D1E6A0(&v16[*(v8 + 20)], v7, type metadata accessor for PrecipitationTotalStringAmount.Format);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v46 = v62;
        v47 = *(v61 + 8);
        v47(&v7[*(v45 + 48)], v62);
        v47(v7, v46);
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_220DC17C0;
        v49 = MEMORY[0x277D83C10];
        *(v48 + 56) = MEMORY[0x277D83B88];
        *(v48 + 64) = v49;
        *(v48 + 32) = 24;
        v50 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v50, 0, 1, v51, v52, v53, v54, v55, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
        v57 = v56;
        v59 = v58;

        *(v48 + 96) = MEMORY[0x277D837D0];
        *(v48 + 104) = sub_220CEFDB0();
        *(v48 + 72) = v57;
        *(v48 + 80) = v59;
        v39 = sub_220DC05F0();
      }

      else
      {
        v23 = v61;
        v22 = v62;
        (*(v61 + 32))(v4, v7, v62);
        sub_220DBE050();
        v25 = Double.pluralRuleInteger.getter(v24);
        (*(v23 + 8))(v4, v22);
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_220DC1CC0;
        v27 = MEMORY[0x277D83B88];
        v28 = MEMORY[0x277D83C10];
        *(v26 + 56) = MEMORY[0x277D83B88];
        *(v26 + 64) = v28;
        *(v26 + 32) = 24;
        *(v26 + 96) = v27;
        *(v26 + 104) = v28;
        *(v26 + 72) = v25;
        v29 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v29, 0, 1, v30, v31, v32, v33, v34, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
        v36 = v35;
        v38 = v37;

        *(v26 + 136) = MEMORY[0x277D837D0];
        *(v26 + 144) = sub_220CEFDB0();
        *(v26 + 112) = v36;
        *(v26 + 120) = v38;
        v39 = sub_220DC05F0();
      }

      v43 = v21;
      break;
  }

  sub_220D18B64(v43, type metadata accessor for PrecipitationTotalStringAmount);
  return v39;
}

uint64_t sub_220D1CBA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v63 - v3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D1E6A0(a1, v19, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = *v19;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D18B04(&v19[*(v46 + 48)], v14, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v66) = v45;
      v40 = sub_220D1D2A0(v14, &v66 + 7);
      v44 = v14;
      break;
    case 2u:
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v19, v14, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v19[v41], v11, type metadata accessor for PrecipitationTotalStringAmount);
      v42 = sub_220D1D7E0();
      goto LABEL_6;
    case 3u:
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D18B04(v19, v14, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D18B04(&v19[v43], v11, type metadata accessor for PrecipitationTotalStringAmount);
      v42 = sub_220D1D9A0(v14, v11);
LABEL_6:
      v40 = v42;
      sub_220D18B64(v11, type metadata accessor for PrecipitationTotalStringAmount);
      v44 = v14;
      break;
    default:
      v20 = *v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      v22 = v16;
      sub_220D18B04(&v19[*(v21 + 48)], v16, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D1E6A0(&v16[*(v8 + 20)], v7, type metadata accessor for PrecipitationTotalStringAmount.Format);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v48 = v64;
        v49 = *(v63 + 8);
        v49(&v7[*(v47 + 48)], v64);
        v49(v7, v48);
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_220DC17C0;
        v51 = MEMORY[0x277D83C10];
        *(v50 + 56) = MEMORY[0x277D83B88];
        *(v50 + 64) = v51;
        *(v50 + 32) = 24;
        v52 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v52, 0, 1, v53, v54, v55, v56, v57, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
        v59 = v58;
        v61 = v60;

        *(v50 + 96) = MEMORY[0x277D837D0];
        *(v50 + 104) = sub_220CEFDB0();
        *(v50 + 72) = v59;
        *(v50 + 80) = v61;
        v40 = sub_220DC05F0();
      }

      else
      {
        v24 = v63;
        v23 = v64;
        (*(v63 + 32))(v4, v7, v64);
        sub_220DBE050();
        v26 = Double.pluralRuleInteger.getter(v25);
        (*(v24 + 8))(v4, v23);
        BYTE6(v66) = v20;
        sub_220D1E164();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_220DC1CC0;
        v28 = MEMORY[0x277D83B88];
        v29 = MEMORY[0x277D83C10];
        *(v27 + 56) = MEMORY[0x277D83B88];
        *(v27 + 64) = v29;
        *(v27 + 32) = v26;
        *(v27 + 96) = v28;
        *(v27 + 104) = v29;
        *(v27 + 72) = 24;
        v30 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v30, 0, 1, v31, v32, v33, v34, v35, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
        v37 = v36;
        v39 = v38;

        *(v27 + 136) = MEMORY[0x277D837D0];
        *(v27 + 144) = sub_220CEFDB0();
        *(v27 + 112) = v37;
        *(v27 + 120) = v39;
        v40 = sub_220DC05F0();
      }

      v44 = v22;
      break;
  }

  sub_220D18B64(v44, type metadata accessor for PrecipitationTotalStringAmount);
  return v40;
}

uint64_t sub_220D1D2A0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v44[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44[-1] - v8;
  v10 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44[-1] - v15;
  v17 = *a2;
  sub_220D1E6A0(a1 + *(v4 + 20), v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    if (v17 == 6)
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
    }

    else
    {
      HIBYTE(v43) = v17;
      sub_220D1E3F4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v28 = MEMORY[0x277D83A80];
    *(v27 + 56) = MEMORY[0x277D839F8];
    *(v27 + 64) = v28;
    *(v27 + 32) = v29;
    v30 = MEMORY[0x277D83C10];
    *(v27 + 96) = MEMORY[0x277D83B88];
    *(v27 + 104) = v30;
    *(v27 + 72) = 24;
    v31 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v31, 0, 0, v32, v33, v34, v35, v36, v43, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10]);
    v38 = v37;
    v40 = v39;

    *(v27 + 136) = MEMORY[0x277D837D0];
    *(v27 + 144) = sub_220CEFDB0();
    *(v27 + 112) = v38;
    *(v27 + 120) = v40;
    v41 = sub_220DC05F0();

    (*(v14 + 8))(v16, v13);
  }

  else
  {
    sub_220D18B64(v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v18 = sub_220DBF410();
    __swift_project_value_buffer(v18, qword_27CF95F48);
    sub_220D1E6A0(a1, v9, type metadata accessor for PrecipitationTotalStringAmount);
    v19 = sub_220DBF3F0();
    v20 = sub_220DC0980();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136446210;
      sub_220D1E6A0(v9, v7, type metadata accessor for PrecipitationTotalStringAmount);
      v23 = sub_220DC0630();
      v25 = v24;
      sub_220D18B64(v9, type metadata accessor for PrecipitationTotalStringAmount);
      v26 = sub_220D3F210(v23, v25, v44);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_220CD1000, v19, v20, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223D98FB0](v22, -1, -1);
      MEMORY[0x223D98FB0](v21, -1, -1);
    }

    else
    {

      sub_220D18B64(v9, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v41;
}

uint64_t sub_220D1D7E0()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220DC1CC0;
  v1 = MEMORY[0x277D83C10];
  *(v0 + 56) = MEMORY[0x277D83B88];
  *(v0 + 64) = v1;
  *(v0 + 32) = 24;
  v2 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v2, 0, 1, v3, v4, v5, v6, v7, 0x8000000220DD7C90, v27, v29, v31, v33, v35, v37, v39, v41, v43, vars0, vars8);
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v0 + 96) = MEMORY[0x277D837D0];
  v13 = sub_220CEFDB0();
  *(v0 + 104) = v13;
  *(v0 + 72) = v9;
  *(v0 + 80) = v11;
  v14 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v14, 0, 1, v15, v16, v17, v18, v19, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, vars0a, vars8a);
  v21 = v20;
  v23 = v22;

  *(v0 + 136) = v12;
  *(v0 + 144) = v13;
  *(v0 + 112) = v21;
  *(v0 + 120) = v23;
  v24 = sub_220DC05F0();

  return v24;
}

uint64_t sub_220D1D9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v66 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v66 - v15;
  v17 = *(v4 + 20);
  v18 = *(v14 + 56);
  sub_220D1E6A0(a2 + v17, &v66 - v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D1E6A0(a1 + v17, &v16[v18], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v17) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v17 == 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      v21 = *(*(v20 - 8) + 8);
      v21(&v16[v18], v20);
      v21(v16, v20);
      goto LABEL_14;
    }

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    (*(*(v24 - 8) + 8))(v16, v24);
    v23 = &v16[v18];
LABEL_13:
    sub_220D18B64(v23, type metadata accessor for PrecipitationTotalStringAmount.Format);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_220DC1CC0;
    v26 = MEMORY[0x277D83C10];
    *(v25 + 56) = MEMORY[0x277D83B88];
    *(v25 + 64) = v26;
    *(v25 + 32) = 24;
    v27 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v27, 0, 0, v28, v29, v30, v31, v32, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
    v34 = v33;
    v36 = v35;

    v37 = MEMORY[0x277D837D0];
    *(v25 + 96) = MEMORY[0x277D837D0];
    v38 = sub_220CEFDB0();
    *(v25 + 104) = v38;
    *(v25 + 72) = v34;
    *(v25 + 80) = v36;
    v39 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v39, 0, 0, v40, v41, v42, v43, v44, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
    v46 = v45;
    v48 = v47;

    *(v25 + 136) = v37;
    *(v25 + 144) = v38;
    *(v25 + 112) = v46;
    *(v25 + 120) = v48;
    v49 = sub_220DC05F0();

    return v49;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    (*(*(v22 - 8) + 8))(&v16[v18], v22);
    v23 = v16;
    goto LABEL_13;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v50 = sub_220DBF410();
  __swift_project_value_buffer(v50, qword_27CF95F48);
  sub_220D1E6A0(a2, v12, type metadata accessor for PrecipitationTotalStringAmount);
  sub_220D1E6A0(a1, v10, type metadata accessor for PrecipitationTotalStringAmount);
  v51 = sub_220DBF3F0();
  v52 = sub_220DC0980();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    HIDWORD(v67) = v52;
    v54 = v53;
    v68 = swift_slowAlloc();
    v69 = v68;
    *v54 = 136446466;
    sub_220D1E6A0(v12, v7, type metadata accessor for PrecipitationTotalStringAmount);
    v55 = sub_220DC0630();
    v57 = v56;
    v66 = v51;
    sub_220D18B64(v12, type metadata accessor for PrecipitationTotalStringAmount);
    v58 = sub_220D3F210(v55, v57, &v69);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2082;
    sub_220D1E6A0(v10, v7, type metadata accessor for PrecipitationTotalStringAmount);
    v59 = sub_220DC0630();
    v61 = v60;
    sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount);
    v62 = sub_220D3F210(v59, v61, &v69);

    *(v54 + 14) = v62;
    v63 = v66;
    _os_log_impl(&dword_220CD1000, v66, BYTE4(v67), "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v54, 0x16u);
    v64 = v68;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v64, -1, -1);
    MEMORY[0x223D98FB0](v54, -1, -1);
  }

  else
  {

    sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D18B64(v12, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v16);
  return 0;
}

uint64_t sub_220D1E164()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1E3F4()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D1E6A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D1E700(uint64_t a1)
{
  result = type metadata accessor for PrecipitationPlatterPrecipitationKind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220D1E780(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
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

uint64_t sub_220D1E7C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_220D1E824()
{
  result = sub_220DBFEE0();
  qword_27CF95928 = result;
  unk_27CF95930 = 0;
  qword_27CF95938 = 0;
  unk_27CF95940 = 0;
  return result;
}

uint64_t ShadowModel.init(color:radius:x:y:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

uint64_t static ShadowModel.clear.getter()
{
  if (qword_27CF94F30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_8(&qword_27CF95928);
}

double sub_220D1E8C8()
{
  sub_220DBFED0();
  v0 = sub_220DBFF10();

  qword_27CF95948 = v0;
  result = 5.0;
  *algn_27CF95950 = xmmword_220DC3730;
  qword_27CF95960 = 0x4000000000000000;
  return result;
}

uint64_t static ShadowModel.text.getter()
{
  if (qword_27CF94F38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_8(&qword_27CF95948);
}

BOOL static ShadowModel.== infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = sub_220DBFE90();
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5 && v3 == v6)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t sub_220D1EA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartLineStrokeStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D1EAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartLineStrokeStyle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ChartLineStyle.lineThickness.setter(double a1)
{
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v4) = a1;
  return result;
}

uint64_t ChartLineStyle.lineThickness.modify()
{
  v0 = OUTLINED_FUNCTION_2_9();
  type metadata accessor for ChartLineStyle(v0);
  return OUTLINED_FUNCTION_7_8();
}

double ChartLineStyle.lineColor.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ChartLineStyle(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;

  return sub_220D1EC60(v4, v5, v6, v7);
}

double sub_220D1EC60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

__n128 ChartLineStyle.lineColor.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1 + *(type metadata accessor for ChartLineStyle(0) + 24);
  sub_220D1ECD8(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  result = v6;
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

uint64_t sub_220D1ECD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t ChartLineStyle.lineColor.modify()
{
  v0 = OUTLINED_FUNCTION_2_9();
  type metadata accessor for ChartLineStyle(v0);
  return OUTLINED_FUNCTION_7_8();
}

double ChartLineStyle.lineDash.getter()
{
  type metadata accessor for ChartLineStyle(0);

  return result;
}

uint64_t ChartLineStyle.lineDash.setter()
{
  v2 = OUTLINED_FUNCTION_2_9();
  v3 = *(type metadata accessor for ChartLineStyle(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t ChartLineStyle.lineDash.modify()
{
  v0 = OUTLINED_FUNCTION_2_9();
  type metadata accessor for ChartLineStyle(v0);
  return OUTLINED_FUNCTION_7_8();
}

double ChartLineStyle.areaStyle.getter@<D0>(__int128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChartLineStyle(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

__n128 ChartLineStyle.areaStyle.setter()
{
  v2 = OUTLINED_FUNCTION_2_9();
  v3 = (v1 + *(type metadata accessor for ChartLineStyle(v2) + 32));

  result = *v0;
  v5 = *(v0 + 16);
  *v3 = *v0;
  v3[1] = v5;
  return result;
}

uint64_t ChartLineStyle.areaStyle.modify()
{
  v0 = OUTLINED_FUNCTION_2_9();
  type metadata accessor for ChartLineStyle(v0);
  return OUTLINED_FUNCTION_7_8();
}

__n128 ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v24 = *a2;
  v16 = *(a2 + 2);
  v17 = *(a2 + 24);
  v18 = type metadata accessor for ChartLineStyle(0);
  v19 = (a7 + v18[8]);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = a7 + v18[10];
  sub_220D1EFBC(a1, a7);
  *(a7 + v18[5]) = a8;
  v21 = a7 + v18[6];
  *v21 = v24;
  *(v21 + 16) = v16;
  *(v21 + 24) = v17;
  *(a7 + v18[7]) = a3;
  *(a7 + v18[9]) = a9;
  *v20 = a4;
  *(v20 + 8) = a5 & 1;

  result = *a6;
  v23 = *(a6 + 16);
  *v19 = *a6;
  v19[1] = v23;
  return result;
}

uint64_t sub_220D1EFBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartLineStrokeStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double ChartLineStyle.opacity(for:)(uint64_t a1)
{
  v3 = sub_220DBFA30();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v3);
  v9 = (*(v5 + 88))(v8, v3);
  if (v9 == *MEMORY[0x277CE0210])
  {
    v10 = type metadata accessor for ChartLineStyle(0);
  }

  else
  {
    v12 = v9;
    v13 = *MEMORY[0x277CE0220];
    v10 = type metadata accessor for ChartLineStyle(0);
    if (v12 != v13)
    {
      v11 = *(v1 + *(v10 + 36));
      (*(v5 + 8))(v8, v3);
      return v11;
    }

    v14 = (v1 + *(v10 + 40));
    if ((v14[8] & 1) == 0)
    {
      return *v14;
    }
  }

  return *(v1 + *(v10 + 36));
}

__n128 ChartLineStyle.with(lineThickness:lineDash:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_220D1EA54(v3, a2);
  v7 = type metadata accessor for ChartLineStyle(0);
  v8 = v3 + v7[6];
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = v7[8];
  v14 = *(v3 + v7[9]);
  v15 = v3 + v7[10];
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = (v3 + v13);
  v18 = (a2 + v13);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v7[10];
  *(a2 + v7[5]) = a3;
  v20 = a2 + v7[6];
  *v20 = v10;
  *(v20 + 8) = v9;
  *(v20 + 16) = v11;
  *(v20 + 24) = v12;
  *(a2 + v7[7]) = a1;
  *(a2 + v7[9]) = v14;
  v21 = a2 + v19;
  *v21 = v16;
  *(v21 + 8) = v15;
  v23 = v17[1];
  v24 = *v17;
  sub_220D1EC60(v10, v9, v11, v12);

  result = v24;
  *v18 = v24;
  v18[1] = v23;
  return result;
}

uint64_t static ChartLineStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static ChartLineStrokeStyle.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_3_12();
  if (*(a1 + v5) != *(a2 + v5))
  {
    return 0;
  }

  v6 = a1 + *(v4 + 24);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v54[0] = *v6;
  v54[1] = v7;
  v54[2] = v8;
  v55 = v9;
  v10 = a2 + *(v4 + 24);
  v50 = v4;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v52[0] = *v10;
  v52[1] = v11;
  v52[2] = v12;
  v53 = v13;
  v14 = OUTLINED_FUNCTION_5_8();
  sub_220D1EC60(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_4_9();
  sub_220D1EC60(v18, v19, v20, v21);
  v51 = static ChartLineColor.== infix(_:_:)(v54, v52);
  v22 = OUTLINED_FUNCTION_4_9();
  sub_220D1ECD8(v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_5_8();
  sub_220D1ECD8(v26, v27, v28, v29);
  if ((v51 & 1) == 0 || (sub_220D016E8(*(a1 + v50[7]), *(a2 + v50[7])) & 1) == 0)
  {
    return 0;
  }

  v30 = v50[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30);
  v33 = (a2 + v30);
  v34 = *v33;
  if (!v32)
  {
    if (v34 == 0.0)
    {

      goto LABEL_19;
    }

LABEL_17:

    return 0;
  }

  if (v34 == 0.0)
  {
    goto LABEL_17;
  }

  v35 = v31[1];
  v36 = v31[2];
  v37 = v31[3];
  v38 = v33[1];
  v39 = v33[2];
  v40 = v33[3];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v41 = MEMORY[0x223D97D10](v32, *&v34);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  result = 0;
  if (v41)
  {
    v43 = v35 == v38 && v36 == v39;
    if (v43 && v37 == v40)
    {
LABEL_19:
      if (*(a1 + v50[9]) == *(a2 + v50[9]))
      {
        v45 = v50[10];
        v46 = (a1 + v45);
        v47 = *(a1 + v45 + 8);
        v48 = (a2 + v45);
        v49 = *(a2 + v45 + 8);
        if (v47)
        {
          if ((v49 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (*v46 != *v48)
          {
            v49 = 1;
          }

          if (v49)
          {
            return 0;
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t static ChartLineStrokeStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v32 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ChartLineStrokeStyle(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95968, &qword_220DC37B0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - v20;
  v22 = *(v19 + 56);
  sub_220D1EA54(a1, &v31 - v20);
  sub_220D1EA54(a2, &v21[v22]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220D1EA54(v21, v17);
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = v32;
      (*(v5 + 32))(v11, &v21[v22], v32);
      v25 = sub_220DBE460();
      v26 = *(v5 + 8);
      v26(v11, v29);
      v27 = v17;
      v28 = v29;
      goto LABEL_12;
    }

    v15 = v17;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220D1EA54(v21, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v32;
      (*(v5 + 32))(v9, &v21[v22], v32);
      v25 = sub_220DBE460();
      v26 = *(v5 + 8);
      v26(v9, v24);
      v27 = v15;
      v28 = v24;
LABEL_12:
      v26(v27, v28);
      sub_220D1FB10(v21);
      return v25 & 1;
    }

LABEL_7:
    (*(v5 + 8))(v15, v32);
LABEL_10:
    sub_220D1FAA8(v21);
    v25 = 0;
    return v25 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_220D1FB10(v21);
  v25 = 1;
  return v25 & 1;
}

uint64_t static ChartLineColor.== infix(_:_:)(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (v5)
  {
    if (a2[3])
    {
      v10 = OUTLINED_FUNCTION_1_12();
      sub_220D1EC60(v10, v11, v12, 1);
      v13 = OUTLINED_FUNCTION_0_9();
      sub_220D1EC60(v13, v14, v15, 1);
      v16 = sub_220DBFE90();
      v17 = OUTLINED_FUNCTION_1_12();
      sub_220D1ECD8(v17, v18, v19, 1);
      v20 = OUTLINED_FUNCTION_0_9();
      sub_220D1ECD8(v20, v21, v22, 1);
      return v16 & 1;
    }

    goto LABEL_5;
  }

  if (a2[3])
  {
LABEL_5:
    v24 = OUTLINED_FUNCTION_1_12();
    sub_220D1EC60(v24, v25, v26, v5);
    v27 = OUTLINED_FUNCTION_0_9();
    sub_220D1EC60(v27, v28, v29, v9);
    v30 = OUTLINED_FUNCTION_1_12();
    sub_220D1ECD8(v30, v31, v32, v5);
    v33 = OUTLINED_FUNCTION_0_9();
    sub_220D1ECD8(v33, v34, v35, v9);
    return 0;
  }

  v4 = a1[2];
  v36 = OUTLINED_FUNCTION_0_9();
  sub_220D1EC60(v36, v37, v38, 0);
  v39 = OUTLINED_FUNCTION_1_12();
  sub_220D1EC60(v39, v40, v41, 0);
  v42 = OUTLINED_FUNCTION_1_12();
  sub_220D1EC60(v42, v43, v44, 0);
  v45 = OUTLINED_FUNCTION_0_9();
  v48 = sub_220D1EC60(v45, v46, v47, 0);
  v49 = MEMORY[0x223D97D10](*&v3, *&v7, v48);
  v50 = OUTLINED_FUNCTION_1_12();
  sub_220D1ECD8(v50, v51, v52, 0);
  v53 = OUTLINED_FUNCTION_0_9();
  sub_220D1ECD8(v53, v54, v55, 0);
  v56 = OUTLINED_FUNCTION_0_9();
  sub_220D1ECD8(v56, v57, v58, 0);
  v59 = OUTLINED_FUNCTION_1_12();
  sub_220D1ECD8(v59, v60, v61, 0);
  if (v4 == v8)
  {
    return v49 & (v2 == v6);
  }

  else
  {
    return 0;
  }
}

double ChartAreaStyle.gradient.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);

  return result;
}

uint64_t ChartAreaStyle.gradient.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

uint64_t ChartAreaStyle.init(gradient:opacity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  *(a2 + 24) = a3;
  return result;
}

BOOL static ChartAreaStyle.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];

  v10 = MEMORY[0x223D97D10](v2, v6);

  result = 0;
  if ((v10 & 1) != 0 && v3 == v7 && v4 == v8)
  {
    return v5 == v9;
  }

  return result;
}

uint64_t sub_220D1FAA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95968, &qword_220DC37B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D1FB10(uint64_t a1)
{
  v2 = type metadata accessor for ChartLineStrokeStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220D1FB98(uint64_t a1)
{
  type metadata accessor for ChartLineStrokeStyle(319);
  if (v1 <= 0x3F)
  {
    sub_220D1FCC8(319, &qword_27CF95980, MEMORY[0x277D85048], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_220D1FCC8(319, &qword_27CF95988, &type metadata for ChartAreaStyle, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_220D1FCC8(319, &qword_280FA77C8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220D1FCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_220D1FD18(uint64_t a1)
{
  sub_220D1FD8C();
  if (v1 <= 0x3F)
  {
    sub_220DBE560();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D1FD8C()
{
  if (!qword_27CF959A0)
  {
    v0 = sub_220DBE560();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF959A0);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_220D1FDF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_220D1FE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t UVIndexComponentDescriptionContext.currentWeather.getter()
{
  OUTLINED_FUNCTION_3();
  sub_220DBEAD0();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t UVIndexComponentDescriptionContext.dailyForecast.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for UVIndexComponentDescriptionContext(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_2_10();

  return v2(v1);
}

uint64_t UVIndexComponentDescriptionContext.hourlyForecast.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for UVIndexComponentDescriptionContext(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_2_10();

  return v2(v1);
}

uint64_t UVIndexComponentDescriptionContext.timeZone.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for UVIndexComponentDescriptionContext(v0);
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_2_10();

  return v2(v1);
}

uint64_t sub_220D2007C()
{
  v1 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-v5];
  v7 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  OUTLINED_FUNCTION_6();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v29[-v12];
  v14 = type metadata accessor for PrecipitationPlatterYesterdaySentence(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220D21EF0(v0, v16, type metadata accessor for PrecipitationPlatterYesterdaySentence);
  if (__swift_getEnumTagSinglePayload(v16, 1, v7) == 1)
  {
    return sub_220D20404();
  }

  sub_220D18B04(v16, v13, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  sub_220D21EF0(v13, v11, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = *v11;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      OUTLINED_FUNCTION_2_11(v26);
      v31 = v25;
      sub_220D20B34(&v31, v6);
      goto LABEL_9;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      OUTLINED_FUNCTION_1_13();
      sub_220D18B04(v11, v6, v19);
      sub_220D18B04(&v16[v11], v4, v7);
      sub_220D21270();
      goto LABEL_7;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0);
      OUTLINED_FUNCTION_1_13();
      sub_220D18B04(v11, v6, v20);
      sub_220D18B04(&v16[v11], v4, v7);
      sub_220D21410(v6, v4);
LABEL_7:
      OUTLINED_FUNCTION_0_10();
      v22 = v21;
      sub_220D21E98(v4, v21);
      v23 = v6;
      v24 = v22;
      break;
    default:
      v17 = *v11;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      OUTLINED_FUNCTION_2_11(v18);
      v30 = v17;
      sub_220D20794(&v30, v6);
LABEL_9:
      OUTLINED_FUNCTION_0_10();
      v24 = v27;
      v23 = v6;
      break;
  }

  sub_220D21E98(v23, v24);
  sub_220D21E98(v13, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  return v0;
}

uint64_t type metadata accessor for PrecipitationPlatterYesterdaySentence(uint64_t a1)
{
  result = qword_27CF959A8;
  if (!qword_27CF959A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D20404()
{
  v0 = sub_220DBE5E0();
  v18 = *(v0 - 8);
  v19 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220DC0460();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - v7;
  v9 = [objc_opt_self() centimeters];
  sub_220CDB190();
  sub_220DBE040();
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220DC17A0;
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220DBE580();
  sub_220DBE0F0();

  (*(v18 + 8))(v2, v19);
  v11 = sub_220DC0440();
  v13 = v12;
  (*(v3 + 8))(v5, v16);
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_220CEFDB0();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_220DC05F0();

  (*(v6 + 8))(v8, v17);
  return v14;
}

uint64_t sub_220D20B34(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = *a1;
  v17 = *(v4 + 20);
  v45 = a2;
  sub_220D21EF0(a2 + v17, v11, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v18 = v13;
    switch(v16)
    {
      case 1:
        if (qword_280FA6600 != -1)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      case 2:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      case 3:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      case 4:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      case 5:
        if (qword_280FA6600 == -1)
        {
          goto LABEL_19;
        }

LABEL_22:
        swift_once();
LABEL_19:
        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_220DC17C0;
        sub_220DBE050();
        v30 = MEMORY[0x277D83A80];
        *(v29 + 56) = MEMORY[0x277D839F8];
        *(v29 + 64) = v30;
        *(v29 + 32) = v31;
        v32 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v32, 0, 0, v33, v34, v35, v36, v37, v43, v44, v45, v46[0], v46[1], v46[2], v46[3], v46[4], v46[5], v46[6], v46[7], v46[8]);
        v39 = v38;
        v41 = v40;

        *(v29 + 96) = MEMORY[0x277D837D0];
        *(v29 + 104) = sub_220CEFDB0();
        *(v29 + 72) = v39;
        *(v29 + 80) = v41;
        v19 = sub_220DC05F0();

        break;
      default:
        v19 = sub_220D20404();
        break;
    }

    (*(v18 + 8))(v15, v12);
  }

  else
  {
    sub_220D21E98(v11, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v20 = sub_220DBF410();
    __swift_project_value_buffer(v20, qword_27CF95F48);
    sub_220D21EF0(v45, v8, type metadata accessor for PrecipitationTotalStringAmount);
    v21 = sub_220DBF3F0();
    v22 = sub_220DC0980();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = v24;
      *v23 = 136446210;
      sub_220D21EF0(v8, v44, type metadata accessor for PrecipitationTotalStringAmount);
      v25 = sub_220DC0630();
      v27 = v26;
      sub_220D21E98(v8, type metadata accessor for PrecipitationTotalStringAmount);
      v28 = sub_220D3F210(v25, v27, v46);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_220CD1000, v21, v22, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223D98FB0](v24, -1, -1);
      MEMORY[0x223D98FB0](v23, -1, -1);
    }

    else
    {

      sub_220D21E98(v8, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v19;
}

uint64_t sub_220D21270()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220DC17C0;
  v1 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v1, 0, 1, v2, v3, v4, v5, v6, 0x8000000220DD9360, v26, v28, v30, v32, v34, v36, v38, v40, v42, vars0, vars8);
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  v12 = sub_220CEFDB0();
  *(v0 + 64) = v12;
  *(v0 + 32) = v8;
  *(v0 + 40) = v10;
  v13 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v13, 0, 1, v14, v15, v16, v17, v18, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, vars0a, vars8a);
  v20 = v19;
  v22 = v21;

  *(v0 + 96) = v11;
  *(v0 + 104) = v12;
  *(v0 + 72) = v20;
  *(v0 + 80) = v22;
  v23 = sub_220DC05F0();

  return v23;
}

uint64_t sub_220D21410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = MEMORY[0x28223BE20](v4);
  v94 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v102 = &v94 - v8;
  MEMORY[0x28223BE20](v7);
  v98 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x28223BE20](v10);
  v99 = &v94 - v11;
  v12 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v94 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v94 - v20;
  v22 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v22, 0, 0, v23, v24, v25, v26, v27, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v97 = v28;
  v104 = v29;

  v30 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v30, 0, 0, v31, v32, v33, v34, v35, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v96 = v36;
  v103 = v37;

  v95 = v4;
  v38 = *(v4 + 20);
  v39 = *(v19 + 56);
  sub_220D21EF0(a2 + v38, v21, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D21EF0(a1 + v38, &v21[v39], type metadata accessor for PrecipitationTotalStringAmount.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220D21EF0(v21, v17, type metadata accessor for PrecipitationTotalStringAmount.Format);
      v41 = swift_getEnumCaseMultiPayload();
      v43 = v99;
      v42 = v100;
      v44 = v101;
      (*(v100 + 32))(v99, v17, v101);
      if (v41 != 1)
      {
        if (qword_280FA6600 != -1)
        {
          swift_once();
        }

        sub_220DBE240();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_220DC1CC0;
        sub_220DBE050();
        v67 = MEMORY[0x277D83A80];
        *(v66 + 56) = MEMORY[0x277D839F8];
        *(v66 + 64) = v67;
        *(v66 + 32) = v68;
        v69 = MEMORY[0x277D837D0];
        *(v66 + 96) = MEMORY[0x277D837D0];
        v70 = sub_220CEFDB0();
        v71 = v104;
        *(v66 + 72) = v97;
        *(v66 + 80) = v71;
        *(v66 + 136) = v69;
        *(v66 + 144) = v70;
        v72 = v96;
        *(v66 + 104) = v70;
        *(v66 + 112) = v72;
        *(v66 + 120) = v103;
        v52 = sub_220DC05F0();

        (*(v42 + 8))(v43, v44);
        sub_220D21E98(&v21[v39], type metadata accessor for PrecipitationTotalStringAmount.Format);
        v65 = v21;
        goto LABEL_16;
      }

      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v46 = MEMORY[0x277D83A80];
      *(v45 + 56) = MEMORY[0x277D839F8];
      *(v45 + 64) = v46;
      *(v45 + 32) = v47;
      v48 = MEMORY[0x277D837D0];
      *(v45 + 96) = MEMORY[0x277D837D0];
      v49 = sub_220CEFDB0();
      v50 = v104;
      *(v45 + 72) = v97;
      *(v45 + 80) = v50;
      *(v45 + 136) = v48;
      *(v45 + 144) = v49;
      v51 = v96;
      *(v45 + 104) = v49;
      *(v45 + 112) = v51;
      *(v45 + 120) = v103;
      v52 = sub_220DC05F0();

      v53 = *(v42 + 8);
      v53(v43, v44);
      v53(&v21[v39], v44);
LABEL_11:
      v65 = v21;
LABEL_16:
      sub_220D21E98(v65, type metadata accessor for PrecipitationTotalStringAmount.Format);
      return v52;
    }
  }

  else
  {
    sub_220D21EF0(v21, v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = v99;
      v54 = v100;
      v56 = v101;
      (*(v100 + 32))(v99, v15, v101);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v58 = MEMORY[0x277D83A80];
      *(v57 + 56) = MEMORY[0x277D839F8];
      *(v57 + 64) = v58;
      *(v57 + 32) = v59;
      v60 = MEMORY[0x277D837D0];
      *(v57 + 96) = MEMORY[0x277D837D0];
      v61 = sub_220CEFDB0();
      v62 = v104;
      *(v57 + 72) = v97;
      *(v57 + 80) = v62;
      *(v57 + 136) = v60;
      *(v57 + 144) = v61;
      v63 = v96;
      *(v57 + 104) = v61;
      *(v57 + 112) = v63;
      *(v57 + 120) = v103;
      v52 = sub_220DC05F0();

      v64 = *(v54 + 8);
      v64(v55, v56);
      v64(&v21[v39], v56);
      goto LABEL_11;
    }

    (*(v100 + 8))(v15, v101);
  }

  v73 = v98;
  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v74 = sub_220DBF410();
  __swift_project_value_buffer(v74, qword_27CF95F48);
  sub_220D21EF0(a2, v73, type metadata accessor for PrecipitationTotalStringAmount);
  v75 = a1;
  v76 = v102;
  sub_220D21EF0(v75, v102, type metadata accessor for PrecipitationTotalStringAmount);
  v77 = sub_220DBF3F0();
  v78 = sub_220DC0980();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v105 = v104;
    *v79 = 136446466;
    v80 = v94;
    sub_220D21EF0(v73, v94, type metadata accessor for PrecipitationTotalStringAmount);
    v81 = sub_220DC0630();
    v82 = v73;
    v83 = v81;
    v85 = v84;
    sub_220D21E98(v82, type metadata accessor for PrecipitationTotalStringAmount);
    v86 = sub_220D3F210(v83, v85, &v105);

    *(v79 + 4) = v86;
    *(v79 + 12) = 2082;
    v87 = v102;
    sub_220D21EF0(v102, v80, type metadata accessor for PrecipitationTotalStringAmount);
    v88 = sub_220DC0630();
    v90 = v89;
    sub_220D21E98(v87, type metadata accessor for PrecipitationTotalStringAmount);
    v91 = sub_220D3F210(v88, v90, &v105);

    *(v79 + 14) = v91;
    _os_log_impl(&dword_220CD1000, v77, v78, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v79, 0x16u);
    v92 = v104;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v92, -1, -1);
    MEMORY[0x223D98FB0](v79, -1, -1);
  }

  else
  {

    sub_220D21E98(v76, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D21E98(v73, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v21);
  return 0;
}

uint64_t sub_220D21E98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220D21EF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220D21F78()
{
  v0 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1();
  v3 = v2 - v1;
  v4 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  type metadata accessor for PrecipitationPlatterFutureDaySentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = OUTLINED_FUNCTION_20();
  sub_220D26078(v22, v23, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95788, &unk_220DC3A10);
    v26 = *(v25 + 48);
    v27 = *(v25 + 64);
    sub_220D2601C(v21, v3, type metadata accessor for PrecipitationPlatterPrecipitationKind);
    (*(v13 + 32))(v17, v21 + v26, v11);
    (*(v6 + 32))(v10, v21 + v27, v4);
    sub_220D22900(v3, v17, v10);
    v28 = OUTLINED_FUNCTION_2_12();
    v29(v28);
    (*(v13 + 8))(v17, v11);
    sub_220D18B64(v3, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  }

  else
  {
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95780, &unk_220DC3020) + 48);
    (*(v13 + 32))(v17, v21, v11);
    (*(v6 + 32))(v10, v21 + v30, v4);
    v31 = sub_220DBE520();
    sub_220D222F0(v31);
    v32 = OUTLINED_FUNCTION_2_12();
    v33(v32);
    (*(v13 + 8))(v17, v11);
  }

  return OUTLINED_FUNCTION_20();
}

uint64_t type metadata accessor for PrecipitationPlatterFutureDaySentence(uint64_t a1)
{
  result = qword_27CF959B8;
  if (!qword_27CF959B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D222F0(char a1)
{
  v2 = sub_220DBE5E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220DC0460();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v21 - v10;
  v12 = [objc_opt_self() centimeters];
  sub_220CDB190();
  sub_220DBE040();
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220DBE580();
  sub_220DBE0F0();

  (*(v3 + 8))(v5, v2);
  switch(a1)
  {
    case 1:
      v13 = v6;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      v13 = v6;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      v13 = v6;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      v13 = v6;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      v13 = v6;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      v13 = v6;
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      v13 = v6;
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  sub_220DBE240();
  v14 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220DC17A0;
  v16 = sub_220DC0440();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_220CEFDB0();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v19 = sub_220DC05F0();

  (*(v14 + 8))(v8, v13);
  (*(v9 + 8))(v11, v21);
  return v19;
}

uint64_t sub_220D22900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  v10 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_220DBE520();
  sub_220D26078(a1, v12, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = *v12;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2601C(&v12[*(v23 + 48)], v9, type metadata accessor for PrecipitationTotalStringAmount);
      v27 = v22;
      v16 = sub_220D23A58(&v27, v9, v13);
      goto LABEL_7;
    case 2u:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2601C(v12, v9, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2601C(&v12[v17], v7, type metadata accessor for PrecipitationTotalStringAmount);
      v18 = sub_220D23F8C(v9, v7, v13);
      goto LABEL_5;
    case 3u:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2601C(v12, v9, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2601C(&v12[v19], v7, type metadata accessor for PrecipitationTotalStringAmount);
      v18 = sub_220D24384(v9, v7, v13);
LABEL_5:
      v20 = v18;
      sub_220D18B64(v7, type metadata accessor for PrecipitationTotalStringAmount);
      v21 = v9;
      break;
    default:
      v14 = *v12;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2601C(&v12[*(v15 + 48)], v9, type metadata accessor for PrecipitationTotalStringAmount);
      v26 = v14;
      v16 = sub_220D22C2C(&v26, v9, v13);
LABEL_7:
      v20 = v16;
      v21 = v9;
      break;
  }

  sub_220D18B64(v21, type metadata accessor for PrecipitationTotalStringAmount);
  return v20;
}

uint64_t sub_220D23A58(unsigned __int8 *a1, uint64_t a2, int a3)
{
  HIDWORD(v45) = a3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v44 - v16;
  v18 = *a1;
  sub_220D26078(a2 + *(v5 + 20), v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    switch(v18)
    {
      case 1:
        v29 = v15;
        sub_220D24B54(SBYTE4(v45));
        goto LABEL_15;
      case 2:
        v29 = v15;
        sub_220D24FA4(SBYTE4(v45));
        goto LABEL_15;
      case 3:
        v29 = v15;
        sub_220D24D7C(SBYTE4(v45));
        goto LABEL_15;
      case 4:
        v29 = v15;
        sub_220D251CC(SBYTE4(v45));
        goto LABEL_15;
      case 5:
        v29 = v15;
        sub_220D253F4(SBYTE4(v45));
LABEL_15:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_220DC17C0;
        sub_220DBE050();
        v31 = MEMORY[0x277D83A80];
        *(v30 + 56) = MEMORY[0x277D839F8];
        *(v30 + 64) = v31;
        *(v30 + 32) = v32;
        v33 = sub_220DC0810();
        PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v33, 0, 0, v34, v35, v36, v37, v38, v44[0], v44[1], v45, v46[0], v46[1], v46[2], v46[3], v46[4], v46[5], v46[6], v46[7], v46[8]);
        v40 = v39;
        v42 = v41;

        *(v30 + 96) = MEMORY[0x277D837D0];
        *(v30 + 104) = sub_220CEFDB0();
        *(v30 + 72) = v40;
        *(v30 + 80) = v42;
        v19 = sub_220DC05F0();

        (*(v29 + 8))(v17, v14);
        break;
      default:
        v19 = sub_220D222F0(SBYTE4(v45));
        (*(v15 + 8))(v17, v14);
        break;
    }
  }

  else
  {
    sub_220D18B64(v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v20 = sub_220DBF410();
    __swift_project_value_buffer(v20, qword_27CF95F48);
    sub_220D26078(a2, v10, type metadata accessor for PrecipitationTotalStringAmount);
    v21 = sub_220DBF3F0();
    v22 = sub_220DC0980();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = v24;
      *v23 = 136446210;
      sub_220D26078(v10, v8, type metadata accessor for PrecipitationTotalStringAmount);
      v25 = sub_220DC0630();
      v27 = v26;
      sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount);
      v28 = sub_220D3F210(v25, v27, v46);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_220CD1000, v21, v22, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223D98FB0](v24, -1, -1);
      MEMORY[0x223D98FB0](v23, -1, -1);
    }

    else
    {

      sub_220D18B64(v10, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v19;
}

uint64_t sub_220D23F8C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v3 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Monday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
      goto LABEL_20;
    case 2:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v30 = 0x8000000220DDC250;
      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v30 = 0x8000000220DDC100;
      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v4 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Thursday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
      goto LABEL_24;
    case 5:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v3 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Friday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
      goto LABEL_20;
    case 6:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v4 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Saturday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
LABEL_24:
      v30 = (v4 - 32) | 0x8000000000000000;
      break;
    default:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v3 = "Description of Precipitation in L2 descriptor for future day with mixed precipitation, where snow is the dominant precipitation. ex: On Sunday, there will be .25” of snowfall with a total of 2” of liquid equivalent precipitation.";
LABEL_20:
      v30 = (v3 - 32) | 0x8000000000000000;
      break;
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220DC17C0;
  v6 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v6, 0, 1, v7, v8, v9, v10, v11, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, vars0, vars8);
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v17 = sub_220CEFDB0();
  *(v5 + 64) = v17;
  *(v5 + 32) = v13;
  *(v5 + 40) = v15;
  v18 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v18, 0, 1, v19, v20, v21, v22, v23, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, vars0a, vars8a);
  v25 = v24;
  v27 = v26;

  *(v5 + 96) = v16;
  *(v5 + 104) = v17;
  *(v5 + 72) = v25;
  *(v5 + 80) = v27;
  v28 = sub_220DC05F0();

  return v28;
}

uint64_t sub_220D24384(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v84) = a3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = MEMORY[0x28223BE20](v5);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v83 = &v80 - v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v80 - v17;
  v19 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v19, 0, 0, v20, v21, v22, v23, v24, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v86 = v25;
  v88 = v26;

  v27 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v27, 0, 0, v28, v29, v30, v31, v32, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v85 = v33;
  v87 = v34;

  v35 = *(v5 + 20);
  v36 = *(v16 + 56);
  sub_220D26078(a2 + v35, v18, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D26078(a1 + v35, &v18[v36], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v35) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = EnumCaseMultiPayload;
  if (v35 == 1)
  {
    (*(v12 + 32))(v14, v18, v11);
    if (v38 == 1)
    {
      sub_220D2561C(SBYTE4(v84));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v40 = MEMORY[0x277D83A80];
      *(v39 + 56) = MEMORY[0x277D839F8];
      *(v39 + 64) = v40;
      *(v39 + 32) = v41;
      v42 = MEMORY[0x277D837D0];
      *(v39 + 96) = MEMORY[0x277D837D0];
      v43 = sub_220CEFDB0();
      v44 = v88;
      *(v39 + 72) = v86;
      *(v39 + 80) = v44;
      *(v39 + 136) = v42;
      *(v39 + 144) = v43;
      v45 = v85;
      *(v39 + 104) = v43;
      *(v39 + 112) = v45;
      *(v39 + 120) = v87;
      v46 = sub_220DC05F0();

      v47 = *(v12 + 8);
      v47(v14, v11);
      v47(&v18[v36], v11);
      return v46;
    }

    sub_220D2594C(SBYTE4(v84));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v55 = MEMORY[0x277D83A80];
    *(v54 + 56) = MEMORY[0x277D839F8];
    *(v54 + 64) = v55;
    *(v54 + 32) = v56;
    v57 = MEMORY[0x277D837D0];
    *(v54 + 96) = MEMORY[0x277D837D0];
    v58 = sub_220CEFDB0();
    v59 = v88;
    *(v54 + 72) = v86;
    *(v54 + 80) = v59;
    *(v54 + 136) = v57;
    *(v54 + 144) = v58;
    v60 = v85;
    *(v54 + 104) = v58;
    *(v54 + 112) = v60;
    *(v54 + 120) = v87;
    v46 = sub_220DC05F0();

    (*(v12 + 8))(v14, v11);
    v53 = &v18[v36];
LABEL_7:
    sub_220D18B64(v53, type metadata accessor for PrecipitationTotalStringAmount.Format);
    return v46;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220D25C7C(SBYTE4(v84));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_220DC17C0;
    v49 = MEMORY[0x277D837D0];
    *(v48 + 56) = MEMORY[0x277D837D0];
    v50 = sub_220CEFDB0();
    v51 = v88;
    *(v48 + 32) = v86;
    *(v48 + 40) = v51;
    *(v48 + 96) = v49;
    *(v48 + 104) = v50;
    v52 = v85;
    *(v48 + 64) = v50;
    *(v48 + 72) = v52;
    *(v48 + 80) = v87;
    v46 = sub_220DC05F0();

    (*(v12 + 8))(&v18[v36], v11);
    v53 = v18;
    goto LABEL_7;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v61 = sub_220DBF410();
  __swift_project_value_buffer(v61, qword_27CF95F48);
  v62 = v82;
  sub_220D26078(a2, v82, type metadata accessor for PrecipitationTotalStringAmount);
  v63 = v83;
  sub_220D26078(a1, v83, type metadata accessor for PrecipitationTotalStringAmount);
  v64 = sub_220DBF3F0();
  v65 = sub_220DC0980();
  v88 = v64;
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    LODWORD(v86) = v65;
    v67 = v66;
    v87 = swift_slowAlloc();
    v89 = v87;
    *v67 = 136446466;
    v68 = v81;
    sub_220D26078(v62, v81, type metadata accessor for PrecipitationTotalStringAmount);
    v69 = sub_220DC0630();
    v71 = v70;
    sub_220D18B64(v62, type metadata accessor for PrecipitationTotalStringAmount);
    v72 = sub_220D3F210(v69, v71, &v89);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2082;
    sub_220D26078(v63, v68, type metadata accessor for PrecipitationTotalStringAmount);
    v73 = sub_220DC0630();
    v75 = v74;
    sub_220D18B64(v63, type metadata accessor for PrecipitationTotalStringAmount);
    v76 = sub_220D3F210(v73, v75, &v89);

    *(v67 + 14) = v76;
    v77 = v88;
    _os_log_impl(&dword_220CD1000, v88, v86, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v67, 0x16u);
    v78 = v87;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v78, -1, -1);
    MEMORY[0x223D98FB0](v67, -1, -1);
  }

  else
  {

    sub_220D18B64(v63, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D18B64(v62, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v18);
  return 0;
}

uint64_t sub_220D24B54(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D24D7C(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D24FA4(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D251CC(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D253F4(char a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    case 4:
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_10;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_10:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2561C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2594C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D25C7C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2601C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);
  return a2;
}

uint64_t sub_220D26078(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);
  return a2;
}

void sub_220D260D4(uint64_t a1)
{
  sub_220D26148(319);
  if (v1 <= 0x3F)
  {
    sub_220D261B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D26148(uint64_t a1)
{
  if (!qword_27CF959C8)
  {
    sub_220DBE560();
    sub_220DBE740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF959C8);
    }
  }
}

void sub_220D261B8(uint64_t a1)
{
  if (!qword_27CF959D0)
  {
    type metadata accessor for PrecipitationPlatterPrecipitationKind(255);
    sub_220DBE560();
    sub_220DBE740();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF959D0);
    }
  }
}

uint64_t sub_220D26278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_220D262B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220D26330@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v175 = a7;
  v174 = a6;
  v173 = a5;
  v189 = a4;
  v191 = a3;
  v201 = a2;
  v195 = a1;
  v184 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95648, &qword_220DC2D00);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_57();
  v181 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_57();
  v194 = v18;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_5_9();
  v182 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_57();
  v190 = v22;
  v185 = sub_220DC0260();
  OUTLINED_FUNCTION_5_9();
  v186 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_57();
  v197 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F0, &qword_220DC1D98);
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  v171 = &v162 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  v33 = OUTLINED_FUNCTION_18(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_25_0();
  v199 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_57();
  v198 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v41 = OUTLINED_FUNCTION_18(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_57();
  v196 = v45;
  v47 = *a8;
  v192 = *(a8 + 8);
  v46 = v192;
  v48 = *(a8 + 16);
  v49 = *(a8 + 24);
  v51 = *(a8 + 32);
  v50 = *(a8 + 40);
  v52 = v9[3];
  v53 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v52);
  v205 = v47;
  v206 = v46;
  v207 = v48;
  v208 = v49;
  v209 = v51;
  v210 = v50;
  v168 = (*(v53 + 8))(v195, v191, v189, &v205, v52, v53);
  v188 = v54;
  v55 = v47;
  v56 = v196;
  sub_220D275EC(v173, v55, v196);
  __swift_project_boxed_opaque_existential_1(v9 + 5, v9[8]);
  v205 = v55;
  v206 = v192;
  v180 = v48;
  v207 = v48;
  v208 = v49;
  v179 = v49;
  v178 = v51;
  v209 = v51;
  v210 = v50;
  v177 = v50;
  v57 = v56;
  v58 = v55;
  sub_220DB0CEC(&v205, v198);
  sub_220DBECC0();
  v59 = v171;
  v60 = OUTLINED_FUNCTION_18_5();
  __swift_storeEnumTagSinglePayload(v60, v61, 1, v62);
  sub_220DC0310();
  sub_220CE1ABC(v59, &qword_27CF951F0, &qword_220DC1D98);
  sub_220D28804((v9 + 10), &v202);
  v64 = v203;
  v63 = v204;
  v189 = __swift_project_boxed_opaque_existential_1(&v202, v203);
  sub_220DBE780();
  sub_220DBE7B0();
  v65 = v170;
  sub_220DBE7D0();
  sub_220CF6B14(v57, v65, &qword_27CF94F90, &unk_220DC4410);
  v66 = sub_220DBF310();
  OUTLINED_FUNCTION_27_1(v65, 1, v66);
  if (v109)
  {

    sub_220CE1ABC(v65, &qword_27CF94F90, &unk_220DC4410);
    v69 = 1;
    v68 = v181;
  }

  else
  {
    sub_220DBF300();
    OUTLINED_FUNCTION_15_5();
    (*(v67 + 8))(v65, v66);
    sub_220D287C0();
    v68 = v181;
    sub_220DBE040();
    v69 = 0;
  }

  __swift_storeEnumTagSinglePayload(v68, v69, 1, v200);
  v70 = v172;
  sub_220CF6B14(v57, v172, &qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_27_1(v70, 1, v66);
  v71 = v183;
  if (v109)
  {

    sub_220CE1ABC(v70, &qword_27CF94F90, &unk_220DC4410);
    v73 = 1;
  }

  else
  {
    sub_220DBF2F0();
    OUTLINED_FUNCTION_15_5();
    (*(v72 + 8))(v70, v66);
    sub_220D287C0();
    sub_220DBE040();
    v73 = 0;
  }

  v74 = v187;
  __swift_storeEnumTagSinglePayload(v71, v73, 1, v200);
  v75 = v176;
  sub_220CF6B14(v57, v176, &qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_27_1(v75, 1, v66);
  v76 = v185;
  if (v109)
  {
    sub_220CE1ABC(v75, &qword_27CF94F90, &unk_220DC4410);
    v78 = 1;
  }

  else
  {
    sub_220DBF2D0();
    v74 = v187;
    OUTLINED_FUNCTION_15_5();
    (*(v77 + 8))(v75, v66);
    v78 = 0;
  }

  v79 = sub_220DBE560();
  __swift_storeEnumTagSinglePayload(v74, v78, 1, v79);
  v205 = v58;
  v206 = v192;
  v207 = v180;
  v208 = v179;
  v209 = v178;
  v210 = v177;
  v161 = v64;
  v80 = v194;
  v81 = v190;
  v82 = v193;
  (*(v63 + 16))(v195, v201, v190, v193, v194, v68, v71, v74, &v205, v161, v63);
  OUTLINED_FUNCTION_50(v74);
  sub_220CE1ABC(v71, &qword_27CF95648, &qword_220DC2D00);
  sub_220CE1ABC(v68, &qword_27CF95648, &qword_220DC2D00);
  OUTLINED_FUNCTION_50(v80);
  v83 = *(v182 + 8);
  v84 = v200;
  v83(v82, v200);
  v83(v81, v84);
  __swift_destroy_boxed_opaque_existential_1(&v202);
  if (v188)
  {
    v85 = v167;
    sub_220CF6B14(v199, v167, &qword_27CF951F8, &qword_220DC1DA0);
    v86 = OUTLINED_FUNCTION_18_5();
    v87 = v76;
    OUTLINED_FUNCTION_27_1(v86, v88, v76);
    if (v109)
    {
      sub_220CE1ABC(v85, &qword_27CF951F8, &qword_220DC1DA0);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_1_14();
      v201 = sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v89 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_5_9();
      v91 = v90;
      v93 = *(v92 + 72);
      v94 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v95 = OUTLINED_FUNCTION_22_4();
      OUTLINED_FUNCTION_6_9(v95, xmmword_220DC17C0);
      v96 = *(v91 + 104);
      v96(v94, *MEMORY[0x277D7B3D8], v89);
      v97 = v186;
      v98 = v197;
      (*(v186 + 16))(v94 + v93, v197, v87);
      v96(v94 + v93, *MEMORY[0x277D7B3C0], v89);
      OUTLINED_FUNCTION_19_5();
      sub_220DC0220();
      (*(v97 + 8))(v98, v87);
    }

    else
    {
      v105 = *(v186 + 32);
      v105(v169, v85, v76);
      v106 = v163;
      sub_220CF6B14(v198, v163, &qword_27CF951F8, &qword_220DC1DA0);
      v107 = OUTLINED_FUNCTION_18_5();
      OUTLINED_FUNCTION_27_1(v107, v108, v76);
      if (v109)
      {
        sub_220CE1ABC(v106, &qword_27CF951F8, &qword_220DC1DA0);
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_6_0();
        v110 = sub_220DBE240();
        v200 = v111;
        v201 = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
        v112 = sub_220DC0250();
        OUTLINED_FUNCTION_5_9();
        v114 = v113;
        v116 = *(v115 + 72);
        OUTLINED_FUNCTION_21_0();
        v195 = swift_allocObject();
        OUTLINED_FUNCTION_6_9(v195, xmmword_220DC1CC0);
        v117 = *(v114 + 104);
        v117(v68, *MEMORY[0x277D7B3D8], v112);
        v118 = v186;
        v119 = *(v186 + 16);
        v120 = v185;
        v119(v68 + v116, v169, v185);
        v121 = *MEMORY[0x277D7B3C0];
        v117(v68 + v116, v121, v112);
        v122 = v68 + 2 * v116;
        v123 = v197;
        v119(v122, v197, v120);
        v117(v122, v121, v112);
        OUTLINED_FUNCTION_19_5();
        sub_220DC0220();
        v124 = *(v118 + 8);
        v124(v169, v120);
        v124(v123, v120);
      }

      else
      {
        v141 = v164;
        v105(v164, v106, v76);
        v142 = v76;
        if (qword_280FA6600 != -1)
        {
          OUTLINED_FUNCTION_10(&qword_280FA6600);
        }

        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_6_0();
        v200 = sub_220DBE240();
        v195 = v143;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
        v144 = sub_220DC0250();
        v201 = v144;
        OUTLINED_FUNCTION_5_9();
        v146 = v145;
        v148 = *(v147 + 72);
        v149 = (*(v145 + 80) + 32) & ~*(v145 + 80);
        v194 = swift_allocObject();
        OUTLINED_FUNCTION_6_9(v194, xmmword_220DC1CE0);
        v150 = *(v146 + 104);
        v150(v149, *MEMORY[0x277D7B3D8], v144);
        v193 = v150;
        v151 = v186;
        v152 = *(v186 + 16);
        v152(v149 + v148, v141, v142);
        v153 = *MEMORY[0x277D7B3C0];
        v154 = v201;
        v150(v149 + v148, v153, v201);
        v152(v149 + 2 * v148, v169, v142);
        v155 = v154;
        v156 = v193;
        v193(v149 + 2 * v148, v153, v155);
        v157 = 3 * v148;
        v158 = v149 + 3 * v148;
        v159 = v197;
        v152(v158, v197, v142);
        v156(v149 + v157, v153, v201);
        OUTLINED_FUNCTION_19_5();
        sub_220DC0220();
        v160 = *(v151 + 8);
        v160(v164, v142);
        v160(v169, v142);
        v160(v159, v142);
      }
    }
  }

  else
  {
    v99 = v199;
    v100 = v165;
    sub_220CF6B14(v199, v165, &qword_27CF951F8, &qword_220DC1DA0);
    v101 = OUTLINED_FUNCTION_18_5();
    v102 = v76;
    OUTLINED_FUNCTION_27_1(v101, v103, v76);
    if (v109)
    {
      OUTLINED_FUNCTION_50(v99);
      OUTLINED_FUNCTION_50(v198);
      sub_220CE1ABC(v196, &qword_27CF94F90, &unk_220DC4410);
      OUTLINED_FUNCTION_50(v100);
      return (*(v186 + 32))(v184, v197, v76);
    }

    v125 = v186;
    v126 = v166;
    (*(v186 + 32))(v166, v100, v102);
    v127 = v102;
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_1_14();
    v128 = sub_220DBE240();
    v200 = v129;
    v201 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v194 = OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_5_9();
    v131 = v130;
    v195 = *(v132 + 72);
    OUTLINED_FUNCTION_21_0();
    v133 = OUTLINED_FUNCTION_22_4();
    *(v133 + 16) = xmmword_220DC17C0;
    v134 = v133 + v102;
    v135 = *(v125 + 16);
    v135(v134, v126, v127);
    v136 = *MEMORY[0x277D7B3C0];
    v137 = *(v131 + 104);
    v138 = OUTLINED_FUNCTION_14_8();
    v137(v138);
    v139 = v195;
    v135(v195 + v134, v197, v127);
    (v137)(v139 + v134, v136, v194);
    OUTLINED_FUNCTION_19_5();
    sub_220DC0220();
    v140 = *(v125 + 8);
    v140(v166, v127);
    v140(v197, v127);
  }

  OUTLINED_FUNCTION_50(v199);
  OUTLINED_FUNCTION_50(v198);
  return sub_220CE1ABC(v196, &qword_27CF94F90, &unk_220DC4410);
}

uint64_t sub_220D275EC@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v97 = a3;
  v120 = a2;
  v107 = a4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v114 = *(v119 - 8);
  v4 = MEMORY[0x28223BE20](v119);
  v96 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v93 - v7;
  MEMORY[0x28223BE20](v6);
  v118 = v93 - v9;
  v121 = sub_220DBE960();
  v102 = *(v121 - 8);
  v10 = MEMORY[0x28223BE20](v121);
  v110 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v99 = v93 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v94 = v93 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v95 = v93 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v101 = v93 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v100 = v93 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v98 = v93 - v23;
  MEMORY[0x28223BE20](v22);
  v108 = v93 - v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v25 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v27 = v93 - v26;
  v28 = sub_220DBE6E0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_220DBE560();
  v105 = *(v106 - 8);
  v32 = MEMORY[0x28223BE20](v106);
  v93[1] = v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v93[0] = v93 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v93 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = v93 - v39;
  sub_220DBE3E0();
  sub_220DBE600();
  sub_220DBE320();
  (*(v29 + 8))(v31, v28);
  (*(v25 + 16))(v27, v120, v117);
  v103 = v40;
  v123 = v40;
  v124 = v38;
  v104 = v38;
  v41 = sub_220CE5008(sub_220D287A0, v122);
  v42 = v41;
  v120 = *(v41 + 16);
  if (v120)
  {
    v43 = v102;
    v45 = v102 + 16;
    v44 = *(v102 + 16);
    v46 = v100;
    v115 = v41 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v116 = v44;
    result = (v44)(v100);
    v113 = v114 + 1;
    v114 = (v45 - 8);
    v117 = v45;
    v111 = (v45 + 16);
    v48 = 1;
    v49 = v110;
    v50 = v101;
    v112 = v42;
    v109 = v8;
    v51 = v118;
    v52 = v113;
    while (v120 != v48)
    {
      if (v48 >= *(v42 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v53 = v121;
      v116(v50, v115 + *(v43 + 72) * v48, v121);
      sub_220DBE890();
      sub_220DBE890();
      sub_220D287C0();
      v54 = sub_220DBE010();
      v55 = v46;
      v56 = *v52;
      v57 = v8;
      v58 = v50;
      v59 = v43;
      v60 = v119;
      (*v52)(v57, v119);
      v61 = v60;
      v43 = v59;
      v56(v51, v61);
      v62 = *(v59 + 8);
      if (v54)
      {
        v62(v55, v53);
        result = (*v111)(v55, v58, v53);
      }

      else
      {
        result = (v62)(v58, v53);
      }

      v46 = v55;
      v50 = v58;
      ++v48;
      v8 = v109;
      v49 = v110;
      v42 = v112;
    }

    v63 = *v111;
    v64 = v98;
    v65 = v121;
    (*v111)(v98, v46, v121);
    v110 = v63;
    (v63)(v108, v64, v65);
    v66 = v99;
    result = (v116)(v99, v115, v65);
    v67 = 1;
    v68 = v118;
    v69 = v113;
    while (v120 != v67)
    {
      if (v67 >= *(v42 + 16))
      {
        goto LABEL_20;
      }

      v116(v49, v115 + *(v43 + 72) * v67, v121);
      v70 = v49;
      sub_220DBE890();
      sub_220DBE890();
      sub_220D287C0();
      v71 = v66;
      v72 = sub_220DBE010();
      v73 = *v69;
      v74 = v119;
      (*v69)(v8, v119);
      v73(v68, v74);
      v75 = *(v43 + 8);
      if (v72)
      {
        v76 = v121;
        v75(v71, v121);
        result = (v110)(v71, v70, v76);
      }

      else
      {
        result = (v75)(v70, v121);
      }

      v66 = v71;
      v49 = v70;
      ++v67;
      v42 = v112;
    }

    v77 = v94;
    v78 = v121;
    v79 = v110;
    (v110)(v94, v66, v121);
    v80 = v95;
    v79(v95, v77, v78);
    v81 = v108;
    sub_220DBE890();
    v83 = v118;
    v82 = v119;
    sub_220DBE130();
    v84 = *v113;
    (*v113)(v8, v82);
    sub_220DBE050();
    v84(v83, v82);
    sub_220DBE8F0();
    v85 = v96;
    sub_220DBE890();
    sub_220DBE130();
    v84(v85, v82);
    sub_220DBE050();
    v84(v8, v82);
    sub_220DBE8F0();
    v86 = v107;
    sub_220DBF2E0();
    v87 = *v114;
    v88 = v121;
    (*v114)(v80, v121);
    v87(v81, v88);
    v89 = 0;
  }

  else
  {

    v89 = 1;
    v86 = v107;
  }

  v90 = sub_220DBF310();
  __swift_storeEnumTagSinglePayload(v86, v89, 1, v90);
  v91 = *(v105 + 8);
  v92 = v106;
  v91(v104, v106);
  return (v91)(v103, v92);
}

uint64_t sub_220D280A4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  LODWORD(v75) = a5;
  v73 = a2;
  v74 = a4;
  v76 = a3;
  v78 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951F8, &qword_220DC1DA0);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v67 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_57();
  v66 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  v79 = sub_220DC0260();
  OUTLINED_FUNCTION_5_9();
  v77 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9();
  v69 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v68 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  v27 = *a6;
  v29 = a6[4];
  v28 = a6[5];
  v70 = a6[3];
  v71 = v29;
  v72 = v28;
  v30 = v8[20];
  __swift_project_boxed_opaque_existential_1(v8 + 16, v8[19]);
  v31 = *(v30 + 16);
  v80 = v26;
  v32 = v74;
  v33 = v75;
  v34 = v18;
  v35 = v73;
  v31();
  v36 = v8;
  sub_220D275EC(v76, v27, v34);
  __swift_project_boxed_opaque_existential_1(v8 + 5, v8[8]);
  if ((v33 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_6();
    v37 = v67;
    sub_220DAD0B8(v32, v34, v81, v67);
    v38 = v79;
    OUTLINED_FUNCTION_27_1(v37, 1, v79);
    if (!v39)
    {
      OUTLINED_FUNCTION_21_3();
      v55(v69, v37, v38);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_1_14();
      v56 = sub_220DBE240();
      v74 = v57;
      v75 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
      v72 = OUTLINED_FUNCTION_23_5();
      OUTLINED_FUNCTION_5_9();
      v59 = v58;
      v46 = *(v60 + 72);
      OUTLINED_FUNCTION_21_0();
      v61 = OUTLINED_FUNCTION_22_4();
      v62 = OUTLINED_FUNCTION_10_9(v61, xmmword_220DC17C0);
      (v33)(v62);
      v49 = *MEMORY[0x277D7B3C0];
      v50 = *(v59 + 104);
      v63 = OUTLINED_FUNCTION_14_8();
      v50(v63);
      v52 = v35 + v46;
      v53 = v69;
      goto LABEL_12;
    }

LABEL_8:
    sub_220CE1ABC(v34, &qword_27CF94F90, &unk_220DC4410);
    sub_220CE1ABC(v37, &qword_27CF951F8, &qword_220DC1DA0);
    return (*(v77 + 32))(v78, v80, v38);
  }

  OUTLINED_FUNCTION_16_6();
  v37 = v66;
  sub_220DAEED4(v32, v34, v81, v66);
  v38 = v79;
  OUTLINED_FUNCTION_27_1(v37, 1, v79);
  if (v39)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_21_3();
  v40(v68, v37, v38);
  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_14();
  v41 = sub_220DBE240();
  v74 = v42;
  v75 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v72 = OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_5_9();
  v44 = v43;
  v46 = *(v45 + 72);
  OUTLINED_FUNCTION_21_0();
  v47 = OUTLINED_FUNCTION_22_4();
  v48 = OUTLINED_FUNCTION_10_9(v47, xmmword_220DC17C0);
  (v33)(v48);
  v49 = *MEMORY[0x277D7B3C0];
  v50 = *(v44 + 104);
  v51 = OUTLINED_FUNCTION_14_8();
  v50(v51);
  v52 = v35 + v46;
  v53 = v68;
LABEL_12:
  (v33)(v52, v53, v38);
  (v50)(v35 + v46, v49, v72);
  sub_220DC0220();
  v64 = v36[1];
  v65 = v79;
  v64(v53, v79);
  sub_220CE1ABC(v76, &qword_27CF94F90, &unk_220DC4410);
  return (v64)(v80, v65);
}

uint64_t sub_220D28650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_220DBE560();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE8F0();
  sub_220CD9B24();
  v7 = sub_220DC0580();
  v8 = *(v4 + 8);
  v8(v6, v3);
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    sub_220DBE8F0();
    v9 = sub_220DBE440();
    v8(v6, v3);
  }

  return v9 & 1;
}

unint64_t sub_220D287C0()
{
  result = qword_27CF95688;
  if (!qword_27CF95688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF95688);
  }

  return result;
}

uint64_t sub_220D28804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_220D28868(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v35 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v29 = v8 - v9;
  OUTLINED_FUNCTION_23();
  result = MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = 0;
  v34 = *(a3 + 16);
  v31 = v6 + 16;
  v15 = (v6 + 8);
  v28 = (v6 + 32);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v34 == v14)
    {

      return v30;
    }

    if (v14 >= *(a3 + 16))
    {
      break;
    }

    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = *(v6 + 72);
    v18 = a3;
    (*(v6 + 16))(v13, a3 + v16 + v17 * v14, v35);
    v19 = v32(v13);
    if (v3)
    {
      (*v15)(v13, v35);
      v25 = v30;

      return v25;
    }

    if (v19)
    {
      v27 = *v28;
      v27(v29, v13, v35);
      v20 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v20;
      if (isUniquelyReferenced_nonNull_native)
      {
        v22 = v20;
      }

      else
      {
        OUTLINED_FUNCTION_5_10();
        v22 = v36;
      }

      a3 = v18;
      v23 = *(v22 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v22 + 24) >> 1)
      {
        v30 = v23 + 1;
        v26 = v23;
        sub_220CE5648();
        v24 = v30;
        v23 = v26;
        a3 = v18;
        v22 = v36;
      }

      ++v14;
      *(v22 + 16) = v24;
      v30 = v22;
      result = (v27)(v22 + v16 + v23 * v17, v29, v35);
    }

    else
    {
      result = (*v15)(v13, v35);
      ++v14;
    }
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for UVIndexPolarEdgeCaseRule(_BYTE *result, int a2, int a3)
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

uint64_t UVIndexSteadyBeforeNoonRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for UVIndexSteadyBeforeNoonRule(_BYTE *result, int a2, int a3)
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

uint64_t sub_220D28D10@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = sub_220DBE960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v18 = a2;
  v10 = *(a2 + 16);
  v11 = (v6 + 8);
  while (1)
  {
    if (v10 == v9)
    {
      v13 = 1;
      v14 = v16;
      return __swift_storeEnumTagSinglePayload(v14, v13, 1, v5);
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v12 = v17(v8);
    if (v3)
    {
      return (*v11)(v8, v5);
    }

    if (v12)
    {
      break;
    }

    (*v11)(v8, v5);
    ++v9;
  }

  v14 = v16;
  (*(v6 + 32))(v16, v8, v5);
  v13 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v13, 1, v5);
}

void sub_220D28ECC()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_12_8(v3, v4, v5);
  v6 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_11(v8, v38);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_5(v10, v11, v12, v13, v14, v15, v16, v17, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_4_10();
  v21(v20);
  v22 = OUTLINED_FUNCTION_1_16(&qword_280FA7728);
  OUTLINED_FUNCTION_24_4(v22);
  OUTLINED_FUNCTION_2_14(&qword_280FA7720);
  OUTLINED_FUNCTION_7_9();
  while (1)
  {
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_19_6();
    if (v23)
    {
      sub_220CE1ABC(v2, &qword_27CF959D8, &unk_220DC3B00);
      OUTLINED_FUNCTION_20_4();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_14_9();
    v24 = OUTLINED_FUNCTION_10_10();
    v25(v24);
    v26 = OUTLINED_FUNCTION_23_6();
    v0(v26);
    OUTLINED_FUNCTION_17_7();
    v27 = OUTLINED_FUNCTION_3_13();
    v6(v27);
    v28 = OUTLINED_FUNCTION_22_5();
    v30 = v29(v28);
    v0 = v1;
    if (v1)
    {
      v35 = OUTLINED_FUNCTION_21_4();
      v36(v35);
      sub_220CE1ABC(v2, &qword_27CF959D8, &unk_220DC3B00);
      goto LABEL_10;
    }

    if (v30)
    {
      break;
    }

    v31 = OUTLINED_FUNCTION_9_7();
    v32(v31);
  }

  sub_220CE1ABC(v2, &qword_27CF959D8, &unk_220DC3B00);
  v37 = OUTLINED_FUNCTION_8_8();
  v33 = (v6)(v37);
  v34 = 0;
LABEL_9:
  OUTLINED_FUNCTION_25_4(v33, v34);
LABEL_10:
  OUTLINED_FUNCTION_27_2();
}

void sub_220D29144()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v20 = v7;
  v21 = v6;
  v8 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = v2 >> 1;
  v16 = (v10 + 8);
  while (1)
  {
    if (v15 == v4)
    {
      v18 = 1;
      v19 = v20;
      goto LABEL_10;
    }

    if (v4 >= v15)
    {
      break;
    }

    (*(v10 + 16))(v14, v22 + *(v10 + 72) * v4, v8);
    v17 = v21(v14);
    if (v0)
    {
      (*v16)(v14, v8);
      goto LABEL_11;
    }

    if (v17)
    {
      v19 = v20;
      (*(v10 + 32))(v20, v14, v8);
      v18 = 0;
LABEL_10:
      __swift_storeEnumTagSinglePayload(v19, v18, 1, v8);
LABEL_11:
      OUTLINED_FUNCTION_27_2();
      return;
    }

    (*v16)(v14, v8);
    ++v4;
  }

  __break(1u);
}

void sub_220D292D8()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_12_8(v3, v4, v5);
  v6 = sub_220DBE980();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_11(v8, v38);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_5(v10, v11, v12, v13, v14, v15, v16, v17, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E8, &qword_220DC3C78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959F0, &qword_220DC3C80);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_4_10();
  v21(v20);
  v22 = OUTLINED_FUNCTION_1_16(&qword_27CF959F8);
  OUTLINED_FUNCTION_24_4(v22);
  OUTLINED_FUNCTION_2_14(&qword_27CF95A00);
  OUTLINED_FUNCTION_7_9();
  while (1)
  {
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_19_6();
    if (v23)
    {
      sub_220CE1ABC(v2, &qword_27CF959F0, &qword_220DC3C80);
      OUTLINED_FUNCTION_20_4();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_14_9();
    v24 = OUTLINED_FUNCTION_10_10();
    v25(v24);
    v26 = OUTLINED_FUNCTION_23_6();
    v0(v26);
    OUTLINED_FUNCTION_17_7();
    v27 = OUTLINED_FUNCTION_3_13();
    v6(v27);
    v28 = OUTLINED_FUNCTION_22_5();
    v30 = v29(v28);
    v0 = v1;
    if (v1)
    {
      v35 = OUTLINED_FUNCTION_21_4();
      v36(v35);
      sub_220CE1ABC(v2, &qword_27CF959F0, &qword_220DC3C80);
      goto LABEL_10;
    }

    if (v30)
    {
      break;
    }

    v31 = OUTLINED_FUNCTION_9_7();
    v32(v31);
  }

  sub_220CE1ABC(v2, &qword_27CF959F0, &qword_220DC3C80);
  v37 = OUTLINED_FUNCTION_8_8();
  v33 = (v6)(v37);
  v34 = 0;
LABEL_9:
  OUTLINED_FUNCTION_25_4(v33, v34);
LABEL_10:
  OUTLINED_FUNCTION_27_2();
}

uint64_t sub_220D29574@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v98) = a2;
  v113 = a3;
  v4 = sub_220DBE380();
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_220DBE560();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = (v93 - v8);
  v9 = sub_220DBEF70();
  v10 = *(v9 - 8);
  v116 = v9;
  i = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220DBE960();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v107 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v93 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v100 = v93 - v21;
  MEMORY[0x28223BE20](v20);
  v115 = v93 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v93 - v25;
  v27 = sub_220DBE6E0();
  v111 = *(v27 - 8);
  v112 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UVIndexComponentDescriptionContext(0);
  v114 = *(v30 + 28);
  sub_220DBE600();
  v31 = *(v30 + 24);
  v32 = *(v24 + 16);
  v109 = a1;
  v32(v26, a1 + v31, v23);
  v110 = v29;
  v119 = v29;
  v33 = v26;
  v34 = v13;
  v35 = sub_220CE5008(sub_220D2A7C8, v118);
  v99 = 0;
  v36 = 0;
  v37 = *(v35 + 16);
  v38 = i + 1;
  for (i = (v14 + 8); ; (*i)(v19, v34))
  {
    if (v37 == v36)
    {

      v33 = v112;
      if (qword_280FA6600 == -1)
      {
LABEL_7:
        sub_220DBE240();
        sub_220DC0240();

        return (*(v111 + 8))(v110, v33);
      }

LABEL_20:
      swift_once();
      goto LABEL_7;
    }

    if (v36 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v14 + 16))(v19, v35 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v36, v34);
    sub_220DBE910();
    v33 = sub_220DBEF60();
    (*v38)(v12, v116);
    if (sub_220DBEF20())
    {
      break;
    }

    ++v36;
  }

  v39 = *(v14 + 32);
  v40 = v100;
  v39(v100, v19, v34);
  v41 = (v39)(v115, v40, v34);
  MEMORY[0x28223BE20](v41);
  v42 = v101;
  sub_220D28D10(sub_220D2A7A8, v35, v101);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v34);
  v97 = v34;
  if (EnumTagSinglePayload == 1)
  {
    sub_220CE1ABC(v42, &qword_27CF959E0, &unk_220DC3C00);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v116 = sub_220DBE240();
    v107 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v45 = sub_220DC0250();
    v99 = v45;
    v46 = *(v45 - 8);
    v100 = *(v46 + 72);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    v101 = v48;
    *(v48 + 16) = xmmword_220DC17C0;
    v49 = (v48 + v47);
    v50 = v105;
    sub_220DBEA60();
    v51 = v102;
    sub_220D2B7CC();
    v52 = sub_220DBE3C0();
    (*(v103 + 8))(v51, v104);
    v53 = *(v106 + 8);
    v54 = v108;
    v53(v50, v108);
    *v49 = v52;
    v55 = *(v46 + 104);
    v55(v49, *MEMORY[0x277D7B3B8], v45);
    v56 = &v100[v49];
    v57 = v115;
    sub_220DBE8F0();
    v58 = sub_220DBE4F0();
    v60 = v59;
    v53(v50, v54);
    *v56 = v58;
    v56[1] = v60;
    v55(v56, *MEMORY[0x277D7B3D0], v99);
    sub_220DC0220();
    (*i)(v57, v97);
    goto LABEL_17;
  }

  v39(v107, v42, v34);
  if (v98)
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_16;
    }

LABEL_21:
    swift_once();
  }

  else if (qword_280FA6600 != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v99 = sub_220DBE240();
  v100 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
  v94 = sub_220DC0250();
  v62 = *(v94 - 8);
  v116 = *(v62 + 72);
  v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v64 = swift_allocObject();
  v98 = v64;
  *(v64 + 16) = xmmword_220DC1CE0;
  v65 = (v64 + v63);
  v66 = v105;
  sub_220DBE8F0();
  v67 = v102;
  sub_220D2B7CC();
  v68 = sub_220DBE3C0();
  v96 = *(v103 + 8);
  v69 = v104;
  v96(v67, v104);
  v103 = *(v106 + 8);
  (v103)(v66, v108);
  v101 = v65;
  *v65 = v68;
  v95 = *MEMORY[0x277D7B3B8];
  v106 = *(v62 + 104);
  (v106)(v65);
  v93[1] = v62 + 104;
  sub_220DBE8F0();
  sub_220D2B7CC();
  v70 = sub_220DBE3C0();
  v96(v67, v69);
  v71 = v108;
  v72 = v103;
  (v103)(v66, v108);
  v73 = v116;
  v74 = v101;
  *(v101 + v116) = v70;
  v75 = v74;
  v76 = v94;
  (v106)(v74 + v73, v95, v94);
  v77 = (v75 + 2 * v73);
  sub_220DBE8F0();
  v78 = sub_220DBE4F0();
  v80 = v79;
  v72(v66, v71);
  *v77 = v78;
  v77[1] = v80;
  v81 = *MEMORY[0x277D7B3D0];
  v82 = v76;
  v83 = v76;
  v84 = v106;
  (v106)(v77, v81, v82);
  v85 = (v101 + 3 * v116);
  v86 = v107;
  sub_220DBE8F0();
  v87 = sub_220DBE4F0();
  v89 = v88;
  (v103)(v66, v108);
  *v85 = v87;
  v85[1] = v89;
  v84(v85, v81, v83);
  sub_220DC0220();
  v90 = *i;
  v91 = v97;
  (*i)(v86, v97);
  v90(v115, v91);
LABEL_17:
  v33 = v112;
  return (*(v111 + 8))(v110, v33);
}

uint64_t sub_220D2A374(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_220DC0260();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  sub_220D29574(a2, a3, v10 - v9);
  v12 = sub_220DC0230();
  (*(v7 + 8))(v11, v5);
  return v12;
}

uint64_t sub_220D2A458(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v2 = sub_220DBE560();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = sub_220DBEF70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE910();
  sub_220DBEF60();
  (*(v10 + 8))(v12, v9);
  v13 = sub_220DBEF40();
  v15 = v14;
  if (v13 == sub_220DBEF40() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_220DC0CA0();

    v19 = 0;
    if ((v18 & 1) == 0)
    {
      return v19 & 1;
    }
  }

  sub_220DBE8F0();
  sub_220DBE8F0();
  v19 = sub_220DBE430();
  v20 = *(v3 + 8);
  v20(v6, v2);
  v20(v8, v2);
  return v19 & 1;
}

_BYTE *storeEnumTagSinglePayload for UVIndexIncreasingRule(_BYTE *result, int a2, int a3)
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

uint64_t UVIndexNightRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for UVIndexNightRule(_BYTE *result, int a2, int a3)
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

WeatherAppSupport::PrecipitationTotalPlatterViewModel::SectionModel __swiftcall PrecipitationTotalPlatterViewModel.SectionModel.init(title:rows:)(Swift::String_optional title, Swift::OpaquePointer rows)
{
  *v2 = title;
  *(v2 + 16) = rows;
  result.title = title;
  result.rows = rows;
  return result;
}

uint64_t static PrecipitationTotalPlatterViewModel.SectionModel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_220DC0CA0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:
  v6 = OUTLINED_FUNCTION_20();

  return sub_220D00BBC(v6, v7);
}

uint64_t PrecipitationTotalPlatterViewModel.SectionModel.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_220DC0D00();
    sub_220DC0660();
  }

  else
  {
    sub_220DC0D00();
  }

  return sub_220D2B334(a1, v3);
}

uint64_t PrecipitationTotalPlatterViewModel.SectionModel.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_220DC0CE0();
  sub_220DC0D00();
  if (v1)
  {
    sub_220DC0660();
  }

  sub_220D2B334(v4, v2);
  return sub_220DC0D20();
}

uint64_t sub_220D2AB0C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_220DC0CE0();
  sub_220DC0D00();
  if (v1)
  {
    sub_220DC0660();
  }

  sub_220D2B334(v4, v2);
  return sub_220DC0D20();
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.init(label:amount:accessibilityLabel:accessibilityAmount:colorModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t *a10)
{
  v10 = *a10;
  *a9 = result;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = v10;
  return result;
}

BOOL static PrecipitationTotalPlatterViewModel.RowModel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v20 = a1[7];
  v21 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v18 = a2[8];
  v19 = a1[8];
  if (!v12 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || v3 != v7)
  {
    OUTLINED_FUNCTION_20();
    if ((sub_220DC0CA0() & 1) == 0)
    {
      return 0;
    }
  }

  v14 = v4 == v8 && v5 == v9;
  if (!v14 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v15 = v21 == v10 && v20 == v11;
  if (!v15 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  if (v19)
  {
    if (v18)
    {
      swift_retain_n();

      v16 = sub_220DBFE90();

      return (v16 & 1) != 0;
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0660();
  if (!v2)
  {
    return sub_220DC0D00();
  }

  sub_220DC0D00();

  return sub_220DBFEC0();
}

uint64_t PrecipitationTotalPlatterViewModel.RowModel.hashValue.getter()
{
  v1 = *(v0 + 64);
  sub_220DC0CE0();
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0660();
  sub_220DC0D00();
  if (v1)
  {
    sub_220DBFEC0();
  }

  return sub_220DC0D20();
}

uint64_t sub_220D2AFAC()
{
  sub_220DC0CE0();
  PrecipitationTotalPlatterViewModel.RowModel.hash(into:)(v1);
  return sub_220DC0D20();
}

uint64_t sub_220D2B084(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  sub_220DC0CE0();
  a1(v5, v3);
  return sub_220DC0D20();
}

uint64_t sub_220D2B0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_220DC0CE0();
  a4(v8, v6);
  return sub_220DC0D20();
}

uint64_t sub_220D2B144(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D98920](v3);
  if (v3)
  {
    v5 = 0;
    v11 = a2 + 32;
    do
    {
      v6 = v11 + 24 * v5;
      v7 = *(v6 + 16);
      v12 = v5;
      if (*(v6 + 8))
      {
        sub_220DC0D00();

        sub_220DC0660();
      }

      else
      {
        sub_220DC0D00();
      }

      MEMORY[0x223D98920](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + 48;
        do
        {
          v10 = *(v9 + 48);

          sub_220DC0660();
          sub_220DC0660();
          sub_220DC0660();
          sub_220DC0660();
          sub_220DC0D00();
          if (v10)
          {
            sub_220DBFEC0();
          }

          v9 += 72;
          --v8;
        }

        while (v8);
      }

      v5 = v12 + 1;
    }

    while (v12 + 1 != v3);
  }

  return result;
}

uint64_t sub_220D2B334(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D98920](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 48);

      sub_220DC0660();
      sub_220DC0660();
      sub_220DC0660();
      sub_220DC0660();
      sub_220DC0D00();
      if (v6)
      {
        sub_220DBFEC0();
      }

      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_220D2B470()
{
  result = qword_27CF95A18;
  if (!qword_27CF95A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95A18);
  }

  return result;
}

unint64_t sub_220D2B4C8()
{
  result = qword_27CF95A20;
  if (!qword_27CF95A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95A20);
  }

  return result;
}

unint64_t sub_220D2B520()
{
  result = qword_27CF95A28;
  if (!qword_27CF95A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95A28);
  }

  return result;
}

unint64_t sub_220D2B578()
{
  result = qword_27CF95A30;
  if (!qword_27CF95A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95A30);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_220D2B5E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_220D2B620(uint64_t result, int a2, int a3)
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

uint64_t sub_220D2B674(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_220D2B6B4(uint64_t result, int a2, int a3)
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

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_220D2B7CC()
{
  v0 = sub_220DBE2B0();
  v1 = OUTLINED_FUNCTION_18(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v2 = sub_220DBE740();
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v4 = sub_220DBE6E0();
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_12();
  v6 = sub_220DBE5E0();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A38, "8");
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A40, &unk_220DC4068);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v16 = sub_220DBE350();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = sub_220DBE340();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v17);
  sub_220DBE570();
  sub_220DBE650();
  sub_220DBE710();
  sub_220DBE2A0();
  return sub_220DBE370();
}

uint64_t UVIndexNotLowNotIncreasingBeforeSunsetRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_220DC0260();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  UVIndexNotLowNotIncreasingBeforeSunsetRule.weatherDescription(for:data:)(a2, v8 - v7);
  v10 = sub_220DC0230();
  (*(v5 + 8))(v9, v3);
  return v10;
}

uint64_t UVIndexNotLowNotIncreasingBeforeSunsetRule.weatherDescription(for:data:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = sub_220DBE380();
  OUTLINED_FUNCTION_0();
  v56 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v54 = v8 - v7;
  v9 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v55 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v19 = sub_220DBE960();
  OUTLINED_FUNCTION_0();
  v57 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_5_12();
  type metadata accessor for UVIndexComponentDescriptionContext(v22);
  v59 = a1;
  sub_220D28ECC();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_220CE1ABC(v18, &qword_27CF959E0, &unk_220DC3C00);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    sub_220DBE240();
    sub_220DC0240();
  }

  else
  {
    v24 = v4;
    v53 = v9;
    (*(v57 + 32))(v2, v18, v19);
    v52 = v19;
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    v25 = sub_220DBE240();
    v50 = v26;
    v51 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E8, &qword_220DC1D90);
    v48 = sub_220DC0250();
    OUTLINED_FUNCTION_0();
    v28 = v27;
    v47 = *(v29 + 72);
    v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v31 = swift_allocObject();
    v49 = v31;
    *(v31 + 16) = xmmword_220DC17C0;
    v32 = (v31 + v30);
    v33 = v55;
    sub_220DBE8F0();
    v46 = v2;
    v34 = v54;
    sub_220D2B7CC();
    v35 = sub_220DBE3C0();
    (*(v56 + 8))(v34, v24);
    v54 = a1;
    v36 = *(v11 + 8);
    v37 = v53;
    v36(v33, v53);
    *v32 = v35;
    v38 = *MEMORY[0x277D7B3B8];
    v56 = *(v28 + 104);
    v39 = v48;
    (v56)(v32, v38, v48);
    v40 = (v32 + v47);
    v41 = v46;
    sub_220DBE8F0();
    v42 = sub_220DBE4F0();
    v44 = v43;
    v36(v33, v37);
    *v40 = v42;
    v40[1] = v44;
    (v56)(v40, *MEMORY[0x277D7B3D0], v39);
    sub_220DC0220();
    return (*(v57 + 8))(v41, v52);
  }
}

uint64_t sub_220D2C00C(uint64_t a1, uint64_t a2)
{
  v27[1] = a2;
  v2 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = sub_220DBEF70();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_220DBE910();
  sub_220DBEF60();
  (*(v13 + 8))(v17, v11);
  v18 = sub_220DBEF40();
  v20 = v19;
  if (v18 == sub_220DBEF40() && v20 == v21)
  {
  }

  else
  {
    v23 = sub_220DC0CA0();

    v24 = 0;
    if ((v23 & 1) == 0)
    {
      return v24 & 1;
    }
  }

  sub_220DBE8F0();
  sub_220DBEA60();
  v24 = sub_220DBE430();
  v25 = *(v4 + 8);
  v25(v8, v2);
  v25(v10, v2);
  return v24 & 1;
}

_BYTE *storeEnumTagSinglePayload for UVIndexNotLowNotIncreasingBeforeSunsetRule(_BYTE *result, int a2, int a3)
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

uint64_t UVIndexSteadyBetweenNoonAndMidnightRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for UVIndexSteadyBetweenNoonAndMidnightRule(_BYTE *result, int a2, int a3)
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

uint64_t MidpointInterpolator.InterpolationMode.init(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220DBF350();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v8 = MEMORY[0x277D7B0B8];
    if (*a1 == 1)
    {
      v8 = MEMORY[0x277D7B0B0];
    }

    (*(v5 + 104))(v7, *v8, v4);
    (*(v5 + 32))(a2, v7, v4);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

_BYTE *static ChartValueLabel.with(label:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220D2C80C(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220DBFF70();
      sub_220DBFFB0();

      v9 = sub_220DBFD50();
      v11 = v10;
      v13 = v12;
      sub_220DBFC10();
      sub_220DBFCD0();
      OUTLINED_FUNCTION_0_11();
      sub_220CF0978(v9, v11, v13 & 1);
    }

    else
    {
      v15 = v7[1];
      v17[2] = *v7;
      v17[3] = v15;
      sub_220CEFF14();
      sub_220DBFD40();
      OUTLINED_FUNCTION_0_11();
    }
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A50, &unk_220DC5A00);
    sub_220D2C870(v7 + *(v14 + 48), v4);
    v7 = sub_220DBFF80();
    sub_220DBFFA0();

    sub_220DBFD50();
    OUTLINED_FUNCTION_0_11();
    sub_220D2C8E0(v4);
  }

  return v7;
}

uint64_t sub_220D2C80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartDataElement.ValueLabel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D2C870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D2C8E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A48, &unk_220DC4100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ChartValueLabel(_BYTE *result, int a2, int a3)
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

uint64_t sub_220D2C9F4()
{
  sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  TwentyFourHourSentence = type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence(0);
  MEMORY[0x28223BE20](TwentyFourHourSentence - 8);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  type metadata accessor for PrecipitationPlatterTodayThirdSentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  sub_220D32614(v0, v24 - v23, type metadata accessor for PrecipitationPlatterTodayThirdSentence);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95788, &unk_220DC3A10);
      OUTLINED_FUNCTION_1_18();
      v27 = OUTLINED_FUNCTION_4_11();
      v28(v27);
      v29 = OUTLINED_FUNCTION_3_14();
      v30(v29);
      v31 = sub_220D2CD74(v17, v13, v6);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95788, &unk_220DC3A10);
      OUTLINED_FUNCTION_1_18();
      v35 = OUTLINED_FUNCTION_4_11();
      v36(v35);
      v37 = OUTLINED_FUNCTION_3_14();
      v38(v37);
      v31 = sub_220D2D20C(v17, v13, v6);
    }

    v32 = v31;
    (*(v2 + 8))(v6, v21);
    (*(v9 + 8))(v13, v7);
    v33 = type metadata accessor for PrecipitationPlatterPrecipitationKind;
    v34 = v17;
  }

  else
  {
    sub_220D2D7A4(v25, v21, type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence);
    v32 = sub_220D1C2A8();
    v33 = type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence;
    v34 = v21;
  }

  sub_220D325BC(v34, v33);
  return v32;
}

uint64_t type metadata accessor for PrecipitationPlatterTodayThirdSentence(uint64_t a1)
{
  result = qword_27CF95A58;
  if (!qword_27CF95A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D2CD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220DBE520();
  sub_220D32614(a1, v12, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = *v12;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2D7A4(&v12[*(v55 + 48)], v9, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v58) = v54;
      v27 = sub_220D2E758(&v58 + 7, v9, v13);
      goto LABEL_7;
    case 2u:
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2D7A4(v12, v9, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2D7A4(&v12[v28], v7, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2EC44(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_220DC17C0;
      v30 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v30, 0, 1, v31, v32, v33, v34, v35, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v37 = v36;
      v39 = v38;

      v40 = MEMORY[0x277D837D0];
      *(v29 + 56) = MEMORY[0x277D837D0];
      v41 = sub_220CEFDB0();
      *(v29 + 64) = v41;
      *(v29 + 32) = v37;
      *(v29 + 40) = v39;
      v42 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v42, 0, 1, v43, v44, v45, v46, v47, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v49 = v48;
      v51 = v50;

      *(v29 + 96) = v40;
      *(v29 + 104) = v41;
      *(v29 + 72) = v49;
      *(v29 + 80) = v51;
      v27 = sub_220DC05F0();

      goto LABEL_5;
    case 3u:
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2D7A4(v12, v9, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2D7A4(&v12[v52], v7, type metadata accessor for PrecipitationTotalStringAmount);
      v27 = sub_220D2EFB0(v9, v7, v13);
LABEL_5:
      sub_220D325BC(v7, type metadata accessor for PrecipitationTotalStringAmount);
      v53 = v9;
      break;
    default:
      v14 = *v12;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2D7A4(&v12[*(v15 + 48)], v9, type metadata accessor for PrecipitationTotalStringAmount);
      BYTE6(v58) = v14;
      sub_220D2D804(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_220DC17A0;
      v17 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, 0, 1, v18, v19, v20, v21, v22, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v24 = v23;
      v26 = v25;

      *(v16 + 56) = MEMORY[0x277D837D0];
      *(v16 + 64) = sub_220CEFDB0();
      *(v16 + 32) = v24;
      *(v16 + 40) = v26;
      v27 = sub_220DC05F0();

LABEL_7:
      v53 = v9;
      break;
  }

  sub_220D325BC(v53, type metadata accessor for PrecipitationTotalStringAmount);
  return v27;
}

uint64_t sub_220D2D20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v71 - v10;
  v12 = type metadata accessor for PrecipitationPlatterPrecipitationKind(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_220D32614(a1, v14, type metadata accessor for PrecipitationPlatterPrecipitationKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v66 = *v14;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2D7A4(&v14[*(v67 + 48)], v11, type metadata accessor for PrecipitationTotalStringAmount);
      HIBYTE(v74) = v66;
      v68 = sub_220D2F780(v15, a2, a3);
      v34 = sub_220D2FB04(&v74 + 7, v11, v68, v69);
      goto LABEL_9;
    case 2u:
      v72 = a2;
      v73 = a3;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2D7A4(v14, v11, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2D7A4(&v14[v35], v9, type metadata accessor for PrecipitationTotalStringAmount);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v71 = sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_220DC1CC0;
      v37 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v37, 0, 1, v38, v39, v40, v41, v42, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
      v44 = v43;
      v46 = v45;

      v47 = MEMORY[0x277D837D0];
      *(v36 + 56) = MEMORY[0x277D837D0];
      v48 = sub_220CEFDB0();
      *(v36 + 64) = v48;
      *(v36 + 32) = v44;
      *(v36 + 40) = v46;
      v49 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v49, 0, 1, v50, v51, v52, v53, v54, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
      v56 = v55;
      v58 = v57;

      *(v36 + 96) = v47;
      *(v36 + 104) = v48;
      *(v36 + 72) = v56;
      *(v36 + 80) = v58;
      v59 = sub_220D2F780(v15, v72, v73);
      *(v36 + 136) = v47;
      *(v36 + 144) = v48;
      *(v36 + 112) = v59;
      *(v36 + 120) = v60;
      v34 = sub_220DC05F0();

      goto LABEL_7;
    case 3u:
      v61 = a2;
      v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A0, &unk_220DC35E0) + 48);
      sub_220D2D7A4(v14, v11, type metadata accessor for PrecipitationTotalStringAmount);
      sub_220D2D7A4(&v14[v62], v9, type metadata accessor for PrecipitationTotalStringAmount);
      v63 = sub_220D2F780(v15, v61, a3);
      v34 = sub_220D2FFB0(v11, v9, v63, v64);
LABEL_7:

      sub_220D325BC(v9, type metadata accessor for PrecipitationTotalStringAmount);
      v65 = v11;
      break;
    default:
      v16 = *v14;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF958A8, &unk_220DC33A0);
      sub_220D2D7A4(&v14[*(v17 + 48)], v11, type metadata accessor for PrecipitationTotalStringAmount);
      BYTE6(v74) = v16;
      v73 = sub_220D2F814();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_220DC17C0;
      v19 = sub_220DC0810();
      PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v19, 0, 1, v20, v21, v22, v23, v24, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
      v26 = v25;
      v27 = a3;
      v29 = v28;

      v30 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v31 = sub_220CEFDB0();
      *(v18 + 64) = v31;
      *(v18 + 32) = v26;
      *(v18 + 40) = v29;
      v32 = sub_220D2F780(v15, a2, v27);
      *(v18 + 96) = v30;
      *(v18 + 104) = v31;
      *(v18 + 72) = v32;
      *(v18 + 80) = v33;
      v34 = sub_220DC05F0();

LABEL_9:

      v65 = v11;
      break;
  }

  sub_220D325BC(v65, type metadata accessor for PrecipitationTotalStringAmount);

  return v34;
}

uint64_t sub_220D2D7A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220D2D804(char a1)
{
  switch(*v1)
  {
    case 1:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
      }

      break;
    case 2:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
      }

      break;
    case 3:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
      }

      break;
    case 4:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
      }

      break;
    default:
      switch(a1)
      {
        case 1:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 2:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 3:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 4:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 5:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        case 6:
          if (qword_280FA6600 != -1)
          {
            goto LABEL_77;
          }

          break;
        default:
          if (qword_280FA6600 != -1)
          {
LABEL_77:
            swift_once();
          }

          break;
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2E758(unsigned __int8 *a1, uint64_t a2, int a3)
{
  HIDWORD(v44) = a3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v45[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45[-1] - v9;
  v11 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45[-1] - v16;
  v18 = *a1;
  sub_220D32614(a2 + *(v5 + 20), v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    v19 = v15;
    switch(v18)
    {
      case 1:
        sub_220D315CC(SBYTE4(v44));
        break;
      case 2:
        sub_220D31C2C(SBYTE4(v44));
        break;
      case 3:
        sub_220D318FC(SBYTE4(v44));
        break;
      case 4:
        sub_220D31F5C(SBYTE4(v44));
        break;
      default:
        sub_220D3228C(SBYTE4(v44));
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_220DC17C0;
    sub_220DBE050();
    v31 = MEMORY[0x277D83A80];
    *(v30 + 56) = MEMORY[0x277D839F8];
    *(v30 + 64) = v31;
    *(v30 + 32) = v32;
    v33 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v33, 0, 0, v34, v35, v36, v37, v38, v44, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8], v45[9], v45[10]);
    v40 = v39;
    v42 = v41;

    *(v30 + 96) = MEMORY[0x277D837D0];
    *(v30 + 104) = sub_220CEFDB0();
    *(v30 + 72) = v40;
    *(v30 + 80) = v42;
    v29 = sub_220DC05F0();

    (*(v19 + 8))(v17, v14);
  }

  else
  {
    sub_220D325BC(v13, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v20 = sub_220DBF410();
    __swift_project_value_buffer(v20, qword_27CF95F48);
    sub_220D32614(a2, v10, type metadata accessor for PrecipitationTotalStringAmount);
    v21 = sub_220DBF3F0();
    v22 = sub_220DC0980();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45[0] = v24;
      *v23 = 136446210;
      sub_220D32614(v10, v8, type metadata accessor for PrecipitationTotalStringAmount);
      v25 = sub_220DC0630();
      v27 = v26;
      sub_220D325BC(v10, type metadata accessor for PrecipitationTotalStringAmount);
      v28 = sub_220D3F210(v25, v27, v45);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_220CD1000, v21, v22, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223D98FB0](v24, -1, -1);
      MEMORY[0x223D98FB0](v23, -1, -1);
    }

    else
    {

      sub_220D325BC(v10, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v29;
}

uint64_t sub_220D2EC44(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2EFB0(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v84) = a3;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = MEMORY[0x28223BE20](v5);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v83 = &v80 - v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v80 - v17;
  v19 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v19, 0, 0, v20, v21, v22, v23, v24, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v86 = v25;
  v88 = v26;

  v27 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v27, 0, 0, v28, v29, v30, v31, v32, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v85 = v33;
  v87 = v34;

  v35 = *(v5 + 20);
  v36 = *(v16 + 56);
  sub_220D32614(a2 + v35, v18, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D32614(a1 + v35, &v18[v36], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v35) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = EnumCaseMultiPayload;
  if (v35 == 1)
  {
    (*(v12 + 32))(v14, v18, v11);
    if (v38 == 1)
    {
      sub_220D30BD0(SBYTE4(v84));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_220DC1CC0;
      sub_220DBE050();
      v40 = MEMORY[0x277D83A80];
      *(v39 + 56) = MEMORY[0x277D839F8];
      *(v39 + 64) = v40;
      *(v39 + 32) = v41;
      v42 = MEMORY[0x277D837D0];
      *(v39 + 96) = MEMORY[0x277D837D0];
      v43 = sub_220CEFDB0();
      v44 = v88;
      *(v39 + 72) = v86;
      *(v39 + 80) = v44;
      *(v39 + 136) = v42;
      *(v39 + 144) = v43;
      v45 = v85;
      *(v39 + 104) = v43;
      *(v39 + 112) = v45;
      *(v39 + 120) = v87;
      v46 = sub_220DC05F0();

      v47 = *(v12 + 8);
      v47(v14, v11);
      v47(&v18[v36], v11);
      return v46;
    }

    sub_220D30F00(SBYTE4(v84));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v55 = MEMORY[0x277D83A80];
    *(v54 + 56) = MEMORY[0x277D839F8];
    *(v54 + 64) = v55;
    *(v54 + 32) = v56;
    v57 = MEMORY[0x277D837D0];
    *(v54 + 96) = MEMORY[0x277D837D0];
    v58 = sub_220CEFDB0();
    v59 = v88;
    *(v54 + 72) = v86;
    *(v54 + 80) = v59;
    *(v54 + 136) = v57;
    *(v54 + 144) = v58;
    v60 = v85;
    *(v54 + 104) = v58;
    *(v54 + 112) = v60;
    *(v54 + 120) = v87;
    v46 = sub_220DC05F0();

    (*(v12 + 8))(v14, v11);
    v53 = &v18[v36];
LABEL_7:
    sub_220D325BC(v53, type metadata accessor for PrecipitationTotalStringAmount.Format);
    return v46;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220D31230(SBYTE4(v84));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_220DC17C0;
    v49 = MEMORY[0x277D837D0];
    *(v48 + 56) = MEMORY[0x277D837D0];
    v50 = sub_220CEFDB0();
    v51 = v88;
    *(v48 + 32) = v86;
    *(v48 + 40) = v51;
    *(v48 + 96) = v49;
    *(v48 + 104) = v50;
    v52 = v85;
    *(v48 + 64) = v50;
    *(v48 + 72) = v52;
    *(v48 + 80) = v87;
    v46 = sub_220DC05F0();

    (*(v12 + 8))(&v18[v36], v11);
    v53 = v18;
    goto LABEL_7;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v61 = sub_220DBF410();
  __swift_project_value_buffer(v61, qword_27CF95F48);
  v62 = v82;
  sub_220D32614(a2, v82, type metadata accessor for PrecipitationTotalStringAmount);
  v63 = v83;
  sub_220D32614(a1, v83, type metadata accessor for PrecipitationTotalStringAmount);
  v64 = sub_220DBF3F0();
  v65 = sub_220DC0980();
  v88 = v64;
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    LODWORD(v86) = v65;
    v67 = v66;
    v87 = swift_slowAlloc();
    v89 = v87;
    *v67 = 136446466;
    v68 = v81;
    sub_220D32614(v62, v81, type metadata accessor for PrecipitationTotalStringAmount);
    v69 = sub_220DC0630();
    v71 = v70;
    sub_220D325BC(v62, type metadata accessor for PrecipitationTotalStringAmount);
    v72 = sub_220D3F210(v69, v71, &v89);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2082;
    sub_220D32614(v63, v68, type metadata accessor for PrecipitationTotalStringAmount);
    v73 = sub_220DC0630();
    v75 = v74;
    sub_220D325BC(v63, type metadata accessor for PrecipitationTotalStringAmount);
    v76 = sub_220D3F210(v73, v75, &v89);

    *(v67 + 14) = v76;
    v77 = v88;
    _os_log_impl(&dword_220CD1000, v88, v86, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v67, 0x16u);
    v78 = v87;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v78, -1, -1);
    MEMORY[0x223D98FB0](v67, -1, -1);
  }

  else
  {

    sub_220D325BC(v63, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D325BC(v62, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v18);
  return 0;
}

uint64_t sub_220D2F780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = sub_220DBE4E0();
    v6 = v5;
    swift_beginAccess();
    *(a1 + 16) = v4;
    *(a1 + 24) = v6;
  }

  return v4;
}

uint64_t sub_220D2F814()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D2FB04(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v6 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v12 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = *a1;
  sub_220D32614(a2 + *(v6 + 20), v14, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    HIBYTE(v49) = v19;
    sub_220D3093C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v21 = MEMORY[0x277D83A80];
    *(v20 + 56) = MEMORY[0x277D839F8];
    *(v20 + 64) = v21;
    *(v20 + 32) = v22;
    v23 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v23, 0, 0, v24, v25, v26, v27, v28, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8]);
    v30 = v29;
    v32 = v31;

    v33 = MEMORY[0x277D837D0];
    *(v20 + 96) = MEMORY[0x277D837D0];
    v34 = sub_220CEFDB0();
    *(v20 + 72) = v30;
    *(v20 + 80) = v32;
    *(v20 + 136) = v33;
    *(v20 + 144) = v34;
    v35 = v47;
    *(v20 + 104) = v34;
    *(v20 + 112) = v35;
    *(v20 + 120) = v48;

    v36 = sub_220DC05F0();

    (*(v16 + 8))(v18, v15);
  }

  else
  {
    sub_220D325BC(v14, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v37 = sub_220DBF410();
    __swift_project_value_buffer(v37, qword_27CF95F48);
    sub_220D32614(a2, v11, type metadata accessor for PrecipitationTotalStringAmount);
    v38 = sub_220DBF3F0();
    v39 = sub_220DC0980();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50[0] = v41;
      *v40 = 136446210;
      sub_220D32614(v11, v9, type metadata accessor for PrecipitationTotalStringAmount);
      v42 = sub_220DC0630();
      v44 = v43;
      sub_220D325BC(v11, type metadata accessor for PrecipitationTotalStringAmount);
      v45 = sub_220D3F210(v42, v44, v50);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_220CD1000, v38, v39, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x223D98FB0](v41, -1, -1);
      MEMORY[0x223D98FB0](v40, -1, -1);
    }

    else
    {

      sub_220D325BC(v11, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v36;
}

uint64_t sub_220D2FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a4;
  v6 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v7 = MEMORY[0x28223BE20](v6);
  v86 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v85 - v10;
  MEMORY[0x28223BE20](v9);
  v88 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v85 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95210, &unk_220DC35F0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v85 - v18;
  v20 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v20, 0, 0, v21, v22, v23, v24, v25, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
  v91 = v26;
  v95 = v27;

  v28 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v28, 0, 0, v29, v30, v31, v32, v33, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
  v90 = v34;
  v94 = v35;

  v87 = v6;
  v36 = *(v6 + 20);
  v37 = *(v17 + 56);
  sub_220D32614(a2 + v36, v19, type metadata accessor for PrecipitationTotalStringAmount.Format);
  sub_220D32614(a1 + v36, &v19[v37], type metadata accessor for PrecipitationTotalStringAmount.Format);
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  LODWORD(v17) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = EnumCaseMultiPayload;
  if (v17 == 1)
  {
    (*(v13 + 32))(v15, v19, v12);
    if (v39 == 1)
    {
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_220DC1CE0;
      sub_220DBE050();
      v41 = MEMORY[0x277D83A80];
      *(v40 + 56) = MEMORY[0x277D839F8];
      *(v40 + 64) = v41;
      *(v40 + 32) = v42;
      v43 = MEMORY[0x277D837D0];
      *(v40 + 96) = MEMORY[0x277D837D0];
      v44 = sub_220CEFDB0();
      v45 = v95;
      *(v40 + 72) = v91;
      *(v40 + 80) = v45;
      *(v40 + 136) = v43;
      *(v40 + 144) = v44;
      v46 = v90;
      *(v40 + 104) = v44;
      *(v40 + 112) = v46;
      *(v40 + 120) = v94;
      *(v40 + 176) = v43;
      *(v40 + 184) = v44;
      v47 = v93;
      *(v40 + 152) = v92;
      *(v40 + 160) = v47;

      v48 = sub_220DC05F0();

      v49 = *(v13 + 8);
      v49(v15, v12);
      v49(&v19[v37], v12);
      return v48;
    }

    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_220DC1CE0;
    sub_220DBE050();
    v58 = MEMORY[0x277D83A80];
    *(v57 + 56) = MEMORY[0x277D839F8];
    *(v57 + 64) = v58;
    *(v57 + 32) = v59;
    v60 = MEMORY[0x277D837D0];
    *(v57 + 96) = MEMORY[0x277D837D0];
    v61 = sub_220CEFDB0();
    v62 = v95;
    *(v57 + 72) = v91;
    *(v57 + 80) = v62;
    *(v57 + 136) = v60;
    *(v57 + 144) = v61;
    v63 = v90;
    *(v57 + 104) = v61;
    *(v57 + 112) = v63;
    *(v57 + 120) = v94;
    *(v57 + 176) = v60;
    *(v57 + 184) = v61;
    v64 = v93;
    *(v57 + 152) = v92;
    *(v57 + 160) = v64;

    v48 = sub_220DC05F0();

    (*(v13 + 8))(v15, v12);
    v56 = &v19[v37];
LABEL_13:
    sub_220D325BC(v56, type metadata accessor for PrecipitationTotalStringAmount.Format);
    return v48;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_220DC1CC0;
    v51 = MEMORY[0x277D837D0];
    *(v50 + 56) = MEMORY[0x277D837D0];
    v52 = sub_220CEFDB0();
    v53 = v95;
    *(v50 + 32) = v91;
    *(v50 + 40) = v53;
    *(v50 + 96) = v51;
    *(v50 + 104) = v52;
    v54 = v90;
    *(v50 + 64) = v52;
    *(v50 + 72) = v54;
    *(v50 + 80) = v94;
    *(v50 + 136) = v51;
    *(v50 + 144) = v52;
    v55 = v93;
    *(v50 + 112) = v92;
    *(v50 + 120) = v55;

    v48 = sub_220DC05F0();

    (*(v13 + 8))(&v19[v37], v12);
    v56 = v19;
    goto LABEL_13;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v65 = sub_220DBF410();
  __swift_project_value_buffer(v65, qword_27CF95F48);
  v66 = a2;
  v67 = v88;
  sub_220D32614(v66, v88, type metadata accessor for PrecipitationTotalStringAmount);
  v68 = v89;
  sub_220D32614(a1, v89, type metadata accessor for PrecipitationTotalStringAmount);
  v69 = sub_220DBF3F0();
  v70 = sub_220DC0980();
  v95 = v69;
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    LODWORD(v93) = v70;
    v72 = v71;
    v94 = swift_slowAlloc();
    v96 = v94;
    *v72 = 136446466;
    v73 = v86;
    sub_220D32614(v67, v86, type metadata accessor for PrecipitationTotalStringAmount);
    v74 = sub_220DC0630();
    v76 = v75;
    sub_220D325BC(v67, type metadata accessor for PrecipitationTotalStringAmount);
    v77 = sub_220D3F210(v74, v76, &v96);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2082;
    sub_220D32614(v68, v73, type metadata accessor for PrecipitationTotalStringAmount);
    v78 = sub_220DC0630();
    v80 = v79;
    sub_220D325BC(v68, type metadata accessor for PrecipitationTotalStringAmount);
    v81 = sub_220D3F210(v78, v80, &v96);

    *(v72 + 14) = v81;
    v82 = v95;
    _os_log_impl(&dword_220CD1000, v95, v93, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; snowfallAmount=%{public}s, precipitationAmount=%{public}s", v72, 0x16u);
    v83 = v94;
    swift_arrayDestroy();
    MEMORY[0x223D98FB0](v83, -1, -1);
    MEMORY[0x223D98FB0](v72, -1, -1);
  }

  else
  {

    sub_220D325BC(v68, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D325BC(v67, type metadata accessor for PrecipitationTotalStringAmount);
  }

  sub_220D18C1C(v19);
  return 0;
}

uint64_t sub_220D3093C()
{
  switch(*v0)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D30BD0(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D30F00(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D31230(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D315CC(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D318FC(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D31C2C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D31F5C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D3228C(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D325BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220D32614(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_220D32674(uint64_t a1)
{
  type metadata accessor for PrecipitationPlatterNextTwentyFourHourSentence(319);
  if (v1 <= 0x3F)
  {
    sub_220D261B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t VisibilityDustRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for VisibilityDustRule(_BYTE *result, int a2, int a3)
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

uint64_t VisibilitySmokeRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for VisibilitySmokeRule(_BYTE *result, int a2, int a3)
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

uint64_t VisibilityFogRule.description(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = [objc_opt_self() meters];
  sub_220DBE130();

  sub_220DBE050();
  v8 = v7;
  (*(v2 + 8))(v5, v0);
  if (v8 < 50.0)
  {
    if (qword_280FA6600 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v8 >= 200.0)
  {
    if (v8 >= 500.0)
    {
      if (v8 >= 1000.0)
      {
        if (qword_280FA6600 == -1)
        {
          goto LABEL_6;
        }
      }

      else if (qword_280FA6600 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_280FA6600 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

LABEL_6:
  OUTLINED_FUNCTION_2_0();
  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for VisibilityFogRule(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for VisibilityFallbackRule(_BYTE *result, int a2, int a3)
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

uint64_t VisibilityHazeRule.description(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v8 = v7;
  (*(v2 + 8))(v5, v0);
  if (v8 <= 2.0 || v8 >= 4.0)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_9;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_9:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

  return sub_220DBE240();
}

_BYTE *storeEnumTagSinglePayload for VisibilityHazeRule(_BYTE *result, int a2, int a3)
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

uint64_t Precipitation.chartColor.getter()
{
  sub_220DBEC20();
  OUTLINED_FUNCTION_2_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_1_20(v1, v12);
  v3(v2);
  v4 = OUTLINED_FUNCTION_5_13();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277CE3390] || v6 == *MEMORY[0x277CE3388])
  {
    return sub_220DBFEE0();
  }

  if (v6 == *MEMORY[0x277CE33A8])
  {
    return sub_220DBFF00();
  }

  if (v6 == *MEMORY[0x277CE3398])
  {
    return sub_220DBFEB0();
  }

  if (v6 == *MEMORY[0x277CE33B0])
  {
    return sub_220DBFEA0();
  }

  if (v6 != *MEMORY[0x277CE33A0])
  {
    v8 = sub_220DBFEE0();
    v10 = OUTLINED_FUNCTION_5_13();
    v11(v10);
    return v8;
  }

  return sub_220DBFEF0();
}

uint64_t Precipitation.chartColorAccessibilityDescription.getter()
{
  sub_220DBEC20();
  OUTLINED_FUNCTION_2_15();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_1_20(v1, v11);
  v3(v2);
  v4 = OUTLINED_FUNCTION_5_13();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277CE3390] || v6 == *MEMORY[0x277CE3388])
  {
    return 0;
  }

  if (v6 != *MEMORY[0x277CE33A8])
  {
    if (v6 == *MEMORY[0x277CE3398])
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    if (v6 == *MEMORY[0x277CE33B0])
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_15;
      }

LABEL_21:
      OUTLINED_FUNCTION_10(&qword_280FA6600);
      goto LABEL_15;
    }

    if (v6 == *MEMORY[0x277CE33A0])
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

    v9 = OUTLINED_FUNCTION_5_13();
    v10(v9);
    return 0;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_10(&qword_280FA6600);
  }

LABEL_9:
  OUTLINED_FUNCTION_3_15();
LABEL_15:
  OUTLINED_FUNCTION_6_0();
  return sub_220DBE240();
}

void *sub_220D33494@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v6)
  {
    a2[3] = &type metadata for PrecipitationEventCalculator;
    a2[4] = &protocol witness table for PrecipitationEventCalculator;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_220CD570C(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220D33544@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A80, &unk_220DC4400);
    swift_allocObject();
    v4 = sub_220DBF280();
    a2[3] = &type metadata for DetailChartDataPointValueCalculator;
    a2[4] = &protocol witness table for DetailChartDataPointValueCalculator;
    v5 = swift_allocObject();
    *a2 = v5;
    result = sub_220CD570C(&v6, v5 + 16);
    *(v5 + 56) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220D33624@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A68, &qword_220DC43E8);
  result = sub_220DBF200();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A78, &qword_220DC43F8);
    result = sub_220DBF1F0();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for DetailChartSeriesValuesCalculator();
      v7 = swift_allocObject();
      result = sub_220CD570C(&v8, v7 + 16);
      *(v7 + 56) = v5;
      a2[3] = v6;
      a2[4] = &off_2834754B0;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void TemperatureFeelsLikeChartHeaderStringBuilder.makeModel(from:units:extrema:secondaryValueExtrema:style:)(uint64_t a1@<X0>, void **a2@<X1>, uint64_t (*a3)(uint64_t, void, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v163 = a3;
  v188 = a1;
  v190 = a4;
  v5 = sub_220DBE260();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_1_21();
  v162 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v157 - v8;
  v181 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v164 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_21();
  v183 = v12;
  OUTLINED_FUNCTION_6_1();
  sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v177 = v14;
  v178 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_21();
  v186 = v15;
  OUTLINED_FUNCTION_6_1();
  sub_220DC02E0();
  OUTLINED_FUNCTION_0();
  v175 = v17;
  v176 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_21();
  v174 = v18;
  OUTLINED_FUNCTION_6_1();
  v172 = sub_220DBE1C0();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_1_21();
  v171 = v19;
  OUTLINED_FUNCTION_6_1();
  v184 = sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v189 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_21();
  v168 = v22;
  OUTLINED_FUNCTION_6_1();
  v167 = sub_220DC0A00();
  OUTLINED_FUNCTION_0();
  v166 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_21();
  v165 = v25;
  OUTLINED_FUNCTION_6_1();
  v191 = sub_220DC0A40();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v31 = (v30 - v29);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  OUTLINED_FUNCTION_0();
  v170 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = v157 - v34;
  v185 = sub_220DBE210();
  OUTLINED_FUNCTION_0();
  v173 = v36;
  v38 = MEMORY[0x28223BE20](v37);
  v182 = (v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v192 = v157 - v40;
  OUTLINED_FUNCTION_6_1();
  sub_220DBEAD0();
  OUTLINED_FUNCTION_0();
  v179 = v42;
  v180 = v41;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_21();
  v187 = v43;
  v44 = OUTLINED_FUNCTION_6_1();
  v45 = type metadata accessor for ConditionDetailChartHeaderInput.HeaderKind(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v48 = v47 - v46;
  v49 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1();
  v55 = v54 - v53;
  v56 = *a2;
  sub_220D34C0C(v188, v48);
  if (swift_getEnumCaseMultiPayload())
  {
    v188 = v27;
    v57 = v190;
    (*(v51 + 4))(v55, v48, v49);
    sub_220CEF48C(v163, v9);
    v58 = v181;
    if (__swift_getEnumTagSinglePayload(v9, 1, v181) == 1)
    {
      (*(v51 + 1))(v55, v49);
      sub_220CEF4FC(v9);
      if (qword_27CF94F50 != -1)
      {
        swift_once();
      }

      v59 = sub_220DBF410();
      __swift_project_value_buffer(v59, qword_27CF95F78);
      v60 = sub_220DBF3F0();
      v61 = sub_220DC0980();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_220CD1000, v60, v61, "Failed to create chart header for Feels Like due to missing extrema values", v62, 2u);
        MEMORY[0x223D98FB0](v62, -1, -1);
      }

      sub_220DBE250();
      sub_220DBE220();
      v63 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
      __swift_storeEnumTagSinglePayload(v57 + v63[5], 1, 1, v185);
      OUTLINED_FUNCTION_7_10(v63[6]);
      *(v57 + v63[7]) = xmmword_220DC17B0;
      OUTLINED_FUNCTION_7_10(v63[8]);
      OUTLINED_FUNCTION_7_10(v63[11]);
      *(v57 + v63[9]) = 0;
      v64 = (v57 + v63[10]);
      *v64 = 0;
      v64[1] = 0xE000000000000000;
      v65 = v63[12];
    }

    else
    {
      v164[4](v183, v9, v58);
      sub_220DBE750();
      (*(v51 + 1))(v55, v49);
      sub_220DBF2F0();
      v187 = sub_220D287C0();
      v162 = v56;
      v158 = v35;
      sub_220DBE040();
      v112 = v31;
      sub_220DC02B0();
      v113 = v165;
      sub_220DC0A20();
      v114 = *(v188 + 8);
      v188 += 8;
      v180 = v114;
      v114(v112, v191);
      LODWORD(v179) = *MEMORY[0x277D7B408];
      v115 = v189;
      v116 = *(v189 + 104);
      v157[1] = v189 + 104;
      v163 = v116;
      v117 = v168;
      v118 = v184;
      v116(v168);
      v161 = sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_16();
      v160 = sub_220D34CA0(v119, v120, MEMORY[0x277D7B4F0]);
      v121 = v169;
      v122 = v167;
      v123 = v158;
      sub_220DBE0A0();

      v159 = *(v115 + 8);
      v189 = v115 + 8;
      v159(v117, v118);
      v166 = *(v166 + 8);
      (v166)(v113, v122);
      v170 = *(v170 + 8);
      (v170)(v123, v121);
      sub_220DBF300();
      v124 = v162;
      sub_220DBE040();
      sub_220DC02B0();
      sub_220DC0A20();
      v180(v112, v191);
      v125 = v184;
      v163(v117, v179, v184);
      sub_220DBF0D0();
      sub_220DBE0A0();

      v159(v117, v125);
      (v166)(v113, v122);
      (v170)(v123, v121);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      v188 = qword_280FA6608;
      OUTLINED_FUNCTION_8_9();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_220DC17C0;
      sub_220DBE1B0();
      OUTLINED_FUNCTION_4_12();
      sub_220D34CA0(v127, v128, MEMORY[0x277CC8B40]);
      v129 = sub_220DC06C0();
      v131 = v130;
      v132 = MEMORY[0x277D837D0];
      *(v126 + 56) = MEMORY[0x277D837D0];
      v133 = sub_220CEFDB0();
      *(v126 + 64) = v133;
      *(v126 + 32) = v129;
      *(v126 + 40) = v131;
      sub_220DBE1B0();
      v134 = sub_220DC06C0();
      *(v126 + 96) = v132;
      *(v126 + 104) = v133;
      *(v126 + 72) = v134;
      *(v126 + 80) = v135;
      v191 = sub_220DC05F0();
      v189 = v136;

      v137 = v173;
      v138 = *(v173 + 16);
      v57 = v190;
      v139 = v185;
      v138(v190, v192, v185);
      v140 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
      v141 = v140[5];
      v142 = v182;
      v138(v57 + v141, v182, v139);
      __swift_storeEnumTagSinglePayload(v57 + v141, 0, 1, v139);
      v157[0] = 0x8000000220DEA200;
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      v143 = sub_220DC05F0();
      v188 = v144;

      v145 = v174;
      v146 = v186;
      sub_220DBEB70();
      v147 = sub_220DC02D0();
      v149 = v148;
      (*(v175 + 8))(v145, v176);
      v150 = *(v137 + 8);
      v150(v142, v139);
      v150(v192, v139);
      (*(v177 + 8))(v146, v178);
      (v164[1])(v183, v181);
      OUTLINED_FUNCTION_7_10(v140[6]);
      v151 = (v57 + v140[7]);
      v152 = v188;
      *v151 = v143;
      v151[1] = v152;
      OUTLINED_FUNCTION_7_10(v140[8]);
      v153 = (v57 + v140[11]);
      *v153 = v147;
      v153[1] = v149;
      *(v57 + v140[9]) = 0;
      v154 = (v57 + v140[10]);
      v155 = v189;
      *v154 = v191;
      v154[1] = v155;
      v65 = v140[12];
    }

    v156 = (v57 + v65);
    v156[2] = 0u;
    v156[3] = 0u;
    *v156 = 0u;
    v156[1] = 0u;
  }

  else
  {
    v182 = v51;
    v183 = v49;
    v181 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FC8, &qword_220DC1800) + 48);
    (*(v179 + 32))(v187, v48, v180);
    sub_220DBE9D0();
    sub_220DC02B0();
    v66 = v165;
    sub_220DC0A20();
    v67 = *(v27 + 8);
    v188 = v27 + 8;
    v164 = v67;
    (v67)(v31, v191);
    LODWORD(v163) = *MEMORY[0x277D7B408];
    v68 = v189;
    v162 = *(v189 + 104);
    v69 = v168;
    v159 = v31;
    v70 = v184;
    (v162)(v168);
    v160 = sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_3_16();
    sub_220D34CA0(v71, v72, MEMORY[0x277D7B4F0]);
    v73 = v169;
    v74 = v167;
    sub_220DBE0A0();

    v161 = *(v68 + 8);
    v161(v69, v70);
    (*(v166 + 8))(v66, v74);
    v167 = *(v170 + 8);
    v167(v35, v73);
    sub_220DBE9B0();
    v75 = v159;
    sub_220DC02B0();
    (v162)(v69, v163, v70);
    sub_220DBF0D0();
    sub_220D34CA0(&qword_280FA6610, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
    v76 = v75;
    v77 = v191;
    v189 = sub_220DBE0B0();
    v170 = v78;

    v161(v69, v70);
    (v164)(v76, v77);
    v167(v35, v73);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    v184 = qword_280FA6608;
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_11();
    sub_220DBE240();
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_220DC17C0;
    v80 = v192;
    sub_220DBE1B0();
    OUTLINED_FUNCTION_4_12();
    sub_220D34CA0(v81, v82, MEMORY[0x277CC8B40]);
    v83 = sub_220DC06C0();
    v85 = v84;
    v86 = MEMORY[0x277D837D0];
    *(v79 + 56) = MEMORY[0x277D837D0];
    v87 = sub_220CEFDB0();
    *(v79 + 32) = v83;
    *(v79 + 40) = v85;
    *(v79 + 96) = v86;
    *(v79 + 104) = v87;
    v88 = v189;
    *(v79 + 64) = v87;
    *(v79 + 72) = v88;
    v89 = v170;
    *(v79 + 80) = v170;

    v191 = sub_220DC05F0();
    v188 = v90;

    v91 = v173;
    v92 = v190;
    v93 = v80;
    v94 = v185;
    (*(v173 + 16))(v190, v93, v185);
    v95 = type metadata accessor for ConditionDetailChartHeaderStringModel(0);
    __swift_storeEnumTagSinglePayload(v92 + v95[5], 1, 1, v94);
    v157[0] = 0x8000000220DEA5F0;
    OUTLINED_FUNCTION_11();
    sub_220DBE240();
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_220DC17A0;
    *(v96 + 56) = MEMORY[0x277D837D0];
    *(v96 + 64) = v87;
    *(v96 + 32) = v88;
    *(v96 + 40) = v89;
    v189 = sub_220DC05F0();
    v98 = v97;

    v100 = v186;
    v99 = v187;
    sub_220DBEAC0();
    sub_220DBE990();
    v101 = v174;
    sub_220DBEB70();
    (*(v177 + 8))(v100, v178);
    v102 = sub_220DC02D0();
    v104 = v103;
    (*(v175 + 8))(v101, v176);
    (*(v91 + 8))(v192, v94);
    (*(v179 + 8))(v99, v180);
    v105 = (v92 + v95[6]);
    *v105 = 0;
    v105[1] = 0;
    v106 = (v92 + v95[7]);
    *v106 = v189;
    v106[1] = v98;
    v107 = (v92 + v95[8]);
    *v107 = 0;
    v107[1] = 0;
    v108 = (v92 + v95[11]);
    *v108 = v102;
    v108[1] = v104;
    *(v92 + v95[9]) = 0;
    v109 = (v92 + v95[10]);
    v110 = v188;
    *v109 = v191;
    v109[1] = v110;
    v111 = v92 + v95[12];
    *v111 = 0xD000000000000019;
    *(v111 + 8) = 0x8000000220DEA620;
    *(v111 + 16) = 0u;
    *(v111 + 32) = 0u;
    *(v111 + 48) = 0xD000000000000020;
    *(v111 + 56) = 0x8000000220DEA640;
    v182[1](v181, v183);
  }
}
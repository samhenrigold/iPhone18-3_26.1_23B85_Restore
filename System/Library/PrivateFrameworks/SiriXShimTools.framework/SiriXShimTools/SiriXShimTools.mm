void *sub_269A7B548(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
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
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_269A80198(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t static ShimRegistry.actionDefinitions.getter()
{
  v0 = sub_269A824FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131EEF0 != -1)
  {
    swift_once();
  }

  v4 = qword_28131F0E8;
  v5 = *(qword_28131F0E8 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v12 = MEMORY[0x277D84F90];
    sub_269A7B8D4(0, v5, 0);
    v6 = v12;
    v7 = v4 + 40;
    do
    {
      (*(*v7 + 16))();
      v12 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_269A7B8D4((v8 > 1), v9 + 1, 1);
        v6 = v12;
      }

      *(v6 + 16) = v9 + 1;
      (*(v1 + 32))(v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9, v3, v0);
      v7 += 16;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void *sub_269A7B8D4(void *a1, int64_t a2, char a3)
{
  result = sub_269A7B548(a1, a2, a3, *v3, &qword_280345D30, &qword_269A82CB0, MEMORY[0x277D1C378], MEMORY[0x277D1C378]);
  *v3 = result;
  return result;
}

uint64_t sub_269A7B920@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EED8 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F0A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_269A7BA00@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131ED18 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131EEF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BAA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EE00 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131EFD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BB50@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EEE8 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F0D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BBF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F0B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BCA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EE08 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F008);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BD48@<X0>(uint64_t a1@<X8>)
{
  if (qword_28131EE10 != -1)
  {
    swift_once();
  }

  v2 = sub_269A824FC();
  v3 = __swift_project_value_buffer(v2, qword_28131F020);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269A7BE18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269A8257C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_269A7BEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_269A8257C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269A7BF68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269A8257C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_269A7BFF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_269A8257C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269A7C080()
{
  v0 = sub_269A8257C();
  v1 = *(v0 - 8);
  v70 = v0;
  v71 = v1;
  MEMORY[0x28223BE20](v0);
  v56 = (&v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CA8, &qword_269A82A00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_269A824FC();
  __swift_allocate_value_buffer(v6, qword_28131F020);
  v7 = __swift_project_value_buffer(v6, qword_28131F020);
  v65 = "nformationFlowPlugin";
  v66 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB0, &unk_269A82CC0);
  v8 = *(sub_269A824CC() - 8);
  v63 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v64 = v10;
  *(v10 + 16) = xmmword_269A829B0;
  v62 = v10 + v9;
  v61 = "on to a composite location";
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB8, &qword_269A82A08);
  v57 = swift_allocBox();
  v13 = v12;
  v55 = *(v11 + 48);
  v14 = sub_269A8258C();
  v58 = v14;
  v15 = swift_allocBox();
  v17 = v16;
  v18 = *MEMORY[0x277D72CC0];
  v19 = *(v14 - 8);
  v59 = *(v19 + 104);
  v60 = v19 + 104;
  v59(v17, v18, v14);
  v53 = v13;
  *v13 = v15;
  v68 = *MEMORY[0x277D72D50];
  v20 = v68;
  v54 = sub_269A8259C();
  v21 = *(v54 - 8);
  v67 = *(v21 + 104);
  v69 = v21 + 104;
  v67(v13, v20, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC0, &qword_269A82A10);
  v22 = sub_269A825AC();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v52 = xmmword_269A829C0;
  *(v25 + 16) = xmmword_269A829C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC8, &qword_269A82A18);
  v26 = sub_269A8253C();
  v27 = swift_allocObject();
  *(v27 + 16) = v52;
  sub_269A8251C();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v26);
  sub_269A8250C();
  *(v25 + v24) = v27;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x277D72E68], v22);
  *(v53 + v55) = v25;
  v28 = v56;
  *v56 = v57;
  v29 = *MEMORY[0x277D72AB8];
  v30 = v70;
  v57 = *(v71 + 104);
  v71 += 104;
  v57(v28, v29, v70);
  sub_269A824BC();
  v61 = "com.apple.siri.pommes";
  v31 = v54;
  v32 = swift_allocBox();
  v34 = v33;
  v35 = v58;
  v36 = swift_allocBox();
  v37 = v59;
  v59(v38, *MEMORY[0x277D72C98], v35);
  *v34 = v36;
  v39 = v34;
  v40 = v31;
  v67(v39, v68, v31);
  *v28 = v32;
  v41 = *MEMORY[0x277D72AD0];
  v42 = v28;
  v43 = v30;
  v44 = v57;
  v57(v28, v41, v43);
  sub_269A824BC();
  v45 = v40;
  v46 = swift_allocBox();
  v48 = v47;
  v49 = swift_allocBox();
  v37(v50, *MEMORY[0x277D72CC8], v35);
  *v48 = v49;
  v67(v48, v68, v45);
  *v42 = v46;
  v44(v42, v41, v70);
  return sub_269A824DC();
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

uint64_t sub_269A7C840()
{
  v0 = sub_269A824CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269A8257C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_269A824FC();
  __swift_allocate_value_buffer(v7, qword_28131EFD8);
  v20 = __swift_project_value_buffer(v7, qword_28131EFD8);
  v23 = MEMORY[0x277D84F90];
  sub_269A80260(0, 5, 0);
  v8 = 0;
  v9 = v23;
  do
  {
    sub_269A7CB80(byte_287A6FB58[v8 + 32], v3);
    v23 = v9;
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_269A80260((v10 > 1), v11 + 1, 1);
      v9 = v23;
    }

    ++v8;
    *(v9 + 16) = v11 + 1;
    (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v3, v0);
  }

  while (v8 != 5);
  v12 = sub_269A8259C();
  v13 = swift_allocBox();
  v15 = v14;
  v16 = sub_269A8258C();
  v17 = swift_allocBox();
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D72CC8], v16);
  *v15 = v17;
  (*(*(v12 - 8) + 104))(v15, *MEMORY[0x277D72D50], v12);
  *v6 = v13;
  (*(v21 + 104))(v6, *MEMORY[0x277D72AD0], v22);
  return sub_269A824EC();
}

uint64_t sub_269A7CB80@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v6 = sub_269A8257C();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
      sub_269A8259C();
      swift_allocBox();
      OUTLINED_FUNCTION_2();
      v39 = swift_allocBox();
      OUTLINED_FUNCTION_0();
      (*(v40 + 104))();
      *v3 = v39;
      OUTLINED_FUNCTION_0();
      (*(v41 + 104))(v3);
      *v11 = v2;
      v42 = OUTLINED_FUNCTION_1();
      v43(v42);
      break;
    case 3:
      v21 = swift_allocBox();
      v49 = v22;
      v50 = v21;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB8, &qword_269A82A08);
      v24 = swift_allocBox();
      v26 = v25;
      v47 = *(v23 + 48);
      v48 = v24;
      sub_269A8258C();
      v27 = swift_allocBox();
      OUTLINED_FUNCTION_0();
      (*(v28 + 104))();
      *v26 = v27;
      v29 = *MEMORY[0x277D72D50];
      sub_269A8259C();
      OUTLINED_FUNCTION_0();
      (*(v30 + 104))(v26, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC0, &qword_269A82A10);
      v31 = sub_269A825AC();
      OUTLINED_FUNCTION_3();
      v33 = v32;
      v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v35 = swift_allocObject();
      v45 = xmmword_269A829C0;
      *(v35 + 16) = xmmword_269A829C0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC8, &qword_269A82A18);
      v46 = a2;
      sub_269A8253C();
      v36 = swift_allocObject();
      *(v36 + 16) = v45;
      sub_269A8252C();
      *(v35 + v34) = v36;
      (*(v33 + 104))(v35 + v34, *MEMORY[0x277D72E68], v31);
      v37 = v48;
      *(v26 + v47) = v35;
      *v49 = v37;
      v38 = *(v8 + 104);
      v38();
      *v11 = v50;
      (v38)(v11, *MEMORY[0x277D72AB0], v6);
      break;
    default:
      v50 = "p to receive the message";
      v49 = swift_allocBox();
      v13 = v12;
      sub_269A8259C();
      v14 = swift_allocBox();
      v16 = v15;
      sub_269A8258C();
      v17 = swift_allocBox();
      OUTLINED_FUNCTION_0();
      (*(v18 + 104))();
      *v16 = v17;
      OUTLINED_FUNCTION_0();
      (*(v19 + 104))(v16);
      *v13 = v14;
      v20 = *(v8 + 104);
      v20(v13, *MEMORY[0x277D72AD0], v6);
      *v11 = v49;
      v20(v11, *MEMORY[0x277D72AB0], v6);
      break;
  }

  return sub_269A824BC();
}

uint64_t sub_269A7D2F8(char a1)
{
  result = 0x6E65697069636572;
  switch(a1)
  {
    case 1:
      result = 0x6D614E70756F7267;
      break;
    case 2:
      result = 0x746E65746E6F63;
      break;
    case 3:
      result = 0x656D686361747461;
      break;
    case 4:
      result = 7368801;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_269A8258C();
}

uint64_t sub_269A7D43C()
{
  v0 = sub_269A824CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269A8257C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_269A824FC();
  __swift_allocate_value_buffer(v7, qword_28131F0B8);
  v20 = __swift_project_value_buffer(v7, qword_28131F0B8);
  v23 = MEMORY[0x277D84F90];
  sub_269A80260(0, 3, 0);
  v8 = 0;
  v9 = v23;
  do
  {
    sub_269A7D76C(byte_287A6FB80[v8 + 32]);
    v23 = v9;
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_269A80260((v10 > 1), v11 + 1, 1);
      v9 = v23;
    }

    ++v8;
    *(v9 + 16) = v11 + 1;
    (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v3, v0);
  }

  while (v8 != 3);
  v12 = sub_269A8259C();
  v13 = swift_allocBox();
  v15 = v14;
  v16 = sub_269A8258C();
  v17 = swift_allocBox();
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D72CC8], v16);
  *v15 = v17;
  (*(*(v12 - 8) + 104))(v15, *MEMORY[0x277D72D50], v12);
  *v6 = v13;
  (*(v21 + 104))(v6, *MEMORY[0x277D72AD0], v22);
  return sub_269A824EC();
}

uint64_t sub_269A7D76C(char a1)
{
  v2 = sub_269A8257C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = sub_269A8259C();
      v7 = swift_allocBox();
      v9 = v8;
      v10 = sub_269A8258C();
      v11 = swift_allocBox();
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D72CB0], v10);
    }

    else
    {
      v6 = sub_269A8259C();
      v7 = swift_allocBox();
      v9 = v23;
      v24 = sub_269A8258C();
      v11 = swift_allocBox();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D72C98], v24);
    }

    *v9 = v11;
    (*(*(v6 - 8) + 104))(v9, *MEMORY[0x277D72D50], v6);
    *v5 = v7;
    (*(v3 + 104))(v5, *MEMORY[0x277D72AD0], v2);
  }

  else
  {
    v27[1] = "peakerphone for this call";
    v27[0] = swift_allocBox();
    v14 = v13;
    v15 = sub_269A8259C();
    v16 = swift_allocBox();
    v18 = v17;
    v19 = sub_269A8258C();
    v20 = swift_allocBox();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D72CD8], v19);
    *v18 = v20;
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x277D72D50], v15);
    *v14 = v16;
    v22 = *(v3 + 104);
    v22(v14, *MEMORY[0x277D72AD0], v2);
    *v5 = v27[0];
    v22(v5, *MEMORY[0x277D72AB0], v2);
  }

  return sub_269A824BC();
}

uint64_t sub_269A7DBF8()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  v0 = *(Reminder - 8);
  MEMORY[0x28223BE20](Reminder);
  v2 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_269A824CC();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_269A8257C();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_269A824FC();
  __swift_allocate_value_buffer(v7, qword_28131EEF8);
  v8 = __swift_project_value_buffer(v7, qword_28131EEF8);
  if (qword_28131ED20 != -1)
  {
    swift_once();
  }

  v9 = qword_28131EF10;
  v10 = *(qword_28131EF10 + 16);
  if (v10)
  {
    v29[1] = v8;
    v39 = MEMORY[0x277D84F90];

    sub_269A80260(0, v10, 0);
    v11 = v39;
    v12 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v29[0] = v9;
    v13 = v9 + v12;
    v14 = *(v0 + 72);
    v32 = (v5 + 16);
    v33 = v14;
    v30 = v5;
    v31 = v36 + 32;
    v15 = v37;
    do
    {
      sub_269A7F0CC(v13, v2);
      v16 = v4;
      (*v32)(v15, &v2[*(Reminder + 24)], v38);

      sub_269A824BC();
      sub_269A7F130(v2);
      v39 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_269A80260((v17 > 1), v18 + 1, 1);
        v11 = v39;
      }

      *(v11 + 16) = v18 + 1;
      (*(v36 + 32))(v11 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v18, v16, v34);
      v13 += v33;
      --v10;
      v4 = v16;
    }

    while (v10);

    v5 = v30;
  }

  v19 = sub_269A8259C();
  v20 = swift_allocBox();
  v22 = v21;
  v23 = sub_269A8258C();
  v24 = swift_allocBox();
  (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D72CC8], v23);
  *v22 = v24;
  (*(*(v19 - 8) + 104))(v22, *MEMORY[0x277D72D50], v19);
  v27 = v37;
  v26 = v38;
  *v37 = v20;
  (*(v5 + 104))(v27, *MEMORY[0x277D72AD0], v26);
  return sub_269A824EC();
}

uint64_t sub_269A7E09C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CD0, &qword_269A82AD8);
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  v1 = *(*(Reminder - 8) + 72);
  v2 = (*(*(Reminder - 8) + 80) + 32) & ~*(*(Reminder - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269A82A90;
  v4 = v3 + v2;
  if (qword_28131EDD0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(Reminder, qword_28131EF48);
  sub_269A7F0CC(v5, v4);
  if (qword_28131EDC0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(Reminder, qword_28131EF18);
  sub_269A7F0CC(v6, v4 + v1);
  if (qword_28131EDF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(Reminder, qword_28131EFA8);
  sub_269A7F0CC(v7, v4 + 2 * v1);
  if (qword_28131EDF8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(Reminder, qword_28131EFC0);
  sub_269A7F0CC(v8, v4 + 3 * v1);
  if (qword_28131EDD8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(Reminder, qword_28131EF60);
  sub_269A7F0CC(v9, v4 + 4 * v1);
  if (qword_28131EDC8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(Reminder, qword_28131EF30);
  sub_269A7F0CC(v10, v4 + 5 * v1);
  if (qword_28131EDE8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(Reminder, qword_28131EF90);
  sub_269A7F0CC(v11, v4 + 6 * v1);
  if (qword_28131EDE0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(Reminder, qword_28131EF78);
  result = sub_269A7F0CC(v12, v4 - v1 + 8 * v1);
  qword_28131EF10 = v3;
  return result;
}

uint64_t sub_269A7E3C8()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  __swift_allocate_value_buffer(Reminder, qword_28131EF48);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF48);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x656C746974;
  *(v1 + 1) = 0xE500000000000000;
  *(v1 + 2) = 0xD00000000000004ELL;
  *(v1 + 3) = 0x8000000269A838A0;
  return result;
}

uint64_t sub_269A7E550()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  __swift_allocate_value_buffer(Reminder, qword_28131EF18);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF18);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x6C7469547473696CLL;
  *(v1 + 1) = 0xE900000000000065;
  *(v1 + 2) = 0xD000000000000074;
  *(v1 + 3) = 0x8000000269A83820;
  return result;
}

uint64_t sub_269A7E6E0()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  __swift_allocate_value_buffer(Reminder, qword_28131EFA8);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EFA8);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *(v1 + v9) = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  strcpy(v1, "listIdentifier");
  *(v1 + 15) = -18;
  *(v1 + 16) = 0xD000000000000021;
  *(v1 + 24) = 0x8000000269A837F0;
  return result;
}

uint64_t sub_269A7E878()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  __swift_allocate_value_buffer(Reminder, qword_28131EFC0);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EFC0);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CB0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *(v1 + v9) = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  strcpy(v1, "listIsGrocery");
  *(v1 + 14) = -4864;
  *(v1 + 16) = 0xD000000000000092;
  *(v1 + 24) = 0x8000000269A83750;
  return result;
}

uint64_t sub_269A7EA10()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  __swift_allocate_value_buffer(Reminder, qword_28131EF60);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF60);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CB8], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 1701669236;
  *(v1 + 1) = 0xE400000000000000;
  *(v1 + 2) = 0xD000000000000035;
  *(v1 + 3) = 0x8000000269A83710;
  return result;
}

uint64_t sub_269A7EB94()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  __swift_allocate_value_buffer(Reminder, qword_28131EF30);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF30);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72D00], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x6E6F697461636F6CLL;
  *(v1 + 1) = 0xE800000000000000;
  *(v1 + 2) = 0xD000000000000037;
  *(v1 + 3) = 0x8000000269A836D0;
  return result;
}

uint64_t sub_269A7ED20()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  __swift_allocate_value_buffer(Reminder, qword_28131EF90);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF90);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CB0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0xD00000000000001ALL;
  *(v1 + 1) = 0x8000000269A83630;
  *(v1 + 2) = 0xD000000000000071;
  *(v1 + 3) = 0x8000000269A83650;
  return result;
}

uint64_t sub_269A7EEB4()
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  __swift_allocate_value_buffer(Reminder, qword_28131EF78);
  v1 = __swift_project_value_buffer(Reminder, qword_28131EF78);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72C98], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Reminder + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 7368801;
  *(v1 + 1) = 0xE300000000000000;
  *(v1 + 2) = 0xD000000000000059;
  *(v1 + 3) = 0x8000000269A835D0;
  return result;
}

uint64_t type metadata accessor for CreateReminderShim.Parameters.Definition(uint64_t a1)
{
  result = qword_28131EDB0;
  if (!qword_28131EDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269A7F0CC(uint64_t a1, uint64_t a2)
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  (*(*(Reminder - 8) + 16))(a2, a1, Reminder);
  return a2;
}

uint64_t sub_269A7F130(uint64_t a1)
{
  Reminder = type metadata accessor for CreateReminderShim.Parameters.Definition(0);
  (*(*(Reminder - 8) + 8))(a1, Reminder);
  return a1;
}

uint64_t sub_269A7F1EC(uint64_t a1)
{
  result = sub_269A8257C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269A7F278()
{
  v0 = sub_269A824CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269A8257C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_269A824FC();
  __swift_allocate_value_buffer(v7, qword_28131F008);
  v20 = __swift_project_value_buffer(v7, qword_28131F008);
  v23 = MEMORY[0x277D84F90];
  sub_269A80260(0, 4, 0);
  v8 = 0;
  v9 = v23;
  do
  {
    sub_269A7F5C0(byte_287A6FBA8[v8 + 32], v3);
    v23 = v9;
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_269A80260((v10 > 1), v11 + 1, 1);
      v9 = v23;
    }

    ++v8;
    *(v9 + 16) = v11 + 1;
    (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v3, v0);
  }

  while (v8 != 4);
  v12 = sub_269A8259C();
  v13 = swift_allocBox();
  v15 = v14;
  v16 = sub_269A8258C();
  v17 = swift_allocBox();
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D72CC8], v16);
  *v15 = v17;
  (*(*(v12 - 8) + 104))(v15, *MEMORY[0x277D72D50], v12);
  *v6 = v13;
  (*(v21 + 104))(v6, *MEMORY[0x277D72AD0], v22);
  return sub_269A824EC();
}

uint64_t sub_269A7F5C0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v3 = sub_269A8257C();
  MEMORY[0x28223BE20](v3);
  v5 = (v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269A8259C();
  v6 = swift_allocBox();
  v8 = v7;
  v9 = sub_269A8258C();
  v10 = swift_allocBox();
  v12 = *(*(v9 - 8) + 104);
  v13 = v10;
  switch(a1)
  {
    case 1:
      v12(v11, *MEMORY[0x277D72CB8], v9);
      *v8 = v13;
      OUTLINED_FUNCTION_2_0();
      v26 = OUTLINED_FUNCTION_1_0();
      v27(v26);
      *v5 = v6;
      v28 = OUTLINED_FUNCTION_0_0();
      v29(v28);
      break;
    case 2:
      v12(v11, *MEMORY[0x277D72C70], v9);
      *v8 = v13;
      OUTLINED_FUNCTION_2_0();
      v18 = OUTLINED_FUNCTION_1_0();
      v19(v18);
      *v5 = v6;
      v20 = OUTLINED_FUNCTION_0_0();
      v21(v20);
      break;
    case 3:
      v12(v11, *MEMORY[0x277D72CB0], v9);
      *v8 = v13;
      OUTLINED_FUNCTION_2_0();
      v22 = OUTLINED_FUNCTION_1_0();
      v23(v22);
      *v5 = v6;
      v24 = OUTLINED_FUNCTION_0_0();
      v25(v24);
      break;
    default:
      v12(v11, *MEMORY[0x277D72CE0], v9);
      *v8 = v13;
      OUTLINED_FUNCTION_2_0();
      v14 = OUTLINED_FUNCTION_1_0();
      v15(v14);
      *v5 = v6;
      v16 = OUTLINED_FUNCTION_0_0();
      v17(v16);
      break;
  }

  return sub_269A824BC();
}

uint64_t sub_269A7F97C(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0x746165706572;
      break;
    case 3:
      result = 0x657A6F6F6E73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269A7FA60()
{
  sub_269A806C8();
  result = sub_269A825EC();
  qword_280345D48 = result;
  return result;
}

uint64_t sub_269A7FACC()
{
  v0 = sub_269A8255C();
  __swift_allocate_value_buffer(v0, qword_280345D50);
  __swift_project_value_buffer(v0, qword_280345D50);
  if (qword_280345C90 != -1)
  {
    swift_once();
  }

  v1 = qword_280345D48;
  return sub_269A8256C();
}

double sub_269A7FB58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D38, &qword_269A82CB8);
  v0 = swift_allocObject();
  *&result = 7;
  *(v0 + 16) = xmmword_269A82B30;
  *(v0 + 32) = &type metadata for CreateNoteShim;
  *(v0 + 40) = &off_287A6FEE0;
  *(v0 + 48) = &type metadata for CreateReminderShim;
  *(v0 + 56) = &off_287A6FCC8;
  *(v0 + 64) = &type metadata for SendMessageShim;
  *(v0 + 72) = &off_287A6FC38;
  *(v0 + 80) = &type metadata for PlayMediaShim;
  *(v0 + 88) = &off_287A6FE98;
  *(v0 + 96) = &type metadata for StartCallShim;
  *(v0 + 104) = &off_287A6FC80;
  *(v0 + 112) = &type metadata for CreateAlarmShim;
  *(v0 + 120) = &off_287A6FD30;
  *(v0 + 128) = &type metadata for NavigateToShim;
  *(v0 + 136) = &off_287A6FBF0;
  qword_28131F0E8 = v0;
  return result;
}

uint64_t sub_269A7FC3C()
{
  if (qword_28131EEF0 != -1)
  {
    swift_once();
  }

  v0 = qword_28131F0E8;
  v1 = *(qword_28131F0E8 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];

    sub_269A8070C(0, v1, 0);
    v3 = 32;
    v2 = v12;
    do
    {
      v11 = *(v0 + v3);
      v4 = (*(*(v0 + v3 + 8) + 8))();
      v6 = v5;
      v8 = *(v12 + 16);
      v7 = *(v12 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_269A8070C((v7 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v9 = v12 + 32 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      *(v9 + 48) = v11;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  result = sub_269A7FD90(v2);
  qword_280345CD8 = result;
  return result;
}

uint64_t sub_269A7FD90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D08, &qword_269A82C88);
    v1 = sub_269A8264C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_269A8085C(v2, 1, &v4);

  return v4;
}

uint64_t static ShimRegistry.nameToShim.getter()
{
  if (qword_280345CA0 != -1)
  {
    swift_once();
  }
}

uint64_t static SXSTShimRegistry.actionDefinitionsData()()
{
  sub_269A8249C();
  swift_allocObject();
  sub_269A8248C();
  static ShimRegistry.actionDefinitions.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CE0, &qword_269A82B60);
  sub_269A802A8();
  v0 = sub_269A8247C();
  v2 = v1;

  v3 = sub_269A824AC();
  sub_269A80434(v0, v2);
  return v3;
}

id SXSTShimRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SXSTShimRegistry.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SXSTShimRegistry();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SXSTShimRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SXSTShimRegistry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269A80198(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_0_1();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_0_1();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

void *sub_269A80260(void *a1, int64_t a2, char a3)
{
  result = sub_269A7B548(a1, a2, a3, *v3, &qword_280345CB0, &unk_269A82CC0, MEMORY[0x277D1C370], MEMORY[0x277D1C370]);
  *v3 = result;
  return result;
}

unint64_t sub_269A802A8()
{
  result = qword_280345CE8;
  if (!qword_280345CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280345CE0, &qword_269A82B60);
    sub_269A80374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280345CE8);
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

unint64_t sub_269A80374()
{
  result = qword_280345CF0;
  if (!qword_280345CF0)
  {
    sub_269A824FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280345CF0);
  }

  return result;
}

uint64_t sub_269A803CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CF8, &qword_269A82B68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269A80434(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t getEnumTagSinglePayload for ShimRegistry(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ShimRegistry(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_269A805D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_269A80618(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_269A806C8()
{
  result = qword_280345D00;
  if (!qword_280345D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280345D00);
  }

  return result;
}

void *sub_269A8070C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269A8072C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269A8072C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D20, &qword_269A82CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D28, &qword_269A82CA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_269A8085C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v25 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_269A8266C();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v27 = *i;
    v9 = *a3;

    v11 = sub_269A80B34(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D10, &qword_269A82C90);
      sub_269A8261C();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    *(v18[7] + 16 * v11) = v27;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_269A80BAC(v14, a2 & 1);
  v16 = sub_269A80B34(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  MEMORY[0x26D64A440](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D18, &qword_269A82C98);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x26D64A430](v23);
  }

LABEL_22:
  sub_269A825FC();
  MEMORY[0x26D64A1C0](0xD00000000000001BLL, 0x8000000269A83A50);
  sub_269A8260C();
  MEMORY[0x26D64A1C0](39, 0xE100000000000000);
  result = sub_269A8262C();
  __break(1u);
  return result;
}

unint64_t sub_269A80B34(uint64_t a1, uint64_t a2)
{
  sub_269A826BC();
  sub_269A825BC();
  v4 = sub_269A826CC();

  return sub_269A80E4C(a1, a2, v4);
}

uint64_t sub_269A80BAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D08, &qword_269A82C88);
  v32 = v4;
  result = sub_269A8263C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      sub_269A80F00(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v33 = *(*(v5 + 56) + 16 * v18);
    if ((v32 & 1) == 0)
    {
    }

    sub_269A826BC();
    sub_269A825BC();
    result = sub_269A826CC();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v7 + 48) + 16 * v25);
    *v30 = v20;
    v30[1] = v21;
    *(*(v7 + 56) + 16 * v25) = v33;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_269A80E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_269A8265C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_269A80F00(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_269A82B40;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_269A80F88()
{
  v0 = sub_269A8257C();
  v1 = *(v0 - 8);
  v70 = v0;
  v71 = v1;
  MEMORY[0x28223BE20](v0);
  v56 = (&v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CA8, &qword_269A82A00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_269A824FC();
  __swift_allocate_value_buffer(v6, qword_28131F0D0);
  v7 = __swift_project_value_buffer(v6, qword_28131F0D0);
  v65 = "udio.AudioFlowDelegatePlugin";
  v66 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB0, &unk_269A82CC0);
  v8 = *(sub_269A824CC() - 8);
  v63 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v64 = v10;
  *(v10 + 16) = xmmword_269A829B0;
  v62 = v10 + v9;
  v61 = "Plays the provided media item";
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CB8, &qword_269A82A08);
  v57 = swift_allocBox();
  v13 = v12;
  v55 = *(v11 + 48);
  v14 = sub_269A8258C();
  v58 = v14;
  v15 = swift_allocBox();
  v17 = v16;
  v18 = *MEMORY[0x277D72CC0];
  v19 = *(v14 - 8);
  v59 = *(v19 + 104);
  v60 = v19 + 104;
  v59(v17, v18, v14);
  v53 = v13;
  *v13 = v15;
  v68 = *MEMORY[0x277D72D50];
  v20 = v68;
  v54 = sub_269A8259C();
  v21 = *(v54 - 8);
  v67 = *(v21 + 104);
  v69 = v21 + 104;
  v67(v13, v20, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC0, &qword_269A82A10);
  v22 = sub_269A825AC();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v52 = xmmword_269A829C0;
  *(v25 + 16) = xmmword_269A829C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345CC8, &qword_269A82A18);
  v26 = sub_269A8253C();
  v27 = swift_allocObject();
  *(v27 + 16) = v52;
  sub_269A8251C();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v26);
  sub_269A8250C();
  *(v25 + v24) = v27;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x277D72E68], v22);
  *(v53 + v55) = v25;
  v28 = v56;
  *v56 = v57;
  v29 = *MEMORY[0x277D72AB8];
  v30 = v70;
  v57 = *(v71 + 104);
  v71 += 104;
  v57(v28, v29, v70);
  sub_269A824BC();
  v61 = "results from Search Tool";
  v31 = v54;
  v32 = swift_allocBox();
  v34 = v33;
  v35 = v58;
  v36 = swift_allocBox();
  v37 = v59;
  v59(v38, *MEMORY[0x277D72C98], v35);
  *v34 = v36;
  v39 = v34;
  v40 = v31;
  v67(v39, v68, v31);
  *v28 = v32;
  v41 = *MEMORY[0x277D72AD0];
  v42 = v28;
  v43 = v30;
  v44 = v57;
  v57(v28, v41, v43);
  sub_269A824BC();
  v45 = v40;
  v46 = swift_allocBox();
  v48 = v47;
  v49 = swift_allocBox();
  v37(v50, *MEMORY[0x277D72CC8], v35);
  *v48 = v49;
  v67(v48, v68, v45);
  *v42 = v46;
  v44(v42, v41, v70);
  return sub_269A824DC();
}

uint64_t sub_269A8166C()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition(0);
  v0 = *(Note - 8);
  MEMORY[0x28223BE20](Note);
  v2 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_269A824CC();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_269A8257C();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_269A824FC();
  __swift_allocate_value_buffer(v7, qword_28131F0A0);
  v8 = __swift_project_value_buffer(v7, qword_28131F0A0);
  if (qword_28131EED0 != -1)
  {
    swift_once();
  }

  v9 = qword_28131F098;
  v10 = *(qword_28131F098 + 16);
  if (v10)
  {
    v29[1] = v8;
    v39 = MEMORY[0x277D84F90];

    sub_269A80260(0, v10, 0);
    v11 = v39;
    v12 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v29[0] = v9;
    v13 = v9 + v12;
    v14 = *(v0 + 72);
    v32 = (v5 + 16);
    v33 = v14;
    v30 = v5;
    v31 = v36 + 32;
    v15 = v37;
    do
    {
      sub_269A82394(v13, v2);
      v16 = v4;
      (*v32)(v15, &v2[*(Note + 24)], v38);

      sub_269A824BC();
      sub_269A823F8(v2);
      v39 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_269A80260((v17 > 1), v18 + 1, 1);
        v11 = v39;
      }

      *(v11 + 16) = v18 + 1;
      (*(v36 + 32))(v11 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v18, v16, v34);
      v13 += v33;
      --v10;
      v4 = v16;
    }

    while (v10);

    v5 = v30;
  }

  v19 = sub_269A8259C();
  v20 = swift_allocBox();
  v22 = v21;
  v23 = sub_269A8258C();
  v24 = swift_allocBox();
  (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D72CC8], v23);
  *v22 = v24;
  (*(*(v19 - 8) + 104))(v22, *MEMORY[0x277D72D50], v19);
  v27 = v37;
  v26 = v38;
  *v37 = v20;
  (*(v5 + 104))(v27, *MEMORY[0x277D72AD0], v26);
  return sub_269A824EC();
}

uint64_t sub_269A81B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280345D40, &unk_269A82D40);
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition(0);
  v1 = *(*(Note - 8) + 72);
  v2 = (*(*(Note - 8) + 80) + 32) & ~*(*(Note - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269A82D00;
  v4 = v3 + v2;
  if (qword_28131EEC0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(Note, qword_28131F068);
  sub_269A82394(v5, v4);
  if (qword_28131EEB0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(Note, qword_28131F038);
  sub_269A82394(v6, v4 + v1);
  if (qword_28131EEB8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(Note, qword_28131F050);
  sub_269A82394(v7, v4 + 2 * v1);
  if (qword_28131EEC8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(Note, qword_28131F080);
  result = sub_269A82394(v8, v4 + 3 * v1);
  qword_28131F098 = v3;
  return result;
}

uint64_t sub_269A81D00()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition(0);
  __swift_allocate_value_buffer(Note, qword_28131F068);
  v1 = __swift_project_value_buffer(Note, qword_28131F068);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Note + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x656C746974;
  *(v1 + 1) = 0xE500000000000000;
  *(v1 + 2) = 0xD00000000000001FLL;
  *(v1 + 3) = 0x8000000269A83C40;
  return result;
}

uint64_t sub_269A81E88()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition(0);
  __swift_allocate_value_buffer(Note, qword_28131F038);
  v1 = __swift_project_value_buffer(Note, qword_28131F038);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Note + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x746E65746E6F63;
  *(v1 + 1) = 0xE700000000000000;
  *(v1 + 2) = 0xD000000000000021;
  *(v1 + 3) = 0x8000000269A83C10;
  return result;
}

uint64_t sub_269A82014()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition(0);
  __swift_allocate_value_buffer(Note, qword_28131F050);
  v1 = __swift_project_value_buffer(Note, qword_28131F050);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72CE0], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Note + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 0x7265646C6F66;
  *(v1 + 1) = 0xE600000000000000;
  *(v1 + 2) = 0xD000000000000020;
  *(v1 + 3) = 0x8000000269A83BE0;
  return result;
}

uint64_t sub_269A8219C()
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition(0);
  __swift_allocate_value_buffer(Note, qword_28131F080);
  v1 = __swift_project_value_buffer(Note, qword_28131F080);
  v2 = sub_269A8259C();
  v3 = swift_allocBox();
  v5 = v4;
  v6 = sub_269A8258C();
  v7 = swift_allocBox();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D72C98], v6);
  *v5 = v7;
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D72D50], v2);
  v9 = *(Note + 24);
  *&v1[v9] = v3;
  v10 = *MEMORY[0x277D72AD0];
  v11 = sub_269A8257C();
  result = (*(*(v11 - 8) + 104))(&v1[v9], v10, v11);
  *v1 = 7368801;
  *(v1 + 1) = 0xE300000000000000;
  *(v1 + 2) = 0xD000000000000051;
  *(v1 + 3) = 0x8000000269A83B80;
  return result;
}

uint64_t type metadata accessor for CreateNoteShim.ParameterDefinition(uint64_t a1)
{
  result = qword_28131EEA0;
  if (!qword_28131EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269A82394(uint64_t a1, uint64_t a2)
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition(0);
  (*(*(Note - 8) + 16))(a2, a1, Note);
  return a2;
}

uint64_t sub_269A823F8(uint64_t a1)
{
  Note = type metadata accessor for CreateNoteShim.ParameterDefinition(0);
  (*(*(Note - 8) + 8))(a1, Note);
  return a1;
}
uint64_t sub_1DD2F2E80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D50, &qword_1DD33A998);
  __swift_allocate_value_buffer(v0, qword_1EE02A2B0);
  __swift_project_value_buffer(v0, qword_1EE02A2B0);
  sub_1DD336310();
  sub_1DD334B00();
  return sub_1DD335790();
}

uint64_t sub_1DD2F2F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1DD336310();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DD336340();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v35 - v8;
  v45 = sub_1DD334C50();
  v9 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DD336370();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DD336290();
  v43 = v17;
  v44 = v16;
  v18 = a1;
  sub_1DD3362A0();
  sub_1DD336360();
  (*(v13 + 8))(v15, v12);
  sub_1DD3362D0();

  sub_1DD334B00();
  swift_allocObject();
  v19 = sub_1DD334AF0();
  sub_1DD334C30();
  sub_1DD334BA0();
  v20 = v11;
  v21 = v48;
  (*(v9 + 8))(v20, v45);
  v22 = sub_1DD3362D0();
  sub_1DD2AAFF4(v22, v21);

  v23 = sub_1DD336350();
  if (__swift_getEnumTagSinglePayload(v21, 1, v23) == 1)
  {
    sub_1DD2825F0(v21, &qword_1ECCD6608, &qword_1DD339310);
  }

  else
  {
    v24 = *(v23 - 8);
    if ((*(v24 + 88))(v21, v23) == *MEMORY[0x1E69DAE70])
    {
      (*(v24 + 96))(v21, v23);
      v25 = swift_projectBox();
      v27 = v37;
      v26 = v38;
      v28 = v39;
      (*(v38 + 16))(v37, v25, v39);
      if ((*(v26 + 88))(v27, v28) == *MEMORY[0x1E69DADF0])
      {
        (*(v26 + 96))(v27, v28);

        sub_1DD334AE0();

        *v36 = v19;
        return result;
      }

      (*(v26 + 8))(v27, v28);
    }

    else
    {
      (*(v24 + 8))(v21, v23);
    }
  }

  v30 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  v32 = v31;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000045, 0x80000001DD33E2E0);
  (*(v41 + 16))(v40, v18, v42);
  v33 = sub_1DD336630();
  MEMORY[0x1E12AC540](v33);

  v34 = v47;
  *v32 = v46;
  v32[1] = v34;
  (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69D3640], v30);
  swift_willThrow();
}

uint64_t sub_1DD2F355C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D58, &qword_1DD33A9A0);
  __swift_allocate_value_buffer(v0, qword_1EE02A2C8);
  __swift_project_value_buffer(v0, qword_1EE02A2C8);
  sub_1DD336310();
  sub_1DD334E30();
  return sub_1DD335790();
}

uint64_t sub_1DD2F35EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = sub_1DD336310();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DD336340();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v48 - v10;
  v11 = sub_1DD336280();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1DD334C50();
  v13 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DD336370();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DD336290();
  v60 = v21;
  v61 = v20;
  v22 = a1;
  sub_1DD3362A0();
  sub_1DD336360();
  (*(v17 + 8))(v19, v16);
  v23 = sub_1DD3362D0();
  sub_1DD334E30();
  swift_allocObject();
  v24 = sub_1DD334E20();
  v25 = v65;
  sub_1DD334C30();
  sub_1DD334BA0();
  (*(v13 + 8))(v15, v62);
  sub_1DD2AAFF4(v23, v25);

  v26 = sub_1DD336350();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1DD2825F0(v25, &qword_1ECCD6608, &qword_1DD339310);
    goto LABEL_12;
  }

  v62 = v24;
  v27 = *(v26 - 8);
  v28 = *(v27 + 88);
  if (v28(v25, v26) != *MEMORY[0x1E69DAE18])
  {
    (*(v27 + 8))(v25, v26);
    goto LABEL_12;
  }

  v60 = *(v27 + 96);
  v61 = v22;
  v60(v25, v26);
  v29 = swift_projectBox();
  v30 = v54;
  v31 = v55;
  (*(v55 + 16))(v54, v29, v56);

  v32 = sub_1DD336270();
  v33 = v53;
  sub_1DD2F0810(v32, v53);

  if (__swift_getEnumTagSinglePayload(v33, 1, v26) == 1)
  {
    (*(v31 + 8))(v30, v56);
    sub_1DD2825F0(v33, &qword_1ECCD6608, &qword_1DD339310);
LABEL_11:
    v22 = v61;
    goto LABEL_12;
  }

  if (v28(v33, v26) != *MEMORY[0x1E69DAE70])
  {
    (*(v55 + 8))(v54, v56);
    (*(v27 + 8))(v33, v26);
    goto LABEL_11;
  }

  v60(v33, v26);
  v34 = swift_projectBox();
  v36 = v50;
  v35 = v51;
  v37 = v52;
  (*(v51 + 16))(v50, v34, v52);
  v38 = (*(v35 + 88))(v36, v37);
  v39 = v62;
  v41 = v54;
  v40 = v55;
  if (v38 == *MEMORY[0x1E69DADF0])
  {
    (*(v35 + 96))(v36, v37);

    sub_1DD334E10();

    result = (*(v40 + 8))(v41, v56);
    *v49 = v39;
    return result;
  }

  (*(v55 + 8))(v54, v56);
  (*(v35 + 8))(v36, v37);

  v22 = v61;
LABEL_12:
  v43 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  v45 = v44;
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000061, 0x80000001DD33E270);
  (*(v58 + 16))(v57, v22, v59);
  v46 = sub_1DD336630();
  MEMORY[0x1E12AC540](v46);

  v47 = v64;
  *v45 = v63;
  v45[1] = v47;
  (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69D3640], v43);
  swift_willThrow();
}

uint64_t sub_1DD2F3E38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D68, &qword_1DD33A9B0);
  __swift_allocate_value_buffer(v0, qword_1EE02A3B8);
  __swift_project_value_buffer(v0, qword_1EE02A3B8);
  sub_1DD336350();
  sub_1DD334570();
  return sub_1DD335790();
}

uint64_t sub_1DD2F3EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1DD336350();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1DD336340();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = *(v4 + 16);
  v32 = a1;
  v17 = a1;
  v18 = v16;
  v16(v8, v17, v3);
  if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DAE70])
  {
    (*(v4 + 96))(v8, v3);
    v19 = swift_projectBox();
    (*(v10 + 16))(v15, v19, v9);

    (*(v10 + 32))(v13, v15, v9);
    if ((*(v10 + 88))(v13, v9) == *MEMORY[0x1E69DAD80])
    {
      (*(v10 + 96))(v13, v9);
      v20 = sub_1DD334570();
      return (*(*(v20 - 8) + 32))(v28, v13, v20);
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v4 + 8))(v8, v3);
  }

  v22 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  v24 = v23;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD000000000000049, 0x80000001DD33E1C0);
  v18(v29, v32, v3);
  v25 = sub_1DD336630();
  MEMORY[0x1E12AC540](v25);

  v26 = v31;
  *v24 = v30;
  v24[1] = v26;
  (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69D3640], v22);
  return swift_willThrow();
}

uint64_t sub_1DD2F42EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D78, &qword_1DD33A9C0);
  __swift_allocate_value_buffer(v0, qword_1EE02A448);
  __swift_project_value_buffer(v0, qword_1EE02A448);
  sub_1DD334570();
  sub_1DD335170();
  return sub_1DD335790();
}

uint64_t sub_1DD2F437C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1DD334570();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = makeDateTimeEntityFromDateComponents(dateComponents:)(v6);
  result = sub_1DD2825F0(v6, &qword_1ECCD6778, &qword_1DD339728);
  *a2 = v8;
  return result;
}

uint64_t makeDateTimeEntityFromDateComponents(dateComponents:)(uint64_t a1)
{
  v2 = sub_1DD334830();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6798, &qword_1DD33A070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v61 - v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v61 - v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v61 - v13;
  OUTLINED_FUNCTION_24_0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - v24;
  v26 = sub_1DD335170();
  OUTLINED_FUNCTION_51_1(v26);
  v27 = sub_1DD335160();
  v28 = sub_1DD334F30();
  OUTLINED_FUNCTION_51_1(v28);
  v73 = sub_1DD334F20();
  v29 = sub_1DD335120();
  OUTLINED_FUNCTION_51_1(v29);
  v72 = sub_1DD335110();
  v74 = a1;
  sub_1DD2FC744(a1, v25, &qword_1ECCD6778, &qword_1DD339728);
  v30 = sub_1DD334570();
  OUTLINED_FUNCTION_10_1(v25);
  if (v31)
  {
    sub_1DD2825F0(v25, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334510();
    OUTLINED_FUNCTION_9();
    (*(v32 + 8))(v25, v30);
  }

  v33 = v27;
  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334EF0();

  OUTLINED_FUNCTION_91();
  v71 = sub_1DD335110();
  sub_1DD2FC744(v74, v23, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v23);
  if (v31)
  {
    sub_1DD2825F0(v23, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334540();
    OUTLINED_FUNCTION_9();
    (*(v34 + 8))(v23, v30);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334F00();

  OUTLINED_FUNCTION_91();
  v70 = sub_1DD335110();
  sub_1DD2FC744(v74, v20, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v20);
  v35 = v65;
  if (v31)
  {
    sub_1DD2825F0(v20, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334550();
    OUTLINED_FUNCTION_9();
    (*(v36 + 8))(v20, v30);
  }

  v37 = v69;
  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334F10();

  v38 = sub_1DD3351A0();
  OUTLINED_FUNCTION_51_1(v38);
  v69 = sub_1DD335190();
  sub_1DD2FC744(v74, v17, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v17);
  if (v31)
  {
    v39 = &qword_1ECCD6778;
    v40 = &qword_1DD339728;
    v41 = v17;
LABEL_15:
    sub_1DD2825F0(v41, v39, v40);
LABEL_16:

    goto LABEL_17;
  }

  v42 = v64;
  sub_1DD334560();
  OUTLINED_FUNCTION_9();
  (*(v43 + 8))(v17, v30);
  v44 = sub_1DD3349F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v44);
  if (EnumTagSinglePayload == 1)
  {
    v39 = &qword_1ECCD6798;
    v40 = &qword_1DD33A070;
    v41 = v42;
    goto LABEL_15;
  }

  v56 = v33;
  v57 = v61;
  sub_1DD334820();
  sub_1DD3349B0();
  v59 = v58;
  v60 = v57;
  v33 = v56;
  (*(v62 + 8))(v60, v63);
  (*(*(v44 - 8) + 8))(v64, v44);
  if (!v59)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_1DD335180();

  sub_1DD335860();
  sub_1DD334EE0();

  sub_1DD335860();
  sub_1DD335150();

  v46 = sub_1DD334ED0();
  OUTLINED_FUNCTION_51_1(v46);
  sub_1DD334EC0();
  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  sub_1DD2FC744(v74, v37, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v37);
  v67 = v33;
  if (v31)
  {
    sub_1DD2825F0(v37, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334520();
    OUTLINED_FUNCTION_9();
    (*(v47 + 8))(v37, v30);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334EB0();

  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  sub_1DD2FC744(v74, v35, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v35);
  if (v31)
  {
    sub_1DD2825F0(v35, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD3344D0();
    OUTLINED_FUNCTION_9();
    (*(v48 + 8))(v35, v30);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334E90();

  v49 = sub_1DD335340();
  OUTLINED_FUNCTION_51_1(v49);
  sub_1DD335330();
  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  v50 = v66;
  sub_1DD2FC744(v74, v66, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v50);
  if (v31)
  {
    sub_1DD2825F0(v50, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334530();
    OUTLINED_FUNCTION_9();
    (*(v51 + 8))(v50, v30);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD335320();

  sub_1DD335860();
  sub_1DD334EA0();

  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  v52 = v68;
  sub_1DD2FC744(v74, v68, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v52);
  if (v31)
  {
    sub_1DD2825F0(v52, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334500();
    OUTLINED_FUNCTION_9();
    (*(v53 + 8))(v52, v30);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334E80();

  sub_1DD335860();
  v54 = v67;
  sub_1DD335140();

  return v54;
}

uint64_t sub_1DD2F4EFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D30, &qword_1DD33A978);
  __swift_allocate_value_buffer(v0, qword_1EE02A400);
  __swift_project_value_buffer(v0, qword_1EE02A400);
  sub_1DD336310();
  sub_1DD3354F0();
  return sub_1DD335790();
}

uint64_t sub_1DD2F4F8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v273 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v270 = &v256 - v4;
  v290 = sub_1DD334830();
  v288 = *(v290 - 8);
  v5 = MEMORY[0x1EEE9AC00](v290);
  v277 = &v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v289 = &v256 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v262 = &v256 - v9;
  v269 = sub_1DD3349F0();
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v267 = &v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_1DD334570();
  v271 = *(v272 - 8);
  v11 = MEMORY[0x1EEE9AC00](v272);
  v279 = &v256 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v278 = &v256 - v13;
  v298 = sub_1DD334D40();
  v297 = *(v298 - 8);
  v14 = MEMORY[0x1EEE9AC00](v298);
  v260 = &v256 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v295 = &v256 - v16;
  v301 = sub_1DD336340();
  v302 = *(v301 - 8);
  v17 = MEMORY[0x1EEE9AC00](v301);
  v261 = &v256 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v275 = &v256 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v286 = &v256 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v304 = &v256 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v263 = &v256 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v296 = &v256 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v293 = &v256 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v265 = &v256 - v31;
  v318 = sub_1DD336310();
  v320 = *(v318 - 8);
  v32 = MEMORY[0x1EEE9AC00](v318);
  v306 = &v256 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v281 = &v256 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v300 = &v256 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v264 = &v256 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v282 = &v256 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v317 = (&v256 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v303 = (&v256 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v276 = &v256 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v294 = (&v256 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v292 = &v256 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v280 = &v256 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v291 = &v256 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v311 = &v256 - v56;
  v316 = sub_1DD336350();
  v319 = *(v316 - 8);
  v57 = MEMORY[0x1EEE9AC00](v316);
  v299 = &v256 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v305 = &v256 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v266 = &v256 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v274 = &v256 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v285 = &v256 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v287 = &v256 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v283 = &v256 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v284 = &v256 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v312 = &v256 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v313 = &v256 - v75;
  v76 = sub_1DD3349A0();
  v314 = *(v76 - 8);
  v315 = v76;
  MEMORY[0x1EEE9AC00](v76);
  v321 = &v256 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = sub_1DD334C50();
  v78 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310);
  v80 = &v256 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1DD336370();
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v256 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1DD336290();
  v308 = v86;
  v309 = v85;
  sub_1DD3362A0();
  sub_1DD336360();
  v87 = v84;
  v88 = v316;
  (*(v82 + 8))(v87, v81);
  v307 = a1;
  v89 = sub_1DD3362D0();
  sub_1DD3354F0();
  swift_allocObject();
  v90 = sub_1DD3354E0();
  v91 = v311;
  sub_1DD334C30();
  sub_1DD334BA0();
  (*(v78 + 8))(v80, v310);
  sub_1DD334980();
  sub_1DD2AAFF4(v89, v91);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, 1, v88);
  v93 = MEMORY[0x1E69DAE70];
  if (EnumTagSinglePayload != 1)
  {
    v310 = v90;
    v94 = v319;
    v96 = v319 + 32;
    v95 = *(v319 + 32);
    v97 = v313;
    v95(v313, v91, v88);
    v99 = v94 + 16;
    v98 = *(v94 + 16);
    v100 = v312;
    v98(v312, v97, v88);
    v101 = *(v94 + 88);
    v311 = (v94 + 88);
    v309 = v101;
    v102 = v101(v100, v88);
    if (v102 != *MEMORY[0x1E69DAE58])
    {
      v114 = *(v94 + 8);
      v114(v313, v88);
      v114(v312, v88);
      v90 = v310;
      v93 = MEMORY[0x1E69DAE70];
      goto LABEL_7;
    }

    v103 = v102;
    v305 = v98;
    v104 = *(v94 + 96);
    v303 = (v94 + 96);
    v299 = v104;
    (v104)(v312, v88);
    v105 = swift_projectBox();
    v106 = *(v320 + 16);
    v107 = v318;
    v312 = (v320 + 16);
    v308 = v106;
    v106(v300, v105, v318);

    v108 = sub_1DD3362D0();
    v109 = v291;
    sub_1DD2AAFF4(v89, v291);

    v110 = __swift_getEnumTagSinglePayload(v109, 1, v88);
    v317 = v108;
    v259 = v96;
    v258 = v99;
    v257 = v95;
    if (v110 == 1)
    {
      sub_1DD2825F0(v109, &qword_1ECCD6608, &qword_1DD339310);
      v111 = v319;
      v112 = v302;
      v113 = v293;
      goto LABEL_42;
    }

    v125 = v109;
    v126 = v284;
    v95(v284, v125, v88);
    v127 = v126;
    v128 = v283;
    (v305)(v283, v127, v88);
    v129 = v309(v128, v88) == v103;
    v112 = v302;
    v113 = v293;
    if (!v129)
    {
      v111 = v319;
      v154 = *(v319 + 8);
      v154(v127, v88);
      v154(v128, v88);
      v108 = v317;
      goto LABEL_42;
    }

    v130 = v302;
    (v299)(v128, v88);
    v131 = swift_projectBox();
    v132 = v281;
    v308(v281, v131, v107);

    v133 = sub_1DD3362D0();
    v134 = v280;
    sub_1DD2AAFF4(v133, v280);

    if (__swift_getEnumTagSinglePayload(v134, 1, v88) == 1)
    {
      (*(v320 + 8))(v132, v107);
      v111 = v319;
      (*(v319 + 8))(v127, v88);
      sub_1DD2825F0(v134, &qword_1ECCD6608, &qword_1DD339310);
    }

    else
    {
      if (v309(v134, v88) == *MEMORY[0x1E69DAE70])
      {
        (v299)(v134, v88);
        v162 = swift_projectBox();
        v163 = v265;
        v164 = v301;
        (*(v130 + 16))(v265, v162, v301);
        if ((*(v130 + 88))(v163, v164) == *MEMORY[0x1E69DADF0])
        {
          (*(v130 + 96))(v163, v164);

          sub_1DD3354B0();

          (*(v320 + 8))(v281, v318);
          v111 = v319;
          (*(v319 + 8))(v127, v88);
        }

        else
        {
          (*(v320 + 8))(v281, v107);
          v111 = v319;
          (*(v319 + 8))(v127, v88);
          (*(v130 + 8))(v163, v164);
        }

        v108 = v317;
        v112 = v130;
LABEL_42:
        v171 = v292;
        sub_1DD2AAFF4(v108, v292);
        v172 = __swift_getEnumTagSinglePayload(v171, 1, v88);
        v173 = v296;
        if (v172 == 1)
        {
          v174 = v112;
          v175 = v111;
          sub_1DD2825F0(v171, &qword_1ECCD6608, &qword_1DD339310);
        }

        else if (v309(v171, v88) == *MEMORY[0x1E69DAE70])
        {
          (v299)(v171, v88);
          v176 = swift_projectBox();
          v177 = v301;
          (*(v112 + 16))(v113, v176, v301);
          v175 = v111;
          v174 = v112;
          if ((*(v112 + 88))(v113, v177) == *MEMORY[0x1E69DADC0])
          {
            (*(v112 + 96))(v113, v177);
            v178 = *v113;

            if (v178)
            {
              v179 = MEMORY[0x1E69D1BD0];
            }

            else
            {
              v179 = MEMORY[0x1E69D1BD8];
            }

LABEL_52:
            sub_1DD335010();
            swift_allocObject();
            v180 = sub_1DD335000();
            v181 = v297;
            v182 = *v179;
            v183 = v295;
            v184 = v298;
            (*(v297 + 104))(v295, v182, v298);
            sub_1DD334FF0();
            (*(v181 + 8))(v183, v184);
            sub_1DD335860();
            sub_1DD3354D0();
            v304 = v180;

            v185 = v294;
            sub_1DD2AAFF4(v317, v294);
            if (__swift_getEnumTagSinglePayload(v185, 1, v88) == 1)
            {

              sub_1DD2825F0(v185, &qword_1ECCD6608, &qword_1DD339310);
            }

            else
            {
              v186 = v287;
              v257(v287, v185, v88);
              v187 = v285;
              (v305)(v285, v186, v88);
              v188 = v309(v187, v88);
              if (v188 == *MEMORY[0x1E69DAE70])
              {
                v189 = v188;
                (v299)(v187, v88);
                v190 = v88;
                v191 = swift_projectBox();
                v192 = v173;
                v193 = *(v174 + 16);
                v194 = v301;
                v193(v192, v191, v301);
                v195 = *(v174 + 88);
                v297 = v174 + 88;
                v295 = v195;
                v196 = (v195)(v192, v194);
                v197 = *MEMORY[0x1E69DADB0];
                LODWORD(v298) = v196;
                if (v196 == v197)
                {
                  v294 = *(v174 + 96);
                  (v294)(v192, v194);

                  v198 = v276;
                  sub_1DD2AAFF4(v317, v276);

                  if (__swift_getEnumTagSinglePayload(v198, 1, v88) == 1)
                  {
                    sub_1DD2825F0(v198, &qword_1ECCD6608, &qword_1DD339310);
                  }

                  else
                  {
                    v317 = (v174 + 96);
                    v207 = v274;
                    v257(v274, v198, v88);
                    v208 = v266;
                    (v305)(v266, v207, v190);
                    if (v309(v208, v190) == v189)
                    {
                      (v299)(v208, v190);
                      v209 = swift_projectBox();
                      v210 = v263;
                      v211 = v301;
                      v193(v263, v209, v301);
                      v212 = (v295)(v210, v211);
                      if (v212 == v298)
                      {
                        (v294)(v210, v211);

                        v213 = v267;
                        sub_1DD3349E0();
                        v214 = v262;
                        sub_1DD3347D0();
                        sub_1DD334950();
                        v317 = *(v288 + 8);
                        v215 = v290;
                        (v317)(v214, v290);
                        v216 = *(v268 + 8);
                        v217 = v269;
                        v216(v213, v269);
                        sub_1DD3349E0();
                        sub_1DD3347D0();
                        v218 = v279;
                        sub_1DD334950();
                        (v317)(v214, v215);
                        v216(v213, v217);
                        v219 = v271;
                        v220 = *(v271 + 16);
                        v221 = v270;
                        v222 = v272;
                        v220(v270, v278, v272);
                        __swift_storeEnumTagSinglePayload(v221, 0, 1, v222);
                        makeDateTimeEntityFromDateComponents(dateComponents:)(v221);
                        sub_1DD2825F0(v221, &qword_1ECCD6778, &qword_1DD339728);
                        v220(v221, v218, v222);
                        __swift_storeEnumTagSinglePayload(v221, 0, 1, v222);
                        makeDateTimeEntityFromDateComponents(dateComponents:)(v221);
                        sub_1DD2825F0(v221, &qword_1ECCD6778, &qword_1DD339728);
                        sub_1DD335530();
                        swift_allocObject();
                        sub_1DD335520();
                        sub_1DD335860();
                        sub_1DD335510();

                        sub_1DD335860();
                        sub_1DD335500();

                        sub_1DD335860();
                        v223 = v310;
                        sub_1DD335480();

                        v224 = *(v219 + 8);
                        v224(v218, v222);
                        v224(v278, v222);
                        v225 = *(v319 + 8);
                        v226 = v316;
                        v225(v274, v316);
                        v225(v287, v226);
                        (*(v320 + 8))(v300, v318);
                        v225(v313, v226);
                        goto LABEL_77;
                      }

                      (*(v175 + 8))(v207, v190);
                      (*(v302 + 8))(v210, v211);
                    }

                    else
                    {
                      v227 = *(v175 + 8);
                      v227(v207, v190);
                      v227(v208, v190);
                    }
                  }

                  v236 = v175;
                  v237 = v313;
                  v238 = sub_1DD335850();
                  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
                  swift_allocError();
                  v240 = v239;
                  v322 = 0;
                  v323 = 0xE000000000000000;
                  sub_1DD336C00();
                  MEMORY[0x1E12AC540](0xD000000000000045, 0x80000001DD33E450);
                  v241 = v318;
                  v308(v306, v307, v318);
                  v242 = sub_1DD336630();
                  MEMORY[0x1E12AC540](v242);

                  v243 = v323;
                  *v240 = v322;
                  v240[1] = v243;
                  (*(*(v238 - 8) + 104))(v240, *MEMORY[0x1E69D3640], v238);
                  swift_willThrow();

                  v244 = *(v236 + 8);
                  v244(v287, v190);
                  (*(v320 + 8))(v300, v241);
                  v244(v237, v190);
                  return (*(v314 + 8))(v321, v315);
                }

                (*(v175 + 8))(v287, v88);

                (*(v174 + 8))(v192, v194);

LABEL_60:
                v200 = sub_1DD335850();
                sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
                swift_allocError();
                v202 = v201;
                v322 = 0;
                v323 = 0xE000000000000000;
                sub_1DD336C00();
                MEMORY[0x1E12AC540](0xD000000000000047, 0x80000001DD33E400);
                v203 = v318;
                v308(v306, v307, v318);
                v204 = sub_1DD336630();
                MEMORY[0x1E12AC540](v204);

                v205 = v323;
                *v202 = v322;
                v202[1] = v205;
                (*(*(v200 - 8) + 104))(v202, *MEMORY[0x1E69D3640], v200);
                swift_willThrow();

                (*(v320 + 8))(v300, v203);
                (*(v175 + 8))(v313, v190);
                return (*(v314 + 8))(v321, v315);
              }

              v199 = *(v175 + 8);
              v199(v186, v88);

              v199(v187, v88);
            }

            v190 = v88;
            goto LABEL_60;
          }

          (*(v112 + 8))(v113, v177);
        }

        else
        {
          v174 = v112;
          v175 = v111;
          (*(v111 + 8))(v171, v88);
        }

        v179 = MEMORY[0x1E69D1BD8];
        goto LABEL_52;
      }

      (*(v320 + 8))(v132, v107);
      v111 = v319;
      v165 = *(v319 + 8);
      v165(v127, v88);
      v165(v134, v88);
    }

    v108 = v317;
    v112 = v130;
    goto LABEL_42;
  }

  sub_1DD2825F0(v91, &qword_1ECCD6608, &qword_1DD339310);
  v94 = v319;
LABEL_7:
  v115 = v303;
  sub_1DD2AAFF4(v89, v303);
  v116 = __swift_getEnumTagSinglePayload(v115, 1, v88);
  v117 = v317;
  v119 = v304;
  v118 = v305;
  if (v116 == 1)
  {
    sub_1DD2825F0(v115, &qword_1ECCD6608, &qword_1DD339310);
  }

  else
  {
    (*(v94 + 32))(v305, v115, v88);
    v120 = v299;
    (*(v94 + 16))(v299, v118, v88);
    if ((*(v94 + 88))(v120, v88) == *v93)
    {
      (*(v94 + 96))(v120, v88);
      v121 = swift_projectBox();
      v122 = v302;
      v123 = v301;
      (*(v302 + 16))(v119, v121, v301);
      if ((*(v122 + 88))(v119, v123) == *MEMORY[0x1E69DADF0])
      {
        (*(v122 + 96))(v119, v123);

        sub_1DD3354B0();

        (*(v94 + 8))(v305, v88);
      }

      else
      {
        (*(v94 + 8))(v305, v88);
        (*(v122 + 8))(v119, v123);
      }
    }

    else
    {
      v124 = *(v94 + 8);
      v124(v118, v88);
      v124(v120, v88);
    }

    v117 = v317;
  }

  sub_1DD2AAFF4(v89, v117);
  if (__swift_getEnumTagSinglePayload(v117, 1, v88) == 1)
  {

    sub_1DD2825F0(v117, &qword_1ECCD6608, &qword_1DD339310);
LABEL_27:
    v149 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    v151 = v150;
    v322 = 0;
    v323 = 0xE000000000000000;
    sub_1DD336C00();
    MEMORY[0x1E12AC540](0xD000000000000047, 0x80000001DD33E400);
    (*(v320 + 16))(v306, v307, v318);
    v152 = sub_1DD336630();
    MEMORY[0x1E12AC540](v152);

    v153 = v323;
    *v151 = v322;
    v151[1] = v153;
    (*(*(v149 - 8) + 104))(v151, *MEMORY[0x1E69D3640], v149);
    swift_willThrow();

    return (*(v314 + 8))(v321, v315);
  }

  v135 = v94;
  v136 = *(v94 + 88);
  v137 = (v136)(v117, v88);
  if (v137 != *v93)
  {

    (*(v135 + 8))(v117, v88);
    goto LABEL_27;
  }

  v138 = v137;
  v317 = v136;
  v310 = v90;
  v312 = *(v135 + 96);
  v313 = (v135 + 96);
  (v312)(v117, v88);
  v139 = v88;
  v140 = swift_projectBox();
  v141 = v302;
  v142 = *(v302 + 16);
  v143 = v286;
  v144 = v301;
  v311 = (v302 + 16);
  v309 = v142;
  (v142)(v286, v140, v301);
  v308 = *(v141 + 88);
  v145 = (v308)(v143, v144);
  if (v145 != *MEMORY[0x1E69DADC8])
  {

    (*(v141 + 8))(v143, v144);

    goto LABEL_27;
  }

  LODWORD(v305) = v145;
  v303 = *(v141 + 96);
  v304 = (v141 + 96);
  (v303)(v143, v144);
  v146 = (v288 + 32);
  v147 = *(v288 + 32);
  v147(v289, v143, v290);

  v148 = v282;
  sub_1DD2AAFF4(v89, v282);
  if (__swift_getEnumTagSinglePayload(v148, 1, v139) == 1)
  {

    sub_1DD2825F0(v148, &qword_1ECCD6608, &qword_1DD339310);
LABEL_39:
    v166 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    v168 = v167;
    v322 = 0;
    v323 = 0xE000000000000000;
    sub_1DD336C00();
    MEMORY[0x1E12AC540](0xD000000000000045, 0x80000001DD33E450);
    (*(v320 + 16))(v306, v307, v318);
    v169 = sub_1DD336630();
    MEMORY[0x1E12AC540](v169);

    v170 = v323;
    *v168 = v322;
    v168[1] = v170;
    (*(*(v166 - 8) + 104))(v168, *MEMORY[0x1E69D3640], v166);
    swift_willThrow();

    (*(v288 + 8))(v289, v290);
    return (*(v314 + 8))(v321, v315);
  }

  v155 = v317;
  if ((v317)(v148, v139) != v138)
  {

    (*(v319 + 8))(v148, v139);
    goto LABEL_39;
  }

  v300 = v146;
  (v312)(v148, v139);
  v156 = swift_projectBox();
  v157 = v275;
  v158 = v301;
  (v309)(v275, v156, v301);
  v159 = (v308)(v157, v158);
  if (v159 != v305)
  {

    (*(v302 + 8))(v157, v158);

    goto LABEL_39;
  }

  (v303)(v157, v158);
  v147(v277, v157, v290);

  v160 = v264;
  sub_1DD2AAFF4(v89, v264);

  v161 = v316;
  if (__swift_getEnumTagSinglePayload(v160, 1, v316) == 1)
  {
    sub_1DD2825F0(v160, &qword_1ECCD6608, &qword_1DD339310);
  }

  else if (v155(v160, v161) == v138)
  {
    (v312)(v160, v161);
    v228 = swift_projectBox();
    v229 = v261;
    v230 = v301;
    (v309)(v261, v228, v301);
    if ((v308)(v229, v230) == *MEMORY[0x1E69DADC0])
    {
      (v303)(v229, v230);
      v231 = *v229;

      sub_1DD335010();
      swift_allocObject();
      sub_1DD335000();
      v232 = v297;
      v233 = MEMORY[0x1E69D1BD0];
      if (!v231)
      {
        v233 = MEMORY[0x1E69D1BD8];
      }

      v234 = v260;
      v235 = v298;
      (*(v297 + 104))(v260, *v233, v298);
      sub_1DD334FF0();
      (*(v232 + 8))(v234, v235);
      sub_1DD335860();
      sub_1DD3354D0();
    }

    else
    {
      (*(v302 + 8))(v229, v230);
    }
  }

  else
  {
    (*(v319 + 8))(v160, v161);
  }

  v245 = v267;
  sub_1DD3349E0();
  v246 = v278;
  sub_1DD334950();
  v247 = *(v268 + 8);
  v248 = v269;
  v247(v245, v269);
  sub_1DD3349E0();
  sub_1DD334950();
  v247(v245, v248);
  v249 = v271;
  v250 = *(v271 + 16);
  v251 = v270;
  v252 = v272;
  v250(v270, v246, v272);
  __swift_storeEnumTagSinglePayload(v251, 0, 1, v252);
  makeDateTimeEntityFromDateComponents(dateComponents:)(v251);
  sub_1DD2825F0(v251, &qword_1ECCD6778, &qword_1DD339728);
  v250(v251, v279, v252);
  __swift_storeEnumTagSinglePayload(v251, 0, 1, v252);
  makeDateTimeEntityFromDateComponents(dateComponents:)(v251);
  sub_1DD2825F0(v251, &qword_1ECCD6778, &qword_1DD339728);
  sub_1DD335530();
  swift_allocObject();
  sub_1DD335520();
  sub_1DD335860();
  sub_1DD335510();

  sub_1DD335860();
  sub_1DD335500();

  sub_1DD335860();
  v223 = v310;
  sub_1DD335480();

  v253 = *(v249 + 8);
  v253(v279, v252);
  v253(v278, v252);
  v254 = *(v288 + 8);
  v255 = v290;
  v254(v277, v290);
  v254(v289, v255);
LABEL_77:
  result = (*(v314 + 8))(v321, v315);
  *v273 = v223;
  return result;
}

uint64_t sub_1DD2F7B44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D60, &qword_1DD33A9A8);
  __swift_allocate_value_buffer(v0, qword_1EE02A3A0);
  __swift_project_value_buffer(v0, qword_1EE02A3A0);
  sub_1DD336350();
  sub_1DD334830();
  return sub_1DD335790();
}

uint64_t sub_1DD2F7BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1DD336350();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1DD336340();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = *(v4 + 16);
  v32 = a1;
  v17 = a1;
  v18 = v16;
  v16(v8, v17, v3);
  if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DAE70])
  {
    (*(v4 + 96))(v8, v3);
    v19 = swift_projectBox();
    (*(v10 + 16))(v15, v19, v9);

    (*(v10 + 32))(v13, v15, v9);
    if ((*(v10 + 88))(v13, v9) == *MEMORY[0x1E69DADC8])
    {
      (*(v10 + 96))(v13, v9);
      v20 = sub_1DD334830();
      return (*(*(v20 - 8) + 32))(v28, v13, v20);
    }

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    (*(v4 + 8))(v8, v3);
  }

  v22 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  v24 = v23;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1DD336C00();
  MEMORY[0x1E12AC540](0xD00000000000003FLL, 0x80000001DD33E210);
  v18(v29, v32, v3);
  v25 = sub_1DD336630();
  MEMORY[0x1E12AC540](v25);

  v26 = v31;
  *v24 = v30;
  v24[1] = v26;
  (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69D3640], v22);
  return swift_willThrow();
}

uint64_t sub_1DD2F7FF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D70, &qword_1DD33A9B8);
  __swift_allocate_value_buffer(v0, qword_1EE02A430);
  __swift_project_value_buffer(v0, qword_1EE02A430);
  sub_1DD334830();
  sub_1DD334ED0();
  return sub_1DD335790();
}

uint64_t sub_1DD2F8088@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v2 = sub_1DD334DD0();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD334570();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD3349A0();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD334ED0();
  swift_allocObject();
  v10 = sub_1DD334EC0();
  sub_1DD334980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E20, &qword_1DD33AA60);
  v11 = sub_1DD334990();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DD33A620;
  v16 = *(v12 + 104);
  v16(v15 + v14, *MEMORY[0x1E6969A50], v11);
  v16(v15 + v14 + v13, *MEMORY[0x1E6969A68], v11);
  v16(v15 + v14 + 2 * v13, *MEMORY[0x1E6969A78], v11);
  v16(v15 + v14 + 3 * v13, *MEMORY[0x1E6969A10], v11);
  v16(v15 + v14 + 4 * v13, *MEMORY[0x1E6969A48], v11);
  v16(v15 + v14 + 5 * v13, *MEMORY[0x1E6969A30], v11);
  v16(v15 + v14 + 6 * v13, *MEMORY[0x1E6969AB8], v11);
  sub_1DD2FC374(v15);
  v31 = v9;
  sub_1DD334960();

  sub_1DD335120();
  swift_allocObject();
  sub_1DD335110();
  sub_1DD334500();
  if ((v17 & 1) == 0)
  {
    sub_1DD335100();
  }

  sub_1DD335860();
  sub_1DD334E80();

  sub_1DD335210();
  swift_allocObject();
  sub_1DD335200();
  v18 = sub_1DD3344E0();
  if ((v19 & 1) == 0 && (v18 - 1) <= 6)
  {
    v21 = v28;
    v20 = v29;
    v22 = v30;
    (*(v29 + 104))(v28, **(&unk_1E8651C40 + v18 - 1), v30);
    sub_1DD3351F0();
    (*(v20 + 8))(v21, v22);
  }

  sub_1DD335860();
  sub_1DD334E70();

  sub_1DD335340();
  swift_allocObject();
  sub_1DD335330();
  sub_1DD334530();
  if ((v23 & 1) == 0)
  {
    swift_allocObject();
    sub_1DD335110();
    sub_1DD335100();
    sub_1DD335860();
    sub_1DD335320();
  }

  sub_1DD335860();
  sub_1DD334EA0();

  swift_allocObject();
  sub_1DD335110();
  sub_1DD3344D0();
  if ((v24 & 1) == 0)
  {
    sub_1DD335100();
  }

  sub_1DD335860();
  sub_1DD334E90();

  swift_allocObject();
  sub_1DD335110();
  sub_1DD334520();
  if ((v25 & 1) == 0)
  {
    sub_1DD335100();
  }

  sub_1DD335860();
  sub_1DD334EB0();

  (*(v34 + 8))(v6, v35);
  result = (*(v32 + 8))(v31, v33);
  *v36 = v10;
  return result;
}

uint64_t sub_1DD2F86B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D38, &qword_1DD33A980);
  __swift_allocate_value_buffer(v0, qword_1EE02A418);
  __swift_project_value_buffer(v0, qword_1EE02A418);
  sub_1DD336310();
  sub_1DD3350C0();
  return sub_1DD335790();
}

uint64_t sub_1DD2F8748@<X0>(uint64_t *a1@<X8>)
{
  v122 = a1;
  v1 = sub_1DD336310();
  v126 = *(v1 - 8);
  v127 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v131 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DD336330();
  v120 = *(v3 - 8);
  v121 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1DD336340();
  v128 = *(v123 - 8);
  v5 = MEMORY[0x1EEE9AC00](v123);
  v116 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v115 = &v113 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v114 = &v113 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v113 = &v113 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v113 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v113 - v15;
  v137 = sub_1DD336350();
  v140 = *(v137 - 8);
  v16 = MEMORY[0x1EEE9AC00](v137);
  v135 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v130 = &v113 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v129 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v113 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v136 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v118 = &v113 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v134 = &v113 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v113 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v113 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v132 = &v113 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v113 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v113 - v41;
  v43 = sub_1DD336370();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD336290();

  sub_1DD3362A0();
  sub_1DD336360();

  v47 = v43;
  v48 = v137;
  (*(v44 + 8))(v46, v47);
  v49 = v42;
  v50 = sub_1DD3362D0();
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v48);
  sub_1DD2AAFF4(v50, v40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v48);
  sub_1DD2825F0(v40, &qword_1ECCD6608, &qword_1DD339310);
  if (EnumTagSinglePayload != 1 || (sub_1DD2AAFF4(v50, v35), v52 = __swift_getEnumTagSinglePayload(v35, 1, v48), sub_1DD2825F0(v35, &qword_1ECCD6608, &qword_1DD339310), v52 != 1))
  {
    v53 = v132;
    sub_1DD2AAFF4(v50, v132);
    sub_1DD2825F0(v49, &qword_1ECCD6608, &qword_1DD339310);
    sub_1DD2B4714(v53, v49);
  }

  sub_1DD2FC744(v49, v32, &qword_1ECCD6608, &qword_1DD339310);
  v54 = __swift_getEnumTagSinglePayload(v32, 1, v48);
  v55 = MEMORY[0x1E69DAE70];
  v56 = v136;
  if (v54 == 1)
  {
    sub_1DD2825F0(v32, &qword_1ECCD6608, &qword_1DD339310);
    v57 = v140;
LABEL_13:
    v72 = v134;
    goto LABEL_14;
  }

  v58 = v133;
  v59 = v32;
  v57 = v140;
  (*(v140 + 32))(v133, v59, v48);
  v60 = v129;
  (*(v57 + 16))(v129, v58, v48);
  if ((*(v57 + 88))(v60, v48) != *v55)
  {
    v71 = *(v57 + 8);
    v71(v58, v48);
    v71(v60, v48);
    goto LABEL_13;
  }

  v132 = v50;
  (*(v57 + 96))(v60, v48);
  v61 = swift_projectBox();
  v62 = v128;
  v63 = *(v128 + 16);
  v65 = v123;
  v64 = v124;
  v63(v124, v61, v123);

  v66 = v119;
  v63(v119, v64, v65);
  if ((*(v62 + 88))(v66, v65) != *MEMORY[0x1E69DADE8])
  {
    v93 = *(v62 + 8);
    v93(v64, v65);
    v57 = v140;
    (*(v140 + 8))(v133, v48);
    v93(v66, v65);
    v56 = v136;
    v72 = v134;
    v50 = v132;
LABEL_14:
    v136 = v49;
    sub_1DD2AAFF4(v50, v72);
    v73 = __swift_getEnumTagSinglePayload(v72, 1, v48);
    v74 = v135;
    if (v73 == 1)
    {
      sub_1DD2825F0(v72, &qword_1ECCD6608, &qword_1DD339310);
LABEL_20:
      v85 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      v87 = v86;
      v138 = 0;
      v139 = 0xE000000000000000;
      sub_1DD336C00();
      MEMORY[0x1E12AC540](0xD000000000000055, 0x80000001DD33E3A0);
      v88 = sub_1DD336520();
      v90 = v89;

      MEMORY[0x1E12AC540](v88, v90);

      v91 = v139;
      *v87 = v138;
      v87[1] = v91;
      (*(*(v85 - 8) + 104))(v87, *MEMORY[0x1E69D3640], v85);
      swift_willThrow();
      return sub_1DD2825F0(v136, &qword_1ECCD6608, &qword_1DD339310);
    }

    v75 = v130;
    (*(v57 + 32))(v130, v72, v48);
    (*(v57 + 16))(v74, v75, v48);
    v76 = *(v57 + 88);
    if (v76(v74, v48) != *MEMORY[0x1E69DAE58])
    {
      v84 = *(v57 + 8);
      v84(v75, v48);
      v84(v74, v48);
      goto LABEL_20;
    }

    v77 = *(v57 + 96);
    v77(v74, v48);
    v78 = swift_projectBox();
    (*(v126 + 16))(v131, v78, v127);

    v79 = sub_1DD3362D0();
    v80 = v118;
    sub_1DD2AAFF4(v79, v118);

    v81 = __swift_getEnumTagSinglePayload(v80, 1, v48);
    v82 = v48;
    v83 = MEMORY[0x1E69DADF0];
    if (v81 == 1)
    {
      sub_1DD2825F0(v80, &qword_1ECCD6608, &qword_1DD339310);
    }

    else if (v76(v80, v82) == *MEMORY[0x1E69DAE70])
    {
      v77(v80, v82);
      v94 = swift_projectBox();
      v95 = v128;
      v96 = v113;
      v97 = v123;
      (*(v128 + 16))(v113, v94, v123);

      v98 = v114;
      v99 = v96;
      v83 = MEMORY[0x1E69DADF0];
      (*(v95 + 32))(v114, v99, v97);
      if ((*(v95 + 88))(v98, v97) == *v83)
      {
        (*(v95 + 96))(v98, v97);
        v100 = *(v98 + 1);
        goto LABEL_29;
      }

      (*(v95 + 8))(v98, v97);
    }

    else
    {
      (*(v57 + 8))(v80, v82);
    }

    v100 = 0;
LABEL_29:
    v102 = sub_1DD3362D0();
    sub_1DD2AAFF4(v102, v56);

    v103 = v137;
    if (__swift_getEnumTagSinglePayload(v56, 1, v137) == 1)
    {
      sub_1DD2825F0(v56, &qword_1ECCD6608, &qword_1DD339310);
    }

    else
    {
      if (v76(v56, v103) == *MEMORY[0x1E69DAE70])
      {
        v77(v56, v103);
        v104 = swift_projectBox();
        v105 = v128;
        v106 = v115;
        v107 = v123;
        (*(v128 + 16))(v115, v104, v123);

        v108 = v116;
        (*(v105 + 32))(v116, v106, v107);
        if ((*(v105 + 88))(v108, v107) == *v83)
        {
          (*(v105 + 96))(v108, v107);
          v109 = *(v108 + 1);
        }

        else
        {
          (*(v105 + 8))(v108, v107);
          v109 = 0;
        }

        v110 = v137;
LABEL_38:
        sub_1DD3350C0();
        swift_allocObject();
        v101 = sub_1DD3350B0();
        if (v100)
        {

          sub_1DD335380();
          swift_allocObject();
          sub_1DD335370();
          sub_1DD335360();

          sub_1DD335860();
          sub_1DD335080();
          v111 = v140;
          v112 = v130;
        }

        else
        {
          v111 = v140;
          v112 = v130;
          if (!v109)
          {
LABEL_43:
            (*(v126 + 8))(v131, v127);
            (*(v111 + 8))(v112, v110);
            result = sub_1DD2825F0(v136, &qword_1ECCD6608, &qword_1DD339310);
            goto LABEL_44;
          }

          sub_1DD335400();
          swift_allocObject();
          sub_1DD3353F0();
          sub_1DD3353E0();

          sub_1DD335860();
          sub_1DD335080();
        }

        goto LABEL_43;
      }

      (*(v140 + 8))(v56, v103);
    }

    v109 = 0;
    v110 = v103;
    goto LABEL_38;
  }

  (*(v62 + 96))(v66, v65);
  v67 = v117;
  (*(v120 + 32))(v117, v66, v121);
  v56 = v136;
  v50 = v132;
  if (qword_1EE0284B0 != -1)
  {
    swift_once();
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D40, &qword_1DD33A988);
  __swift_project_value_buffer(v68, qword_1EE02A3D0);
  v69 = sub_1DD3357A0();
  v70 = v125;
  v69(&v138, v67);
  v57 = v140;
  if (v70)
  {

    (*(v120 + 8))(v67, v121);
    (*(v128 + 8))(v124, v65);
    (*(v57 + 8))(v133, v48);
    v125 = 0;
    goto LABEL_13;
  }

  (*(v120 + 8))(v67, v121);
  (*(v128 + 8))(v124, v65);
  (*(v57 + 8))(v133, v48);
  result = sub_1DD2825F0(v49, &qword_1ECCD6608, &qword_1DD339310);
  v101 = v138;
LABEL_44:
  *v122 = v101;
  return result;
}

uint64_t sub_1DD2F98C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D40, &qword_1DD33A988);
  __swift_allocate_value_buffer(v0, qword_1EE02A3D0);
  __swift_project_value_buffer(v0, qword_1EE02A3D0);
  sub_1DD336330();
  sub_1DD3350C0();
  return sub_1DD335790();
}

void sub_1DD2F9958(uint64_t *a1@<X8>)
{
  v49 = a1;
  v1 = sub_1DD334C50();
  v48 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E40, &qword_1DD33AA70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v42 - v4;
  v5 = sub_1DD334660();
  v50 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v13 = sub_1DD336320();
  sub_1DD3350C0();
  swift_allocObject();
  v14 = sub_1DD3350B0();
  v15 = [v13 displayName];
  sub_1DD3365D0();

  v52 = v14;
  sub_1DD3350A0();

  v51 = v13;
  v16 = [v13 nameComponents];
  if (v16)
  {
    v17 = v16;
    v44 = v1;
    sub_1DD334640();

    v18 = v50;
    v19 = *(v50 + 32);
    v19(v12, v10, v5);
    if (qword_1ECCD6288 != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E50, &qword_1DD33AA80);
    __swift_project_value_buffer(v20, qword_1ECCD72D0);
    v21 = sub_1DD3357A0();
    v22 = v53;
    v21(&v54, v12);
    if (v22)
    {

      (*(v18 + 8))(v12, v5);
      return;
    }

    v53 = 0;

    sub_1DD335860();
    sub_1DD335050();

    v24 = v12;
    v25 = v5;
    v26 = v46;
    sub_1DD334630();
    if (__swift_getEnumTagSinglePayload(v26, 1, v25) == 1)
    {
      (*(v18 + 8))(v24, v25);

      sub_1DD2825F0(v26, &qword_1ECCD6E40, &qword_1DD33AA70);
    }

    else
    {
      v43 = v24;
      v27 = v45;
      v19(v45, v26, v25);
      v28 = sub_1DD3357A0();
      v29 = v53;
      v28(&v54, v27);
      v53 = v29;
      if (v29)
      {

        v30 = *(v18 + 8);
        v30(v27, v25);
        v30(v43, v25);
        return;
      }

      sub_1DD335860();
      sub_1DD335070();

      v31 = *(v18 + 8);
      v31(v27, v25);
      v31(v43, v25);
    }

    v23 = v49;
    v1 = v44;
  }

  else
  {
    v23 = v49;
  }

  v32 = v51;
  v33 = [v51 personHandle];
  v34 = v53;
  if (v33)
  {
    v35 = v33;
    v36 = v52;
    if (qword_1ECCD6290 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E48, &qword_1DD33AA78);
    __swift_project_value_buffer(v37, qword_1ECCD72E8);
    v38 = sub_1DD3357A0();
    v55 = v35;
    v38(&v54, &v55);
    if (v34)
    {

      return;
    }

    sub_1DD335080();
  }

  else
  {
    v36 = v52;
  }

  sub_1DD2BAB88(v32, &selRef_contactIdentifier);
  if (v39)
  {
    v40 = v47;
  }

  else
  {
    sub_1DD2BAB88(v32, &selRef_customIdentifier);
    if (!v41)
    {

      goto LABEL_25;
    }

    v40 = v47;
  }

  sub_1DD334C30();
  sub_1DD334BA0();

  (*(v48 + 8))(v40, v1);
LABEL_25:
  *v23 = v36;
}

uint64_t sub_1DD2FA018()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E50, &qword_1DD33AA80);
  __swift_allocate_value_buffer(v0, qword_1ECCD72D0);
  __swift_project_value_buffer(v0, qword_1ECCD72D0);
  sub_1DD334660();
  sub_1DD335310();
  return sub_1DD335790();
}

uint64_t sub_1DD2FA0A8@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD335310();
  swift_allocObject();
  v2 = sub_1DD335300();
  sub_1DD3345F0();
  if (v3)
  {
    sub_1DD3352E0();
  }

  sub_1DD3345E0();
  if (v4)
  {
    sub_1DD3352D0();
  }

  sub_1DD334600();
  if (v5)
  {
    sub_1DD3352F0();
  }

  sub_1DD334610();
  if (v6)
  {
    sub_1DD3352A0();
  }

  sub_1DD334620();
  if (v7)
  {
    sub_1DD3352B0();
  }

  result = sub_1DD334650();
  if (v9)
  {
    sub_1DD3352C0();
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1DD2FA1C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E48, &qword_1DD33AA78);
  __swift_allocate_value_buffer(v0, qword_1ECCD72E8);
  __swift_project_value_buffer(v0, qword_1ECCD72E8);
  sub_1DD2FC700();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E60, &unk_1DD33AA88);
  return sub_1DD335790();
}

uint64_t sub_1DD2FA264@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD334940();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [*a1 label];
  if (v9)
  {
    v10 = v9;
    sub_1DD335750();
    sub_1DD335740();
    sub_1DD335720();

    sub_1DD3357D0();

    sub_1DD3348B0();

    (*(v5 + 8))(v7, v4);
    sub_1DD3365D0();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v8 type];
  if (!v13)
  {
    goto LABEL_15;
  }

  if (v13 == 1)
  {
    sub_1DD335400();
    swift_allocObject();
    v14 = sub_1DD3353F0();
    if (v12)
    {
      sub_1DD3353D0();
    }

    result = sub_1DD2BAB88(v8, &selRef_value);
    if (!v18)
    {
      v17 = MEMORY[0x1E69D21B8];
      goto LABEL_23;
    }

    sub_1DD3353E0();
    v17 = MEMORY[0x1E69D21B8];
    goto LABEL_19;
  }

  if (v13 == 2)
  {
    sub_1DD335380();
    swift_allocObject();
    v14 = sub_1DD335370();
    if (v12)
    {
      sub_1DD335350();
    }

    result = sub_1DD2BAB88(v8, &selRef_value);
    if (!v16)
    {
      v17 = MEMORY[0x1E69D2198];
      goto LABEL_23;
    }

    sub_1DD335360();
    v17 = MEMORY[0x1E69D2198];
  }

  else
  {
LABEL_15:
    sub_1DD335630();
    swift_allocObject();
    v14 = sub_1DD335620();
    if (v12)
    {
      sub_1DD335600();
    }

    result = sub_1DD2BAB88(v8, &selRef_value);
    if (!v19)
    {
      v17 = MEMORY[0x1E69D2230];
      goto LABEL_23;
    }

    sub_1DD335610();
    v17 = MEMORY[0x1E69D2230];
  }

LABEL_19:

LABEL_23:
  *a2 = v14;
  a2[1] = v17;
  return result;
}

uint64_t sub_1DD2FA540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DB0, &qword_1DD33A9F8);
  __swift_allocate_value_buffer(v0, qword_1EE02A550);
  __swift_project_value_buffer(v0, qword_1EE02A550);
  sub_1DD334ED0();
  sub_1DD334D10();
  return sub_1DD335790();
}

uint64_t sub_1DD2FA5D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334D10();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      *v7 = 0xD00000000000004FLL;
      v7[1] = 0x80000001DD33DF40;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FA7CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DB8, &qword_1DD33AA00);
  __swift_allocate_value_buffer(v0, qword_1EE02A4C0);
  __swift_project_value_buffer(v0, qword_1EE02A4C0);
  sub_1DD335170();
  sub_1DD334D90();
  return sub_1DD335790();
}

uint64_t sub_1DD2FA85C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334D90();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      *v7 = 0xD000000000000053;
      v7[1] = 0x80000001DD33DEE0;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FAA54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D80, &qword_1DD33A9C8);
  __swift_allocate_value_buffer(v0, qword_1EE02A4F0);
  __swift_project_value_buffer(v0, qword_1EE02A4F0);
  sub_1DD3350C0();
  sub_1DD334D50();
  return sub_1DD335790();
}

uint64_t sub_1DD2FAAE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334D50();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      *v7 = 0xD000000000000051;
      v7[1] = 0x80000001DD33E160;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FACDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D98, &qword_1DD33A9E0);
  __swift_allocate_value_buffer(v0, qword_1EE02A460);
  __swift_project_value_buffer(v0, qword_1EE02A460);
  sub_1DD335660();
  sub_1DD3351B0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FAD6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD3351B0();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      *v7 = 0xD00000000000005ALL;
      v7[1] = 0x80000001DD33E040;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FAF64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DA0, &qword_1DD33A9E8);
  __swift_allocate_value_buffer(v0, qword_1EE02A310);
  __swift_project_value_buffer(v0, qword_1EE02A310);
  sub_1DD334B00();
  sub_1DD334A90();
  return sub_1DD335790();
}

uint64_t sub_1DD2FAFF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334A90();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      *v7 = 0xD00000000000005BLL;
      v7[1] = 0x80000001DD33DFE0;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FB1F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DA8, &qword_1DD33A9F0);
  __swift_allocate_value_buffer(v0, qword_1EE02A2E0);
  __swift_project_value_buffer(v0, qword_1EE02A2E0);
  sub_1DD334E30();
  sub_1DD334CE0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FB280@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334CE0();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      *v7 = 0xD00000000000004ELL;
      v7[1] = 0x80000001DD33DF90;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FB478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D88, &qword_1DD33A9D0);
  __swift_allocate_value_buffer(v0, qword_1EE02A490);
  __swift_project_value_buffer(v0, qword_1EE02A490);
  sub_1DD3354F0();
  sub_1DD3350D0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FB508@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD3350D0();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      *v7 = 0xD000000000000058;
      v7[1] = 0x80000001DD33E100;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FB700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D90, &qword_1DD33A9D8);
  __swift_allocate_value_buffer(v0, qword_1EE02A538);
  __swift_project_value_buffer(v0, qword_1EE02A538);
  sub_1DD334FC0();
  sub_1DD334D20();
  return sub_1DD335790();
}

uint64_t sub_1DD2FB790@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (MEMORY[0x1E12AABB0](*a1))
  {
    sub_1DD334D20();
    sub_1DD334DC0();
    if (v8)
    {

      *a2 = v8;
    }

    else
    {
      v6 = sub_1DD335850();
      sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
      swift_allocError();
      *v7 = 0xD000000000000050;
      v7[1] = 0x80000001DD33E0A0;
      (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D3640], v6);
      swift_willThrow();
    }
  }

  else
  {
    v4 = sub_1DD335850();
    sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
    swift_allocError();
    *v5 = 0xD00000000000004ALL;
    v5[1] = 0x80000001DD33DE90;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69D3640], v4);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DD2FB988()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DC0, &qword_1DD33AA08);
  __swift_allocate_value_buffer(v0, qword_1EE02A580);
  __swift_project_value_buffer(v0, qword_1EE02A580);
  sub_1DD334D50();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBA18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DC8, &qword_1DD33AA10);
  __swift_allocate_value_buffer(v0, qword_1EE02A4D8);
  __swift_project_value_buffer(v0, qword_1EE02A4D8);
  sub_1DD3350D0();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBAA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DD0, &qword_1DD33AA18);
  __swift_allocate_value_buffer(v0, qword_1EE02A598);
  __swift_project_value_buffer(v0, qword_1EE02A598);
  sub_1DD334D20();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBB38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DD8, &qword_1DD33AA20);
  __swift_allocate_value_buffer(v0, qword_1EE02A4A8);
  __swift_project_value_buffer(v0, qword_1EE02A4A8);
  sub_1DD3351B0();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBBC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DF0, &qword_1DD33AA38);
  __swift_allocate_value_buffer(v0, qword_1EE02A328);
  __swift_project_value_buffer(v0, qword_1EE02A328);
  sub_1DD334A90();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBC58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DF8, &qword_1DD33AA40);
  __swift_allocate_value_buffer(v0, qword_1EE02A2F8);
  __swift_project_value_buffer(v0, qword_1EE02A2F8);
  sub_1DD334CE0();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBCE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DE0, &qword_1DD33AA28);
  __swift_allocate_value_buffer(v0, qword_1EE02A5B0);
  __swift_project_value_buffer(v0, qword_1EE02A5B0);
  sub_1DD334D10();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBD78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6DE8, &qword_1DD33AA30);
  __swift_allocate_value_buffer(v0, qword_1EE02A568);
  __swift_project_value_buffer(v0, qword_1EE02A568);
  sub_1DD334D90();
  sub_1DD335710();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBE08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E10, &qword_1DD33AA58);
  __swift_allocate_value_buffer(v0, qword_1EE02A508);
  __swift_project_value_buffer(v0, qword_1EE02A508);
  sub_1DD334FC0();
  sub_1DD3356B0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FBE98@<X0>(uint64_t *a1@<X8>)
{
  if (sub_1DD334F60())
  {
    sub_1DD3356B0();
    result = swift_dynamicCastClass();
    if (result)
    {
      *a1 = result;
      return result;
    }
  }

  v3 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  *v4 = 0xD000000000000075;
  v4[1] = 0x80000001DD33DD90;
  (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69D3640], v3);
  return swift_willThrow();
}

uint64_t sub_1DD2FBFB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E00, &qword_1DD33AA48);
  __swift_allocate_value_buffer(v0, qword_1EE02A478);
  __swift_project_value_buffer(v0, qword_1EE02A478);
  sub_1DD3354F0();
  sub_1DD334FC0();
  return sub_1DD335790();
}

uint64_t sub_1DD2FC048@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD334FC0();
  swift_allocObject();
  v2 = sub_1DD334FB0();
  if (sub_1DD3354A0())
  {
    sub_1DD334FA0();
  }

  if (sub_1DD335490())
  {
    sub_1DD334DA0();
    v4 = v3;

    if (v4)
    {
      sub_1DD334F90();
    }
  }

  if (sub_1DD3354C0())
  {
    sub_1DD334F40();
  }

  if (sub_1DD335460())
  {
    sub_1DD334F70();
  }

  result = sub_1DD335470();
  if (result)
  {
    sub_1DD334F80();
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1DD2FC170()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E08, &qword_1DD33AA50);
  __swift_allocate_value_buffer(v0, qword_1EE02A520);
  __swift_project_value_buffer(v0, qword_1EE02A520);
  sub_1DD334FC0();
  sub_1DD335530();
  return sub_1DD335790();
}

uint64_t sub_1DD2FC200(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DD2FC254@<X0>(uint64_t *a1@<X8>)
{
  if (sub_1DD334F50())
  {
    sub_1DD335530();
    result = swift_dynamicCastClass();
    if (result)
    {
      *a1 = result;
      return result;
    }
  }

  v3 = sub_1DD335850();
  sub_1DD2FC6B8(&qword_1ECCD6E18, MEMORY[0x1E69D3648], MEMORY[0x1E69D3650]);
  swift_allocError();
  *v4 = 0xD000000000000073;
  v4[1] = 0x80000001DD33DE10;
  (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69D3640], v3);
  return swift_willThrow();
}

uint64_t sub_1DD2FC374(uint64_t a1)
{
  v2 = sub_1DD334990();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E28, &qword_1DD33AA68);
  result = sub_1DD336BE0();
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
    sub_1DD2FC6B8(&qword_1ECCD6E30, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v14 = sub_1DD336550();
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
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_1DD2FC6B8(&qword_1ECCD6E38, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
      v21 = sub_1DD336590();
      v22 = *v11;
      (*v11)(v5, v2);
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

uint64_t sub_1DD2FC6B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD2FC700()
{
  result = qword_1ECCD6E58;
  if (!qword_1ECCD6E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCD6E58);
  }

  return result;
}

uint64_t sub_1DD2FC744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD2FC7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD335CE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_1DD2955E8();
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD2FCA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t), uint64_t (*a4)(unint64_t))
{
  v8 = sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  sub_1DD335ED0();
  sub_1DD334AA0();
  sub_1DD334DC0();

  if (v49)
  {

    return 0;
  }

  else
  {
    v46 = v10;
    sub_1DD335ED0();
    v16 = sub_1DD335700();
    v18 = v17;

    sub_1DD334CA0();
    swift_allocObject();
    v19 = MEMORY[0x1E12AAAE0](v16, v18);
    sub_1DD335ED0();
    v43 = v19;
    OUTLINED_FUNCTION_14_10(v19);

    sub_1DD335ED0();
    sub_1DD3356F0();
    OUTLINED_FUNCTION_12_7();

    v48 = *(v19 + 16);
    if (v48)
    {
      v40 = a1;
      v41 = a3;
      v42 = a4;
      v20 = 0;
      v21 = v46 + 16;
      v45 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v47 = *(v46 + 16);
      v44 = v19 + v45;
      v22 = *(v21 + 56);
      v23 = (v21 - 8);
      do
      {
        v24 = v44 + v22 * v20++;
        v25 = v21;
        v47(v14, v24, v8);
        v26 = a2;
        sub_1DD335ED0();
        v27 = sub_1DD3356F0();

        v28 = v27 + v45;
        v29 = *(v27 + 16) + 1;
        while (--v29)
        {
          v30 = v28 + v22;
          v31 = MEMORY[0x1E12AAA70]();
          v28 = v30;
          if (v31)
          {

            goto LABEL_10;
          }
        }

        sub_1DD334BA0();
LABEL_10:
        (*v23)(v14, v8);
        a2 = v26;
        v21 = v25;
      }

      while (v20 != v48);

      a3 = v41;
      a4 = v42;
      a1 = v40;
    }

    else
    {
    }

    sub_1DD2FCDF8(a2, a1, v43, a3, a4);
    v15 = MEMORY[0x1E12AABB0](v43);
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
      v32 = sub_1DD335CE0();
      OUTLINED_FUNCTION_1_0();
      v34 = v33;
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1DD339380;
      v37 = *MEMORY[0x1E69D2918];
      sub_1DD336130();
      OUTLINED_FUNCTION_1();
      (*(v38 + 104))(v36 + v35, v37);
      (*(v34 + 104))(v36 + v35, *MEMORY[0x1E69D27E8], v32);
    }
  }

  return v15;
}

uint64_t sub_1DD2FCDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t), uint64_t (*a5)(unint64_t))
{
  v7 = sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  sub_1DD335F20();
  sub_1DD334C30();
  sub_1DD335ED0();
  v14 = sub_1DD3356F0();

  v21 = v13;
  v15 = sub_1DD2A8EF8(a4, v20, v14);

  if (!v15)
  {
    sub_1DD335ED0();
    v16 = sub_1DD3356F0();

    MEMORY[0x1EEE9AC00](v17);
    *&v20[-16] = v13;
    v18 = sub_1DD2A8EF8(a5, &v20[-32], v16);

    if (!v18)
    {
      sub_1DD334BA0();
    }
  }

  return (*(v9 + 8))(v13, v7);
}

void *sub_1DD2FCFC8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E98, &qword_1DD33AB10);
  v3 = swift_allocObject();
  v4 = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = a1;
  v5 = v1[2];
  if (v5)
  {
    v3[4] = v5;
    v6 = v1[2];
    v7 = a1;
    sub_1DD335860();
    if (v6)
    {
      *(v6 + 24) = v4;
      sub_1DD335860();
    }

    v1[2] = v4;
  }

  else
  {
    v1[2] = v3;
    v1[3] = v3;
    sub_1DD335860();
    v8 = a1;
  }

  sub_1DD335860();

  v10 = v1[4];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v12;
    return v4;
  }

  return result;
}

uint64_t sub_1DD2FD0AC(uint64_t result)
{
  v2 = result;
  v3 = v1[2];
  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v1[2] = *(result + 32);
    sub_1DD335860();
  }

  v5 = v1[3];
  if (v5)
  {
    v6 = v5 == v2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v1[3] = *(v2 + 24);
    sub_1DD335860();
  }

  v7 = *(v2 + 32);
  if (v7)
  {
    *(v7 + 24) = *(v2 + 24);
    sub_1DD335860();
    sub_1DD335860();
  }

  v8 = *(v2 + 24);
  if (v8)
  {
    *(v8 + 32) = *(v2 + 32);
    sub_1DD335860();
    sub_1DD335860();
  }

  v9 = v1[4];
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v11;
  }

  return result;
}

uint64_t sub_1DD2FD1A0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 24);
  v6 = *(result + 32);
  if (v5)
  {
    *(v5 + 32) = v6;
    swift_retain_n();
    swift_retain_n();

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1DD335860();
  if (v6)
  {
LABEL_7:
    *(v6 + 24) = v5;
    sub_1DD335860();
  }

LABEL_8:
  v7 = *(v1 + 24);
  if (v7 && v7 == v4)
  {
    *(v1 + 24) = v5;
  }

  *(v4 + 32) = *(v1 + 16);
  sub_1DD335860();

  v8 = *(v1 + 16);
  if (v8)
  {
    *(v8 + 24) = v4;
    sub_1DD335860();
    sub_1DD335860();
  }

  *(v4 + 24) = 0;

  *(v1 + 16) = v4;
  sub_1DD335860();
}

uint64_t sub_1DD2FD2F4()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return v1;
  }

  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  if (v2)
  {
    *(v2 + 32) = 0;
    sub_1DD335860();
  }

  *(v1 + 24) = 0;

  v4 = *(v0 + 32);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (!v5)
  {
    *(v0 + 32) = v6;
    return v1;
  }

  __break(1u);
  return result;
}

void *sub_1DD2FD364(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EC0, &qword_1DD33AB48);
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  v1[3] = v2;
  sub_1DD335D60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E98, &qword_1DD33AB10);
  sub_1DD28AF28(&qword_1ECCD6740, MEMORY[0x1E69D2838], MEMORY[0x1E69D2840]);
  v1[4] = sub_1DD336530();
  return v1;
}

id sub_1DD2FD430(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD2B2FB0(a1);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  sub_1DD335860();

  v7 = *(v6 + 16);

  return v7;
}

void sub_1DD2FD4D4(void *a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DD335D60();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v7;
    swift_beginAccess();
    v10 = v2[4];

    v11 = sub_1DD2AAF0C(a2, v10);

    if (v11)
    {
      v12 = *(v11 + 16);
      *(v11 + 16) = a1;

      v13 = a1;
      sub_1DD2FD1A0(v11);

      (*(v29 + 8))(a2, v6);
    }

    else
    {
      (*(v29 + 16))(v9, a2, v6);
      v15 = v3[3];
      sub_1DD2FCFC8(a1);
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v30 = v3[4];
      sub_1DD2B3838();
      v3[4] = v30;
      v16 = *(v29 + 8);
      v29 += 8;
      v16(v9, v6);
      swift_endAccess();
      if (v3[2] >= *(v15 + 32))
      {
        v16(a2, v6);
      }

      else
      {
        v17 = sub_1DD2FD2F4();
        v28 = MEMORY[0x1EEE9AC00](v17);
        *(&v26 - 2) = v28;

        v19 = sub_1DD2FD88C(v18, sub_1DD2FF860);
        v26 = v20;
        v27 = v19;
        v22 = v21;
        v23 = ~v21;

        if (v23)
        {
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EA8, &qword_1DD33AB28);
          v25 = v26;
          v24 = v27;
          sub_1DD336540();
          v16(v9, v6);

          swift_endAccess();

          sub_1DD2FF874(v24, v25, v22);

          v16(a2, v6);
        }

        else
        {
          v16(a2, v6);
        }
      }
    }
  }

  else
  {
    v14 = *(v7 + 8);

    v14(a2, v6);
  }
}

uint64_t sub_1DD2FD88C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EB0, &unk_1DD33AB30);
  v3 = MEMORY[0x1EEE9AC00](v32);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v27 - v5;
  result = sub_1DD2FF898(a1);
  v8 = result;
  v9 = a1 + 64;
  v28 = a1 + 72;
  v29 = a1 + 64;
  if (v10)
  {
    __break(1u);
    return 0;
  }

  else
  {
    while (1)
    {
      v11 = *(a1 + 36);
      if (v11 != v7)
      {
        break;
      }

      v12 = 1 << *(a1 + 32);
      if (v8 == v12)
      {
        return 0;
      }

      if (v8 < 0 || v8 >= v12)
      {
        goto LABEL_23;
      }

      if ((*(v9 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v36 = v8 >> 6;
      v35 = v11;
      v34 = v7;
      v13 = *(a1 + 48);
      v14 = sub_1DD335D60();
      v15 = *(v14 - 8);
      v16 = v30;
      (*(v15 + 16))(v30, v13 + *(v15 + 72) * v8, v14);
      v17 = *(*(a1 + 56) + 8 * v8);
      v18 = v31;
      (*(v15 + 32))(v31, v16, v14);
      *(v18 + *(v32 + 48)) = v17;
      sub_1DD335860();
      LOBYTE(v17) = v33(v18, v17);
      result = sub_1DD296084(v18, &qword_1ECCD6EB0, &unk_1DD33AB30);
      if (v17)
      {
        return v8;
      }

      v19 = 1 << *(a1 + 32);
      if (v8 >= v19)
      {
        goto LABEL_25;
      }

      v9 = v29;
      v20 = *(v29 + 8 * v36);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v35)
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v36 << 6;
        v23 = v36 + 1;
        v24 = (v28 + 8 * v36);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1DD2FF88C(v8, v34, 0);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_18;
          }
        }

        result = sub_1DD2FF88C(v8, v34, 0);
      }

LABEL_18:
      v7 = *(a1 + 36);
      v8 = v19;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

id sub_1DD2FDBCC(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_1DD2B2FB0(a1);
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6750, &unk_1DD339700);
    sub_1DD336CC0();
    v6 = *(v11 + 48);
    v7 = sub_1DD335D60();
    (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
    v8 = *(*(v11 + 56) + 8 * v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E98, &qword_1DD33AB10);
    sub_1DD28AF28(&qword_1ECCD6740, MEMORY[0x1E69D2838], MEMORY[0x1E69D2840]);
    sub_1DD336CE0();
    *(v1 + 32) = v11;
    swift_endAccess();
    sub_1DD2FD0AC(v8);
    v9 = *(v8 + 16);
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v9;
}

uint64_t sub_1DD2FDD64(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = *(*(a1 + 24) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EB8, &qword_1DD33AB40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DD2FF8D8;
  *(v3 + 24) = v2;
  sub_1DD335860();
  return v3;
}

id sub_1DD2FDDF4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  swift_beginAccess();
  *(a1 + 16) = v3;
  v4 = *(v2 + 16);
  sub_1DD335860();
  v5 = v4;

  return v5;
}

uint64_t RRMemoryStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  RRMemoryStorage.init()();
  return v0;
}

uint64_t RRMemoryStorage.init()()
{
  v1 = v0;
  type metadata accessor for RRMemoryStorage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E68, "L[");
  sub_1DD336630();
  sub_1DD335CC0();
  v2 = OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6E78, &unk_1DD33AAB8);
  swift_allocObject();
  *(v0 + v2) = sub_1DD2FD364(1000);
  v3 = OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  return v1;
}

uint64_t type metadata accessor for RRMemoryStorage(uint64_t a1)
{
  result = qword_1ECCD6E88;
  if (!qword_1ECCD6E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DD2FDFF4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v3 lock];
  v4 = sub_1DD2FD430(a1);
  [v3 unlock];
  return v4;
}

uint64_t sub_1DD2FE064()
{
  v2 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v2 lock];
  v3 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
  sub_1DD335860();
  sub_1DD2FF258(sub_1DD2FF5A0, v3);
  OUTLINED_FUNCTION_12_7();

  [v2 unlock];
  return v1;
}

id sub_1DD2FE0F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DD335D60();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v51 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - v10;
  v43[0] = *&v2[OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock];
  [v43[0] lock];
  v52 = a1;
  result = sub_1DD287354(a1);
  v53 = result;
  if (!result)
  {
    return [v43[0] unlock];
  }

  if (v53 >= 1)
  {
    v14 = 0;
    v54 = OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_logger;
    v15 = *&v2[OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities];
    v48 = (v6 + 16);
    v49 = v52 & 0xC000000000000001;
    v47 = (v6 + 8);
    *&v13 = 136315138;
    v45 = v13;
    *&v13 = 134217984;
    v44 = v13;
    v46 = v4;
    v50 = v15;
    v43[1] = v2;
    do
    {
      if (v49)
      {
        v16 = MEMORY[0x1E12ACA60](v14, v52);
      }

      else
      {
        v16 = *(v52 + 8 * v14 + 32);
      }

      v17 = v16;
      sub_1DD335F20();
      sub_1DD336010();
      OUTLINED_FUNCTION_8_7();
      sub_1DD335D20();
      v18 = sub_1DD2FD430(v11);
      if (v18)
      {
        v19 = v18;
        v20 = v51;
        (*v48)(v51, v11, v4);
        sub_1DD294278(v19, v17, sub_1DD2FF840, sub_1DD2FF840);
        sub_1DD2FD4D4(v21, v20);
        v22 = v17;
        v23 = sub_1DD335CB0();
        v24 = sub_1DD336940();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = OUTLINED_FUNCTION_50();
          v26 = OUTLINED_FUNCTION_31_0();
          v55 = v26;
          *v25 = v45;
          v27 = sub_1DD336010();
          sub_1DD27DBF0(v27, v28, &v55);
          OUTLINED_FUNCTION_12_7();

          *(v25 + 4) = v22;
          _os_log_impl(&dword_1DD27A000, v23, v24, "update entity. id: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_54();
        }

        v4 = v46;
      }

      else
      {
        v29 = v51;
        (*v48)(v51, v11, v4);
        v30 = v17;
        sub_1DD2FD4D4(v17, v29);
        v31 = v30;
        v32 = sub_1DD335CB0();
        v33 = sub_1DD336940();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = OUTLINED_FUNCTION_50();
          v35 = OUTLINED_FUNCTION_31_0();
          v55 = v35;
          *v34 = v45;
          v36 = sub_1DD336010();
          sub_1DD27DBF0(v36, v37, &v55);
          OUTLINED_FUNCTION_12_7();

          *(v34 + 4) = v31;
          _os_log_impl(&dword_1DD27A000, v32, v33, "insert entity. id: %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          v4 = v46;
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_54();
        }
      }

      sub_1DD335860();
      v38 = sub_1DD335CB0();
      v39 = sub_1DD336940();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v50;
      if (v40)
      {
        v42 = OUTLINED_FUNCTION_50();
        *v42 = v44;
        *(v42 + 4) = *(*(v41 + 24) + 32);

        _os_log_impl(&dword_1DD27A000, v38, v39, "total entity count: %ld", v42, 0xCu);
        OUTLINED_FUNCTION_54();
      }

      else
      {

        v38 = v17;
      }

      ++v14;

      (*v47)(v11, v4);
    }

    while (v53 != v14);
    return [v43[0] unlock];
  }

  __break(1u);
  return result;
}

id sub_1DD2FE5B4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v51 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v50 = (v12 - v11);
  v49 = sub_1DD335D60();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v20 = OUTLINED_FUNCTION_36(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v46 - v21;
  v23 = *(v4 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v23 lock];
  v24 = a1;
  v25 = sub_1DD2FD430(a1);
  if (v25)
  {
    v26 = v25;
    v48 = v23;
    sub_1DD336060();
    v46[1] = v4;
    v47 = v9;
    v27 = *(v9 + 16);
    v28 = a2;
    v29 = a2;
    v30 = v51;
    v27(v22, v28, v51);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v30);
    sub_1DD335FA0();
    (*(v14 + 16))(v18, v24, v49);
    v31 = v26;
    sub_1DD2FD4D4(v26, v18);
    v32 = v50;
    v27(v50, v29, v30);
    v33 = v31;
    v34 = sub_1DD335CB0();
    v35 = sub_1DD336940();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_31_0();
      v52 = swift_slowAlloc();
      *v36 = 136315650;
      v37 = sub_1DD336010();
      v39 = sub_1DD27DBF0(v37, v38, &v52);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2048;
      *(v36 + 14) = a3;
      *(v36 + 22) = 2080;
      sub_1DD28AF28(&qword_1EE027A40, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v40 = v51;
      v41 = sub_1DD336DC0();
      v43 = v42;
      (*(v47 + 8))(v32, v40);
      v44 = sub_1DD27DBF0(v41, v43, &v52);

      *(v36 + 24) = v44;
      _os_log_impl(&dword_1DD27A000, v34, v35, "Successfully updated entity %s's saliencyScore to %f computed at %s", v36, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      (*(v47 + 8))(v32, v51);
    }

    v23 = v48;
  }

  return [v23 unlock];
}

void *sub_1DD2FE9BC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v4 lock];
  v5 = a1;
  v6 = sub_1DD335CB0();
  v7 = sub_1DD336940();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_50();
    v9 = OUTLINED_FUNCTION_31_0();
    v30 = v9;
    *v8 = 136315138;
    v10 = [v5 predicateFormat];
    v11 = v5;
    v12 = v4;
    v13 = v10;
    v14 = sub_1DD3365D0();
    v16 = v15;

    v17 = sub_1DD27DBF0(v14, v16, &v30);

    *(v8 + 4) = v17;
    v4 = v12;
    v5 = v11;
    OUTLINED_FUNCTION_3_11(&dword_1DD27A000, v18, v19, "query predicate. %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  sub_1DD335860();
  v20 = sub_1DD335CB0();
  v21 = sub_1DD336940();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_50();
    *v22 = 134217984;
    *(v22 + 4) = *(*(*(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities) + 24) + 32);

    OUTLINED_FUNCTION_3_11(&dword_1DD27A000, v23, v24, "total entity count: %ld");
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  v25 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DD2FDD64(v25);
  v26 = v5;
  sub_1DD335860();
  while (1)
  {
    sub_1DD336D60();
    if (!v29)
    {
      break;
    }

    if ([v26 evaluateWithObject_])
    {
      sub_1DD336C50();
      sub_1DD336C70();
      sub_1DD336C80();
      sub_1DD336C60();
    }

    else
    {
    }
  }

  v27 = v30;
  [v4 unlock];
  return v27;
}

void *sub_1DD2FEC68(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v4 lock];
  sub_1DD335860();
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_50();
    v8 = OUTLINED_FUNCTION_31_0();
    v23 = a1;
    v24 = v8;
    *v7 = 136315138;
    sub_1DD335710();
    sub_1DD335860();
    v9 = sub_1DD336630();
    v11 = sub_1DD27DBF0(v9, v10, &v24);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_3_11(&dword_1DD27A000, v12, v13, "query by UsoEntity. %s");
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  sub_1DD335860();
  v14 = sub_1DD335CB0();
  v15 = sub_1DD336940();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_50();
    *v16 = 134217984;
    *(v16 + 4) = *(*(*(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities) + 24) + 32);

    OUTLINED_FUNCTION_3_11(&dword_1DD27A000, v17, v18, "total entity count: %ld");
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  v19 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_entities);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DD2FDD64(v19);
  sub_1DD335860();
  sub_1DD335860();
  while (1)
  {
    sub_1DD336D60();
    if (!v23)
    {
      break;
    }

    sub_1DD335ED0();
    v20 = sub_1DD335960();

    if (v20)
    {
      sub_1DD336C50();
      sub_1DD336C70();
      sub_1DD336C80();
      sub_1DD336C60();
    }

    else
    {
    }
  }

  v21 = v24;
  [v4 unlock];
  return v21;
}

id sub_1DD2FEF08(uint64_t a1)
{
  v3 = sub_1DD335D60();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v17 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_lock);
  [v17 lock];
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v9, v14, v3);

      (*(v11 - 8))(v9, v3);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return [v17 unlock];
}

uint64_t RRMemoryStorage.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution15RRMemoryStorage_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t RRMemoryStorage.__deallocating_deinit()
{
  RRMemoryStorage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1DD2FF258(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2)
{
  v3 = sub_1DD335860();
  a1(&v22, v3);

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    result = sub_1DD336D60();
    v8 = v22;
    if (!v22)
    {

      v19 = v5[3];
      if (v19 >= 2)
      {
        v20 = v19 >> 1;
        v18 = __OFSUB__(v20, v4);
        v21 = v20 - v4;
        if (v18)
        {
          goto LABEL_25;
        }

        v5[2] = v21;
      }

      return v5;
    }

    if (!v4)
    {
      v9 = v5[3];
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
      v12 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size(v12) - 32) / 8;
      v12[2] = v11;
      v12[3] = (2 * v13) | 1;
      v14 = (v12 + 4);
      v15 = v5[3];
      v16 = v15 >> 1;
      if (v5[2])
      {
        if (v12 != v5 || v14 >= &v5[v16 + 4])
        {
          memmove(v12 + 4, v5 + 4, 8 * v16);
        }

        v5[2] = 0;
      }

      i = (v14 + 8 * v16);
      v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);

      v5 = v12;
    }

    v18 = __OFSUB__(v4--, 1);
    if (v18)
    {
      break;
    }

    *i = v8;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1DD2FF3D8(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    result = sub_1DD336CF0();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = result | 0x8000000000000000;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
    a3 = 0;
LABEL_28:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v12;
    v7[4] = v10;
    return a3;
  }

  v17 = -1 << *(a4 + 32);
  v8 = a4 + 64;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v10 = v19 & *(a4 + 64);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v11 = 0;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_1DD336D10() || (swift_unknownObjectRelease(), sub_1DD2FF904(), swift_dynamicCast(), (result = v21) == 0))
        {
LABEL_25:
          a3 = v11;
LABEL_26:
          v9 = v20;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          while (1)
          {
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v10 = 0;
              goto LABEL_25;
            }

            v10 = *(v8 + 8 * v15);
            ++v12;
            if (v10)
            {
              v12 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        result = *(*(v4 + 56) + ((v12 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v11;
      if (v14 == a3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD2FF5A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2FDD64(v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DD2FF5D4(uint64_t a1)
{
  result = sub_1DD335CD0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD2FF7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EA0, &unk_1DD33AB18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD2FF874(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DD2FF88C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DD2FF88C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1DD2FF8D8@<X0>(void *a1@<X8>)
{
  result = sub_1DD2FDDF4(v1);
  *a1 = result;
  return result;
}

unint64_t sub_1DD2FF904()
{
  result = qword_1ECCD6EC8;
  if (!qword_1ECCD6EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCD6EC8);
  }

  return result;
}

uint64_t RREventProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution16RREventProcessor_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_4_0();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution16RREventProcessor_storage));
  return v0;
}

uint64_t RREventProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution16RREventProcessor_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_4_0();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution16RREventProcessor_storage));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for RREventProcessor(uint64_t a1)
{
  result = qword_1EE027E68;
  if (!qword_1EE027E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2FFABC(uint64_t a1)
{
  result = sub_1DD335CD0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD2FFB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1DD334890();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, a1);
  return a5(v10);
}

uint64_t sub_1DD2FFC50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  sub_1DD334890();
  OUTLINED_FUNCTION_1();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t sub_1DD2FFCD4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1DD334890();
  OUTLINED_FUNCTION_1();
  (*(v5 + 40))(v2 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1DD2FFD78()
{
  v7 = sub_1DD3369C0();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DD336980();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DD336400();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
  sub_1DD3363F0();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DD30B5E4(&qword_1EE0285A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD27F454(&qword_1EE0285E8, &qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD336B10();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1DD336A10();
  qword_1EE027E80 = result;
  return result;
}

void sub_1DD2FFFD8()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-1] - v7;
  v9 = type metadata accessor for RRSQLiteStorage(0);
  RRSQLiteStorage.__allocating_init()();
  if (v10)
  {
    v20[3] = v9;
    v20[4] = &protocol witness table for RRSQLiteStorage;
    v20[0] = v10;
    sub_1DD28191C(v20, v19);
    v11 = type metadata accessor for RRHeuristicSaliencyEstimator(0);
    OUTLINED_FUNCTION_59();
    swift_allocObject();
    v12 = RRHeuristicSaliencyEstimator.init()();
    v18[3] = v11;
    v18[4] = &protocol witness table for RRHeuristicSaliencyEstimator;
    v18[0] = v12;
    v13 = sub_1DD300338();
    (*(v1 + 224))(v19, v18, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v20[0] = type metadata accessor for SiriReferenceResolutionService(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E8, &unk_1DD339F60);
    sub_1DD336630();
    sub_1DD335CC0();
    v14 = sub_1DD335CB0();
    v15 = sub_1DD336960();
    if (OUTLINED_FUNCTION_17_0(v15))
    {
      v16 = OUTLINED_FUNCTION_69();
      *v16 = 0;
      _os_log_impl(&dword_1DD27A000, v14, v15, "Failed to intialize RRSQLiteStorage.", v16, 2u);
      OUTLINED_FUNCTION_52_0();
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD300338()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6818, &qword_1DD339910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD339380;
  v1 = type metadata accessor for RRNowPlayingMediaPuller(0);
  swift_allocObject();
  v2 = RRNowPlayingMediaPuller.init()();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for RRNowPlayingMediaPuller;
  *(v0 + 32) = v2;
  if ((AFIsHorseman() & 1) == 0 && (AFIsNano() & 1) == 0)
  {
    v3 = type metadata accessor for RRForegroundedAppPuller(0);
    swift_allocObject();
    v4 = RRForegroundedAppPuller.init()();
    sub_1DD2BBBC0(1, 2, 1, v0);
    v0 = v5;
    v54 = v3;
    v55 = &protocol witness table for RRForegroundedAppPuller;
    *&v53 = v4;
    *(v5 + 16) = 2;
    sub_1DD289CE4(&v53, v5 + 72);
  }

  if (qword_1EE029490 != -1)
  {
    swift_once();
  }

  sub_1DD28191C(&unk_1EE02A6F0, &v53);
  v6 = v54;
  v7 = v55;
  __swift_project_boxed_opaque_existential_1(&v53, v54);
  v8 = (v7[6])(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  if (v8)
  {
    v9 = type metadata accessor for RRIFUIContextPuller(0);
    swift_allocObject();
    v10 = RRIFUIContextPuller.init()();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1DD2BBBC0(v11 > 1, v12 + 1, 1, v0);
      v0 = v51;
    }

    v54 = v9;
    v55 = &protocol witness table for RRIFUIContextPuller;
    *&v53 = v10;
    *(v0 + 16) = v12 + 1;
    sub_1DD289CE4(&v53, v0 + 40 * v12 + 32);
  }

  v13 = type metadata accessor for RRBiomeNotificationPuller(0);
  v14 = RRBiomeNotificationPuller.__allocating_init()();
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_1DD2BBBC0(v15 > 1, v16 + 1, 1, v0);
    v0 = v46;
  }

  v54 = v13;
  v55 = &protocol witness table for RRBiomeNotificationPuller;
  *&v53 = v14;
  *(v0 + 16) = v16 + 1;
  sub_1DD289CE4(&v53, v0 + 40 * v16 + 32);
  v17 = type metadata accessor for RRContextKitPuller(0);
  swift_allocObject();
  v18 = RRContextKitPuller.init()();
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  if (v20 >= v19 >> 1)
  {
    sub_1DD2BBBC0(v19 > 1, v20 + 1, 1, v0);
    v0 = v47;
  }

  v54 = v17;
  v55 = &protocol witness table for RRContextKitPuller;
  *&v53 = v18;
  *(v0 + 16) = v20 + 1;
  sub_1DD289CE4(&v53, v0 + 40 * v20 + 32);
  v21 = type metadata accessor for RRFrontBoardPuller(0);
  swift_allocObject();
  v22 = RRFrontBoardPuller.init()();
  v24 = *(v0 + 16);
  v23 = *(v0 + 24);
  if (v24 >= v23 >> 1)
  {
    sub_1DD2BBBC0(v23 > 1, v24 + 1, 1, v0);
    v0 = v48;
  }

  v54 = v21;
  v55 = &protocol witness table for RRFrontBoardPuller;
  *&v53 = v22;
  *(v0 + 16) = v24 + 1;
  sub_1DD289CE4(&v53, v0 + 40 * v24 + 32);
  v25 = type metadata accessor for RRVoiceShortcutClientPuller(0);
  swift_allocObject();
  v26 = RRVoiceShortcutClientPuller.init()();
  v28 = *(v0 + 16);
  v27 = *(v0 + 24);
  if (v28 >= v27 >> 1)
  {
    sub_1DD2BBBC0(v27 > 1, v28 + 1, 1, v0);
    v0 = v49;
  }

  v54 = v25;
  v55 = &protocol witness table for RRVoiceShortcutClientPuller;
  *&v53 = v26;
  *(v0 + 16) = v28 + 1;
  sub_1DD289CE4(&v53, v0 + 40 * v28 + 32);
  sub_1DD28191C(&unk_1EE02A6F0, &v53);
  v29 = v54;
  v30 = v55;
  __swift_project_boxed_opaque_existential_1(&v53, v54);
  v31 = (v30[6])(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  if ((v31 & 1) == 0 || (sub_1DD28191C(&unk_1EE02A6F0, &v53), v32 = v54, v33 = v55, __swift_project_boxed_opaque_existential_1(&v53, v54), v34 = (v33[7])(v32, v33), __swift_destroy_boxed_opaque_existential_1(&v53), (v34 & 1) == 0))
  {
    type metadata accessor for RRLNService();
    swift_allocObject();
    v35 = type metadata accessor for RROnScreenAppEntityPuller(0);
    v36 = swift_allocObject();
    v37 = sub_1DD335860();
    v38 = sub_1DD30B3E8(v37, v36);
    v40 = *(v0 + 16);
    v39 = *(v0 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1DD2BBBC0(v39 > 1, v40 + 1, 1, v0);
      v0 = v50;
    }

    v54 = v35;
    v55 = &protocol witness table for RROnScreenAppEntityPuller;
    *&v53 = v38;
    *(v0 + 16) = v40 + 1;
    sub_1DD289CE4(&v53, v0 + 40 * v40 + 32);
  }

  if (AFDeviceSupportsSAE())
  {
    v41 = type metadata accessor for RRIntelligenceFlowPuller(0);
    swift_allocObject();
    v42 = sub_1DD2CFE8C();
    v44 = *(v0 + 16);
    v43 = *(v0 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1DD2BBBC0(v43 > 1, v44 + 1, 1, v0);
      v0 = v52;
    }

    v54 = v41;
    v55 = &off_1F589B6C0;
    *&v53 = v42;
    *(v0 + 16) = v44 + 1;
    sub_1DD289CE4(&v53, v0 + 40 * v44 + 32);
  }

  return v0;
}

uint64_t SiriReferenceResolutionService.__allocating_init(storage:ranker:pullers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_allocObject();
  SiriReferenceResolutionService.init(storage:ranker:pullers:)();
  return v3;
}

void SiriReferenceResolutionService.init(storage:ranker:pullers:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1DD3363C0();
  OUTLINED_FUNCTION_1_0();
  v45 = v9;
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_2();
  v43 = v10;
  OUTLINED_FUNCTION_31_1();
  v44 = sub_1DD336400();
  OUTLINED_FUNCTION_1_0();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v15 = v14 - v13;
  v16 = sub_1DD3363D0();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  v22 = v21 - v20;
  v47[0] = type metadata accessor for SiriReferenceResolutionService(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E8, &unk_1DD339F60);
  sub_1DD336630();
  sub_1DD335CC0();
  sub_1DD334880();
  sub_1DD334880();
  sub_1DD28191C(v7, v1 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage);
  sub_1DD28191C(v5, v1 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker);
  *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_pullers) = v3;
  v23 = [objc_opt_self() processInfo];
  v24 = [v23 processName];

  v25 = sub_1DD3365D0();
  v27 = v26;

  if (v25 == 0x6E61747369737361 && v27 == 0xEA00000000006474)
  {

    goto LABEL_8;
  }

  v29 = sub_1DD336E00();

  if (v29)
  {
LABEL_8:
    sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
    (*(v18 + 104))(v22, *MEMORY[0x1E69E7F98], v16);
    v30 = sub_1DD336A20();
    v31 = OUTLINED_FUNCTION_77();
    v32(v31);
    v47[4] = sub_1DD300FB4;
    v47[5] = v1;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 1107296256;
    OUTLINED_FUNCTION_24_5();
    v47[2] = v33;
    v47[3] = &block_descriptor_7;
    v34 = _Block_copy(v47);
    sub_1DD335860();
    sub_1DD3363E0();
    OUTLINED_FUNCTION_1_8();
    sub_1DD30B5E4(v35, v36, MEMORY[0x1E69E7F70]);
    v37 = OUTLINED_FUNCTION_51_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
    sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
    sub_1DD336B10();
    v39 = OUTLINED_FUNCTION_66_5();
    MEMORY[0x1E12AC840](v39);
    _Block_release(v34);

    (*(v45 + 8))(v43, v46);
    (*(v42 + 8))(v15, v44);
  }

  if (qword_1EE0283B0 != -1)
  {
    swift_once();
  }

  v40 = *(qword_1EE02A360 + 16);
  if (v40)
  {
    v41 = qword_1EE02A360 + 32;
    do
    {
      sub_1DD28191C(v41, v47);
      sub_1DD3357E0();
      __swift_destroy_boxed_opaque_existential_1(v47);
      v41 += 40;
      --v40;
    }

    while (v40);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_24_1();
}

void sub_1DD300E44(uint64_t a1)
{
  v1 = sub_1DD335CB0();
  v2 = sub_1DD336930();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    v5 = [objc_opt_self() processInfo];
    v6 = [v5 processName];

    v7 = sub_1DD3365D0();
    v9 = v8;

    v10 = sub_1DD27DBF0(v7, v9, &v11);

    *(v3 + 4) = v10;
    _os_log_impl(&dword_1DD27A000, v1, v2, "Start the background job to evict non-salient entities periodically in process %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1E12ADA30](v4, -1, -1);
    MEMORY[0x1E12ADA30](v3, -1, -1);
  }

  sub_1DD30852C(86400.0);
}

void sub_1DD300FBC()
{
  type metadata accessor for SiriReferenceResolutionService(0);
  sub_1DD2FFFD8();
  qword_1EE02A6E8 = v0;
}

uint64_t sub_1DD300FF0()
{
  v0 = sub_1DD335CD0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = type metadata accessor for SiriReferenceResolutionService(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E8, &unk_1DD339F60);
  sub_1DD336630();
  sub_1DD335CC0();
  v4 = sub_1DD335CB0();
  v5 = sub_1DD336960();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD27A000, v4, v5, "Failed to initialize SRR service. Retrying initialization", v6, 2u);
    MEMORY[0x1E12ADA30](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_1EE029480 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE02A6E8;
  if (!qword_1EE02A6E8)
  {
    sub_1DD2FFFD8();
  }

  qword_1EE02A6E8 = v7;
  sub_1DD335860();
}

void sub_1DD30123C()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v122 = sub_1DD335D10();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_2();
  v119 = v6;
  OUTLINED_FUNCTION_31_1();
  v7 = sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v14 = sub_1DD336170();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v109 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35();
  v108 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v106 - v22;
  v24 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
  OUTLINED_FUNCTION_97_2();
  v112 = v25;
  v113 = v2;
  v111 = v26;
  v26(v23, v2, v14);
  v120 = v0;
  v118 = v24;
  v27 = sub_1DD335CB0();
  v28 = sub_1DD336930();
  v29 = os_log_type_enabled(v27, v28);
  v115 = v16;
  v116 = v14;
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_50();
    v117 = v7;
    v31 = v30;
    v32 = OUTLINED_FUNCTION_31_0();
    v110 = v9;
    v33 = v32;
    v123[0] = v32;
    *v31 = 136315138;
    OUTLINED_FUNCTION_6_9();
    sub_1DD30B5E4(v34, v35, MEMORY[0x1E69D2940]);
    v36 = sub_1DD336DC0();
    v114 = *(v16 + 8);
    v114(v23, v14);
    v37 = OUTLINED_FUNCTION_41();
    sub_1DD27DBF0(v37, v38, v39);
    OUTLINED_FUNCTION_45_5();

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1DD27A000, v27, v28, "Resolve with query: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v9 = v110;
    OUTLINED_FUNCTION_54();
    v7 = v117;
    OUTLINED_FUNCTION_54();
  }

  else
  {

    v114 = *(v16 + 8);
    v114(v23, v14);
  }

  v40 = v119;
  if (qword_1EE027DB0 != -1)
  {
    OUTLINED_FUNCTION_12_8(&qword_1EE027DB0);
  }

  v41 = qword_1EE02A268;
  sub_1DD335C90();
  sub_1DD336A40();
  v42 = qword_1EE02A268;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_34_6();
  sub_1DD335C70();

  sub_1DD307680();
  sub_1DD335950();
  OUTLINED_FUNCTION_59();
  swift_allocObject();
  OUTLINED_FUNCTION_32_0();
  v43 = sub_1DD335940();
  v44 = v113;
  v45 = sub_1DD335930();
  v121 = v45;
  v107 = v13;
  if (v46)
  {
    v47 = v109;
    v48 = v116;
    v111(v109, v44, v116);
    v49 = OUTLINED_FUNCTION_101_1(v45);
    v50 = sub_1DD336950();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_50();
      v106 = v43;
      v52 = v51;
      v53 = v9;
      v54 = OUTLINED_FUNCTION_31_0();
      v123[0] = v54;
      *v52 = 136315138;
      OUTLINED_FUNCTION_6_9();
      sub_1DD30B5E4(v55, v56, MEMORY[0x1E69D2940]);
      v57 = sub_1DD336DC0();
      v59 = v58;
      OUTLINED_FUNCTION_105_1();
      v60();
      v61 = sub_1DD27DBF0(v57, v59, v123);

      *(v52 + 4) = v61;
      OUTLINED_FUNCTION_93_1();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      v9 = v53;
      v67 = v121;
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_52_0();

      sub_1DD2BED74(v67, 1);
    }

    else
    {

      sub_1DD2BED74(v45, 1);
      OUTLINED_FUNCTION_105_1();
      v83(v47, v48);
    }

    v84 = v107;
LABEL_27:
    sub_1DD336A30();
    v105 = qword_1EE02A268;
    sub_1DD335C80();

    (*(v9 + 8))(v84, v7);
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v106 = v43;
  v110 = v9;
  v68 = OUTLINED_FUNCTION_112();
  v69 = (v111)(v68);
  v70 = OUTLINED_FUNCTION_101_1(v69);
  sub_1DD336940();
  OUTLINED_FUNCTION_90_3();
  v72 = os_log_type_enabled(v70, v71);
  v117 = v7;
  if (v72)
  {
    v73 = OUTLINED_FUNCTION_50();
    v74 = OUTLINED_FUNCTION_31_0();
    v123[0] = v74;
    *v73 = 136315138;
    OUTLINED_FUNCTION_6_9();
    sub_1DD30B5E4(v75, v76, MEMORY[0x1E69D2940]);
    LODWORD(v113) = v43;
    v77 = sub_1DD336DC0();
    OUTLINED_FUNCTION_105_1();
    v78 = OUTLINED_FUNCTION_112();
    v79(v78);
    v80 = OUTLINED_FUNCTION_41();
    sub_1DD27DBF0(v80, v81, v82);
    OUTLINED_FUNCTION_45_5();

    *(v73 + 4) = v77;
    _os_log_impl(&dword_1DD27A000, v70, v113, "Successfully resolved query: %s ", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v7 = v117;
    v45 = v121;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_39_7();
  }

  else
  {

    OUTLINED_FUNCTION_105_1();
    v85 = OUTLINED_FUNCTION_112();
    v86(v85);
  }

  v87 = sub_1DD287354(v45);
  v88 = MEMORY[0x1E69E7CC0];
  if (!v87)
  {
LABEL_24:

    v98 = OUTLINED_FUNCTION_101_1(v97);
    v99 = sub_1DD336930();

    if (os_log_type_enabled(v98, v99))
    {
      OUTLINED_FUNCTION_50();
      v100 = OUTLINED_FUNCTION_49_5();
      v123[0] = v100;
      *v70 = 136315138;
      v101 = MEMORY[0x1E12AC670](v88, v122);
      v103 = sub_1DD27DBF0(v101, v102, v123);

      *(v70 + 4) = v103;
      OUTLINED_FUNCTION_31_7(&dword_1DD27A000, v104, v99, "Resolved SRR entities: %s");
      __swift_destroy_boxed_opaque_existential_1(v100);
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_15_9();
    }

    sub_1DD2BED74(v45, 0);
    v9 = v110;
    v84 = v107;
    goto LABEL_27;
  }

  v70 = v87;
  v123[0] = MEMORY[0x1E69E7CC0];
  sub_1DD2D7A78(0, v87 & ~(v87 >> 63), 0);
  if ((v70 & 0x8000000000000000) == 0)
  {
    v89 = 0;
    v88 = v123[0];
    v90 = v45 & 0xC000000000000001;
    do
    {
      if (v90)
      {
        v91 = MEMORY[0x1E12ACA60](v89, v45);
      }

      else
      {
        v91 = *(v45 + 8 * v89 + 32);
      }

      v92 = v91;
      sub_1DD335F60();

      v123[0] = v88;
      v94 = *(v88 + 16);
      v93 = *(v88 + 24);
      if (v94 >= v93 >> 1)
      {
        v96 = OUTLINED_FUNCTION_45(v93);
        sub_1DD2D7A78(v96, v94 + 1, 1);
        v88 = v123[0];
      }

      ++v89;
      *(v88 + 16) = v94 + 1;
      OUTLINED_FUNCTION_22_8();
      (*(v4 + 32))(v88 + v95 + *(v4 + 72) * v94, v40, v122);
      v45 = v121;
    }

    while (v70 != v89);
    v7 = v117;
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1DD301B00()
{
  OUTLINED_FUNCTION_8_4();
  v2 = v1;
  v368 = v3;
  v5 = v4;
  v7 = v6;
  v347 = *v0;
  v335 = sub_1DD335D10();
  OUTLINED_FUNCTION_1_0();
  v365 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_1(v326 - v14);
  v339 = sub_1DD334E50();
  OUTLINED_FUNCTION_1_0();
  v342 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_50_0(v17);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6ED8, &qword_1DD33ABB8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_50_0(v326 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EE0, &unk_1DD33ABC0);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v24);
  v361 = sub_1DD336250();
  OUTLINED_FUNCTION_1_0();
  v359 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v31);
  v343 = sub_1DD336120();
  OUTLINED_FUNCTION_1_0();
  v346 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v35);
  v357 = sub_1DD3363C0();
  OUTLINED_FUNCTION_1_0();
  v356 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v38);
  v355 = sub_1DD336400();
  OUTLINED_FUNCTION_1_0();
  v354 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v41);
  v353 = sub_1DD3363D0();
  OUTLINED_FUNCTION_1_0();
  v352 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v44);
  v45 = sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v366 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_12();
  v50 = v49 - v48;
  v363 = v2;
  if (v2)
  {
    v51 = 0x6E69766C6F736552;
  }

  else
  {
    v51 = 0x6976656972746552;
  }

  if (v2)
  {
    v52 = 0xE900000000000067;
  }

  else
  {
    v52 = 0xEA0000000000676ELL;
  }

  v53 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;

  sub_1DD335860();
  v362 = v53;
  v54 = sub_1DD335CB0();
  v55 = sub_1DD336930();

  v56 = os_log_type_enabled(v54, v55);
  v367 = v5;
  v369 = v52;
  v340 = v51;
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_50_2();
    v360 = v7;
    v58 = v57;
    v59 = OUTLINED_FUNCTION_49_1();
    v364 = v45;
    v371 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_1DD27DBF0(v51, v52, &v371);
    *(v58 + 12) = 2080;
    v370 = v5;
    sub_1DD335DE0();
    v60 = v50;
    OUTLINED_FUNCTION_7_8();
    sub_1DD30B5E4(v61, v62, MEMORY[0x1E69D2858]);
    v63 = sub_1DD336DC0();
    v65 = OUTLINED_FUNCTION_124_1(v63, v64);

    *(v58 + 14) = v65;
    v50 = v60;
    v66 = v0;
    _os_log_impl(&dword_1DD27A000, v54, v55, "%s with query: %s", v58, 0x16u);
    swift_arrayDestroy();
    v45 = v364;
    OUTLINED_FUNCTION_54();
    v7 = v360;
    OUTLINED_FUNCTION_54();
  }

  else
  {

    v66 = v0;
  }

  if (qword_1EE027DB0 != -1)
  {
    OUTLINED_FUNCTION_12_8(&qword_1EE027DB0);
  }

  v67 = qword_1EE02A268;
  sub_1DD335C90();
  sub_1DD336A40();
  v68 = qword_1EE02A268;
  v69 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_34_6();
  sub_1DD335C70();

  sub_1DD307680();
  v364 = v45;
  sub_1DD307A70();
  v71 = v70;

  sub_1DD335950();
  OUTLINED_FUNCTION_59();
  swift_allocObject();

  v326[3] = v71;
  v326[1] = sub_1DD335940();
  v72 = sub_1DD335920();
  LODWORD(v327) = v73;
  sub_1DD335DC0();
  sub_1DD3356E0();
  OUTLINED_FUNCTION_12_7();

  v74 = sub_1DD2AAF5C(0x746E6175516F7375, 0xED00007265696669, v45);

  v326[2] = v50;
  if (v74)
  {
    if (sub_1DD287354(v74))
    {
      sub_1DD2A34A0();
      if ((v74 & 0xC000000000000001) != 0)
      {
LABEL_130:
        MEMORY[0x1E12ACA60](0, v74);
      }

      else
      {
        sub_1DD335860();
      }

      sub_1DD3356C0();
      OUTLINED_FUNCTION_126();
    }

    else
    {
    }
  }

  sub_1DD334E60();
  sub_1DD334DC0();

  v328 = v371;
  v75 = &unk_1EE029000;
  v368 = v72;
  if (v363)
  {
    if (qword_1EE029490 != -1)
    {
LABEL_127:
      OUTLINED_FUNCTION_2_4(&qword_1EE029490);
    }

    sub_1DD28191C(&unk_1EE02A6F0, &v371);
    v76 = v375;
    __swift_project_boxed_opaque_existential_1(&v371, v374);
    v77 = OUTLINED_FUNCTION_32_0();
    v79 = v78(v77, v76);
    __swift_destroy_boxed_opaque_existential_1(&v371);
    v75 = &unk_1EE029000;
    if (v79)
    {
      v80 = mach_absolute_time();
      sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
      OUTLINED_FUNCTION_84_4();
      v81 = v351;
      OUTLINED_FUNCTION_106_1();
      v82();
      v326[0] = sub_1DD336A20();
      (*(v69 + 8))(v81, v79);
      OUTLINED_FUNCTION_83();
      v83 = swift_allocObject();
      v84 = v367;
      v83[2] = v66;
      v83[3] = v84;
      v83[4] = v80;
      v375 = sub_1DD30AAC8;
      v376 = v83;
      v371 = MEMORY[0x1E69E9820];
      v372 = 1107296256;
      v373 = sub_1DD2811BC;
      v374 = &block_descriptor_24;
      v85 = _Block_copy(&v371);
      sub_1DD335860();
      sub_1DD335860();
      OUTLINED_FUNCTION_84_4();
      sub_1DD3363E0();
      v370 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_1_8();
      sub_1DD30B5E4(v86, v87, MEMORY[0x1E69E7F70]);
      v88 = OUTLINED_FUNCTION_51_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
      sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
      OUTLINED_FUNCTION_68_4();
      v72 = v368;
      v90 = v357;
      sub_1DD336B10();
      v91 = OUTLINED_FUNCTION_78_2();
      v92 = v326[0];
      MEMORY[0x1E12AC840](v91);
      v75 = &unk_1EE029000;
      _Block_release(v85);

      (*(v356 + 8))(&qword_1DD339620, v90);
      v93 = v69;
      v69 = MEMORY[0x1E69E7CC0];
      (*(v354 + 8))(v93, v355);
    }
  }

  if (v327)
  {

    OUTLINED_FUNCTION_98_2();
    v94 = v72;
    v95 = v367;
    if (v363)
    {
      if (v75[146] != -1)
      {
        OUTLINED_FUNCTION_2_4(&qword_1EE029490);
      }

      sub_1DD28191C(&unk_1EE02A6F0, &v371);
      v96 = v375;
      __swift_project_boxed_opaque_existential_1(&v371, v374);
      v97 = OUTLINED_FUNCTION_32_0();
      v99 = v98(v97, v96);
      __swift_destroy_boxed_opaque_existential_1(&v371);
      if (v99)
      {
        v100 = mach_absolute_time();
        sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
        v101 = v69;
        v102 = v351;
        OUTLINED_FUNCTION_106_1();
        v103();
        v369 = sub_1DD336A20();
        v104 = OUTLINED_FUNCTION_87_2();
        v105(v104);
        OUTLINED_FUNCTION_83();
        v106 = swift_allocObject();
        v106[2] = v66;
        v106[3] = v72;
        v106[4] = v100;
        v375 = sub_1DD30AA60;
        v376 = v106;
        v371 = MEMORY[0x1E69E9820];
        v372 = 1107296256;
        v373 = sub_1DD2811BC;
        v374 = &block_descriptor_12;
        v107 = _Block_copy(&v371);
        sub_1DD335860();
        v108 = OUTLINED_FUNCTION_88_3();
        sub_1DD2E059C(v108, v109);
        OUTLINED_FUNCTION_84_4();
        sub_1DD3363E0();
        v370 = v101;
        OUTLINED_FUNCTION_1_8();
        sub_1DD30B5E4(v110, v111, MEMORY[0x1E69E7F70]);
        v112 = OUTLINED_FUNCTION_41();
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(v112, v113);
        OUTLINED_FUNCTION_83_1();
        sub_1DD27F454(v115, v116, v117);
        OUTLINED_FUNCTION_68_4();
        v118 = v114;
        v95 = v367;
        OUTLINED_FUNCTION_100_1(v119, v118, v120);
        v121 = OUTLINED_FUNCTION_78_2();
        v122 = v369;
        MEMORY[0x1E12AC840](v121);
        _Block_release(v107);

        OUTLINED_FUNCTION_21();
        v123(v7, &qword_1DD339620);
        OUTLINED_FUNCTION_21();
        v124(v102, v355);
      }
    }

    sub_1DD335860();
    v125 = OUTLINED_FUNCTION_88_3();
    sub_1DD2E059C(v125, v126);
    v127 = sub_1DD335CB0();
    v128 = sub_1DD336950();

    v129 = OUTLINED_FUNCTION_88_3();
    sub_1DD2BED74(v129, v130);
    if (os_log_type_enabled(v127, v128))
    {
      v131 = OUTLINED_FUNCTION_50_2();
      v371 = OUTLINED_FUNCTION_49_1();
      *v131 = 136315394;
      v370 = v95;
      v132 = sub_1DD335DE0();
      OUTLINED_FUNCTION_7_8();
      sub_1DD30B5E4(v133, v134, MEMORY[0x1E69D2858]);
      v135 = sub_1DD336DC0();
      OUTLINED_FUNCTION_124_1(v135, v136);
      OUTLINED_FUNCTION_12_7();

      *(v131 + 4) = v132;
      *(v131 + 12) = 2080;
      swift_getErrorValue();
      v137 = sub_1DD336E40();
      OUTLINED_FUNCTION_124_1(v137, v138);
      OUTLINED_FUNCTION_12_7();

      *(v131 + 14) = v132;
      OUTLINED_FUNCTION_93_1();
      _os_log_impl(v139, v140, v141, v142, v143, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_52_0();
    }

    v144 = OUTLINED_FUNCTION_88_3();
    sub_1DD2BED74(v144, v145);
    OUTLINED_FUNCTION_35_7();
    *v7 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68F8, "6_");
    swift_storeEnumTagMultiPayload();
    v146 = &unk_1EE02A000;
    goto LABEL_120;
  }

  v147 = v367;
  sub_1DD335860();
  sub_1DD2E059C(v72, 0);
  v148 = sub_1DD335CB0();
  v149 = sub_1DD336940();

  if (os_log_type_enabled(v148, v149))
  {
    v150 = OUTLINED_FUNCTION_50();
    v151 = v7;
    v152 = OUTLINED_FUNCTION_31_0();
    v371 = v152;
    *v150 = 136315138;
    v370 = v147;
    sub_1DD335DE0();
    OUTLINED_FUNCTION_7_8();
    sub_1DD30B5E4(v153, v154, MEMORY[0x1E69D2858]);
    v155 = sub_1DD336DC0();
    v157 = OUTLINED_FUNCTION_124_1(v155, v156);

    *(v150 + 4) = v157;
    _os_log_impl(&dword_1DD27A000, v148, v149, "Successfully queried: %s", v150, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v152);
    v7 = v151;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_17_5();
  }

  v158 = v361;
  v159 = v348;
  v160 = v350;
  v161 = v349;
  v327 = swift_allocBox();
  v163 = v162;
  v72 = v368;
  v164 = sub_1DD287354(v368);
  v360 = v7;
  v326[0] = v163;
  if (v164 != 1)
  {
    if (!v164)
    {
      v165 = v66;
      OUTLINED_FUNCTION_98_2();
      v166 = *MEMORY[0x1E69D2988];
      v167 = *(v359 + 104);
      v168 = v163;
LABEL_37:
      v169 = v158;
      goto LABEL_38;
    }

    v348 = v164;
    if (v328)
    {
      sub_1DD335860();
      sub_1DD334E40();

      v182 = v339;
    }

    else
    {
      v182 = v339;
      __swift_storeEnumTagSinglePayload(v160, 1, 1, v339);
    }

    (*(v342 + 104))(v161, *MEMORY[0x1E69D1D00], v182);
    OUTLINED_FUNCTION_66_0();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v182);
    v191 = *(v338 + 48);
    v192 = OUTLINED_FUNCTION_115_1();
    sub_1DD27F164(v192, v159, &qword_1ECCD6EE0, &unk_1DD33ABC0);
    sub_1DD27F164(v161, v159 + v191, &qword_1ECCD6EE0, &unk_1DD33ABC0);
    OUTLINED_FUNCTION_122_1(v159);
    if (v194)
    {
      sub_1DD296084(v161, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      v193 = OUTLINED_FUNCTION_115_1();
      sub_1DD296084(v193, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      OUTLINED_FUNCTION_122_1(v159 + v191);
      v69 = MEMORY[0x1E69E7CC0];
      if (v194)
      {
        sub_1DD296084(v159, &qword_1ECCD6EE0, &unk_1DD33ABC0);
        goto LABEL_72;
      }
    }

    else
    {
      sub_1DD27F164(v159, v336, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      OUTLINED_FUNCTION_122_1(v159 + v191);
      v69 = MEMORY[0x1E69E7CC0];
      if (!v194)
      {
        v220 = v342;
        v221 = v159 + v191;
        v222 = v332;
        (*(v342 + 32))(v332, v221, v182);
        sub_1DD30B5E4(&qword_1ECCD6EE8, MEMORY[0x1E69D1D18], MEMORY[0x1E69D1D20]);
        OUTLINED_FUNCTION_41();
        LODWORD(v339) = sub_1DD336590();
        v223 = *(v220 + 8);
        v223(v222, v182);
        OUTLINED_FUNCTION_83_1();
        sub_1DD296084(v224, v225, v226);
        OUTLINED_FUNCTION_115_1();
        OUTLINED_FUNCTION_83_1();
        sub_1DD296084(v227, v228, v229);
        v223(v336, v182);
        v72 = v368;
        OUTLINED_FUNCTION_83_1();
        sub_1DD296084(v230, v231, v232);
        if (v339)
        {
LABEL_72:
          v367 = v66;
          v74 = sub_1DD287354(v72);
          v233 = 0;
          v234 = v72 & 0xC000000000000001;
          v7 = (v72 & 0xFFFFFFFFFFFFFF8);
          v72 = &qword_1ECCD6350;
          v66 = &unk_1DD3396F0;
          while (1)
          {
            if (v74 == v233)
            {
              v239 = 0;
              v66 = v367;
              v72 = v368;
              while (v74 != v239)
              {
                if (v234)
                {
                  v240 = MEMORY[0x1E12ACA60](v239, v72);
                }

                else
                {
                  if (v239 >= v7[2])
                  {
                    goto LABEL_129;
                  }

                  v240 = *(v72 + 8 * v239 + 32);
                }

                v241 = v240;
                if (__OFADD__(v239, 1))
                {
                  __break(1u);
LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

                v371 = v240;
                v242 = sub_1DD303E84(&v371, v72);

                if ((v242 & 1) == 0)
                {
                  v165 = v66;
                  OUTLINED_FUNCTION_98_2();
                  goto LABEL_103;
                }

                ++v239;
              }

              OUTLINED_FUNCTION_98_2();
              v371 = v69;
              OUTLINED_FUNCTION_80_2();
              if (v74 < 0)
              {
                __break(1u);
              }

              else
              {
                v243 = v335;
                v244 = v330;
                if (v74)
                {
                  v245 = 0;
                  v246 = v371;
                  do
                  {
                    if (v234)
                    {
                      v247 = OUTLINED_FUNCTION_94_2();
                      v248 = MEMORY[0x1E12ACA60](v247);
                    }

                    else
                    {
                      v248 = *(v72 + 8 * v245 + 32);
                    }

                    v249 = v248;
                    sub_1DD335F60();

                    v371 = v246;
                    v72 = *(v246 + 16);
                    v250 = *(v246 + 24);
                    v7 = (v72 + 1);
                    if (v72 >= v250 >> 1)
                    {
                      v253 = OUTLINED_FUNCTION_45(v250);
                      sub_1DD2D7A78(v253, v72 + 1, 1);
                      v246 = v371;
                    }

                    ++v245;
                    *(v246 + 16) = v7;
                    OUTLINED_FUNCTION_16_7();
                    (*(v252 + 32))(v246 + v251 + *(v252 + 72) * v72, v244, v243);
                    OUTLINED_FUNCTION_116_1();
                  }

                  while (!v194);
                  v165 = v66;
                  *v329 = v246;
                  OUTLINED_FUNCTION_40_8();
                  OUTLINED_FUNCTION_106_1();
                  v254();
                  v255 = OUTLINED_FUNCTION_38_7();
                  v256(v255);
                  goto LABEL_39;
                }
              }

              __break(1u);
              return;
            }

            if (v234)
            {
              v235 = MEMORY[0x1E12ACA60](v233, v368);
            }

            else
            {
              if (v233 >= v7[2])
              {
                goto LABEL_126;
              }

              v235 = v368[v233 + 4];
            }

            v236 = v235;
            if (__OFADD__(v233, 1))
            {
              __break(1u);
LABEL_126:
              __break(1u);
              goto LABEL_127;
            }

            v237 = v358;
            sub_1DD336040();

            v238 = sub_1DD335E60();
            if (__swift_getEnumTagSinglePayload(v237, 1, v238) == 1)
            {
              break;
            }

            sub_1DD296084(v237, &qword_1ECCD6350, &unk_1DD3396F0);
            ++v233;
          }

          OUTLINED_FUNCTION_98_2();
          sub_1DD296084(v237, &qword_1ECCD6350, &unk_1DD3396F0);
          v165 = v367;
          v72 = v368;
LABEL_103:
          v168 = OUTLINED_FUNCTION_17_10();
LABEL_38:
          v167(v168, v166, v169);
LABEL_39:
          v170 = v347;
          goto LABEL_116;
        }

LABEL_61:
        v198 = OUTLINED_FUNCTION_98_2();
        OUTLINED_FUNCTION_120_0(v198);
        v199 = v346;
        v7 = v66;
        v200 = v344;
        v201 = v343;
        v202 = *(v346 + 104);
        v202(v344, *MEMORY[0x1E69D28D8], v343);
        v203 = sub_1DD336110();
        v204 = *(v199 + 8);
        v204(v200, v201);
        v205 = OUTLINED_FUNCTION_111_1();
        v346 = v199 + 8;
        v206 = (v204)(v205);
        if ((v203 & 1) == 0)
        {
          goto LABEL_66;
        }

        OUTLINED_FUNCTION_59_3();
        if ((v72 & 0xC000000000000001) != 0)
        {
          goto LABEL_134;
        }

        for (i = *(v72 + 32); ; i = MEMORY[0x1E12ACA60](v324))
        {
          v208 = i;
          sub_1DD336050();
          v210 = v209;

          if (v210 < 0.04)
          {
            v165 = v7;
            v168 = OUTLINED_FUNCTION_17_10();
            v169 = v361;
            goto LABEL_38;
          }

LABEL_66:
          OUTLINED_FUNCTION_120_0(v206);
          v211 = v344;
          v202(v344, *MEMORY[0x1E69D28E0], v201);
          v212 = sub_1DD336110();
          v204(v211, v201);
          v213 = OUTLINED_FUNCTION_111_1();
          (v204)(v213);
          v214 = MEMORY[0x1E69E7CC0];
          if ((v212 & 1) == 0)
          {
            v204 = (v72 & 0xC000000000000001);
            OUTLINED_FUNCTION_59_3();
            if ((v72 & 0xC000000000000001) != 0)
            {
              v325 = OUTLINED_FUNCTION_66_5();
              v215 = MEMORY[0x1E12ACA60](v325);
            }

            else
            {
              v215 = *(v72 + 32);
            }

            v216 = v215;
            v212 = v204 == 0;
            sub_1DD336050();
            v218 = v217;

            sub_1DD2A34A0();
            v219 = v204 ? MEMORY[0x1E12ACA60](1, v72) : *(v72 + 40);
            v257 = v219;
            sub_1DD336050();
            v259 = v258;

            if (vabdd_f64(v218, v259) >= 0.001)
            {
              v165 = v7;
              if (v204)
              {
                v317 = OUTLINED_FUNCTION_66_5();
                v318 = MEMORY[0x1E12ACA60](v317);
              }

              else
              {
                v318 = *(v72 + 32);
              }

              v319 = v318;
              v170 = v347;
              v320 = v331;
              sub_1DD335F60();

              OUTLINED_FUNCTION_40_8();
              v321(v320);
              v186 = OUTLINED_FUNCTION_8_7();
              goto LABEL_50;
            }
          }

          v367 = v7;
          v371 = v214;
          OUTLINED_FUNCTION_80_2();
          if ((v212 & 0x8000000000000000) == 0)
          {
            break;
          }

          __break(1u);
LABEL_134:
          v324 = OUTLINED_FUNCTION_66_5();
        }

        v260 = 0;
        v261 = v371;
        v262 = v72 & 0xC000000000000001;
        v263 = v347;
        v264 = v335;
        v7 = v334;
        do
        {
          if (v262)
          {
            v265 = OUTLINED_FUNCTION_94_2();
            v266 = MEMORY[0x1E12ACA60](v265);
          }

          else
          {
            v266 = *(v72 + 8 * v260 + 32);
          }

          v267 = v266;
          sub_1DD335F60();

          v371 = v261;
          v72 = *(v261 + 16);
          v268 = *(v261 + 24);
          if (v72 >= v268 >> 1)
          {
            v271 = OUTLINED_FUNCTION_45(v268);
            sub_1DD2D7A78(v271, v72 + 1, 1);
            v261 = v371;
          }

          ++v260;
          *(v261 + 16) = v72 + 1;
          OUTLINED_FUNCTION_16_7();
          (*(v270 + 32))(v261 + v269 + *(v270 + 72) * v72, v7, v264);
          OUTLINED_FUNCTION_116_1();
        }

        while (!v194);
        v165 = v367;
        *v333 = v261;
        OUTLINED_FUNCTION_40_8();
        OUTLINED_FUNCTION_106_1();
        v272();
        v273 = OUTLINED_FUNCTION_38_7();
        v274(v273);
        v170 = v263;
        goto LABEL_116;
      }

      sub_1DD296084(v349, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      v195 = OUTLINED_FUNCTION_115_1();
      sub_1DD296084(v195, &qword_1ECCD6EE0, &unk_1DD33ABC0);
      OUTLINED_FUNCTION_21();
      v196 = OUTLINED_FUNCTION_8_7();
      v197(v196);
    }

    sub_1DD296084(v159, &qword_1ECCD6ED8, &qword_1DD33ABB8);
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_98_2();
  v171 = v345;
  sub_1DD335DD0();
  OUTLINED_FUNCTION_84_4();
  v7 = v66;
  v173 = v344;
  v174 = v343;
  (*(v172 + 104))(v344);
  v175 = sub_1DD336110();
  v176 = *(v160 + 8);
  v176(v173, v174);
  v176(v171, v174);
  v177 = v72 & 0xC000000000000001;
  if (v175)
  {
    OUTLINED_FUNCTION_59_3();
    if (v177)
    {
      v323 = OUTLINED_FUNCTION_66_5();
      v178 = MEMORY[0x1E12ACA60](v323);
    }

    else
    {
      v178 = *(v72 + 32);
    }

    v179 = v178;
    sub_1DD336050();
    v181 = v180;

    if (v181 < 0.04)
    {
      v165 = v7;
      v168 = OUTLINED_FUNCTION_17_10();
      goto LABEL_37;
    }
  }

  OUTLINED_FUNCTION_59_3();
  v165 = v7;
  if (v177)
  {
    v322 = OUTLINED_FUNCTION_66_5();
    v183 = MEMORY[0x1E12ACA60](v322);
  }

  else
  {
    v183 = *(v72 + 32);
  }

  v184 = v183;
  v170 = v347;
  v185 = v337;
  sub_1DD335F60();

  (*(v359 + 104))(v185, *MEMORY[0x1E69D2968], v158);
  v186 = OUTLINED_FUNCTION_38_7();
LABEL_50:
  v187(v186);
LABEL_116:
  sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
  v275 = v352;
  v276 = v351;
  v277 = v353;
  (*(v352 + 104))(v351, *MEMORY[0x1E69E7FA0], v353);
  v367 = sub_1DD336A20();
  (*(v275 + 8))(v276, v277);
  v278 = swift_allocObject();
  *(v278 + 16) = v327;
  *(v278 + 24) = v165;
  *(v278 + 32) = v363 & 1;
  *(v278 + 40) = v72;
  *(v278 + 48) = v170;
  v375 = sub_1DD30AA6C;
  v376 = v278;
  v371 = MEMORY[0x1E69E9820];
  v372 = 1107296256;
  OUTLINED_FUNCTION_24_5();
  v373 = v279;
  v374 = &block_descriptor_18;
  v280 = _Block_copy(&v371);
  sub_1DD335860();
  sub_1DD335860();
  OUTLINED_FUNCTION_84_4();
  sub_1DD3363E0();
  v370 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_8();
  sub_1DD30B5E4(v281, v282, MEMORY[0x1E69E7F70]);
  v283 = OUTLINED_FUNCTION_41();
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(v283, v284);
  OUTLINED_FUNCTION_83_1();
  sub_1DD27F454(v286, v287, v288);
  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_100_1(v289, v285, v290);
  v291 = OUTLINED_FUNCTION_78_2();
  v292 = v367;
  MEMORY[0x1E12AC840](v291);
  _Block_release(v280);

  OUTLINED_FUNCTION_21();
  v293(v7, &qword_1DD339620);
  OUTLINED_FUNCTION_21();
  v294(v165, v355);

  v295 = v369;

  sub_1DD335860();
  v296 = v165 + v362;
  v297 = sub_1DD335CB0();
  LOBYTE(v280) = sub_1DD336930();

  if (os_log_type_enabled(v297, v280))
  {
    v298 = OUTLINED_FUNCTION_50_2();
    v371 = OUTLINED_FUNCTION_49_1();
    *v298 = 136315394;
    sub_1DD27DBF0(v340, v295, &v371);
    OUTLINED_FUNCTION_45_5();

    *(v298 + 4) = v296;
    *(v298 + 12) = 2080;
    v299 = v326[0];
    OUTLINED_FUNCTION_106();
    swift_beginAccess();
    v300 = v359;
    v301 = v341;
    v302 = OUTLINED_FUNCTION_51_6();
    v303 = v361;
    v304(v302);
    sub_1DD30B5E4(&qword_1EE027A60, MEMORY[0x1E69D2990], MEMORY[0x1E69D29A0]);
    sub_1DD336DC0();
    (*(v300 + 8))(v301, v303);
    v305 = OUTLINED_FUNCTION_109_1();
    sub_1DD27DBF0(v305, v306, v307);
    OUTLINED_FUNCTION_45_5();

    *(v298 + 14) = v301;
    OUTLINED_FUNCTION_93_1();
    _os_log_impl(v308, v309, v310, v311, v312, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_9();
    OUTLINED_FUNCTION_52_0();

    sub_1DD2BED74(v368, 0);
    OUTLINED_FUNCTION_35_7();
    v146 = &unk_1EE02A000;
    v313 = v360;
  }

  else
  {

    sub_1DD2BED74(v72, 0);

    OUTLINED_FUNCTION_35_7();
    v146 = &unk_1EE02A000;
    v303 = v361;
    v300 = v359;
    v313 = v360;
    v299 = v326[0];
  }

  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  (*(v300 + 16))(v313, v299, v303);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68F8, "6_");
  swift_storeEnumTagMultiPayload();

LABEL_120:
  sub_1DD336A30();
  v314 = v146[77];
  OUTLINED_FUNCTION_34_6();
  sub_1DD335C80();

  v315 = OUTLINED_FUNCTION_109_1();
  v316(v315);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_1DD303C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DD334890();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-v10];
  v12 = sub_1DD335CB0();
  v13 = sub_1DD336940();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DD27A000, v12, v13, "Calling selfLogResolveStarted.", v14, 2u);
    MEMORY[0x1E12ADA30](v14, -1, -1);
  }

  v15 = sub_1DD335DC0();
  v16 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v17(v11, a1 + v16, v5);
  v18 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
  swift_beginAccess();
  v17(v9, a1 + v18, v5);
  v19 = selfLogResolveStarted(queryUsoEntity:rrID:timeStamp:requestId:)(v15, v11, a3, v9);

  v20 = *(v6 + 8);
  v20(v9, v5);
  return (v20)(v11, v5);
}

uint64_t sub_1DD303E84(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  sub_1DD336040();
  v9 = sub_1DD335E60();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1DD296084(v8, &qword_1ECCD6350, &unk_1DD3396F0);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_1DD335E40();
    v11 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  sub_1DD2A34A0();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1E12ACA60](0, a2);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  v14 = v13;
  sub_1DD336040();

  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    sub_1DD296084(v6, &qword_1ECCD6350, &unk_1DD3396F0);
    if (!v11)
    {
      goto LABEL_19;
    }

LABEL_16:
    v19 = 0;
LABEL_21:

    return v19 & 1;
  }

  v15 = sub_1DD335E40();
  v17 = v16;
  (*(*(v9 - 8) + 8))(v6, v9);
  if (v11)
  {
    if (v17)
    {
      if (v10 == v15 && v11 == v17)
      {

        v19 = 1;
      }

      else
      {
        v19 = sub_1DD336E00();
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v17)
  {
    v19 = 0;
    goto LABEL_21;
  }

LABEL_19:
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1DD3040FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v62 = a4;
  LODWORD(v65) = a3;
  v5 = sub_1DD334890();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v64 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v51 - v9;
  v11 = sub_1DD336250();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  swift_beginAccess();
  v16 = *(v12 + 16);
  v59 = v15;
  v58 = v12 + 16;
  v57 = v16;
  v16(v14, v15, v11);
  v17 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  swift_beginAccess();
  v18 = *(v6 + 16);
  v56 = v17;
  v55 = v18;
  v18(v10, a2 + v17, v5);
  v19 = sub_1DD334840();
  v21 = v20;
  v22 = *(v6 + 8);
  v63 = v5;
  v60 = v6 + 8;
  v54 = v22;
  v22(v10, v5);
  v23 = sub_1DD2BEEB8(v14, v19, v21);

  v24 = *(v12 + 8);
  v61 = v11;
  result = v24(v14, v11);
  if (v65)
  {
    if (qword_1EE029490 != -1)
    {
      swift_once();
    }

    sub_1DD28191C(&unk_1EE02A6F0, v68);
    v26 = v69;
    v27 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v28 = (*(v27 + 8))(v26, v27);
    result = __swift_destroy_boxed_opaque_existential_1(v68);
    if (v28)
    {
      v65 = mach_absolute_time();
      v29 = v63;
      v30 = v55;
      v55(v10, a2 + v56, v63);
      v31 = v30;
      v32 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
      v53 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
      swift_beginAccess();
      v31(v64, a2 + v32, v29);
      v67[0] = a2;
      v51[1] = type metadata accessor for SiriReferenceResolutionService(0);
      sub_1DD335860();
      v33 = sub_1DD336630();
      v35 = v34;
      v36 = v59;
      swift_beginAccess();
      v37 = v61;
      v57(v14, v36, v61);
      v38 = v64;
      v39 = sub_1DD2C7900(v62, v10, v64, v33, v35, v65);

      v24(v14, v37);
      v40 = v38;
      v41 = v63;
      v52 = v24;
      v42 = v54;
      v54(v38, v63);
      v42(v10, v41);
      v43 = v55;
      v55(v10, a2 + v56, v41);
      v43(v40, a2 + v53, v41);
      v66[0] = a2;
      sub_1DD335860();
      v44 = sub_1DD336630();
      v46 = v45;
      v47 = v59;
      swift_beginAccess();
      v48 = v61;
      v57(v14, v47, v61);
      v49 = v64;
      v50 = sub_1DD2C8B10(v62, v10, v64, v44, v46, v65);

      v52(v14, v48);
      v42(v49, v41);
      return (v42)(v10, v41);
    }
  }

  return result;
}

uint64_t sub_1DD3046F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD334890();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  v13 = sub_1DD335CB0();
  v14 = sub_1DD336940();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DD27A000, v13, v14, "Calling selfLogResolveFailed.", v15, 2u);
    MEMORY[0x1E12ADA30](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  swift_beginAccess();
  v17 = *(v7 + 16);
  v17(v12, a1 + v16, v6);
  v18 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
  swift_beginAccess();
  v17(v10, a1 + v18, v6);

  v19 = *(v7 + 8);
  v19(v10, v6);
  return (v19)(v12, v6);
}

uint64_t sub_1DD30490C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = sub_1DD336170();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_97_2();
  v13(v12, a1, v8);
  v14 = OUTLINED_FUNCTION_108_1();
  if (v15(v14) == *MEMORY[0x1E69D2930])
  {
    v16 = OUTLINED_FUNCTION_108_1();
    v17(v16);
    sub_1DD335DE0();
    OUTLINED_FUNCTION_59();
    swift_allocObject();
    sub_1DD335860();
    OUTLINED_FUNCTION_106();
    sub_1DD335DB0();
    v18 = sub_1DD336240();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v18);
    OUTLINED_FUNCTION_109_1();
    sub_1DD301B00();

    return sub_1DD296084(v7, &qword_1ECCD6348, &unk_1DD338E20);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_108_1();
    v21(v20);
    sub_1DD30AAD4();
    v22 = swift_allocError();
    *v23 = 1;
    *a2 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68F8, "6_");
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1DD304B44()
{
  OUTLINED_FUNCTION_4();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = sub_1DD335D10();
  v1[33] = v4;
  OUTLINED_FUNCTION_69_0(v4);
  v1[34] = v5;
  v1[35] = OUTLINED_FUNCTION_71();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta");
  OUTLINED_FUNCTION_36(v6);
  v1[36] = OUTLINED_FUNCTION_71();
  v7 = sub_1DD334890();
  v1[37] = v7;
  OUTLINED_FUNCTION_69_0(v7);
  v1[38] = v8;
  v1[39] = *(v9 + 64);
  v1[40] = OUTLINED_FUNCTION_125_1();
  v1[41] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v10);
  v1[42] = OUTLINED_FUNCTION_71();
  v11 = sub_1DD335D60();
  v1[43] = v11;
  OUTLINED_FUNCTION_69_0(v11);
  v1[44] = v12;
  v1[45] = OUTLINED_FUNCTION_125_1();
  v1[46] = swift_task_alloc();
  v13 = sub_1DD334830();
  v1[47] = v13;
  OUTLINED_FUNCTION_69_0(v13);
  v1[48] = v14;
  v1[49] = OUTLINED_FUNCTION_125_1();
  v1[50] = swift_task_alloc();
  v15 = sub_1DD335CA0();
  v1[51] = v15;
  OUTLINED_FUNCTION_69_0(v15);
  v1[52] = v16;
  v1[53] = OUTLINED_FUNCTION_125_1();
  v1[54] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1DD304DAC()
{
  OUTLINED_FUNCTION_64_4();
  if (v0[31])
  {
    v1 = v0[31];
  }

  else
  {
    v1 = *(v0[32] + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_pullers);
  }

  v0[55] = v1;
  v2 = qword_1EE027808;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = v0[32];
  v4 = qword_1EE02A210;
  sub_1DD335C90();
  sub_1DD336A40();
  v5 = qword_1EE02A210;
  sub_1DD335C80();

  sub_1DD334820();
  v6 = swift_task_alloc();
  v0[56] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_1DD304F64;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DD304F64()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DD305080(uint64_t a1)
{
  v111 = v1;
  sub_1DD336A30();
  if (qword_1EE027DB0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v2 = qword_1EE02A268;
    sub_1DD335C80();

    if (qword_1EE0277F0 != -1)
    {
      swift_once();
    }

    v3 = v1[32];
    v4 = qword_1EE02A208;
    sub_1DD335C90();
    sub_1DD336A40();
    v5 = qword_1EE02A208;
    OUTLINED_FUNCTION_113_1();
    sub_1DD335C80();

    sub_1DD334820();
    v6 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage;
    sub_1DD28191C(v3 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, (v1 + 2));
    v7 = v1[5];
    v8 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v7);
    OUTLINED_FUNCTION_61_4();
    v10 = v9(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);
    v97 = v6;
    v98 = v3;
    v11 = MEMORY[0x1E69E7CC0];
    v109 = MEMORY[0x1E69E7CC0];
    v106 = sub_1DD287354(v10);
    if (!v106)
    {
      break;
    }

    v12 = 0;
    v99 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker;
    v100 = v1[32];
    v104 = v10 & 0xC000000000000001;
    v95 = v10 & 0xFFFFFFFFFFFFFF8;
    v96 = (v1[44] + 8);
    v102 = v10;
    while (1)
    {
      if (v104)
      {
        v13 = MEMORY[0x1E12ACA60](v12, v10);
      }

      else
      {
        if (v12 >= *(v95 + 16))
        {
          goto LABEL_42;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = v1[49];
      sub_1DD28191C(v100 + v99, (v1 + 7));
      v17 = v1[10];
      v18 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v17);
      v19 = (*(v18 + 8))(v14, v16, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
      v20 = v14;
      v21 = sub_1DD335CB0();
      v22 = sub_1DD336940();

      v108 = v11;
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_50_2();
        v110[0] = OUTLINED_FUNCTION_49_1();
        *v23 = 136315394;
        v24 = sub_1DD336010();
        sub_1DD27DBF0(v24, v25, v110);
        OUTLINED_FUNCTION_126();

        *(v23 + 4) = v100;
        *(v23 + 12) = 2080;
        v26 = sub_1DD3368F0();
        sub_1DD27DBF0(v26, v27, v110);
        OUTLINED_FUNCTION_126();

        *(v23 + 14) = v100;
        _os_log_impl(&dword_1DD27A000, v21, v22, "Entity %s is assigned new saliency score %s", v23, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17_5();
        v11 = v108;
        OUTLINED_FUNCTION_54();
      }

      if (v19 >= 0.0025)
      {
        v34 = v1[47];
        sub_1DD336060();
        v35 = OUTLINED_FUNCTION_87_2();
        v36(v35);
        OUTLINED_FUNCTION_66_0();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
        sub_1DD335FA0();
        v40 = v20;
        MEMORY[0x1E12AC640]();
        v41 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v41 >> 1)
        {
          OUTLINED_FUNCTION_45(v41);
          sub_1DD336830();
        }

        v42 = v1[49];
        v43 = v1[45];
        sub_1DD336860();
        sub_1DD28191C(v98 + v97, (v1 + 12));
        v44 = v1[15];
        v45 = v1[16];
        __swift_project_boxed_opaque_existential_1(v1 + 12, v44);
        sub_1DD336020();
        (*(v45 + 32))(v43, v42, v44, v45, v19);
        (*v96)(v1[45], v1[43]);

        __swift_destroy_boxed_opaque_existential_1(v1 + 12);
        v11 = v108;
      }

      else
      {
        sub_1DD336020();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD2BBDD0();
          v11 = v46;
        }

        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        if (v29 >= v28 >> 1)
        {
          OUTLINED_FUNCTION_45(v28);
          sub_1DD2BBDD0();
          v11 = v47;
        }

        v30 = v1[46];
        v31 = v1[43];

        *(v11 + 16) = v29 + 1;
        OUTLINED_FUNCTION_16_7();
        (*(v33 + 32))(v11 + v32 + *(v33 + 72) * v29, v30, v31);
      }

      v10 = v102;
      ++v12;
      if (v15 == v106)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    OUTLINED_FUNCTION_12_8(&qword_1EE027DB0);
  }

LABEL_23:

  sub_1DD28191C(v98 + v97, (v1 + 17));
  v48 = v1[20];
  v49 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v48);
  (*(v49 + 56))(v11, 0, v48, v49);
  __swift_destroy_boxed_opaque_existential_1(v1 + 17);
  sub_1DD307A70();
  v107 = v50;

  if (qword_1EE029490 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_1EE029490);
  }

  sub_1DD28191C(&unk_1EE02A6F0, (v1 + 22));
  v51 = v1[25];
  v52 = v1[26];
  __swift_project_boxed_opaque_existential_1(v1 + 22, v51);
  OUTLINED_FUNCTION_61_4();
  v54 = v53(v51, v52);
  __swift_destroy_boxed_opaque_existential_1(v1 + 22);
  if ((v54 & 1) == 0)
  {
    goto LABEL_29;
  }

  v55 = mach_absolute_time();
  v56 = sub_1DD287354(v107);
  if ((v56 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v103 = v56;
  v105 = v55;
  if (!HIDWORD(v56))
  {
    v57 = v1[40];
    v58 = v1[41];
    v59 = v1[38];
    v101 = v1[39];
    v61 = v1[36];
    v60 = v1[37];
    v62 = v1[32];
    v63 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
    OUTLINED_FUNCTION_106();
    swift_beginAccess();
    v64 = *(v59 + 16);
    v64(v58, v62 + v63, v60);
    sub_1DD3368C0();
    sub_1DD3368E0();
    OUTLINED_FUNCTION_66_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    v64(v57, v58, v60);
    v69 = (*(v59 + 80) + 44) & ~*(v59 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    *(v70 + 32) = v62;
    *(v70 + 40) = v103;
    (*(v59 + 32))(v70 + v69, v57, v60);
    *(v70 + ((v101 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = v105;
    sub_1DD335860();
    sub_1DD2BDAC0(0, 0, v61, &unk_1DD33AC58, v70);

    (*(v59 + 8))(v58, v60);
LABEL_29:
    v71 = sub_1DD287354(v107);
    v72 = MEMORY[0x1E69E7CC0];
    if (!v71)
    {
      goto LABEL_38;
    }

    v73 = v71;
    v110[0] = MEMORY[0x1E69E7CC0];
    sub_1DD2D7A78(0, v71 & ~(v71 >> 63), 0);
    if ((v73 & 0x8000000000000000) == 0)
    {
      v74 = 0;
      v75 = v1[34];
      v72 = v110[0];
      do
      {
        if ((v107 & 0xC000000000000001) != 0)
        {
          v76 = MEMORY[0x1E12ACA60](v74, v107);
        }

        else
        {
          v76 = *(v107 + 8 * v74 + 32);
        }

        v77 = v76;
        sub_1DD335F60();

        v110[0] = v72;
        v79 = *(v72 + 16);
        v78 = *(v72 + 24);
        if (v79 >= v78 >> 1)
        {
          v81 = OUTLINED_FUNCTION_45(v78);
          sub_1DD2D7A78(v81, v79 + 1, 1);
          v72 = v110[0];
        }

        ++v74;
        *(v72 + 16) = v79 + 1;
        OUTLINED_FUNCTION_22_8();
        (*(v75 + 32))(v72 + v80 + *(v75 + 72) * v79);
      }

      while (v73 != v74);
LABEL_38:
      v110[0] = v72;

      sub_1DD30945C(v110);
      v82 = v1[53];
      v84 = v1[51];
      v83 = v1[52];
      v85 = v1[49];
      v86 = v1[47];
      v87 = v1[48];

      v88 = *(v87 + 8);
      v88(v85, v86);

      sub_1DD336A30();
      v89 = qword_1EE02A208;
      sub_1DD335C80();

      v90 = *(v83 + 8);
      v90(v82, v84);
      v91 = OUTLINED_FUNCTION_108_1();
      (v88)(v91);
      v92 = OUTLINED_FUNCTION_51_6();
      (v90)(v92);

      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_99_2();

      __asm { BRAA            X2, X16 }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_1DD305D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta");
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD305E00, 0, 0);
}

uint64_t sub_1DD305E00()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = sub_1DD3368E0();
    v21 = v4;
    do
    {
      v23 = v2;
      v5 = *(v0 + 136);
      v6 = *(v0 + 128);
      __swift_storeEnumTagSinglePayload(*(v0 + 144), 1, 1, v4);
      sub_1DD28191C(v3, v0 + 16);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      sub_1DD289CE4((v0 + 16), (v7 + 4));
      v7[9] = v6;
      v8 = OUTLINED_FUNCTION_41();
      sub_1DD27F164(v8, v9, &qword_1ECCD6858, "Ta");
      LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v4);
      sub_1DD335860();
      v10 = *(v0 + 136);
      if (v5 == 1)
      {
        v11 = OUTLINED_FUNCTION_51_6();
        sub_1DD296084(v11, v12, "Ta");
      }

      else
      {
        sub_1DD3368D0();
        (*(*(v4 - 8) + 8))(v10, v4);
      }

      if (v7[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_1DD336890();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v16 = swift_allocObject();
      *(v16 + 16) = &unk_1DD33AC80;
      *(v16 + 24) = v7;
      sub_1DD335860();
      if (v15 | v13)
      {
        v17 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v13;
        *(v0 + 80) = v15;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(v0 + 144);
      *(v0 + 88) = 1;
      *(v0 + 96) = v17;
      *(v0 + 104) = v22;
      swift_task_create();

      sub_1DD296084(v18, &qword_1ECCD6858, "Ta");
      v3 += 40;
      v2 = v23 - 1;
      v4 = v21;
    }

    while (v23 != 1);
  }

  OUTLINED_FUNCTION_3_5();

  return v19();
}

uint64_t sub_1DD3060E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = sub_1DD334830();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD3061A0, 0, 0);
}

uint64_t sub_1DD3061A0()
{
  OUTLINED_FUNCTION_64_4();
  v1 = v0[29];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1DD334820();
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1DD286CD0;
  v5 = v0[33];

  return v7(v5, v2, v3);
}

uint64_t sub_1DD3062E0()
{
  v18 = v0;
  v1 = v0;
  v2 = *(v0 + 288);
  sub_1DD28191C(*(v0 + 232), v0 + 16);
  v3 = v2;
  v4 = sub_1DD335CB0();
  v5 = sub_1DD336950();

  if (os_log_type_enabled(v4, v5))
  {
    v16 = *(v0 + 288);
    v6 = OUTLINED_FUNCTION_50_2();
    v17 = OUTLINED_FUNCTION_49_1();
    *v6 = 136315394;
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 184) = swift_getDynamicType();
    *(v0 + 192) = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F18, &unk_1DD33AC90);
    v7 = sub_1DD336630();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v10 = sub_1DD27DBF0(v7, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_1DD336E40();
    v13 = sub_1DD27DBF0(v11, v12, &v17);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_1DD27A000, v4, v5, "Failed to pull entities from %s error: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_17_5();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1DD306508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 88) = a5;
  *(v7 + 40) = a4;
  v8 = sub_1DD334890();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD3065D0, 0, 0);
}

uint64_t sub_1DD3065D0(uint64_t a1)
{
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v3))
  {
    v4 = *(v1 + 88);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = v4;
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    OUTLINED_FUNCTION_28_1();
  }

  v12 = *(v1 + 72);
  v11 = *(v1 + 80);
  v14 = *(v1 + 56);
  v13 = *(v1 + 64);
  v15 = *(v1 + 88);
  v17 = *(v1 + 40);
  v16 = *(v1 + 48);

  v18 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  OUTLINED_FUNCTION_97_2();
  v19(v11, v17 + v18, v13);

  (*(v12 + 8))(v11, v13);

  OUTLINED_FUNCTION_3_5();

  return v20();
}

uint64_t sub_1DD306728()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_81();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_71_6();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD306834()
{
  OUTLINED_FUNCTION_64_4();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1DD336A30();
  v4 = qword_1EE02A1E0;
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_75_5();
  sub_1DD335C80();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_47_0();
  v6 = v0[9];

  return v5(v6);
}

uint64_t sub_1DD3068FC()
{
  OUTLINED_FUNCTION_64_4();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1DD336A30();
  v4 = qword_1EE02A1E0;
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_75_5();
  sub_1DD335C80();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3_5();

  return v5();
}

uint64_t sub_1DD3069DC()
{
  OUTLINED_FUNCTION_4();
  type metadata accessor for RRContextKitPuller(0);
  OUTLINED_FUNCTION_59();
  swift_allocObject();
  *(v0 + 16) = RRContextKitPuller.init()();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DD306A84;

  return sub_1DD2B1A90();
}

uint64_t sub_1DD306A84()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  OUTLINED_FUNCTION_81();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v5 + 32) = v0;

  if (!v0)
  {
    *(v5 + 40) = v3;
  }

  OUTLINED_FUNCTION_71_6();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD306B90()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_47_0();
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_1DD306BF0()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_3_5();

  return v0();
}

void sub_1DD306C4C()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  sub_1DD335D10();
  OUTLINED_FUNCTION_1_0();
  v80 = v4;
  v81 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  sub_1DD3363A0();
  OUTLINED_FUNCTION_1_0();
  v77 = v10;
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v13 = (v12 - v11);
  sub_1DD336420();
  OUTLINED_FUNCTION_1_0();
  v75 = v15;
  v76 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v72 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32_1();
  v73 = v18;
  OUTLINED_FUNCTION_31_1();
  sub_1DD3363C0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_2();
  v71[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v22 = OUTLINED_FUNCTION_69_0(v21);
  v71[0] = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v71 - v24;
  v79 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
  v26 = sub_1DD335CB0();
  v27 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v27))
  {
    v28 = OUTLINED_FUNCTION_69();
    *v28 = 0;
    _os_log_impl(&dword_1DD27A000, v26, v27, "starting retrieveSalientEntities", v28, 2u);
    OUTLINED_FUNCTION_54();
  }

  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E7CC0];
  *(v29 + 16) = MEMORY[0x1E69E7CC0];
  v74 = (v29 + 16);
  sub_1DD27F164(v3, v25, &qword_1ECCD6348, &unk_1DD338E20);
  v31 = (*(v71[0] + 80) + 32) & ~*(v71[0] + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v1;
  sub_1DD281C60(v25, v32 + v31);
  v83[4] = sub_1DD30AB28;
  v83[5] = v32;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 1107296256;
  v83[2] = sub_1DD2811BC;
  v83[3] = &block_descriptor_37;
  _Block_copy(v83);
  v82 = v30;
  OUTLINED_FUNCTION_1_8();
  sub_1DD30B5E4(v33, v34, MEMORY[0x1E69E7F70]);
  v71[0] = v29;
  sub_1DD335860();
  sub_1DD335860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
  sub_1DD27F454(&qword_1EE027ED0, &qword_1ECCD6710, &qword_1DD339620);
  sub_1DD336B10();
  sub_1DD336460();
  OUTLINED_FUNCTION_59();
  swift_allocObject();
  OUTLINED_FUNCTION_32_0();
  v35 = sub_1DD336440();

  if (qword_1EE027E78 != -1)
  {
    OUTLINED_FUNCTION_36_7(&qword_1EE027E78);
  }

  sub_1DD336A00();
  v36 = v72;
  sub_1DD336410();
  *v13 = 150;
  (*(v77 + 104))(v13, *MEMORY[0x1E69E7F38], v78);
  MEMORY[0x1E12AC2C0](v36, v13);
  v37 = OUTLINED_FUNCTION_87_2();
  v38(v37);
  v39 = *(v75 + 8);
  v39(v36, v76);
  sub_1DD336430();
  v40 = OUTLINED_FUNCTION_109_1();
  (v39)(v40);
  v41 = sub_1DD3363B0();
  v42 = v74;
  if (v41)
  {
    v43 = sub_1DD335CB0();
    v44 = sub_1DD336950();
    if (OUTLINED_FUNCTION_17_0(v44))
    {
      *OUTLINED_FUNCTION_69() = 0;
      OUTLINED_FUNCTION_30_4();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_15_9();
    }
  }

  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  if (!sub_1DD287354(*v42))
  {
    goto LABEL_22;
  }

  v50 = sub_1DD335CB0();
  v51 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v51))
  {
    *OUTLINED_FUNCTION_69() = 0;
    OUTLINED_FUNCTION_30_4();
    _os_log_impl(v52, v53, v54, v55, v56, 2u);
    OUTLINED_FUNCTION_15_9();
  }

  v57 = *v42;
  v58 = sub_1DD287354(*v42);
  if (!v58)
  {
LABEL_22:

LABEL_23:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v59 = v58;
  v82 = MEMORY[0x1E69E7CC0];
  v60 = v58 & ~(v58 >> 63);

  sub_1DD2D7A78(0, v60, 0);
  if ((v59 & 0x8000000000000000) == 0)
  {
    v79 = v35;
    v61 = 0;
    v62 = v82;
    do
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x1E12ACA60](v61, v57);
      }

      else
      {
        v63 = *(v57 + 8 * v61 + 32);
      }

      v64 = v63;
      sub_1DD335F60();

      v82 = v62;
      v65 = v8;
      v67 = *(v62 + 16);
      v66 = *(v62 + 24);
      if (v67 >= v66 >> 1)
      {
        v70 = OUTLINED_FUNCTION_45(v66);
        sub_1DD2D7A78(v70, v67 + 1, 1);
        v62 = v82;
      }

      ++v61;
      *(v62 + 16) = v67 + 1;
      OUTLINED_FUNCTION_16_7();
      (*(v69 + 32))(v62 + v68 + *(v69 + 72) * v67, v65);
      v8 = v65;
    }

    while (v59 != v61);

    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_1DD30735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD307680();
  sub_1DD307A70();
  v5 = v4;

  swift_beginAccess();
  *(a1 + 16) = v5;
}

uint64_t sub_1DD30751C()
{
  v2 = v0;
  sub_1DD3345D0();
  OUTLINED_FUNCTION_59();
  v3 = swift_allocObject();
  sub_1DD3345C0();
  sub_1DD28191C(v2 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  OUTLINED_FUNCTION_61_4();
  v7 = v6(v4, v5);
  if (v1)
  {
  }

  else
  {
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
    sub_1DD30B54C(&qword_1ECCD6F38, &qword_1ECCD6F40, MEMORY[0x1E69D28A8]);
    v3 = sub_1DD3345B0();
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v3;
}

uint64_t sub_1DD307680()
{
  v1 = sub_1DD30771C();
  if (v1)
  {
    return v1;
  }

  sub_1DD28191C(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  OUTLINED_FUNCTION_61_4();
  v2 = v5(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v2;
}

uint64_t sub_1DD30771C()
{
  sub_1DD335750();
  if (sub_1DD335730() && (type metadata accessor for ScopedReferenceResolutionDataProvider(), sub_1DD30B5E4(&qword_1EE0279F0, type metadata accessor for ScopedReferenceResolutionDataProvider, &protocol conformance descriptor for ScopedReferenceResolutionDataProvider), sub_1DD335760(), , sub_1DD2A84C8(), v1 = v0, , v1 >> 60 != 15))
  {
    sub_1DD3345A0();
    OUTLINED_FUNCTION_59();
    swift_allocObject();
    sub_1DD334590();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
    sub_1DD30B54C(&qword_1ECCD6F00, &qword_1ECCD6F08, MEMORY[0x1E69D28B0]);
    OUTLINED_FUNCTION_8_7();
    sub_1DD334580();

    v6 = v18;

    v7 = sub_1DD335CB0();
    v8 = sub_1DD336940();
    if (OUTLINED_FUNCTION_17_0(v8))
    {
      v9 = OUTLINED_FUNCTION_50();
      *v9 = 134217984;
      *(v9 + 4) = sub_1DD287354(v18);

      OUTLINED_FUNCTION_30_4();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      OUTLINED_FUNCTION_15_9();
    }

    else
    {
    }

    v15 = OUTLINED_FUNCTION_112();
    sub_1DD28B488(v15, v16);
  }

  else
  {
    v2 = sub_1DD335CB0();
    sub_1DD336940();
    OUTLINED_FUNCTION_90_3();
    if (os_log_type_enabled(v2, v3))
    {
      *OUTLINED_FUNCTION_69() = 0;
      OUTLINED_FUNCTION_3(&dword_1DD27A000, v4, v5, "No reference resolution data found in Siri Environment");
      OUTLINED_FUNCTION_28_1();
    }

    return 0;
  }

  return v6;
}

void sub_1DD307A70()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  sub_1DD27F164(v1, v24 - v6, &qword_1ECCD6348, &unk_1DD338E20);
  sub_1DD336240();
  v8 = OUTLINED_FUNCTION_12_7();
  if (__swift_getEnumTagSinglePayload(v8, 1, &unk_1DD338E20) == 1)
  {
    sub_1DD296084(v7, &qword_1ECCD6348, &unk_1DD338E20);
    goto LABEL_22;
  }

  v9 = sub_1DD336230();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_41();
  v13(v12);
  if (!v11)
  {
LABEL_22:

LABEL_24:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v24[1] = MEMORY[0x1E69E7CC0];
  v14 = sub_1DD287354(v3);
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      goto LABEL_24;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v23 = OUTLINED_FUNCTION_87_2();
      v16 = MEMORY[0x1E12ACA60](v23);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v18 = sub_1DD336070();
    if (!v19)
    {
      goto LABEL_16;
    }

    if (v18 == v9 && v19 == v11)
    {

      goto LABEL_19;
    }

    v21 = sub_1DD336E00();

    if ((v21 & 1) == 0)
    {
LABEL_16:
      sub_1DD336070();
      if (v22)
      {

        continue;
      }
    }

LABEL_19:
    sub_1DD336C50();
    sub_1DD336C70();
    sub_1DD336C80();
    sub_1DD336C60();
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1DD307CA0()
{
  OUTLINED_FUNCTION_23_0();
  v4 = v0;
  v32 = v5;
  v31 = sub_1DD335D60();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  if (qword_1EE029490 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_1EE029490);
  }

  sub_1DD28191C(&unk_1EE02A6F0, v33);
  v7 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v8 = OUTLINED_FUNCTION_45_5();
  v10 = v9(v8, v7);
  __swift_destroy_boxed_opaque_existential_1(v33);
  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = sub_1DD287354(v32);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
LABEL_14:

    v20 = sub_1DD335CB0();
    v21 = sub_1DD336940();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_50();
      v23 = OUTLINED_FUNCTION_31_0();
      v33[0] = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x1E12AC670](v12, v31);
      v26 = sub_1DD27DBF0(v24, v25, v33);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1DD27A000, v20, v21, "Adding annotated entities for Curare: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_19_4();
    }

    sub_1DD28191C(v4 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v33);
    v27 = v34;
    v28 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    OUTLINED_FUNCTION_62_3();
    (*(v29 + 24))(v32, v27, v28);

    __swift_destroy_boxed_opaque_existential_1(v33);
LABEL_17:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  OUTLINED_FUNCTION_79_3(v11);
  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_58_5();
    do
    {
      if (v1)
      {
        MEMORY[0x1E12ACA60](v2, v32);
      }

      else
      {
        v13 = *(v32 + 8 * v2 + 32);
      }

      OUTLINED_FUNCTION_62_3();
      sub_1DD336020();

      OUTLINED_FUNCTION_104_1();
      if (v15)
      {
        v19 = OUTLINED_FUNCTION_45(v14);
        v10 = v33;
        sub_1DD2D7AB8(v19, v3, 1);
        v12 = v33[0];
      }

      ++v2;
      *(v12 + 16) = v3;
      OUTLINED_FUNCTION_22_8();
      v17 = OUTLINED_FUNCTION_60_5(v16);
      v18(v17);
    }

    while (v7 != v2);
    v4 = v30;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1DD308040()
{
  OUTLINED_FUNCTION_23_0();
  v4 = v0;
  v33 = v5;
  sub_1DD335D60();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  if (qword_1EE029490 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_1EE029490);
  }

  sub_1DD28191C(&unk_1EE02A6F0, v34);
  v9 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v10 = OUTLINED_FUNCTION_45_5();
  v12 = v11(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(v34);
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  v13 = sub_1DD287354(v33);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
LABEL_14:

    v22 = sub_1DD335CB0();
    v23 = sub_1DD336940();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_50();
      v24 = OUTLINED_FUNCTION_49_5();
      v34[0] = v24;
      OUTLINED_FUNCTION_102_1(4.8149e-34);
      v27 = sub_1DD27DBF0(v25, v26, v34);

      *(v7 + 4) = v27;
      OUTLINED_FUNCTION_31_7(&dword_1DD27A000, v28, v23, "Removing annotated entities for Curare: %s");
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_19_4();
      OUTLINED_FUNCTION_15_9();
    }

    sub_1DD28191C(v4 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v34);
    v29 = v35;
    v30 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    OUTLINED_FUNCTION_62_3();
    (*(v31 + 56))(v14, 0, v29, v30);

    __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_17:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  OUTLINED_FUNCTION_79_3(v13);
  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_58_5();
    do
    {
      if (v1)
      {
        MEMORY[0x1E12ACA60](v2, v33);
      }

      else
      {
        v15 = *(v33 + 8 * v2 + 32);
      }

      OUTLINED_FUNCTION_62_3();
      sub_1DD336020();

      OUTLINED_FUNCTION_104_1();
      if (v17)
      {
        v21 = OUTLINED_FUNCTION_45(v16);
        v12 = v34;
        sub_1DD2D7AB8(v21, v3, 1);
        v14 = v34[0];
      }

      ++v2;
      *(v14 + 16) = v3;
      OUTLINED_FUNCTION_22_8();
      v19 = OUTLINED_FUNCTION_60_5(v18);
      v20(v19);
    }

    while (v9 != v2);
    v4 = v32;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1DD3083C4()
{
  v1 = v0;
  if (qword_1EE029490 != -1)
  {
    OUTLINED_FUNCTION_2_4(&qword_1EE029490);
  }

  sub_1DD28191C(&unk_1EE02A6F0, v10);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v2 = OUTLINED_FUNCTION_8_7();
  v4 = v3(v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD28191C(v1 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  OUTLINED_FUNCTION_61_4();
  v8 = v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

void sub_1DD30852C(double a1)
{
  sub_1DD27D80C(0, &qword_1EE027510, 0x1E695DFF0);
  OUTLINED_FUNCTION_126();
  sub_1DD335860();
  v3 = sub_1DD3086C0(1, sub_1DD30B0A4, v1, a1);
  [v3 setTolerance_];
  v4 = [objc_opt_self() mainRunLoop];
  [v4 addTimer:v3 forMode:*MEMORY[0x1E695DA28]];
}

void sub_1DD308618(uint64_t a1)
{
  v1 = sub_1DD335CB0();
  v2 = sub_1DD336940();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD27A000, v1, v2, "Timer fired!", v3, 2u);
    MEMORY[0x1E12ADA30](v3, -1, -1);
  }

  sub_1DD308790();
}

id sub_1DD3086C0(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DD29AA08;
  v9[3] = &block_descriptor_54_0;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

void sub_1DD308790()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_1DD335D60();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_2();
  v50 = v5;
  OUTLINED_FUNCTION_31_1();
  v51 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v49 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage;
  sub_1DD28191C(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage, v54);
  __swift_project_boxed_opaque_existential_1(v54, v55);
  OUTLINED_FUNCTION_61_4();
  v12 = OUTLINED_FUNCTION_94_2();
  v14 = v13(v12);
  v53 = v1;
  v47 = v11;
  __swift_destroy_boxed_opaque_existential_1(v54);
  v48 = v0;
  sub_1DD28191C(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker, v54);
  v15 = v55;
  v16 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  sub_1DD334820();
  OUTLINED_FUNCTION_97_2();
  v46 = v14;
  v18 = v17(v14, v10, v15, v16);
  (*(v49 + 8))(v10, v51);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v54[0] = MEMORY[0x1E69E7CC0];
  v19 = sub_1DD287354(v18);
  v20 = 0;
  v21 = v50;
  while (v19 != v20)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1E12ACA60](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v22 = *(v18 + 8 * v20 + 32);
    }

    v23 = v22;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    sub_1DD336050();
    if (v24 >= 0.0025)
    {
    }

    else
    {
      sub_1DD336C50();
      sub_1DD336C70();
      sub_1DD336C80();
      sub_1DD336C60();
    }

    ++v20;
  }

  v25 = v54[0];
  v26 = sub_1DD287354(v54[0]);
  if (v26)
  {
    v27 = v26;
    v54[0] = MEMORY[0x1E69E7CC0];
    sub_1DD2D7AB8(0, v26 & ~(v26 >> 63), 0);
    v52 = v27;
    if (v27 < 0)
    {
      goto LABEL_29;
    }

    v28 = 0;
    v29 = v54[0];
    v30 = v25 & 0xC000000000000001;
    v31 = v25;
    do
    {
      if (v30)
      {
        v32 = OUTLINED_FUNCTION_112();
        MEMORY[0x1E12ACA60](v32);
      }

      else
      {
        v33 = *(v25 + 8 * v28 + 32);
      }

      OUTLINED_FUNCTION_62_3();
      sub_1DD336020();

      v54[0] = v29;
      v34 = v21;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = OUTLINED_FUNCTION_45(v35);
        sub_1DD2D7AB8(v38, v36 + 1, 1);
        v29 = v54[0];
      }

      ++v28;
      *(v29 + 16) = v36 + 1;
      OUTLINED_FUNCTION_22_8();
      (*(v3 + 32))(v29 + v37 + *(v3 + 72) * v36, v34, v53);
      v21 = v34;
      v25 = v31;
    }

    while (v52 != v28);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v39 = v0;
  v40 = sub_1DD335CB0();
  v41 = sub_1DD336940();
  if (OUTLINED_FUNCTION_17_0(v41))
  {
    v42 = OUTLINED_FUNCTION_50_2();
    *v42 = 134218240;
    v43 = sub_1DD287354(v46);

    *(v42 + 4) = v43;
    v39 = v48;

    *(v42 + 12) = 2048;
    *(v42 + 14) = *(v29 + 16);

    _os_log_impl(&dword_1DD27A000, v40, v41, "Total %ld entities remaining, about to evict %ld entities", v42, 0x16u);
    OUTLINED_FUNCTION_39_7();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_1DD28191C(v39 + v47, v54);
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v44 = OUTLINED_FUNCTION_88_3();
  v45(v44);

  __swift_destroy_boxed_opaque_existential_1(v54);
  OUTLINED_FUNCTION_9_0();
}

uint64_t SiriReferenceResolutionService.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_rrID;
  v4 = sub_1DD334890();
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_requestId, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_storage));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution30SiriReferenceResolutionService_ranker));

  return v0;
}

uint64_t SiriReferenceResolutionService.__deallocating_deinit()
{
  SiriReferenceResolutionService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1DD308F74()
{
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_30_2();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_69_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v6(0);
  OUTLINED_FUNCTION_22_8();
  if (v10)
  {
    v4(v8 + v25, v15, v22 + v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_24_1();
}

void sub_1DD30910C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_6_0(), v8 == v9))
  {
LABEL_6:
    OUTLINED_FUNCTION_70_4();
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6828, &unk_1DD339920);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v4;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (a1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_69_5();
        sub_1DD2BC1AC(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6830, &qword_1DD33ACA0);
    OUTLINED_FUNCTION_56_6(v15);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_2();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DD3091F0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_6_0(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_70_4();
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F28, &qword_1DD33ACB8);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_82_1(v10);
      if (a1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_69_5();
        sub_1DD2BC1D4(v11, v12, v13);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F30, &unk_1DD33ACC0);
    OUTLINED_FUNCTION_56_6(v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1DD3092BC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_6_0(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_70_4();
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6F20, &unk_1DD33ACA8);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_82_1(v10);
      if (a1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_69_5();
        sub_1DD2BC1D4(v11, v12, v13);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65F0, &qword_1DD3392F0);
    OUTLINED_FUNCTION_56_6(v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_1();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1DD309388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD336E00() & 1;
  }
}

uint64_t sub_1DD3093CC(uint64_t a1, uint64_t a2)
{
  sub_1DD335CE0();
  sub_1DD30B5E4(&qword_1EE0275D8, MEMORY[0x1E69D2800], MEMORY[0x1E69D2818]);
  return sub_1DD336590() & 1;
}

uint64_t sub_1DD30945C(uint64_t *a1)
{
  v2 = *(sub_1DD335D10() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD30A9EC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1DD309504(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1DD309504(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD336DA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DD335D10();
        v6 = sub_1DD336850();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DD335D10() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1DD3098CC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1DD309634(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD309634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DD335D10();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v40 = v19;
      v41 = a3;
      v38 = v21;
      v39 = v20;
      v22 = v20;
      v23 = v19;
      do
      {
        v24 = v48;
        v25 = v46;
        v46(v48, v21, v8);
        v26 = v49;
        v25(v49, v23, v8);
        sub_1DD335CF0();
        v28 = v27;
        sub_1DD335CF0();
        v30 = v29;
        v31 = *v18;
        (*v18)(v26, v8);
        result = v31(v24, v8);
        if (v30 >= v28)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return result;
        }

        v32 = *v43;
        v33 = v45;
        (*v43)(v45, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v32)(v23, v33, v8);
        v23 += v42;
        v21 += v42;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v41 + 1;
      v19 = v40 + v36;
      v20 = v39 - 1;
      v21 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD3098CC(char **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v130 = a1;
  v6 = sub_1DD335D10();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v133 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v143 = &v128 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v149 = &v128 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v148 = &v128 - v14;
  v138 = v13;
  v139 = a3;
  v15 = *(a3 + 8);
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v149 = *v130;
    if (!v149)
    {
      goto LABEL_145;
    }

    a3 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v141;
    if (isUniquelyReferenced_nonNull_native)
    {
      v120 = a3;
LABEL_106:
      a3 = (v120 + 16);
      v121 = *(v120 + 2);
      while (v121 >= 2)
      {
        if (!*v139)
        {
          goto LABEL_142;
        }

        v122 = v120;
        v123 = &v120[16 * v121];
        v124 = *v123;
        v125 = (a3 + 16 * v121);
        v126 = v125[1];
        sub_1DD30A2B4(&(*v139)[*(v138 + 72) * *v123], &(*v139)[*(v138 + 72) * *v125], &(*v139)[*(v138 + 72) * v126], v149);
        if (v16)
        {
          break;
        }

        if (v126 < v124)
        {
          goto LABEL_130;
        }

        if (v121 - 2 >= *a3)
        {
          goto LABEL_131;
        }

        *v123 = v124;
        *(v123 + 1) = v126;
        v127 = *a3 - v121;
        if (*a3 < v121)
        {
          goto LABEL_132;
        }

        v121 = *a3 - 1;
        memmove(v125, v125 + 2, 16 * v127);
        *a3 = v121;
        v120 = v122;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v120 = sub_1DD30A7CC(a3);
    goto LABEL_106;
  }

  v128 = a4;
  v16 = 0;
  v146 = (v13 + 8);
  v147 = v13 + 16;
  v145 = (v13 + 32);
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v19 = v18;
      v20 = *(v13 + 72);
      v21 = &(*v139)[v20 * v16];
      v144 = *v139;
      v22 = v144;
      v23 = *(v13 + 16);
      v24 = v148;
      v137 = v17;
      v140 = v15;
      v23(v148, &v144[v20 * v16], v6);
      v25 = &v22[v20 * v18];
      v26 = v149;
      v136 = v23;
      v23(v149, v25, v6);
      sub_1DD335CF0();
      v28 = v27;
      sub_1DD335CF0();
      v30 = v29;
      v31 = *(v138 + 8);
      v32 = v26;
      a3 = v146;
      v31(v32, v6);
      v135 = v31;
      v31(v24, v6);
      v33 = v140;
      v17 = v137;
      v129 = v19;
      v34 = v19 + 2;
      v142 = v20;
      v35 = &v144[v20 * (v19 + 2)];
      while (1)
      {
        v36 = v34;
        v37 = v16 + 1;
        if (v37 >= v33)
        {
          break;
        }

        LODWORD(v144) = v30 < v28;
        v38 = v148;
        v39 = v136;
        (v136)(v148, v35, v6, v17);
        v40 = v37;
        v41 = v149;
        v39(v149, v21, v6);
        sub_1DD335CF0();
        v43 = v42;
        sub_1DD335CF0();
        v45 = v44;
        v46 = v41;
        v16 = v40;
        a3 = v146;
        v47 = v135;
        (v135)(v46, v6);
        v47(v38, v6);
        v33 = v140;
        v17 = v137;
        v35 = &v142[v35];
        v21 += v142;
        v34 = v36 + 1;
        if (((v144 ^ (v45 >= v43)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = v33;
LABEL_9:
      if (v30 >= v28)
      {
        v13 = v138;
      }

      else
      {
        v18 = v129;
        if (v16 < v129)
        {
          goto LABEL_136;
        }

        if (v129 >= v16)
        {
          v13 = v138;
          goto LABEL_32;
        }

        if (v33 >= v36)
        {
          v48 = v36;
        }

        else
        {
          v48 = v33;
        }

        a3 = v142 * (v48 - 1);
        v49 = v129;
        v50 = v142 * v48;
        v51 = v129 * v142;
        v52 = v16;
        do
        {
          if (v49 != --v52)
          {
            v53 = *v139;
            if (!*v139)
            {
              goto LABEL_143;
            }

            v144 = *v145;
            (v144)(v133, &v53[v51], v6, v17);
            v54 = v51 < a3 || &v53[v51] >= &v53[v50];
            if (v54)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v144)(&v53[a3], v133, v6);
          }

          ++v49;
          a3 -= v142;
          v50 -= v142;
          v51 += v142;
        }

        while (v49 < v52);
        v17 = v137;
        v13 = v138;
      }

      v18 = v129;
    }

LABEL_32:
    v55 = v139[1];
    if (v16 < v55)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_135;
      }

      if (v16 - v18 < v128)
      {
        break;
      }
    }

LABEL_48:
    if (v16 < v18)
    {
      goto LABEL_134;
    }

    v74 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v74;
    }

    else
    {
      sub_1DD2BBCF8(0, *(v74 + 16) + 1, 1, v74);
      v17 = v117;
    }

    a3 = *(v17 + 16);
    v75 = *(v17 + 24);
    v76 = a3 + 1;
    if (a3 >= v75 >> 1)
    {
      sub_1DD2BBCF8(v75 > 1, a3 + 1, 1, v17);
      v17 = v118;
    }

    *(v17 + 16) = v76;
    v77 = v17 + 32;
    v78 = (v17 + 32 + 16 * a3);
    *v78 = v18;
    v78[1] = v16;
    v144 = *v130;
    if (!v144)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v140 = v16;
      while (1)
      {
        v79 = v76 - 1;
        v80 = (v77 + 16 * (v76 - 1));
        v81 = (v17 + 16 * v76);
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v82 = *(v17 + 32);
          v83 = *(v17 + 40);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_69:
          if (v85)
          {
            goto LABEL_121;
          }

          v97 = *v81;
          v96 = v81[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_124;
          }

          v101 = v80[1];
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_129;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v76 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v76 < 2)
        {
          goto LABEL_123;
        }

        v104 = *v81;
        v103 = v81[1];
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_84:
        if (v100)
        {
          goto LABEL_126;
        }

        v106 = *v80;
        v105 = v80[1];
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_128;
        }

        if (v107 < v99)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v79 - 1 >= v76)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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

        if (!*v139)
        {
          goto LABEL_141;
        }

        v16 = v17;
        a3 = v77 + 16 * (v79 - 1);
        v111 = *a3;
        v112 = v79;
        v113 = (v77 + 16 * v79);
        v114 = v113[1];
        v115 = v141;
        sub_1DD30A2B4(&(*v139)[*(v138 + 72) * *a3], &(*v139)[*(v138 + 72) * *v113], &(*v139)[*(v138 + 72) * v114], v144);
        v141 = v115;
        if (v115)
        {
          goto LABEL_114;
        }

        if (v114 < v111)
        {
          goto LABEL_116;
        }

        v116 = *(v16 + 16);
        if (v112 > v116)
        {
          goto LABEL_117;
        }

        *a3 = v111;
        *(a3 + 8) = v114;
        if (v112 >= v116)
        {
          goto LABEL_118;
        }

        v76 = v116 - 1;
        memmove(v113, v113 + 2, 16 * (v116 - 1 - v112));
        v17 = v16;
        *(v16 + 16) = v116 - 1;
        v16 = v140;
        if (v116 <= 2)
        {
          goto LABEL_98;
        }
      }

      v86 = v77 + 16 * v76;
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_119;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_120;
      }

      v93 = v81[1];
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_122;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_125;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = v80[1];
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_133;
        }

        if (v84 < v110)
        {
          v79 = v76 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v13 = v138;
    v15 = v139[1];
    if (v16 >= v15)
    {
      goto LABEL_103;
    }
  }

  v56 = v18 + v128;
  if (__OFADD__(v18, v128))
  {
    goto LABEL_137;
  }

  if (v56 >= v55)
  {
    v56 = v139[1];
  }

  if (v56 < v18)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v16 == v56)
  {
    goto LABEL_48;
  }

  v137 = v17;
  v57 = *v139;
  v58 = *(v13 + 72);
  v144 = *(v13 + 16);
  v59 = &v57[v58 * (v16 - 1)];
  v60 = -v58;
  v129 = v18;
  v61 = (v18 - v16);
  v142 = v57;
  v131 = v58;
  v62 = &v57[v16 * v58];
  v132 = v56;
LABEL_41:
  v140 = v16;
  v134 = v62;
  v135 = v61;
  v136 = v59;
  while (1)
  {
    v63 = v148;
    v64 = v144;
    (v144)(v148, v62, v6);
    v65 = v149;
    v64(v149, v59, v6);
    sub_1DD335CF0();
    v67 = v66;
    sub_1DD335CF0();
    v69 = v68;
    v70 = *v146;
    (*v146)(v65, v6);
    v71 = v63;
    a3 = v6;
    v70(v71, v6);
    if (v69 >= v67)
    {
LABEL_46:
      v16 = v140 + 1;
      v59 = &v136[v131];
      v61 = v135 - 1;
      v62 = &v134[v131];
      if (v140 + 1 == v132)
      {
        v16 = v132;
        v17 = v137;
        v18 = v129;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v142)
    {
      break;
    }

    v72 = *v145;
    v73 = v143;
    (*v145)(v143, v62, v6);
    swift_arrayInitWithTakeFrontToBack();
    v72(v59, v73, v6);
    v59 += v60;
    v62 += v60;
    v54 = __CFADD__(v61++, 1);
    if (v54)
    {
      goto LABEL_46;
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

uint64_t sub_1DD30A2B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = a4;
  v8 = sub_1DD335D10();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v66 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v65 = v56 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v15;
  v69 = a1;
  v68 = v60;
  v63 = (v12 + 8);
  v64 = (v12 + 16);
  v20 = v17 / v15;
  v56[1] = v4;
  if (v19 >= v17 / v15)
  {
    v61 = a1;
    sub_1DD2BC07C(a2, v17 / v15, v60);
    v33 = v60;
    v34 = v60 + v20 * v15;
    v35 = -v15;
    v36 = v34;
    v58 = -v15;
LABEL_37:
    v62 = a2 + v35;
    v37 = a3;
    v56[0] = v36;
    v59 = a2;
    while (1)
    {
      if (v34 <= v33)
      {
        v69 = a2;
        v67 = v36;
        goto LABEL_59;
      }

      if (a2 <= v61)
      {
        break;
      }

      v57 = v36;
      v38 = v37 + v35;
      v39 = v34 + v35;
      v40 = v65;
      v41 = *v64;
      v42 = v34;
      (*v64)(v65, v34 + v35, v8);
      v43 = v66;
      v41(v66, v62, v8);
      sub_1DD335CF0();
      v45 = v44;
      sub_1DD335CF0();
      v47 = v46;
      v48 = *v63;
      (*v63)(v43, v8);
      v48(v40, v8);
      if (v47 < v45)
      {
        v52 = v37 < v59 || v38 >= v59;
        a3 = v37 + v35;
        if (v52)
        {
          v53 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v53;
          v36 = v57;
          v35 = v58;
          v33 = v60;
          v34 = v42;
        }

        else
        {
          v54 = v57;
          v35 = v58;
          v36 = v57;
          v55 = v62;
          v33 = v60;
          v34 = v42;
          a2 = v62;
          if (v37 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
            v34 = v42;
            v33 = v60;
            a2 = v55;
            v36 = v54;
          }
        }

        goto LABEL_37;
      }

      v49 = v37 < v42 || v38 >= v42;
      v50 = v37 + v35;
      v51 = v59;
      if (v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 += v35;
        v34 = v39;
        v36 = v39;
        v33 = v60;
        v35 = v58;
        a2 = v51;
      }

      else
      {
        v36 = v39;
        v16 = v42 == v37;
        v37 += v35;
        v34 = v39;
        v33 = v60;
        v35 = v58;
        a2 = v59;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v60;
          v37 = v50;
          v34 = v39;
          v36 = v39;
        }
      }
    }

    v69 = a2;
    v67 = v56[0];
  }

  else
  {
    v62 = a3;
    sub_1DD2BC07C(a1, (a2 - a1) / v15, v60);
    v21 = v60;
    v61 = v60 + v19 * v15;
    v67 = v61;
    v22 = v66;
    while (v21 < v61 && a2 < v62)
    {
      v24 = v65;
      v25 = *v64;
      (*v64)(v65, a2, v8);
      v25(v22, v21, v8);
      sub_1DD335CF0();
      v27 = v26;
      sub_1DD335CF0();
      v29 = v28;
      v30 = *v63;
      (*v63)(v22, v8);
      v30(v24, v8);
      if (v29 >= v27)
      {
        if (a1 < v21 || a1 >= v21 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v68 = v21 + v15;
        v21 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v69 = a1;
    }
  }

LABEL_59:
  sub_1DD30A7E0(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_1DD30A7E0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1DD335D10();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DD30A8C0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1DD30A8EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6810, &qword_1DD33AC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t objectdestroy_8Tm(void (*a1)(void))
{

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_83();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

unint64_t sub_1DD30AAD4()
{
  result = qword_1ECCD6EF0;
  if (!qword_1ECCD6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6EF0);
  }

  return result;
}

uint64_t sub_1DD30AB28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_22_8();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_1DD30735C(v3, v4, v0 + v2);
}

uint64_t sub_1DD30ABB8(uint64_t a1)
{
  result = sub_1DD335CD0();
  if (v2 <= 0x3F)
  {
    result = sub_1DD334890();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}
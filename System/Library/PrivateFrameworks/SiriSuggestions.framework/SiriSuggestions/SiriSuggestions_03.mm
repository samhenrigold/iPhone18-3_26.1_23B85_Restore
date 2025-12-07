uint64_t get_enum_tag_for_layout_string_15SiriSuggestions11ProviderKeyO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23120EA68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
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

uint64_t sub_23120EABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_23120EB1C(unint64_t *result, uint64_t a2)
{
  if (a2 < 7)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  *result = v2;
  return result;
}

void sub_23120EB78()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_231367D80();
  OUTLINED_FUNCTION_0_0();
  v40 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  v8 = sub_231369330();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v15 = sub_231367C70();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  switch(v1 >> 61)
  {
    case 1uLL:
      v30 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_9_6();
      sub_23136A650();

      strcpy(&v41, "suggestionId{");
      HIWORD(v41) = -4864;
      v32 = v30;
      v33 = v31;
      goto LABEL_11;
    case 2uLL:
      v32 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = 0x49676E6967676F6CLL;
      v35 = 0xEA00000000007B64;
      goto LABEL_10;
    case 3uLL:
      v26 = swift_projectBox();
      (*(v10 + 16))(v14, v26, v8);
      *&v41 = 0x7B6C656E6E616863;
      *(&v41 + 1) = 0xE800000000000000;
      OUTLINED_FUNCTION_3_8();
      sub_231210978(v27, v28, MEMORY[0x277D61328]);
      v29 = sub_23136A8B0();
      MEMORY[0x23192A730](v29);

      OUTLINED_FUNCTION_10_6();
      (*(v10 + 8))(v14, v8);
      break;
    case 4uLL:
      v36 = swift_projectBox();
      (*(v40 + 16))(v7, v36, v2);
      OUTLINED_FUNCTION_9_6();
      sub_23136A650();

      *&v41 = 0xD000000000000010;
      *(&v41 + 1) = 0x800000023137CE60;
      OUTLINED_FUNCTION_5_7();
      sub_231210978(v37, v38, MEMORY[0x277D60BD8]);
      v39 = sub_23136A8B0();
      MEMORY[0x23192A730](v39);

      OUTLINED_FUNCTION_10_6();
      (*(v40 + 8))(v7, v2);
      break;
    case 5uLL:
      v32 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = 0x7B64656E776FLL;
      v35 = 0xE600000000000000;
LABEL_10:
      *&v41 = v34;
      *(&v41 + 1) = v35;
LABEL_11:
      MEMORY[0x23192A730](v32, v33);
      goto LABEL_12;
    case 6uLL:
      *&v41 = 0x7B746E696F6ALL;
      *(&v41 + 1) = 0xE600000000000000;
      sub_23120EB78();
      MEMORY[0x23192A730]();

      MEMORY[0x23192A730](8236, 0xE200000000000000);
      sub_23120EB78();
      MEMORY[0x23192A730]();

LABEL_12:
      OUTLINED_FUNCTION_10_6();
      break;
    case 7uLL:
      break;
    default:
      v21 = v17;
      v22 = swift_projectBox();
      (*(v21 + 16))(v20, v22, v15);
      OUTLINED_FUNCTION_9_6();
      sub_23136A650();

      *&v41 = 0x697461636F766E69;
      *(&v41 + 1) = 0xEF7B657079546E6FLL;
      OUTLINED_FUNCTION_4_6();
      sub_231210978(v23, v24, MEMORY[0x277D60B08]);
      v25 = sub_23136A8B0();
      MEMORY[0x23192A730](v25);

      OUTLINED_FUNCTION_10_6();
      (*(v21 + 8))(v20, v15);
      break;
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_23120F048()
{
  while (1)
  {
    OUTLINED_FUNCTION_11_0();
    v1 = v0;
    v3 = v2;
    sub_231367D80();
    OUTLINED_FUNCTION_0_0();
    v52 = v5;
    v53 = v4;
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_22();
    v8 = v6 - v7;
    MEMORY[0x28223BE20](v9);
    v11 = &v50 - v10;
    v12 = sub_231369330();
    OUTLINED_FUNCTION_0_0();
    v51 = v13;
    MEMORY[0x28223BE20](v14);
    OUTLINED_FUNCTION_22();
    v17 = (v15 - v16);
    MEMORY[0x28223BE20](v18);
    v20 = &v50 - v19;
    v21 = sub_231367C70();
    OUTLINED_FUNCTION_0_0();
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_22();
    v25 = (v23 - v24);
    MEMORY[0x28223BE20](v26);
    v29 = &v50 - v28;
    switch(v3 >> 61)
    {
      case 1uLL:
        if (v1 >> 61 == 1)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      case 2uLL:
        if (v1 >> 61 != 2)
        {
          goto LABEL_26;
        }

        goto LABEL_13;
      case 3uLL:
        if (v1 >> 61 == 3)
        {
          v41 = swift_projectBox();
          v42 = swift_projectBox();
          v43 = v51;
          v44 = *(v51 + 16);
          v44(v20, v41, v12);
          v44(v17, v42, v12);
          sub_231369310();
          v45 = *(v43 + 8);
          v45(v17, v12);
          v45(v20, v12);
        }

        goto LABEL_26;
      case 4uLL:
        if (v1 >> 61 == 4)
        {
          swift_projectBox();
          v35 = swift_projectBox();
          v37 = v52;
          v36 = v53;
          v38 = *(v52 + 16);
          v39 = OUTLINED_FUNCTION_11_6();
          v38(v39);
          (v38)(v8, v35, v36);
          sub_231311D04(v11, v8);
          v40 = *(v37 + 8);
          v40(v8, v36);
          v40(v11, v36);
        }

        goto LABEL_26;
      case 5uLL:
        if (v1 >> 61 != 5)
        {
          goto LABEL_26;
        }

LABEL_13:
        if (*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
        {
LABEL_26:
          OUTLINED_FUNCTION_9_0();
        }

        else
        {
          OUTLINED_FUNCTION_9_0();

          sub_23136A900();
        }

        return;
      case 6uLL:
        if (v1 >> 61 != 6)
        {
          goto LABEL_26;
        }

        sub_23120F048();
        if ((v48 & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_9_0();

        break;
      case 7uLL:
        goto LABEL_26;
      default:
        if (!(v1 >> 61))
        {
          v30 = v27;
          v31 = swift_projectBox();
          v32 = swift_projectBox();
          v33 = *(v30 + 16);
          v33(v29, v31, v21);
          v33(v25, v32, v21);
          sub_231367C60();
          v34 = *(v30 + 8);
          v34(v25, v21);
          v34(v29, v21);
        }

        goto LABEL_26;
    }
  }
}

void sub_23120F4F0()
{
  while (2)
  {
    OUTLINED_FUNCTION_11_0();
    v1 = v0;
    v2 = sub_231367D80();
    OUTLINED_FUNCTION_0_0();
    v34 = v3;
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_1_4();
    v7 = v6 - v5;
    v8 = sub_231369330();
    OUTLINED_FUNCTION_0_0();
    v10 = v9;
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_1_4();
    v14 = v13 - v12;
    v15 = sub_231367C70();
    OUTLINED_FUNCTION_0_0();
    v17 = v16;
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_1_4();
    v21 = v20 - v19;
    switch(v1 >> 61)
    {
      case 1uLL:
        OUTLINED_FUNCTION_13_6();
        v28 = 1;
        goto LABEL_10;
      case 2uLL:
        OUTLINED_FUNCTION_13_6();
        v28 = 2;
        goto LABEL_10;
      case 3uLL:
        v29 = swift_projectBox();
        (*(v10 + 16))(v14, v29, v8);
        MEMORY[0x23192B090](3);
        OUTLINED_FUNCTION_3_8();
        sub_231210978(v30, v31, MEMORY[0x277D61318]);
        sub_231369F40();
        (*(v10 + 8))(v14, v8);
        goto LABEL_7;
      case 4uLL:
        v25 = swift_projectBox();
        (*(v34 + 16))(v7, v25, v2);
        MEMORY[0x23192B090](5);
        OUTLINED_FUNCTION_5_7();
        sub_231210978(v26, v27, MEMORY[0x277D60BB8]);
        sub_231369F40();
        (*(v34 + 8))(v7, v2);
        goto LABEL_7;
      case 5uLL:
        OUTLINED_FUNCTION_13_6();
        v28 = 6;
LABEL_10:
        MEMORY[0x23192B090](v28);
        OUTLINED_FUNCTION_9_0();

        sub_23136A060();
        return;
      case 6uLL:
        OUTLINED_FUNCTION_13_6();
        MEMORY[0x23192B090](7);
        sub_23120F4F0();
        OUTLINED_FUNCTION_9_0();

        continue;
      case 7uLL:
        MEMORY[0x23192B090](4);
        goto LABEL_7;
      default:
        v22 = swift_projectBox();
        (*(v17 + 16))(v21, v22, v15);
        MEMORY[0x23192B090](0);
        OUTLINED_FUNCTION_4_6();
        sub_231210978(v23, v24, MEMORY[0x277D60AF8]);
        sub_231369F40();
        (*(v17 + 8))(v21, v15);
LABEL_7:
        OUTLINED_FUNCTION_9_0();
        return;
    }
  }
}

uint64_t sub_23120F8B4()
{
  sub_23136A9D0();
  sub_23120F4F0();
  return sub_23136AA00();
}

uint64_t sub_23120F914(uint64_t a1)
{
  sub_23136A9D0();
  sub_23120F4F0();
  return sub_23136AA00();
}

unint64_t sub_23120F968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84D20;
  if (!qword_280F84D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84D20);
  }

  return result;
}

void sub_23120FA10()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  v39 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v38 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v52 = v1;
  v53 = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  OUTLINED_FUNCTION_12_4();
  v40 = v13;
  v13();
  sub_2313690F0();
  sub_2311CF324(v51, &v47);

  v14 = sub_2313698A0();
  v15 = sub_23136A3A0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *&v42 = swift_slowAlloc();
    *v16 = 136315650;
    sub_2311CF324(&v47, &v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
    v37 = v7;
    v17 = sub_23136A010();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(&v47);
    v20 = sub_2311CFD58(v17, v19, &v42);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_23120EB78();
    v23 = sub_2311CFD58(v21, v22, &v42);
    v7 = v37;

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_2311CFD58(v0[16], v0[17], &v42);
    _os_log_impl(&dword_2311CB000, v14, v15, "adding %s against %s for provider of type %s", v16, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  }

  (*(v38 + 8))(v12, v39);
  swift_beginAccess();
  sub_231369EE0();
  v24 = OUTLINED_FUNCTION_11_6();
  v26 = sub_2312177D0(v24, v25);

  if (!v26)
  {
    v26 = MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23126DD64(0);
    v26 = v35;
    v50 = v35;
  }

  v29 = *(v26 + 16);
  v28 = *(v26 + 24);
  if (v29 >= v28 >> 1)
  {
    sub_23126DD64(v28 > 1);
    v26 = v36;
    v50 = v36;
  }

  (v40)(v7, boxed_opaque_existential_1, v1);
  sub_2312100D8(v29, v7, &v50, v1, v3, sub_2311E6A28);
  swift_beginAccess();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *&v44 = v0[14];
  sub_231259AFC(v26, v2, v30);
  v0[14] = v44;
  swift_endAccess();
  sub_23120E4BC();
  if (v2 >> 61 == 6)
  {
    sub_23120E4BC();
    v31 = type metadata accessor for JointProviderKeyExtractor();
    v32 = swift_allocObject();
    v33 = v48;
    *(v32 + 16) = v47;
    *(v32 + 32) = v33;
    v34 = v45;
    *(v32 + 56) = v44;
    *(v32 + 48) = v49;
    *(v32 + 72) = v34;
    *(v32 + 88) = v46;
    *(&v48 + 1) = v31;
    v49 = &off_2845F5A70;
    *&v47 = v32;
  }

  sub_2312108A0(&v47, &v42);
  if (v43)
  {
    sub_2311D38A8(&v42, &v44);
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    sub_23120E294();
    sub_231210910(&v47);
    __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  }

  else
  {
    sub_231210910(&v47);
    sub_231210910(&v42);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  OUTLINED_FUNCTION_9_0();
}

void sub_23120FF7C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_21();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6);
  v9 = swift_allocObject();
  sub_231367AD0();
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  *(v9 + 16) = MEMORY[0x231929610](v10, v11);
  *(v9 + 24) = v12;
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = OUTLINED_FUNCTION_11_6();
  v17 = __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_2312102F4(v17, v9 | 0xA000000000000000, v0, v13, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v18 = *(v4 + 8);

  v18(v8, v1);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312100D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

void sub_231210198()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_21();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  (*(v11 + 16))(v14 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43010, qword_231374B70);
  v16 = swift_allocBox();
  v18 = v17;
  v19 = sub_231367C70();
  (*(*(v19 - 8) + 16))(v18, v9, v19);
  v1(v15, v16, v7, v5, v3);

  v20 = *(v11 + 8);

  v21 = OUTLINED_FUNCTION_11_6();
  v20(v21);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2312102F4(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2313698C0();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[3] = a4;
  v61[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  v17 = *(v10 + 16);
  v16 = v10 + 16;
  v51 = boxed_opaque_existential_1;
  v50 = v17;
  v17(boxed_opaque_existential_1, a1, a4);
  sub_2313690F0();
  sub_2311CF324(v61, &v57);

  v18 = sub_2313698A0();
  v19 = sub_23136A3A0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v46 = v16;
    v21 = v20;
    v44 = swift_slowAlloc();
    *&v52 = v44;
    *v21 = 136315650;
    sub_2311CF324(&v57, &v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
    v22 = sub_23136A010();
    v47 = v12;
    v23 = v22;
    v45 = a2 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    v26 = sub_2311CFD58(v23, v25, &v52);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    sub_23120EB78();
    v29 = sub_2311CFD58(v27, v28, &v52);
    v12 = v47;

    *(v21 + 14) = v29;
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_2311CFD58(a3[16], a3[17], &v52);
    _os_log_impl(&dword_2311CB000, v18, v19, "adding %s against %s for provider of type %s", v21, 0x20u);
    v30 = v44;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v30, -1, -1);
    MEMORY[0x23192B930](v21, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  }

  (*(v48 + 8))(v14, v49);
  swift_beginAccess();
  v31 = a3[14];
  sub_231369EE0();
  v32 = sub_2312177D0(a2, v31);

  if (!v32)
  {
    v32 = MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23126DE08(0);
    v32 = v41;
    v60 = v41;
  }

  v35 = *(v32 + 16);
  v34 = *(v32 + 24);
  if (v35 >= v34 >> 1)
  {
    sub_23126DE08(v34 > 1);
    v60 = v42;
  }

  v50(v12, v51, a4);
  sub_2312100D8(v35, v12, &v60, a4, a5, sub_2311E6A28);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v54 = a3[14];
  sub_231259C20();
  a3[14] = v54;
  swift_endAccess();
  sub_23120E4BC();
  if (a2 >> 61 == 6)
  {
    sub_23120E4BC();
    v36 = type metadata accessor for JointProviderKeyExtractor();
    v37 = swift_allocObject();
    v38 = v58;
    *(v37 + 16) = v57;
    *(v37 + 32) = v38;
    v39 = v55;
    *(v37 + 56) = v54;
    *(v37 + 48) = v59;
    *(v37 + 72) = v39;
    *(v37 + 88) = v56;
    *(&v58 + 1) = v36;
    v59 = &off_2845F5A70;
    *&v57 = v37;
  }

  sub_2312108A0(&v57, &v52);
  if (v53)
  {
    sub_2311D38A8(&v52, &v54);
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    sub_23120E294();
    sub_231210910(&v57);
    __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  }

  else
  {
    sub_231210910(&v57);
    sub_231210910(&v52);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v61);
}

uint64_t sub_2312108A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43018, &qword_23136B8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231210910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43018, &qword_23136B8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231210978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2312109F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_231210A38(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_231210A78(uint64_t result, int a2, int a3)
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

unint64_t sub_231210AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_231215F6C(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

double sub_231210B54()
{
  OUTLINED_FUNCTION_73_1();
  if (v4 && (v5 = v3, v6 = sub_231215F6C(v1, v2), (v7 & 1) != 0))
  {
    v8 = OUTLINED_FUNCTION_95(v6, *(v5 + 56));

    sub_231215FE4(v8, v9);
  }

  else
  {
    result = 0.0;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  return result;
}

void sub_231210BE8()
{
  OUTLINED_FUNCTION_73_1();
  if (v4 && (v5 = v3, v6 = sub_231215F6C(v1, v2), (v7 & 1) != 0))
  {
    sub_2311E66F0(*(v5 + 56) + 32 * v6, v0, &qword_27DD443C0, &unk_23136E000);
  }

  else
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 1;
  }
}

double sub_231210C60()
{
  OUTLINED_FUNCTION_73_1();
  if (!v4)
  {
    return OUTLINED_FUNCTION_94();
  }

  v5 = v3;
  v6 = sub_231215F6C(v1, v2);
  if ((v7 & 1) == 0)
  {
    return OUTLINED_FUNCTION_94();
  }

  v8 = *(v5 + 56) + 32 * v6;

  sub_2311D1D6C(v8, v0);
  return result;
}

uint64_t sub_231210CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_231215F6C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  sub_231369EE0();
  return v6;
}

uint64_t sub_231210D14()
{
  OUTLINED_FUNCTION_97();
  if (v2 && (v3 = v1, v4 = sub_231216260(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
    OUTLINED_FUNCTION_11();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    OUTLINED_FUNCTION_62_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
    OUTLINED_FUNCTION_52();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_231210DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_231215F6C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_75_0(v3);
}

uint64_t sub_231210E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_75_0(v3);
  return sub_231369EE0();
}

double sub_231210E90()
{
  OUTLINED_FUNCTION_97();
  if (!v3)
  {
    return OUTLINED_FUNCTION_94();
  }

  v4 = v2;
  v5 = sub_231216888(v1);
  if ((v6 & 1) == 0)
  {
    return OUTLINED_FUNCTION_94();
  }

  v7 = *(v4 + 56) + 32 * v5;

  sub_2311D1D6C(v7, v0);
  return result;
}

double sub_231210F04()
{
  OUTLINED_FUNCTION_73_1();
  if (v4 && (v5 = v3, v6 = sub_231215F6C(v1, v2), (v7 & 1) != 0))
  {
    v8 = OUTLINED_FUNCTION_95(v6, *(v5 + 56));
    sub_2311CF324(v8, v9);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_94();
  }

  return result;
}

uint64_t sub_231210F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if (v4)
  {
    return OUTLINED_FUNCTION_75_0(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231210FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_73_1();
  if (v9 && (v10 = v8, v11 = sub_231215F6C(v6, v7), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = a4(0);
    OUTLINED_FUNCTION_11();
    (*(v16 + 16))(v4, v14 + *(v16 + 72) * v13, v15);
    v17 = v4;
    v18 = 0;
    v19 = 1;
    v20 = v15;
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_52();
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

double sub_2312110B8()
{
  OUTLINED_FUNCTION_97();
  if (v3 && (v4 = v1, v5 = v2(), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_95(v5, *(v4 + 56));
    sub_2311CF324(v7, v8);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_94();
  }

  return result;
}

uint64_t sub_231211120(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_75_0(v3);
  return sub_231369EE0();
}

void *sub_231211170(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2312169BC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_2312111B8()
{
  OUTLINED_FUNCTION_97();
  if (v2 && (v3 = v1, v4 = sub_2312165D8(), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_95(v4, *(v3 + 56));

    sub_231217710(v6, v7);
  }

  else
  {
    result = 0.0;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
  }

  return result;
}

uint64_t sub_23121121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_231215F6C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_75_0(v3);
  return sub_231369EE0();
}

uint64_t sub_231211268(uint64_t a1, char a2)
{
  sub_23136A060();
}

uint64_t sub_2312112DC(uint64_t a1, char a2)
{
  sub_23136A060();
}

uint64_t sub_231211384(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_59_2();
  }

  else
  {
    OUTLINED_FUNCTION_74_2();
  }

  sub_23136A060();
}

uint64_t sub_2312113F4(uint64_t a1, uint64_t a2)
{
  sub_23133F8E8(a2);
  sub_23136A060();
}

uint64_t sub_231211448(uint64_t a1, char a2)
{
  sub_23136A060();
}

uint64_t sub_2312114BC(void *a1, char a2)
{
  switch(a2)
  {
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_74_2();
      break;
  }

  sub_23136A060();
}

uint64_t sub_23121159C(uint64_t a1, char a2)
{
  sub_23136A060();
}

uint64_t sub_231211608(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_43_4();
  }

  sub_23136A060();
}

uint64_t sub_231211690()
{
  v1 = OUTLINED_FUNCTION_83_0();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x536874695777656ELL;
    }

    else
    {
      v3 = 0x4F6874695777656ELL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_4();
  }

  OUTLINED_FUNCTION_85_0(v1, v3, v2);

  return sub_23136AA00();
}

uint64_t sub_23121171C()
{
  v1 = OUTLINED_FUNCTION_83_0();
  if (v0)
  {
    v3 = 0x64656C6261736964;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  OUTLINED_FUNCTION_85_0(v1, v3, v2);

  return sub_23136AA00();
}

uint64_t sub_2312117A4()
{
  v1 = OUTLINED_FUNCTION_83_0();
  if (v0)
  {
    v3 = 0x6C61697274;
  }

  else
  {
    v3 = 0x43746C7561666564;
  }

  OUTLINED_FUNCTION_85_0(v1, v3, v2);

  return sub_23136AA00();
}

uint64_t sub_231211834(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_23136A9D0();
  a3(a2);
  sub_23136A060();

  return sub_23136AA00();
}

uint64_t sub_23121189C()
{
  OUTLINED_FUNCTION_83_0();
  if (v0)
  {
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_59_2();
  }

  else
  {
    OUTLINED_FUNCTION_74_2();
    v2 = 0xD000000000000019;
  }

  OUTLINED_FUNCTION_85_0(v1, v2, v3);

  return sub_23136AA00();
}

uint64_t sub_231211910()
{
  OUTLINED_FUNCTION_83_0();
  sub_2312112DC(v2, v0);
  return sub_23136AA00();
}

uint64_t sub_23121194C()
{
  v1 = OUTLINED_FUNCTION_83_0();
  if (v0)
  {
    v3 = 0x6150646E6F636573;
  }

  else
  {
    v3 = 0x7361507473726966;
  }

  OUTLINED_FUNCTION_85_0(v1, v3, v2);

  return sub_23136AA00();
}

uint64_t static IntentSuggestionsGenerator.createGenerators()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F0, &unk_23136BC80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23136B670;
  v2 = swift_allocObject();
  *(v1 + 56) = v0;
  *(v1 + 64) = sub_231217784(qword_280F85520, v3, type metadata accessor for IntentSuggestionsGenerator, &protocol conformance descriptor for IntentSuggestionsGenerator);
  *(v1 + 32) = v2;
  return v1;
}

uint64_t IntentSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)()
{
  OUTLINED_FUNCTION_8();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A8, &unk_23136DEC0);
  OUTLINED_FUNCTION_40_0(v4);
  v1[24] = OUTLINED_FUNCTION_43();
  v5 = sub_231368BB0();
  v1[25] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[26] = v6;
  v1[27] = OUTLINED_FUNCTION_43();
  v7 = sub_2313667A0();
  v1[28] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[29] = v8;
  v1[30] = OUTLINED_FUNCTION_43();
  v9 = sub_231367490();
  v1[31] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[32] = v10;
  v1[33] = OUTLINED_FUNCTION_43();
  v11 = sub_2313698C0();
  v1[34] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[35] = v12;
  v1[36] = OUTLINED_FUNCTION_67();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v13 = sub_231367C70();
  v1[40] = v13;
  OUTLINED_FUNCTION_0(v13);
  v1[41] = v14;
  v1[42] = OUTLINED_FUNCTION_67();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v15 = sub_231367D80();
  v1[45] = v15;
  OUTLINED_FUNCTION_0(v15);
  v1[46] = v16;
  v1[47] = OUTLINED_FUNCTION_43();
  v17 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_231211D20()
{
  v90 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_71();
  sub_2313677D0();
  v3 = *(v1 + 88);
  v4 = OUTLINED_FUNCTION_26_1();
  v5 = v3(v4);
  v6 = *MEMORY[0x277D60AC8];
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_26_1();
  v7(v8);
  if (v5 == v6)
  {
    v9 = MEMORY[0x277D60B80];
    goto LABEL_3;
  }

  v86 = v7;
  __swift_project_boxed_opaque_existential_1(*(v0 + 168), v2[3]);
  OUTLINED_FUNCTION_71();
  sub_2313677D0();
  v28 = OUTLINED_FUNCTION_26_1();
  v29 = v3(v28);
  v30 = *(v0 + 344);
  if (v29 != *MEMORY[0x277D60AC0])
  {
    (v7)(*(v0 + 344), *(v0 + 320));
    goto LABEL_25;
  }

  (*(*(v0 + 328) + 96))(*(v0 + 344), *(v0 + 320));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
  sub_2313681A0();
  v32 = OUTLINED_FUNCTION_67_0();
  if (v33(v32) != *MEMORY[0x277D60DC0])
  {
    sub_231368210();
    OUTLINED_FUNCTION_11();
    (*(v70 + 8))(v30 + v31);
    v71 = OUTLINED_FUNCTION_26_1();
    v72(v71);
    goto LABEL_25;
  }

  v34 = OUTLINED_FUNCTION_26_1();
  v35(v34);
  sub_231368270();
  v36 = OUTLINED_FUNCTION_26_1();
  v38 = v37(v36);
  v39 = *MEMORY[0x277D60E60];
  v40 = OUTLINED_FUNCTION_26_1();
  v41(v40);
  sub_231368210();
  OUTLINED_FUNCTION_11();
  (*(v42 + 8))(v30 + v31);
  if (v38 != v39)
  {
LABEL_25:
    sub_2313690F0();
    v73 = sub_2313698A0();
    v74 = sub_23136A3A0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_2311CB000, v73, v74, "IntentSuggestionsGenerator: invocationType is is not .offlineGeneration or conversation continuer. returning no candidate.", v75, 2u);
      OUTLINED_FUNCTION_40_3();
    }

    goto LABEL_28;
  }

  v9 = MEMORY[0x277D60B78];
  v7 = v86;
LABEL_3:
  (*(*(v0 + 368) + 104))(*(v0 + 376), *v9, *(v0 + 360));
  v10 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_56(v10, v11);
  OUTLINED_FUNCTION_26_1();
  v12 = sub_231367830();
  *(v0 + 384) = v12;
  if (!v12)
  {
    sub_2313690F0();
    v43 = sub_2313698A0();
    v44 = sub_23136A3A0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2311CB000, v43, v44, "IntentSuggestionsGenerator: No intentsToSuggest found from interaction, returning no candidate", v45, 2u);
      OUTLINED_FUNCTION_29();
    }

    v46 = OUTLINED_FUNCTION_54_0();
    v47(v46);
LABEL_28:
    v76 = OUTLINED_FUNCTION_28_0();
    v77(v76);
    v69 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v13 = v12;
  v14 = *(v0 + 168);
  sub_2313690F0();
  sub_2311CF324(v14, v0 + 64);
  sub_231369EE0();
  v15 = sub_2313698A0();
  v16 = sub_23136A3A0();

  if (os_log_type_enabled(v15, v16))
  {
    v85 = v7;
    v17 = *(v0 + 336);
    v18 = *(v0 + 320);
    v81 = *(v0 + 280);
    v82 = *(v0 + 272);
    v83 = *(v0 + 304);
    v80 = *(v0 + 248);
    v19 = swift_slowAlloc();
    v89 = OUTLINED_FUNCTION_44();
    *v19 = 136315394;
    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v79 = v16;
    sub_2313677D0();
    sub_231217784(&qword_280F7CA70, 255, MEMORY[0x277D60AE8], MEMORY[0x277D60B08]);
    sub_23136A8B0();
    v85(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    v20 = OUTLINED_FUNCTION_68_1();
    v23 = sub_2311CFD58(v20, v21, v22);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = MEMORY[0x23192A860](v13, v80);
    v26 = sub_2311CFD58(v24, v25, &v89);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_2311CB000, v15, v79, "IntentSuggestionsGenerator: %s received intentQueries: %s. Attempting to generate candidates", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v27 = *(v81 + 8);
    v27(v83, v82);
  }

  else
  {
    v48 = *(v0 + 304);
    v49 = *(v0 + 272);
    v50 = *(v0 + 280);

    v27 = *(v50 + 8);
    v27(v48, v49);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  OUTLINED_FUNCTION_56(*(v0 + 168), v2[3]);
  *(v0 + 392) = sub_2313677E0();
  sub_2313690F0();
  sub_231369EE0();
  v51 = sub_2313698A0();
  v52 = sub_23136A3A0();

  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 296);
  v55 = *(v0 + 272);
  if (v53)
  {
    v87 = v27;
    v56 = swift_slowAlloc();
    v84 = v54;
    v57 = swift_slowAlloc();
    v89 = v57;
    *v56 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
    v58 = sub_231369E90();
    v60 = sub_2311CFD58(v58, v59, &v89);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_2311CB000, v51, v52, "IntentSuggestionsGenerator: execParams %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    result = v87(v84, v55);
  }

  else
  {

    result = (v27)(v54, v55);
  }

  *(v0 + 160) = MEMORY[0x277D84F90];
  v62 = *(v13 + 16);
  *(v0 + 400) = v62;
  if (v62)
  {
    v63 = *(v0 + 256);
    v64 = *(v63 + 80);
    *(v0 + 464) = v64;
    *(v0 + 408) = 0;
    v65 = *(v0 + 384);
    if (*(v65 + 16))
    {
      (*(v63 + 16))(*(v0 + 264), v65 + ((v64 + 32) & ~v64), *(v0 + 248));
      v66 = swift_task_alloc();
      *(v0 + 416) = v66;
      *v66 = v0;
      OUTLINED_FUNCTION_1_12(v66);

      return sub_231212E84();
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  OUTLINED_FUNCTION_78_0();

  v67 = OUTLINED_FUNCTION_28_0();
  v68(v67);
  v69 = *(v0 + 160);
LABEL_29:
  v88 = v69;
  OUTLINED_FUNCTION_7_6();

  OUTLINED_FUNCTION_14();

  return v78(v88);
}

uint64_t sub_23121266C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  *(v1 + 424) = v0;

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_23121275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  *(v14 + 144) = 0xD000000000000010;
  v15 = *(v14 + 392);
  v17 = *(v14 + 232);
  v16 = *(v14 + 240);
  v18 = *(v14 + 224);
  *(v14 + 152) = 0x800000023137CEA0;
  sub_231367480();
  v19 = sub_231366770();
  v21 = v20;
  (*(v17 + 8))(v16, v18);
  MEMORY[0x23192A730](v19, v21);

  v23 = *(v14 + 144);
  v22 = *(v14 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
  v24 = sub_231369EC0();
  if (*(v15 + 16) && (v25 = sub_231215F6C(v23, v22), (v26 & 1) != 0))
  {
    sub_231215FE4(*(*(v14 + 392) + 56) + 48 * v25, v14 + 16);
  }

  else
  {
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 16) = 0u;
  }

  v28 = *(v14 + 192);
  v27 = *(v14 + 200);
  if (*(v14 + 40))
  {
    v29 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v28, v29 ^ 1u, 1, v27);
    if (__swift_getEnumTagSinglePayload(v28, 1, v27) != 1)
    {
      v31 = *(v14 + 208);
      v30 = *(v14 + 216);
      v33 = *(v14 + 192);
      v32 = *(v14 + 200);

      (*(v31 + 32))(v30, v33, v32);
      v24 = sub_231368BA0();
      v34 = OUTLINED_FUNCTION_67_0();
      v35(v34);
      goto LABEL_10;
    }
  }

  else
  {
    sub_2311D1F18(v14 + 16, &qword_27DD432F8, &qword_23136DEE0);
    OUTLINED_FUNCTION_52();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  }

  sub_2311D1F18(*(v14 + 192), &qword_27DD437A8, &unk_23136DEC0);
LABEL_10:
  *(v14 + 432) = v24;
  v39 = *(v14 + 424);
  v40 = *(v39 + 16);
  *(v14 + 440) = v40;
  if (v40)
  {
    *(v14 + 448) = 0;
    sub_2311CF324(v39 + 32, v14 + 104);
    v41 = swift_task_alloc();
    *(v14 + 456) = v41;
    *v41 = v14;
    v41[1] = sub_231212B6C;
    OUTLINED_FUNCTION_7();

    sub_231214520();
  }

  else
  {
    v44 = *(v14 + 400);
    v43 = *(v14 + 408);

    sub_2312673B4(v39);
    v45 = OUTLINED_FUNCTION_71();
    v46(v45);
    if (v43 + 1 == v44)
    {
      OUTLINED_FUNCTION_78_0();

      v47 = OUTLINED_FUNCTION_28_0();
      v48(v47);
      v49 = OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_102(v49);

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_7();

      v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_51_3();
      if (v58)
      {
        __break(1u);
      }

      else
      {
        v59 = OUTLINED_FUNCTION_31_3();
        v60(v59);
        v61 = swift_task_alloc();
        *(v14 + 416) = v61;
        *v61 = v14;
        OUTLINED_FUNCTION_1_12(v61);
        OUTLINED_FUNCTION_7();

        sub_231212E84();
      }
    }
  }
}

uint64_t sub_231212B6C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 104));
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_231212C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v15 = v14[56] + 1;
  if (v15 == v14[55])
  {
    v16 = v14[53];
    v18 = v14[50];
    v17 = v14[51];

    sub_2312673B4(v16);
    v19 = OUTLINED_FUNCTION_26_1();
    v20(v19);
    if (v17 + 1 == v18)
    {
      OUTLINED_FUNCTION_78_0();

      v21 = OUTLINED_FUNCTION_28_0();
      v22(v21);
      v23 = OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_102(v23);

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_7();

      v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_51_3();
      if (v34)
      {
        __break(1u);
      }

      else
      {
        v35 = OUTLINED_FUNCTION_31_3();
        v36(v35);
        v37 = swift_task_alloc();
        v14[52] = v37;
        *v37 = v14;
        OUTLINED_FUNCTION_1_12(v37);
        OUTLINED_FUNCTION_7();

        sub_231212E84();
      }
    }
  }

  else
  {
    v14[56] = v15;
    sub_2311CF324(v14[53] + 40 * v15 + 32, (v14 + 13));
    v32 = swift_task_alloc();
    v14[57] = v32;
    *v32 = v14;
    v32[1] = sub_231212B6C;
    OUTLINED_FUNCTION_7();

    sub_231214520();
  }
}

uint64_t sub_231212E84()
{
  OUTLINED_FUNCTION_8();
  v0[34] = v1;
  v0[35] = v2;
  v0[33] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  OUTLINED_FUNCTION_40_0(v4);
  v0[36] = OUTLINED_FUNCTION_43();
  v5 = sub_2313673A0();
  v0[37] = v5;
  OUTLINED_FUNCTION_0(v5);
  v0[38] = v6;
  v0[39] = OUTLINED_FUNCTION_43();
  v7 = sub_231367490();
  v0[40] = v7;
  OUTLINED_FUNCTION_0(v7);
  v0[41] = v8;
  v0[42] = OUTLINED_FUNCTION_67();
  v0[43] = swift_task_alloc();
  v9 = sub_2313698C0();
  v0[44] = v9;
  OUTLINED_FUNCTION_0(v9);
  v0[45] = v10;
  v0[46] = OUTLINED_FUNCTION_67();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v11 = sub_231367D80();
  v0[49] = v11;
  OUTLINED_FUNCTION_0(v11);
  v0[50] = v12;
  v0[51] = OUTLINED_FUNCTION_43();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_40_0(v13);
  v0[52] = OUTLINED_FUNCTION_43();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v14);
  v0[53] = OUTLINED_FUNCTION_43();
  v15 = sub_2313694E0();
  v0[54] = v15;
  OUTLINED_FUNCTION_0(v15);
  v0[55] = v16;
  v0[56] = OUTLINED_FUNCTION_43();
  v17 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_231213104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v15 = v14[55];
  v16 = v14[56];
  v18 = v14[53];
  v17 = v14[54];
  v20 = v14[49];
  v19 = v14[50];
  v21 = v14[34];
  v22 = v14[35];
  v38 = v21[4];
  v37 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  (*(v15 + 104))(v16, *MEMORY[0x277D61380], v17);
  (*(v19 + 16))(v18, v22, v20);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  sub_2313676B0();
  OUTLINED_FUNCTION_52();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = swift_task_alloc();
  v14[57] = v27;
  *v27 = v14;
  v27[1] = sub_231213248;
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2821C73A0](v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, a12, a13, a14);
}

uint64_t sub_231213248()
{
  OUTLINED_FUNCTION_12();
  v2 = v1[56];
  v3 = v1[55];
  v4 = v1[54];
  v5 = v1[53];
  v6 = v1[52];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 464) = v9;

  sub_2311D1F18(v6, &qword_27DD432D8, &unk_23136BED0);
  sub_2311D1F18(v5, &qword_27DD42F18, &unk_23136B810);
  (*(v3 + 8))(v2, v4);
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2312133F4()
{
  v168 = v0;
  if (v0[58])
  {
    v3 = v0[58];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  (*(v0[50] + 104))(v0[51], *MEMORY[0x277D60B80], v0[49]);
  OUTLINED_FUNCTION_4_7();
  sub_231217784(v4, 255, v5, MEMORY[0x277D60BC0]);
  v6 = sub_231369F60();
  v7 = OUTLINED_FUNCTION_44_0();
  v8(v7);
  if ((v6 & 1) == 0)
  {
    sub_2313690F0();
    v21 = OUTLINED_FUNCTION_37_3();
    v22(v21);
    sub_231369EE0();
    v23 = sub_2313698A0();
    v24 = sub_23136A3A0();

    if (os_log_type_enabled(v23, v24))
    {
      v153 = v0[43];
      v25 = v0[41];
      v162 = v0[40];
      bufa = v23;
      v26 = v0[39];
      v27 = swift_slowAlloc();
      v157 = OUTLINED_FUNCTION_44();
      v166 = v157;
      *v27 = 136315394;
      sub_231367430();
      OUTLINED_FUNCTION_5_8();
      v30 = sub_231217784(v28, 255, v29, MEMORY[0x277D608A8]);
      OUTLINED_FUNCTION_79_0(v30);
      v31 = OUTLINED_FUNCTION_13_7();
      v32(v31);
      (*(v25 + 8))(v153, v162);
      v33 = OUTLINED_FUNCTION_28();
      v36 = sub_2311CFD58(v33, v34, v35);

      *(v27 + 4) = v36;
      v163 = v27;
      *(v27 + 12) = 2080;
      v37 = *(v3 + 16);
      v38 = MEMORY[0x277D84F90];
      if (v37)
      {
        LODWORD(v153) = v24;
        OUTLINED_FUNCTION_11_7();
        OUTLINED_FUNCTION_86_0();
        do
        {
          sub_2311CF324(v26, (v0 + 2));
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          OUTLINED_FUNCTION_28();
          v39 = sub_231368320();
          v41 = v40;
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
          v167 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          if (v43 >= v42 >> 1)
          {
            v45 = OUTLINED_FUNCTION_29_2(v42);
            sub_2311F4E34(v45);
            v38 = v167;
          }

          *(v38 + 16) = v43 + 1;
          v44 = v38 + 16 * v43;
          *(v44 + 32) = v39;
          *(v44 + 40) = v41;
          v26 += 40;
          --v37;
        }

        while (v37);
        LOBYTE(v24) = v153;
      }

      MEMORY[0x23192A860](v38, MEMORY[0x277D837D0]);

      v88 = OUTLINED_FUNCTION_26_1();
      v91 = sub_2311CFD58(v88, v89, v90);

      *(v163 + 14) = v91;
      OUTLINED_FUNCTION_48_2(&dword_2311CB000, v92, v24, "IntentSuggestionsGenerator: intentQuery.intentType: %s resulted in candidates SuggestionIds: %s", v93, v94, v95, v96, v149, v153, v157, v163, bufa);
      OUTLINED_FUNCTION_49_2(v97, v98, v99, v100, v101, v102, v103, v104, v150, v154, v158);
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_29();

      v53 = OUTLINED_FUNCTION_68_1();
    }

    else
    {

      v51 = OUTLINED_FUNCTION_54_0();
      v52(v51);
      v53 = OUTLINED_FUNCTION_28();
    }

    v54(v53);
LABEL_49:
    OUTLINED_FUNCTION_41_3();

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  sub_2313690F0();
  sub_231369EE0();
  v9 = sub_2313698A0();
  v10 = sub_23136A3A0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    buf = v11;
    v166 = v161;
    *v11 = 136315138;
    v12 = *(v3 + 16);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      LODWORD(v152) = v10;
      v156 = v9;
      OUTLINED_FUNCTION_11_7();
      OUTLINED_FUNCTION_86_0();
      do
      {
        sub_2311CF324(v10, (v0 + 27));
        __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
        OUTLINED_FUNCTION_67_0();
        v14 = sub_231368320();
        v16 = v15;
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
        v167 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          v20 = OUTLINED_FUNCTION_29_2(v17);
          sub_2311F4E34(v20);
          v13 = v167;
        }

        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v10 += 40;
        --v12;
      }

      while (v12);
      v9 = v156;
      LOBYTE(v10) = v152;
    }

    v2 = v0[44];
    v55 = v0[45];
    MEMORY[0x23192A860](v13, MEMORY[0x277D837D0]);

    v56 = OUTLINED_FUNCTION_54_0();
    v59 = sub_2311CFD58(v56, v57, v58);

    v48 = v11;
    *(v11 + 4) = v59;
    _os_log_impl(&dword_2311CB000, v9, v10, "IntentSuggestionsGenerator: all candidate SuggestionIds: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v161);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_40_3();

    v60 = *(v55 + 8);
    v1 = (v55 + 8);
    v47 = v60;
    v61 = OUTLINED_FUNCTION_68_1();
    v60(v61);
  }

  else
  {
    v46 = v0[45];

    v49 = *(v46 + 8);
    v48 = v46 + 8;
    v47 = v49;
    v50 = OUTLINED_FUNCTION_67_0();
    v49(v50);
  }

  v0[59] = v47;
  v62 = *(v3 + 16);
  v0[60] = v62;
  if (!v62)
  {
LABEL_39:

    OUTLINED_FUNCTION_76_1(v105);
    v106 = OUTLINED_FUNCTION_37_3();
    v107(v106);
    sub_231369EE0();
    v108 = sub_2313698A0();
    v109 = sub_23136A3A0();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = OUTLINED_FUNCTION_47_3();
      v159 = OUTLINED_FUNCTION_44();
      v166 = v159;
      *v110 = 136315394;
      sub_231367430();
      OUTLINED_FUNCTION_5_8();
      v113 = sub_231217784(v111, 255, v112, MEMORY[0x277D608A8]);
      OUTLINED_FUNCTION_79_0(v113);
      v114 = OUTLINED_FUNCTION_13_7();
      v115(v114);
      (*(v48 + 8))(v2, v152);
      v116 = OUTLINED_FUNCTION_28();
      sub_2311CFD58(v116, v117, v118);

      OUTLINED_FUNCTION_99();
      v119 = MEMORY[0x277D84F90];
      if (v2)
      {
        v152 = v110;
        OUTLINED_FUNCTION_11_7();
        OUTLINED_FUNCTION_86_0();
        do
        {
          sub_2311CF324(v108, (v0 + 17));
          __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
          OUTLINED_FUNCTION_28();
          sub_231368320();
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
          OUTLINED_FUNCTION_89();
          if (v121)
          {
            v123 = OUTLINED_FUNCTION_29_2(v120);
            sub_2311F4E34(v123);
            v119 = v167;
          }

          OUTLINED_FUNCTION_72_1();
        }

        while (!v122);
      }

      v127 = v0[59];
      v128 = MEMORY[0x23192A860](v119, MEMORY[0x277D837D0]);
      v130 = v129;

      v131 = sub_2311CFD58(v128, v130, &v166);

      *(v110 + 14) = v131;

      OUTLINED_FUNCTION_48_2(&dword_2311CB000, v132, v161, "IntentSuggestionsGenerator: intentQuery.intentType: %s resulted in candidates SuggestionIds: %s", v133, v134, v135, v136, v149, v152, v159, v161, buf);
      OUTLINED_FUNCTION_49_2(v137, v138, v139, v140, v141, v142, v143, v144, v151, v155, v160);
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_29();

      v145 = OUTLINED_FUNCTION_68_1();
      v127(v145);
    }

    else
    {
      OUTLINED_FUNCTION_84_0();
      v124 = OUTLINED_FUNCTION_54_0();
      v125(v124);
      v126 = OUTLINED_FUNCTION_28();
      v1(v126);
    }

    goto LABEL_49;
  }

  v63 = 0;
  v64 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[63] = v64;
    v0[64] = v64;
    v0[61] = 0;
    v0[62] = v63;
    v65 = v0[58];
    v66 = v0[36];
    if (!v65)
    {
      v65 = MEMORY[0x277D84F90];
    }

    sub_2311CF324(v65 + 40 * v63 + 32, (v0 + 7));
    sub_231367410();
    v67 = sub_231367550();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v67);
    sub_2311D1F18(v66, &qword_27DD43808, &qword_231373E90);
    if (EnumTagSinglePayload != 1)
    {
      break;
    }

    sub_2311CF324((v0 + 7), (v0 + 12));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[32] = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v77 = OUTLINED_FUNCTION_23();
      sub_23126DF64(v77);
      OUTLINED_FUNCTION_96(v78);
    }

    v71 = *(v64 + 16);
    v70 = *(v64 + 24);
    if (v71 >= v70 >> 1)
    {
      v79 = OUTLINED_FUNCTION_30_2(v70);
      sub_23126DF64(v79);
      OUTLINED_FUNCTION_96(v80);
    }

    v72 = v0[15];
    v1 = v0[16];
    v2 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v72);
    OUTLINED_FUNCTION_21();
    v74 = v73;
    v75 = OUTLINED_FUNCTION_43();
    (*(v74 + 16))(v75, v2, v72);
    sub_2312E6494(v71, v75, v0 + 32, v72, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

    v76 = v0[60];
    v48 = v0[62] + 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    if (v48 == v76)
    {
      goto LABEL_39;
    }

    v63 = v0[62] + 1;
  }

  OUTLINED_FUNCTION_56(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[65] = v81;
  v0[66] = v82;
  ObjectType = swift_getObjectType();
  v0[67] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v84, v85, v86);
}

uint64_t sub_231213E20()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 544) = sub_2313693F0();
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_231213E90()
{
  v101 = v0;
  v2 = v0[68];
  if (v2)
  {
    v3 = v0[61];
    v4 = *(v2 + 16);
    if (v3 < v4)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F10, &unk_23136C970);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_23136B670;
      sub_2311CF324((v0 + 7), v5 + 32);
      v6 = *(v2 + 16);

LABEL_11:
      v7 = v5;
      goto LABEL_13;
    }

    v7 = v0[64];
    if (v4 == v3)
    {
      sub_2311CF324((v0 + 7), (v0 + 22));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[32] = v7;
      v5 = v0[64];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v87 = OUTLINED_FUNCTION_23();
        sub_23126DF64(v87);
        OUTLINED_FUNCTION_96(v88);
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v89 = OUTLINED_FUNCTION_30_2(v9);
        sub_23126DF64(v89);
        OUTLINED_FUNCTION_96(v90);
      }

      v11 = v0[25];
      v12 = v0[26];
      v13 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 22), v11);
      OUTLINED_FUNCTION_21();
      v15 = v14;
      v16 = OUTLINED_FUNCTION_43();
      v17 = *(v15 + 16);
      v1 = v15 + 16;
      v17(v16, v13, v11);
      sub_2312E6494(v10, v16, v0 + 32, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);

      v6 = v0[61];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v0[64];
  }

  v5 = v0[63];
  v6 = v0[61];
  while (1)
  {
LABEL_13:
    v18 = v0[60];
    v19 = (v0[62] + 1);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    if (v19 == v18)
    {

      OUTLINED_FUNCTION_76_1(v37);
      v38 = OUTLINED_FUNCTION_37_3();
      v39(v38);
      sub_231369EE0();
      v40 = sub_2313698A0();
      v41 = sub_23136A3A0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_47_3();
        v96 = OUTLINED_FUNCTION_44();
        v100[0] = v96;
        *v42 = 136315394;
        sub_231367430();
        OUTLINED_FUNCTION_5_8();
        v45 = sub_231217784(v43, 255, v44, MEMORY[0x277D608A8]);
        OUTLINED_FUNCTION_79_0(v45);
        v46 = OUTLINED_FUNCTION_13_7();
        v47(v46);
        MEMORY[0](v1);
        v48 = OUTLINED_FUNCTION_28();
        sub_2311CFD58(v48, v49, v50);

        OUTLINED_FUNCTION_99();
        v51 = MEMORY[0x277D84F90];
        if (v1)
        {
          v94 = v42;
          OUTLINED_FUNCTION_11_7();
          OUTLINED_FUNCTION_86_0();
          do
          {
            sub_2311CF324(v40, (v0 + 17));
            __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
            OUTLINED_FUNCTION_28();
            sub_231368320();
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
            OUTLINED_FUNCTION_89();
            if (v53)
            {
              v55 = OUTLINED_FUNCTION_29_2(v52);
              sub_2311F4E34(v55);
              v51 = v100[1];
            }

            OUTLINED_FUNCTION_72_1();
          }

          while (!v54);
        }

        v66 = v0[59];
        v67 = MEMORY[0x23192A860](v51, MEMORY[0x277D837D0]);
        v69 = v68;

        v70 = sub_2311CFD58(v67, v69, v100);

        *(v42 + 14) = v70;

        OUTLINED_FUNCTION_48_2(&dword_2311CB000, v71, v98, "IntentSuggestionsGenerator: intentQuery.intentType: %s resulted in candidates SuggestionIds: %s", v72, v73, v74, v75, v92, v94, v96, v98, v99);
        OUTLINED_FUNCTION_49_2(v76, v77, v78, v79, v80, v81, v82, v83, v93, v95, v97);
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_29();

        v84 = OUTLINED_FUNCTION_68_1();
        v66(v84);
      }

      else
      {
        OUTLINED_FUNCTION_84_0();
        v63 = OUTLINED_FUNCTION_54_0();
        v64(v63);
        v65 = OUTLINED_FUNCTION_28();
        v19(v65);
      }

      OUTLINED_FUNCTION_41_3();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X2, X16 }
    }

    v20 = v0[62];
    v0[63] = v5;
    v0[64] = v7;
    v0[61] = v6;
    v0[62] = v20 + 1;
    v21 = v0[58];
    v22 = v0[36];
    if (!v21)
    {
      v21 = MEMORY[0x277D84F90];
    }

    sub_2311CF324(v21 + 40 * v20 + 72, (v0 + 7));
    sub_231367410();
    v23 = sub_231367550();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v23);
    sub_2311D1F18(v22, &qword_27DD43808, &qword_231373E90);
    if (EnumTagSinglePayload != 1)
    {
      break;
    }

    sub_2311CF324((v0 + 7), (v0 + 12));
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v0[32] = v7;
    if ((v25 & 1) == 0)
    {
      v33 = OUTLINED_FUNCTION_23();
      sub_23126DF64(v33);
      v7 = v34;
      v0[32] = v34;
    }

    v27 = *(v7 + 16);
    v26 = *(v7 + 24);
    if (v27 >= v26 >> 1)
    {
      v35 = OUTLINED_FUNCTION_30_2(v26);
      sub_23126DF64(v35);
      v7 = v36;
      v0[32] = v36;
    }

    v28 = v0[15];
    v29 = v0[16];
    v1 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v28);
    OUTLINED_FUNCTION_21();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_43();
    (*(v31 + 16))(v32, v1, v28);
    sub_2312E6494(v27, v32, v0 + 32, v28, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

    v5 = v7;
  }

  OUTLINED_FUNCTION_56(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[65] = v56;
  v0[66] = v57;
  ObjectType = swift_getObjectType();
  v0[67] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v59, v60, v61);
}

uint64_t sub_231214520()
{
  OUTLINED_FUNCTION_8();
  v0[89] = v1;
  v0[88] = v2;
  v0[87] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437E8, &qword_23136DFD8);
  OUTLINED_FUNCTION_40_0(v4);
  v0[90] = OUTLINED_FUNCTION_43();
  v5 = sub_231366380();
  v0[91] = v5;
  OUTLINED_FUNCTION_0(v5);
  v0[92] = v6;
  v0[93] = OUTLINED_FUNCTION_43();
  v7 = sub_2313673A0();
  v0[94] = v7;
  OUTLINED_FUNCTION_0(v7);
  v0[95] = v8;
  v0[96] = OUTLINED_FUNCTION_67();
  v0[97] = swift_task_alloc();
  v9 = sub_231367D80();
  v0[98] = v9;
  OUTLINED_FUNCTION_0(v9);
  v0[99] = v10;
  v0[100] = OUTLINED_FUNCTION_43();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  v0[101] = v11;
  OUTLINED_FUNCTION_40_0(v11);
  v0[102] = OUTLINED_FUNCTION_43();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v12);
  v0[103] = OUTLINED_FUNCTION_67();
  v0[104] = swift_task_alloc();
  v0[105] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231214710()
{
  OUTLINED_FUNCTION_70_1();
  v5 = *(v0 + 704);
  v6 = *(v5 + 32);
  *(v0 + 1000) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = sub_231369EE0();
  if (!v9)
  {
    v12 = 0;
    while (((63 - v8) >> 6) - 1 != v12)
    {
      v11 = v12 + 1;
      v9 = *(v10 + 8 * v12++ + 72);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_54_3();

    OUTLINED_FUNCTION_82_0();
    v31 = *(v4 + 104);
    v30 = (v4 + 104);
    v31(v2, *MEMORY[0x277D60B80], v9);
    OUTLINED_FUNCTION_62_2();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    v36 = *(v3 + 48);
    v37 = OUTLINED_FUNCTION_55_2();
    sub_2311E66F0(v37, v38, &qword_27DD42F18, &unk_23136B810);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_53(v8);
    if (v17)
    {
      v43 = *(v0 + 840);
      sub_2311D1F18(*(v0 + 832), &qword_27DD42F18, &unk_23136B810);
      v39 = OUTLINED_FUNCTION_67_0();
      sub_2311D1F18(v39, v40, &unk_23136B810);
      OUTLINED_FUNCTION_53(v8 + v36);
      if (v17)
      {
        v41 = sub_2311D1F18(*(v0 + 816), &qword_27DD42F18, &unk_23136B810);
LABEL_33:
        OUTLINED_FUNCTION_46_4(v41, v42);
        OUTLINED_FUNCTION_98("sirikit.intents.custom.com.apple.siri.SiriTimeAlarmInternal.AlarmIntentsExtension.CreateAlarmIntent");
        v59 = *MEMORY[0x277D60868];
        v60 = OUTLINED_FUNCTION_69_1();
        (unk_23136B810)(v60);
        OUTLINED_FUNCTION_55_2();
        sub_231367390();
        v61 = OUTLINED_FUNCTION_92();
        v30(v61);
        v62 = OUTLINED_FUNCTION_54_0();
        v63 = (v30)(v62);
        v65 = "siriKitIntentEvent";
        if ((v43 & 1) == 0)
        {
          goto LABEL_55;
        }

        sub_231367440();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_108();

        if (*(v0 + 536) == 1)
        {
          v69 = &qword_27DD43800;
          v70 = &qword_231377070;
          v71 = v0 + 512;
LABEL_54:
          v63 = sub_2311D1F18(v71, v69, v70);
          goto LABEL_55;
        }

        v72 = *(v0 + 528);
        *(v0 + 480) = *(v0 + 512);
        *(v0 + 496) = v72;
        if (!*(v0 + 504))
        {
          v69 = &qword_27DD443C0;
          v70 = &unk_23136E000;
          v71 = v0 + 480;
          goto LABEL_54;
        }

        v63 = OUTLINED_FUNCTION_107(v66, v67, v68, MEMORY[0x277D837D0]);
        if ((v63 & 1) == 0)
        {
LABEL_55:
          OUTLINED_FUNCTION_64_2(v63, v64);
          v96 = OUTLINED_FUNCTION_25_4("sirikit.intents.custom.com.apple.siri.SiriTimeInternal.TimerIntentsExtension.CreateTimerIntent");
          v97(v96);
          OUTLINED_FUNCTION_54_0();
          v98 = sub_231367390();
          v99 = OUTLINED_FUNCTION_71();
          v30(v99);
          (v30)(v65, &unk_23136B810);
          if (v98)
          {
            sub_231367440();
            OUTLINED_FUNCTION_9_7();
            OUTLINED_FUNCTION_108();

            if (*(v0 + 376) == 1)
            {
              v50 = &qword_27DD43800;
              v51 = &qword_231377070;
              v49 = v0 + 352;
              goto LABEL_31;
            }

            v100 = *(v0 + 368);
            *(v0 + 320) = *(v0 + 352);
            *(v0 + 336) = v100;
            if (!*(v0 + 344))
            {
              v50 = &qword_27DD443C0;
              v51 = &unk_23136E000;
              v49 = v0 + 320;
              goto LABEL_31;
            }

            if (swift_dynamicCast())
            {
              v101 = *(v0 + 664);
              OUTLINED_FUNCTION_10_7();
              if (v17 && v105 == v101)
              {
              }

              else
              {
                v107 = OUTLINED_FUNCTION_27_4(v102, v103, v104, v105);

                if ((v107 & 1) == 0)
                {
                  goto LABEL_73;
                }
              }

              sub_231367440();
              OUTLINED_FUNCTION_34_2();
              sub_231210BE8();

              if (*(v0 + 440) == 1)
              {
                v50 = &qword_27DD43800;
                v51 = &qword_231377070;
                v49 = v0 + 416;
                goto LABEL_31;
              }

              v108 = *(v0 + 432);
              *(v0 + 384) = *(v0 + 416);
              *(v0 + 400) = v108;
              if (!*(v0 + 408))
              {
                v50 = &qword_27DD443C0;
                v51 = &unk_23136E000;
                v49 = v0 + 384;
                goto LABEL_31;
              }

              if (swift_dynamicCast())
              {
                OUTLINED_FUNCTION_56(*(v0 + 696), *(*(v0 + 696) + 24));
                OUTLINED_FUNCTION_26_1();
                v109 = sub_231368300();
                v111 = OUTLINED_FUNCTION_106(v109, v110);
                OUTLINED_FUNCTION_81_0(v111);
                OUTLINED_FUNCTION_23_2();
                goto LABEL_19;
              }
            }
          }

LABEL_73:
          OUTLINED_FUNCTION_3_9();

          OUTLINED_FUNCTION_56_0();
          OUTLINED_FUNCTION_18_1();

          __asm { BRAA            X1, X16 }
        }

        v73 = *(v0 + 680);
        OUTLINED_FUNCTION_10_7();
        if (v17 && v77 == v73)
        {
        }

        else
        {
          v65 = OUTLINED_FUNCTION_27_4(v74, v75, v76, v77);

          if ((v65 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        sub_231367440();
        OUTLINED_FUNCTION_63_2();
        sub_231210BE8();

        if (*(v0 + 600) == 1)
        {
          v79 = &qword_27DD43800;
          v80 = &qword_231377070;
          v81 = v0 + 576;
        }

        else
        {
          v82 = *(v0 + 592);
          *(v0 + 544) = *(v0 + 576);
          *(v0 + 560) = v82;
          if (*(v0 + 568))
          {
            v83 = OUTLINED_FUNCTION_57_3();
            OUTLINED_FUNCTION_67_1(v83);
            if (!v17)
            {
              v84 = OUTLINED_FUNCTION_35_4();
              v85(v84);
              v86 = OUTLINED_FUNCTION_67_0();
              OUTLINED_FUNCTION_56(v86, v87);
              OUTLINED_FUNCTION_54_0();
              sub_231368300();
              OUTLINED_FUNCTION_91();
              *(v0 + 952) = v88;
              *(v0 + 960) = v89;
              ObjectType = swift_getObjectType();
              v91 = OUTLINED_FUNCTION_101(ObjectType);
              MEMORY[0xC0FFE74804](v91, v8, v59);
              sub_23136A260();
              OUTLINED_FUNCTION_21_5();
              goto LABEL_19;
            }

            goto LABEL_53;
          }

          v79 = &qword_27DD443C0;
          v80 = &unk_23136E000;
          v81 = v0 + 544;
        }

        sub_2311D1F18(v81, v79, v80);
        OUTLINED_FUNCTION_52();
        __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
LABEL_53:
        v71 = *(v0 + 720);
        v69 = &qword_27DD437E8;
        v70 = &qword_23136DFD8;
        goto LABEL_54;
      }
    }

    else
    {
      v43 = *(v0 + 784);
      sub_2311E66F0(*(v0 + 816), *(v0 + 824), &qword_27DD42F18, &unk_23136B810);
      OUTLINED_FUNCTION_88();
      if (!v44)
      {
        v52 = OUTLINED_FUNCTION_26_5();
        v53(v52);
        OUTLINED_FUNCTION_4_7();
        v56 = sub_231217784(v54, 255, v55, MEMORY[0x277D60BC0]);
        OUTLINED_FUNCTION_105(v56);
        v57 = OUTLINED_FUNCTION_93();
        v2(v57);
        OUTLINED_FUNCTION_80_1(&unk_23136B810);
        OUTLINED_FUNCTION_80_1(v1);
        v58 = OUTLINED_FUNCTION_44_0();
        v2(v58);
        v41 = OUTLINED_FUNCTION_80_1(v115);
        if ((v8 & 1) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_33;
      }

      sub_2311D1F18(&unk_23136B810, &qword_27DD42F18, &unk_23136B810);
      v45 = OUTLINED_FUNCTION_55_2();
      sub_2311D1F18(v45, v46, &unk_23136B810);
      v47 = OUTLINED_FUNCTION_44_0();
      v48(v47);
    }

    v49 = *(v0 + 816);
    v50 = &qword_27DD437F0;
    v51 = &unk_23136DFE0;
LABEL_31:
    sub_2311D1F18(v49, v50, v51);
    goto LABEL_73;
  }

  v11 = 0;
LABEL_8:
  *(v0 + 856) = v11;
  *(v0 + 848) = v9;
  v13 = __clz(__rbit64(v9)) | (v11 << 6);
  v14 = (*(v10 + 48) + 16 * v13);
  v15 = *v14;
  *(v0 + 864) = *v14;
  v16 = v14[1];
  *(v0 + 872) = v16;
  sub_231215FE4(*(v10 + 56) + 48 * v13, v0 + 32);
  *(v0 + 80) = v15;
  *(v0 + 88) = v16;
  sub_23121776C((v0 + 32), (v0 + 96));
  v17 = v15 == 0xD000000000000013 && 0x800000023137CF00 == v16;
  if (v17 || (OUTLINED_FUNCTION_44_0(), (sub_23136A900() & 1) != 0))
  {
    sub_2311E66F0(v0 + 80, v0 + 144, &qword_27DD437F8, &unk_23136DFF0);
    sub_231369EE0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 696);
      *(v0 + 880) = *(v0 + 648);
      OUTLINED_FUNCTION_56(v18, v18[3]);
      OUTLINED_FUNCTION_54_0();
      sub_231368300();
      OUTLINED_FUNCTION_91();
      *(v0 + 888) = v19;
      swift_getObjectType();
      v20 = swift_task_alloc();
      *(v0 + 896) = v20;
      *v20 = v0;
      OUTLINED_FUNCTION_12_5(v20);
      OUTLINED_FUNCTION_18_1();

      return MEMORY[0x2821C77A8]();
    }
  }

  else
  {
    sub_231369EE0();
  }

  OUTLINED_FUNCTION_56(*(v0 + 696), *(*(v0 + 696) + 24));
  OUTLINED_FUNCTION_28_0();
  *(v0 + 904) = sub_231368300();
  *(v0 + 912) = v22;
  *(v0 + 920) = swift_getObjectType();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 928) = v23;
  *(v0 + 936) = v24;
  v25 = swift_getObjectType();
  *(v0 + 944) = v25;
  OUTLINED_FUNCTION_109(v25);
  OUTLINED_FUNCTION_22_4();
LABEL_19:
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_231215018()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  swift_unknownObjectRelease();

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231215134()
{
  OUTLINED_FUNCTION_70_1();
  sub_2311D1F18(v2 + 80, &qword_27DD437F8, &unk_23136DFF0);
  v8 = *(v2 + 856);
  v9 = (*(v2 + 848) - 1) & *(v2 + 848);
  if (v9)
  {
    v10 = *(v2 + 704);
    goto LABEL_7;
  }

  do
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v11 >= (((1 << *(v2 + 1000)) + 63) >> 6))
    {
      OUTLINED_FUNCTION_54_3();

      OUTLINED_FUNCTION_82_0();
      v29 = *(v7 + 104);
      v7 += 104;
      v29(v4, *MEMORY[0x277D60B80], v1);
      OUTLINED_FUNCTION_62_2();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
      v34 = *(v6 + 48);
      v5 = &unk_23136B810;
      v35 = OUTLINED_FUNCTION_55_2();
      sub_2311E66F0(v35, v36, &qword_27DD42F18, &unk_23136B810);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_53(v0);
      if (v16)
      {
        v41 = *(v2 + 840);
        sub_2311D1F18(*(v2 + 832), &qword_27DD42F18, &unk_23136B810);
        v37 = OUTLINED_FUNCTION_67_0();
        sub_2311D1F18(v37, v38, &unk_23136B810);
        OUTLINED_FUNCTION_53(v0 + v34);
        if (v16)
        {
          v39 = sub_2311D1F18(*(v2 + 816), &qword_27DD42F18, &unk_23136B810);
LABEL_32:
          OUTLINED_FUNCTION_46_4(v39, v40);
          OUTLINED_FUNCTION_98("sirikit.intents.custom.com.apple.siri.SiriTimeAlarmInternal.AlarmIntentsExtension.CreateAlarmIntent");
          v1 = *MEMORY[0x277D60868];
          v57 = OUTLINED_FUNCTION_69_1();
          (unk_23136B810)(v57);
          OUTLINED_FUNCTION_55_2();
          sub_231367390();
          v58 = OUTLINED_FUNCTION_92();
          (v7)(v58);
          v59 = OUTLINED_FUNCTION_54_0();
          v60 = (v7)(v59);
          v3 = "siriKitIntentEvent";
          if ((v41 & 1) == 0)
          {
            goto LABEL_55;
          }

          sub_231367440();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_108();

          if (*(v2 + 536) == 1)
          {
            v65 = &qword_27DD43800;
            v66 = &qword_231377070;
            v67 = v2 + 512;
LABEL_54:
            v60 = sub_2311D1F18(v67, v65, v66);
            goto LABEL_55;
          }

          v68 = *(v2 + 528);
          *(v2 + 480) = *(v2 + 512);
          *(v2 + 496) = v68;
          if (!*(v2 + 504))
          {
            v65 = &qword_27DD443C0;
            v66 = &unk_23136E000;
            v67 = v2 + 480;
            goto LABEL_54;
          }

          v60 = OUTLINED_FUNCTION_107(v62, v63, v64, MEMORY[0x277D837D0]);
          if ((v60 & 1) == 0)
          {
LABEL_55:
            OUTLINED_FUNCTION_64_2(v60, v61);
            v92 = OUTLINED_FUNCTION_25_4("sirikit.intents.custom.com.apple.siri.SiriTimeInternal.TimerIntentsExtension.CreateTimerIntent");
            v93(v92);
            OUTLINED_FUNCTION_54_0();
            v94 = sub_231367390();
            v95 = OUTLINED_FUNCTION_71();
            (v7)(v95);
            (v7)(v3, v5);
            if (v94)
            {
              sub_231367440();
              OUTLINED_FUNCTION_9_7();
              OUTLINED_FUNCTION_108();

              if (*(v2 + 376) == 1)
              {
                v48 = &qword_27DD43800;
                v49 = &qword_231377070;
                v47 = v2 + 352;
                goto LABEL_30;
              }

              v96 = *(v2 + 368);
              *(v2 + 320) = *(v2 + 352);
              *(v2 + 336) = v96;
              if (!*(v2 + 344))
              {
                v48 = &qword_27DD443C0;
                v49 = &unk_23136E000;
                v47 = v2 + 320;
                goto LABEL_30;
              }

              if (swift_dynamicCast())
              {
                v97 = *(v2 + 664);
                OUTLINED_FUNCTION_10_7();
                if (v16 && v101 == v97)
                {
                }

                else
                {
                  v103 = OUTLINED_FUNCTION_27_4(v98, v99, v100, v101);

                  if ((v103 & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }

                sub_231367440();
                OUTLINED_FUNCTION_34_2();
                sub_231210BE8();

                if (*(v2 + 440) == 1)
                {
                  v48 = &qword_27DD43800;
                  v49 = &qword_231377070;
                  v47 = v2 + 416;
                  goto LABEL_30;
                }

                v104 = *(v2 + 432);
                *(v2 + 384) = *(v2 + 416);
                *(v2 + 400) = v104;
                if (!*(v2 + 408))
                {
                  v48 = &qword_27DD443C0;
                  v49 = &unk_23136E000;
                  v47 = v2 + 384;
                  goto LABEL_30;
                }

                if (swift_dynamicCast())
                {
                  OUTLINED_FUNCTION_56(*(v2 + 696), *(*(v2 + 696) + 24));
                  OUTLINED_FUNCTION_26_1();
                  v105 = sub_231368300();
                  v107 = OUTLINED_FUNCTION_106(v105, v106);
                  OUTLINED_FUNCTION_81_0(v107);
                  OUTLINED_FUNCTION_23_2();
                  goto LABEL_18;
                }
              }
            }

LABEL_73:
            OUTLINED_FUNCTION_3_9();

            OUTLINED_FUNCTION_56_0();
            OUTLINED_FUNCTION_18_1();

            __asm { BRAA            X1, X16 }
          }

          v69 = *(v2 + 680);
          OUTLINED_FUNCTION_10_7();
          if (!v16 || v73 != v69)
          {
            v3 = OUTLINED_FUNCTION_27_4(v70, v71, v72, v73);

            if ((v3 & 1) == 0)
            {
              goto LABEL_55;
            }

LABEL_46:
            sub_231367440();
            OUTLINED_FUNCTION_63_2();
            sub_231210BE8();

            if (*(v2 + 600) == 1)
            {
              v75 = &qword_27DD43800;
              v76 = &qword_231377070;
              v77 = v2 + 576;
            }

            else
            {
              v78 = *(v2 + 592);
              *(v2 + 544) = *(v2 + 576);
              *(v2 + 560) = v78;
              if (*(v2 + 568))
              {
                v79 = OUTLINED_FUNCTION_57_3();
                OUTLINED_FUNCTION_67_1(v79);
                if (!v16)
                {
                  v80 = OUTLINED_FUNCTION_35_4();
                  v81(v80);
                  v82 = OUTLINED_FUNCTION_67_0();
                  OUTLINED_FUNCTION_56(v82, v83);
                  OUTLINED_FUNCTION_54_0();
                  sub_231368300();
                  OUTLINED_FUNCTION_91();
                  *(v2 + 952) = v84;
                  *(v2 + 960) = v85;
                  ObjectType = swift_getObjectType();
                  v87 = OUTLINED_FUNCTION_101(ObjectType);
                  v5[2](v87, v0, v1);
                  sub_23136A260();
                  OUTLINED_FUNCTION_21_5();
                  goto LABEL_18;
                }

                goto LABEL_53;
              }

              v75 = &qword_27DD443C0;
              v76 = &unk_23136E000;
              v77 = v2 + 544;
            }

            sub_2311D1F18(v77, v75, v76);
            OUTLINED_FUNCTION_52();
            __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
LABEL_53:
            v67 = *(v2 + 720);
            v65 = &qword_27DD437E8;
            v66 = &qword_23136DFD8;
            goto LABEL_54;
          }

LABEL_45:

          goto LABEL_46;
        }
      }

      else
      {
        v41 = *(v2 + 784);
        sub_2311E66F0(*(v2 + 816), *(v2 + 824), &qword_27DD42F18, &unk_23136B810);
        OUTLINED_FUNCTION_88();
        if (!v42)
        {
          v50 = OUTLINED_FUNCTION_26_5();
          v51(v50);
          OUTLINED_FUNCTION_4_7();
          v54 = sub_231217784(v52, 255, v53, MEMORY[0x277D60BC0]);
          OUTLINED_FUNCTION_105(v54);
          v55 = OUTLINED_FUNCTION_93();
          v4(v55);
          OUTLINED_FUNCTION_80_1(&unk_23136B810);
          OUTLINED_FUNCTION_80_1(v3);
          v56 = OUTLINED_FUNCTION_44_0();
          v4(v56);
          v39 = OUTLINED_FUNCTION_80_1(v111);
          if ((v0 & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_32;
        }

        sub_2311D1F18(&unk_23136B810, &qword_27DD42F18, &unk_23136B810);
        v43 = OUTLINED_FUNCTION_55_2();
        sub_2311D1F18(v43, v44, &unk_23136B810);
        v45 = OUTLINED_FUNCTION_44_0();
        v46(v45);
      }

      v47 = *(v2 + 816);
      v48 = &qword_27DD437F0;
      v49 = &unk_23136DFE0;
LABEL_30:
      sub_2311D1F18(v47, v48, v49);
      goto LABEL_73;
    }

    v10 = *(v2 + 704);
    v9 = *(v10 + 8 * v11 + 64);
    ++v8;
  }

  while (!v9);
  v8 = v11;
LABEL_7:
  *(v2 + 856) = v8;
  *(v2 + 848) = v9;
  v12 = __clz(__rbit64(v9)) | (v8 << 6);
  v13 = (*(v10 + 48) + 16 * v12);
  v14 = *v13;
  *(v2 + 864) = *v13;
  v15 = v13[1];
  *(v2 + 872) = v15;
  sub_231215FE4(*(v10 + 56) + 48 * v12, v2 + 32);
  *(v2 + 80) = v14;
  *(v2 + 88) = v15;
  sub_23121776C((v2 + 32), (v2 + 96));
  v16 = v14 == 0xD000000000000013 && 0x800000023137CF00 == v15;
  if (v16 || (OUTLINED_FUNCTION_44_0(), (sub_23136A900() & 1) != 0))
  {
    sub_2311E66F0(v2 + 80, v2 + 144, &qword_27DD437F8, &unk_23136DFF0);
    sub_231369EE0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
    if (swift_dynamicCast())
    {
      v17 = *(v2 + 696);
      *(v2 + 880) = *(v2 + 648);
      OUTLINED_FUNCTION_56(v17, v17[3]);
      OUTLINED_FUNCTION_54_0();
      sub_231368300();
      OUTLINED_FUNCTION_91();
      *(v2 + 888) = v18;
      swift_getObjectType();
      v19 = swift_task_alloc();
      *(v2 + 896) = v19;
      *v19 = v2;
      OUTLINED_FUNCTION_12_5(v19);
      OUTLINED_FUNCTION_18_1();

      return MEMORY[0x2821C77A8]();
    }
  }

  else
  {
    sub_231369EE0();
  }

  OUTLINED_FUNCTION_56(*(v2 + 696), *(*(v2 + 696) + 24));
  OUTLINED_FUNCTION_28_0();
  *(v2 + 904) = sub_231368300();
  *(v2 + 912) = v21;
  *(v2 + 920) = swift_getObjectType();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v2 + 928) = v22;
  *(v2 + 936) = v23;
  v24 = swift_getObjectType();
  *(v2 + 944) = v24;
  OUTLINED_FUNCTION_109(v24);
  OUTLINED_FUNCTION_22_4();
LABEL_18:
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_231215A44()
{
  OUTLINED_FUNCTION_8();
  sub_231369380();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_231215AB4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 26, v1);
  v0[34] = v1;
  v0[35] = *(v2 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 31);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
  v5 = v0[15];
  v6 = __swift_project_boxed_opaque_existential_1(v0 + 12, v5);
  v0[39] = v5;
  v7 = __swift_allocate_boxed_opaque_existential_1(v0 + 36);
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  v9 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_231215BF0, v9, v8);
}

uint64_t sub_231215BF0()
{
  OUTLINED_FUNCTION_8();
  sub_231369450();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 26);
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_231215C84()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_63_2();
  sub_231369390();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 608));
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_231215D00()
{
  (*(v0[92] + 8))(v0[93], v0[91]);
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231215DCC()
{
  OUTLINED_FUNCTION_34_2();
  sub_231369390();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 448));
  OUTLINED_FUNCTION_3_9();

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231215EC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return IntentSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

unint64_t sub_231215F6C(uint64_t a1, uint64_t a2)
{
  sub_23136A9D0();
  sub_23136A060();
  v4 = sub_23136AA00();

  return sub_231216A44(a1, a2, v4);
}

uint64_t sub_231215FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2312160A8(uint64_t a1)
{
  OUTLINED_FUNCTION_104(a1);
  sub_23120F4F0();
  v2 = sub_23136AA00();

  return sub_231216AF8(v1, v2);
}

unint64_t sub_231216104()
{
  OUTLINED_FUNCTION_0_9();
  sub_231367E10();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7CA28, v0, v1, MEMORY[0x277D60C80]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D60C78], &qword_280F7CA20, v4, MEMORY[0x277D60C88]);
}

unint64_t sub_2312161B0(uint64_t a1)
{
  sub_2313692F0();
  sub_231217784(&unk_280F7C910, 255, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);
  v2 = sub_231369F30();
  return sub_231216BB0(a1, v2);
}

unint64_t sub_231216260()
{
  OUTLINED_FUNCTION_0_9();
  sub_231369D50();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7C888, v0, v1, MEMORY[0x277D72D68]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D72D58], &qword_27DD43360, v4, MEMORY[0x277D72D70]);
}

unint64_t sub_23121630C(uint64_t a1)
{
  v1 = a1;
  sub_23136A9D0();
  sub_2312112DC(v4, v1);
  v2 = sub_23136AA00();

  return sub_231216E40(v1, v2);
}

unint64_t sub_231216378(uint64_t a1)
{
  OUTLINED_FUNCTION_104(a1);
  sub_2312B7044(v4);
  v2 = sub_23136AA00();

  return sub_231217010(v1, v2);
}

unint64_t sub_2312163D4()
{
  OUTLINED_FUNCTION_0_9();
  sub_231367E50();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7CA10, v0, v1, MEMORY[0x277D60CC8]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D60CC0], &qword_27DD437C8, v4, MEMORY[0x277D60CD0]);
}

unint64_t sub_231216480()
{
  OUTLINED_FUNCTION_0_9();
  sub_231368260();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7C9A0, v0, v1, MEMORY[0x277D60E48]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D60E40], &qword_280F7C998, v4, MEMORY[0x277D60E50]);
}

unint64_t sub_23121652C()
{
  OUTLINED_FUNCTION_0_9();
  sub_2313673A0();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7CAF0, v0, v1, MEMORY[0x277D60898]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D60890], &qword_280F7CAE8, v4, MEMORY[0x277D608A0]);
}

unint64_t sub_2312165D8()
{
  OUTLINED_FUNCTION_0_9();
  sub_231369330();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7C8F0, v0, v1, MEMORY[0x277D61318]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D61310], &qword_280F7C8E8, v4, MEMORY[0x277D61320]);
}

unint64_t sub_231216684()
{
  OUTLINED_FUNCTION_0_9();
  sub_2313694E0();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7C8C8, v0, v1, MEMORY[0x277D61390]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D61388], &qword_280F7C8C0, v4, MEMORY[0x277D61398]);
}

unint64_t sub_231216730()
{
  OUTLINED_FUNCTION_0_9();
  sub_231367050();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7CB18, v0, v1, MEMORY[0x277D60800]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D607F8], &qword_280F7CB10, v4, MEMORY[0x277D60808]);
}

unint64_t sub_2312167DC()
{
  OUTLINED_FUNCTION_0_9();
  sub_231367C70();
  v2 = OUTLINED_FUNCTION_60_2(&qword_280F7CA80, v0, v1, MEMORY[0x277D60AF8]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D60AE8], &qword_280F7CA78, v4, MEMORY[0x277D60B00]);
}

unint64_t sub_231216888(uint64_t a1)
{
  v2 = sub_23136A5D0();

  return sub_231217450(a1, v2);
}

unint64_t sub_2312168CC(uint64_t a1)
{
  v2 = sub_23136A470();

  return sub_231217514(a1, v2);
}

unint64_t sub_231216910()
{
  OUTLINED_FUNCTION_0_9();
  sub_231369DD0();
  v2 = OUTLINED_FUNCTION_60_2(&qword_27DD437D8, v0, v1, MEMORY[0x277D73150]);
  v3 = OUTLINED_FUNCTION_16_6(v2);
  return OUTLINED_FUNCTION_14_7(v3, v3, MEMORY[0x277D73148], &qword_27DD437E0, v4, MEMORY[0x277D73158]);
}

unint64_t sub_2312169BC(uint64_t a1)
{
  sub_23136A9D0();
  sub_23133F8E8(a1);
  sub_23136A060();

  v2 = sub_23136AA00();

  return sub_2312175D4(a1, v2);
}

unint64_t sub_231216A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23136A900() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231216AF8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {

    sub_23120F048();
    v6 = v5;

    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231216BB0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_2313692F0();
    sub_231217784(&qword_280F7C908, 255, MEMORY[0x277D612D0], MEMORY[0x277D612E0]);
    if (sub_231369F60())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231216CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a4;
  v19 = a1;
  v8 = a3(0);
  OUTLINED_FUNCTION_21();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v24 = v6 + 64;
  v20 = v6;
  v15 = ~(-1 << *(v6 + 32));
  for (i = a2 & v15; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v14, *(v20 + 48) + *(v10 + 72) * i, v8, v12);
    sub_231217784(v21, 255, v22, v23);
    v17 = sub_231369F60();
    (*(v10 + 8))(v14, v8);
    if (v17)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231216E40(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = &unk_23137A540;
      v8 = 0xD00000000000001FLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
          break;
        case 2:
          v8 = 0xD000000000000019;
          v7 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
          break;
        case 3:
          v8 = 0xD00000000000001ALL;
          v7 = "SIRI_SUGGESTIONS_PLATFORM";
          break;
        default:
          break;
      }

      v9 = v7 | 0x8000000000000000;
      v10 = 0xD00000000000001FLL;
      v11 = &unk_23137A540;
      switch(a1)
      {
        case 1:
          v11 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
          break;
        case 2:
          v10 = 0xD000000000000019;
          v11 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
          break;
        case 3:
          v10 = 0xD00000000000001ALL;
          v11 = "SIRI_SUGGESTIONS_PLATFORM";
          break;
        default:
          break;
      }

      if (v8 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_23136A900();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_231217010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = sub_231369D50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B0, &unk_23136DFC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60) - 8;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = v3 + 64;
  v18 = -1 << *(v3 + 32);
  v19 = a2 & ~v18;
  if ((*(v3 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v34 = v14;
    v35 = ~v18;
    v28 = (v6 + 32);
    v29 = v8;
    v36 = *(v13 + 72);
    v32 = (v6 + 8);
    v33 = v3 + 64;
    v27 = v3;
    do
    {
      sub_2311E66F0(*(v3 + 48) + v36 * v19, v16, &qword_27DD437B8, &qword_23136FA60);
      v20 = *(v8 + 48);
      sub_2311E66F0(v16, v10, &qword_27DD437B8, &qword_23136FA60);
      sub_2311E66F0(v37, &v10[v20], &qword_27DD437B8, &qword_23136FA60);
      if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
      {
        sub_2311D1F18(v16, &qword_27DD437B8, &qword_23136FA60);
        if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v5) == 1)
        {
          sub_2311D1F18(v10, &qword_27DD437B8, &qword_23136FA60);
          return v19;
        }
      }

      else
      {
        v21 = v34;
        sub_2311E66F0(v10, v34, &qword_27DD437B8, &qword_23136FA60);
        if (__swift_getEnumTagSinglePayload(&v10[v20], 1, v5) != 1)
        {
          v22 = &v10[v20];
          v23 = v30;
          (*v28)(v30, v22, v5);
          sub_231217784(&qword_27DD43360, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
          v31 = sub_231369F60();
          v24 = *v32;
          (*v32)(v23, v5);
          sub_2311D1F18(v16, &qword_27DD437B8, &qword_23136FA60);
          v24(v21, v5);
          v3 = v27;
          v8 = v29;
          sub_2311D1F18(v10, &qword_27DD437B8, &qword_23136FA60);
          v17 = v33;
          if (v31)
          {
            return v19;
          }

          goto LABEL_10;
        }

        sub_2311D1F18(v16, &qword_27DD437B8, &qword_23136FA60);
        (*v32)(v21, v5);
        v17 = v33;
      }

      sub_2311D1F18(v10, &qword_27DD437B0, &unk_23136DFC0);
LABEL_10:
      v19 = (v19 + 1) & v35;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  return v19;
}

unint64_t sub_231217450(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2311E5778(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x23192AC90](v8, a1);
    sub_2311E57D4(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231217514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2312176CC();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_23136A480();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2312175D4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_23133F8E8(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_23133F8E8(v3) && v8 == v9)
    {

      return i;
    }

    v11 = sub_23136A900();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_2312176CC()
{
  result = qword_27DD437D0;
  if (!qword_27DD437D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD437D0);
  }

  return result;
}

_OWORD *sub_23121776C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_231217784(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1, uint64_t a2)
{

  return sub_231367430();
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_57_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_76_1(uint64_t a1)
{

  return sub_2313690F0();
}

uint64_t OUTLINED_FUNCTION_78_0()
{
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1)
{

  return sub_23136A8B0();
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1)
{

  return sub_2311D1F18(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1)
{
  v2[124] = a1;
  v2[59] = v1;
  v2[56] = v4;

  return sub_23136A260();
}

void OUTLINED_FUNCTION_84_0()
{
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_23136A060();
}

double OUTLINED_FUNCTION_94()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_101(uint64_t a1)
{
  v2[121] = a1;
  v2[79] = v1;

  return __swift_allocate_boxed_opaque_existential_1(v2 + 76);
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_103()
{

  return sub_2311E66F0(v2, v0 + v4, v1, v3);
}

void *OUTLINED_FUNCTION_104(uint64_t a1, ...)
{

  return sub_23136A9D0();
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1)
{

  return sub_231369F60();
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1, uint64_t a2)
{
  *(v2 + 976) = a1;
  *(v2 + 984) = a2;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_107(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_108()
{

  sub_231210BE8();
}

uint64_t OUTLINED_FUNCTION_109(uint64_t a1)
{

  return sub_23136A260();
}

uint64_t sub_231217CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  v6 = v5;
  if (v4)
  {
    sub_2311E66F0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_27DD434C0, &unk_23136CA00);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_231217DF4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

double sub_231217EA0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2311E66F0(a1 + 32, a2, &qword_27DD434E8, &unk_23136E480);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t EducationalSuggestions.rawValue.getter()
{
  v1 = 0x536874695777656ELL;
  if (*v0 != 1)
  {
    v1 = 0x4F6874695777656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4874736567677573;
  }
}

BOOL sub_231217F58(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

BOOL sub_231217FE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_231369EE0();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_231218158(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = (a4)(0, a2);
    OUTLINED_FUNCTION_0(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

SiriSuggestions::EducationalSuggestions_optional __swiftcall EducationalSuggestions.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2312182CC@<X0>(uint64_t *a1@<X8>)
{
  result = EducationalSuggestions.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_231218304()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  strcpy(&v10 - v4, "com.apple.siri");
  (&v10 - v4)[15] = -18;
  v6 = *MEMORY[0x277D61238];
  v7 = sub_231368F50();
  OUTLINED_FUNCTION_11();
  (*(v8 + 104))(v5, v6, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  return sub_231369060();
}

uint64_t static SuggestionsForHelpDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  OUTLINED_FUNCTION_8();
  v0[17] = v1;
  v0[18] = v2;
  v3 = sub_2313698C0();
  v0[19] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[20] = v4;
  v0[21] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121850C()
{
  v1 = v0[17];
  v2 = sub_231367000();
  v3 = sub_231366FF0();
  v0[5] = v2;
  v0[6] = sub_23121CD34(&qword_280F7CB20, 255, MEMORY[0x277D607D8], MEMORY[0x277D607D0]);
  v0[2] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_231218664;

  return v6(v0 + 2);
}

uint64_t sub_231218664()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = v0;
  *(v0 + 184) = v2;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23121875C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43810, &qword_23136E028);
  v1 = sub_231368EF0();
  if (v1)
  {
    sub_2311D924C(v1, v0 + 96);

    if (*(v0 + 120))
    {
      sub_2311D38A8((v0 + 96), v0 + 56);
      type metadata accessor for MentionedAppResolver();
      v2 = static MentionedAppResolver.mentionedAppParamType(appUtils:)(v0 + 56);
      v3 = swift_task_alloc();
      *(v3 + 16) = v0 + 56;
      *(v3 + 24) = v2;
      sub_231368EB0();

      OUTLINED_FUNCTION_20_4();
      sub_231368EB0();

      OUTLINED_FUNCTION_20_4();
      sub_231368EB0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_23136B670;
      sub_231368ED0();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      goto LABEL_8;
    }
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_2311D1F18(v0 + 96, &qword_27DD43818, &unk_23136E030);
  sub_2313690F0();
  v5 = sub_2313698A0();
  v6 = sub_23136A3B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2311CB000, v5, v6, "No appUtils instance set on the lifecycle container", v7, 2u);
    OUTLINED_FUNCTION_29();
  }

  v8 = OUTLINED_FUNCTION_26_1();
  v9(v8);

  v4 = MEMORY[0x277D84F90];
LABEL_8:

  OUTLINED_FUNCTION_14();

  return v10(v4);
}

uint64_t static MentionedAppResolver.mentionedAppParamType(appUtils:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43820, &qword_23136E040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  if (qword_280F826C8 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_280F826C8);
  }

  v6 = qword_280F826C0;
  sub_231369EE0();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F8E648);
  (*(v3 + 16))(v5, v7, v2);
  sub_2311CF324(a1, &v13);
  OUTLINED_FUNCTION_21_1();
  v8 = swift_allocObject();
  sub_2311D38A8(&v13, v8 + 16);
  v9 = OUTLINED_FUNCTION_54_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v15 = sub_23121C788(&qword_280F7CAD8, &qword_27DD43828, &qword_23136E058, MEMORY[0x277D608D8]);
  __swift_allocate_boxed_opaque_existential_1(&v13);
  sub_231367550();
  sub_231367DC0();
  sub_2313674C0();
  sub_231368540();
  swift_allocObject();
  return sub_231368500();
}

uint64_t sub_231218CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  *&v43 = a3;
  v4 = sub_2313673A0();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 40);
  v41 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v7 = sub_231367D80();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23136D280;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v11 + v10, *MEMORY[0x277D60B78], v7);
  v13(v12 + v9, *MEMORY[0x277D60B80], v7);
  v14 = v12 + 2 * v9;
  v15 = *MEMORY[0x277D607E8];
  v16 = sub_231367020();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  v13(v14, *MEMORY[0x277D60BA0], v7);
  v67 = v41;
  v68 = v6;
  __swift_allocate_boxed_opaque_existential_1(v66);
  sub_231368B30();

  v17 = v68;
  v41 = v67;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  sub_231368B80();
  v64 = v41;
  v65 = v17;
  __swift_allocate_boxed_opaque_existential_1(v63);
  sub_231368B10();

  v18 = v65;
  v41 = v64;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  if (qword_280F7CB60 != -1)
  {
    swift_once();
  }

  v61 = v41;
  v62 = v18;
  __swift_allocate_boxed_opaque_existential_1(v60);
  sub_231368AE0();
  v19 = v62;
  v41 = v61;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  if (qword_280F7CB48 != -1)
  {
    swift_once();
  }

  v58 = v41;
  v59 = v19;
  __swift_allocate_boxed_opaque_existential_1(v57);
  sub_231368B00();
  v20 = v59;
  v41 = v58;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  if (qword_280F826C8 != -1)
  {
    swift_once();
  }

  sub_2311CF324(v42, &v54);
  v21 = type metadata accessor for MentionedAppResolver();
  v22 = swift_allocObject();
  MentionedAppResolver.init(appUtils:)(&v54);
  *&v52 = v21;
  *(&v52 + 1) = sub_23121CD34(&qword_280F826A8, v23, type metadata accessor for MentionedAppResolver, &protocol conformance descriptor for MentionedAppResolver);
  v51[0] = v22;
  v55 = v41;
  v56 = v20;
  __swift_allocate_boxed_opaque_existential_1(&v54);
  sub_231368B50();
  sub_2311D1F18(v51, &qword_27DD43878, &unk_23136E490);
  v24 = v56;
  v43 = v55;
  __swift_project_boxed_opaque_existential_1(&v54, v55);
  v25 = type metadata accessor for SuggestHelpAssetProvider();
  v26 = swift_allocObject();
  *&v49 = v25;
  *(&v49 + 1) = sub_23121CD34(qword_280F80760, v27, type metadata accessor for SuggestHelpAssetProvider, &unk_23136E428);
  v48[0] = v26;
  v52 = v43;
  v53 = v24;
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_231368AF0();
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v28 = v53;
  v43 = v52;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v30 = v44;
  v29 = v45;
  *v44 = 0x4874736567677573;
  v30[1] = 0xEB00000000706C65;
  v31 = v46;
  (*(v29 + 104))(v30, *MEMORY[0x277D60880], v46);
  v49 = v43;
  v50 = v28;
  __swift_allocate_boxed_opaque_existential_1(v48);
  sub_231368AC0();
  (*(v29 + 8))(v30, v31);
  v32 = v49;
  v33 = __swift_project_boxed_opaque_existential_1(v48, v49);
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v41 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SuggestHelpFilter();
  v38 = swift_allocObject();
  v47[3] = v37;
  v47[4] = sub_23121CD34(qword_280F834D0, v39, type metadata accessor for SuggestHelpFilter, &unk_23136E400);
  v47[0] = v38;
  sub_231368B40();
  (*(v34 + 8))(v36, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return __swift_destroy_boxed_opaque_existential_1Tm(v66);
}

uint64_t MentionedAppResolver.__allocating_init(appUtils:)(__int128 *a1)
{
  v2 = swift_allocObject();
  MentionedAppResolver.init(appUtils:)(a1);
  return v2;
}

uint64_t sub_23121947C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v14 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_231368B80();
  v22 = v14;
  v23 = v1;
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_231368B10();

  v2 = v23;
  v14 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  if (qword_280F7CB60 != -1)
  {
    swift_once();
  }

  v19 = v14;
  v20 = v2;
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_231368AE0();
  v3 = v20;
  v14 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  if (qword_280F7CB80 != -1)
  {
    swift_once();
  }

  v16 = v14;
  v17 = v3;
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_231368B00();
  v4 = v16;
  v5 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v9 = sub_231367D80();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23136B670;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D60B78], v9);
  sub_231368B30();

  (*(v6 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

uint64_t sub_2312197AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v18 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_231368B80();
  v30 = v18;
  v31 = v1;
  __swift_allocate_boxed_opaque_existential_1(v29);
  sub_231368B10();

  v2 = v31;
  v18 = v30;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  if (qword_280F7CB60 != -1)
  {
    swift_once();
  }

  v27 = v18;
  v28 = v2;
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_231368AE0();
  v3 = v28;
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  if (qword_280F7CB80 != -1)
  {
    swift_once();
  }

  v24 = v18;
  v25 = v3;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_231368B00();
  v4 = v25;
  v18 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  v5 = sub_231367D80();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23136B670;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D60B78], v5);
  v21 = v18;
  v22 = v4;
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_231368B30();

  v9 = v21;
  v10 = __swift_project_boxed_opaque_existential_1(v20, v21);
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DeviceTypeResolver();
  v15 = swift_allocObject();
  if (qword_280F832C8 != -1)
  {
    swift_once();
  }

  *(v15 + 16) = sub_231368520();
  *(v15 + 24) = v16;
  v19[3] = v14;
  v19[4] = sub_23121CD34(&qword_280F832B0, v16, type metadata accessor for DeviceTypeResolver, &protocol conformance descriptor for DeviceTypeResolver);
  v19[0] = v15;
  sub_231368B50();
  (*(v11 + 8))(v13, v9);
  sub_2311D1F18(v19, &qword_27DD43878, &unk_23136E490);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_231219C48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return static SuggestionsForHelpDefinitionFactory.createOwnerDefinitions(builderFactory:)();
}

uint64_t sub_231219CE4()
{
  result = sub_231366F80();
  qword_280F826D0 = result;
  unk_280F826D8 = v1;
  return result;
}

uint64_t static MentionedAppResolver.typeIdentifier.getter()
{
  if (qword_280F826C8 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_280F826C8);
  }

  v0 = qword_280F826D0;
  sub_231369EE0();
  return v0;
}

uint64_t sub_231219D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_231367550();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_231369050();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231219E80, 0, 0);
}

uint64_t sub_231219E80()
{
  v1 = (v0 + 136);
  v2 = v0 + 128;
  v3 = (v0 + 120);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 104), *(v0 + 120));
  v4 = OUTLINED_FUNCTION_27();
  if (v5(v4) == *MEMORY[0x277D60928] && (v1 = (v0 + 160), v6 = *(v0 + 160), v2 = v0 + 152, v7 = *(v0 + 152), v3 = (v0 + 144), v8 = *(v0 + 144), v9 = *(v0 + 136), (*(*(v0 + 128) + 96))(v9, *(v0 + 120)), (*(v7 + 32))(v6, v9, v8), v10 = sub_231369010(), v11 = sub_231366F80(), sub_231210CBC(v11, v12, v10), v14 = v13, , , v14))
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 112), *(*(v0 + 112) + 24));
    OUTLINED_FUNCTION_27();
    sub_2313694D0();

    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_23121A118;

    return MEMORY[0x2821C6CC0](v0 + 16, v15, v16);
  }

  else
  {
    v18 = *(v0 + 96);
    (*(*v2 + 8))(*v1, *v3);
    v19 = *MEMORY[0x277D60C40];
    sub_231367DC0();
    OUTLINED_FUNCTION_11();
    (*(v20 + 104))(v18, v19);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_23121A118()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23121A1FC()
{
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43830, &unk_23136E070);
  OUTLINED_FUNCTION_21_1();
  v2 = swift_allocObject();
  *v1 = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 48);
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  v6 = *MEMORY[0x277D60C38];
  sub_231367DC0();
  OUTLINED_FUNCTION_11();
  (*(v7 + 104))(v1, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t MentionedAppResolver.init(appUtils:)(__int128 *a1)
{
  if (qword_280F826C8 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_280F826C8);
  }

  v3 = unk_280F826D8;
  *(v1 + 16) = qword_280F826D0;
  *(v1 + 24) = v3;
  sub_2311D38A8(a1, v1 + 32);
  sub_231369EE0();
  return v1;
}

uint64_t MentionedAppResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_2313698C0();
  v1[20] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[21] = v5;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = sub_231367C70();
  v1[26] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[27] = v7;
  v1[28] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23121A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  __swift_project_boxed_opaque_existential_1(*(v22 + 136), *(*(v22 + 136) + 24));
  OUTLINED_FUNCTION_54_0();
  sub_2313677D0();
  v25 = OUTLINED_FUNCTION_28_0();
  v27 = v26(v25);
  v28 = *(v22 + 216);
  v29 = *(v22 + 224);
  v30 = *(v22 + 208);
  if (v27 == *MEMORY[0x277D60AC0])
  {
    (*(v28 + 96))(*(v22 + 224), v30);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    sub_2313681A0();
    v32 = OUTLINED_FUNCTION_27();
    v34 = v33(v32);
    v35 = *MEMORY[0x277D60DB8];
    sub_231368210();
    OUTLINED_FUNCTION_11();
    (*(v36 + 8))(v29 + v31);
    v37 = OUTLINED_FUNCTION_27();
    v38(v37);
    if (v34 == v35)
    {
      __swift_project_boxed_opaque_existential_1(*(v22 + 144), *(*(v22 + 144) + 24));
      OUTLINED_FUNCTION_27();
      v39 = sub_2313683E0();
      sub_231369160();
      sub_231369EE0();
      v40 = sub_2313698A0();
      v41 = sub_23136A3A0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v22 + 200);
      v45 = *(v22 + 160);
      v44 = *(v22 + 168);
      if (v42)
      {
        a10 = *(v22 + 200);
        v46 = OUTLINED_FUNCTION_60();
        v47 = swift_slowAlloc();
        a11 = v47;
        *v46 = 136315138;
        v48 = MEMORY[0x23192A860](v39, MEMORY[0x277D837D0]);
        v50 = sub_2311CFD58(v48, v49, &a11);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_2311CB000, v40, v41, "MentionedAppResolver: open apps: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_29();

        v51 = *(v44 + 8);
        v51(a10, v45);
      }

      else
      {

        v51 = *(v44 + 8);
        v51(v43, v45);
      }

      *(v22 + 232) = v51;
      if (v39[2])
      {
        *(v22 + 240) = v39[4];
        *(v22 + 248) = v39[5];
        sub_231369EE0();

        sub_231369160();
        sub_231369EE0();
        v61 = sub_2313698A0();
        v62 = sub_23136A3A0();

        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v22 + 192);
        v65 = *(v22 + 160);
        if (v63)
        {
          OUTLINED_FUNCTION_60();
          v66 = OUTLINED_FUNCTION_57_0();
          a11 = v66;
          *v64 = 136315138;
          v67 = OUTLINED_FUNCTION_26_1();
          *(v64 + 4) = sub_2311CFD58(v67, v68, v69);
          OUTLINED_FUNCTION_15_7();
          _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v66);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_24();
        }

        v51(v64, v65);
        __swift_project_boxed_opaque_existential_1((*(v22 + 152) + 32), *(*(v22 + 152) + 56));
        OUTLINED_FUNCTION_26_1();
        sub_2313694D0();
        __swift_project_boxed_opaque_existential_1((v22 + 56), *(v22 + 80));
        v79 = swift_task_alloc();
        *(v22 + 256) = v79;
        *v79 = v22;
        v79[1] = sub_23121A9FC;
        OUTLINED_FUNCTION_7();

        return MEMORY[0x2821C6CC0](v80, v81, v82);
      }

      sub_231369160();
      v75 = sub_2313698A0();
      v76 = sub_23136A3A0();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_2311CB000, v75, v76, "MentionedAppResolver: No salient appId", v77, 2u);
        OUTLINED_FUNCTION_29();
      }

      v78 = OUTLINED_FUNCTION_28_0();
      (v51)(v78);
    }
  }

  else
  {
    (*(v28 + 8))(*(v22 + 224), v30);
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23121A9FC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23121AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  if (*(v22 + 120))
  {

    sub_2311D38A8((v22 + 96), v22 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v22 + 56));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_23136B670;
    v27 = *(v22 + 40);
    v28 = __swift_project_boxed_opaque_existential_1((v22 + 16), v27);
    *(v26 + 56) = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v28, v27);
    __swift_destroy_boxed_opaque_existential_1Tm((v22 + 16));
  }

  else
  {
    sub_2311D1F18(v22 + 96, &qword_27DD43830, &unk_23136E070);
    __swift_destroy_boxed_opaque_existential_1Tm((v22 + 56));
    sub_231369160();
    sub_231369EE0();
    v30 = sub_2313698A0();
    v31 = sub_23136A3B0();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v22 + 248);
    if (v32)
    {
      v34 = *(v22 + 240);
      a10 = *(v22 + 232);
      OUTLINED_FUNCTION_60();
      v35 = OUTLINED_FUNCTION_57_0();
      a11 = v35;
      *v23 = 136315138;
      v36 = sub_2311CFD58(v34, v33, &a11);

      *(v23 + 4) = v36;
      _os_log_impl(&dword_2311CB000, v30, v31, "Can not get app details for: %s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();

      v37 = OUTLINED_FUNCTION_28_0();
      a10(v37);
    }

    else
    {
      v38 = *(v22 + 232);

      v39 = OUTLINED_FUNCTION_28_0();
      v38(v39);
    }
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23121AD5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43820, &qword_23136E040);
  __swift_allocate_value_buffer(v0, qword_280F8E648);
  __swift_project_value_buffer(v0, qword_280F8E648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  return sub_231366B20();
}

uint64_t sub_23121ADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2313698C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311D1D6C(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43850, &qword_23136E468);
  if (swift_dynamicCast())
  {
    sub_2311D38A8(v24, v27);
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v9 = sub_231367620();
    *(a2 + 24) = MEMORY[0x277D837D0];
    *a2 = v9;
    *(a2 + 8) = v10;
    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_2311D1F18(v24, &qword_27DD43830, &unk_23136E070);
    sub_231369160();
    sub_2311D1D6C(a1, v27);
    v12 = sub_2313698A0();
    v13 = sub_23136A3B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27[6] = v2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v23 = v5;
      v17 = v16;
      v26[0] = v16;
      *v15 = 136315138;
      sub_2311D1D6C(v27, v24);
      v18 = sub_23136A010();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v21 = sub_2311CFD58(v18, v20, v26);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2311CB000, v12, v13, "Input for MentionedAppResolver.loggingKeyTransformer does not conform to AppDetails. It is: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x23192B930](v17, -1, -1);
      MEMORY[0x23192B930](v15, -1, -1);

      result = (*(v6 + 8))(v8, v23);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      result = (*(v6 + 8))(v8, v5);
    }

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t MentionedAppResolver.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t MentionedAppResolver.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_23121B11C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return MentionedAppResolver.resolveParameter(parameter:suggestion:interaction:environment:)();
}

uint64_t sub_23121B1C4()
{
  sub_231368540();
  result = sub_231368510();
  qword_280F832D0 = result;
  return result;
}

uint64_t static DeviceTypeResolver.deviceTypeParamType.getter()
{
  if (qword_280F832C8 != -1)
  {
    swift_once();
  }
}

uint64_t DeviceTypeResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 16);
  sub_231369EE0();
  return v1;
}

uint64_t DeviceTypeResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = sub_231367650();
  v0[3] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23121B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  OUTLINED_FUNCTION_6_6(*(v14 + 16));
  v17 = sub_231368370();
  v18 = *MEMORY[0x277D609A8];
  v19 = OUTLINED_FUNCTION_16_7();
  v52 = v20;
  (v20)(v19);
  v21 = swift_task_alloc();
  *(v21 + 16) = v15;
  v22 = sub_231218158(sub_23121C698, v21, v17, MEMORY[0x277D609D0]);

  v23 = *(v16 + 8);
  v24 = OUTLINED_FUNCTION_54_0();
  v23(v24);
  if (v22 || (v25 = *(v14 + 40), v18 = *MEMORY[0x277D60998], v26 = OUTLINED_FUNCTION_16_7(), (v52)(v26), v27 = swift_task_alloc(), a9 = v23, *(v27 + 16) = v25, v28 = sub_231218158(sub_23121CD88, v27, v17, MEMORY[0x277D609D0]), , v29 = OUTLINED_FUNCTION_54_0(), v23(v29), v28))
  {

    v30 = v52;
LABEL_4:
    v31 = *(v14 + 40);
    v32 = *(v14 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_23136B670;
    v30(v31, v18, v32);
    v34 = sub_231367640();
    v36 = v35;
    v37 = OUTLINED_FUNCTION_26_1();
    v23(v37);
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    goto LABEL_5;
  }

  v47 = *(v14 + 40);
  v18 = *MEMORY[0x277D60988];
  v48 = OUTLINED_FUNCTION_16_7();
  (v52)(v48);
  v49 = swift_task_alloc();
  *(v49 + 16) = v47;
  v50 = sub_231218158(sub_23121CD88, v49, v17, MEMORY[0x277D609D0]);

  v51 = OUTLINED_FUNCTION_54_0();
  v23(v51);
  v30 = v52;
  if (v50)
  {
    goto LABEL_4;
  }

LABEL_5:

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, v52, a11, a12, a13, a14);
}

uint64_t DeviceTypeResolver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23121B680()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return DeviceTypeResolver.resolveParameter(parameter:suggestion:interaction:environment:)();
}

uint64_t sub_23121B714()
{
  v0 = sub_231366690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  type metadata accessor for SuggestionsForHelpDefinitionFactory();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = [v8 bundleURL];

  sub_231366650();
  sub_231366620();
  v10 = *(v1 + 8);
  v10(v3, v0);
  v11 = sub_231366660();
  v13 = v12;
  result = (v10)(v6, v0);
  qword_280F7CB68 = v11;
  *algn_280F7CB70 = v13;
  return result;
}

uint64_t sub_23121B8A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43880, &qword_2313706E0);
  v0 = sub_231367650();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136D290;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D609A8], v0);
  v6(v5 + v2, *MEMORY[0x277D60998], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D60988], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x277D609C8], v0);
  qword_280F7CB50 = v4;
  return result;
}

uint64_t sub_23121B9FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43880, &qword_2313706E0);
  v0 = sub_231367650();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136D280;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D609A8], v0);
  v6(v5 + v2, *MEMORY[0x277D60998], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x277D60988], v0);
  qword_280F7CB88 = v4;
  return result;
}

uint64_t sub_23121BB30()
{
  OUTLINED_FUNCTION_8();
  v0[16] = v1;
  v0[17] = v2;
  v3 = sub_2313698C0();
  v0[18] = v3;
  OUTLINED_FUNCTION_0(v3);
  v0[19] = v4;
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121BBE8()
{
  v33 = v0;
  OUTLINED_FUNCTION_6_6(*(v0 + 128));
  sub_2313682F0();
  sub_231366F80();
  sub_231210C60();

  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43850, &qword_23136E468);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        sub_2311D38A8((v0 + 56), v0 + 16);
        OUTLINED_FUNCTION_6_6((v0 + 16));
        v2 = sub_231367620();
        v4 = v3;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        goto LABEL_11;
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  else
  {
    sub_2311D1F18(v0 + 96, &qword_27DD443C0, &unk_23136E000);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  v5 = *(v0 + 136);
  sub_2311D1F18(v0 + 56, &qword_27DD43830, &unk_23136E070);
  OUTLINED_FUNCTION_6_6(v5);
  v6 = sub_2313683E0();
  if (!v6[2])
  {
    goto LABEL_16;
  }

  v2 = v6[4];
  v4 = v6[5];
  sub_231369EE0();

  sub_2313690F0();
  v7 = sub_2313698A0();
  v8 = sub_23136A3A0();
  if (os_log_type_enabled(v7, v8))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    OUTLINED_FUNCTION_15_7();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_24();
  }

  v14 = OUTLINED_FUNCTION_54_0();
  v15(v14);
LABEL_11:
  if (qword_27DD42C98 != -1)
  {
    swift_once();
  }

  v16 = qword_27DD4B7B0;
  sub_231369EE0();
  v17 = sub_2311EFC44(v2, v4, v16);

  if (!v17)
  {
    sub_2313690F0();
    sub_231369EE0();
    v18 = sub_2313698A0();
    v19 = sub_23136A3A0();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_60();
      v20 = OUTLINED_FUNCTION_57_0();
      v32 = v20;
      *v1 = 136315138;
      v21 = sub_2311CFD58(v2, v4, &v32);

      *(v1 + 4) = v21;
      OUTLINED_FUNCTION_15_7();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
    }

    else
    {
    }

    v28 = OUTLINED_FUNCTION_54_0();
    v29(v28);
    v27 = 0;
    goto LABEL_19;
  }

LABEL_16:

  v27 = 1;
LABEL_19:

  OUTLINED_FUNCTION_14();

  return v30(v27);
}

uint64_t sub_23121BF7C()
{
  result = sub_23121BF9C();
  qword_27DD4B7B0 = result;
  return result;
}

uint64_t sub_23121BF9C()
{
  v0 = sub_231368290();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43858, &unk_23136E470);
  v3 = *(v1 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = 23;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136E010;
  v21 = v6;
  v7 = v6 + v4;
  v8 = *(v1 + 104);
  v8(v6 + v4, *MEMORY[0x277D60EF0], v0);
  v8(v7 + v3, *MEMORY[0x277D60EA0], v0);
  v8(v7 + 2 * v3, *MEMORY[0x277D60F10], v0);
  v8(v7 + 3 * v3, *MEMORY[0x277D60EA8], v0);
  v8(v7 + 4 * v3, *MEMORY[0x277D60F18], v0);
  v8(v7 + 5 * v3, *MEMORY[0x277D60F20], v0);
  v8(v7 + 6 * v3, *MEMORY[0x277D60EB0], v0);
  v8(v7 + 7 * v3, *MEMORY[0x277D60F00], v0);
  v8(v7 + 8 * v3, *MEMORY[0x277D60F28], v0);
  v8(v7 + 9 * v3, *MEMORY[0x277D60E80], v0);
  v8(v7 + 10 * v3, *MEMORY[0x277D60F30], v0);
  v8(v7 + 11 * v3, *MEMORY[0x277D60EB8], v0);
  v8(v7 + 12 * v3, *MEMORY[0x277D60E88], v0);
  v8(v7 + 13 * v3, *MEMORY[0x277D60EC0], v0);
  v8(v7 + 14 * v3, *MEMORY[0x277D60EC8], v0);
  v8(v7 + 15 * v3, *MEMORY[0x277D60ED8], v0);
  v8(v7 + 16 * v3, *MEMORY[0x277D60F38], v0);
  v8(v7 + 17 * v3, *MEMORY[0x277D60F48], v0);
  v8(v7 + 18 * v3, *MEMORY[0x277D60EE0], v0);
  v8(v7 + 19 * v3, *MEMORY[0x277D60F40], v0);
  v8(v7 + 20 * v3, *MEMORY[0x277D60E98], v0);
  v8(v7 + 21 * v3, *MEMORY[0x277D60E70], v0);
  v23 = v3;
  v9 = *MEMORY[0x277D60F08];
  v25 = v0;
  v8(v7 + 22 * v3, v9, v0);
  v26 = MEMORY[0x277D84F90];
  sub_2311F4E34(0);
  v10 = v26;
  v22 = *(v1 + 16);
  v11 = (v1 + 8);
  do
  {
    v12 = v24;
    v13 = v25;
    v22(v24, v7, v25);
    v14 = sub_231368280();
    v16 = v15;
    (*v11)(v12, v13);
    v26 = v10;
    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2311F4E34(v17 > 1);
      v10 = v26;
    }

    *(v10 + 16) = v18 + 1;
    v19 = v10 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
    v7 += v23;
    --v5;
  }

  while (v5);
  swift_setDeallocating();
  sub_231322A88();
  return sub_231255354(v10);
}

uint64_t sub_23121C4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_23121BB30();
}

uint64_t sub_23121C59C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2311D44D4;

  return sub_231219D60(a1, a2, v2 + 16);
}

unint64_t sub_23121C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43838;
  if (!qword_27DD43838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43838);
  }

  return result;
}

uint64_t sub_23121C788(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for TrialUseCase(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for EducationalSuggestions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23121CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23136A900() & 1;
  }
}

uint64_t sub_23121CBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_23121CD34(a4, 255, a5, a6);
  return sub_231369F60() & 1;
}

uint64_t sub_23121CD34(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23121CDE4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 56), *(*(v0 + 104) + 80));
  OUTLINED_FUNCTION_1_6();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_2(v1);

  return v3(v2);
}

uint64_t sub_23121CEE8()
{
  OUTLINED_FUNCTION_8();
  *(*v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_23121CFE4, 0, 0);
}

void sub_23121CFE4()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = v1 + 32;
    while (1)
    {
      sub_2311CF324(v4, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_231367DD0();
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v5 = sub_231368730();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v6 = *(v5 + 16);
      v7 = *(v3 + 16);
      if (__OFADD__(v7, v6))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 + v6 > *(v3 + 24) >> 1)
      {
        sub_23126E834(isUniquelyReferenced_nonNull_native);
        v3 = v9;
      }

      if (*(v5 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v6)
        {
          goto LABEL_21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43428, &unk_23136C940);
        swift_arrayInitWithCopy();

        if (v6)
        {
          v10 = *(v3 + 16);
          v11 = __OFADD__(v10, v6);
          v12 = v10 + v6;
          if (v11)
          {
            goto LABEL_22;
          }

          *(v3 + 16) = v12;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_20;
        }
      }

      v4 += 40;
      if (!--v2)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_16:
    v13 = v0[13];
    v14 = sub_23121DA18(v3);

    v0[12] = v14;
    __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
    OUTLINED_FUNCTION_1_6();
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v16 = OUTLINED_FUNCTION_1_2(v15);

    v17(v16);
  }
}

uint64_t sub_23121D288()
{
  OUTLINED_FUNCTION_8();
  *(*v0 + 136) = v1;

  return MEMORY[0x2822009F8](sub_23121D384, 0, 0);
}

uint64_t sub_23121D384()
{
  OUTLINED_FUNCTION_8();
  sub_23126750C(v0[17]);
  v1 = v0[12];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23121D40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F4480;

  return sub_23121CDC4();
}

uint64_t sub_23121D49C()
{
  v0 = sub_231298174();
  type metadata accessor for DefaultResolverProvider();
  *(swift_initStackObject() + 16) = v0;
  sub_23121D57C();
  v2 = v1;

  return v2;
}

uint64_t sub_23121D51C()
{
  v1 = sub_23121D49C();
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_23121D57C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    for (i = v1 + 40; ; i += 16)
    {
      v5 = sub_231368910();
      v6 = *(v5 + 16);
      v7 = *(v3 + 16);
      if (__OFADD__(v7, v6))
      {
        break;
      }

      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 + v6 > *(v3 + 24) >> 1)
      {
        sub_23126E7FC(isUniquelyReferenced_nonNull_native);
        v3 = v10;
      }

      if (*(v8 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v6)
        {
          goto LABEL_18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_19;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_17;
        }
      }

      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_23121D6F0()
{
  sub_23121D57C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23121D750(uint64_t a1, __n128 a2)
{
  type metadata accessor for IntentDetails(0);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2311F59F0(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_23122509C(v11, v8, type metadata accessor for IntentDetails);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2311F59F0(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_2312250F8(&v16, (v10 + 32 * v14 + 32));
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_23121D8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_38_5();
    sub_2311F5B70(v4, v5, v6);
    v2 = v18;
    v7 = a1 + 32;
    do
    {
      sub_231204D4C(v7, v14, &qword_27DD438B8, &qword_23136EA38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438B8, &qword_23136EA38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E8, &unk_23136E480);
      swift_dynamicCast();
      v18 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2311F5B70((v8 > 1), v9 + 1, 1);
        v2 = v18;
      }

      *(v2 + 16) = v9 + 1;
      v10 = (v2 + 48 * v9);
      v11 = v15;
      v12 = v17;
      v10[3] = v16;
      v10[4] = v12;
      v10[2] = v11;
      v7 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23121DA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_38_5();
    sub_2311F5C74(v4, v5, v6);
    v2 = v13;
    v7 = a1 + 32;
    do
    {
      sub_2311CF388(v7, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43428, &unk_23136C940);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
      swift_dynamicCast();
      v13 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2311F5C74(v8 > 1, v9 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v9 + 1;
      sub_2311D38A8(&v12, v2 + 40 * v9 + 32);
      v7 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23121DB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2311F5CD8(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_2311CF388(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43640, &qword_23136CB80);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2311F5CD8(v5 > 1, v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_2311D38A8(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23121DC80(uint64_t a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2311F5D18(0, v12, 0);
    v13 = v20;
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_231204D4C(v14, v6, &qword_27DD435D0, &qword_23136CB10);
      swift_dynamicCast();
      v20 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2311F5D18((v16 > 1), v17 + 1, 1);
        v13 = v20;
      }

      *(v13 + 16) = v17 + 1;
      sub_231225108(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t DefaultBookkeepingXPCClient.init(featureConfigProvider:accountDetailsProvider:ownerProviders:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_231368770();
  v10 = v9;
  sub_2311CF388(a1, (a4 + 2));
  sub_2311CF388(a2, (a4 + 7));
  sub_231366F40();
  v11 = sub_231366F30();
  v12 = type metadata accessor for DefaultBookkeepingXPCConnectionFactory();
  OUTLINED_FUNCTION_54();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v16 = v12;
  v17 = &off_2845F3CA0;
  v15[0] = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a4 = v8;
  a4[1] = v10;
  a4[12] = a3;
  sub_2311CF388(v15, (a4 + 13));
  a4[18] = *(*__swift_project_boxed_opaque_existential_1(v15, v16) + 16);

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t DefaultBookkeepingXPCClient.updateIndexForAppInstall(bundleIds:)()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2313698C0();
  v1[5] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v26 = OUTLINED_FUNCTION_17_4(v22[4]);
  v22[8] = v26;
  v22[9] = v27;
  v28 = v22[3];
  if (v27)
  {
    v29 = v27;
    OUTLINED_FUNCTION_36_2();
    v30 = swift_allocObject();
    v22[10] = v30;
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    OUTLINED_FUNCTION_15_8();
    sub_231369EE0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v22[11] = v31;
    *v31 = v32;
    v31[1] = sub_23121E278;
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_7();

    return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v42 = v26;
    sub_2313690F0();
    sub_231369EE0();
    v43 = sub_2313698A0();
    sub_23136A3B0();
    OUTLINED_FUNCTION_48_3();

    v44 = os_log_type_enabled(v43, v23);
    v45 = v22[6];
    v46 = v22[7];
    v47 = v22[5];
    if (v44)
    {
      v48 = v22[3];
      OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_33_4();
      *v46 = 136315138;
      v49 = MEMORY[0x23192A860](v48, MEMORY[0x277D837D0]);
      v51 = sub_2311CFD58(v49, v50, &a10);

      *(v46 + 4) = v51;
      OUTLINED_FUNCTION_43_0(&dword_2311CB000, v52, v53, "[BookkeepingXPCServicesClient] Error while trying to update index for app installs - %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_15();

      v54 = (*(v45 + 8))(a9, v47);
    }

    else
    {

      v54 = (*(v45 + 8))(v46, v47);
    }

    v57 = sub_231223268(v54, v55, v56);
    v58 = OUTLINED_FUNCTION_42_3(&type metadata for DefaultBookkeepingXPCClient.XPCErrors, v57);
    OUTLINED_FUNCTION_24_5(v58, v59);
    [v42 invalidate];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_7();

    return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23121E278()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121E378()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 16);
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14();

  return v3(v2);
}

uint64_t sub_23121E410()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 64);

  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v2();
}

void sub_23121E49C(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F0, &qword_23136EA60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = sub_2313698C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v12 = sub_2313698A0();
  v13 = sub_23136A3A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v4;
    v15 = a1;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_2311CB000, v12, v13, "[BookkeepingXPCServicesClient] Calling XPCService updateIndexForAppInstall", v14, 2u);
    v17 = v16;
    a1 = v15;
    v4 = v23;
    MEMORY[0x23192B930](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v18 = sub_23136A190();
  (*(v5 + 16))(v7, a1, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v7, v4);
  aBlock[4] = sub_2312256A8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23121E784;
  aBlock[3] = &block_descriptor_112;
  v21 = _Block_copy(aBlock);

  [v25 updateIndexForAppInstallWithBundleIds:v18 with:v21];
  _Block_release(v21);
}

uint64_t sub_23121E784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t DefaultBookkeepingXPCClient.deletePhrasesAppUnInstall(bundleIds:)()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121E87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v26 = OUTLINED_FUNCTION_17_4(v22[3]);
  v22[7] = v26;
  v22[8] = v27;
  v28 = v22[2];
  if (v27)
  {
    v29 = v27;
    OUTLINED_FUNCTION_36_2();
    v30 = swift_allocObject();
    v22[9] = v30;
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    OUTLINED_FUNCTION_15_8();
    sub_231369EE0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v22[10] = v31;
    *v31 = v32;
    v31[1] = sub_23121EAC4;
    OUTLINED_FUNCTION_7();

    return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v42 = v26;
    sub_2313690F0();
    sub_231369EE0();
    v43 = sub_2313698A0();
    sub_23136A3B0();
    OUTLINED_FUNCTION_48_3();

    v44 = os_log_type_enabled(v43, v23);
    v45 = v22[5];
    v46 = v22[6];
    v47 = v22[4];
    if (v44)
    {
      v48 = v22[2];
      OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_33_4();
      *v46 = 136315138;
      v49 = MEMORY[0x23192A860](v48, MEMORY[0x277D837D0]);
      v51 = sub_2311CFD58(v49, v50, &a10);

      *(v46 + 4) = v51;
      OUTLINED_FUNCTION_43_0(&dword_2311CB000, v52, v53, "[BookkeepingXPCServicesClient] Error while trying to delete phrases for uninstalled apps - %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_15();

      v54 = (*(v45 + 8))(a9, v47);
    }

    else
    {

      v54 = (*(v45 + 8))(v46, v47);
    }

    v57 = sub_231223268(v54, v55, v56);
    v58 = OUTLINED_FUNCTION_42_3(&type metadata for DefaultBookkeepingXPCClient.XPCErrors, v57);
    OUTLINED_FUNCTION_24_5(v58, v59);
    [v42 invalidate];

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();

    return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23121EAC4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121EBC4()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 96);
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14();

  return v3(v2);
}

uint64_t sub_23121EC5C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 56);

  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_14();

  return v2(0);
}

void sub_23121ECEC(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F8, &qword_23136EA68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = sub_2313698C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v12 = sub_2313698A0();
  v13 = sub_23136A3A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v4;
    v15 = a1;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_2311CB000, v12, v13, "[BookkeepingXPCServicesClient] Calling XPCService deletePhrasesAppUnInstall", v14, 2u);
    v17 = v16;
    a1 = v15;
    v4 = v23;
    MEMORY[0x23192B930](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v18 = sub_23136A190();
  (*(v5 + 16))(v7, a1, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v7, v4);
  aBlock[4] = sub_23122544C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23121F020;
  aBlock[3] = &block_descriptor_106;
  v21 = _Block_copy(aBlock);

  [v25 deletePhrasesForAppUnInstallsWithBundleIds:v18 with:v21];
  _Block_release(v21);
}

uint64_t sub_23121F020(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t DefaultBookkeepingXPCClient.buildAutoCompleteIndex(onStartUpEvent:)()
{
  OUTLINED_FUNCTION_8();
  *(v1 + 24) = v0;
  *(v1 + 96) = v2;
  v3 = sub_231369840();
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_0(v3);
  *(v1 + 40) = v4;
  *(v1 + 48) = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121F11C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_231369190();
  sub_231369140();

  sub_2313675D0();
  v4 = sub_231369190();
  sub_2313691A0();

  __swift_project_boxed_opaque_existential_1((v2 + 104), *(v2 + 128));
  v5 = sub_2311D56B0();
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  if (v6)
  {
    v8 = v6;
    v9 = *(v1 + 96);
    OUTLINED_FUNCTION_36_2();
    v10 = swift_allocObject();
    *(v1 + 72) = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v22 = OUTLINED_FUNCTION_31_4(MEMORY[0x277D60698]);
    swift_unknownObjectRetain_n();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v1 + 80) = v11;
    *v11 = v12;
    v11[1] = sub_23121F364;
    v13 = OUTLINED_FUNCTION_28_4();

    return v22(v13);
  }

  else
  {
    v15 = v5;
    v16 = sub_231223268(v5, 0, v7);
    OUTLINED_FUNCTION_42_3(&type metadata for DefaultBookkeepingXPCClient.XPCErrors, v16);
    *v17 = 1;
    swift_willThrow();
    [v15 invalidate];

    sub_2313675D0();
    v18 = sub_231369190();
    sub_231369180();

    v19 = OUTLINED_FUNCTION_47_4();
    v20(v19);

    OUTLINED_FUNCTION_56_0();

    return v21();
  }
}

uint64_t sub_23121F364()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23121F464()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  swift_unknownObjectRelease();
  v5 = v0[2];
  [v1 invalidate];
  swift_unknownObjectRelease();

  sub_2313675D0();
  v6 = sub_231369190();
  sub_231369180();

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_14();

  return v7(v5);
}

void sub_23121F564()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 56);

  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  sub_2313675D0();
  v2 = sub_231369190();
  sub_231369180();

  v3 = OUTLINED_FUNCTION_47_4();
  v4(v3);

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  __asm { BRAA            X1, X16 }
}

void sub_23121F644(uint64_t a1, int a2, void *a3)
{
  v22 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F0, &qword_23136EA60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = sub_2313698C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v12 = sub_2313698A0();
  v13 = sub_23136A3A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a1;
    v15 = v14;
    *v14 = 67109120;
    *(v14 + 4) = v23 & 1;
    _os_log_impl(&dword_2311CB000, v12, v13, "[BookkeepingXPCServicesClient] Calling XPCService buildAutoCompleteIndex. onStartUpEvent: %{BOOL}d", v14, 8u);
    v16 = v15;
    a1 = v21;
    MEMORY[0x23192B930](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, a1, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v7, v4);
  aBlock[4] = sub_231225424;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23121E784;
  aBlock[3] = &block_descriptor_100;
  v19 = _Block_copy(aBlock);

  [v22 buildAutoCompleteIndexOnStartUpEvent:v23 & 1 with:v19];
  _Block_release(v19);
}

uint64_t DefaultBookkeepingXPCClient.buildAutoCompleteIndexSubset(sources:)()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2313698C0();
  v1[5] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23121F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_70_1();
  a20 = v22;
  v26 = OUTLINED_FUNCTION_17_4(v22[4]);
  v22[8] = v26;
  v22[9] = v27;
  v28 = v22[3];
  if (v27)
  {
    v29 = v27;
    OUTLINED_FUNCTION_36_2();
    v30 = swift_allocObject();
    v22[10] = v30;
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    OUTLINED_FUNCTION_15_8();
    sub_231369EE0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v22[11] = v31;
    *v31 = v32;
    v31[1] = sub_23121FC08;
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_7();

    return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v42 = v26;
    sub_2313690F0();
    sub_231369EE0();
    v43 = sub_2313698A0();
    sub_23136A3B0();
    OUTLINED_FUNCTION_48_3();

    v44 = os_log_type_enabled(v43, v23);
    v45 = v22[6];
    v46 = v22[7];
    v47 = v22[5];
    if (v44)
    {
      v48 = v22[3];
      OUTLINED_FUNCTION_60();
      a10 = OUTLINED_FUNCTION_33_4();
      *v46 = 136315138;
      v49 = sub_231369570();
      v50 = MEMORY[0x23192A860](v48, v49);
      v52 = sub_2311CFD58(v50, v51, &a10);

      *(v46 + 4) = v52;
      OUTLINED_FUNCTION_43_0(&dword_2311CB000, v53, v54, "Error while trying to build partial index - %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_15();

      v55 = (*(v45 + 8))(a9, v47);
    }

    else
    {

      v55 = (*(v45 + 8))(v46, v47);
    }

    v58 = sub_231223268(v55, v56, v57);
    v59 = OUTLINED_FUNCTION_42_3(&type metadata for DefaultBookkeepingXPCClient.XPCErrors, v58);
    OUTLINED_FUNCTION_24_5(v59, v60);
    [v42 invalidate];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_7();

    return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23121FC08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_23121FD08(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_231369570();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F0, &qword_23136EA60);
  v43 = *(v9 - 8);
  v41 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v38 - v10;
  v11 = sub_2313698C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v15 = sub_2313698A0();
  v16 = sub_23136A3A0();
  v17 = os_log_type_enabled(v15, v16);
  v44 = a1;
  if (v17)
  {
    v18 = a2;
    v19 = a3;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2311CB000, v15, v16, "[BookkeepingXPCServicesClient] Calling XPCService buildAutoCompleteIndexSubset", v20, 2u);
    v21 = v20;
    a3 = v19;
    a2 = v18;
    a1 = v44;
    MEMORY[0x23192B930](v21, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v22 = *(a3 + 16);
  if (v22)
  {
    v39 = v9;
    v40 = a2;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2311F5C94(0, v22, 0);
    v23 = aBlock[0];
    v24 = v46 + 16;
    v25 = *(v46 + 16);
    v26 = a3 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v45 = *(v46 + 72);
    v46 = v25;
    v27 = (v24 - 8);
    do
    {
      v28 = v47;
      (v46)(v8, v26, v47);
      v29 = sub_231369560();
      (*v27)(v8, v28);
      aBlock[0] = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2311F5C94(v30 > 1, v31 + 1, 1);
        v23 = aBlock[0];
      }

      *(v23 + 16) = v31 + 1;
      *(v23 + 8 * v31 + 32) = v29;
      v26 += v45;
      --v22;
    }

    while (v22);
    v9 = v39;
    a2 = v40;
    a1 = v44;
  }

  v32 = sub_23136A190();

  v34 = v42;
  v33 = v43;
  (*(v43 + 16))(v42, a1, v9);
  v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v36 = swift_allocObject();
  (*(v33 + 32))(v36 + v35, v34, v9);
  aBlock[4] = sub_2312256A8;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23121E784;
  aBlock[3] = &block_descriptor_94;
  v37 = _Block_copy(aBlock);

  [a2 buildAutoCompleteIndexSubsetWithSources:v32 with:v37];
  _Block_release(v37);
}

uint64_t sub_2312201C4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312202C4()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  (*(v4 + 8))(v3, v4);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v1)
  {
    sub_231224724(*(v0 + 152), MEMORY[0x277D607A0]);
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = type metadata accessor for FeatureRequirementsTransport(0);
    OUTLINED_FUNCTION_4_8();
    sub_2312243AC(v6, v7 + v9, v10);
    sub_2311D38A8((v0 + 96), v7);
    *(v7 + *(v8 + 24)) = v5;
  }

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_52_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_2312203DC()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t FeatureRequirementsTransport.init(featureConfigWrapper:accountDetails:possibleOwners:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2311D38A8(a1, a4);
  v7 = type metadata accessor for FeatureRequirementsTransport(0);
  OUTLINED_FUNCTION_4_8();
  result = sub_2312243AC(a2, a4 + v8, v9);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t DefaultBookkeepingXPCClient.log(from:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_8();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2313667A0();
  v1[6] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[7] = v6;
  v1[8] = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v8 = sub_231367D80();
  v1[10] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[11] = v9;
  v1[12] = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_43();
  v11 = type metadata accessor for FeatureRequirementsTransport(0);
  OUTLINED_FUNCTION_0(v11);
  v1[14] = v12;
  v1[15] = *(v13 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2312205FC()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17_4(v0[5]);
  v0[18] = v1;
  v0[19] = v3;
  if (v3)
  {
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[20] = v4;
    *v4 = v5;
    v4[1] = sub_231220740;
    OUTLINED_FUNCTION_52_3();

    return sub_2311D512C(v6);
  }

  else
  {
    v9 = v1;
    v10 = sub_231223268(v1, 0, v2);
    v11 = OUTLINED_FUNCTION_42_3(&type metadata for DefaultBookkeepingXPCClient.XPCErrors, v10);
    OUTLINED_FUNCTION_24_5(v11, v12);
    [v9 invalidate];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_52_3();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_231220740()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23122083C()
{
  v1 = v0[16];
  v2 = v0[17];
  v20 = v0[14];
  v21 = v0[15];
  v22 = v0[13];
  v23 = v1;
  v19 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v25 = v5;
  v27 = v0[19];
  v7 = v0[6];
  v6 = v0[7];
  v24 = v7;
  v8 = v0[4];
  v9 = v0[2];
  (*(v3 + 16))();
  OUTLINED_FUNCTION_20_5();
  sub_23122509C(v2, v1, v10);
  (*(v6 + 16))(v5, v8, v7);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = (v19 + *(v20 + 80) + v11) & ~*(v20 + 80);
  v13 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v6 + 80) + v13 + 8) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v0[22] = v15;
  *(v15 + 16) = v9;
  (*(v3 + 32))(v15 + v11, v22, v4);
  OUTLINED_FUNCTION_19_6();
  sub_2312243AC(v23, v15 + v12, v16);
  *(v15 + v13) = v27;
  (*(v6 + 32))(v15 + v14, v25, v24);
  v26 = OUTLINED_FUNCTION_31_4(MEMORY[0x277D60698]);
  swift_unknownObjectRetain();
  sub_231369EE0();
  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_231220A78;

  return v26();
}

uint64_t sub_231220A78()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231220B90()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_13();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t sub_231220C4C()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t sub_231220CF8()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_13();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t sub_231220DAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v44 = a6;
  v46 = a5;
  v47 = a4;
  v48 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C8, &qword_23136EA50);
  v9 = *(v8 - 8);
  v45 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = sub_2313698C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v16 = sub_2313698A0();
  v17 = sub_23136A3A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = a2;
    v19 = v11;
    v20 = v8;
    v21 = v9;
    v22 = a1;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2311CB000, v16, v17, "[BookkeepingXPCServicesClient] Calling XPCService log", v18, 2u);
    v24 = v23;
    a1 = v22;
    v9 = v21;
    v8 = v20;
    v11 = v19;
    a2 = v43;
    MEMORY[0x23192B930](v24, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  sub_231366560();
  swift_allocObject();
  sub_231366550();
  sub_231366530();
  aBlock[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438D0, &qword_23136EA58);
  sub_2312252FC();
  v25 = sub_231366540();
  v27 = v26;
  sub_231367D80();
  sub_2311D57D8(&qword_27DD438E8, MEMORY[0x277D60BA8], MEMORY[0x277D60BB0]);
  v28 = sub_231366540();
  v48 = v29;
  type metadata accessor for FeatureRequirementsTransport(0);
  sub_2311D57D8(qword_280F7EF50, type metadata accessor for FeatureRequirementsTransport, &protocol conformance descriptor for FeatureRequirementsTransport);
  v47 = sub_231366540();
  v40 = v30;
  v42 = sub_2313666B0();
  v43 = v28;
  v41 = sub_2313666B0();
  v44 = sub_231366780();
  v31 = v40;
  v32 = sub_2313666B0();
  (*(v9 + 16))(v11, a1, v8);
  v33 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v34 = swift_allocObject();
  (*(v9 + 32))(v34 + v33, v11, v8);
  aBlock[4] = sub_2312256A4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2312212A4;
  aBlock[3] = &block_descriptor_86;
  v35 = _Block_copy(aBlock);

  v37 = v41;
  v36 = v42;
  v38 = v44;
  [v46 logFrom:v42 deliveryVehicle:v41 generationId:v44 featureRequirements:v32 with:v35];

  _Block_release(v35);

  sub_231225224(v47, v31);
  sub_231225224(v43, v48);
  return sub_231225224(v25, v27);
}

void sub_2312212A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t DefaultBookkeepingXPCClient.logEngagement(for:with:invocationType:)()
{
  OUTLINED_FUNCTION_8();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2313667A0();
  v1[6] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[7] = v6;
  v1[8] = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_43();
  v8 = sub_231367C70();
  v1[10] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[11] = v9;
  v1[12] = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_43();
  v11 = sub_231369050();
  v1[14] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[15] = v12;
  v1[16] = *(v13 + 64);
  v1[17] = OUTLINED_FUNCTION_43();
  v14 = type metadata accessor for FeatureRequirementsTransport(0);
  OUTLINED_FUNCTION_0(v14);
  v1[18] = v15;
  v1[19] = *(v16 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2312214CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312215C8()
{
  v33 = v0[23];
  v1 = v0[20];
  v29 = v1;
  v23 = v0[18];
  v24 = v0[19];
  v20 = v0[21];
  v21 = v0[16];
  v2 = v0[15];
  v27 = v0[17];
  v28 = v0[13];
  v22 = v0[12];
  v3 = v0[11];
  v25 = v0[14];
  v26 = v0[10];
  v4 = v0[9];
  v31 = v4;
  v6 = v0[6];
  v5 = v0[7];
  v30 = v6;
  v19 = v0[3];
  (*(v2 + 16))();
  v7 = OUTLINED_FUNCTION_64();
  v8(v7);
  OUTLINED_FUNCTION_20_5();
  sub_23122509C(v20, v1, v9);
  (*(v5 + 16))(v4, v19, v6);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = (v21 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = (v22 + *(v23 + 80) + v11) & ~*(v23 + 80);
  v13 = (v24 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v5 + 80) + v13 + 8) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v0[26] = v15;
  (*(v2 + 32))(v15 + v10, v27, v25);
  (*(v3 + 32))(v15 + v11, v28, v26);
  OUTLINED_FUNCTION_19_6();
  sub_2312243AC(v29, v15 + v12, v16);
  *(v15 + v13) = v33;
  (*(v5 + 32))(v15 + v14, v31, v30);
  v32 = OUTLINED_FUNCTION_31_4(MEMORY[0x277D60698]);
  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v0[27] = v17;
  *v17 = v0;
  v17[1] = sub_231221860;

  return v32();
}

uint64_t sub_231221860()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231221978()
{
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_13();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v2();
}

void sub_231221A4C()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43_5(*(v0 + 168));

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  __asm { BRAA            X1, X16 }
}

void sub_231221AFC()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_13();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43_5(*(v0 + 168));

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_86();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231221BB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v44 = a6;
  v46 = a5;
  v47 = a4;
  v48 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C8, &qword_23136EA50);
  v9 = *(v8 - 8);
  v45 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = sub_2313698C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v16 = sub_2313698A0();
  v17 = sub_23136A3A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = a2;
    v19 = v11;
    v20 = v8;
    v21 = v9;
    v22 = a1;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2311CB000, v16, v17, "[BookkeepingXPCServicesClient] Calling XPCService logEngagement", v18, 2u);
    v24 = v23;
    a1 = v22;
    v9 = v21;
    v8 = v20;
    v11 = v19;
    MEMORY[0x23192B930](v24, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  sub_231366560();
  swift_allocObject();
  sub_231366550();
  sub_231366530();
  sub_231369050();
  sub_2311D57D8(&qword_280F7C950, MEMORY[0x277D61268], MEMORY[0x277D61270]);
  v25 = sub_231366540();
  v27 = v26;
  v28 = a1;
  sub_231367C70();
  sub_2311D57D8(&qword_280F7CA88, MEMORY[0x277D60AE8], MEMORY[0x277D60AF0]);
  v43 = sub_231366540();
  v48 = v29;
  type metadata accessor for FeatureRequirementsTransport(0);
  sub_2311D57D8(qword_280F7EF50, type metadata accessor for FeatureRequirementsTransport, &protocol conformance descriptor for FeatureRequirementsTransport);
  v47 = sub_231366540();
  v31 = v30;
  v42 = sub_2313666B0();
  v44 = sub_231366780();
  v41 = sub_2313666B0();
  v32 = sub_2313666B0();
  (*(v9 + 16))(v11, v28, v8);
  v33 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v34 = swift_allocObject();
  (*(v9 + 32))(v34 + v33, v11, v8);
  aBlock[4] = sub_2312252D4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2312212A4;
  aBlock[3] = &block_descriptor_80;
  v35 = _Block_copy(aBlock);

  v37 = v41;
  v36 = v42;
  v38 = v44;
  [v46 logEngagementFor:v42 with:v44 invocationType:v41 featureRequirements:v32 with:v35];

  _Block_release(v35);

  sub_231225224(v47, v31);
  sub_231225224(v43, v48);
  return sub_231225224(v25, v27);
}

void sub_2312220D4(void *a1)
{
  v3 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  if (a1)
  {
    v10 = a1;
    sub_231369100();
    v11 = a1;
    v12 = sub_2313698A0();
    sub_23136A3B0();

    if (os_log_type_enabled(v12, v1))
    {
      v13 = OUTLINED_FUNCTION_60();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_2311CB000, v12, v1, "[BookkeepingXPCServicesClient] XPCService log encountered error: %@", v13, 0xCu);
      sub_2311F4E78(v14);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_15();
    }

    (*(v5 + 8))(v9, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C8, &qword_23136EA50);
    sub_231366F10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C8, &qword_23136EA50);
    sub_231366F20();
  }
}

uint64_t DefaultBookkeepingXPCClient.getAccountDetails()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312222D0()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17_4(v0[3]);
  v0[4] = v1;
  v0[5] = v2;
  if (v2)
  {
    v4 = v2;
    OUTLINED_FUNCTION_54();
    v5 = swift_allocObject();
    v0[6] = v5;
    *(v5 + 16) = v4;
    OUTLINED_FUNCTION_31_4(MEMORY[0x277D60698]);
    swift_unknownObjectRetain_n();
    v6 = swift_task_alloc();
    v0[7] = v6;
    sub_231369790();
    *v6 = v0;
    v6[1] = sub_23122244C;
    OUTLINED_FUNCTION_52_3();

    return v11(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = v1;
    v17 = sub_231223268(v1, 0, v3);
    v18 = OUTLINED_FUNCTION_42_3(&type metadata for DefaultBookkeepingXPCClient.XPCErrors, v17);
    OUTLINED_FUNCTION_24_5(v18, v19);
    [v16 invalidate];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_52_3();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_23122244C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23122254C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t sub_2312225C8()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 32);

  swift_unknownObjectRelease();
  [v1 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v2();
}

void sub_23122264C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C0, &unk_23136EA40);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_231225178;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231222B98;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  [a2 getAccountDetailsWith_];
  _Block_release(v11);
}

void sub_2312227FC(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_231369790();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2313698C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v16 = a3;
    sub_231369100();
    v17 = a3;
    v18 = sub_2313698A0();
    v19 = sub_23136A3B0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = a3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_2311CB000, v18, v19, "[BookkeepingXPCServicesClient] XPCService getAccountDetails error: %@", v20, 0xCu);
      sub_2311F4E78(v21);
      MEMORY[0x23192B930](v21, -1, -1);
      MEMORY[0x23192B930](v20, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    v26 = a3;
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_231366520();
      swift_allocObject();
      sub_23122527C(a1, a2);
      sub_231366510();
      v26 = 200;
      sub_2311D57D8(&qword_280F85A70, MEMORY[0x277D607A0], MEMORY[0x277D607B0]);
      sub_231366500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C0, &unk_23136EA40);
      sub_231366F20();

      sub_231225210(a1, a2);
      sub_231224724(v8, MEMORY[0x277D607A0]);
      return;
    }

    sub_231223268(v11, v12, v13);
    a3 = swift_allocError();
    *v24 = 0;
    v26 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C0, &unk_23136EA40);
  sub_231366F10();
}

uint64_t sub_231222B98(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_2313666C0();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_231225210(v4, v8);
}

uint64_t sub_231222C48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312256B0;

  return DefaultBookkeepingXPCClient.updateIndexForAppInstall(bundleIds:)();
}

uint64_t sub_231222CDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231222D70;

  return DefaultBookkeepingXPCClient.deletePhrasesAppUnInstall(bundleIds:)();
}

uint64_t sub_231222D70()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_231222E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231222EF8;

  return DefaultBookkeepingXPCClient.buildAutoCompleteIndex(onStartUpEvent:)();
}

uint64_t sub_231222EF8()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_14();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_231222FE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312256B0;

  return DefaultBookkeepingXPCClient.buildAutoCompleteIndexSubset(sources:)();
}

uint64_t sub_231223078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return DefaultBookkeepingXPCClient.log(from:deliveryVehicle:generationId:)();
}

uint64_t sub_231223124()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return DefaultBookkeepingXPCClient.logEngagement(for:with:invocationType:)();
}

uint64_t sub_2312231D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D05C8;

  return DefaultBookkeepingXPCClient.getAccountDetails()(a1);
}

unint64_t sub_231223268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43888;
  if (!qword_27DD43888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43888);
  }

  return result;
}

id sub_2312232BC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231369FA0();

  v4 = [v2 initWithServiceName_];

  return v4;
}

uint64_t sub_231223330()
{
  v0 = sub_2313698C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2311CFD58(0xD00000000000002CLL, 0x800000023137D340, &v10);
    _os_log_impl(&dword_2311CB000, v4, v5, "XPC connection to %s interrupted", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x23192B930](v7, -1, -1);
    MEMORY[0x23192B930](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2312234C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_23122350C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_23136A2C0();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = a1;

  sub_231271090(0, 0, v6, &unk_23136EA88, v8);
}

uint64_t sub_231223600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2313698C0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312236C0, 0, 0);
}

uint64_t sub_2312236C0()
{
  v22 = v0;
  v1 = v0[3];
  sub_2313690C0();
  v2 = v1;
  v3 = sub_2313698A0();
  v4 = sub_23136A3B0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v8 = v0[3];
    v9 = OUTLINED_FUNCTION_60();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v0[2] = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v12 = sub_23136A010();
    v14 = sub_2311CFD58(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v3, v4, "[BookkeepingXPCServicesClient] XPC Service connection failure: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_29();

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];

    (*(v16 + 8))(v15, v17);
  }

  v0[8] = *(v0[4] + 16);
  sub_231366F40();
  sub_2311D57D8(&qword_280F7CB28, MEMORY[0x277D606A0], MEMORY[0x277D606A8]);
  v19 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_2312238DC, v19, v18);
}

uint64_t sub_2312238DC()
{
  OUTLINED_FUNCTION_8();
  sub_231366F00();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

void sub_231223940(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2312239A8()
{

  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

uint64_t FeatureRequirementsTransport.possibleOwners.getter()
{
  type metadata accessor for FeatureRequirementsTransport(0);

  return sub_231369EE0();
}

uint64_t FeatureRequirementsTransport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_231369790();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43890, &qword_23136E5F8);
  OUTLINED_FUNCTION_0_0();
  v31 = v8;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312246D0(v12, v13, v14);
  v33 = v11;
  v15 = v34;
  sub_23136AA20();
  if (v15)
  {
    v29 = a1;
  }

  else
  {
    v34 = a1;
    v16 = v7;
    v17 = v6;
    v18 = v31;
    v19 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43898, &unk_23136E600);
    v36 = 0;
    v20 = v33;
    sub_231367C00();
    v36 = 1;
    OUTLINED_FUNCTION_18_7();
    sub_2311D57D8(v21, v22, MEMORY[0x277D607B0]);
    v23 = v16;
    sub_23136A820();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    v36 = 2;
    v25 = sub_231367BE0();
    (*(v18 + 8))(v20, v23);
    sub_2311D38A8(&v35, v19);
    v26 = type metadata accessor for FeatureRequirementsTransport(0);
    OUTLINED_FUNCTION_4_8();
    sub_2312243AC(v17, v19 + v27, v28);
    *(v19 + *(v26 + 24)) = v25;
    v29 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t FeatureRequirementsTransport.encode(to:)(void *a1)
{
  v3 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438A0, qword_23136E610);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-1] - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2312246D0(v10, v11, v12);
  sub_23136AA40();
  v23 = 0;
  v13 = v3[3];
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v13);
  v22[3] = v13;
  v22[4] = *(v14 + 24);
  __swift_allocate_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_26_0();
  (*(v15 + 16))();
  sub_231367C10();
  if (v2)
  {
    (*(v6 + 8))(v9, v21);
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v17 = type metadata accessor for FeatureRequirementsTransport(0);
    LOBYTE(v22[0]) = 1;
    sub_231369790();
    OUTLINED_FUNCTION_18_7();
    sub_2311D57D8(v18, v19, MEMORY[0x277D607A8]);
    v20 = v21;
    sub_23136A890();
    LOBYTE(v22[0]) = 2;
    sub_23121DB48(*(v3 + *(v17 + 24)));
    sub_231367BF0();
    (*(v6 + 8))(v9, v20);
  }
}

uint64_t sub_231224004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000023137D2D0 == a2;
  if (v3 || (OUTLINED_FUNCTION_45_1(0xD000000000000014, 0x800000023137D2D0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44746E756F636361 && a2 == 0xEE00736C69617465;
    if (v6 || (OUTLINED_FUNCTION_45_1(0x44746E756F636361, 0xEE00736C69617465) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C626973736F70 && a2 == 0xEE007372656E774FLL)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_45_1(0x656C626973736F70, 0xEE007372656E774FLL);

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

uint64_t sub_231224110(unsigned __int8 a1)
{
  sub_23136A9D0();
  MEMORY[0x23192B090](a1);
  return sub_23136AA00();
}

uint64_t sub_231224164(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0x44746E756F636361;
  }

  return 0x656C626973736F70;
}

uint64_t sub_2312241D8(uint64_t a1)
{
  v2 = *v1;
  sub_23136A9D0();
  MEMORY[0x23192B090](v2);
  return sub_23136AA00();
}

uint64_t sub_231224224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231224004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231224258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312246D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231224294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312246D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_36_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t type metadata accessor for FeatureRequirementsTransport(uint64_t a1)
{
  result = qword_280F85A88;
  if (!qword_280F85A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312243AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_11();
  v4 = OUTLINED_FUNCTION_64();
  v5(v4);
  return a2;
}

uint64_t sub_231224408(uint64_t a1)
{
  v3 = sub_231367D80();
  OUTLINED_FUNCTION_0(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for FeatureRequirementsTransport(0);
  OUTLINED_FUNCTION_0(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v13);
  v15 = *(v1 + 16);
  v16 = *(v1 + v12);
  v17 = v1 + ((v12 + *(v14 + 80) + 8) & ~*(v14 + 80));

  return sub_231220DAC(a1, v15, v1 + v5, v1 + v10, v16, v17);
}

uint64_t sub_231224540(uint64_t a1)
{
  v3 = sub_231369050();
  OUTLINED_FUNCTION_0(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_231367C70();
  OUTLINED_FUNCTION_0(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = type metadata accessor for FeatureRequirementsTransport(0);
  OUTLINED_FUNCTION_0(v13);
  v15 = (v10 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = (*(v16 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = sub_2313667A0();
  OUTLINED_FUNCTION_40_0(v18);
  v20 = *(v1 + v17);
  v21 = v1 + ((v17 + *(v19 + 80) + 8) & ~*(v19 + 80));

  return sub_231221BB4(a1, v1 + v5, v1 + v10, v1 + v15, v20, v21);
}

unint64_t sub_2312246D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85A08;
  if (!qword_280F85A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A08);
  }

  return result;
}

uint64_t sub_231224724(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_11();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23122477C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2312247A4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2312247A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7F650;
  if (!qword_280F7F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7F650);
  }

  return result;
}

uint64_t dispatch thunk of BookkeepingXPCClientProtocol.updateIndexForAppInstall(bundleIds:)(uint64_t a1)
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_23_3(v1, v2, v3);
  OUTLINED_FUNCTION_3_3();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_7_7(v5);
  OUTLINED_FUNCTION_52_3();

  return v10(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t dispatch thunk of BookkeepingXPCClientProtocol.deletePhrasesAppUnInstall(bundleIds:)(uint64_t a1)
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_23_3(v1, v2, v3);
  OUTLINED_FUNCTION_3_3();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_7_7(v5);
  OUTLINED_FUNCTION_52_3();

  return v10(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t dispatch thunk of BookkeepingXPCClientProtocol.buildAutoCompleteIndex(onStartUpEvent:)(uint64_t a1)
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  v2[1] = sub_231204BD4;
  OUTLINED_FUNCTION_52_3();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t dispatch thunk of BookkeepingXPCClientProtocol.buildAutoCompleteIndexSubset(sources:)(uint64_t a1)
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_23_3(v1, v2, v3);
  OUTLINED_FUNCTION_3_3();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_7_7(v5);
  OUTLINED_FUNCTION_52_3();

  return v10(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_231224BF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_231224C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_231224CF4(uint64_t a1)
{
  sub_231224D90();
  if (v1 <= 0x3F)
  {
    sub_231369790();
    if (v2 <= 0x3F)
    {
      sub_231224DEC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_231224D90()
{
  result = qword_280F85A78;
  if (!qword_280F85A78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280F85A78);
  }

  return result;
}

void sub_231224DEC(uint64_t a1)
{
  if (!qword_280F85A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43600, &qword_23136CB40);
    v1 = sub_23136A250();
    if (!v2)
    {
      atomic_store(v1, &qword_280F85A60);
    }
  }
}

_BYTE *sub_231224E60(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231224F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD438A8;
  if (!qword_27DD438A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD438A8);
  }

  return result;
}

unint64_t sub_231224F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD438B0;
  if (!qword_27DD438B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD438B0);
  }

  return result;
}

unint64_t sub_231224FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F859F8;
  if (!qword_280F859F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F859F8);
  }

  return result;
}

unint64_t sub_231225048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85A00;
  if (!qword_280F85A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A00);
  }

  return result;
}

uint64_t sub_23122509C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_11();
  v4 = OUTLINED_FUNCTION_64();
  v5(v4);
  return a2;
}

_OWORD *sub_2312250F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_231225108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_231225178(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438C0, &unk_23136EA40);
  OUTLINED_FUNCTION_40_0(v6);

  sub_2312227FC(a1, a2, a3);
}

uint64_t sub_231225210(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231225224(result, a2);
  }

  return result;
}

uint64_t sub_231225224(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_23122527C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_2312252FC()
{
  result = qword_27DD438D8;
  if (!qword_27DD438D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD438D0, &qword_23136EA58);
    sub_2311D57D8(&qword_27DD438E0, MEMORY[0x277D606E0], MEMORY[0x277D606E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD438D8);
  }

  return result;
}

uint64_t sub_2312253B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_40_0(v7);
  return a4(a1, v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80)));
}

uint64_t sub_23122544C(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD438F8, &qword_23136EA68);
  OUTLINED_FUNCTION_40_0(v2);

  return sub_23121EFD4(a1);
}

uint64_t objectdestroy_73Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_11();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

unint64_t sub_231225540()
{
  result = qword_280F7C7E0;
  if (!qword_280F7C7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C7E0);
  }

  return result;
}

uint64_t sub_231225594()
{
  OUTLINED_FUNCTION_16();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2311D05C8;
  OUTLINED_FUNCTION_86();

  return sub_231223600(v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_17_4@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 104), *(a1 + 128));

  return sub_2311D56B0();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_43_5(uint64_t a1)
{
}

uint64_t sub_2312257EC()
{
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v1 = sub_2313664B0();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43930, &qword_23136EBC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23136B670;
  v9 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v10 = v9;
  sub_2313414CC(inited);
  sub_2313665B0();

  v11 = sub_2313664A0();
  (*(v3 + 8))(v7, v1);
  return v11 & 1;
}

void sub_231225A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  v151 = v20;
  v24 = v23;
  v142 = v25;
  v147 = sub_2313679C0();
  OUTLINED_FUNCTION_0_0();
  v141 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_4();
  v140 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42ED8, &qword_23136EBD0);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  v139[5] = v139 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43938, &qword_23136EBD8);
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v35);
  v144 = v139 - v36;
  OUTLINED_FUNCTION_18();
  v37 = sub_2313689A0();
  OUTLINED_FUNCTION_0_0();
  v145 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_4();
  v154 = v41 - v40;
  OUTLINED_FUNCTION_18();
  v42 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v49);
  v51 = (v139 - v50);
  v158 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v56);
  v58 = v139 - v57;
  sub_231369100();
  v59 = *(v44 + 16);
  v157 = v24;
  v156 = v44 + 16;
  v155 = v59;
  (v59)(v51, v24, v42);
  v60 = sub_2313698A0();
  v61 = sub_23136A3A0();
  v62 = os_log_type_enabled(v60, v61);
  v148 = v53;
  v150 = v44;
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_60();
    v152 = v42;
    v64 = v63;
    v65 = swift_slowAlloc();
    v143 = v37;
    v66 = v65;
    *&v163 = v65;
    *v64 = 136315138;
    OUTLINED_FUNCTION_0_11();
    sub_231228E54(v67, v68, MEMORY[0x277CC9290]);
    v69 = sub_23136A8B0();
    v71 = v70;
    v72 = OUTLINED_FUNCTION_12_6();
    v73(v72, v152);
    v74 = sub_2311CFD58(v69, v71, &v163);

    *(v64 + 4) = v74;
    _os_log_impl(&dword_2311CB000, v60, v61, "Loading suggestion details config from file - %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    v37 = v143;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v42 = v152;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v146 = *(v148 + 8);
  }

  else
  {

    v75 = OUTLINED_FUNCTION_12_6();
    v76(v75, v42);
    v146 = *(v53 + 8);
  }

  v146(v58, v158);
  v77 = v149;
  OUTLINED_FUNCTION_34_3();
  v78 = v155;
  v155();
  v79 = type metadata accessor for JsonSerializer();
  v80 = swift_allocObject();
  v164 = v79;
  v165 = &protocol witness table for JsonSerializer;
  *&v163 = v80;
  v81 = v153;
  (v78)(v153, v77, v42);
  v82 = type metadata accessor for FileBasedConfigBackingStore(0);
  v83 = swift_allocObject();
  (*(v150 + 32))(v83 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v81, v42);
  v161 = v82;
  v162 = sub_231228E54(&qword_280F85B48, type metadata accessor for FileBasedConfigBackingStore, &protocol conformance descriptor for FileBasedConfigBackingStore);
  *&v160 = v83;
  v84 = OUTLINED_FUNCTION_26_6();
  v152 = v51;
  v150 = v44;
  (v51)(v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43940, &unk_23136EBE0);
  inited = swift_initStackObject();
  sub_2311D38A8(&v160, inited + 16);
  sub_2311D38A8(&v163, inited + 56);
  v86 = v154;
  v87 = v151;
  sub_23127E748();
  if (v87)
  {
    v88 = v87;
LABEL_6:
    a10 = v88;
    v89 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    if (swift_dynamicCast() && v159 == 5)
    {

      v93 = sub_231228DBC(v90, v91, v92);
      OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v93);
      OUTLINED_FUNCTION_10_8(v94, 5);
      swift_willThrow();
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
    }

    else
    {

      sub_231369100();
      OUTLINED_FUNCTION_34_3();
      v155();
      v108 = v88;
      v109 = sub_2313698A0();
      v110 = sub_23136A3B0();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        a10 = v157;
        *v111 = 136315394;
        OUTLINED_FUNCTION_0_11();
        sub_231228E54(v112, v113, MEMORY[0x277CC9290]);
        v114 = sub_23136A8B0();
        v116 = v115;
        OUTLINED_FUNCTION_30_3();
        v117();
        v118 = sub_2311CFD58(v114, v116, &a10);

        *(v111 + 4) = v118;
        *(v111 + 12) = 2080;
        swift_getErrorValue();
        v119 = sub_23136A980();
        v121 = sub_2311CFD58(v119, v120, &a10);

        *(v111 + 14) = v121;
        _os_log_impl(&dword_2311CB000, v109, v110, "Error loading suggestions config from url - %s with error %s", v111, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      else
      {

        OUTLINED_FUNCTION_30_3();
        v124();
      }

      OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_28_5();
      v126 = v125();
      v129 = sub_231228DBC(v126, v127, v128);
      OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v129);
      OUTLINED_FUNCTION_10_8(v130, 4);
      swift_willThrow();

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_5();
  sub_231368960();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v147);
  sub_231228E9C(v81, &qword_27DD43938, &qword_23136EBD8);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_31_5();
    sub_231368990();
    v96 = sub_231368600();
    v97 = __swift_getEnumTagSinglePayload(v81, 1, v96);
    sub_231228E9C(v81, &qword_27DD42ED8, &qword_23136EBD0);
    if (v97 == 1)
    {
      sub_231369100();
      v98 = sub_2313698A0();
      v99 = sub_23136A3B0();
      if (OUTLINED_FUNCTION_19_7(v99))
      {
        OUTLINED_FUNCTION_16_1();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_8(&dword_2311CB000, v100, v101, "either dialog info or enabled info should be present in SuggestionDetailsConfig");
        v86 = v154;
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_28_5();
      v103 = v102();
      v106 = sub_231228DBC(v103, v104, v105);
      v88 = OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v106);
      OUTLINED_FUNCTION_10_8(v107, 5);
      swift_willThrow();
      (*(v145 + 8))(v86, v37);
      goto LABEL_6;
    }
  }

  v122 = v139[6];
  sub_231368960();
  v123 = v147;
  if (__swift_getEnumTagSinglePayload(v122, 1, v147) == 1)
  {

    sub_231228E9C(v122, &qword_27DD43938, &qword_23136EBD8);
    (*(v145 + 32))(v142, v86, v37);
  }

  else
  {
    v143 = v37;
    (*(v141 + 32))(v140, v122, v123);
    v131 = sub_231367990();
    sub_231367990();
    if (v132)
    {

      v133 = v139[1];
      sub_231366640();
      OUTLINED_FUNCTION_31_5();
      sub_231366620();

      v134 = v152;
      v152(v133, v42);
      v158 = sub_231366660();
      v134(v81, v42);
    }

    else
    {
      v158 = v131;
    }

    v135 = v154;
    sub_231368980();
    OUTLINED_FUNCTION_31_5();
    sub_231368990();
    v136 = v140;
    sub_231367880();
    v137 = v139[3];
    sub_2313679A0();
    v138 = v147;
    __swift_storeEnumTagSinglePayload(v137, 0, 1, v147);
    OUTLINED_FUNCTION_26_6();
    sub_231368970();

    (*(v141 + 8))(v136, v138);
    (*(v145 + 8))(v135, v143);
  }

LABEL_24:
  OUTLINED_FUNCTION_22_0();
}

void sub_23122677C()
{
  OUTLINED_FUNCTION_21_0();
  v54 = v0;
  v64[1] = *MEMORY[0x277D85DE8];
  v57 = sub_2313689A0();
  OUTLINED_FUNCTION_0_0();
  v59 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v61 = v4 - v3;
  OUTLINED_FUNCTION_18();
  v5 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v58 = v9;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_7();
  v56 = v11;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_2313665F0();
  v64[0] = 0;
  v17 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:4 error:v64];

  v18 = v64[0];
  if (v17)
  {
    v19 = sub_23136A1A0();
    v20 = v18;

    v21 = 0;
    v62 = *(v19 + 16);
    v63 = v7 + 16;
    v55 = (v7 + 32);
    v60 = MEMORY[0x277D84F90];
    while (v62 != v21)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v23 = *(v7 + 72);
      (*(v7 + 16))(v14, v19 + v22 + v23 * v21, v5);
      if (sub_2312257EC())
      {
        v24 = OUTLINED_FUNCTION_26_6();
        v25(v24);
        ++v21;
      }

      else
      {
        v53 = *v55;
        v53(v56, v14, v5);
        v26 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64[0] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2311F5900(0, v26[2] + 1, 1);
          v26 = v64[0];
        }

        v29 = v26[2];
        v28 = v26[3];
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v60 = (v29 + 1);
          v52 = v29;
          sub_2311F5900(v28 > 1, v29 + 1, 1);
          v30 = v60;
          v29 = v52;
          v26 = v64[0];
        }

        ++v21;
        v26[2] = v30;
        v60 = v26;
        v53(v26 + v22 + v29 * v23, v56, v5);
      }
    }

    v31 = v60;
    v32 = v60[2];
    if (v32)
    {
      v64[0] = MEMORY[0x277D84F90];
      sub_2311F58A8(0, v32, 0);
      v33 = 0;
      v34 = v64[0];
      OUTLINED_FUNCTION_35_0();
      v62 = v31 + v35;
      v56 = (v59 + 32);
      v36 = v54;
      while (1)
      {
        if (v33 >= *(v31 + 16))
        {
          goto LABEL_25;
        }

        v37 = v58;
        (*(v7 + 16))(v58, v62 + *(v7 + 72) * v33, v5);
        sub_231225A20(v37, v38, v39, v40, v41, v42, v43, v44, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
        if (v36)
        {
          break;
        }

        (*(v7 + 8))(v37, v5);
        v64[0] = v34;
        v46 = v34[2];
        v45 = v34[3];
        if (v46 >= v45 >> 1)
        {
          sub_2311F58A8(v45 > 1, v46 + 1, 1);
          v34 = v64[0];
        }

        ++v33;
        v34[2] = v46 + 1;
        OUTLINED_FUNCTION_35_0();
        (*(v48 + 32))(v34 + v47 + *(v48 + 72) * v46, v61, v57);
        v36 = 0;
        v31 = v60;
        if (v32 == v33)
        {
          goto LABEL_19;
        }
      }

      v50 = OUTLINED_FUNCTION_26_6();
      v51(v50);
    }

    else
    {
LABEL_19:
    }
  }

  else
  {
    v49 = v64[0];
    sub_231366570();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_22_0();
}

void sub_231226C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  v142 = v20;
  v24 = v23;
  sub_23136A000();
  OUTLINED_FUNCTION_0_0();
  v138 = v26;
  v139 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_4();
  v137 = v28 - v27;
  OUTLINED_FUNCTION_18();
  v29 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_1();
  v140 = v33;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_7();
  v144 = v35;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v36);
  v38 = &v132 - v37;
  v39 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v149 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8_7();
  v143 = v46;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_7();
  v134 = v48;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8_7();
  v141 = v50;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v51);
  v53 = &v132 - v52;
  sub_231369100();
  v54 = *(v31 + 16);
  v148 = v24;
  v135 = v54;
  v136 = v31 + 16;
  v54(v38, v24, v29);
  v55 = sub_2313698A0();
  v56 = sub_23136A3A0();
  v57 = os_log_type_enabled(v55, v56);
  v147 = v39;
  v145 = v31;
  if (v57)
  {
    v58 = OUTLINED_FUNCTION_60();
    v133 = v44;
    v59 = v58;
    v132 = swift_slowAlloc();
    a10 = v132;
    *v59 = 136315138;
    OUTLINED_FUNCTION_0_11();
    sub_231228E54(v60, v61, MEMORY[0x277CC9290]);
    v62 = sub_23136A8B0();
    v64 = v63;
    v65 = OUTLINED_FUNCTION_27_5();
    v66(v65);
    v67 = sub_2311CFD58(v62, v64, &a10);
    v39 = v147;

    *(v59 + 4) = v67;
    _os_log_impl(&dword_2311CB000, v55, v56, "loading adopter config - %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v44 = v133;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  else
  {

    v68 = OUTLINED_FUNCTION_27_5();
    v69(v68);
  }

  v70 = *(v149 + 8);
  v70(v53, v39);
  if (sub_2312257EC())
  {
    sub_231369100();
    v71 = sub_2313698A0();
    v72 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_19_7(v72))
    {
      OUTLINED_FUNCTION_16_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_8(&dword_2311CB000, v73, v74, "the config should not be a directory");
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    OUTLINED_FUNCTION_17_5();
    v75 = (v70)(v44, v39);
    v78 = sub_231228DBC(v75, v76, v77);
    OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v78);
    *v79 = 0;
    goto LABEL_18;
  }

  v80 = v144;
  sub_231366600();
  v81 = sub_2313665E0();
  v83 = v82;
  v84 = v145 + 8;
  v85 = v29;
  v146(v80, v29);
  v86 = sub_231369FA0();
  v87 = NSClassFromString(v86);

  if (!v87 || (ObjCClassMetadata = swift_getObjCClassMetadata(), !dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, MEMORY[0x277D60A80])))
  {
    v107 = v143;
    sub_231369100();
    sub_231369EE0();
    v108 = sub_2313698A0();
    v109 = sub_23136A3B0();

    if (os_log_type_enabled(v108, v109))
    {
      OUTLINED_FUNCTION_60();
      v110 = OUTLINED_FUNCTION_20_6();
      a10 = v110;
      *v84 = 136315138;
      v111 = sub_2311CFD58(v81, v83, &a10);

      *(v84 + 4) = v111;
      _os_log_impl(&dword_2311CB000, v108, v109, "couldn't identify the class type from file name - error loading the %s as Adopter Config", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v110);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_17_5();
    v112 = (v70)(v107, v147);
    v115 = sub_231228DBC(v112, v113, v114);
    OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v115);
    v117 = 1;
LABEL_17:
    *v116 = v117;
LABEL_18:
    swift_willThrow();
    goto LABEL_19;
  }

  v89 = v148;
  v90 = v142;
  v91 = sub_231369F70();
  if (!v90)
  {
    v93 = v92;
    v145 = v91;
    sub_231369100();
    v94 = v89;
    v95 = v85;
    v135(v140, v94, v85);
    sub_231369EE0();
    v96 = sub_2313698A0();
    v97 = sub_23136A3A0();

    LODWORD(v144) = v97;
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v148 = v93;
      v99 = v98;
      v143 = swift_slowAlloc();
      a10 = v143;
      *v99 = 136315394;
      *(v99 + 4) = sub_2311CFD58(v145, v148, &a10);
      *(v99 + 12) = 2080;
      OUTLINED_FUNCTION_0_11();
      sub_231228E54(v100, v101, MEMORY[0x277CC9290]);
      v142 = v96;
      v102 = v140;
      v136 = sub_23136A8B0();
      v104 = v103;
      v146(v102, v95);
      v105 = sub_2311CFD58(v136, v104, &a10);

      *(v99 + 14) = v105;
      v106 = v142;
      _os_log_impl(&dword_2311CB000, v142, v144, "Parsed configContent - %s and config file name - %s", v99, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {

      v146(v140, v95);
    }

    OUTLINED_FUNCTION_17_5();
    v70(v141, v147);
    v118 = v137;
    sub_231369FF0();
    sub_231369FE0();
    v120 = v119;

    (*(v138 + 8))(v118, v139);
    if (v120 >> 60 != 15)
    {
      OUTLINED_FUNCTION_15_9();
      sub_231367A80();
      v130 = OUTLINED_FUNCTION_15_9();
      sub_231225210(v130, v131);
      goto LABEL_19;
    }

    v121 = v134;
    sub_231369100();
    v122 = sub_2313698A0();
    v123 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_19_7(v123))
    {
      OUTLINED_FUNCTION_16_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_8(&dword_2311CB000, v124, v125, "Error creating data object ");
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    OUTLINED_FUNCTION_17_5();
    v126 = (v70)(v121, v147);
    v129 = sub_231228DBC(v126, v127, v128);
    OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v129);
    v117 = 2;
    goto LABEL_17;
  }

LABEL_19:
  OUTLINED_FUNCTION_22_0();
}

void sub_2312275A4()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v109 = v3;
  v122[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v106 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v106 - v15;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v111 = v18;
  v112 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_7();
  v107 = v23;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v24);
  if ((sub_2312257EC() & 1) == 0)
  {
    sub_231369100();
    (*(v6 + 16))(v10, v2, v4);
    v44 = sub_2313698A0();
    v45 = sub_23136A3B0();
    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_60();
      v121 = OUTLINED_FUNCTION_20_6();
      v122[0] = v121;
      *v0 = 136315138;
      OUTLINED_FUNCTION_0_11();
      sub_231228E54(v46, v47, MEMORY[0x277CC9290]);
      v48 = sub_23136A8B0();
      v50 = v49;
      v51 = OUTLINED_FUNCTION_15_9();
      v52(v51);
      v53 = sub_2311CFD58(v48, v50, v122);

      *(v0 + 4) = v53;
      _os_log_impl(&dword_2311CB000, v44, v45, "Domain asset should point to a directory, a non-directory url - %s is not expected", v0, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    else
    {

      v84 = OUTLINED_FUNCTION_15_9();
      v85(v84);
    }

    v86 = (*(v111 + 8))(v21, v112);
    v89 = sub_231228DBC(v86, v87, v88);
    OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v89);
    OUTLINED_FUNCTION_10_8(v90, 7);
    goto LABEL_33;
  }

  v121 = sub_2313665E0();
  v26 = v25;
  sub_231369100();
  v27 = *(v6 + 16);
  v117 = v2;
  v118 = v27;
  v119 = v6 + 16;
  v27(v16, v2, v4);
  sub_231369EE0();
  v28 = sub_2313698A0();
  v29 = sub_23136A3A0();
  v108 = v26;

  LODWORD(v116) = v29;
  v30 = os_log_type_enabled(v28, v29);
  v31 = v4;
  v32 = v121;
  v113 = v6;
  v114 = v31;
  if (v30)
  {
    v33 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v122[0] = v115;
    *v33 = 136315394;
    OUTLINED_FUNCTION_0_11();
    sub_231228E54(v34, v35, MEMORY[0x277CC9290]);
    v36 = v28;
    v37 = sub_23136A8B0();
    v39 = v38;
    v120 = *(v113 + 8);
    v120(v16, v114);
    v40 = sub_2311CFD58(v37, v39, v122);
    v31 = v114;

    *(v33 + 4) = v40;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_2311CFD58(v32, v108, v122);
    _os_log_impl(&dword_2311CB000, v36, v116, "begin generating OwnerConfigs for %s as domain - %s", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    v41 = v113;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  else
  {
    v41 = v6;

    v120 = *(v6 + 8);
    v120(v16, v31);
  }

  v42 = OUTLINED_FUNCTION_29_3();
  v43(v42);
  v54 = [objc_opt_self() defaultManager];
  v55 = sub_2313665F0();
  v122[0] = 0;
  v56 = [v54 contentsOfDirectoryAtURL:v55 includingPropertiesForKeys:0 options:4 error:v122];

  v57 = v122[0];
  if (!v56)
  {
    v91 = v122[0];

    sub_231366570();

LABEL_33:
    swift_willThrow();
    goto LABEL_36;
  }

  v58 = sub_23136A1A0();
  v59 = v57;

  v122[0] = MEMORY[0x277D84F90];
  v117 = *(v58 + 16);
  if (!v117)
  {
LABEL_29:

    sub_231367870();
    goto LABEL_36;
  }

  v60 = 0;
  OUTLINED_FUNCTION_35_0();
  v115 = (v58 + v61);
  v110 = 0x800000023137D4A0;
  v116 = v41 + 8;
  v62 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v60 >= *(v58 + 16))
    {
      __break(1u);
    }

    v118(v13, &v115[*(v41 + 72) * v60], v31);
    if ((sub_2312257EC() & 1) == 0)
    {
      sub_231226C84(v13, v63, v64, v65, v66, v67, v68, v69, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
      if (v0)
      {
        goto LABEL_35;
      }

      v72 = v70;
      v73 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126E1B8();
        v62 = v82;
      }

      v74 = *(v62 + 16);
      if (v74 >= *(v62 + 24) >> 1)
      {
        sub_23126E1B8();
        v62 = v83;
      }

      *(v62 + 16) = v74 + 1;
      v75 = v62 + 16 * v74;
      *(v75 + 32) = v72;
      *(v75 + 40) = v73;
      v41 = v113;
      v31 = v114;
    }

    if (sub_2312257EC())
    {
      break;
    }

LABEL_28:
    ++v60;
    v80 = OUTLINED_FUNCTION_9_8();
    v81(v80);
    if (v117 == v60)
    {
      goto LABEL_29;
    }
  }

  if (sub_2313665E0() == 0xD000000000000011 && v110 == v76)
  {

    goto LABEL_26;
  }

  v78 = sub_23136A900();

  if (v78)
  {
LABEL_26:
    sub_23122677C();
    if (v0)
    {
LABEL_35:

      v92 = OUTLINED_FUNCTION_9_8();
      v93(v92);

      goto LABEL_36;
    }

    sub_231266FF4(v79);
    goto LABEL_28;
  }

  v94 = v107;
  sub_231369100();
  v95 = sub_2313698A0();
  v96 = sub_23136A3B0();
  if (os_log_type_enabled(v95, v96))
  {
    OUTLINED_FUNCTION_16_1();
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_2311CB000, v95, v96, "only directory allowed inside owner asset directory is SuggestionDetails", v98, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v99 = v106(v94, v112);
  v102 = sub_231228DBC(v99, v100, v101);
  OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v102);
  OUTLINED_FUNCTION_10_8(v103, 6);
  swift_willThrow();
  v104 = OUTLINED_FUNCTION_9_8();
  v105(v104);
LABEL_36:
  OUTLINED_FUNCTION_22_0();
}
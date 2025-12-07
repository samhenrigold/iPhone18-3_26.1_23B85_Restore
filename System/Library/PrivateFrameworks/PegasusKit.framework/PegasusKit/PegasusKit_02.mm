uint64_t sub_1C04B4C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v69 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  MEMORY[0x1EEE9AC00](v68);
  v5 = &v53 - v4;
  v6 = sub_1C04F5B60();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C04F5BC0();
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = sub_1C04F5B20();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  if (qword_1EBE0C9B8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C04F6400();
  v20 = __swift_project_value_buffer(v19, qword_1EBE0D098);
  v21 = *(v13 + 16);
  v21(v18, a1, v12);
  v67 = a1;
  v61 = v21;
  v62 = v13 + 16;
  v21(v15, a1, v12);
  v60 = v20;
  v22 = sub_1C04F63E0();
  v23 = v12;
  v24 = sub_1C04F6A40();
  if (os_log_type_enabled(v22, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v24;
    v26 = v25;
    v55 = swift_slowAlloc();
    v70 = v55;
    *v26 = 136315394;
    v53 = v22;
    sub_1C04F5B10();
    v27 = v63;
    v28 = sub_1C04F6790();
    v56 = v5;
    v30 = v29;
    v31 = *(v13 + 8);
    v31(v18, v23);
    v32 = sub_1C047D76C(v28, v30, &v70);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    v33 = v57;
    sub_1C04F5B00();
    v34 = sub_1C04F5B50();
    v36 = v35;
    (*(v58 + 8))(v33, v59);
    v31(v15, v23);
    v37 = sub_1C047D76C(v34, v36, &v70);
    v5 = v56;

    *(v26 + 14) = v37;
    v38 = v53;
    _os_log_impl(&dword_1C0479000, v53, v54, "received rpc response with search status: %s, error  detail: %s", v26, 0x16u);
    v39 = v55;
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v39, -1, -1);
    MEMORY[0x1C68DCEB0](v26, -1, -1);

    v40 = v23;
  }

  else
  {

    v41 = *(v13 + 8);
    v41(v15, v12);
    v41(v18, v12);
    v40 = v12;
    v27 = v63;
  }

  v42 = v67;
  sub_1C04F5B10();
  v43 = v64;
  v44 = v65;
  (*(v65 + 104))(v64, *MEMORY[0x1E69BCED0], v27);
  sub_1C04B71BC(&qword_1EDE41530, MEMORY[0x1E69BCEE0], MEMORY[0x1E69BCEE8]);
  v45 = sub_1C04F6730();
  v46 = *(v44 + 8);
  v46(v43, v27);
  v46(v11, v27);
  if (v45)
  {
    *(v66 + qword_1EDE44718) = 19;
    sub_1C0483574();
    *v5 = 6;
  }

  else
  {
    *(v66 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v47 = sub_1C04F63E0();
    v48 = sub_1C04F6A40();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v5;
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C0479000, v47, v48, "publishing successful rpc response", v50, 2u);
      v51 = v50;
      v5 = v49;
      MEMORY[0x1C68DCEB0](v51, -1, -1);
    }

    v61(v5, v42, v40);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04B52A4(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = *a1;
  v36 = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    sub_1C04B915C(v32, v33, v34, v35, a2);
    sub_1C0482080(v9, v10, v11, v12);
    goto LABEL_3;
  }

  v36 = v7;
  v13 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = v7;
    v17 = v7;
    if (swift_dynamicCast())
    {
      v18 = v36;
      sub_1C04B6C44();
      v19 = swift_allocError();
      *v20 = v18;
      sub_1C04B9574(v19, a2);

      *v6 = v18;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EBE0C9B8 != -1)
    {
      swift_once();
    }

    v21 = sub_1C04F6400();
    __swift_project_value_buffer(v21, qword_1EBE0D098);
    v22 = v7;
    v23 = sub_1C04F63E0();
    v24 = sub_1C04F6A20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v36 = v7;
      v27 = v7;
      v28 = sub_1C04F6790();
      v30 = sub_1C047D76C(v28, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1C0479000, v23, v24, "search failure: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
      MEMORY[0x1C68DCEB0](v25, -1, -1);
    }

LABEL_3:
    *v6 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v14 = v32;
  v15 = v33;
  v16 = v34;
  sub_1C04B93C4(v32, v33, v34, a2);
  *v6 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v14, v15, v16);
}

void sub_1C04B5634()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v7);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D118, &qword_1C04F8E08);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D120, &qword_1C04F8E10);
  OUTLINED_FUNCTION_0();
  v38 = v10;
  v39 = v9;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D128, &qword_1C04F8E18);
  OUTLINED_FUNCTION_0();
  v40 = v14;
  v41 = v13;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v35 - v16;
  v17 = *(v0 + 128);
  v18 = *(v0 + 136);

  v19 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45[0] = v19;
  OUTLINED_FUNCTION_307();
  sub_1C049FB48(v17, v18, v20, 0xEA0000000000746ELL, v21);
  sub_1C04B7390();
  sub_1C04B655C();
  sub_1C047ACAC();
  if (qword_1EBE0C9C0 != -1)
  {
    swift_once();
  }

  v45[0] = xmmword_1EBE0D0B0;
  v45[1] = *&qword_1EBE0D0C0;
  v45[2] = xmmword_1EBE0D0D0;
  v22 = sub_1C04B7354();
  v23 = sub_1C04D972C(v45, v6, v22, v2, 0);
  v25 = v24;

  v26 = v23;

  v27 = nw_activity_create();
  v28 = v26;
  v42 = v28;
  sub_1C04E0B04(v28, v27, 0, 0xE000000000000000, v4);
  swift_unknownObjectRelease();

  v44 = v25;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D138, &qword_1C04FA7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D0E8, &qword_1C04F8CD0);
  OUTLINED_FUNCTION_2_9();
  sub_1C047C1A4(v29, &qword_1EBE0D138, &qword_1C04FA7F0, v30);
  sub_1C047C1A4(&qword_1EBE0D0F0, &qword_1EBE0D0E8, &qword_1C04F8CD0, 0);
  v31 = v36;
  sub_1C04F6530();

  OUTLINED_FUNCTION_3_7(&qword_1EBE0D148, &qword_1EBE0D120, &qword_1C04F8E10);
  OUTLINED_FUNCTION_4_4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08);

  v32 = v37;
  v33 = v39;
  sub_1C04F6500();

  (*(v38 + 8))(v31, v33);
  sub_1C047C1A4(&qword_1EBE0D150, &qword_1EBE0D128, &qword_1C04F8E18, MEMORY[0x1E695BDA0]);
  v34 = v41;
  sub_1C04F64E0();

  (*(v40 + 8))(v32, v34);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B5D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D118, &qword_1C04F8E08);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  *(a2 + qword_1EDE44718) = 2;
  sub_1C0483574();
  if (qword_1EBE0C9B8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C04F6400();
  __swift_project_value_buffer(v13, qword_1EBE0D098);
  v14 = sub_1C04F63E0();
  v15 = sub_1C04F6A40();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C0479000, v14, v15, "publishing successful rpc response", v16, 2u);
    MEMORY[0x1C68DCEB0](v16, -1, -1);
  }

  v17 = sub_1C04F5B20();
  (*(*(v17 - 8) + 16))(v8, a1, v17);
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C047C1A4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08, MEMORY[0x1E695C008]);
  v18 = sub_1C04F64E0();
  result = (*(v10 + 8))(v12, v9);
  *a3 = v18;
  return result;
}

uint64_t sub_1C04B5FC8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v48 - v7;
  v9 = *a1;
  v51 = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v11 = v49[0];
    v12 = v49[1];
    v13 = v49[2];
    v14 = v50;
    *(a2 + qword_1EDE44718) = 26;
    sub_1C0483574();
    if (qword_1EBE0C9B8 != -1)
    {
      swift_once();
    }

    v15 = sub_1C04F6400();
    __swift_project_value_buffer(v15, qword_1EBE0D098);
    sub_1C04B7038(v11, v12, v13, v14);
    v16 = sub_1C04F63E0();
    v17 = sub_1C04F6A20();
    sub_1C0482080(v11, v12, v13, v14);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v48[2] = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v48[1] = v6;
      v21 = v20;
      v49[0] = v20;
      *v19 = 136315138;
      v22 = sub_1C04C971C(v11, v12, v13, v14);
      v48[0] = v8;
      v23 = v22;
      v25 = v24;
      sub_1C0482080(v11, v12, v13, v14);
      v26 = sub_1C047D76C(v23, v25, v49);

      *(v19 + 4) = v26;
      v8 = v48[0];
      _os_log_impl(&dword_1C0479000, v16, v17, "rpc failure: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C68DCEB0](v21, -1, -1);
      MEMORY[0x1C68DCEB0](v19, -1, -1);
    }

    else
    {

      sub_1C0482080(v11, v12, v13, v14);
    }

    *v8 = 0;
  }

  else
  {
    v49[0] = v9;
    v27 = v9;
    if (swift_dynamicCast())
    {
      v28 = v51;
      *(a2 + qword_1EDE44718) = 48;
      sub_1C0483574();
      if (qword_1EBE0C9B8 != -1)
      {
        swift_once();
      }

      v29 = sub_1C04F6400();
      __swift_project_value_buffer(v29, qword_1EBE0D098);
      v30 = sub_1C04F63E0();
      v31 = sub_1C04F6A20();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49[0] = v33;
        *v32 = 136315138;
        LOBYTE(v51) = v28;
        v34 = sub_1C04F6790();
        v36 = sub_1C047D76C(v34, v35, v49);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_1C0479000, v30, v31, "search failure: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x1C68DCEB0](v33, -1, -1);
        MEMORY[0x1C68DCEB0](v32, -1, -1);
      }

      *v8 = v28;
    }

    else
    {
      *(a2 + qword_1EDE44718) = 24;
      sub_1C0483574();
      if (qword_1EBE0C9B8 != -1)
      {
        swift_once();
      }

      v37 = sub_1C04F6400();
      __swift_project_value_buffer(v37, qword_1EBE0D098);
      v38 = v9;
      v39 = sub_1C04F63E0();
      v40 = sub_1C04F6A20();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v49[0] = v42;
        *v41 = 136315138;
        v51 = v9;
        v43 = v9;
        v44 = sub_1C04F6790();
        v46 = sub_1C047D76C(v44, v45, v49);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_1C0479000, v39, v40, "search failure: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1C68DCEB0](v42, -1, -1);
        MEMORY[0x1C68DCEB0](v41, -1, -1);
      }

      *v8 = 1;
    }
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void *sub_1C04B655C()
{
  result = sub_1C04B7294();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 144);
    if (v3 == 2)
    {
      v7 = OUTLINED_FUNCTION_12_2();
      v8 = OUTLINED_FUNCTION_7_7();

      if (!v8)
      {
        v11 = sub_1C04F6740();
        v12 = [v2 configBoolForKey_];

        if (v12 & 1) != 0 || (v26 = &unk_1F3F85D90, v27 = sub_1C04B6FD4(), LOBYTE(v25[0]) = 5, v13 = sub_1C04F60E0(), __swift_destroy_boxed_opaque_existential_1(v25), (v13))
        {
          sub_1C047ACAC();
          OUTLINED_FUNCTION_141();
          swift_beginAccess();

          v14 = sub_1C04D30CC();
          v16 = v15;
          v24 = v17;
          sub_1C04D4C24(&v23, 0x6867696C746F7073, 0xEF63707267655F74);

          sub_1C04D31F4(v14, v16, v24);

          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else if (v3 == 4)
    {
      v4 = OUTLINED_FUNCTION_12_2();
      v5 = OUTLINED_FUNCTION_7_7();

      if (v5)
      {
        v6 = 0;
      }

      else
      {
        v9 = sub_1C04F6740();
        v10 = OUTLINED_FUNCTION_7_7();

        if (v10)
        {
          v6 = 1;
        }

        else
        {
          v26 = &unk_1F3F85D90;
          v27 = sub_1C04B6FD4();
          LOBYTE(v25[0]) = 4;
          v6 = sub_1C04F60E0();
          __swift_destroy_boxed_opaque_existential_1(v25);
        }
      }

      v26 = &unk_1F3F85D90;
      v27 = sub_1C04B6FD4();
      LOBYTE(v25[0]) = 3;
      v18 = sub_1C04F60E0();
      __swift_destroy_boxed_opaque_existential_1(v25);
      if (v18 & 1) != 0 && (v6)
      {
        sub_1C047ACAC();
        OUTLINED_FUNCTION_141();
        swift_beginAccess();

        v19 = sub_1C04D30CC();
        v21 = v20;
        v24 = v22;
        sub_1C04D4C24(&v23, 0x655F70756B6F6F6CLL, 0xEC00000063707267);

        sub_1C04D31F4(v19, v21, v24);

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C04B6884()
{
  OUTLINED_FUNCTION_7_0();
  v27 = v0;
  v28 = v1;
  v32 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v25 = sub_1C04F65C0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  sub_1C04F6A80();
  OUTLINED_FUNCTION_0();
  v30 = v13;
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D0E0, &qword_1C04F8CC8);
  OUTLINED_FUNCTION_0();
  v29 = v17;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  sub_1C04B3894();
  sub_1C04B3944();
  v33 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D0E8, &qword_1C04F8CD0);
  sub_1C047C1A4(&qword_1EBE0D0F0, &qword_1EBE0D0E8, &qword_1C04F8CD0, MEMORY[0x1E695BED8]);
  sub_1C04B6C44();
  sub_1C04F6580();

  (*(v7 + 16))(v11, v27, v25);
  sub_1C04F6A90();
  v33 = v28;
  v22 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v22);
  sub_1C04ABCD8();
  sub_1C047C1A4(&qword_1EBE0D100, &qword_1EBE0D0E0, &qword_1C04F8CC8, MEMORY[0x1E695BCF8]);
  sub_1C04B71BC(qword_1EDE41568, sub_1C04ABCD8, MEMORY[0x1E69E8028]);

  v23 = v26;
  sub_1C04F6550();

  sub_1C04A12B4(v5, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v30 + 8))(v16, v31);
  (*(v29 + 8))(v20, v23);
  OUTLINED_FUNCTION_6();
}

unint64_t sub_1C04B6C44()
{
  result = qword_1EBE0D0F8;
  if (!qword_1EBE0D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D0F8);
  }

  return result;
}

uint64_t sub_1C04B6C98()
{
  sub_1C04B3894();
  sub_1C04B3944();
  v1 = v0;

  return v1;
}

uint64_t sub_1C04B6CE4()
{
  sub_1C04B3894();
  sub_1C04B5634();
  v1 = v0;

  return v1;
}

uint64_t PegasusProxyForEngagement.deinit()
{
  v0 = BasePegasusProxy.deinit();

  return v0;
}

uint64_t PegasusProxyForEngagement.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

unint64_t sub_1C04B6DBC()
{
  result = qword_1EBE0D108;
  if (!qword_1EBE0D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D108);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForEngagement.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C04B6FD4()
{
  result = qword_1EDE44058[0];
  if (!qword_1EDE44058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE44058);
  }

  return result;
}

uint64_t sub_1C04B7038(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C04B7078@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5AF0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04B3CFC(a1, v2 + v6, v9, v10, v11, a2);
}

uint64_t sub_1C04B713C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04B71BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BE40];

  return sub_1C047C1A4(a1, a2, a3, v4);
}

id OUTLINED_FUNCTION_7_7()
{

  return [v0 (v2 + 2956)];
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_1C04F6740();
}

uint64_t sub_1C04B7294()
{

  v0 = sub_1C04D3064();

  return v0;
}

uint64_t sub_1C04B72D0(uint64_t a1)
{

  sub_1C04D31AC();
}

uint64_t sub_1C04B7318()
{

  v0 = sub_1C047BBA0();

  return v0 & 1;
}

uint64_t sub_1C04B7354()
{

  v1 = sub_1C047D240(v0);

  return v1;
}

uint64_t sub_1C04B7390()
{

  sub_1C047DCE0();
}

uint64_t (*sub_1C04B73E0(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1C04B7354();
  return sub_1C04B7428;
}

uint64_t sub_1C04B7428(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1C04B7390();
  }

  sub_1C04B7390();
}

void sub_1C04B7488()
{
  v1 = *(*(v0 + 80) + 16);
  os_unfair_lock_lock(v1);
  v2 = OUTLINED_FUNCTION_39_0();
  sub_1C04BB0C0(v2, v3, v0);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1C04B74E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C04F6200();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
  }

  v10 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v10, qword_1EDE447A0);
  v11 = sub_1C04F63E0();
  v12 = sub_1C04F6A10();
  if (OUTLINED_FUNCTION_34_0(v12))
  {
    v13 = OUTLINED_FUNCTION_25_0();
    *v13 = 0;
    _os_log_impl(&dword_1C0479000, v11, v12, "XPC Fetch start: fetch Bag data", v13, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  v14 = *(v3 + 16);

  sub_1C04F61D0();
  v15 = type metadata accessor for ResourceAccessSpan(0);
  OUTLINED_FUNCTION_29_1(v15);
  v16 = sub_1C0482EFC(v14, 14, v9, 0, 1);
  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDE44DD0;
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = a2;
  v19 = v17;

  sub_1C04A6BCC(0, sub_1C04BCF70, v18);
}

uint64_t sub_1C04B76D4()
{
  result = (*(*v0 + 184))();
  if (result == 13)
  {
    v2 = 5;
    return sub_1C04B9DE8(&v2);
  }

  return result;
}

void sub_1C04B7738(void *a1)
{
  v2 = v1;
  if ([a1 isExpired])
  {
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
    }

    v4 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v4, qword_1EDE447A0);
    v5 = sub_1C04F63E0();
    v6 = sub_1C04F6A40();
    if (OUTLINED_FUNCTION_34_0(v6))
    {
      v7 = OUTLINED_FUNCTION_25_0();
      *v7 = 0;
      _os_log_impl(&dword_1C0479000, v5, v6, "Got expired Config, using it anyway", v7, 2u);
      OUTLINED_FUNCTION_8_4();
    }
  }

  v8 = [a1 searchURLString];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C04F6750();
    v12 = v11;

    if (((*(*v2 + 184))() & 0xFFFFFFFFFFFFFFFELL) == 0x18)
    {
      v13 = sub_1C04F6740();
      v14 = [a1 valueForKey_];

      if (v14)
      {
        sub_1C04F6BB0();
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
      }

      v35[0] = v33;
      v35[1] = v34;
      if (*(&v34 + 1))
      {
        if (swift_dynamicCast())
        {

          v10 = v31;
          v12 = v32;
        }
      }

      else
      {
        sub_1C0482130(v35, &qword_1EBE0CB20, &unk_1C04F8B20);
      }
    }

    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
    }

    v18 = sub_1C04F6400();
    __swift_project_value_buffer(v18, qword_1EDE447A0);

    v19 = sub_1C04F63E0();
    v20 = sub_1C04F6A40();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_20_2();
      v22 = OUTLINED_FUNCTION_26_1();
      *&v35[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1C047D76C(v10, v12, v35);
      OUTLINED_FUNCTION_17_2(&dword_1C0479000, v23, v24, "Inferred hostname from Configuration: %s");
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10_0();
    }

    sub_1C04B7B7C();

    v25 = [a1 isEnabled];
    v26 = sub_1C04F63E0();
    v27 = sub_1C04F6A40();
    if (OUTLINED_FUNCTION_34_0(v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v25;
      _os_log_impl(&dword_1C0479000, v26, v27, "Setting enabled status: %{BOOL}d", v28, 8u);
      OUTLINED_FUNCTION_8_4();
    }

    if (v25)
    {
      v29 = 5;
    }

    else
    {
      v29 = 1;
    }

    LOBYTE(v35[0]) = v29;
    sub_1C04B9DE8(v35);
  }

  else
  {
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
    }

    v15 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v15, qword_1EDE447A0);
    oslog = sub_1C04F63E0();
    v16 = sub_1C04F6A20();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = OUTLINED_FUNCTION_25_0();
      *v17 = 0;
      _os_log_impl(&dword_1C0479000, oslog, v16, "Didn't find a valid searchURL from Config, bailing", v17, 2u);
      OUTLINED_FUNCTION_10_0();
    }
  }
}

void sub_1C04B7B7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v54 - v3;
  v5 = sub_1C04F5340();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_31_1();
  sub_1C04F5330();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C0482130(v4, &qword_1EBE0CE60, &unk_1C04F9130);
LABEL_13:
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
    }

    v31 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v31, qword_1EDE447A0);
    v32 = sub_1C04F63E0();
    v33 = sub_1C04F6A20();
    if (OUTLINED_FUNCTION_19_1(v33))
    {
      v34 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_158(v34);
      OUTLINED_FUNCTION_21_2();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_13();
    }

    return;
  }

  (*(v7 + 32))(v11, v4, v5);
  v12 = sub_1C04F5320();
  if (!v13)
  {
    v27 = OUTLINED_FUNCTION_22_2();
    v28(v27);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  v16 = sub_1C04F52F0();
  if (!v17)
  {
    v29 = OUTLINED_FUNCTION_22_2();
    v30(v29);

    goto LABEL_13;
  }

  v57 = v16;
  v58 = v17;
  v18 = sub_1C04F5310();
  if ((v19 & 1) == 0)
  {
    v55 = 58;
    v56 = 0xE100000000000000;
    v54[1] = v18;
    v20 = sub_1C04F6D60();
    MEMORY[0x1C68DC0D0](v20);

    MEMORY[0x1C68DC0D0](v55, v56);
  }

  v21 = (*(*v1 + 184))(v18);
  if (v21 <= 0x21 && ((1 << v21) & 0x327000000) != 0)
  {
    v22 = sub_1C04B7FA8();
    v24 = v58;
    if (v23)
    {
      v25 = v22;
      v26 = v23;

      v57 = v25;
      v58 = v26;
      v24 = v26;
    }
  }

  else
  {
    v24 = v58;
  }

  v55 = v14;
  v56 = v15;
  MEMORY[0x1C68DC0D0](3092282, 0xE300000000000000);
  MEMORY[0x1C68DC0D0](v57, v24);

  MEMORY[0x1C68DC0D0](47, 0xE100000000000000);
  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
  }

  v40 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v40, qword_1EDE447A0);

  v41 = sub_1C04F63E0();
  v42 = sub_1C04F6A40();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_20_2();
    v44 = OUTLINED_FUNCTION_26_1();
    v55 = v44;
    *v43 = 136315138;
    v45 = OUTLINED_FUNCTION_31_1();
    *(v43 + 4) = sub_1C047D76C(v45, v46, v47);
    OUTLINED_FUNCTION_17_2(&dword_1C0479000, v48, v49, "Setting search endpoint: %s");
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  sub_1C047ACAC();
  v50 = OUTLINED_FUNCTION_31_1();
  sub_1C04C9D90(v50, v51);

  v52 = OUTLINED_FUNCTION_22_2();
  v53(v52);
}

uint64_t sub_1C04B7FA8()
{
  v0 = sub_1C04F5300();
  v2 = v1;
  if (sub_1C04F68A0())
  {
    v3 = sub_1C04BBC80(1, v0, v2);
    MEMORY[0x1C68DC060](v3);
  }

  v5 = sub_1C04F52E0();
  if (v4)
  {
    v6 = v4;
    v7 = OUTLINED_FUNCTION_39_0();
    v5 = sub_1C04BBD70(v7, v8, v5, v6);
  }

  return v5;
}

void sub_1C04B8074(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 64) + 16);
  os_unfair_lock_lock(v5);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 72);
  sub_1C04A0A84(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + 72) = v7;
  swift_endAccess();
  os_unfair_lock_unlock(v5);
}

void sub_1C04B816C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D1E8, &qword_1C04F9190);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - v2;
  v4 = *(*(v0 + 64) + 16);
  os_unfair_lock_lock(v4);
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v5 = *(v0 + 72);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(v5 + 48);
    v15 = type metadata accessor for CancellableStoreKey(0);
    sub_1C04A0DC8(v14 + *(*(v15 - 8) + 72) * v13, v3);
    *&v3[*(v1 + 48)] = *(*(v5 + 56) + 8 * v13);

    sub_1C04F6420();
    sub_1C0482130(v3, &unk_1EBE0D1E8, &qword_1C04F9190);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      os_unfair_lock_unlock(v4);
      return;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C04B832C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 90) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return OUTLINED_FUNCTION_7_8();
}

uint64_t sub_1C04B8348(uint64_t a1)
{
  v29 = v1;
  sub_1C04F6490();
  v2 = *(v1 + 88);
  if (v2 != 4)
  {
    if (v2 == 5)
    {
      OUTLINED_FUNCTION_150();
LABEL_12:

      return v3();
    }

    v9 = sub_1C04F63E0();
    v10 = sub_1C04F6A20();
    if (OUTLINED_FUNCTION_34_0(v10))
    {
      v11 = OUTLINED_FUNCTION_20_2();
      v12 = OUTLINED_FUNCTION_26_1();
      v28 = v12;
      *v11 = 136315138;
      *(v1 + 89) = v2;
      v13 = sub_1C04F6790();
      v15 = sub_1C047D76C(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C0479000, v9, v10, "feature disabled: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_13();
    }

    v8 = 3;
LABEL_11:
    v16 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v16);
    *v17 = v8;
    swift_willThrow();
    OUTLINED_FUNCTION_150();
    goto LABEL_12;
  }

  v4 = *(v1 + 90);
  v5 = sub_1C04F63E0();
  if (v4 == 1)
  {
    v6 = sub_1C04F6A20();
    if (OUTLINED_FUNCTION_34_0(v6))
    {
      v7 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_158(v7);
      _os_log_impl(&dword_1C0479000, v5, v6, "did retry, not configured yet, bailing", v4, 2u);
      OUTLINED_FUNCTION_13();
    }

    v8 = 4;
    goto LABEL_11;
  }

  v19 = sub_1C04F6A10();
  if (OUTLINED_FUNCTION_34_0(v19))
  {
    *OUTLINED_FUNCTION_25_0() = 0;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_8_4();
  }

  v25 = swift_task_alloc();
  *(v1 + 56) = v25;
  *v25 = v1;
  v25[1] = sub_1C04B85D0;
  v26 = OUTLINED_FUNCTION_41_0(*(v1 + 32));

  return BasePegasusProxy.EnabledState.waitForNextStateUpdate(timeout:)(v26, v27);
}

uint64_t sub_1C04B85D0()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[9] = v8;
    *v8 = v5;
    v8[1] = sub_1C04B872C;
    v9 = OUTLINED_FUNCTION_41_0(v3[3]);

    return sub_1C04B832C(v9, v10, v11, 1);
  }
}

uint64_t sub_1C04B872C()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04B882C()
{
  v18 = v0;
  v1 = *(v0 + 64);
  v2 = v1;
  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_20_2();
    v6 = OUTLINED_FUNCTION_26_1();
    v17 = v6;
    OUTLINED_FUNCTION_42_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v7 = sub_1C04F6790();
    v9 = sub_1C047D76C(v7, v8, &v17);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_8_4();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_150();

  return v15();
}

uint64_t sub_1C04B896C()
{
  v18 = v0;
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_20_2();
    v6 = OUTLINED_FUNCTION_26_1();
    v17 = v6;
    OUTLINED_FUNCTION_42_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v7 = sub_1C04F6790();
    v9 = sub_1C047D76C(v7, v8, &v17);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_8_4();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_150();

  return v15();
}

void *sub_1C04B8AAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v7 = v6;
  v79 = a4;
  v80 = a5;
  v81 = a3;
  v78 = a2;
  v10 = sub_1C04F6130();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  type metadata accessor for ActivityMonitor();
  OUTLINED_FUNCTION_38_0();
  swift_allocObject();
  OUTLINED_FUNCTION_37_0();
  v6[2] = sub_1C04E72EC();
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = 0;
  v17 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v18 = sub_1C04B2ABC(0xD000000000000011, 0x80000001C04FCF20);
  if (!v18)
  {
    v18 = [objc_opt_self() standardUserDefaults];
  }

  v6[6] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1F8, &unk_1C04F9198);
  OUTLINED_FUNCTION_28_1(v19);
  v20 = OUTLINED_FUNCTION_37_0();
  v6[7] = sub_1C04D3018(v20);
  type metadata accessor for Locker();
  OUTLINED_FUNCTION_6_3();
  v21 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_44_0();
  *(v21 + 16) = v22;
  *v22 = 0;
  v6[8] = v21;
  type metadata accessor for CancellableStoreKey(0);
  sub_1C04F6430();
  OUTLINED_FUNCTION_4_7();
  sub_1C04BD1C8(v23, 255, v24, &unk_1C04FA32C);
  v6[9] = sub_1C04F66F0();
  OUTLINED_FUNCTION_6_3();
  v25 = swift_allocObject();
  v26 = OUTLINED_FUNCTION_44_0();
  *(v25 + 16) = v26;
  *v26 = 0;
  v7[10] = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D200, &unk_1C04F8810);
  OUTLINED_FUNCTION_28_1(v27);
  v7[12] = sub_1C04D271C(0);
  sub_1C04F66F0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D208, &qword_1C04F91A8);
  OUTLINED_FUNCTION_28_1(v28);
  v29 = OUTLINED_FUNCTION_12_3();
  v7[13] = sub_1C04D3018(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D210, &qword_1C04F91B0);
  OUTLINED_FUNCTION_29_1(v30);
  v7[14] = sub_1C04F6470();
  type metadata accessor for BasePegasusProxy.EnabledState();
  OUTLINED_FUNCTION_6_3();
  v31 = swift_allocObject();
  sub_1C04BB05C();
  v7[15] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D218, &qword_1C04F91B8);
  OUTLINED_FUNCTION_29_1(v32);

  v7[3] = sub_1C04CF324(v33, 0);
  swift_unknownObjectRelease();
  v7[4] = a1;
  v7[5] = v78;

  if (v81)
  {
    v34 = v7[6];
    v7[6] = v81;
    v35 = v81;
  }

  v36 = v7[6];
  v37 = v7[2];
  v38 = type metadata accessor for GRPCClient(0);
  OUTLINED_FUNCTION_29_1(v38);
  v39 = a6;
  v40 = v36;

  sub_1C04C9F6C(0xD00000000000001CLL, 0x80000001C04FD6F0, v40, v37, a6);
  swift_beginAccess();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D220, &qword_1C04F91C0);
  OUTLINED_FUNCTION_28_1(v41);
  v42 = OUTLINED_FUNCTION_12_3();
  v7[11] = sub_1C04D3018(v42);
  swift_endAccess();
  sub_1C04B7B7C();
  sub_1C04B76D4();
  if (v80 >> 60 == 15)
  {
    OUTLINED_FUNCTION_6_3();
    v43 = swift_allocObject();
    swift_weakInit();

    sub_1C04B74E4(sub_1C04BD248, v43);
  }

  else
  {
    sub_1C048087C(v79, v80);
    sub_1C04B7488();
    sub_1C047E0BC(v79, v80, v44, v45, v46, v47, v48, v49, v78, v79, v80, v81, aBlock, v85, v86, v87, v88);
  }

  v50 = [objc_opt_self() processInfo];
  v51 = [v50 processName];

  v52 = sub_1C04F6750();
  v54 = v53;

  (*(v12 + 104))(v16, *MEMORY[0x1E69BDAF0], v10);
  v55 = sub_1C04F6120();
  v57 = v56;
  (*(v12 + 8))(v16, v10);
  if (v52 == v55 && v54 == v57)
  {

    goto LABEL_15;
  }

  v59 = sub_1C04F6D80();

  if (v59)
  {

LABEL_15:
    sub_1C047E0BC(v79, v80, v60, v61, v62, v63, v64, v65, v78, v79, v80, v81, aBlock, v85, v86, v87, v88);
    v66 = v82;
    goto LABEL_19;
  }

  v66 = [objc_opt_self() defaultCenter];
  if (qword_1EDE44478 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDE44DA8;
  OUTLINED_FUNCTION_6_3();
  v68 = swift_allocObject();
  swift_weakInit();
  v88 = sub_1C04BD220;
  v89 = v68;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1C04BBB8C;
  v87 = &block_descriptor_0;
  v69 = _Block_copy(&aBlock);

  v70 = [v66 addObserverForName:v67 object:0 queue:0 usingBlock:v69];

  sub_1C047E0BC(v79, v80, v71, v72, v73, v74, v75, v76, v78, v79, v80, v81, aBlock, v85, v86, v87, v88);
  _Block_release(v69);
  swift_unknownObjectRelease();
LABEL_19:

  return v7;
}

void sub_1C04B915C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = qword_1C04F7CF0 + 784;
  if (a4 == 2 && a1 == 404)
  {
    *(a5 + qword_1EDE44718) = 15;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
    }

    v9 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v9, qword_1EDE447A0);

    v10 = sub_1C04F63E0();
    v11 = sub_1C04F6A20();
    sub_1C0482080(404, a2, a3, 2);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_20_2();
      v13 = OUTLINED_FUNCTION_26_1();
      v36 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1C047D76C(a2, a3, &v36);
      OUTLINED_FUNCTION_17_2(&dword_1C0479000, v14, v15, "rpc status failure: %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_10_0();
      v8 = &qword_1C04F7CF0[98];
      OUTLINED_FUNCTION_10_0();
    }
  }

  *(a5 + qword_1EDE44718) = 26;
  sub_1C0483574();
  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
  }

  v16 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v16, qword_1EDE447A0);
  v17 = OUTLINED_FUNCTION_11_3();
  sub_1C04B7038(v17, v18, v19, v20);
  oslog = sub_1C04F63E0();
  v21 = sub_1C04F6A20();
  v22 = OUTLINED_FUNCTION_11_3();
  sub_1C0482080(v22, v23, v24, v25);
  if (os_log_type_enabled(oslog, v21))
  {
    v26 = OUTLINED_FUNCTION_20_2();
    v27 = OUTLINED_FUNCTION_26_1();
    v36 = v27;
    *v26 = v8[120];
    v28 = OUTLINED_FUNCTION_11_3();
    v32 = sub_1C04C971C(v28, v29, v30, v31);
    v34 = sub_1C047D76C(v32, v33, &v36);

    *(v26 + 4) = v34;
    _os_log_impl(&dword_1C0479000, oslog, v21, "rpc failure: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }
}

void sub_1C04B93C4(id a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v5 = [a1 code];
    if (v5 == -1020)
    {
      v6 = 70;
    }

    else if (v5 == -1001)
    {
      v6 = 61;
    }

    else if (v5 == -1003)
    {
      v6 = 63;
    }

    else
    {
      if (v5 != -1009)
      {
        goto LABEL_11;
      }

      v6 = 68;
    }

    *(a4 + qword_1EDE44718) = v6;
    sub_1C0483574();
  }

LABEL_11:
  if ((*(a4 + 88) & 1) == 0)
  {
    *(a4 + qword_1EDE44718) = 24;
    sub_1C0483574();
  }

  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
  }

  v7 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v7, qword_1EDE447A0);
  v8 = OUTLINED_FUNCTION_25_2();
  sub_1C04BD210(v8, v9, v10);
  oslog = sub_1C04F63E0();
  v11 = sub_1C04F6A20();
  v12 = OUTLINED_FUNCTION_25_2();
  sub_1C0482070(v12, v13, v14);
  if (os_log_type_enabled(oslog, v11))
  {
    v15 = OUTLINED_FUNCTION_20_2();
    v16 = OUTLINED_FUNCTION_26_1();
    v24 = v16;
    *v15 = 136315138;
    v17 = OUTLINED_FUNCTION_25_2();
    v20 = sub_1C04E32F0(v17, v18, v19);
    v22 = sub_1C047D76C(v20, v21, &v24);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_1C0479000, oslog, v11, "network failure: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_8_4();
  }
}

void sub_1C04B9574(void *a1, uint64_t a2)
{
  *(a2 + qword_1EDE44718) = 46;
  sub_1C0483574();
  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
  }

  v3 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v3, qword_1EDE447A0);
  v4 = a1;
  oslog = sub_1C04F63E0();
  v5 = sub_1C04F6A20();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = OUTLINED_FUNCTION_20_2();
    v7 = OUTLINED_FUNCTION_26_1();
    v13 = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v9 = sub_1C04F6790();
    v11 = sub_1C047D76C(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C0479000, oslog, v5, "proxy failure: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13();
  }

  else
  {
  }
}

uint64_t BasePegasusProxy.deinit()
{
  v1 = MEMORY[0x1C68DC7C0]();
  sub_1C04B7284(0);
  objc_autoreleasePoolPop(v1);
  sub_1C04B816C();

  swift_unknownObjectRelease();

  return v0;
}

void *sub_1C04B979C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  type metadata accessor for ActivityMonitor();
  OUTLINED_FUNCTION_38_0();
  swift_allocObject();
  OUTLINED_FUNCTION_37_0();
  v4[2] = sub_1C04E72EC();
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v9 = sub_1C04B2ABC(0xD000000000000011, 0x80000001C04FCF20);
  if (!v9)
  {
    v9 = [objc_opt_self() standardUserDefaults];
  }

  v4[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1F8, &unk_1C04F9198);
  OUTLINED_FUNCTION_28_1(v10);
  v11 = OUTLINED_FUNCTION_37_0();
  v4[7] = sub_1C04D3018(v11);
  type metadata accessor for Locker();
  OUTLINED_FUNCTION_6_3();
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_44_0();
  *(v12 + 16) = v13;
  *v13 = 0;
  v4[8] = v12;
  type metadata accessor for CancellableStoreKey(0);
  sub_1C04F6430();
  OUTLINED_FUNCTION_4_7();
  sub_1C04BD1C8(v14, 255, v15, &unk_1C04FA32C);
  v4[9] = sub_1C04F66F0();
  OUTLINED_FUNCTION_6_3();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_44_0();
  *(v16 + 16) = v17;
  *v17 = 0;
  v5[10] = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D200, &unk_1C04F8810);
  OUTLINED_FUNCTION_28_1(v18);
  v5[12] = sub_1C04D271C(0);
  sub_1C04F66F0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D208, &qword_1C04F91A8);
  OUTLINED_FUNCTION_28_1(v19);
  v20 = OUTLINED_FUNCTION_12_3();
  v5[13] = sub_1C04D3018(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D210, &qword_1C04F91B0);
  OUTLINED_FUNCTION_29_1(v21);
  v5[14] = sub_1C04F6470();
  type metadata accessor for BasePegasusProxy.EnabledState();
  OUTLINED_FUNCTION_6_3();
  v22 = swift_allocObject();
  sub_1C04BB05C();
  v5[15] = v22;
  if (a3)
  {
    v23 = v5[6];
    v5[6] = a3;
    v24 = a3;
  }

  v37[0] = 5;
  sub_1C04B9DE8(v37);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D218, &qword_1C04F91B8);
  OUTLINED_FUNCTION_29_1(v25);

  v5[3] = sub_1C04CF324(v26, 0);
  swift_unknownObjectRelease();
  v27 = v5[6];
  v28 = v5[2];
  v29 = type metadata accessor for GRPCClient(0);
  OUTLINED_FUNCTION_29_1(v29);
  v30 = a4;
  v31 = v27;

  v32 = OUTLINED_FUNCTION_31_1();
  sub_1C04C9F6C(v32, v33, v31, v28, a4);
  swift_beginAccess();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D220, &qword_1C04F91C0);
  OUTLINED_FUNCTION_28_1(v34);
  v35 = OUTLINED_FUNCTION_12_3();
  v5[11] = sub_1C04D3018(v35);
  swift_endAccess();

  return v5;
}

uint64_t BasePegasusProxy.EnabledState.statusPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D188, &qword_1C04F8E50);
  sub_1C047C1A4(&qword_1EDE44050, &unk_1EBE0D188, &qword_1C04F8E50, MEMORY[0x1E695BFB0]);
  return sub_1C04F64E0();
}

uint64_t sub_1C04B9B90()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE447A0);
  __swift_project_value_buffer(v0, qword_1EDE447A0);
  return sub_1C04F63F0();
}

const char *sub_1C04B9C10(char a1)
{
  if (a1)
  {
    return "Request";
  }

  else
  {
    return "proxy_instance";
  }
}

uint64_t sub_1C04B9C3C(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C04B9C80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C04B9C3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C04B9CAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C04B9C54(*v1);
  *a1 = result;
  return result;
}

uint64_t BasePegasusProxy.EnabledState.StateError.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

uint64_t BasePegasusProxy.EnabledState.waitForNextStateUpdate(timeout:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_8();
}

uint64_t sub_1C04B9E38()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1C04B9F38;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1C04B9F38()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04BA03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04BA0DC);
}

uint64_t sub_1C04BA0DC()
{
  OUTLINED_FUNCTION_291();
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  sub_1C04F6980();
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_38_0();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  v4[5] = v2;
  sub_1C04BA804(v1, &unk_1C04F9148, v4);
  sub_1C0482130(v1, &qword_1EBE0D1B0, &qword_1C04F8450);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_6_3();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1C04BA804(v1, &unk_1C04F9158, v6);
  sub_1C0482130(v1, &qword_1EBE0D1B0, &qword_1C04F8450);
  v7 = swift_task_alloc();
  v0[7] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B8, &qword_1C04F9160);
  *v7 = v0;
  v7[1] = sub_1C04BA284;
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DAC8]();
}

uint64_t sub_1C04BA284()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04BA380()
{
  OUTLINED_FUNCTION_144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  sub_1C04F69B0();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C04BA418()
{
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C04BA474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1C04F6C90();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04BA534);
}

uint64_t sub_1C04BA534()
{
  OUTLINED_FUNCTION_144();
  sub_1C04F6E00();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1C04BA5E8;
  OUTLINED_FUNCTION_41_0(*(v0 + 16));
  OUTLINED_FUNCTION_141();

  return sub_1C04BCAD8(v2, v3, v4, v5, 1);
}

uint64_t sub_1C04BA5E8()
{
  OUTLINED_FUNCTION_291();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_49();
  *v4 = v3;

  v5 = v2[6];
  v6 = v2[5];
  v7 = v2[4];
  if (v0)
  {
  }

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1C04BA770()
{
  v0 = sub_1C04BD104();
  OUTLINED_FUNCTION_45(&type metadata for BasePegasusProxy.EnabledState.StateError, v0);
  *v1 = 3;
  swift_willThrow();

  OUTLINED_FUNCTION_150();

  return v2();
}

uint64_t sub_1C04BA804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  sub_1C04BD158(a1, v17 - v8);
  v10 = sub_1C04F6980();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C0482130(v9, &qword_1EBE0D1B0, &qword_1C04F8450);
  }

  else
  {
    sub_1C04F6970();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_1C04F6940();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_1C04BA9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D1C0, &unk_1C04F9168);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D038, &unk_1C04F8C60);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D1D0, &qword_1C04F9178);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04BAB58);
}

uint64_t sub_1C04BAB58()
{
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = v0[10];
    v13 = v0[11];
    v3 = v0[9];
    v14 = v0[8];
    v0[5] = BasePegasusProxy.EnabledState.statusPublisher.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1E0, &qword_1C04F9180);
    sub_1C047C1A4(&qword_1EDE41638, &qword_1EBE0D1E0, &qword_1C04F9180, MEMORY[0x1E695BED8]);
    sub_1C04F6570();

    v4 = sub_1C047C1A4(&qword_1EDE41650, &qword_1EBE0D038, &unk_1C04F8C60, MEMORY[0x1E695BD78]);
    MEMORY[0x1C68DBE40](v13, v4);
    v5 = OUTLINED_FUNCTION_31_1();
    v6(v5);
    sub_1C04F6440();
    (*(v3 + 8))(v2, v14);
    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_1C04BADD4;
    v8 = v0[14];

    return MEMORY[0x1EEDB5C50](v0 + 19, v8);
  }

  else
  {
    v9 = sub_1C04BD104();
    OUTLINED_FUNCTION_45(&type metadata for BasePegasusProxy.EnabledState.StateError, v9);
    *v10 = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_150();

    return v11();
  }
}

uint64_t sub_1C04BADD4()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v1 = *v0;
  OUTLINED_FUNCTION_49();
  *v2 = v1;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1C04BAEBC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  if (v1 == 6)
  {
    v5 = sub_1C04BD104();
    OUTLINED_FUNCTION_45(&type metadata for BasePegasusProxy.EnabledState.StateError, v5);
    *v6 = 2;
    swift_willThrow();

    (*(v4 + 8))(v2, v3);
  }

  else
  {
    v8 = *(v0 + 48);
    (*(v4 + 8))(*(v0 + 128), *(v0 + 112));

    *v8 = v1;
  }

  OUTLINED_FUNCTION_150();

  return v7();
}

uint64_t BasePegasusProxy.EnabledState.__deallocating_deinit()
{

  OUTLINED_FUNCTION_6_3();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C04BB05C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D188, &qword_1C04F8E50);
  OUTLINED_FUNCTION_29_1(v1);
  *(v0 + 16) = sub_1C04F64A0();
  return v0;
}

uint64_t sub_1C04BB0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDE446B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C04F6400();
  __swift_project_value_buffer(v4, qword_1EDE447A0);
  v5 = sub_1C04F63E0();
  v6 = sub_1C04F6A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C0479000, v5, v6, "Got bag, crafting and caching Config", v7, 2u);
    MEMORY[0x1C68DCEB0](v7, -1, -1);
  }

  sub_1C04F6150();
  v8 = sub_1C04F6140();
  v9 = sub_1C04F53B0();
  if (*(a3 + 40))
  {

    v10 = sub_1C04F6740();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a3 + 48);
  v12 = [v8 loadWithData:v9 userAgent:v10 userDefaults:v11];

  swift_unknownObjectRelease();
  v13 = swift_unknownObjectRetain();
  sub_1C04B72D0(v13);
  v14 = sub_1C04F6740();
  v15 = [v12 valueForKey:v14 shouldConsiderOverrides:1];

  if (v15)
  {
    sub_1C04F6BB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    if (swift_dynamicCast())
    {
      v16 = sub_1C04F63E0();
      v17 = sub_1C04F6A40();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v31;
        _os_log_impl(&dword_1C0479000, v16, v17, "Setting RPC Compression status: %{BOOL}d", v18, 8u);
        MEMORY[0x1C68DCEB0](v18, -1, -1);
      }

      sub_1C047ACAC();
      sub_1C04C9EA8(v31);
    }
  }

  else
  {
    sub_1C0482130(&v35, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  v19 = sub_1C04F6740();
  v20 = [v12 valueForKey:v19 shouldConsiderOverrides:1];

  if (v20)
  {
    sub_1C04F6BB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    if (swift_dynamicCast())
    {

      v21 = sub_1C04F63E0();
      v22 = sub_1C04F6A40();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v35 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1C047D76C(v31, v32, &v35);
        _os_log_impl(&dword_1C0479000, v21, v22, "Setting RPC Timeout: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1C68DCEB0](v24, -1, -1);
        MEMORY[0x1C68DCEB0](v23, -1, -1);
      }

      sub_1C047ACAC();
      sub_1C04C9E44(v31, v32);
    }
  }

  else
  {
    sub_1C0482130(&v35, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  v25 = sub_1C04F6740();
  v26 = [v12 configBoolForKey_];

  v27 = sub_1C04F63E0();
  v28 = sub_1C04F6A40();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v26;
    _os_log_impl(&dword_1C0479000, v27, v28, "AssumesHTTP3Capable: %{BOOL}d", v29, 8u);
    MEMORY[0x1C68DCEB0](v29, -1, -1);
  }

  sub_1C047ACAC();
  sub_1C04C9EB4(v26);

  sub_1C04B7738(v12);
  if (sub_1C04B7318())
  {
    sub_1C047AAE0();
  }

  return swift_unknownObjectRelease();
}

void sub_1C04BB674(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, void (*a5)(uint64_t, unint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a3)
  {
    *(a4 + qword_1EDE44718) = 28;
    v18 = a3;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1C04F6400();
    __swift_project_value_buffer(v19, qword_1EDE447A0);
    v20 = a3;
    v21 = sub_1C04F63E0();
    v22 = sub_1C04F6A20();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136315138;
      v25 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v26 = sub_1C04F6790();
      v28 = sub_1C047D76C(v26, v27, &v43);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1C0479000, v21, v22, "Error fetching bag data: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C68DCEB0](v24, -1, -1);
      MEMORY[0x1C68DCEB0](v23, -1, -1);

      return;
    }

    v33 = a3;

    goto LABEL_13;
  }

  if (a2 >> 60 == 15)
  {
    *(a4 + qword_1EDE44718) = 20;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      swift_once();
    }

    v30 = sub_1C04F6400();
    __swift_project_value_buffer(v30, qword_1EDE447A0);
    oslog = sub_1C04F63E0();
    v31 = sub_1C04F6A20();
    if (os_log_type_enabled(oslog, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C0479000, oslog, v31, "Got nil bagData, falling back to default", v32, 2u);
      MEMORY[0x1C68DCEB0](v32, -1, -1);
    }

    v33 = oslog;

LABEL_13:

    return;
  }

  *(a4 + qword_1EDE44718) = 3;
  sub_1C048087C(a1, a2);
  sub_1C0483574();
  a5(a1, a2);

  sub_1C047E0BC(a1, a2, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1C04BB9B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EDE446B8 != -1)
    {
      swift_once();
    }

    v3 = sub_1C04F6400();
    __swift_project_value_buffer(v3, qword_1EDE447A0);
    v4 = sub_1C04F63E0();
    v5 = sub_1C04F6A10();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C0479000, v4, v5, "Received Bag Change notification, refreshing bag", v6, 2u);
      MEMORY[0x1C68DCEB0](v6, -1, -1);
    }

    v7 = swift_allocObject();
    swift_weakInit();

    sub_1C04B74E4(sub_1C04BD228, v7);
  }

  return result;
}

uint64_t sub_1C04BBB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C04B7488();
  }

  return result;
}

uint64_t sub_1C04BBB8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C04F5250();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1C04F5240();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C04BBC80(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_1C04F67F0();
    if (!__OFSUB__(result, v3))
    {
      sub_1C04F6810();
      v4 = sub_1C04F68D0();

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04BBD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_1C04F68C0();
  sub_1C04F6820();
  return v5;
}

uint64_t BasePegasusProxy.__deallocating_deinit()
{
  BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04BBE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = sub_1C049F7A8(a2);
  v7 = 0;
  if (v8)
  {
    v9 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE58, &qword_1C04F8560);
    sub_1C04F6CC0();
    v10 = *(v13 + 48);
    v11 = type metadata accessor for CancellableStoreKey(0);
    sub_1C04A0E2C(v10 + *(*(v11 - 8) + 72) * v9);
    v7 = *(*(v13 + 56) + 8 * v9);
    sub_1C04F6430();
    sub_1C04BD1C8(&qword_1EDE44700, 255, type metadata accessor for CancellableStoreKey, &unk_1C04FA32C);
    sub_1C04F6CE0();
    *(a1 + 72) = v13;
  }

  *a3 = v7;
  return swift_endAccess();
}

void sub_1C04BBF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04F5BC0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  (*(v6 + 16))(v9 - v8, a1, v4);
  v11 = OUTLINED_FUNCTION_39_0();
  v13 = v12(v11);
  if (v13 == *MEMORY[0x1E69BCEC0])
  {
    v14 = OUTLINED_FUNCTION_39_0();
    v15(v14);
    v16 = *v10;
    *(a2 + qword_1EDE44718) = 0;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
    }

    v17 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v17, qword_1EDE447A0);
    v18 = sub_1C04F63E0();
    v19 = sub_1C04F6A20();
    if (!OUTLINED_FUNCTION_19_1(v19))
    {
      goto LABEL_19;
    }

    v20 = OUTLINED_FUNCTION_20_2();
    *v20 = 134217984;
    *(v20 + 4) = v16;
    OUTLINED_FUNCTION_21_2();
    v26 = 12;
LABEL_18:
    _os_log_impl(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_13();
LABEL_19:

    return;
  }

  if (v13 == *MEMORY[0x1E69BCEC8])
  {
    *(a2 + qword_1EDE44718) = 2;
    sub_1C0483574();
    return;
  }

  if (v13 == *MEMORY[0x1E69BCED0])
  {
    *(a2 + qword_1EDE44718) = 19;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
    }

    v27 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v27, qword_1EDE447A0);
    v18 = sub_1C04F63E0();
    v28 = sub_1C04F6A20();
    if (!OUTLINED_FUNCTION_19_1(v28))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x1E69BCED8])
  {
    *(a2 + qword_1EDE44718) = 18;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EDE446B8);
    }

    v29 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v29, qword_1EDE447A0);
    v18 = sub_1C04F63E0();
    v30 = sub_1C04F6A20();
    if (!OUTLINED_FUNCTION_19_1(v30))
    {
      goto LABEL_19;
    }

LABEL_17:
    v31 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_158(v31);
    OUTLINED_FUNCTION_21_2();
    v26 = 2;
    goto LABEL_18;
  }

  sub_1C04F6D70();
  __break(1u);
}

uint64_t sub_1C04BC270(void (*a1)(uint64_t *__return_ptr))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1(&v5);
  os_unfair_lock_unlock(v3);
  return v5;
}

uint64_t sub_1C04BC2CC()
{
  OUTLINED_FUNCTION_291();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_81(v8);
  *v9 = v10;
  v9[1] = sub_1C04A1810;

  return sub_1C04BA03C(v4, v2, v5, v6, v7);
}

unint64_t sub_1C04BC388()
{
  result = qword_1EBE0D198;
  if (!qword_1EBE0D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D198);
  }

  return result;
}

uint64_t sub_1C04BC3DC(uint64_t a1, uint64_t a2)
{
  result = sub_1C04BD1C8(&qword_1EBE0D1A0, a2, type metadata accessor for BasePegasusProxy, &unk_1C04F8F44);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C04BC45C()
{
  result = qword_1EBE0D1A8;
  if (!qword_1EBE0D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D1A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BasePegasusProxy.EnabledState.StateError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for BasePegasusProxy.EnabledState.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 4)
    {
      v7 = v6 - 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BasePegasusProxy.EnabledState.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C04BC810(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C04BC824(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1C04BC840(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1C04BC8C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C04BC9A4()
{
  result = qword_1EDE44760;
  if (!qword_1EDE44760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44760);
  }

  return result;
}

unint64_t sub_1C04BC9F8(uint64_t a1)
{
  *(a1 + 8) = sub_1C04BCA28();
  result = sub_1C04BCA7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04BCA28()
{
  result = qword_1EDE44768;
  if (!qword_1EDE44768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44768);
  }

  return result;
}

unint64_t sub_1C04BCA7C()
{
  result = qword_1EDE44750;
  if (!qword_1EDE44750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44750);
  }

  return result;
}

uint64_t sub_1C04BCAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C04F6C80();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C04BCBD8);
}

uint64_t sub_1C04BCBD8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  sub_1C04F6C90();
  sub_1C04BD1C8(&qword_1EDE40838, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C04F6DE0();
  sub_1C04BD1C8(&unk_1EDE40840, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C04F6CA0();
  v4 = *(v3 + 8);
  v0[12] = v4;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1C04BCD6C;
  v6 = OUTLINED_FUNCTION_41_0(v0[11]);

  return MEMORY[0x1EEE6DE58](v6);
}

uint64_t sub_1C04BCD6C()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_49();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v11);
  }

  else
  {

    OUTLINED_FUNCTION_150();

    return v12();
  }
}

uint64_t sub_1C04BCF0C()
{
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C04BCF7C()
{
  OUTLINED_FUNCTION_291();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_81(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_32_1(v4);

  return sub_1C04BA474(v6, v7, v8, v2, v1);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1C04BD068()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_81(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_32_1(v3);

  return sub_1C04BA9BC(v5, v6, v7, v1);
}

unint64_t sub_1C04BD104()
{
  result = qword_1EDE414A8;
  if (!qword_1EDE414A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE414A8);
  }

  return result;
}

uint64_t sub_1C04BD158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04BD1C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1C04BD210(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void OUTLINED_FUNCTION_8_4()
{

  JUMPOUT(0x1C68DCEB0);
}

void OUTLINED_FUNCTION_17_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_19_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1)
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_42_0(float a1)
{
  *v3 = a1;
  *(v2 + 16) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

uint64_t sub_1C04BD448()
{
  MEMORY[0x1C68DCEB0](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

BOOL sub_1C04BD4AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3);
  v4 = sub_1C04A64B8();
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
  }

  os_unfair_lock_unlock(v3);

  return v5 == 0;
}

void sub_1C04BD518(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1C04BD580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A0, &qword_1C04F9330);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1C04F5DE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = *(a1 + 16);
  v22 = (v14 + 32);
  v21 = *MEMORY[0x1E69BD610];
  v20 = (v14 + 104);
  v15 = (v14 + 8);
  for (i = (a1 + 40); v13; --v13)
  {
    v17 = *i;

    sub_1C04E9FA0(v17, v23, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*v20)(v9, v21, v7);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        sub_1C04A12B4(v6, &qword_1EBE0D2A0, &qword_1C04F9330);
      }
    }

    else
    {
      (*v22)(v9, v6, v7);
    }

    sub_1C04D5174();
    (*v15)(v12, v7);

    i += 2;
  }
}

uint64_t sub_1C04BD7D8()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D228);
  __swift_project_value_buffer(v0, qword_1EBE0D228);
  return sub_1C04F63F0();
}

uint64_t sub_1C04BD85C()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EDE423C0 = v9;
  *algn_1EDE423C8 = v11;
  return result;
}

uint64_t PegasusProxyForVisualSearch.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

double sub_1C04BDA78()
{
  *&xmmword_1EBE0D240 = 0xD000000000000029;
  *(&xmmword_1EBE0D240 + 1) = 0x80000001C04FD7A0;
  strcpy(&qword_1EBE0D250, "VisualSearch");
  unk_1EBE0D25D = 0;
  unk_1EBE0D25E = -5120;
  result = 3.01579456e161;
  xmmword_1EBE0D260 = xmmword_1C04F91E0;
  return result;
}

void *PegasusProxyForVisualSearch.init()()
{
  if (qword_1EDE423B8 != -1)
  {
    OUTLINED_FUNCTION_3_9(&qword_1EDE423B8);
  }

  v0 = qword_1EDE423C0;
  v1 = *algn_1EDE423C8;

  return sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
}

uint64_t sub_1C04BDBE0()
{
  v1 = sub_1C04F6130();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = sub_1C04F6200();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = *(v0 + 16);
  (*(v3 + 104))(v7, *MEMORY[0x1E69BDAD0], v1);

  sub_1C04F6120();
  (*(v3 + 8))(v7, v1);
  sub_1C04F6210();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v12, 10, v11, 0, 1);
}

uint64_t sub_1C04BDD54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a1;
  v77 = *v2;
  v78 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A8, &qword_1C04F9338);
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v4);
  v69 = (&v64 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2B0, &qword_1C04F9340);
  OUTLINED_FUNCTION_0();
  v72 = v7;
  v73 = v6;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2B8, &qword_1C04F9348);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v64 - v14;
  v68 = sub_1C04F54B0();
  OUTLINED_FUNCTION_0();
  v67 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v75 = sub_1C04F5E70();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE423B8 != -1)
  {
    OUTLINED_FUNCTION_3_9(&qword_1EDE423B8);
  }

  v26 = qword_1EDE423C0;
  v27 = *algn_1EDE423C8;

  v28 = sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v82 = v28;
  sub_1C049FB48(v26, v27, 0x6567612D72657375, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  sub_1C04F6490();
  if (v82 == 5)
  {
    v72 = v12;
    v73 = v10;
    v30 = v75;
    v69 = *(v21 + 16);
    v69(&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v76, v75);
    v31 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v32 = (v23 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = *(v21 + 32);
    v71 = v31;
    v35 = v33 + v31;
    v36 = v25;
    v66 = v34;
    v34(v35, v25, v30);
    v65 = v32;
    *(v33 + v32) = v77;
    sub_1C04F54A0();
    v37 = sub_1C04F5470();
    v39 = v38;
    (*(v67 + 8))(v19, v68);
    *&v82 = v37;
    *(&v82 + 1) = v39;
    LOBYTE(v83) = 0;
    *(&v83 + 1) = v79[0];
    DWORD1(v83) = *(v79 + 3);
    *(&v83 + 1) = sub_1C04C06CC;
    v84 = v33;
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v40 = sub_1C04D0244(13, 0);
    v70 = v40;

    v80 = v40;
    v41 = v25;
    v42 = v75;
    v69(v41, v76, v75);
    v43 = v65;
    v44 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v66(v46 + v71, v36, v42);
    *(v46 + v43) = v3;
    *(v46 + v44) = v78;
    v47 = v46 + v45;
    v48 = v83;
    *v47 = v82;
    *(v47 + 16) = v48;
    *(v47 + 32) = v84;
    *(v46 + ((v45 + 47) & 0xFFFFFFFFFFFFFFF8)) = v77;

    sub_1C04C0838(&v82, v79);
    sub_1C04F6410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D278, &unk_1C04F9200);
    v49 = MEMORY[0x1E695BED8];
    sub_1C047C1A4(&qword_1EDE40898, &qword_1EBE0D070, &qword_1C04F9350, MEMORY[0x1E695BED8]);
    sub_1C047C1A4(&qword_1EBE0D280, &qword_1EBE0D278, &unk_1C04F9200, v49);
    v50 = v74;
    sub_1C04F65B0();

    sub_1C047C1A4(&qword_1EBE0D2C8, &qword_1EBE0D2B8, &qword_1C04F9348, MEMORY[0x1E695BE40]);
    v51 = v73;
    v52 = sub_1C04F64E0();
    sub_1C04C0894(&v82);
    (*(v72 + 8))(v50, v51);
  }

  else
  {
    *(v78 + qword_1EDE44718) = 34;
    sub_1C0483574();
    if (qword_1EBE0C9D0 != -1)
    {
      swift_once();
    }

    v53 = sub_1C04F6400();
    __swift_project_value_buffer(v53, qword_1EBE0D228);

    v54 = sub_1C04F63E0();
    v55 = sub_1C04F6A20();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v82 = v57;
      *v56 = 136315138;
      sub_1C04F6490();
      v81[0] = v79[0];
      v58 = sub_1C04F6790();
      v60 = sub_1C047D76C(v58, v59, &v82);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_1C0479000, v54, v55, "Visual Search is disabled: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1C68DCEB0](v57, -1, -1);
      MEMORY[0x1C68DCEB0](v56, -1, -1);
    }

    *v69 = 3;
    swift_storeEnumTagMultiPayload();
    v61 = v70;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D2C0, &qword_1EBE0D2B0, &qword_1C04F9340, MEMORY[0x1E695C008]);
    v62 = v73;
    v52 = sub_1C04F64E0();
    (*(v72 + 8))(v61, v62);
  }

  return v52;
}

uint64_t sub_1C04BE5F0(uint64_t a1)
{
  v2 = sub_1C04F5C70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  sub_1C04F5E60();
  sub_1C04F5590();
  sub_1C04F5570();
  v12 = sub_1C04F5540();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    sub_1C04A13B0(v11, v8, &qword_1EBE0CAA0, &qword_1C04F7A40);
    v13 = *(v12 - 8);
    v14 = (*(v13 + 88))(v8, v12);
    if (v14 == *MEMORY[0x1E69BCB98])
    {
      (*(v3 + 104))(v5, *MEMORY[0x1E69BD180], v2);
      v15 = sub_1C04F5560();
      sub_1C04F5A90();
      v15(v21, 0);
    }

    else if (v14 == *MEMORY[0x1E69BCB90])
    {
      (*(v3 + 104))(v5, *MEMORY[0x1E69BD180], v2);
      v16 = sub_1C04F5550();
      sub_1C04F5970();
      v16(v21, 0);
    }

    (*(v13 + 8))(v8, v12);
  }

  sub_1C04A12B4(v11, &qword_1EBE0CAA0, &qword_1C04F7A40);
  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDE423B8;
  v18 = qword_1EDE44DD0;
  if (v17 != -1)
  {
    swift_once();
  }

  sub_1C04A85AC(a1, qword_1EDE423C0, *algn_1EDE423C8, 0);

  v19 = sub_1C04F55B0();
  return (*(*(v19 - 8) + 8))(a1, v19);
}

uint64_t sub_1C04BE978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v89 = a6;
  v91 = a5;
  v90 = a3;
  v100 = a2;
  v98 = a1;
  v102 = a7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A8, &qword_1C04F9338);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v80 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2B0, &qword_1C04F9340);
  v97 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v96 = &v80 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2D0, &qword_1C04F9358);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v80 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2D8, &unk_1C04F9360);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v80 - v13);
  v15 = sub_1C04F54F0();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v80 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v80 - v24);
  v26 = sub_1C04F5E70();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v30;
  v31 = *(v30 + 16);
  v32 = v100;
  v100 = v33;
  v31(v29, v32, v27);
  sub_1C04A13B0(v98, v25, &qword_1EBE0D088, &qword_1C04F9370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v29;
    v35 = *v25;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EBE0C9D0 != -1)
    {
      swift_once();
    }

    v36 = sub_1C04F6400();
    __swift_project_value_buffer(v36, qword_1EBE0D228);
    v37 = v35;
    v38 = sub_1C04F63E0();
    v39 = sub_1C04F6A20();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v105[0] = v41;
      *v40 = 136315138;
      v104[0] = v35;
      v42 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v43 = sub_1C04F6790();
      v45 = sub_1C047D76C(v43, v44, v105);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1C0479000, v38, v39, "context fetch failure: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1C68DCEB0](v41, -1, -1);
      MEMORY[0x1C68DCEB0](v40, -1, -1);
    }

    v29 = v34;
    *v94 = 0;
    swift_storeEnumTagMultiPayload();
    v46 = v96;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D2C0, &qword_1EBE0D2B0, &qword_1C04F9340, MEMORY[0x1E695C008]);
    v47 = v101;
    v48 = sub_1C04F64E0();

    (*(v97 + 8))(v46, v47);
  }

  else
  {
    v81 = a4;
    v49 = v93;
    v50 = *(v93 + 32);
    v50(v22, v25, v15);
    sub_1C04F5E40();
    sub_1C0482664(10, v17, v14);
    v51 = *(v49 + 8);
    v98 = v49 + 8;
    v82 = v51;
    v51(v17, v15);
    v52 = v15;
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1C04A12B4(v14, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v81 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EBE0C9D0 != -1)
      {
        swift_once();
      }

      v53 = sub_1C04F6400();
      __swift_project_value_buffer(v53, qword_1EBE0D228);
      v54 = sub_1C04F63E0();
      v55 = sub_1C04F6A20();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1C0479000, v54, v55, "unable to create unified query context", v56, 2u);
        MEMORY[0x1C68DCEB0](v56, -1, -1);
      }

      *v94 = 8;
      swift_storeEnumTagMultiPayload();
      v57 = v96;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EBE0D2C0, &qword_1EBE0D2B0, &qword_1C04F9340, MEMORY[0x1E695C008]);
      v58 = v101;
      v48 = sub_1C04F64E0();
      (*(v97 + 8))(v57, v58);
      v82(v22, v15);
    }

    else
    {
      v59 = v92;
      v50(v92, v14, v15);
      (*(v93 + 16))(v17, v59, v15);
      sub_1C04F5E50();
      sub_1C047ACAC();
      v60 = v81;
      if (qword_1EBE0C9E0 != -1)
      {
        swift_once();
      }

      v105[0] = xmmword_1EBE0D240;
      v105[1] = *&qword_1EBE0D250;
      v105[2] = xmmword_1EBE0D260;
      v61 = sub_1C04B7354();
      v104[3] = &type metadata for NetworkFeedbackGenerator;
      v104[4] = &protocol witness table for NetworkFeedbackGenerator;
      v62 = swift_allocObject();
      v104[0] = v62;
      v63 = v91;
      v64 = v91[1];
      *(v62 + 16) = *v91;
      *(v62 + 32) = v64;
      *(v62 + 48) = *(v63 + 32);
      sub_1C04C0838(v63, v103);
      v65 = sub_1C04D99B8(v105, v29, v61, v104, 1);
      v67 = v66;

      sub_1C04A12B4(v104, &qword_1EBE0CE40, &qword_1C04F8900);
      v68 = v65;

      v69 = nw_activity_create();
      v70 = v68;
      sub_1C04E0B04(v70, v69, 0, 0xE000000000000000, v60);
      swift_unknownObjectRelease();

      v104[0] = v67;

      sub_1C04F6410();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2E0, &qword_1C04F9378);
      v97 = v52;
      sub_1C047C1A4(&qword_1EBE0D2E8, &qword_1EBE0D2E0, &qword_1C04F9378, MEMORY[0x1E695BED8]);
      v96 = v22;
      sub_1C047C1A4(&qword_1EBE0D2C0, &qword_1EBE0D2B0, &qword_1C04F9340, MEMORY[0x1E695C008]);
      v71 = v83;
      sub_1C04F6530();

      v72 = swift_allocObject();
      v73 = v89;
      *(v72 + 16) = v60;
      *(v72 + 24) = v73;
      sub_1C047C1A4(&qword_1EBE0D2F0, &qword_1EBE0D2D0, &qword_1C04F9358, MEMORY[0x1E695BE40]);

      v74 = v84;
      v75 = v86;
      sub_1C04F6500();

      (*(v85 + 8))(v71, v75);
      sub_1C047C1A4(&qword_1EBE0D2F8, &qword_1EBE0D2D8, &unk_1C04F9360, MEMORY[0x1E695BDA0]);
      v76 = v88;
      v48 = sub_1C04F64E0();

      (*(v87 + 8))(v74, v76);
      v77 = v97;
      v78 = v82;
      v82(v92, v97);
      v78(v96, v77);
    }
  }

  result = (*(v99 + 8))(v29, v100);
  *v102 = v48;
  return result;
}

uint64_t sub_1C04BF964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A8, &qword_1C04F9338);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  *(a2 + qword_1EDE44718) = 2;
  sub_1C0483574();
  if (qword_1EBE0C9D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C04F6400();
  __swift_project_value_buffer(v7, qword_1EBE0D228);
  v8 = sub_1C04F63E0();
  v9 = sub_1C04F6A40();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C0479000, v8, v9, "publishing successful rpc response", v10, 2u);
    MEMORY[0x1C68DCEB0](v10, -1, -1);
  }

  v11 = sub_1C04F5EE0();
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04BFB20(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A8, &qword_1C04F9338);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = *a1;
  v36 = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    sub_1C04B915C(v32, v33, v34, v35, a2);
    sub_1C0482080(v9, v10, v11, v12);
    goto LABEL_3;
  }

  v36 = v7;
  v13 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = v7;
    v17 = v7;
    if (swift_dynamicCast())
    {
      v18 = v36;
      sub_1C04C0254();
      v19 = swift_allocError();
      *v20 = v18;
      sub_1C04B9574(v19, a2);

      *v6 = v18;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EBE0C9D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1C04F6400();
    __swift_project_value_buffer(v21, qword_1EBE0D228);
    v22 = v7;
    v23 = sub_1C04F63E0();
    v24 = sub_1C04F6A20();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v36 = v7;
      v27 = v7;
      v28 = sub_1C04F6790();
      v30 = sub_1C047D76C(v28, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1C0479000, v23, v24, "search failure: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
      MEMORY[0x1C68DCEB0](v25, -1, -1);
    }

LABEL_3:
    *v6 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v14 = v32;
  v15 = v33;
  v16 = v34;
  sub_1C04B93C4(v32, v33, v34, a2);
  *v6 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v14, v15, v16);
}

uint64_t sub_1C04BFEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v30 = a2;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v28 = sub_1C04F65C0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_1C04F6A80();
  OUTLINED_FUNCTION_0();
  v33 = v15;
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D270, &qword_1C04F91F8);
  OUTLINED_FUNCTION_0();
  v31 = v19;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  v23 = sub_1C04BDBE0();
  v36 = sub_1C04BDD54(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D278, &unk_1C04F9200);
  sub_1C047C1A4(&qword_1EBE0D280, &qword_1EBE0D278, &unk_1C04F9200, MEMORY[0x1E695BED8]);
  sub_1C04C0254();
  sub_1C04F6580();

  (*(v9 + 16))(v13, v30, v28);
  sub_1C04F6A90();
  v36 = v32;
  v24 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v24);
  sub_1C04ABCD8();
  sub_1C047C1A4(&qword_1EBE0D290, &qword_1EBE0D270, &qword_1C04F91F8, MEMORY[0x1E695BCF8]);
  sub_1C04B2C60();

  v25 = v29;
  sub_1C04F6550();

  sub_1C04A12B4(v7, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v33 + 8))(v18, v34);
  return (*(v31 + 8))(v22, v25);
}

unint64_t sub_1C04C0254()
{
  result = qword_1EBE0D288;
  if (!qword_1EBE0D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D288);
  }

  return result;
}

uint64_t sub_1C04C02A8(uint64_t a1)
{
  v2 = sub_1C04BDBE0();
  v3 = sub_1C04BDD54(a1, v2);

  return v3;
}

uint64_t sub_1C04C02F4()
{
  v10 = MEMORY[0x1E69E7CD0];
  v0 = sub_1C04F5DD0();
  v1 = sub_1C04B7294();
  if (!v1)
  {

    v8 = 0u;
    v9 = 0u;
LABEL_10:
    sub_1C04A12B4(&v8, &qword_1EBE0CB20, &unk_1C04F8B20);
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  v3 = sub_1C04F6740();
  v4 = [v2 valueForKey:v3 shouldConsiderOverrides:1];

  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1C04F6BB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF20, &qword_1C04F9210);
  if (swift_dynamicCast())
  {

    sub_1C04BD580(v6, &v10, v0);

    return v10;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t PegasusProxyForVisualSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C04C04B4()
{
  result = qword_1EBE0D298;
  if (!qword_1EBE0D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForVisualSearch.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C04C06CC(uint64_t a1)
{
  sub_1C04F5E70();

  return sub_1C04BE5F0(a1);
}

uint64_t sub_1C04C0768@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5E70() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04BE978(a1, v2 + v6, v10, v11, (v2 + v9), v12, a2);
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1C04C0918(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C04F66A0();
  OUTLINED_FUNCTION_0();
  v55 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1C04F6690();
  OUTLINED_FUNCTION_0();
  v57 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1C04F6780();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  if (a1 > 0x20 || (v50 = v10, sub_1C04F6770(), sub_1C04F6760(), v24 = v23, (*(v18 + 8))(v22, v16), v24 >> 60 == 15))
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    sub_1C04C0BD8();
    sub_1C04F6670();
    v27 = OUTLINED_FUNCTION_189();
    sub_1C048087C(v27, v28);
    v29 = OUTLINED_FUNCTION_189();
    sub_1C04C0C40(v29, v30, v9);
    v31 = OUTLINED_FUNCTION_189();
    sub_1C047E0BC(v31, v32, v33, v34, v35, v36, v37, v38, v48, v50, a1, v55, v57, v60, v63, v65, v67);
    sub_1C04F6660();
    (*(v56 + 8))(v9, v4);
    sub_1C04F6680();
    v39 = OUTLINED_FUNCTION_189();
    sub_1C047E0BC(v39, v40, v41, v42, v43, v44, v45, v46, v49, v51, v53, v56, v58, v61, v64, v66, v68);
    (*(v59 + 8))(v15, v52);
    v25 = v62 >> -v54;
    if (!v54)
    {
      v25 = 0;
    }

    v26 = 0;
  }

  return v25 | (v26 << 32);
}

unint64_t sub_1C04C0BD8()
{
  result = qword_1EDE40858;
  if (!qword_1EDE40858)
  {
    sub_1C04F66A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE40858);
  }

  return result;
}

void sub_1C04C0C40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_1C04C0D80(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1C04C0CDC(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_1C04C0CDC(uint64_t a1, uint64_t a2)
{
  sub_1C04F66A0();
  sub_1C04C0BD8();
  return sub_1C04F6650();
}

uint64_t sub_1C04C0D80(uint64_t a1, uint64_t a2)
{
  result = sub_1C04F5270();
  if (!result || (result = sub_1C04F5290(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C04F5280();
      sub_1C04F66A0();
      sub_1C04C0BD8();
      return sub_1C04F6650();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04C0E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A0, &qword_1C04F9330);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1C04F5DE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = *(a1 + 16);
  v22 = (v14 + 32);
  v21 = *MEMORY[0x1E69BD610];
  v20 = (v14 + 104);
  v15 = (v14 + 8);
  for (i = (a1 + 40); v13; --v13)
  {
    v17 = *i;

    sub_1C04E9FA0(v17, v23, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*v20)(v9, v21, v7);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
      {
        sub_1C0482130(v6, &qword_1EBE0D2A0, &qword_1C04F9330);
      }
    }

    else
    {
      (*v22)(v9, v6, v7);
    }

    sub_1C04D5174();
    (*v15)(v12, v7);

    i += 2;
  }
}

uint64_t sub_1C04C1088()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D300);
  __swift_project_value_buffer(v0, qword_1EBE0D300);
  return sub_1C04F63F0();
}

uint64_t sub_1C04C1110()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EDE42388 = v9;
  *algn_1EDE42390 = v11;
  return result;
}

void sub_1C04C1298()
{
  *&xmmword_1EBE0D318 = 0xD000000000000035;
  *(&xmmword_1EBE0D318 + 1) = 0x80000001C04FD830;
  *&xmmword_1EBE0D328 = 0xD000000000000012;
  *(&xmmword_1EBE0D328 + 1) = 0x80000001C04FD870;
  qword_1EBE0D338 = 0xD000000000000015;
  unk_1EBE0D340 = 0x80000001C04FD890;
}

void *sub_1C04C12F0()
{
  type metadata accessor for PegasusProxyForCameraVisualSearch();
  swift_allocObject();
  result = sub_1C04C1388();
  qword_1EDE423A8 = result;
  return result;
}

uint64_t static PegasusProxyForCameraVisualSearch.shared.getter()
{
  if (qword_1EDE423A0 != -1)
  {
    swift_once();
  }
}

void *sub_1C04C1388()
{
  if (qword_1EDE42380 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE42388;
  v1 = *algn_1EDE42390;

  return sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
}

uint64_t sub_1C04C1418()
{
  v1 = sub_1C04F6130();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6200();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  (*(v2 + 104))(v4, *MEMORY[0x1E69BDAC8], v1, v6);

  sub_1C04F6120();
  (*(v2 + 8))(v4, v1);
  sub_1C04F6210();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v9, 31, v8, 0, 1);
}

uint64_t sub_1C04C15A8()
{
  OUTLINED_FUNCTION_144();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v1[30] = *v0;
  v4 = sub_1C04F5EE0();
  v1[31] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[32] = v5;
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v1[34] = swift_task_alloc();
  v6 = sub_1C04F54F0();
  v1[35] = v6;
  OUTLINED_FUNCTION_66(v6);
  v1[36] = v7;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v8 = sub_1C04F5E70();
  v1[40] = v8;
  OUTLINED_FUNCTION_66(v8);
  v1[41] = v9;
  v1[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04C1780);
}

uint64_t sub_1C04C1780()
{
  v20 = v0;
  if (qword_1EDE42380 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE42388;
  v2 = *algn_1EDE42390;

  v3 = sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v3;
  sub_1C049FB48(v1, v2, 0x6567612D72657375, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  v5 = sub_1C04C1418();
  *(v0 + 344) = v5;
  sub_1C04F6490();
  if (*(v0 + 129) == 5)
  {
    (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 224), *(v0 + 320));
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *(v0 + 352) = qword_1EDE42878;

    swift_task_alloc();
    OUTLINED_FUNCTION_146();
    *(v0 + 360) = v6;
    *v6 = v7;
    v6[1] = sub_1C04C1B28;

    return sub_1C04D0E9C();
  }

  else
  {
    *(v5 + qword_1EDE44718) = 34;
    sub_1C0483574();
    if (qword_1EBE0C9E8 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_1EBE0C9E8);
    }

    v9 = sub_1C04F6400();
    __swift_project_value_buffer(v9, qword_1EBE0D300);

    v10 = sub_1C04F63E0();
    v11 = sub_1C04F6A20();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_20_2();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      sub_1C04F6490();
      *(v0 + 131) = *(v0 + 130);
      v14 = sub_1C04F6790();
      v16 = sub_1C047D76C(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1C0479000, v10, v11, "Camera Visual Search is disabled: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_6_5();
    }

    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();

    OUTLINED_FUNCTION_15_2();

    OUTLINED_FUNCTION_150();

    return v18();
  }
}

uint64_t sub_1C04C1B28()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v3 + 368) = v0;

  if (v0)
  {
    v6 = sub_1C04C24A0;
  }

  else
  {

    v6 = sub_1C04C1C34;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

void sub_1C04C1C34(uint64_t a1)
{
  v3 = *(v1 + 288);
  v2 = *(v1 + 296);
  v5 = *(v1 + 272);
  v4 = *(v1 + 280);
  sub_1C04F5E40();
  sub_1C0482664(31, v2, v5);
  v6 = *(v3 + 8);
  v6(v2, v4);
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    sub_1C0482130(*(v1 + 272), &qword_1EBE0CC70, &qword_1C04F8CB0);
    if (qword_1EBE0C9E8 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_1EBE0C9E8);
    }

    v7 = sub_1C04F6400();
    __swift_project_value_buffer(v7, qword_1EBE0D300);
    v8 = sub_1C04F63E0();
    v9 = sub_1C04F6A20();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C0479000, v8, v9, "unable to create unified query context", v10, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v11 = *(v1 + 312);
    v12 = *(v1 + 280);

    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_5_6(v13, v14);
    v6(v11, v12);
    *(v1 + 184) = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    if (swift_dynamicCast() && *(v1 + 132) == 9)
    {
      v17 = *(v1 + 336);
      v16 = *(v1 + 344);
      v18 = *(v1 + 320);
      v19 = *(v1 + 328);

      *(v16 + qword_1EDE44718) = 49;
      sub_1C0483574();
      OUTLINED_FUNCTION_142();
      v20 = swift_allocError();
      OUTLINED_FUNCTION_5_6(v20, v21);

      (*(v19 + 8))(v17, v18);
    }

    else
    {

      if (qword_1EBE0C9E8 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_1EBE0C9E8);
      }

      __swift_project_value_buffer(v7, qword_1EBE0D300);
      v33 = v9;
      v34 = sub_1C04F63E0();
      v35 = sub_1C04F6A20();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_20_2();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v9;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        OUTLINED_FUNCTION_67();
        _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
        sub_1C0482130(v37, &qword_1EBE0CE38, &unk_1C04FB970);
        OUTLINED_FUNCTION_6_5();
        OUTLINED_FUNCTION_10_0();
      }

      v46 = *(v1 + 336);
      v45 = *(v1 + 344);
      v47 = *(v1 + 320);
      v48 = *(v1 + 328);

      *(v45 + qword_1EDE44718) = 52;
      sub_1C0483574();
      swift_willThrow();

      (*(v48 + 8))(v46, v47);
    }

    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  v23 = *(v1 + 304);
  v22 = *(v1 + 312);
  v25 = *(v1 + 288);
  v24 = *(v1 + 296);
  v26 = *(v1 + 280);
  (*(v25 + 32))(v23, *(v1 + 272), v26);
  (*(v25 + 16))(v24, v23, v26);
  sub_1C04F5E50();
  v6(v23, v26);
  v6(v22, v26);
  *(v1 + 376) = sub_1C047ACAC();
  if (qword_1EBE0C9F8 != -1)
  {
    swift_once();
  }

  v28 = xmmword_1EBE0D328;
  v27 = *&qword_1EBE0D338;
  *(v1 + 16) = xmmword_1EBE0D318;
  *(v1 + 32) = v28;
  *(v1 + 48) = v27;
  *(v1 + 384) = sub_1C04B7354();
  *(v1 + 80) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 96) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v1 + 392) = v29;
  *v29 = v30;
  v29[1] = sub_1C04C2194;
  OUTLINED_FUNCTION_13_3();

  __asm { BR              X6 }
}

uint64_t sub_1C04C2194()
{
  v2 = *v1;
  OUTLINED_FUNCTION_49();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 400) = v0;

  sub_1C0482130(v2 + 64, &qword_1EBE0CE40, &qword_1C04F8900);

  if (v0)
  {
    v4 = sub_1C04C2740;
  }

  else
  {
    v4 = sub_1C04C2300;
  }

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C04C2300()
{
  v1 = v0[43];
  (*(v0[32] + 32))(v0[27], v0[33], v0[31]);
  *(v1 + qword_1EDE44718) = 2;
  sub_1C0483574();
  if (qword_1EBE0C9E8 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_1EBE0C9E8);
  }

  v2 = sub_1C04F6400();
  __swift_project_value_buffer(v2, qword_1EBE0D300);
  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A40();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
  }

  (*(v0[41] + 8))(v0[42], v0[40]);

  OUTLINED_FUNCTION_150();

  return v10();
}

uint64_t sub_1C04C24A0()
{

  v1 = *(v0 + 368);
  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 132) == 9;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v22 = *(v0 + 336);
    v21 = *(v0 + 344);
    v23 = *(v0 + 320);
    v24 = *(v0 + 328);

    *(v21 + qword_1EDE44718) = 49;
    sub_1C0483574();
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_5_6(v25, v26);

    (*(v24 + 8))(v22, v23);
  }

  else
  {

    if (qword_1EBE0C9E8 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_1EBE0C9E8);
    }

    v4 = sub_1C04F6400();
    __swift_project_value_buffer(v4, qword_1EBE0D300);
    v5 = v1;
    v6 = sub_1C04F63E0();
    v7 = sub_1C04F6A20();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_20_2();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      OUTLINED_FUNCTION_67();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      sub_1C0482130(v9, &qword_1EBE0CE38, &unk_1C04FB970);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_10_0();
    }

    v18 = *(v0 + 336);
    v17 = *(v0 + 344);
    v19 = *(v0 + 320);
    v20 = *(v0 + 328);

    *(v17 + qword_1EDE44718) = 52;
    sub_1C0483574();
    swift_willThrow();

    (*(v20 + 8))(v18, v19);
  }

  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_150();

  return v27();
}

void sub_1C04C2740()
{
  v1 = *(v0 + 400);
  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 400);
  if (v3)
  {
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);

    v9 = OUTLINED_FUNCTION_159();
    sub_1C04B915C(v9, v10, v11, v12, v5);
    v13 = OUTLINED_FUNCTION_159();
    sub_1C0482080(v13, v14, v15, v16);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();

    (*(v8 + 8))(v6, v7);
    v18 = *(v0 + 192);
  }

  else
  {

    *(v0 + 200) = v4;
    v19 = v4;
    if (!swift_dynamicCast())
    {

      if (qword_1EBE0C9E8 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_1EBE0C9E8);
      }

      v28 = *(v0 + 400);
      v29 = sub_1C04F6400();
      __swift_project_value_buffer(v29, qword_1EBE0D300);
      v30 = v28;
      v31 = sub_1C04F63E0();
      v32 = sub_1C04F6A20();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 400);
        v34 = OUTLINED_FUNCTION_20_2();
        v35 = swift_slowAlloc();
        v45 = v35;
        *v34 = 136315138;
        *(v0 + 208) = v33;
        v36 = v33;
        v37 = sub_1C04F6790();
        v39 = sub_1C047D76C(v37, v38, &v45);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1C0479000, v31, v32, "search failure: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_6_5();
      }

      v40 = *(v0 + 336);
      v41 = *(v0 + 320);
      v42 = *(v0 + 328);
      *(*(v0 + 344) + qword_1EDE44718) = 46;
      sub_1C0483574();
      swift_willThrow();

      (*(v42 + 8))(v40, v41);
LABEL_11:
      OUTLINED_FUNCTION_15_2();

      OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_13_3();

      __asm { BRAA            X1, X16 }
    }

    v21 = *(v0 + 336);
    v20 = *(v0 + 344);
    v22 = *(v0 + 320);
    v23 = *(v0 + 328);

    v24 = *(v0 + 160);
    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
    sub_1C04B93C4(v24, v25, v26, v20);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v27 = 5;
    swift_willThrow();
    sub_1C0482070(v24, v25, v26);

    (*(v23 + 8))(v21, v22);
    v18 = *(v0 + 200);
  }

  goto LABEL_11;
}

uint64_t sub_1C04C2AF4()
{
  OUTLINED_FUNCTION_144();
  if (qword_1EBE0C9E8 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_1EBE0C9E8);
  }

  v1 = sub_1C04F6400();
  __swift_project_value_buffer(v1, qword_1EBE0D300);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1C04C2BCC;
  OUTLINED_FUNCTION_142();

  return sub_1C04B832C(v3, v4, v5, v6);
}

uint64_t sub_1C04C2BCC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v2 = *v1;
  OUTLINED_FUNCTION_49();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_150();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C04C2CEC);
  }
}

uint64_t sub_1C04C2CEC()
{
  v1 = sub_1C04F5DD0();
  v2 = sub_1C04B7294();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C04F6740();
    v5 = [v3 valueForKey:v4 shouldConsiderOverrides:1];
    swift_unknownObjectRelease();

    if (v5)
    {
      sub_1C04F6BB0();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    *(v0 + 16) = v10;
    *(v0 + 32) = v11;
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_1C04820C0(v0 + 16, v0 + 48);
  if (*(v0 + 72))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D350, &qword_1C04F93A0);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 80);

      v7 = sub_1C04C2FD8(v6, v1);

      goto LABEL_13;
    }
  }

  else
  {

    sub_1C0482130(v0 + 48, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D348, &qword_1C04F9398);
  v7 = sub_1C04F66F0();
LABEL_13:
  sub_1C0482130(v0 + 16, &qword_1EBE0CB20, &unk_1C04F8B20);
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t PegasusProxyForCameraVisualSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04C2F2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C048A184;

  return sub_1C04C15A8();
}

void *sub_1C04C2FD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D358, &qword_1C04F9448);
  result = sub_1C04F6D10();
  v4 = result;
  v5 = 0;
  v27 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v26 = result + 8;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v27 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v27 + 56) + 8 * v16);
      v29 = MEMORY[0x1E69E7CD0];

      sub_1C04C0E30(v20, &v29, a2);

      v21 = v29;
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (v4[6] + 16 * v16);
      *v22 = v18;
      v22[1] = v19;
      *(v4[7] + 8 * v16) = v21;
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {

        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of CameraVisualSearchResponseFetcher.cameraVisualSearchResponse(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 8) + **(a4 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v4 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C04A1810;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PegasusProxyForCameraVisualSearch.cameraVisualSearchResponse(for:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(*v2 + 560) + **(*v2 + 560));
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1C048A184;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PegasusProxyForCameraVisualSearch.featureSupportedDomains()()
{
  v4 = (*(*v0 + 568) + **(*v0 + 568));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C04C3544;

  return v4();
}

uint64_t sub_1C04C3544()
{
  OUTLINED_FUNCTION_144();
  v2 = v1;
  OUTLINED_FUNCTION_162();
  v3 = *v0;
  OUTLINED_FUNCTION_49();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 9;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_14_2()
{
}

uint64_t OUTLINED_FUNCTION_15_2()
{
}

uint64_t sub_1C04C36D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C04C36F4);
}

uint64_t sub_1C04C36F4()
{
  OUTLINED_FUNCTION_144();
  v1 = sub_1C04C4280();
  v0[6] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v0[7] = v2;
  *v2 = v3;
  v2[1] = sub_1C04C3798;
  v4 = v0[4];
  v5 = v0[2];
  v6 = v0[3];

  return sub_1C04C4398(v5, v6, v1, v4);
}

uint64_t sub_1C04C3798()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_150();

    return v8();
  }
}

uint64_t sub_1C04C38B8()
{
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_150();

  return v0();
}

void *sub_1C04C3914()
{
  type metadata accessor for PegasusProxyForIntelligenceFlow(0);
  swift_allocObject();
  result = BaseSiriSearchProxy.init()();
  qword_1EDE41DF0 = result;
  return result;
}

uint64_t static PegasusProxyForIntelligenceFlow.shared.getter()
{
  if (qword_1EDE41DE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C04C39E4()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D360);
  __swift_project_value_buffer(v0, qword_1EBE0D360);
  return sub_1C04F63F0();
}

uint64_t sub_1C04C3A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04F5CB0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69BD198], v6, v8);
  sub_1C0483EBC(a1, a2, a3, v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C04C3B8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_171();
  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C04C3BBC()
{
  if (qword_1EBE0CA00 != -1)
  {
    swift_once();
  }

  v1 = sub_1C04F6400();
  v2 = __swift_project_value_buffer(v1, qword_1EBE0D360);
  OUTLINED_FUNCTION_18_2(&qword_1C04F9458);
  v9 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = sub_1C04C3CAC;
  v6 = v0[3];
  v7 = v0[2];

  return v9(v7, v6, v2);
}

uint64_t sub_1C04C3CAC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v1 = *v0;
  OUTLINED_FUNCTION_49();
  *v2 = v1;

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t PegasusProxyForIntelligenceFlow.deinit()
{
  v1 = BasePegasusProxy.deinit();
  OUTLINED_FUNCTION_8(v1);

  return v0;
}

uint64_t PegasusProxyForIntelligenceFlow.__deallocating_deinit()
{
  v1 = BasePegasusProxy.deinit();
  OUTLINED_FUNCTION_8(v1);

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t sub_1C04C3E9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C048A184;

  return sub_1C04C3B8C(a1, a2);
}

uint64_t dispatch thunk of IntelligenceFlowPegasusProxy.send(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 40) + **(a4 + 40));
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v4 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C048A184;

  return v12(a1, a2, a3, a4);
}

uint64_t type metadata accessor for PegasusProxyForIntelligenceFlow(uint64_t a1)
{
  result = qword_1EDE41DD8;
  if (!qword_1EDE41DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PegasusProxyForIntelligenceFlow.send(request:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v9 = (*(v5 + 696) + **(v5 + 696));
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v2 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1C04A1810;

  return v9(a1, a2);
}

uint64_t sub_1C04C4280()
{
  v1 = sub_1C04F6200();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[2];
  v6 = (*(*v0 + 184))(v2);
  (*(*v0 + 624))();

  sub_1C04F6220();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v5, v6, v4, 0, 1);
}

uint64_t sub_1C04C4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = a4;
  v5[38] = v4;
  v5[35] = a2;
  v5[36] = a3;
  v5[34] = a1;
  v5[39] = *v4;
  v6 = sub_1C04F6240();
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();
  v7 = sub_1C04F6260();
  v5[43] = v7;
  v5[44] = *(v7 - 8);
  v5[45] = swift_task_alloc();
  v8 = sub_1C04F5700();
  v5[46] = v8;
  v5[47] = *(v8 - 8);
  v5[48] = swift_task_alloc();
  v9 = sub_1C04F5750();
  v5[49] = v9;
  v5[50] = *(v9 - 8);
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v10 = sub_1C04F54F0();
  v5[53] = v10;
  v5[54] = *(v10 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04C466C);
}

void sub_1C04C466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v28;
  a24 = v29;
  OUTLINED_FUNCTION_25_3();
  a22 = v24;
  OUTLINED_FUNCTION_4();
  if (((*(v30 + 632))() & 1) == 0)
  {
LABEL_6:
    v37 = *(v24 + 472);
    v38 = *(v24 + 424);
    OUTLINED_FUNCTION_4();
    (*(v39 + 656))();
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
    {
      sub_1C0482130(*(v24 + 472), &qword_1EBE0CC70, &qword_1C04F8CB0);
      v40 = OUTLINED_FUNCTION_7_9();
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
      v42 = OUTLINED_FUNCTION_24_2();
      v43(v42);
      sub_1C04B7354();
      (*(v25 + 104))(v26, *MEMORY[0x1E69BDB08], v27);
      sub_1C04F6270();
      sub_1C04F6250();
      v44 = OUTLINED_FUNCTION_21_3();
      v45(v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_3(isUniquelyReferenced_nonNull_native);
      *(v24 + 544) = a12;
      v47 = sub_1C047ACAC();
      OUTLINED_FUNCTION_6_6(v47);
      OUTLINED_FUNCTION_18_2(&qword_1C04F8608);
      v76 = v48;
      swift_task_alloc();
      OUTLINED_FUNCTION_146();
      *(v24 + 560) = v49;
      *v49 = v50;
      OUTLINED_FUNCTION_2_11(v49);
      OUTLINED_FUNCTION_5_7();

      v57(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, v76, a12, a13, a14, a15, a16);
    }

    else
    {
      v59 = *(v24 + 472);
      v60 = *(v24 + 456);
      v61 = *(v24 + 424);
      v62 = *(v24 + 432);
      v63 = *(v62 + 32);
      *(v24 + 504) = v63;
      *(v24 + 512) = (v62 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v63(v60, v59, v61);
      if (qword_1EDE42870 != -1)
      {
        swift_once();
      }

      v64 = *(v24 + 304);
      v65 = swift_beginAccess();
      *(v24 + 520) = qword_1EDE42878;
      (*(*v64 + 624))(v65);

      swift_task_alloc();
      OUTLINED_FUNCTION_146();
      *(v24 + 528) = v66;
      *v66 = v67;
      v66[1] = sub_1C04C4E74;
      OUTLINED_FUNCTION_5_7();

      sub_1C04D0E9C();
    }

    return;
  }

  v25 = *(v24 + 304);

  v31 = sub_1C04F63E0();
  v32 = sub_1C04F6A10();

  if (os_log_type_enabled(v31, v32))
  {
    v25 = OUTLINED_FUNCTION_20_2();
    v33 = OUTLINED_FUNCTION_26_1();
    a12 = v33;
    *v25 = 136315138;
    sub_1C04F6490();
    *(v24 + 180) = *(v24 + 179);
    v34 = sub_1C04F6790();
    v26 = sub_1C047D76C(v34, v35, &a12);

    *(v25 + 4) = v26;
    _os_log_impl(&dword_1C0479000, v31, v32, "Processing enabledState status: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  sub_1C04F6490();
  v36 = *(v24 + 178);
  if (v36 != 4)
  {
    if (v36 != 5)
    {
      sub_1C04C5D8C(v36, *(v24 + 288));
      OUTLINED_FUNCTION_5_7();
      return;
    }

    goto LABEL_6;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v24 + 488) = v69;
  *v69 = v70;
  v69[1] = sub_1C04C4BCC;
  OUTLINED_FUNCTION_5_7();

  sub_1C04C5F04(v71, v72, v73, v74);
}

uint64_t sub_1C04C4BCC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 496) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04C4CC8()
{
  OUTLINED_FUNCTION_13_4();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C04C4D9C()
{
  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C04C4E74()
{
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 536) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C04C4FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_25_3();
  v18 = *(v16 + 456);
  v17 = *(v16 + 464);
  v19 = *(v16 + 424);
  (*(v16 + 504))(*(v16 + 448), *(v16 + 440), v19);
  OUTLINED_FUNCTION_4();
  v21 = (*(v20 + 184))();
  sub_1C0482664(v21, v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v19) == 1)
  {
    v22 = *(v16 + 288);
    sub_1C0482130(*(v16 + 464), &qword_1EBE0CC70, &qword_1C04F8CB0);
    *(v22 + qword_1EDE44718) = 50;
    sub_1C0483574();
    v23 = sub_1C04F63E0();
    v24 = sub_1C04F6A20();
    if (os_log_type_enabled(v23, v24))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_13();
    }

    v30 = *(v16 + 456);
    v31 = *(v16 + 424);
    v32 = *(v16 + 432);

    v33 = sub_1C049FC7C();
    v74 = OUTLINED_FUNCTION_45(&type metadata for ProxyError, v33);
    *v34 = 9;
    swift_willThrow();
    v35 = *(v32 + 8);
    v36 = OUTLINED_FUNCTION_11();
    v35(v36);
    (v35)(v30, v31);
    OUTLINED_FUNCTION_0_8();
    v73 = v37;

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_5_7();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v73, v74, a12, a13, a14, a15, a16);
  }

  else
  {
    v47 = *(v16 + 504);
    v48 = *(v16 + 480);
    v50 = *(v16 + 456);
    v49 = *(v16 + 464);
    v51 = *(v16 + 424);
    v52 = *(v16 + 432);
    v53 = *(v52 + 8);
    v53(*(v16 + 448), v51);
    v53(v50, v51);
    v47(v48, v49, v51);
    v54 = OUTLINED_FUNCTION_7_9();
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
    v56 = OUTLINED_FUNCTION_24_2();
    v57(v56);
    sub_1C04B7354();
    (*(v51 + 104))(v47, *MEMORY[0x1E69BDB08], v52 + 8);
    sub_1C04F6270();
    sub_1C04F6250();
    v58 = OUTLINED_FUNCTION_21_3();
    v59(v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_3(isUniquelyReferenced_nonNull_native);
    *(v16 + 544) = a12;
    v61 = sub_1C047ACAC();
    OUTLINED_FUNCTION_6_6(v61);
    OUTLINED_FUNCTION_18_2(&qword_1C04F8608);
    v75 = v62;
    swift_task_alloc();
    OUTLINED_FUNCTION_146();
    *(v16 + 560) = v63;
    *v63 = v64;
    OUTLINED_FUNCTION_2_11(v63);
    OUTLINED_FUNCTION_5_7();

    return v71(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, v75, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C04C5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_25_3();
  a22 = v24;
  v27 = v24[67];
  *(v24[36] + qword_1EDE44718) = 49;
  sub_1C0483574();
  v28 = v27;
  v29 = sub_1C04F63E0();
  v30 = sub_1C04F6A20();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v24[67];
    v32 = OUTLINED_FUNCTION_20_2();
    v33 = OUTLINED_FUNCTION_26_1();
    a12 = v33;
    *v32 = 136315138;
    v24[33] = v31;
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v35 = sub_1C04F6790();
    v37 = sub_1C047D76C(v35, v36, &a12);

    *(v32 + 4) = v37;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13();
  }

  v43 = v24[67];
  v44 = sub_1C049FC7C();
  v59 = OUTLINED_FUNCTION_45(&type metadata for ProxyError, v44);
  *v45 = 8;
  swift_willThrow();

  v46 = OUTLINED_FUNCTION_11();
  v47(v46);
  OUTLINED_FUNCTION_0_8();
  v58 = v48;

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_5_7();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, v59, a12, a13, a14, a15, a16);
}

uint64_t sub_1C04C54FC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_49();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 568) = v0;

  sub_1C0482130(v2 + 112, &qword_1EBE0CE40, &qword_1C04F8900);

  sub_1C04C6930(v2 + 16);
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1C04C566C()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[36];
  (*(v0[47] + 8))(v0[48], v0[46]);
  v8 = *(v4 + 32);
  v8(v2, v1, v3);
  if ((*(*v5 + 664))(v2, v6))
  {
    *(v7 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v9 = sub_1C04F63E0();
    v10 = sub_1C04F6A40();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_13();
    }

    v16 = v0[60];
    v17 = v0[52];
    v18 = v0[49];
    v19 = v0[34];

    sub_1C0482130(v16, &qword_1EBE0CC70, &qword_1C04F8CB0);
    v8(v19, v17, v18);
    OUTLINED_FUNCTION_13_4();

    OUTLINED_FUNCTION_150();
  }

  else
  {
    v21 = v0[60];
    *(v7 + qword_1EDE44718) = 19;
    sub_1C0483574();
    v22 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v22);
    *v23 = 6;
    swift_willThrow();
    v24 = OUTLINED_FUNCTION_11();
    v25(v24);
    sub_1C0482130(v21, &qword_1EBE0CC70, &qword_1C04F8CB0);
    OUTLINED_FUNCTION_0_8();

    OUTLINED_FUNCTION_150();
  }

  return v20();
}

uint64_t sub_1C04C5958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_25_3();
  a22 = v24;
  v27 = *(v24 + 568);
  (*(*(v24 + 376) + 8))(*(v24 + 384), *(v24 + 368));
  *(v24 + 232) = v27;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v30 = swift_dynamicCast();
  v31 = *(v24 + 568);
  if (v30)
  {
    OUTLINED_FUNCTION_16_2();

    v32 = *(v24 + 168);
    v33 = *(v24 + 176);
    v34 = OUTLINED_FUNCTION_11();
    sub_1C04B915C(v34, v35, v32, v33, v29);
    v36 = OUTLINED_FUNCTION_11();
    sub_1C0482080(v36, v37, v32, v33);
    v38 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v38);
    OUTLINED_FUNCTION_22_3(v39, 7);
    sub_1C0482130(v24 + 232, &qword_1EBE0CC70, &qword_1C04F8CB0);
    v40 = *(v24 + 232);
LABEL_7:

    goto LABEL_8;
  }

  *(v24 + 240) = v31;
  v41 = v31;
  v42 = swift_dynamicCast();
  v43 = *(v24 + 568);
  if (v42)
  {
    OUTLINED_FUNCTION_16_2();

    v44 = *(v24 + 224);
    v45 = OUTLINED_FUNCTION_11();
    sub_1C04B93C4(v45, v46, v44, v29);
    v47 = sub_1C049FC7C();
    OUTLINED_FUNCTION_45(&type metadata for ProxyError, v47);
    OUTLINED_FUNCTION_22_3(v48, 5);
    v49 = OUTLINED_FUNCTION_11();
    sub_1C0482070(v49, v50, v44);
    sub_1C0482130(v24 + 232, &qword_1EBE0CC70, &qword_1C04F8CB0);
    v40 = *(v24 + 240);
    goto LABEL_7;
  }

  *(v24 + 248) = v43;
  v51 = v43;
  v52 = swift_dynamicCast();
  v53 = *(v24 + 568);
  if (v52)
  {
    OUTLINED_FUNCTION_16_2();

    v54 = *(v24 + 177);
    v55 = sub_1C049FC7C();
    v56 = OUTLINED_FUNCTION_45(&type metadata for ProxyError, v55);
    *v57 = v54;
    sub_1C04B9574(v56, v29);

    v58 = OUTLINED_FUNCTION_45(&type metadata for ProxyError, v55);
    *v59 = v54;
    a11 = v58;
    swift_willThrow();
    sub_1C0482130(v24 + 232, &qword_1EBE0CC70, &qword_1C04F8CB0);
    v40 = *(v24 + 248);
    goto LABEL_7;
  }

  v70 = *(v24 + 288);

  *(v70 + qword_1EDE44718) = 51;
  sub_1C0483574();
  v71 = v53;
  v72 = sub_1C04F63E0();
  v73 = sub_1C04F6A20();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = *(v24 + 568);
    v75 = OUTLINED_FUNCTION_20_2();
    v76 = OUTLINED_FUNCTION_26_1();
    a12 = v76;
    *v75 = 136315138;
    *(v24 + 256) = v74;
    v77 = v74;
    v78 = sub_1C04F6790();
    v80 = sub_1C047D76C(v78, v79, &a12);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_1C0479000, v72, v73, "search failure: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v81 = *(v24 + 568);
  v82 = *(v24 + 480);
  v83 = sub_1C049FC7C();
  OUTLINED_FUNCTION_45(&type metadata for ProxyError, v83);
  OUTLINED_FUNCTION_22_3(v84, 1);

  sub_1C0482130(v82, &qword_1EBE0CC70, &qword_1C04F8CB0);
LABEL_8:
  OUTLINED_FUNCTION_0_8();
  v85 = v60;

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_5_7();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, v85, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C04C5D8C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_1C04F63E0();
  v5 = sub_1C04F6A20();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = sub_1C04F6790();
    v10 = sub_1C047D76C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C0479000, v4, v5, "Pegasus for Assistant is disabled: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1C68DCEB0](v7, -1, -1);
    MEMORY[0x1C68DCEB0](v6, -1, -1);
  }

  if (v3 == 1)
  {
    v11 = 34;
  }

  else
  {
    v11 = 47;
  }

  if (v3 == 1)
  {
    v12 = 3;
  }

  else
  {
    v12 = 4;
  }

  *(a2 + qword_1EDE44718) = v11;
  sub_1C0483574();
  sub_1C049FC7C();
  swift_allocError();
  *v13 = v12;
  return swift_willThrow();
}

uint64_t sub_1C04C5F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D378, &unk_1C04F9530);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D038, &unk_1C04F8C60);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D040, &qword_1C04F9540);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D380, &unk_1C04F9548);
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04C6110);
}

uint64_t sub_1C04C6110()
{
  v1 = v0[16];
  v2 = v0[13];
  v11 = v0[14];
  v12 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v10 = v0[10];
  v14 = v0[9];
  v13 = v0[8];
  v0[2] = BasePegasusProxy.EnabledState.statusPublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1E0, &qword_1C04F9180);
  sub_1C047C1A4(&qword_1EDE41638, &qword_1EBE0D1E0, &qword_1C04F9180, MEMORY[0x1E695BED8]);
  sub_1C04F6570();

  sub_1C047C1A4(&qword_1EDE41650, &qword_1EBE0D038, &unk_1C04F8C60, MEMORY[0x1E695BD78]);
  sub_1C04F6510();
  (*(v3 + 8))(v2, v4);
  v5 = sub_1C047C1A4(&qword_1EDE408F8, &qword_1EBE0D040, &qword_1C04F9540, MEMORY[0x1E695BDB8]);
  MEMORY[0x1C68DBE40](v11, v5);
  (*(v12 + 8))(v1, v11);
  sub_1C04F6440();
  (*(v14 + 8))(v10, v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v0[20] = v6;
  *v6 = v7;
  v6[1] = sub_1C04C635C;
  v8 = v0[17];

  return MEMORY[0x1EEDB5C50](v0 + 23, v8);
}

uint64_t sub_1C04C635C()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v1 = *v0;
  OUTLINED_FUNCTION_49();
  *v2 = v1;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1C04C6444(uint64_t a1)
{
  v20 = v1;
  if (*(v1 + 184) == 6)
  {
    v2 = 4;
  }

  else
  {
    v2 = *(v1 + 184);
  }

  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_20_2();
    v6 = OUTLINED_FUNCTION_26_1();
    v19 = v6;
    *v5 = 136315138;
    *(v1 + 185) = v2;
    v7 = sub_1C04F6790();
    v9 = sub_1C047D76C(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C0479000, v3, v4, "Retrying with enabledState status: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13();
  }

  if (v2 == 4)
  {
    v17 = *(v1 + 40);
    v18 = 0;
    return sub_1C04C5D8C(v18, v17);
  }

  if (v2 != 5)
  {
    v17 = *(v1 + 40);
    v18 = v2;
    return sub_1C04C5D8C(v18, v17);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v1 + 168) = v10;
  *v10 = v11;
  v10[1] = sub_1C04C6688;
  v12 = *(v1 + 48);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = *(v1 + 24);

  return sub_1C04C4398(v15, v13, v14, v12);
}

uint64_t sub_1C04C6688()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1C04C6784()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  OUTLINED_FUNCTION_150();

  return v1();
}

uint64_t sub_1C04C6828()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  OUTLINED_FUNCTION_150();

  return v1();
}

uint64_t OUTLINED_FUNCTION_22_3@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t sub_1C04C6A94()
{
  result = sub_1C04F6740();
  qword_1EDE44DA8 = result;
  return result;
}

uint64_t sub_1C04C6ACC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D388);
  __swift_project_value_buffer(v0, qword_1EBE0D388);
  return sub_1C04F63F0();
}

uint64_t sub_1C04C6B54()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EDE40D00 = v9;
  unk_1EDE40D08 = v11;
  return result;
}

void *PegasusProxyForSafariAssistant.init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  *(v3 + 128) = 21;
  if (qword_1EDE40CF8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EDE40CF8);
  }

  v7 = qword_1EDE40D00;
  v8 = unk_1EDE40D08;

  v9 = OUTLINED_FUNCTION_39_0();
  sub_1C04A12A0(v9, v10);
  v11 = a3;
  v12 = sub_1C04B8AAC(v7, v8, 0, a1, a2, a3);

  v13 = sub_1C04B7294();
  if (!v13)
  {

    v25 = OUTLINED_FUNCTION_39_0();
    sub_1C047E0BC(v25, v26, v27, v28, v29, v30, v31, v32, v42, v44, v45, v47, v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
    v48 = 0u;
    v49 = 0u;
LABEL_13:
    sub_1C0482130(&v48, &qword_1EBE0CB20, &unk_1C04F8B20);
    return v12;
  }

  v14 = v13;
  v15 = sub_1C04F6740();
  v16 = [v14 valueForKey_];

  swift_unknownObjectRelease();
  if (v16)
  {
    sub_1C04F6BB0();

    swift_unknownObjectRelease();
    v17 = OUTLINED_FUNCTION_39_0();
    sub_1C047E0BC(v17, v18, v19, v20, v21, v22, v23, v24, v42, v44, v45, v47, v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
  }

  else
  {

    v33 = OUTLINED_FUNCTION_39_0();
    sub_1C047E0BC(v33, v34, v35, v36, v37, v38, v39, v40, v42, v44, v45, v47, v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
    v43 = 0u;
    v46 = 0u;
  }

  v48 = v43;
  v49 = v46;
  if (!*(&v46 + 1))
  {

    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v12[16] = v43;
  }

  return v12;
}

void sub_1C04C6F0C()
{
  qword_1EDE40D58 = 0xD000000000000023;
  unk_1EDE40D60 = 0x80000001C04FD9E0;
  qword_1EDE40D68 = 0xD000000000000017;
  unk_1EDE40D70 = 0x80000001C04FDA50;
  qword_1EDE40D78 = 0xD00000000000001BLL;
  unk_1EDE40D80 = 0x80000001C04FDA70;
}

uint64_t sub_1C04C6F64@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  if ((sub_1C04C7018(a2, a3) & 0x100000000) != 0)
  {
    v6 = sub_1C04F5F50();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }

  else
  {
    sub_1C04F5F40();
    sub_1C04F6D60();
    sub_1C04F5F30();
    v4 = sub_1C04F5F50();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  }
}

unint64_t sub_1C04C7018(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C04C0918(*(v2 + 128), a1, a2);
  if ((v5 & 0x100000000) != 0)
  {
    if (qword_1EBE0CA10 != -1)
    {
      swift_once();
    }

    v6 = sub_1C04F6400();
    __swift_project_value_buffer(v6, qword_1EBE0D388);

    v7 = sub_1C04F63E0();
    v8 = sub_1C04F6A20();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136642819;
      *(v9 + 4) = sub_1C047D76C(a1, a2, &v12);
      _os_log_impl(&dword_1C0479000, v7, v8, "Could not create hash for str: (%{sensitive}s)", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1C68DCEB0](v10, -1, -1);
      MEMORY[0x1C68DCEB0](v9, -1, -1);
    }
  }

  return v5 | ((HIDWORD(v5) & 1) << 32);
}

uint64_t sub_1C04C718C()
{
  OUTLINED_FUNCTION_144();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v1[16] = *v0;
  v4 = sub_1C04F5BC0();
  v1[17] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_287();
  v6 = sub_1C04F5FA0();
  v1[20] = v6;
  OUTLINED_FUNCTION_66(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_287();
  sub_1C04F6200();
  v1[23] = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1C04C72D0()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_24_3();
  sub_1C04F6220();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v1[24] = OUTLINED_FUNCTION_22_4(v0, 24);
  if (qword_1EDE40CF8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EDE40CF8);
  }

  sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_10(isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  v1[25] = sub_1C047ACAC();
  if (qword_1EDE40D50 != -1)
  {
    swift_once();
  }

  v3 = OUTLINED_FUNCTION_23_2(&qword_1EDE40D58);
  OUTLINED_FUNCTION_7_10(v3);
  v4 = OUTLINED_FUNCTION_21_4();
  v1[27] = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_1_7(v4);

  return v6(v5);
}

uint64_t sub_1C04C7448()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v3 + 224) = v0;

  sub_1C0482130(v3 + 64, &qword_1EBE0CE40, &qword_1C04F8900);

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C04C75A0()
{
  OUTLINED_FUNCTION_6_7();
  sub_1C04F5F90();
  sub_1C04BBF80(v2, v0);

  (*(v1 + 8))(v2, v3);
  v4 = OUTLINED_FUNCTION_15_3();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D3A0, &qword_1C04F9568);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_4();

  OUTLINED_FUNCTION_150();

  return v6();
}

uint64_t sub_1C04C7694()
{
  OUTLINED_FUNCTION_172();
  v1 = v0[28];
  v2 = v0[13];
  *(v0[24] + qword_1EDE44718) = 26;
  sub_1C0483574();

  *v2 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D3A0, &qword_1C04F9568);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_4();

  OUTLINED_FUNCTION_150();

  return v3();
}

void sub_1C04C775C()
{
  qword_1EDE40D20 = 0xD000000000000023;
  *algn_1EDE40D28 = 0x80000001C04FD9E0;
  qword_1EDE40D30 = 0xD000000000000018;
  unk_1EDE40D38 = 0x80000001C04FDA10;
  qword_1EDE40D40 = 0xD00000000000001CLL;
  unk_1EDE40D48 = 0x80000001C04FDA30;
}

uint64_t sub_1C04C77B4@<X0>(uint64_t a3@<X8>)
{
  sub_1C04F5FC0();

  sub_1C04F5F30();
  v4 = sub_1C04F5FD0();

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v4);
}

uint64_t sub_1C04C7828()
{
  OUTLINED_FUNCTION_144();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v1[16] = *v0;
  v4 = sub_1C04F5BC0();
  v1[17] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_287();
  v6 = sub_1C04F6000();
  v1[20] = v6;
  OUTLINED_FUNCTION_66(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_287();
  sub_1C04F6200();
  v1[23] = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1C04C796C()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_24_3();
  sub_1C04F6220();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v1[24] = OUTLINED_FUNCTION_22_4(v0, 25);
  if (qword_1EDE40CF8 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1EDE40CF8);
  }

  sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_10(isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  v1[25] = sub_1C047ACAC();
  if (qword_1EDE40D18 != -1)
  {
    swift_once();
  }

  v3 = OUTLINED_FUNCTION_23_2(&qword_1EDE40D20);
  OUTLINED_FUNCTION_7_10(v3);
  v4 = OUTLINED_FUNCTION_21_4();
  v1[27] = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_1_7(v4);

  return v6(v5);
}

uint64_t sub_1C04C7AE4()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v3 + 224) = v0;

  sub_1C0482130(v3 + 64, &qword_1EBE0CE40, &qword_1C04F8900);

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C04C7C3C()
{
  OUTLINED_FUNCTION_6_7();
  sub_1C04F5F90();
  sub_1C04BBF80(v2, v0);

  (*(v1 + 8))(v2, v3);
  v4 = OUTLINED_FUNCTION_15_3();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D3A8, &qword_1C04F9578);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_4();

  OUTLINED_FUNCTION_150();

  return v6();
}

uint64_t sub_1C04C7D30()
{
  OUTLINED_FUNCTION_172();
  v1 = v0[28];
  v2 = v0[13];
  *(v0[24] + qword_1EDE44718) = 26;
  sub_1C0483574();

  *v2 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D3A8, &qword_1C04F9578);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_4();

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t PegasusProxyForSafariAssistant.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1C04C7E2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C048A184;

  return sub_1C04C718C();
}

uint64_t sub_1C04C7ED8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C04A1810;

  return sub_1C04C7828();
}

uint64_t dispatch thunk of SafariAssistantResponseFetcher.prefetch(searchRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_81(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_137(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SafariAssistantResponseFetcher.summarize(searchRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_81(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_137(v5);

  return v8(v7);
}

uint64_t dispatch thunk of PegasusProxyForSafariAssistant.prefetch(searchRequest:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_4(v1);

  return v4(v3);
}

uint64_t dispatch thunk of PegasusProxyForSafariAssistant.summarize(searchRequest:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_81(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_4(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_3_10(char a1)
{

  return sub_1C049FB48(v1, v2, 0x6567612D72657375, 0xEA0000000000746ELL, a1);
}

double OUTLINED_FUNCTION_7_10(uint64_t a1)
{
  *(v1 + 208) = a1;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2)
{

  return sub_1C0482EFC(a1, a2, v2, 0, 1);
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(_OWORD *a1@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v1[1] = *a1;
  v1[2] = v4;
  v1[3] = v3;

  return sub_1C04B7354();
}

id sub_1C04C85C8()
{
  v1 = [v0 response];

  return v1;
}

uint64_t sub_1C04C8600()
{
  OUTLINED_FUNCTION_4();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_4();

  return swift_unknownObjectRelease();
}

void *sub_1C04C8668()
{
  OUTLINED_FUNCTION_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_1C04C9124();
  }

  v2 = sub_1C04855B0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2();

  OUTLINED_FUNCTION_2();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C04C86F8()
{
  v0 = sub_1C04C8668();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C04C8764()
{
  v1 = v0;
  OUTLINED_FUNCTION_4();
  v3 = *(v0 + *(v2 + 128));
  v4 = sub_1C04F6A20();
  sub_1C04F6390("LEAKED NETWORK SPAN: {{{", 24, 2, &dword_1C0479000, v3, v4, MEMORY[0x1E69E7CC0]);
  sub_1C048573C();
  sub_1C04F6A20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v6 = OUTLINED_FUNCTION_7_1(v5);
  *(v6 + 16) = xmmword_1C04F7BB0;
  v7 = *(v1 + *(*v1 + 464) + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D420, &qword_1C04F96F8);
  v8 = sub_1C04F6790();
  v10 = v9;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C0483A94();
  *(v6 + 64) = v11;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_1C04F6390("Network task: %s", v119);

  sub_1C04F6A20();
  v146 = v5;
  v12 = OUTLINED_FUNCTION_7_1(v5);
  OUTLINED_FUNCTION_4_8(v12, v13, v14, v15, v16, v17, v18, v19, v20, v120, v129, v135, v141, v146, v152, v21);
  ObjectType = swift_getObjectType();
  v130 = v7;
  v22 = v7;
  v23 = *(v7 + 16);
  v23(ObjectType, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
  v24 = sub_1C04F6790();
  v12[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v12[4].n128_u64[0] = v11;
  v12[2].n128_u64[0] = v24;
  v12[2].n128_u64[1] = v25;
  v153 = v3;
  sub_1C04F6390("Response: %s", ObjectType);

  v136 = sub_1C04C8C24();
  if (v28)
  {
    sub_1C04F6A20();
    v29 = v147;
    v30 = OUTLINED_FUNCTION_7_1(v147);
    v40 = OUTLINED_FUNCTION_4_8(v30, v31, v32, v33, v34, v35, v36, v37, v38, v122, v130, v136, v11, v147, v153, v39);
    (v23)(v123, v131, v40);
    v41 = sub_1C04F6790();
    v42 = MEMORY[0x1E69E6158];
    v43 = v142;
    v30[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v30[4].n128_u64[0] = v142;
    v30[2].n128_u64[0] = v41;
    v30[2].n128_u64[1] = v44;
    sub_1C04F6390("Unsupported response: %s", v123);
    v45 = v42;
  }

  else
  {
    v46 = v26;
    v47 = v27;
    v48 = HIDWORD(v27);
    sub_1C04F6A20();
    v49 = v147;
    v50 = OUTLINED_FUNCTION_7_1(v147);
    OUTLINED_FUNCTION_4_8(v50, v51, v52, v53, v54, v55, v56, v57, v58, v122, v130, v136, v11, v147, v153, v59);
    v60 = MEMORY[0x1E69E65A8];
    v61[7] = v62;
    v61[8] = v60;
    v61[4] = v46;
    sub_1C04F6390("Status: %d", v125);

    sub_1C04F6A20();
    v63 = OUTLINED_FUNCTION_5_8();
    v64 = MEMORY[0x1E69E7668];
    OUTLINED_FUNCTION_4_8(v63, v65, v66, v67, v68, v69, v70, v71, v72, v126, v132, v138, v143, v149, v155, v73);
    v74 = MEMORY[0x1E69E76D0];
    *(v75 + 56) = v64;
    *(v75 + 64) = v74;
    *(v75 + 32) = v48;
    v29 = v49;
    OUTLINED_FUNCTION_1_8();
    sub_1C04F6390(v76);

    sub_1C04F6A20();
    v77 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_4_8(v77, v78, v79, v80, v81, v82, v83, v84, v85, v127, v133, v139, v144, v150, v156, v86);
    *(v87 + 56) = v64;
    *(v87 + 64) = v74;
    *(v87 + 32) = v47;
    OUTLINED_FUNCTION_1_8();
    sub_1C04F6390(v88);

    sub_1C04F6A20();
    v89 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_4_8(v89, v90, v91, v92, v93, v94, v95, v96, v97, v128, v134, v140, v145, v151, v157, v98);
    v99 = MEMORY[0x1E69E6438];
    v100[7] = v101;
    v100[8] = v99;
    v100[4] = v137;
    OUTLINED_FUNCTION_1_8();
    sub_1C04F6390(v102);
    v45 = MEMORY[0x1E69E6158];
    v43 = v142;
  }

  sub_1C04F6A20();
  v103 = OUTLINED_FUNCTION_7_1(v29);
  OUTLINED_FUNCTION_4_8(v103, v104, v105, v106, v107, v108, v109, v110, v111, v124, v131, v137, v142, v148, v154, v112);
  v113 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0DA00, &unk_1C04F9700);
  v114 = sub_1C04F6790();
  v103[3].n128_u64[1] = v45;
  v103[4].n128_u64[0] = v43;
  v103[2].n128_u64[0] = v114;
  v103[2].n128_u64[1] = v115;
  OUTLINED_FUNCTION_9_4();
  sub_1C04F6390(v116);

  sub_1C04F6A20();
  OUTLINED_FUNCTION_9_4();
  return sub_1C04F6390(v117);
}

uint64_t sub_1C04C8C24()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + *(v1 + 464) + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v5 = v4(ObjectType, v2);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

LABEL_7:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    v19 = OUTLINED_FUNCTION_7_1(v18);
    *(v19 + 16) = xmmword_1C04F7BB0;
    v58[0] = v4(ObjectType, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
    v20 = sub_1C04F6790();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C0483A94();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    OUTLINED_FUNCTION_9_4();
    sub_1C04866E0();

    sub_1C0485C84();
    *&result = 0.0;
    return result;
  }

  [v7 statusCode];
  if (!(*(v2 + 8))(ObjectType, v2))
  {

    *&result = 0.0;
    return result;
  }

  OUTLINED_FUNCTION_6_8();
  v59 = 0xD000000000000021;
  v60 = v8;
  v9 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v9, v10, v11, v12, v13);
  v14 = sub_1C04A0D28(v58);
  if (v61)
  {
    OUTLINED_FUNCTION_0_10(v14, v15, v16, MEMORY[0x1E69E7668], v17);
  }

  else
  {
    sub_1C04A8E9C(&v59);
  }

  OUTLINED_FUNCTION_6_8();
  v59 = 0xD00000000000001DLL;
  v60 = v24;
  v25 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v25, v26, v27, v28, v29);
  v30 = sub_1C04A0D28(v58);
  if (v61)
  {
    OUTLINED_FUNCTION_0_10(v30, v31, v32, MEMORY[0x1E69E7668], v33);
  }

  else
  {
    sub_1C04A8E9C(&v59);
  }

  OUTLINED_FUNCTION_6_8();
  v34 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v34, v35, v36, v37, v38);
  v39 = sub_1C04A0D28(v58);
  if (v61)
  {
    if (OUTLINED_FUNCTION_0_10(v39, v40, v41, MEMORY[0x1E69E63B0], v42))
    {
      v57 = -2.31584178e77;
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C04A8E9C(&v59);
  }

  OUTLINED_FUNCTION_6_8();
  v43 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v43, v44, v45, v46, v47);
  sub_1C04A0D28(v58);
  if (!v61)
  {
    sub_1C04A8E9C(&v59);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_25;
  }

LABEL_19:
  OUTLINED_FUNCTION_6_8();
  v48 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v48, v49, v50, v51, v52);

  v53 = sub_1C04A0D28(v58);
  if (v61)
  {
    if (OUTLINED_FUNCTION_0_10(v53, v54, v55, MEMORY[0x1E69E63B0], v56))
    {
      *&result = -2.31584178e77 - v57;
      return result;
    }
  }

  else
  {
    sub_1C04A8E9C(&v59);
  }

LABEL_25:
  *&result = 0.0;
  return result;
}

uint64_t sub_1C04C9034(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C04F9620;
  v8 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = MEMORY[0x1E69E6530];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x1E69E7668];
  v10 = MEMORY[0x1E69E76D0];
  *(v7 + 96) = MEMORY[0x1E69E7668];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x1E69E63B0];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x1E69E6438];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_1C04866E0();
}

void sub_1C04C9124()
{
  OUTLINED_FUNCTION_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_1C04C8C24();
    if (v2)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v4 = OUTLINED_FUNCTION_7_1(v3);
      *(v4 + 16) = xmmword_1C04F7BB0;
      OUTLINED_FUNCTION_2();
      v6 = *(v0 + *(v5 + 464) + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
      v8 = sub_1C04F6790();
      v10 = v9;
      *(v4 + 56) = MEMORY[0x1E69E6158];
      *(v4 + 64) = sub_1C0483A94();
      *(v4 + 32) = v8;
      *(v4 + 40) = v10;
      OUTLINED_FUNCTION_9_4();
      sub_1C04866E0();
    }

    else
    {
      OUTLINED_FUNCTION_2();
      (*(v11 + 568))(v12, v13);
    }

    sub_1C0485C84();
  }
}

uint64_t sub_1C04C927C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_1C04860BC(sub_1C04C95C0, v3);
}

uint64_t sub_1C04C92BC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(a1 + *(*a1 + 480)))
  {
    swift_unknownObjectRetain();
    if (nw_activity_is_activated())
    {
      nw_activity_complete_with_reason();
    }

    else
    {
      sub_1C04F6A00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1C04F7BB0;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D418, &unk_1C04F96E8);
      v4 = sub_1C04F6790();
      v6 = v5;
      *(v3 + 56) = MEMORY[0x1E69E6158];
      *(v3 + 64) = sub_1C0483A94();
      *(v3 + 32) = v4;
      *(v3 + 40) = v6;
      sub_1C04F6390("Ending NetworkSpan before nw_activity (%s) was activated", v8);
    }

    a1 = swift_unknownObjectRelease();
  }

  return a2(a1);
}

uint64_t sub_1C04C9440(uint64_t a1, unint64_t a2, double a3)
{
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D410, &qword_1C04FA9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C04F9620;
  *(inited + 32) = 0x635F737574617473;
  *(inited + 40) = 0xEB0000000065646FLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0x656D69746E7572;
  *(inited + 64) = 0xE700000000000000;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  OUTLINED_FUNCTION_6_8();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v9;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  strcpy((inited + 104), "uploaded_bytes");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  sub_1C048716C();
  return sub_1C04F66F0();
}

uint64_t sub_1C04C95CC(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C04F66C0();

  return v3;
}

double OUTLINED_FUNCTION_2_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_1C04E9EE4(&v8, v5, &v9);
}

__n128 OUTLINED_FUNCTION_4_8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_allocObject();
}

uint64_t sub_1C04C9680(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C04C96C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C04C971C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  v5 = a1;
  switch(a4)
  {
    case 1:

      sub_1C04F6C40();

      OUTLINED_FUNCTION_2_13();
      v15[0] = v13;
      v15[1] = v12;
      if (v4)
      {
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      if (!v4)
      {
        v4 = 0xE000000000000000;
      }

      MEMORY[0x1C68DC0D0](v14, v4);

      return v15[0];
    case 2:
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_1C04F6C40();

      OUTLINED_FUNCTION_2_13();
      v9 = v8 + 3;
      goto LABEL_11;
    case 3:
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_1C04F6C40();

      OUTLINED_FUNCTION_2_13();
LABEL_11:
      v15[0] = v9;
      v15[1] = v7;
      v10 = sub_1C04F6D60();
      MEMORY[0x1C68DC0D0](v10);

      MEMORY[0x1C68DC0D0](0x3A726F727265202CLL, 0xE900000000000020);
      a1 = OUTLINED_FUNCTION_12_4();
      goto LABEL_12;
    case 4:

      sub_1C04F6C40();

      strcpy(v15, "Bad Response ");
      HIWORD(v15[1]) = -4864;
      if (v4)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      if (!v4)
      {
        v4 = 0xE000000000000000;
      }

      MEMORY[0x1C68DC0D0](v6, v4);

      a1 = 41;
      a2 = 0xE100000000000000;
      goto LABEL_12;
    case 5:
      if (a2 | a1 | a3)
      {
        return 0x2064696C61766E69;
      }

      else
      {
        return 0x6F62207974706D45;
      }

    default:
      strcpy(v15, "Bad URL: ");
      WORD1(v15[1]) = 0;
      HIDWORD(v15[1]) = -385875968;
LABEL_12:
      MEMORY[0x1C68DC0D0](a1, a2, a3);
      return v15[0];
  }
}

uint64_t sub_1C04C99A4()
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](0);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C99E8(char a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a1 & 1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9A30(char a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](qword_1C04F99D8[a1]);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9A84(uint64_t a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9B28(uint64_t a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](0);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9B68(uint64_t a1, char a2)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a2 & 1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9BAC(uint64_t a1, char a2)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](qword_1C04F99D8[a2]);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9BFC(uint64_t a1, uint64_t a2)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a2);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9C40()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE44DB0);
  __swift_project_value_buffer(v0, qword_1EDE44DB0);
  return sub_1C04F63F0();
}

BOOL sub_1C04C9CD4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C04C9CB8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C04C9D0C()
{
  v0 = qword_1EBE0D428;

  return v0;
}

uint64_t sub_1C04C9D44()
{
  v0 = *aSearch;

  return v0;
}

uint64_t sub_1C04C9D90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 24);

  sub_1C04D3164();
}

uint64_t sub_1C04C9DFC()
{
  OUTLINED_FUNCTION_24_0();
  sub_1C047B9BC();

  return OUTLINED_FUNCTION_12_4();
}

uint64_t sub_1C04C9E44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_0();
  sub_1C04D3164();
}

uint64_t sub_1C04C9EC0(char a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_24_0();
  sub_1C047AC48(a1);
}

uint64_t sub_1C04C9F04()
{
  OUTLINED_FUNCTION_9_5(v0 + OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults);

  sub_1C04D30CC();

  return OUTLINED_FUNCTION_12_4();
}

uint64_t sub_1C04C9F6C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v33 = sub_1C04F62E0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  *(v5 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_defaultMTUSizeInBytes) = 1500;
  v17 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__overrideRpcTimeout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D478, &qword_1C04F99B0);
  swift_allocObject();
  *(v5 + v17) = sub_1C04D3014(0, 0);
  v18 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__compressionEnabled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D200, &unk_1C04F8810);
  swift_allocObject();
  *(v5 + v18) = sub_1C04D271C(0);
  v19 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__assumesHTTP3Capable;
  swift_allocObject();
  *(v5 + v19) = sub_1C04D271C(0);
  if (a5)
  {
    v20 = a5;
  }

  else
  {
    if (qword_1EDE44538 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDE44DC8;
  }

  *(v5 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_sharedSession) = v20;
  if (a4)
  {
    v32 = a5;
    v21 = a4;
  }

  else
  {
    type metadata accessor for ActivityMonitor();
    swift_allocObject();
    v32 = a5;
    v21 = sub_1C04E72EC();
  }

  *(v5 + 16) = v21;

  v22 = a3;
  sub_1C04A3CE4(v22);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults;
  OUTLINED_FUNCTION_10_3(v6 + OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D480, &qword_1C04F99B8);
  swift_allocObject();
  *(v6 + v29) = sub_1C04D2740(v24, v26, v28);
  swift_endAccess();
  sub_1C04F62D0();
  v30 = OBJC_IVAR____TtC10PegasusKit10GRPCClient_jsonEncodingOptions;
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC10PegasusKit10GRPCClient_jsonEncodingOptions, v16, v33);
  OUTLINED_FUNCTION_10_3(v6 + v30);
  sub_1C04F62B0();
  sub_1C04F62C0();
  swift_endAccess();
  OUTLINED_FUNCTION_10_3(v6 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D488, &qword_1C04F99C0);
  swift_allocObject();

  *(v6 + 24) = sub_1C04D3014(a1, a2);
  swift_endAccess();

  return v6;
}

id sub_1C04CA2A8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_1C04CBB14(a2, v8);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v6 + 24))(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1C04CBB84(v8, &qword_1EBE0CE40, &qword_1C04F8900);
  }

  *a3 = v4;
  return v4;
}

uint64_t sub_1C04CA360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 40);
  if (v6)
  {
    v8 = *(a2 + 32);
    v67 = sub_1C047B774();
    v68 = v9;

    MEMORY[0x1C68DC0D0](v8, v6);

    v10 = sub_1C04C9F04();
    v13 = sub_1C04A4D5C(v10, v11, v12);
    v15 = v14;

    if (v15)
    {
      MEMORY[0x1C68DC0D0](v13, v15);

      MEMORY[0x1C68DC0D0](63, 0xE100000000000000);
    }

    v16 = sub_1C04F5190();
    if (!v17)
    {
      goto LABEL_17;
    }

    if (v16 == 1414745936 && v17 == 0xE400000000000000)
    {
    }

    else
    {
      v19 = sub_1C04F6D80();

      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    MEMORY[0x1C68DC0D0](0x54534F5020582D20, 0xE800000000000000);
LABEL_17:
    MEMORY[0x1C68DC0D0](v67, v68);
    MEMORY[0x1C68DC0D0](8231, 0xE200000000000000);
    MEMORY[0x1C68DC0D0](10016, 0xE200000000000000);

    v27 = sub_1C04F51D0();
    v64 = a4;
    if (!v27)
    {
      v27 = sub_1C04F66F0();
    }

    v28 = v27;
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_3_11();
    v31 = v30 & v29;
    v33 = (v32 + 63) >> 6;

    v34 = 0;
    if (v31)
    {
      while (1)
      {
        v35 = v28;
LABEL_25:
        v37 = (*(a5 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v31)))));
        v38 = *v37;
        v39 = v37[1];

        if ((sub_1C04CAC7C(0x74654D2D63707247, v5, v38, v39) & 1) == 0)
        {
          break;
        }

        v40 = sub_1C04F67F0();
        v41 = sub_1C04CADC0(v40, v38, v39);
        v5 = MEMORY[0x1C68DC060](v41);

        v42 = sub_1C047D36C();
        if ((v43 & 1) == 0)
        {

          OUTLINED_FUNCTION_5_9();
          goto LABEL_30;
        }

        v5 = v42;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
        sub_1C04F6CC0();

        sub_1C04F6CE0();

        v28 = v35;

        OUTLINED_FUNCTION_5_9();
LABEL_31:
        v31 &= v31 - 1;

        if (!v31)
        {
          goto LABEL_21;
        }
      }

LABEL_30:
      v28 = v35;
      goto LABEL_31;
    }

    while (1)
    {
LABEL_21:
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v36 >= v33)
      {
        break;
      }

      v31 = *(v68 + 8 * v36);
      ++v34;
      if (v31)
      {
        v35 = v28;
        v34 = v36;
        goto LABEL_25;
      }
    }

    v44 = sub_1C04CAE94(a5, v28);
    v45 = 0;
    OUTLINED_FUNCTION_3_11();
    v48 = v47 & v46;
    v50 = (v49 + 63) >> 6;
    while (v48)
    {
LABEL_39:
      v52 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v53 = (v45 << 10) | (16 * v52);
      v54 = (*(v44 + 48) + v53);
      v55 = *v54;
      v56 = v54[1];
      if (*v54 != 0x65696B6F6F43 || v56 != 0xE600000000000000)
      {
        v58 = (*(v44 + 56) + v53);
        v59 = v58[1];
        v66 = *v58;
        if ((sub_1C04F6D80() & 1) == 0)
        {
          v60 = v55 == 0x2D746E65746E6F43 && v56 == 0xEC00000065707954;
          if (v60 || (OUTLINED_FUNCTION_8_5(0x2D746E65746E6F43, 0xEC00000065707954) & 1) != 0)
          {
            MEMORY[0x1C68DC0D0](0xD000000000000024, 0x80000001C04FDE70);
          }

          else
          {
            v61 = v55 == 0xD000000000000011 && 0x80000001C04FCC30 == v56;
            if (!v61 && (OUTLINED_FUNCTION_8_5(0xD000000000000011, 0x80000001C04FCC30) & 1) == 0)
            {
              v62 = v55 == 1953722184 && v56 == 0xE400000000000000;
              if (!v62 && (OUTLINED_FUNCTION_8_5(1953722184, 0xE400000000000000) & 1) == 0)
              {

                MEMORY[0x1C68DC0D0](v55, v56);

                MEMORY[0x1C68DC0D0](8250, 0xE200000000000000);
                MEMORY[0x1C68DC0D0](v66, v59);

                MEMORY[0x1C68DC0D0](39, 0xE100000000000000);
                MEMORY[0x1C68DC0D0](0x2720482D20, 0xE500000000000000);
              }
            }
          }
        }
      }
    }

    while (1)
    {
      v51 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v51 >= v50)
      {

        MEMORY[0x1C68DC0D0](a3, v64);
        MEMORY[0x1C68DC0D0](39, 0xE100000000000000);
        MEMORY[0x1C68DC0D0](0x2720642D20, 0xE500000000000000);

        return 1819440483;
      }

      v48 = *(8 * v51);
      ++v45;
      if (v48)
      {
        v45 = v51;
        goto LABEL_39;
      }
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (qword_1EDE44480 != -1)
  {
LABEL_64:
    OUTLINED_FUNCTION_0_11(&qword_1EDE44480);
  }

  v20 = sub_1C04F6400();
  __swift_project_value_buffer(v20, qword_1EDE44DB0);
  v21 = sub_1C04F63E0();
  v22 = sub_1C04F6A20();
  if (OUTLINED_FUNCTION_19_1(v22))
  {
    v23 = OUTLINED_FUNCTION_25_0();
    *v23 = 0;
    OUTLINED_FUNCTION_13_5(&dword_1C0479000, v24, v25, "No gateway declared, unable to craft curl equivalent");
    MEMORY[0x1C68DCEB0](v23, -1, -1);
  }

  return 0;
}

uint64_t sub_1C04CAAA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1C04F53F0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  sub_1C048087C(a2, a3);
  sub_1C04F5400();
  sub_1C04CBACC(qword_1EDE423D0, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
  v7 = 0;
  while (1)
  {
    result = sub_1C04F6B70();
    if (v19)
    {
      v13 = OUTLINED_FUNCTION_88();
      result = v14(v13);
      v15 = *(a1 + 16);
      if (v15 != v7)
      {
        if (v7 < v15)
        {
          return 0;
        }

        goto LABEL_14;
      }

      return 1;
    }

    v9 = *(a1 + 16);
    if (v7 == v9)
    {
      v16 = OUTLINED_FUNCTION_88();
      v17(v16);
      return 1;
    }

    if (v7 >= v9)
    {
      break;
    }

    v10 = *(a1 + 32 + v7++);
    if (v18 != v10)
    {
      v11 = OUTLINED_FUNCTION_88();
      v12(v11);
      return 0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C04CAC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  do
  {
    while (1)
    {
      v4 = sub_1C04F6840();
      if (!v5)
      {

        sub_1C04F6840();
        v13 = v12;

        if (v13)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v6 = v4;
      v7 = v5;
      v8 = sub_1C04F6840();
      if (!v9)
      {

        return 1;
      }

      if (v6 != v8 || v7 != v9)
      {
        break;
      }
    }

    v11 = sub_1C04F6D80();
  }

  while ((v11 & 1) != 0);

LABEL_15:

  return 0;
}

unint64_t sub_1C04CADC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1C04F6810();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1C04F68D0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04CAE94(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C04CB788(a1, sub_1C04CBA44, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C04CAF18()
{

  v1 = OBJC_IVAR____TtC10PegasusKit10GRPCClient_jsonEncodingOptions;
  sub_1C04F62E0();
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1C04CAFCC()
{
  sub_1C04CAF18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for GRPCClient(uint64_t a1)
{
  result = qword_1EDE44838;
  if (!qword_1EDE44838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C04CB078(uint64_t a1)
{
  result = sub_1C04F62E0();
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

uint64_t get_enum_tag_for_layout_string_10PegasusKit10GRPCClientC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C04CB16C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 25))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 5)
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

uint64_t sub_1C04CB1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1C04CB1F4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1C04CB224()
{
  result = qword_1EBE0D448;
  if (!qword_1EBE0D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D448);
  }

  return result;
}

unint64_t sub_1C04CB278(uint64_t a1)
{
  *(a1 + 8) = sub_1C04CB2A8();
  result = sub_1C04CB2FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04CB2A8()
{
  result = qword_1EBE0D450;
  if (!qword_1EBE0D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D450);
  }

  return result;
}

unint64_t sub_1C04CB2FC()
{
  result = qword_1EBE0D458;
  if (!qword_1EBE0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D458);
  }

  return result;
}

unint64_t sub_1C04CB354()
{
  result = qword_1EBE0D460;
  if (!qword_1EBE0D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D460);
  }

  return result;
}

uint64_t sub_1C04CB3A8(uint64_t a1)
{
  result = sub_1C04CBACC(&qword_1EBE0D468, type metadata accessor for GRPCClient, &unk_1C04F98B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C04CB424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D470, &qword_1C04F99A8);
  v36 = v4;
  result = sub_1C04F6D20();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_1C04CB6D8(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
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
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_1C04F6E60();
    sub_1C04F67E0();
    result = sub_1C04F6E80();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C04CB6D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C04F9710;
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

uint64_t sub_1C04CB73C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_1C04CB788(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  sub_1C04CBA88(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v42 = v47[5];
  v43 = v47[0];
  v9 = (v47[2] + 64) >> 6;

  v40 = v9;
  v41 = v6;
  if (v8)
  {
    while (1)
    {
      v44 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v43 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v43 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v46[0] = v14;
      v46[1] = v15;
      v46[2] = v17;
      v46[3] = v18;

      v42(v45, v46);

      v19 = v45[0];
      v20 = v45[1];
      v21 = v45[2];
      v22 = v45[3];
      v23 = *v48;
      v25 = sub_1C047D36C();
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v44 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
          sub_1C04F6CD0();
        }
      }

      else
      {
        sub_1C04CB424(v28, v44 & 1);
        v30 = sub_1C047D36C();
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v48;
      if (v29)
      {

        v33 = (v32[7] + 16 * v25);
        *v33 = v21;
        v33[1] = v22;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v34 = (v32[6] + 16 * v25);
        *v34 = v19;
        v34[1] = v20;
        v35 = (v32[7] + 16 * v25);
        *v35 = v21;
        v35[1] = v22;
        v36 = v32[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v32[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v9 = v40;
      v6 = v41;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C04CBAC4(v43);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C04F6DD0();
  __break(1u);
  return result;
}

uint64_t sub_1C04CBA44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C04CB73C(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_1C04CBA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1C04CBACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C04CBB14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE40, &qword_1C04F8900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04CBB84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for GRPCClient.Activity(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GRPCClient.Activity(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2)
{

  return sub_1C04F6D80();
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_13_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1C04CBDAC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D490);
  __swift_project_value_buffer(v0, qword_1EBE0D490);
  return sub_1C04F63F0();
}

uint64_t sub_1C04CBE38()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C04F6260();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69BDB08], v0, v6);
  sub_1C04F6270();
  v9 = sub_1C04F6250();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  qword_1EBE0D4A8 = v9;
  unk_1EBE0D4B0 = v11;
  return result;
}

uint64_t PegasusProxyForLookup.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void sub_1C04CC054()
{
  *&xmmword_1EBE0D4B8 = 0xD00000000000002BLL;
  *(&xmmword_1EBE0D4B8 + 1) = 0x80000001C04FDED0;
  qword_1EBE0D4C8 = 0xD000000000000010;
  unk_1EBE0D4D0 = 0x80000001C04FDF00;
  *&xmmword_1EBE0D4D8 = 0xD000000000000013;
  *(&xmmword_1EBE0D4D8 + 1) = 0x80000001C04FDF20;
}

void *PegasusProxyForLookup.init()()
{
  if (qword_1EBE0CA20 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1EBE0CA20);
  }

  v0 = qword_1EBE0D4A8;
  v1 = unk_1EBE0D4B0;

  return sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
}

uint64_t sub_1C04CC1C0()
{
  v1 = sub_1C04F6200();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  v5 = *(v0 + 16);

  sub_1C04F6220();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  return sub_1C0482EFC(v5, 16, v4, 0, 1);
}

uint64_t sub_1C04CC268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a1;
  v77 = *v2;
  v78 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D518, &qword_1C04F9EE8);
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v4);
  v69 = (&v64 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D520, &qword_1C04F9EF0);
  OUTLINED_FUNCTION_0();
  v72 = v7;
  v73 = v6;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D528, &unk_1C04F9EF8);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v64 - v14;
  v68 = sub_1C04F54B0();
  OUTLINED_FUNCTION_0();
  v67 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v75 = sub_1C04F5790();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBE0CA20 != -1)
  {
    OUTLINED_FUNCTION_2_14(&qword_1EBE0CA20);
  }

  v26 = qword_1EBE0D4A8;
  v27 = unk_1EBE0D4B0;

  v28 = sub_1C04B7354();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v82 = v28;
  sub_1C049FB48(v26, v27, 0x6567612D72657375, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  sub_1C04B7390();
  sub_1C04F6490();
  if (v82 == 5)
  {
    v72 = v12;
    v73 = v10;
    v30 = v75;
    v69 = *(v21 + 16);
    v69(&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v76, v75);
    v31 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v32 = (v23 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = *(v21 + 32);
    v71 = v31;
    v35 = v33 + v31;
    v36 = v25;
    v66 = v34;
    v34(v35, v25, v30);
    v65 = v32;
    *(v33 + v32) = v77;
    sub_1C04F54A0();
    v37 = sub_1C04F5470();
    v39 = v38;
    (*(v67 + 8))(v19, v68);
    *&v82 = v37;
    *(&v82 + 1) = v39;
    LOBYTE(v83) = 0;
    *(&v83 + 1) = v79[0];
    DWORD1(v83) = *(v79 + 3);
    *(&v83 + 1) = sub_1C04CEFF8;
    v84 = v33;
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v40 = sub_1C04D0244(4, 0);
    v70 = v40;

    v80 = v40;
    v41 = v25;
    v42 = v75;
    v69(v41, v76, v75);
    v43 = v65;
    v44 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v66(v46 + v71, v36, v42);
    *(v46 + v43) = v3;
    *(v46 + v44) = v78;
    v47 = v46 + v45;
    v48 = v83;
    *v47 = v82;
    *(v47 + 16) = v48;
    *(v47 + 32) = v84;
    *(v46 + ((v45 + 47) & 0xFFFFFFFFFFFFFFF8)) = v77;

    sub_1C04C0838(&v82, v79);
    sub_1C04F6410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D4F0, &qword_1C04F9DD0);
    v49 = MEMORY[0x1E695BED8];
    sub_1C047C1A4(&qword_1EDE40898, &qword_1EBE0D070, &qword_1C04F9350, MEMORY[0x1E695BED8]);
    sub_1C047C1A4(&qword_1EBE0D4F8, &qword_1EBE0D4F0, &qword_1C04F9DD0, v49);
    v50 = v74;
    sub_1C04F65B0();

    sub_1C047C1A4(&qword_1EBE0D538, &qword_1EBE0D528, &unk_1C04F9EF8, MEMORY[0x1E695BE40]);
    v51 = v73;
    v52 = sub_1C04F64E0();
    sub_1C04C0894(&v82);
    (*(v72 + 8))(v50, v51);
  }

  else
  {
    *(v78 + qword_1EDE44718) = 34;
    sub_1C0483574();
    if (qword_1EBE0CA18 != -1)
    {
      swift_once();
    }

    v53 = sub_1C04F6400();
    __swift_project_value_buffer(v53, qword_1EBE0D490);

    v54 = sub_1C04F63E0();
    v55 = sub_1C04F6A20();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v82 = v57;
      *v56 = 136315138;
      sub_1C04F6490();
      v81[0] = v79[0];
      v58 = sub_1C04F6790();
      v60 = sub_1C047D76C(v58, v59, &v82);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_1C0479000, v54, v55, "Multimodal Lookup Search is disabled: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1C68DCEB0](v57, -1, -1);
      MEMORY[0x1C68DCEB0](v56, -1, -1);
    }

    *v69 = 3;
    swift_storeEnumTagMultiPayload();
    v61 = v70;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D530, &qword_1EBE0D520, &qword_1C04F9EF0, MEMORY[0x1E695C008]);
    v62 = v73;
    v52 = sub_1C04F64E0();
    (*(v72 + 8))(v61, v62);
  }

  return v52;
}

uint64_t sub_1C04CCB04(uint64_t a1)
{
  v2 = sub_1C04F5DA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F5C70();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1C04F5780();
  sub_1C04F5590();
  sub_1C04F5570();
  v15 = sub_1C04F5540();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    v25 = v3;
    sub_1C04A13B0(v14, v11, &qword_1EBE0CAA0, &qword_1C04F7A40);
    v16 = *(v15 - 8);
    v17 = (*(v16 + 88))(v11, v15);
    if (v17 == *MEMORY[0x1E69BCB98])
    {
      (*(v6 + 104))(v8, *MEMORY[0x1E69BD180], v5);
      v18 = sub_1C04F5560();
      sub_1C04F5A90();
      v18(v27, 0);
      (*(v25 + 104))(v26, *MEMORY[0x1E69BD4F8], v2);
      v19 = sub_1C04F5560();
      sub_1C04F5A30();
      v19(v27, 0);
    }

    else if (v17 == *MEMORY[0x1E69BCB90])
    {
      (*(v6 + 104))(v8, *MEMORY[0x1E69BD180], v5);
      v20 = sub_1C04F5550();
      sub_1C04F5970();
      v20(v27, 0);
    }

    (*(v16 + 8))(v11, v15);
  }

  sub_1C04A12B4(v14, &qword_1EBE0CAA0, &qword_1C04F7A40);
  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v21 = qword_1EBE0CA20;
  v22 = qword_1EDE44DD0;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_1C04A85AC(a1, qword_1EBE0D4A8, unk_1EBE0D4B0, 0);

  v23 = sub_1C04F55B0();
  return (*(*(v23 - 8) + 8))(a1, v23);
}

uint64_t sub_1C04CCF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v89 = a6;
  v91 = a5;
  v90 = a3;
  v100 = a2;
  v98 = a1;
  v102 = a7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D518, &qword_1C04F9EE8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v80 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D520, &qword_1C04F9EF0);
  v97 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v96 = &v80 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D540, &qword_1C04F9F08);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v80 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D548, &qword_1C04F9F10);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v80 - v13);
  v15 = sub_1C04F54F0();
  v93 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v80 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v80 - v24);
  v26 = sub_1C04F5790();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v30;
  v31 = *(v30 + 16);
  v32 = v100;
  v100 = v33;
  v31(v29, v32, v27);
  sub_1C04A13B0(v98, v25, &qword_1EBE0D088, &qword_1C04F9370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v29;
    v35 = *v25;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EBE0CA18 != -1)
    {
      swift_once();
    }

    v36 = sub_1C04F6400();
    __swift_project_value_buffer(v36, qword_1EBE0D490);
    v37 = v35;
    v38 = sub_1C04F63E0();
    v39 = sub_1C04F6A20();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v105[0] = v41;
      *v40 = 136315138;
      v104[0] = v35;
      v42 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v43 = sub_1C04F6790();
      v45 = sub_1C047D76C(v43, v44, v105);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1C0479000, v38, v39, "context fetch failure: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1C68DCEB0](v41, -1, -1);
      MEMORY[0x1C68DCEB0](v40, -1, -1);
    }

    v29 = v34;
    *v94 = 7;
    swift_storeEnumTagMultiPayload();
    v46 = v96;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D530, &qword_1EBE0D520, &qword_1C04F9EF0, MEMORY[0x1E695C008]);
    v47 = v101;
    v48 = sub_1C04F64E0();

    (*(v97 + 8))(v46, v47);
  }

  else
  {
    v81 = a4;
    v49 = v93;
    v50 = *(v93 + 32);
    v50(v22, v25, v15);
    sub_1C04F5760();
    sub_1C0482664(16, v17, v14);
    v51 = *(v49 + 8);
    v98 = v49 + 8;
    v82 = v51;
    v51(v17, v15);
    v52 = v15;
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1C04A12B4(v14, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v81 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EBE0CA18 != -1)
      {
        swift_once();
      }

      v53 = sub_1C04F6400();
      __swift_project_value_buffer(v53, qword_1EBE0D490);
      v54 = sub_1C04F63E0();
      v55 = sub_1C04F6A20();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1C0479000, v54, v55, "unable to create unified query context", v56, 2u);
        MEMORY[0x1C68DCEB0](v56, -1, -1);
      }

      *v94 = 8;
      swift_storeEnumTagMultiPayload();
      v57 = v96;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EBE0D530, &qword_1EBE0D520, &qword_1C04F9EF0, MEMORY[0x1E695C008]);
      v58 = v101;
      v48 = sub_1C04F64E0();
      (*(v97 + 8))(v57, v58);
      v82(v22, v15);
    }

    else
    {
      v59 = v92;
      v50(v92, v14, v15);
      (*(v93 + 16))(v17, v59, v15);
      sub_1C04F5770();
      sub_1C047ACAC();
      v60 = v81;
      if (qword_1EBE0CA28 != -1)
      {
        swift_once();
      }

      v105[0] = xmmword_1EBE0D4B8;
      v105[1] = *&qword_1EBE0D4C8;
      v105[2] = xmmword_1EBE0D4D8;
      v61 = sub_1C04B7354();
      v104[3] = &type metadata for NetworkFeedbackGenerator;
      v104[4] = &protocol witness table for NetworkFeedbackGenerator;
      v62 = swift_allocObject();
      v104[0] = v62;
      v63 = v91;
      v64 = v91[1];
      *(v62 + 16) = *v91;
      *(v62 + 32) = v64;
      *(v62 + 48) = *(v63 + 32);
      sub_1C04C0838(v63, v103);
      v65 = sub_1C04D9C44(v105, v29, v61, v104, 1);
      v67 = v66;

      sub_1C04A12B4(v104, &qword_1EBE0CE40, &qword_1C04F8900);
      v68 = v65;

      v69 = nw_activity_create();
      v70 = v68;
      sub_1C04E0B04(v70, v69, 0, 0xE000000000000000, v60);
      swift_unknownObjectRelease();

      v104[0] = v67;

      sub_1C04F6410();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D550, &qword_1C04FA7C0);
      v97 = v52;
      sub_1C047C1A4(&qword_1EBE0D558, &qword_1EBE0D550, &qword_1C04FA7C0, MEMORY[0x1E695BED8]);
      v96 = v22;
      sub_1C047C1A4(&qword_1EBE0D530, &qword_1EBE0D520, &qword_1C04F9EF0, MEMORY[0x1E695C008]);
      v71 = v83;
      sub_1C04F6530();

      v72 = swift_allocObject();
      v73 = v89;
      *(v72 + 16) = v60;
      *(v72 + 24) = v73;
      sub_1C047C1A4(&qword_1EBE0D560, &qword_1EBE0D540, &qword_1C04F9F08, MEMORY[0x1E695BE40]);

      v74 = v84;
      v75 = v86;
      sub_1C04F6500();

      (*(v85 + 8))(v71, v75);
      sub_1C047C1A4(&qword_1EBE0D568, &qword_1EBE0D548, &qword_1C04F9F10, MEMORY[0x1E695BDA0]);
      v76 = v88;
      v48 = sub_1C04F64E0();

      (*(v87 + 8))(v74, v76);
      v77 = v97;
      v78 = v82;
      v82(v92, v97);
      v78(v96, v77);
    }
  }

  result = (*(v99 + 8))(v29, v100);
  *v102 = v48;
  return result;
}

uint64_t sub_1C04CDF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v69 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D518, &qword_1C04F9EE8);
  MEMORY[0x1EEE9AC00](v68);
  v5 = &v53 - v4;
  v6 = sub_1C04F5B60();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C04F5BC0();
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = sub_1C04F57C0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  if (qword_1EBE0CA18 != -1)
  {
    swift_once();
  }

  v19 = sub_1C04F6400();
  v20 = __swift_project_value_buffer(v19, qword_1EBE0D490);
  v21 = *(v13 + 16);
  v21(v18, a1, v12);
  v67 = a1;
  v61 = v21;
  v62 = v13 + 16;
  v21(v15, a1, v12);
  v60 = v20;
  v22 = sub_1C04F63E0();
  v23 = v12;
  v24 = sub_1C04F6A40();
  if (os_log_type_enabled(v22, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v24;
    v26 = v25;
    v55 = swift_slowAlloc();
    v70 = v55;
    *v26 = 136315394;
    v53 = v22;
    sub_1C04F57A0();
    v27 = v63;
    v28 = sub_1C04F6790();
    v56 = v5;
    v30 = v29;
    v31 = *(v13 + 8);
    v31(v18, v23);
    v32 = sub_1C047D76C(v28, v30, &v70);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    v33 = v57;
    sub_1C04F57B0();
    v34 = sub_1C04F5B50();
    v36 = v35;
    (*(v58 + 8))(v33, v59);
    v31(v15, v23);
    v37 = sub_1C047D76C(v34, v36, &v70);
    v5 = v56;

    *(v26 + 14) = v37;
    v38 = v53;
    _os_log_impl(&dword_1C0479000, v53, v54, "received rpc response with search status: %s, error detail: %s", v26, 0x16u);
    v39 = v55;
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v39, -1, -1);
    MEMORY[0x1C68DCEB0](v26, -1, -1);

    v40 = v23;
  }

  else
  {

    v41 = *(v13 + 8);
    v41(v15, v12);
    v41(v18, v12);
    v40 = v12;
    v27 = v63;
  }

  v42 = v67;
  sub_1C04F57A0();
  v43 = v64;
  v44 = v65;
  (*(v65 + 104))(v64, *MEMORY[0x1E69BCED0], v27);
  sub_1C04B71BC(&qword_1EDE41530, MEMORY[0x1E69BCEE0], MEMORY[0x1E69BCEE8]);
  v45 = sub_1C04F6730();
  v46 = *(v44 + 8);
  v46(v43, v27);
  v46(v11, v27);
  if (v45)
  {
    *(v66 + qword_1EDE44718) = 19;
    sub_1C0483574();
    *v5 = 6;
  }

  else
  {
    *(v66 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v47 = sub_1C04F63E0();
    v48 = sub_1C04F6A40();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v5;
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C0479000, v47, v48, "publishing successful rpc response", v50, 2u);
      v51 = v50;
      v5 = v49;
      MEMORY[0x1C68DCEB0](v51, -1, -1);
    }

    v61(v5, v42, v40);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}
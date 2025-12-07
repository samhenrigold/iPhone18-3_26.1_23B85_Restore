uint64_t sub_23ED7B9FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED7BA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED7BADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23ED7BB24(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_23ED7BB74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_23EDC0E80();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ALCService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD00000000000003DLL, 0x800000023EDCA620);
  MEMORY[0x23EF237D0](a1, a2);
  MEMORY[0x23EF237D0](0x6C65646F6D6C6D2ELL, 0xE900000000000063);
  v11 = sub_23EDC19A0();
  v12 = sub_23EDC19A0();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {

    sub_23EDC0E70();

    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v14 = sub_23EDC1790();
    __swift_project_value_buffer(v14, qword_27E3897E8);
    v15 = sub_23EDC1770();
    v16 = sub_23EDC1D60();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23ED67000, v15, v16, "Found the model in framework bundle.", v17, 2u);
      MEMORY[0x23EF24B30](v17, -1, -1);
    }

    (*(v6 + 32))(v31, v8, v5);
  }

  else
  {
    v18 = [objc_opt_self() defaultManager];
    v19 = sub_23EDC19A0();
    v20 = [v18 fileExistsAtPath_];

    if (v20)
    {
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v21 = sub_23EDC1790();
      __swift_project_value_buffer(v21, qword_27E3897E8);
      v22 = sub_23EDC1770();
      v23 = sub_23EDC1D60();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23ED67000, v22, v23, "Found the model via hardcoded path.", v24, 2u);
        MEMORY[0x23EF24B30](v24, -1, -1);
      }

      sub_23EDC0E50();
    }

    else
    {

      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v25 = sub_23EDC1790();
      __swift_project_value_buffer(v25, qword_27E3897E8);
      v26 = sub_23EDC1770();
      v27 = sub_23EDC1D80();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_23ED67000, v26, v27, "Unable to locate the model.", v28, 2u);
        MEMORY[0x23EF24B30](v28, -1, -1);
      }

      sub_23ED721D8();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }
  }
}

void sub_23ED7C050(uint64_t a1@<X8>)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v3 = sub_23EDC0E80();
  v53 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v45 - v6;
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_23EDC0E60();
  v57[0] = 0;
  v9 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:v57];

  v10 = v57[0];
  if (v9)
  {
    v46 = a1;
    v47 = v1;
    v48 = v7;
    v11 = sub_23EDC1AF0();
    v12 = v10;

    v52 = *(v11 + 16);
    if (v52)
    {
      v13 = 0;
      v51 = v53 + 16;
      v49 = (v53 + 8);
      v54 = (v53 + 32);
      v14 = MEMORY[0x277D84F90];
      v50 = v3;
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
LABEL_29:
          swift_once();
LABEL_23:
          v36 = sub_23EDC1790();
          __swift_project_value_buffer(v36, qword_27E3897E8);

          v37 = sub_23EDC1770();
          v38 = sub_23EDC1D80();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v57[0] = v40;
            *v39 = 136315138;
            v41 = MEMORY[0x23EF23860](v14, v3);
            v43 = v42;

            v44 = sub_23ED713FC(v41, v43, v57);

            *(v39 + 4) = v44;
            _os_log_impl(&dword_23ED67000, v37, v38, "Found too many models at %s", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v40);
            MEMORY[0x23EF24B30](v40, -1, -1);
            MEMORY[0x23EF24B30](v39, -1, -1);
          }

          else
          {
          }

          goto LABEL_27;
        }

        v15 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v16 = v11;
        v17 = *(v53 + 72);
        (*(v53 + 16))(v56, v11 + v15 + v17 * v13, v3);
        sub_23EDC0E40();
        v18 = sub_23EDC1A10();
        v20 = v19;

        if (v18 == 0x636C65646F6D6C6DLL && v20 == 0xE800000000000000)
        {
          break;
        }

        v21 = sub_23EDC2240();

        if (v21)
        {
          goto LABEL_11;
        }

        (*v49)(v56, v3);
LABEL_5:
        ++v13;
        v11 = v16;
        if (v52 == v13)
        {
          goto LABEL_18;
        }
      }

LABEL_11:
      v22 = *v54;
      (*v54)(v55, v56, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23EDA0D60(0, v14[2] + 1, 1);
        v14 = v57[0];
      }

      v25 = v14[2];
      v24 = v14[3];
      if (v25 >= v24 >> 1)
      {
        sub_23EDA0D60((v24 > 1), v25 + 1, 1);
        v14 = v57[0];
      }

      v14[2] = v25 + 1;
      v26 = v14 + v15 + v25 * v17;
      v3 = v50;
      v22(v26, v55, v50);
      goto LABEL_5;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_18:

    v32 = v14[2];
    if (v32)
    {
      (*(v53 + 16))(v46, v14 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v3);
      if (v32 != 1)
      {
        if (qword_27E388190 != -1)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

LABEL_27:
    }

    else
    {

      v33 = sub_23EDC1530();
      sub_23ED7D5EC(&qword_27E388768, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_allocError();
      v35 = v34;
      sub_23ED90B6C(MEMORY[0x277D84F90]);
      sub_23EDC1520();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D29D78], v33);
      swift_willThrow();
    }
  }

  else
  {
    v27 = v57[0];
    v28 = sub_23EDC0E30();

    swift_willThrow();
    v29 = sub_23EDC1530();
    sub_23ED7D5EC(&qword_27E388768, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    v31 = v30;
    sub_23ED90B6C(MEMORY[0x277D84F90]);
    sub_23EDC1520();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D29D78], v29);
    swift_willThrow();
  }
}

uint64_t sub_23ED7C7E8@<X0>(const char *a1@<X1>, void (*a2)(void *__return_ptr, uint64_t)@<X0>, uint64_t a3@<X8>, ...)
{
  v44 = a1;
  v45 = a3;
  v4 = sub_23EDC1170();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23EDC0E80();
  v49 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388770, &qword_23EDC4D50);
  v48 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v38 - v18);
  a2(v51, v17);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  v20 = v50;
  sub_23EDC1070();
  if (!v20)
  {
    v43 = v10;
    v50 = v7;
    v21 = sub_23EDC0F80();
    MEMORY[0x23EF22EC0](v21);
    v46[1](v6, v47);
    sub_23ED7C050(v13);
    v46 = v19;
    v47 = v16;
    v23 = v49;
    v22 = v50;
    if (qword_27E3881A0 != -1)
    {
      swift_once();
    }

    v24 = sub_23EDC1790();
    __swift_project_value_buffer(v24, qword_27E389818);
    v25 = v43;
    (*(v23 + 16))(v43, v13, v22);
    v26 = sub_23EDC1770();
    v27 = sub_23EDC1D90();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = v28;
      v42 = swift_slowAlloc();
      v52 = v42;
      *v28 = 136315138;
      sub_23ED7D5EC(&qword_27E3885F8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v29 = sub_23EDC21E0();
      v31 = v30;
      v40 = v15;
      v41 = v13;
      v32 = *(v49 + 8);
      v32(v25, v22);
      v33 = sub_23ED713FC(v29, v31, &v52);

      v34 = v39;
      *(v39 + 1) = v33;
      v22 = v50;
      _os_log_impl(&dword_23ED67000, v26, v27, v44, v34, 0xCu);
      v35 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x23EF24B30](v35, -1, -1);
      MEMORY[0x23EF24B30](v34, -1, -1);

      v32(v40, v22);
      v13 = v41;
      v23 = v49;
    }

    else
    {

      v36 = *(v23 + 8);
      v36(v25, v22);
      v36(v15, v22);
    }

    (*(v48 + 8))(v46, v47);
    (*(v23 + 32))(v45, v13, v22);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v51);
}

uint64_t sub_23ED7CCEC(uint64_t a1, uint64_t a2)
{
  sub_23EDC0F40();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (sub_23EDC0FD0() == a1 && v4 == a2)
  {
    goto LABEL_17;
  }

  v6 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  if (v6)
  {
    return 0;
  }

  sub_23EDC0F50();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (sub_23EDC0FD0() == a1 && v7 == a2)
  {
LABEL_17:

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    return 0;
  }

  v9 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  if (v9)
  {
    return 0;
  }

  sub_23EDC0F60();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (sub_23EDC0FD0() == a1 && v10 == a2)
  {
    goto LABEL_22;
  }

  v12 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  if (v12)
  {
    return 1;
  }

  sub_23EDC0F70();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (sub_23EDC0FD0() == a1 && v14 == a2)
  {
LABEL_22:

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    return 1;
  }

  else
  {
    v15 = sub_23EDC2240();

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    if (v15)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_23ED7CEF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23EDC0F40();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_23EDC0FD0() == a1 && v6 == a2)
  {
    goto LABEL_20;
  }

  v8 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v8)
  {
LABEL_21:
    sub_23ED7C7E8("Loading model from resource: %s", MEMORY[0x277D29A10], a3);
    return;
  }

  sub_23EDC0F50();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_23EDC0FD0() == a1 && v9 == a2)
  {
    goto LABEL_18;
  }

  v11 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v11)
  {
LABEL_19:
    sub_23ED7BB74(0xD000000000000082, 0x800000023EDCA530, a3);
    return;
  }

  sub_23EDC0F60();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_23EDC0FD0() == a1 && v12 == a2)
  {
LABEL_20:

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    goto LABEL_21;
  }

  v14 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v14)
  {
    goto LABEL_21;
  }

  sub_23EDC0F70();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_23EDC0FD0() == a1 && v15 == a2)
  {
LABEL_18:

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    goto LABEL_19;
  }

  v16 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v16)
  {
    goto LABEL_19;
  }

  v17 = sub_23EDC1530();
  sub_23ED7D5EC(&qword_27E388768, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_allocError();
  v19 = v18;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD00000000000003BLL, 0x800000023EDCA4F0);
  MEMORY[0x23EF237D0](a1, a2);
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D29D78], v17);
  swift_willThrow();
}

void sub_23ED7D270(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23EDC0F40();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_23EDC0FD0() == a1 && v6 == a2)
  {
    goto LABEL_20;
  }

  v8 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v8)
  {
LABEL_21:
    sub_23ED7C7E8("Loading fov model from resource: %s", MEMORY[0x277D29A18], a3);
    return;
  }

  sub_23EDC0F50();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_23EDC0FD0() == a1 && v9 == a2)
  {
    goto LABEL_18;
  }

  v11 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v11)
  {
LABEL_19:
    sub_23ED7BB74(0xD00000000000002FLL, 0x800000023EDCA6A0, a3);
    return;
  }

  sub_23EDC0F60();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_23EDC0FD0() == a1 && v12 == a2)
  {
LABEL_20:

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    goto LABEL_21;
  }

  v14 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v14)
  {
    goto LABEL_21;
  }

  sub_23EDC0F70();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_23EDC0FD0() == a1 && v15 == a2)
  {
LABEL_18:

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    goto LABEL_19;
  }

  v16 = sub_23EDC2240();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  if (v16)
  {
    goto LABEL_19;
  }

  v17 = sub_23EDC1530();
  sub_23ED7D5EC(&qword_27E388768, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_allocError();
  v19 = v18;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD000000000000039, 0x800000023EDCA660);
  MEMORY[0x23EF237D0](a1, a2);
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D29D78], v17);
  swift_willThrow();
}

uint64_t sub_23ED7D5EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23ED7D66C(double a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  v7 = [objc_opt_self() *a4];
  sub_23ED7BB24(0, &qword_27E388780, 0x277CCAE20);
  return sub_23EDC0D60();
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

uint64_t sub_23ED7D7D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v79 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v76 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = *(v8 + 16);
  v81 = &v75 - v15;
  v14();
  v78 = a2;
  (v14)(a2, a4, v7);
  v16 = objc_opt_self();
  v17 = [v16 degrees];
  v82 = a3;
  sub_23EDC0D90();
  sub_23EDC0D70();
  v19 = v18;

  v20 = *(v8 + 8);
  v20(v13, v7);
  v21 = [v16 degrees];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v23 = v22;

  v20(v13, v7);
  v24 = [v16 degrees];
  v80 = v8;
  v77 = a4;
  if (v23 >= v19)
  {
    sub_23EDC0D90();
    sub_23EDC0D70();
    v29 = v28;

    v20(v13, v7);
    v30 = v16;
    v31 = [v16 degrees];
    if (v29 >= 40.0)
    {
      sub_23EDC0D90();
      sub_23EDC0D70();
      v57 = v56;

      v20(v13, v7);
      v32 = v78;
      if (v57 <= 80.0)
      {
LABEL_13:
        v59 = [v16 radians];
        v60 = v76;
        sub_23EDC0D90();
        sub_23EDC0D70();
        v62 = v61;

        v20(v60, v7);
        v63 = tan(v62 * 0.5);
        v64 = [v30 radians];
        sub_23EDC0D90();
        sub_23EDC0D70();
        v66 = v65;

        v20(v60, v7);
        v67 = v63 * tan(v66 * 0.5);
        v68 = [v30 radians];
        sub_23EDC0D90();
        sub_23EDC0D70();
        v70 = v69;

        v20(v60, v7);
        v71 = tan(v70 * 0.5);
        atan(v67 / v71);
        v72 = [v30 radians];
        sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
        sub_23EDC0D60();
        v73 = v80;
        v55 = v81;
        v20(v81, v7);
        v54 = *(v73 + 32);
        v54(v55, v13, v7);
        return (v54)(v79, v55, v7);
      }

      v58 = [v16 &selRef_coords + 6];
      sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
      sub_23EDC0D60();
    }

    else
    {
      sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
      sub_23EDC0D60();
      v32 = v78;
    }

    v20(v32, v7);
    (*(v8 + 32))(v32, v13, v7);
    goto LABEL_13;
  }

  sub_23EDC0D90();
  sub_23EDC0D70();
  v26 = v25;

  v20(v13, v7);
  v27 = [v16 degrees];
  v75 = v16;
  if (v26 < 60.0)
  {
    sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
LABEL_8:
    sub_23EDC0D60();
    v37 = v81;
    v20(v81, v7);
    v35 = v80;
    (*(v80 + 32))(v37, v13, v7);
    goto LABEL_9;
  }

  sub_23EDC0D90();
  sub_23EDC0D70();
  v34 = v33;

  v20(v13, v7);
  v35 = v80;
  if (v34 > 90.0)
  {
    v36 = [v75 degrees];
    sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
    goto LABEL_8;
  }

LABEL_9:
  v38 = v75;
  v39 = [v75 radians];
  v40 = v76;
  sub_23EDC0D90();
  sub_23EDC0D70();
  v42 = v41;

  v20(v40, v7);
  v43 = tan(v42 * 0.5);
  v44 = [v38 radians];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v46 = v45;

  v20(v40, v7);
  v47 = v43 * tan(v46 * 0.5);
  v48 = [v38 radians];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v50 = v49;

  v20(v40, v7);
  v51 = tan(v50 * 0.5);
  atan(v47 / v51);
  v52 = [v38 radians];
  sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
  sub_23EDC0D60();
  v53 = v78;
  v20(v78, v7);
  v54 = *(v35 + 32);
  v54(v53, v13, v7);
  v55 = v81;
  return (v54)(v79, v55, v7);
}

uint64_t sub_23ED7E064(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v50 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  MEMORY[0x28223BE20](v18);
  v25 = &v41 - v24;
  if (a2 < 1 || v23 < 1)
  {
    goto LABEL_10;
  }

  v46 = v22;
  v49 = v21;
  v43 = v6;
  v44 = v4;
  v42 = v23;
  atan2(vcvtd_n_f64_u64(v23, 1uLL), a2);
  v45 = objc_opt_self();
  v26 = [v45 degrees];
  sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
  sub_23EDC0D60();
  v27 = *(v9 + 32);
  v27(v25, v20, v8);
  if (v50 < 1)
  {
    (*(v9 + 8))(v25, v8);
LABEL_10:
    sub_23ED7E62C();
    swift_allocError();
    *v40 = 0xD00000000000002BLL;
    *(v40 + 8) = 0x800000023EDCA6D0;
    *(v40 + 16) = 4;
    return swift_willThrow();
  }

  atan2(vcvtd_n_f64_u64(v50, 1uLL), a2);
  v28 = [v45 degrees];
  sub_23EDC0D60();
  v29 = v46;
  v27(v46, v16, v8);
  v50 = v25;
  sub_23ED7D7D8(v49, v12, v25, v29);
  v30 = *(v9 + 8);
  v30(v12, v8);
  if (qword_27E388160 != -1)
  {
    swift_once();
  }

  v31 = v47;
  __swift_project_value_buffer(v47, qword_27E389778);
  v42 = objc_opt_self();
  v32 = [v42 meters];
  v33 = v48;
  sub_23EDC0D90();
  sub_23EDC0D70();

  v43 = *(v43 + 8);
  (v43)(v33, v31);
  v34 = [v45 radians];
  sub_23EDC0D90();
  sub_23EDC0D70();
  v36 = v35;

  v30(v12, v8);
  tan(v36 * 0.5);
  v37 = v30;
  if (qword_27E388148 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v31, qword_27E389730);
  v38 = [v42 meters];
  sub_23EDC0D90();
  sub_23EDC0D70();

  (v43)(v33, v31);
  v37(v49, v8);
  v37(v46, v8);
  return (v37)(v50, v8);
}

unint64_t sub_23ED7E62C()
{
  result = qword_27E388CC0;
  if (!qword_27E388CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388CC0);
  }

  return result;
}

void sub_23ED7E6C0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v7 = objc_allocWithZone(type metadata accessor for CustomUnitProportion());
  v8 = sub_23EDC19A0();
  v9 = [v7 initWithSymbol:v8 converter:v6];

  *a5 = v9;
}

id sub_23ED7E768()
{
  if (qword_27E388170 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

id sub_23ED7E8E4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CustomUnitProportion();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23ED7E948(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StereoProperties(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23ED7E9D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v6 = *(v38 - 8);
  v7 = *(v6 + 84);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  v39 = v7;
  if (v9 > v7)
  {
    v7 = *(v8 + 84);
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30) - 8);
  v11 = v10;
  v12 = *(v4 + 64);
  if (*(v10 + 84) <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v4 + 80);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v13 <= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v12 + v14;
  v20 = *(v6 + 80) & 0xF8 | v15 | v16 | 7;
  v21 = *(v6 + 64) + v15;
  v22 = *(v8 + 64) + v16;
  v23 = a1;
  if (a2 > v18)
  {
    v24 = ((v12 + (v19 & ~v14) + v20) & ~v20) + ((v17 + ((v22 + (v21 & ~v15)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v25 = 8 * v24;
    if (v24 <= 3)
    {
      v27 = ((a2 - v18 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v27))
      {
        v26 = *(a1 + v24);
        if (!v26)
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      if (v27 > 0xFF)
      {
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      if (v27 < 2)
      {
LABEL_32:
        if (v18)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    v26 = *(a1 + v24);
    if (!*(a1 + v24))
    {
      goto LABEL_32;
    }

LABEL_19:
    v28 = (v26 - 1) << v25;
    if (v24 > 3)
    {
      v28 = 0;
    }

    if (v24)
    {
      if (v24 <= 3)
      {
        v29 = v24;
      }

      else
      {
        v29 = 4;
      }

      if (v29 > 2)
      {
        if (v29 == 3)
        {
          v30 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v30 = *a1;
        }
      }

      else if (v29 == 1)
      {
        v30 = *a1;
      }

      else
      {
        v30 = *a1;
      }
    }

    else
    {
      v30 = 0;
    }

    return v18 + (v30 | v28) + 1;
  }

LABEL_33:
  if (v5 >= v13)
  {
    v31 = *(v4 + 48);
    v32 = v5;
    v33 = v40;
    goto LABEL_38;
  }

  v23 = ((((a1 + v19) & ~v14) + v12 + v20) & ~v20);
  if (v39 == v13)
  {
    v31 = *(v6 + 48);
    v32 = v39;
    v33 = v38;
LABEL_38:

    return v31(v23, v32, v33);
  }

  v23 = ((v23 + v21) & ~v15);
  if (v9 == v13)
  {
    v31 = *(v8 + 48);
    v32 = v9;
    v33 = v37;
    goto LABEL_38;
  }

  v35 = *(v11 + 48);
  v36 = (v23 + v22) & ~v16;

  return v35(v36);
}

void sub_23ED7EDE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v44 = v4;
  v5 = *(v4 + 84);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78) - 8);
  v43 = v6;
  v7 = *(v6 + 84);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00) - 8);
  v42 = v8;
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30) - 8);
  v12 = v11;
  v13 = *(v4 + 64);
  if (*(v11 + 84) <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v4 + 80);
  v17 = *(v8 + 80);
  v18 = *(v11 + 80);
  v19 = *(v6 + 80) & 0xF8 | v17 | v18 | 7;
  v20 = (v13 + ((v13 + v16) & ~v16) + v19) & ~v19;
  v21 = *(v6 + 64) + v17;
  v22 = *(v8 + 64) + v18;
  v23 = ((*(v11 + 64) + ((v22 + (v21 & ~v17)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v24 = v23 + v20;
  if (a3 > v15)
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v28 = ((a3 - v15 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v28))
      {
        v26 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v26 = v29;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }

    v27 = a2;
    if (v15 < a2)
    {
      goto LABEL_38;
    }

LABEL_14:
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        *&v25[v24] = 0;
        if (!v27)
        {
          return;
        }

        goto LABEL_28;
      }

      *&v25[v24] = 0;
    }

    else if (v26)
    {
      v25[v24] = 0;
      if (!v27)
      {
        return;
      }

      goto LABEL_28;
    }

    if (!v27)
    {
      return;
    }

LABEL_28:
    if (v5 >= v14)
    {
      v33 = *(v44 + 56);
      v34 = v25;
    }

    else
    {
      v30 = (&v25[v13 + v16] & ~v16) + v13 + v19;
      v31 = (v30 & ~v19);
      if (v14 < v27)
      {
        v32 = ~v14 + v27;
        bzero(v31, v23);
        if (v23 <= 3)
        {
          *v31 = v32;
        }

        else
        {
          *v31 = v32;
        }

        return;
      }

      if (v7 == v14)
      {
        v33 = *(v43 + 56);
        v34 = (v30 & ~v19);
      }

      else
      {
        v34 = (&v31[v21] & ~v17);
        if (v9 != v14)
        {
          v37 = *(v12 + 56);
          v38 = &v34[v22] & ~v18;

          v37(v38);
          return;
        }

        v33 = *(v42 + 56);
      }
    }

    v33(v34);
    return;
  }

  v26 = 0;
  v27 = a2;
  v25 = a1;
  if (v15 >= a2)
  {
    goto LABEL_14;
  }

LABEL_38:
  v35 = ~v15 + v27;
  if (v24 < 4)
  {
    v36 = (v35 >> (8 * v24)) + 1;
    bzero(v25, v23 + v20);
    *v25 = v35;
    if (v26 > 1)
    {
LABEL_40:
      if (v26 == 2)
      {
        *&v25[v24] = v36;
      }

      else
      {
        *&v25[v24] = v36;
      }

      return;
    }
  }

  else
  {
    bzero(v25, v23 + v20);
    *v25 = v35;
    v36 = 1;
    if (v26 > 1)
    {
      goto LABEL_40;
    }
  }

  if (v26)
  {
    v25[v24] = v36;
  }
}

uint64_t type metadata accessor for StereoProperties(uint64_t a1)
{
  result = qword_27E388820;
  if (!qword_27E388820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23ED7F2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23ED7F468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_23ED7F5D8(uint64_t a1)
{
  sub_23ED7F710(319, &qword_27E388830, &qword_27E388790, 0x277CCADA8);
  if (v1 <= 0x3F)
  {
    sub_23ED7F6BC(319);
    if (v2 <= 0x3F)
    {
      sub_23ED7F710(319, &qword_27E388840, &qword_27E388780, 0x277CCAE20);
      if (v3 <= 0x3F)
      {
        sub_23ED7F768();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23ED7F6BC(uint64_t a1)
{
  if (!qword_27E388838)
  {
    type metadata accessor for CustomUnitProportion();
    v1 = sub_23EDC0DA0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E388838);
    }
  }
}

void sub_23ED7F710(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_23ED7BB24(255, a3, a4);
    v5 = sub_23EDC0DA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23ED7F768()
{
  if (!qword_27E388848)
  {
    v0 = sub_23EDC1E40();
    if (!v1)
    {
      atomic_store(v0, &qword_27E388848);
    }
  }
}

uint64_t sub_23ED7F7C0()
{
  sub_23EDC22F0();
  MEMORY[0x23EF24060](0);
  return sub_23EDC2320();
}

uint64_t sub_23ED7F82C()
{
  sub_23EDC22F0();
  MEMORY[0x23EF24060](0);
  return sub_23EDC2320();
}

uint64_t sub_23ED7F86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23EDC1490();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v42 = &v29[-v11];
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v40 = v10 + 32;
  v41 = v10 + 16;
  v39 = v10 + 88;
  v38 = *MEMORY[0x277D36CA8];
  v37 = v10;
  v32 = (v10 + 96);
  v33 = (v10 + 8);

  v30 = 0;
  v18 = 0;
  v35 = v6;
  v36 = a1;
  v34 = v9;
  for (i = a3; v15; v9 = v34)
  {
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v37;
      v22 = v42;
      (*(v37 + 16))(v42, *(a1 + 48) + *(v37 + 72) * (v20 | (v18 << 6)), v6);
      (*(v21 + 32))(v9, v22, v6);
      v23 = (*(v21 + 88))(v9, v6);
      if (v23 == v38)
      {
        break;
      }

      result = (*v33)(v9, v6);
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    (*v32)(v9, v6);
    v24 = *v9;
    v25 = *(v24 + 16);
    v26 = i;
    if (v25)
    {
      v27 = (v24 + 40);
      while (1)
      {
        v28 = *(v27 - 1) == a2 && *v27 == v26;
        if (v28 || (sub_23EDC2240() & 1) != 0)
        {
          break;
        }

        v27 += 2;
        if (!--v25)
        {
          goto LABEL_19;
        }
      }

      v30 = 1;
    }

    else
    {
LABEL_19:
    }

    v6 = v35;
    a1 = v36;
  }

LABEL_6:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v30 & 1;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_23ED7FB48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_23ED71DA8((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

void sub_23ED7FB98(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (*(*a1 + 16) && (v10 = sub_23ED9C888(a2), (v11 & 1) != 0) && (sub_23ED71DA8(*(v9 + 56) + 32 * v10, v16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v15;
  }

  else
  {
    v12 = MEMORY[0x277D84F98];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v12;

  sub_23ED7FCCC(a4, a5, a3, isUniquelyReferenced_nonNull_native, v16);
  v14 = v16[0];
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
  v16[0] = v14;
  sub_23ED88AE4(v16, a2);
}

_OWORD *sub_23ED7FCCC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888B8, &unk_23EDC4ED0);
  v30 = v10;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a5;
  v13 = sub_23ED9C888(a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return sub_23ED7BB70(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v16, a4 & 1);
  v22 = sub_23ED9C888(a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_23ED80748(v13, a3, *v26, v26[1], v19);
  v28 = a3;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v29);
}

_OWORD *sub_23ED7FEB4(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v23 = MEMORY[0x277D83B88];
  *&v22 = a1;
  v7 = *a4;
  v9 = sub_23ED9C888(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *a4;
    if (v13)
    {
LABEL_8:
      v16 = (v15[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return sub_23ED7BB70(&v22, v16);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v12, a3 & 1);
  v18 = sub_23ED9C888(a2);
  if ((v13 & 1) != (v19 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v9 = v18;
  v15 = *a4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v20 = __swift_mutable_project_boxed_opaque_existential_0(&v22, MEMORY[0x277D83B88]);
  sub_23ED807F4(v9, a2, *v20, v15);
  v21 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v22);
}

_OWORD *sub_23ED7FFF0(int a1, void *a2, char a3, uint64_t *a4)
{
  v23 = MEMORY[0x277D84CC0];
  LODWORD(v22) = a1;
  v7 = *a4;
  v9 = sub_23ED9C888(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *a4;
    if (v13)
    {
LABEL_8:
      v16 = (v15[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return sub_23ED7BB70(&v22, v16);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v12, a3 & 1);
  v18 = sub_23ED9C888(a2);
  if ((v13 & 1) != (v19 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v9 = v18;
  v15 = *a4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v20 = __swift_mutable_project_boxed_opaque_existential_0(&v22, MEMORY[0x277D84CC0]);
  sub_23ED80908(v9, a2, *v20, v15);
  v21 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v22);
}

_OWORD *sub_23ED8012C(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  type metadata accessor for CFString(0);
  v9 = v8;
  v29 = v8;
  *&v28 = a1;
  v10 = *a4;
  v12 = sub_23ED9C888(a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a3 & 1) != 0)
  {
LABEL_7:
    v18 = *a4;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      return sub_23ED7BB70(&v28, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v15, a3 & 1);
  v21 = sub_23ED9C888(a2);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a4;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v9);
  MEMORY[0x28223BE20](v23);
  v25 = (&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_23ED80874(v12, a2, *v25, v18);
  v27 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v28);
}

_OWORD *sub_23ED80300(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t *a5)
{
  *&v27 = a1;
  v8 = MEMORY[0x277D837D0];
  v28 = MEMORY[0x277D837D0];
  *(&v27 + 1) = a2;
  v9 = *a5;
  v11 = sub_23ED9C888(a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_23ED7BB70(&v27, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v14, a4 & 1);
  v20 = sub_23ED9C888(a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v27, v8);
  MEMORY[0x28223BE20](v22);
  v24 = (&v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  sub_23ED80988(v11, a3, *v24, v24[1], v17);
  v26 = a3;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v27);
}

_OWORD *sub_23ED804D4(void *a1, char a2, uint64_t *a3, double a4)
{
  v23 = MEMORY[0x277D839F8];
  v22[0] = a4;
  v7 = *a3;
  v9 = sub_23ED9C888(a1);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a2 & 1) != 0)
  {
LABEL_7:
    v15 = *a3;
    if (v13)
    {
LABEL_8:
      v16 = (v15[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return sub_23ED7BB70(v22, v16);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v12, a2 & 1);
  v18 = sub_23ED9C888(a1);
  if ((v13 & 1) != (v19 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v9 = v18;
  v15 = *a3;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v20 = __swift_mutable_project_boxed_opaque_existential_0(v22, MEMORY[0x277D839F8]);
  sub_23ED80A8C(v9, a1, v15, *v20);
  v21 = a1;
  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

_OWORD *sub_23ED8060C(char a1, void *a2, char a3, uint64_t *a4)
{
  v23 = MEMORY[0x277D839B0];
  LOBYTE(v22) = a1;
  v7 = *a4;
  v9 = sub_23ED9C888(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *a4;
    if (v13)
    {
LABEL_8:
      v16 = (v15[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return sub_23ED7BB70(&v22, v16);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v12, a3 & 1);
  v18 = sub_23ED9C888(a2);
  if ((v13 & 1) != (v19 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v9 = v18;
  v15 = *a4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v20 = __swift_mutable_project_boxed_opaque_existential_0(&v22, MEMORY[0x277D839B0]);
  sub_23ED80A0C(v9, a2, *v20, v15);
  v21 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v22);
}

_OWORD *sub_23ED80748(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888B8, &unk_23EDC4ED0);
  *&v14 = a3;
  *(&v14 + 1) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  *(a5[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v14, (a5[7] + 32 * a1));
  v11 = a5[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v13;
  }

  return result;
}

_OWORD *sub_23ED807F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = MEMORY[0x277D83B88];
  *&v9 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v9, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_23ED80874(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for CFString(0);
  v14 = v8;
  *&v13 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v13, (a4[7] + 32 * a1));
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_23ED80908(unint64_t a1, uint64_t a2, int a3, void *a4)
{
  v10 = MEMORY[0x277D84CC0];
  LODWORD(v9) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v9, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_23ED80988(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v10 = a3;
  v11 = MEMORY[0x277D837D0];
  *(&v10 + 1) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  *(a5[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v10, (a5[7] + 32 * a1));
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

_OWORD *sub_23ED80A0C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v9, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_23ED80A8C(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  v10 = MEMORY[0x277D839F8];
  v9[0] = a4;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(v9, (a3[7] + 32 * a1));
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

id sub_23ED80B0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_23ED71DA8(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_23ED7BB70(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_23ED6FA68(&v18, &qword_27E388898, &unk_23EDC4EA8);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23ED80C5C(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 < 1 || a2 < 1 || a3 <= 0.0)
  {
    sub_23ED83D68();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v3 = a1 * a1;
  if ((a1 * a1) >> 64 == (a1 * a1) >> 63)
  {
    v4 = a2 * a2;
    if ((a2 * a2) >> 64 == (a2 * a2) >> 63)
    {
      v5 = __OFADD__(v3, v4);
      v6 = v3 + v4;
      if (!v5)
      {
        sqrt(v6 / 1872.0);
        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

IOSurfaceRef sub_23ED80D20(uint64_t a1, uint64_t a2, CGColorSpaceRef space)
{
  v5 = CGColorSpaceCopyPropertyList(space);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388710, &qword_23EDC4CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4D80;
  v7 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  v8 = MEMORY[0x277D83B88];
  *(inited + 40) = a1;
  v9 = *MEMORY[0x277CD2A28];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = a2;
  v10 = *MEMORY[0x277CD2A70];
  *(inited + 104) = v8;
  *(inited + 112) = v10;
  v11 = MEMORY[0x277D84CC0];
  *(inited + 120) = 1111970369;
  v12 = *MEMORY[0x277CD2960];
  *(inited + 144) = v11;
  *(inited + 152) = v12;
  *(inited + 184) = v8;
  *(inited + 160) = 4;
  v13 = v7;
  v14 = v9;
  v15 = v10;
  v16 = v12;
  sub_23ED79F84(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886C0, &qword_23EDC4CB0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_23ED83E0C();
  v17 = sub_23EDC1890();

  v18 = IOSurfaceCreate(v17);

  if (!v18)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    v19 = *MEMORY[0x277CD29C0];
    v20 = v18;
    IOSurfaceSetValue(v20, v19, v5);

LABEL_4:
    swift_unknownObjectRelease();
  }

  return v18;
}

unint64_t sub_23ED80ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388860, &unk_23EDC4E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4860;
  v1 = *MEMORY[0x277CD3330];
  *(inited + 32) = *MEMORY[0x277CD3330];
  v2 = swift_initStackObject();
  v3 = *MEMORY[0x277CD3310];
  *(v2 + 32) = *MEMORY[0x277CD3310];
  *(v2 + 16) = xmmword_23EDC4D80;
  v4 = MEMORY[0x277D83B88];
  *(v2 + 40) = 0;
  v5 = *MEMORY[0x277CD3320];
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  v6 = *MEMORY[0x277CD3328];
  type metadata accessor for CFString(0);
  v7 = MEMORY[0x277CD3300];
  *(v2 + 80) = v6;
  v8 = *v7;
  *(v2 + 104) = v9;
  *(v2 + 112) = v8;
  v10 = MEMORY[0x277D839B0];
  *(v2 + 120) = 1;
  v11 = *MEMORY[0x277CD3318];
  *(v2 + 144) = v10;
  *(v2 + 152) = v11;
  v12 = *MEMORY[0x277CD36C0];
  *(v2 + 184) = v9;
  *(v2 + 160) = v12;
  v13 = v1;
  v14 = v3;
  v15 = v5;
  v16 = v6;
  v17 = v8;
  v18 = v11;
  v19 = v12;
  v20 = sub_23ED7A3B4(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886D0, &qword_23EDC4CC0);
  swift_arrayDestroy();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
  *(inited + 40) = v20;
  v21 = sub_23ED7A3B4(inited);
  swift_setDeallocating();
  sub_23ED6FA68(inited + 32, &qword_27E3886D0, &qword_23EDC4CC0);
  return v21;
}

void sub_23ED810AC(uint64_t *result, void *a2, unint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v6 = sub_23ED9C888(a2);
    if (v7)
    {
      sub_23ED71DA8(*(v3 + 56) + 32 * v6, &v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
      if (swift_dynamicCast())
      {
        v16 = v8;
        if (a3 >> 62)
        {
          v9 = sub_23EDC1FE0();
          if (v9)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9)
          {
LABEL_6:
            if (v9 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v9; ++i)
            {
              if ((a3 & 0xC000000000000001) != 0)
              {
                v11 = MEMORY[0x23EF23C50](i, a3);
              }

              else
              {
                v11 = *(a3 + 8 * i + 32);
              }

              v12 = v11;
              v13 = sub_23ED9C888(v11);
              if (v14)
              {
                v15 = v13;
                if (!swift_isUniquelyReferenced_nonNull_native())
                {
                  sub_23ED795C8();
                }

                sub_23ED7BB70((*(v17 + 56) + 32 * v15), &v18);
                sub_23ED900BC(v15, v17);
              }

              else
              {

                v18 = 0u;
                v19 = 0u;
              }

              sub_23ED6FA68(&v18, &qword_27E3888A8, &qword_23EDC4EC0);
            }
          }
        }

        *(&v19 + 1) = v16;
        *&v18 = v17;
        sub_23ED88AE4(&v18, a2);
      }
    }
  }
}

void sub_23ED81294(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23ED80ED8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = *a1;
  sub_23ED82C80(v7, sub_23ED7FB48, 0, isUniquelyReferenced_nonNull_native, v27);

  *a1 = v27[0];
  v9 = *MEMORY[0x277CD3410];
  v28 = MEMORY[0x277D84CC0];
  LODWORD(v27[0]) = 1;
  sub_23ED88AE4(v27, v9);
  v10 = sub_23EDC19A0();
  sub_23ED7FB98(a1, *MEMORY[0x277CD33B0], v10, a2, a3);
  v11 = sub_23EDC19A0();
  v12 = *MEMORY[0x277CD2F50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888A0, &qword_23EDC4EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4D90;
  *(inited + 32) = v11;
  v14 = v11;
  sub_23ED810AC(a1, v12, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = *MEMORY[0x277CD3458];
  v16 = MEMORY[0x277D839B0];
  v28 = MEMORY[0x277D839B0];
  LOBYTE(v27[0]) = 1;
  sub_23ED88AE4(v27, v15);
  v17 = *MEMORY[0x277CD3360];
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23EDC4DA0;
  v19 = *MEMORY[0x277CD36B0];
  *(v18 + 32) = *MEMORY[0x277CD36B0];
  v20 = *MEMORY[0x277CD36B8];
  *(v18 + 40) = *MEMORY[0x277CD36B8];
  v21 = v19;
  v22 = v20;
  *(v18 + 48) = sub_23EDC19A0();
  sub_23ED810AC(a1, v17, v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = *MEMORY[0x277CD2CD8];
  v28 = v16;
  LOBYTE(v27[0]) = 1;
  v24 = v23;
  sub_23ED88AE4(v27, v24);
  if ((a4 & 0x100000000) == 0)
  {
    v25 = *MEMORY[0x277CD2D48];
    v28 = MEMORY[0x277D83A90];
    LODWORD(v27[0]) = a4;
    sub_23ED88AE4(v27, v25);
  }

  v28 = v16;
  LOBYTE(v27[0]) = 1;
  sub_23ED88AE4(v27, v24);
}

void sub_23ED81580(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v6 = *MEMORY[0x277CD3038];
    v7 = sub_23ED9C888(*MEMORY[0x277CD3038]);
    if (v8)
    {
      sub_23ED71DA8(*(v3 + 56) + 32 * v7, &v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
      if (swift_dynamicCast())
      {
        v10 = v20;
        v11 = *MEMORY[0x277CD3110];
        v12 = MEMORY[0x277D83B88];
        v23 = MEMORY[0x277D83B88];
        *&v22 = a2;
        sub_23ED7BB70(&v22, &v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v10;
        v14 = __swift_mutable_project_boxed_opaque_existential_0(&v20, v21);
        sub_23ED7FEB4(*v14, v11, isUniquelyReferenced_nonNull_native, &v19);
        __swift_destroy_boxed_opaque_existential_0Tm(&v20);
        v15 = v19;
        v16 = *MEMORY[0x277CD3118];
        v23 = v12;
        *&v22 = a3;
        sub_23ED7BB70(&v22, &v20);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v19 = v15;
        v18 = __swift_mutable_project_boxed_opaque_existential_0(&v20, v21);
        sub_23ED7FEB4(*v18, v16, v17, &v19);
        __swift_destroy_boxed_opaque_existential_0Tm(&v20);
        v23 = v9;
        *&v22 = v19;
        sub_23ED88AE4(&v22, v6);
      }
    }
  }
}

uint64_t sub_23ED81728(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  if (a1 <= 0.0 || a2 <= 0.0 || (v8 = [objc_opt_self() degrees], sub_23EDC0D90(), v8, sub_23EDC0D70(), v10 = v9, (*(v5 + 8))(v7, v4), v10 > 1.0) && v10 >= 180.0)
  {
    sub_23ED83D68();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_23EDC11B0();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888B0, &qword_23EDC4EC8);
    result = swift_allocObject();
    *(result + 16) = xmmword_23EDC4DB0;
    *(result + 32) = v12;
    *(result + 40) = 0;
    *(result + 48) = a1 * 0.5;
    *(result + 56) = 0;
    *(result + 64) = v12;
    *(result + 72) = a2 * 0.5;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0x3FF0000000000000;
  }

  return result;
}

uint64_t sub_23ED8191C(uint64_t a1, int a2)
{
  v17 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = objc_opt_self();
  v7 = [v6 meters];
  sub_23EDC0D90();

  sub_23EDC0D70();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v9 <= 0.0)
  {
    sub_23ED83D68();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v11 = [v6 meters];
    sub_23EDC0D90();

    sub_23EDC0D70();
    v13 = v12;
    v10(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888B0, &qword_23EDC4EC8);
    result = swift_allocObject();
    *(result + 16) = xmmword_23EDC4870;
    v15 = -(v13 * 0.5);
    if (v17)
    {
      v15 = v13 * 0.5;
    }

    *(result + 32) = v15;
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  return result;
}

void sub_23ED81B34(uint64_t *a1)
{
  v2 = *MEMORY[0x277CD33B0];
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_23ED9C888(*MEMORY[0x277CD33B0]), (v5 & 1) != 0) && (sub_23ED71DA8(*(v3 + 56) + 32 * v4, &v24), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90), swift_dynamicCast()))
  {
    v6 = v22;
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = sub_23EDC19A0();
  v8 = sub_23EDC19A0();
  sub_23EDA89EC();
  if (v1)
  {
  }

  else
  {
    v25 = MEMORY[0x277D84CC0];
    LODWORD(v24) = 5242880;
    sub_23ED7BB70(&v24, &v22);
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v6;
    v11 = __swift_mutable_project_boxed_opaque_existential_0(&v22, v23);
    sub_23ED7FFF0(*v11, v9, isUniquelyReferenced_nonNull_native, &v26);

    __swift_destroy_boxed_opaque_existential_0Tm(&v22);
    v12 = v26;
    v13 = v8;
    v14 = sub_23EDC19A0();

    type metadata accessor for CFString(0);
    v25 = v15;
    *&v24 = v14;
    sub_23ED7BB70(&v24, &v22);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    v17 = __swift_mutable_project_boxed_opaque_existential_0(&v22, v23);
    MEMORY[0x28223BE20](v17);
    v19 = (&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    sub_23ED8012C(*v19, v13, v16, &v26);

    __swift_destroy_boxed_opaque_existential_0Tm(&v22);
    v21 = v26;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
    *&v24 = v21;
    sub_23ED88AE4(&v24, v2);
  }
}

uint64_t sub_23ED81E0C()
{
  v0 = sub_23EDC0EF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23EDC0EE0();
  v4 = sub_23EDC0ED0();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v20 = 0;
  v21 = 0xE000000000000000;
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v16 = v4;
  v17 = v6;
  v18 = 0;
  v19 = v7;
  v8 = sub_23EDC1A80();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      if ((v10 != 45 || v11 != 0xE100000000000000) && (sub_23EDC2240() & 1) == 0)
      {
        MEMORY[0x23EF237C0](v10, v11);
      }

      v10 = sub_23EDC1A80();
      v11 = v12;
    }

    while (v12);
    v14 = v20;
    v13 = v21;
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD000000000000014, 0x800000023EDCA810);
  MEMORY[0x23EF237D0](49, 0xE100000000000000);
  MEMORY[0x23EF237D0](0xD000000000000017, 0x800000023EDCA830);
  MEMORY[0x23EF237D0](0xD00000000000001BLL, 0x800000023EDCA7F0);
  MEMORY[0x23EF237D0](0xD000000000000011, 0x800000023EDCA850);
  MEMORY[0x23EF237D0](v14, v13);
  MEMORY[0x23EF237D0](0xD000000000000014, 0x800000023EDCA870);
  MEMORY[0x23EF237D0](0xD000000000000018, 0x800000023EDCA890);
  MEMORY[0x23EF237D0](0xD00000000000001BLL, 0x800000023EDCA7F0);
  MEMORY[0x23EF237D0](0xD000000000000013, 0x800000023EDCA8B0);
  MEMORY[0x23EF237D0](v14, v13);

  MEMORY[0x23EF237D0](0xD000000000000015, 0x800000023EDCA8D0);
  MEMORY[0x23EF237D0](2105355298, 0xE400000000000000);
  return v16;
}

uint64_t sub_23ED820C4()
{
  v0 = sub_23EDC1430();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23EDC1480();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = sub_23EDC1440();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D36C90];
  v16 = *(v12 + 104);
  v40 = v17;
  v16(v14, v15);
  sub_23EDC1460();
  (*(v5 + 32))(v10, v8, v4);
  sub_23EDC1450();
  v18 = (*(v1 + 88))(v3, v0);
  if (v18 == *MEMORY[0x277D36C78])
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v19 = sub_23EDC1790();
    __swift_project_value_buffer(v19, qword_27E3897E8);
    v20 = sub_23EDC1770();
    v21 = sub_23EDC1D60();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_16;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Comment not yet available";
LABEL_15:
    _os_log_impl(&dword_23ED67000, v20, v21, v23, v22, 2u);
    MEMORY[0x23EF24B30](v22, -1, -1);
LABEL_16:

    (*(v5 + 8))(v10, v4);
    (*(v12 + 8))(v14, v40);
LABEL_17:
    v26 = 0;
    return v26 & 1;
  }

  if (v18 == *MEMORY[0x277D36C70] || v18 == *MEMORY[0x277D36C80])
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v25 = sub_23EDC1790();
    __swift_project_value_buffer(v25, qword_27E3897E8);
    v20 = sub_23EDC1770();
    v21 = sub_23EDC1D60();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_16;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Comment not eligible";
    goto LABEL_15;
  }

  if (v18 != *MEMORY[0x277D36C88])
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v33 = sub_23EDC1790();
    __swift_project_value_buffer(v33, qword_27E3897E8);
    v34 = sub_23EDC1770();
    v35 = sub_23EDC1D60();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = v35;
      v38 = v36;
      _os_log_impl(&dword_23ED67000, v34, v37, "Comment unknown eligibility result", v36, 2u);
      MEMORY[0x23EF24B30](v38, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    (*(v12 + 8))(v14, v40);
    (*(v1 + 8))(v3, v0);
    goto LABEL_17;
  }

  v28 = sub_23EDC1470();
  v26 = sub_23ED7F86C(v28, 20035, 0xE200000000000000);

  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v29 = sub_23EDC1790();
  __swift_project_value_buffer(v29, qword_27E3897E8);
  v30 = sub_23EDC1770();
  v31 = sub_23EDC1D60();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = v26 & 1;
    _os_log_impl(&dword_23ED67000, v30, v31, "Comment eligible: %{BOOL}d", v32, 8u);
    MEMORY[0x23EF24B30](v32, -1, -1);
  }

  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v14, v40);
  return v26 & 1;
}

void sub_23ED82844(uint64_t *a1)
{
  if (sub_23ED820C4())
  {
    v2 = *MEMORY[0x277CD3038];
    v3 = *a1;
    if (*(*a1 + 16) && (v4 = sub_23ED9C888(*MEMORY[0x277CD3038]), (v5 & 1) != 0) && (sub_23ED71DA8(*(v3 + 56) + 32 * v4, &v20), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90), swift_dynamicCast()))
    {
      v6 = v18;
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    v7 = *MEMORY[0x277CD3198];
    v8 = sub_23ED81E0C();
    v21 = MEMORY[0x277D837D0];
    *&v20 = v8;
    *(&v20 + 1) = v9;
    sub_23ED7BB70(&v20, &v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v6;
    v11 = __swift_mutable_project_boxed_opaque_existential_0(&v18, v19);
    MEMORY[0x28223BE20](v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    sub_23ED80300(*v13, v13[1], v7, isUniquelyReferenced_nonNull_native, &v17);
    __swift_destroy_boxed_opaque_existential_0Tm(&v18);
    v15 = v17;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
    *&v20 = v15;
    sub_23ED88AE4(&v20, v2);
  }
}

uint64_t sub_23ED82A44(uint64_t *a1)
{
  v2 = *MEMORY[0x277CD3038];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888A0, &qword_23EDC4EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4D90;
  v4 = *MEMORY[0x277CD3178];
  *(inited + 32) = *MEMORY[0x277CD3178];
  v5 = v4;
  sub_23ED810AC(a1, v2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_23ED8FA88(*MEMORY[0x277CD3458], &v16);
  sub_23ED6FA68(&v16, &qword_27E3888A8, &qword_23EDC4EC0);
  sub_23ED8FA88(*MEMORY[0x277CD3258], &v16);
  sub_23ED6FA68(&v16, &qword_27E3888A8, &qword_23EDC4EC0);
  v6 = *MEMORY[0x277CD3410];
  v17 = MEMORY[0x277D84CC0];
  LODWORD(v16) = 1;
  sub_23ED88AE4(&v16, v6);
  v7 = sub_23EDC19A0();
  v8 = *MEMORY[0x277CD33B0];
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_23EDC4D90;
  *(v9 + 32) = v7;
  v10 = v7;
  sub_23ED810AC(a1, v8, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  v11 = sub_23EDC19A0();
  v12 = *MEMORY[0x277CD2F50];
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_23EDC4D90;
  *(v13 + 32) = v11;
  v14 = v11;
  sub_23ED810AC(a1, v12, v13);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

unint64_t sub_23ED82C80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_23ED80B0C(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_23ED7BB70(v41, v39);
  v13 = *a5;
  result = sub_23ED9C888(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_23ED77818(v19, a4 & 1);
    result = sub_23ED9C888(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_23ED795C8();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    sub_23ED7BB70(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_23ED7BB70(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_23ED80B0C(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_23ED7BB70(v41, v39);
        v30 = *a5;
        result = sub_23ED9C888(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_23ED77818(v34, 1);
          result = sub_23ED9C888(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          sub_23ED7BB70(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_23ED7BB70(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_23ED80B0C(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_23ED73F0C(v42);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_23ED82F60(CGImageDestination *a1, CGImage *a2, CGImage *a3, uint64_t a4, uint64_t a5)
{
  v172 = a1;
  v173 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v130 - v11;
  Width = CGImageGetWidth(a2);
  if (Width != CGImageGetWidth(a3) || (Height = CGImageGetHeight(a2), Height != CGImageGetHeight(a3)))
  {
    sub_23ED83D68();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v171 = a3;
  v15 = type metadata accessor for StereoProperties(0);
  if (qword_27E388178 != -1)
  {
    swift_once();
  }

  sub_23EDC0D90();
  sub_23EDC0D70();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  v18 = round(v17 * 1000000.0);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v19 = CGImageGetWidth(a2);
  v20 = CGImageGetHeight(a2);
  v21 = a5;
  v22 = sub_23ED81728(v19, v20);
  if (!v5)
  {
    v23 = v22;
    v24 = v15;
    v25 = *(v15 + 24);
    v26 = sub_23ED8191C(v21 + v25, 0);
    v27 = sub_23ED8191C(v21 + v25, 1);
    v150 = v26;
    v165 = v18;
    v161 = v27;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388858, &qword_23EDC4E48);
    inited = swift_initStackObject();
    v168 = inited;
    v159 = xmmword_23EDC4870;
    *(inited + 1) = xmmword_23EDC4870;
    v29 = *MEMORY[0x277CD3330];
    inited[4] = *MEMORY[0x277CD3330];
    v156 = v29;
    v157 = inited + 4;
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388860, &unk_23EDC4E50);
    v30 = swift_initStackObject();
    v164 = v23;
    v31 = v30;
    v158 = xmmword_23EDC4D80;
    v32 = *MEMORY[0x277CD3310];
    *(v30 + 32) = *MEMORY[0x277CD3310];
    *&v170 = v30 + 32;
    *(v30 + 16) = xmmword_23EDC4D80;
    v33 = MEMORY[0x277D83B88];
    *(v30 + 40) = 0;
    v162 = v21;
    v163 = v24;
    v34 = *MEMORY[0x277CD3320];
    *(v30 + 64) = v33;
    *(v30 + 72) = v34;
    v35 = v33;
    v36 = *MEMORY[0x277CD3328];
    type metadata accessor for CFString(0);
    v166 = v37;
    *(v31 + 80) = v36;
    v169 = *MEMORY[0x277CD32F8];
    v38 = v169;
    *(v31 + 104) = v37;
    *(v31 + 112) = v38;
    v39 = MEMORY[0x277D839B0];
    v40 = MEMORY[0x277CD32F0];
    *(v31 + 120) = 1;
    v41 = *v40;
    *(v31 + 144) = v39;
    *(v31 + 152) = v41;
    *(v31 + 184) = v35;
    *(v31 + 160) = v165;
    v42 = v156;
    v43 = v32;
    v44 = v34;
    v45 = v36;
    v46 = v41;
    v152 = v42;
    v156 = v43;
    v155 = v44;
    v153 = v45;
    v154 = v46;
    v47 = v169;
    v48 = sub_23ED7A3B4(v31);
    swift_setDeallocating();
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886D0, &qword_23EDC4CC0);
    swift_arrayDestroy();
    v149 = *MEMORY[0x277CD3360];
    v49 = v149;
    v50 = v168;
    v168[5] = v48;
    v50[6] = v49;
    v51 = swift_initStackObject();
    v170 = xmmword_23EDC4880;
    *(v51 + 16) = xmmword_23EDC4880;
    v52 = *MEMORY[0x277CD36B0];
    *(v51 + 32) = *MEMORY[0x277CD36B0];
    v136 = v51 + 32;
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388868, &qword_23EDC4E60);
    v53 = swift_initStackObject();
    *(v53 + 16) = v170;
    v54 = *MEMORY[0x277CD3688];
    *(v53 + 32) = *MEMORY[0x277CD3688];
    v55 = *MEMORY[0x277CD3690];
    *(v53 + 40) = v150;
    *(v53 + 48) = v55;
    *(v53 + 56) = &unk_2851646B0;
    v150 = v149;
    v56 = v52;
    v57 = v54;
    v58 = v55;
    v146 = v150;
    v148 = v56;
    v150 = v57;
    v149 = v58;
    v59 = sub_23ED7A4DC(v53);
    swift_setDeallocating();
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388870, &qword_23EDC4E68);
    swift_arrayDestroy();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388878, &unk_23EDC4E70);
    v145 = v60;
    *(v51 + 40) = v59;
    v142 = *MEMORY[0x277CD36B8];
    v61 = v142;
    *(v51 + 64) = v60;
    *(v51 + 72) = v61;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388710, &qword_23EDC4CF8);
    v62 = swift_initStackObject();
    *(v62 + 16) = v170;
    v63 = *MEMORY[0x277CD36A0];
    *(v62 + 32) = *MEMORY[0x277CD36A0];
    v137 = v62 + 32;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388880, &unk_23EDC4E80);
    v143 = v64;
    *(v62 + 40) = v164;
    v65 = *MEMORY[0x277CD36A8];
    *(v62 + 64) = v64;
    *(v62 + 72) = v65;
    v66 = *MEMORY[0x277CD3698];
    *(v62 + 104) = v166;
    *(v62 + 80) = v66;
    v142 = v142;
    v67 = v63;
    v68 = v65;
    v69 = v66;
    v139 = v142;
    v142 = v67;
    v141 = v68;
    v140 = v69;

    v70 = sub_23ED79F84(v62);
    swift_setDeallocating();
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886C0, &qword_23EDC4CB0);
    swift_arrayDestroy();
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388888, &qword_23EDC4E90);
    *(v51 + 104) = v137;
    *(v51 + 80) = v70;
    v71 = sub_23ED7A3B4(v51);
    swift_setDeallocating();
    swift_arrayDestroy();
    v72 = *MEMORY[0x277CD3380];
    v73 = v168;
    v168[7] = v71;
    v73[8] = v72;
    v74 = swift_initStackObject();
    *(v74 + 16) = v170;
    v75 = *MEMORY[0x277CD3378];
    *(v74 + 32) = *MEMORY[0x277CD3378];
    v131 = v74 + 32;
    v136 = 0x800000023EDCA760;
    v76 = MEMORY[0x277D837D0];
    v77 = MEMORY[0x277CD3388];
    *(v74 + 40) = 0xD000000000000022;
    *(v74 + 48) = 0x800000023EDCA760;
    v78 = *v77;
    *(v74 + 64) = v76;
    *(v74 + 72) = v78;
    *(v74 + 104) = v76;
    v134 = 0xD000000000000053;
    v135 = 0x800000023EDCA790;
    *(v74 + 80) = 0xD000000000000053;
    *(v74 + 88) = 0x800000023EDCA790;
    v79 = v72;
    v80 = v75;
    v81 = v78;
    v130 = v79;
    v133 = v80;
    v132 = v81;
    v82 = sub_23ED7A3B4(v74);
    swift_setDeallocating();
    swift_arrayDestroy();
    v83 = v168;
    v168[9] = v82;
    v84 = sub_23ED7A4F0(v83);
    swift_setDeallocating();
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388890, &qword_23EDC4E98);
    swift_arrayDestroy();
    v168 = sub_23ED767DC(v84);

    v85 = swift_initStackObject();
    *(v85 + 16) = v159;
    *(v85 + 32) = v152;
    v160 = v85 + 32;
    v86 = swift_allocObject();
    *(v86 + 16) = v158;
    v87 = v155;
    *(v86 + 32) = v156;
    *(v86 + 40) = 0;
    v88 = MEMORY[0x277D83B88];
    *(v86 + 64) = MEMORY[0x277D83B88];
    *(v86 + 72) = v87;
    *(v86 + 80) = v153;
    v89 = *MEMORY[0x277CD3308];
    v90 = v166;
    *(v86 + 104) = v166;
    *(v86 + 112) = v89;
    *(v86 + 120) = 1;
    v91 = v154;
    *(v86 + 144) = MEMORY[0x277D839B0];
    *(v86 + 152) = v91;
    *(v86 + 184) = v88;
    *(v86 + 160) = v165;
    v92 = v89;
    v93 = sub_23ED7A3B4(v86);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v94 = v146;
    *(v85 + 40) = v93;
    *(v85 + 48) = v94;
    v95 = swift_allocObject();
    *(v95 + 16) = v170;
    *(v95 + 32) = v148;
    v96 = swift_initStackObject();
    *(v96 + 16) = v170;
    *(v96 + 32) = v150;
    v97 = v149;
    *(v96 + 40) = v161;
    *(v96 + 48) = v97;
    *(v96 + 56) = &unk_2851646B0;
    v165 = sub_23ED7A4DC(v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v95 + 40) = v165;
    v98 = v139;
    *(v95 + 64) = v145;
    *(v95 + 72) = v98;
    v99 = swift_allocObject();
    *(v99 + 32) = v142;
    *(v99 + 16) = v170;
    *(v99 + 40) = v164;
    v100 = v140;
    v101 = v141;
    *(v99 + 64) = v143;
    *(v99 + 72) = v101;
    *(v99 + 104) = v90;
    *(v99 + 80) = v100;
    v102 = sub_23ED79F84(v99);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v95 + 104) = v137;
    *(v95 + 80) = v102;
    v103 = sub_23ED7A3B4(v95);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v104 = v130;
    *(v85 + 56) = v103;
    *(v85 + 64) = v104;
    v105 = swift_allocObject();
    *(v105 + 16) = v170;
    v106 = v132;
    *(v105 + 32) = v133;
    *(v105 + 40) = 0xD000000000000022;
    *(v105 + 48) = v136;
    v107 = MEMORY[0x277D837D0];
    *(v105 + 64) = MEMORY[0x277D837D0];
    *(v105 + 72) = v106;
    *(v105 + 104) = v107;
    v108 = v135;
    *(v105 + 80) = v134;
    *(v105 + 88) = v108;
    v109 = sub_23ED7A3B4(v105);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v85 + 72) = v109;
    v110 = sub_23ED7A4F0(v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    v111 = sub_23ED767DC(v110);

    v112 = v162 + *(v163 + 28);
    if (*(v112 + 8))
    {
      v113 = v173;
    }

    else
    {
      v114 = *v112;
      v115 = *MEMORY[0x277CD2D48];
      v178 = MEMORY[0x277D839F8];
      *&v177 = v114;
      sub_23ED7BB70(&v177, &v175);
      v116 = v173;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = v116;
      v118 = __swift_mutable_project_boxed_opaque_existential_0(&v175, v176);
      sub_23ED804D4(v115, isUniquelyReferenced_nonNull_native, &v174, *v118);
      __swift_destroy_boxed_opaque_existential_0Tm(&v175);
      v113 = v174;
    }

    v119 = *MEMORY[0x277CD2CD8];
    v178 = MEMORY[0x277D839B0];
    LOBYTE(v177) = 1;
    sub_23ED7BB70(&v177, &v175);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v174 = v113;
    v121 = __swift_mutable_project_boxed_opaque_existential_0(&v175, v176);
    sub_23ED8060C(*v121, v119, v120, &v174);
    __swift_destroy_boxed_opaque_existential_0Tm(&v175);
    v179 = v174;
    sub_23ED81B34(&v179);
    sub_23ED82A44(&v179);
    v122 = CGImageGetWidth(a2);
    v123 = CGImageGetHeight(a2);
    sub_23ED81580(&v179, v122, v123);
    sub_23ED82844(&v179);
    v124 = v179;
    swift_bridgeObjectRetain_n();
    v125 = swift_isUniquelyReferenced_nonNull_native();
    *&v177 = v124;
    sub_23ED82C80(v168, sub_23ED7FB48, 0, v125, &v177);

    v126 = swift_isUniquelyReferenced_nonNull_native();
    *&v177 = v124;
    sub_23ED82C80(v111, sub_23ED7FB48, 0, v126, &v177);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
    sub_23ED83E0C();
    v127 = sub_23EDC1890();

    v128 = v172;
    CGImageDestinationAddImage(v172, a2, v127);

    v129 = sub_23EDC1890();

    CGImageDestinationAddImage(v128, v171, v129);
  }
}

unint64_t sub_23ED83D68()
{
  result = qword_27E388850;
  if (!qword_27E388850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388850);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_23ED83E0C()
{
  result = qword_27E388360;
  if (!qword_27E388360)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388360);
  }

  return result;
}

unint64_t sub_23ED83EB0()
{
  result = qword_27E3888C0;
  if (!qword_27E3888C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3888C0);
  }

  return result;
}

uint64_t sub_23ED83F54(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v49 = a2;
  v51 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v13 = sub_23EDC1790();
  v14 = __swift_project_value_buffer(v13, qword_27E3897E8);
  v15 = v51 + 16;
  v16 = *(v51 + 16);
  v16(v12, v4, a1);
  v46 = v14;
  v17 = sub_23EDC1770();
  v18 = sub_23EDC1D70();
  v19 = os_log_type_enabled(v17, v18);
  v47 = v16;
  v48 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = v3;
    v21 = v20;
    v43 = swift_slowAlloc();
    v52 = v43;
    *v21 = 136315138;
    v16(v10, v12, a1);
    v22 = v4;
    v23 = v10;
    v24 = sub_23EDC1A00();
    v26 = v25;
    v45 = *(v51 + 8);
    v45(v12, a1);
    v27 = v24;
    v10 = v23;
    v4 = v22;
    v28 = sub_23ED713FC(v27, v26, &v52);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_23ED67000, v17, v18, "%s checking for cancellation", v21, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x23EF24B30](v29, -1, -1);
    MEMORY[0x23EF24B30](v21, -1, -1);
  }

  else
  {

    v45 = *(v51 + 8);
    v45(v12, a1);
  }

  result = (*(v49 + 8))(a1);
  if (result)
  {
    v31 = v47;
    v47(v50, v4, a1);
    v32 = sub_23EDC1770();
    v33 = sub_23EDC1D70();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v31;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52 = v36;
      *v35 = 136315138;
      v37 = v50;
      v34(v10, v50, a1);
      v38 = sub_23EDC1A00();
      v40 = v39;
      v45(v37, a1);
      v41 = sub_23ED713FC(v38, v40, &v52);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_23ED67000, v32, v33, "%s is in cancelled state; throwing CancellationError.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x23EF24B30](v36, -1, -1);
      MEMORY[0x23EF24B30](v35, -1, -1);
    }

    else
    {

      v45(v50, a1);
    }

    sub_23EDC1BB0();
    sub_23ED85994();
    swift_allocError();
    sub_23EDC1880();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23ED843DC(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22[-v8];
  v28 = 0;
  v23 = v7;
  v24 = v10;
  v25 = v1;
  v26 = &v28;
  sub_23EDC2080();
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v11 = sub_23EDC1790();
  __swift_project_value_buffer(v11, qword_27E3897E8);
  v12 = *(v3 + 16);
  v12(v9, v1, a1);
  v13 = sub_23EDC1770();
  v14 = sub_23EDC1D70();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27[0] = v16;
    *v15 = 136315394;
    v12(v6, v9, a1);
    v17 = sub_23EDC1A00();
    v19 = v18;
    (*(v3 + 8))(v9, a1);
    v20 = sub_23ED713FC(v17, v19, v27);

    *(v15 + 4) = v20;
    *(v15 + 12) = 1024;
    swift_beginAccess();
    *(v15 + 14) = v28;
    _os_log_impl(&dword_23ED67000, v13, v14, "%s isCancelled=%{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x23EF24B30](v16, -1, -1);
    MEMORY[0x23EF24B30](v15, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, a1);
  }

  swift_beginAccess();
  return v28;
}

uint64_t sub_23ED84734(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v41 = a2;
  v42 = a3;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v40 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v35[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35[-v13];
  v15 = sub_23EDC1D00();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23ED8589C(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_23ED8590C(v14);
  }

  v38 = v18;
  v39 = v4;
  (*(v16 + 32))(v18, v14, v15);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v20 = sub_23EDC1790();
  __swift_project_value_buffer(v20, qword_27E3897E8);
  v21 = *(v7 + 16);
  v21(v11, v41, a4);
  v22 = sub_23EDC1770();
  v23 = sub_23EDC1D70();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = v22;
    v25 = v24;
    v41 = swift_slowAlloc();
    v43 = v41;
    *v25 = 136315138;
    v36 = v23;
    v21(v40, v11, a4);
    v26 = sub_23EDC1A00();
    v28 = v27;
    (*(v7 + 8))(v11, a4);
    v29 = sub_23ED713FC(v26, v28, &v43);

    v30 = v25;
    *(v25 + 4) = v29;
    v31 = v37;
    _os_log_impl(&dword_23ED67000, v37, v36, "%s checking current task cancelled state", v30, 0xCu);
    v32 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x23EF24B30](v32, -1, -1);
    MEMORY[0x23EF24B30](v30, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, a4);
  }

  v33 = v38;
  v34 = sub_23EDC1CE0();
  result = (*(v16 + 8))(v33, v15);
  *v42 = v34 & 1;
  return result;
}

uint64_t sub_23ED84B20(uint64_t a1, void *a2, uint64_t a3)
{
  v39 = a2;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v38 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v33[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33[-v12];
  v14 = sub_23EDC1D00();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23ED8589C(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_23ED8590C(v13);
  }

  v36 = v17;
  v37 = v3;
  (*(v15 + 32))(v17, v13, v14);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v19 = sub_23EDC1790();
  __swift_project_value_buffer(v19, qword_27E3897E8);
  v20 = *(v6 + 16);
  v20(v10, v39, a3);
  v21 = sub_23EDC1770();
  v22 = sub_23EDC1D70();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v21;
    v24 = v23;
    v39 = swift_slowAlloc();
    v40 = v39;
    *v24 = 136315138;
    v34 = v22;
    v20(v38, v10, a3);
    v25 = sub_23EDC1A00();
    v27 = v26;
    (*(v6 + 8))(v10, a3);
    v28 = sub_23ED713FC(v25, v27, &v40);

    v29 = v24;
    *(v24 + 4) = v28;
    v30 = v35;
    _os_log_impl(&dword_23ED67000, v35, v34, "%s marking as cancelled", v29, 0xCu);
    v31 = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x23EF24B30](v31, -1, -1);
    MEMORY[0x23EF24B30](v29, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, a3);
  }

  v32 = v36;
  sub_23EDC1CF0();
  return (*(v15 + 8))(v32, v14);
}

uint64_t sub_23ED84EFC()
{
  v1 = atomic_load((v0 + 16));
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v2 = sub_23EDC1790();
  __swift_project_value_buffer(v2, qword_27E3897E8);

  v3 = sub_23EDC1770();
  v4 = sub_23EDC1D70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;

    v7 = sub_23EDC1A00();
    v9 = sub_23ED713FC(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v1 & 1;
    _os_log_impl(&dword_23ED67000, v3, v4, "%s isCancelled=%{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x23EF24B30](v6, -1, -1);
    MEMORY[0x23EF24B30](v5, -1, -1);
  }

  return v1 & 1;
}

void sub_23ED850A8()
{
  v1 = v0;
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v2 = sub_23EDC1790();
  __swift_project_value_buffer(v2, qword_27E3897E8);

  v3 = sub_23EDC1770();
  v4 = sub_23EDC1D70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;

    v7 = sub_23EDC1A00();
    v9 = sub_23ED713FC(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_23ED67000, v3, v4, "%s marking as cancelled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x23EF24B30](v6, -1, -1);
    MEMORY[0x23EF24B30](v5, -1, -1);
  }

  atomic_store(1u, (v1 + 16));
}

uint64_t sub_23ED85278()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3888C8, qword_23EDC4FF8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23ED85344()
{
  v0 = sub_23EDC1C60();
  v3 = type metadata accessor for WriteOnceReadMany(0, v0, v1, v2);
  sub_23EDB8E40(v3);
  return v5;
}

uint64_t sub_23ED853D4()
{
  v1 = v0;
  if (!sub_23ED85344())
  {
    goto LABEL_8;
  }

  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v2 = sub_23EDC1790();
  __swift_project_value_buffer(v2, qword_27E3897E8);

  v3 = sub_23EDC1770();
  v4 = sub_23EDC1D70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;

    v7 = sub_23EDC1A00();
    v9 = sub_23ED713FC(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_23ED67000, v3, v4, "%s checking captured task cancelled state", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x23EF24B30](v6, -1, -1);
    MEMORY[0x23EF24B30](v5, -1, -1);
  }

  isCancelled = swift_task_isCancelled();

  if (isCancelled)
  {
    v11 = 1;
  }

  else
  {
LABEL_8:
    v12 = v1[5];
    v13 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
    v11 = (*(v13 + 8))(v12, v13);
  }

  return v11 & 1;
}

uint64_t sub_23ED855C4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  result = sub_23ED85344();
  if (result)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v4 = sub_23EDC1790();
    __swift_project_value_buffer(v4, qword_27E3897E8);

    v5 = sub_23EDC1770();
    v6 = sub_23EDC1D70();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;

      v9 = sub_23EDC1A00();
      v11 = sub_23ED713FC(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_23ED67000, v5, v6, "%s cancelling capture task", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x23EF24B30](v8, -1, -1);
      MEMORY[0x23EF24B30](v7, -1, -1);
    }

    sub_23EDC1C50();
  }

  return result;
}

void *sub_23ED857AC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t sub_23ED857E4()
{
  sub_23ED857AC();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED8589C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED8590C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23ED85994()
{
  result = qword_27E388490;
  if (!qword_27E388490)
  {
    sub_23EDC1BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388490);
  }

  return result;
}

uint64_t sub_23ED859EC()
{
  if (*v0)
  {
    return 0x636E657265666E69;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_23ED85A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL;
  if (v6 || (sub_23EDC2240() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF65706963655265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23EDC2240();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23ED85B3C(uint64_t a1)
{
  v2 = sub_23ED85DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED85B78(uint64_t a1)
{
  v2 = sub_23ED85DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ALCInferenceInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388950, &qword_23EDC50C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED85DB4();
  sub_23EDC23A0();
  v8[15] = 0;
  sub_23EDC0EF0();
  sub_23ED8622C(&qword_27E388960, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_23EDC2190();
  if (!v1)
  {
    type metadata accessor for ALCInferenceInput(0);
    v8[14] = 1;
    type metadata accessor for InferenceRecipe(0);
    sub_23ED8622C(&qword_27E388968, type metadata accessor for InferenceRecipe, &unk_23EDC886C);
    sub_23EDC2190();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23ED85DB4()
{
  result = qword_27E388958;
  if (!qword_27E388958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388958);
  }

  return result;
}

uint64_t type metadata accessor for ALCInferenceInput(uint64_t a1)
{
  result = qword_27E3889F8;
  if (!qword_27E3889F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ALCInferenceInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for InferenceRecipe(0);
  MEMORY[0x28223BE20](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23EDC0EF0();
  v21 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388970, &qword_23EDC50C8);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ALCInferenceInput(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED85DB4();
  sub_23EDC2360();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_23ED8622C(&qword_27E388978, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v13 = v23;
  v14 = v25;
  sub_23EDC20F0();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_23ED8622C(&qword_27E388980, type metadata accessor for InferenceRecipe, &unk_23EDC8844);
  sub_23EDC20F0();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_23ED86274(v5, &v19[*(v18 + 20)]);
  sub_23ED862D8(v15, v20);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_23ED6FB2C(v15);
}

uint64_t sub_23ED8622C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23ED86274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED862D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ALCInferenceInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED8636C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A48, &qword_23EDC54F8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23EDC50A0;
  *(v4 + 32) = sub_23EDC1200();
  *(v4 + 40) = 2;
  *(v4 + 48) = sub_23EDC1210();
  *(v4 + 56) = 2;
  *(v4 + 64) = sub_23EDC11F0();
  *(v4 + 72) = 2;
  *(v4 + 80) = sub_23EDC11D0();
  *(v4 + 88) = 2;
  *(v4 + 96) = sub_23EDC11C0();
  *(v4 + 104) = 2;
  *(v4 + 112) = sub_23EDC11E0();
  *(v4 + 120) = 2;
  v5 = sub_23EDC1220();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a2 = v4;
  return result;
}

uint64_t sub_23ED86454()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = (v1 + 40);
    v4 = &qword_27E388A50;
    v5 = &qword_23EDC5500;
    v6 = (v1 + 40);
    do
    {
      v7 = *v6;
      v6 += 2;
      if (v7 == 2)
      {
        v8 = *(v3 - 1);
        IOSurface = CVPixelBufferGetIOSurface(v8);
        if (IOSurface)
        {
          v10 = IOSurface;
          __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
          sub_23EDC1830();
          v11 = IOSurfaceSetOwnershipIdentity();
          if (v11)
          {
            v12 = v11;
            if (qword_27E3881A0 != -1)
            {
              swift_once();
            }

            v13 = sub_23EDC1790();
            __swift_project_value_buffer(v13, qword_27E389818);
            v14 = sub_23EDC1770();
            v15 = sub_23EDC1D80();
            if (os_log_type_enabled(v14, v15))
            {
              v16 = v5;
              v17 = v4;
              v18 = swift_slowAlloc();
              *v18 = 67240192;
              *(v18 + 4) = v12;
              _os_log_impl(&dword_23ED67000, v14, v15, "ALCInferenceProvider unable to assign output surface ownership identity error: %{public}d", v18, 8u);
              v19 = v18;
              v4 = v17;
              v5 = v16;
              MEMORY[0x23EF24B30](v19, -1, -1);
            }
          }
        }
      }

      v3 = v6;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

uint64_t sub_23ED8665C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736567616D695FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23ED866F0(uint64_t a1)
{
  v2 = sub_23ED86908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED8672C(uint64_t a1)
{
  v2 = sub_23ED86908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ALCInferenceOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388988, &qword_23EDC50D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED86908();

  sub_23EDC23A0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388998, &qword_23EDC50D8);
  sub_23ED86D4C(&qword_27E3889A0, &qword_27E388998, &qword_23EDC50D8, &unk_23EDC78A8);
  sub_23EDC2190();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23ED86908()
{
  result = qword_27E388990;
  if (!qword_27E388990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388990);
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

uint64_t ALCInferenceOutput.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3889A8, &qword_23EDC50E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED86908();
  sub_23EDC2360();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388998, &qword_23EDC50D8);
    sub_23ED86D4C(&qword_27E3889B0, &qword_27E388998, &qword_23EDC50D8, &unk_23EDC7880);
    sub_23EDC20F0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_23ED86B90()
{
  result = qword_27E3889B8;
  if (!qword_27E3889B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889B8);
  }

  return result;
}

unint64_t sub_23ED86BE8()
{
  result = qword_27E3889C0;
  if (!qword_27E3889C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889C0);
  }

  return result;
}

unint64_t sub_23ED86C3C(uint64_t a1)
{
  result = sub_23ED86C64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23ED86C64()
{
  result = qword_27E3889C8;
  if (!qword_27E3889C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889C8);
  }

  return result;
}

uint64_t sub_23ED86D4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23ED86DA0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23ED86DD0(uint64_t a1)
{
  v2 = sub_23ED876CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED86E0C(uint64_t a1)
{
  v2 = sub_23ED876CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED86E70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A38, &qword_23EDC54F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED876CC();
  sub_23EDC23A0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23ED86F84@<X0>(__IOSurface *a1@<X1>, uint64_t a2@<X8>)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  result = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], a1, 0, v6);
  v4 = result;
  if (result || !v6[0])
  {
    sub_23ED87720();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = v6[0];
    *(a2 + 8) = 2;
  }

  return result;
}

unint64_t sub_23ED87054(uint64_t a1)
{
  *(a1 + 8) = sub_23ED87084();
  result = sub_23ED870D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23ED87084()
{
  result = qword_27E3889E8;
  if (!qword_27E3889E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889E8);
  }

  return result;
}

unint64_t sub_23ED870D8()
{
  result = qword_27E3889F0;
  if (!qword_27E3889F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3889F0);
  }

  return result;
}

uint64_t sub_23ED87140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23EDC0EF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for InferenceRecipe(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23ED87244(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23EDC0EF0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for InferenceRecipe(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23ED87340(uint64_t a1)
{
  result = sub_23EDC0EF0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InferenceRecipe(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23ED873D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23ED8742C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23ED874C0()
{
  result = qword_27E388A08;
  if (!qword_27E388A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A08);
  }

  return result;
}

unint64_t sub_23ED87518()
{
  result = qword_27E388A10;
  if (!qword_27E388A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A10);
  }

  return result;
}

unint64_t sub_23ED87570()
{
  result = qword_27E388A18;
  if (!qword_27E388A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A18);
  }

  return result;
}

unint64_t sub_23ED875C8()
{
  result = qword_27E388A20;
  if (!qword_27E388A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A20);
  }

  return result;
}

unint64_t sub_23ED87620()
{
  result = qword_27E388A28;
  if (!qword_27E388A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A28);
  }

  return result;
}

unint64_t sub_23ED87678()
{
  result = qword_27E388A30;
  if (!qword_27E388A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A30);
  }

  return result;
}

unint64_t sub_23ED876CC()
{
  result = qword_27E388A40;
  if (!qword_27E388A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A40);
  }

  return result;
}

unint64_t sub_23ED87720()
{
  result = qword_27E389030[0];
  if (!qword_27E389030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E389030);
  }

  return result;
}

unint64_t sub_23ED87788()
{
  result = qword_27E388A58;
  if (!qword_27E388A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A58);
  }

  return result;
}

unint64_t sub_23ED877E0()
{
  result = qword_27E388A60;
  if (!qword_27E388A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A60);
  }

  return result;
}

uint64_t sub_23ED87838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v60 - v4;
  v5 = sub_23EDC1810();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = (&v60 - v8);
  v9 = sub_23EDC17D0();
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23EDC1FC0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v71 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  v76[6] = a1;
  sub_23EDC0D50();
  swift_allocObject();
  v28 = sub_23EDC0D40();
  sub_23EDC1FB0();
  v74 = v27;
  sub_23ED6FA00(v27, v25, &qword_27E388470, &qword_23EDC5ED0);
  v29 = *(v12 + 6);
  v30 = v29(v25, 1, v11);
  v69 = v9;
  if (v30 == 1)
  {
    v31 = v12;
    sub_23ED6FA68(v25, &qword_27E388470, &qword_23EDC5ED0);
  }

  else
  {
    (*(v12 + 4))(v19, v25, v11);
    (*(v12 + 2))(v17, v19, v11);
    v76[3] = v9;
    __swift_allocate_boxed_opaque_existential_0(v76);
    sub_23EDC17C0();
    v32 = sub_23EDC0D20();
    sub_23ED889C8(v76, v17);
    v32(v75, 0);
    v31 = v12;
    (*(v12 + 1))(v19, v11);
  }

  sub_23ED9235C();
  v33 = v73;
  v34 = sub_23EDC0D10();
  v36 = v74;
  if (v33)
  {
    sub_23ED6FA68(v74, &qword_27E388470, &qword_23EDC5ED0);
  }

  v38 = v34;
  v39 = v35;
  v73 = v28;
  sub_23ED922EC(v34, v35);
  v61 = sub_23ED8F770(v38, v39, v38, v39);
  v40 = v71;
  sub_23ED6FA00(v36, v71, &qword_27E388470, &qword_23EDC5ED0);
  if (v29(v40, 1, v11) == 1)
  {
    v41 = &qword_27E388470;
    v42 = &qword_23EDC5ED0;
    v43 = v40;
  }

  else
  {
    v44 = v31;
    v45 = v31[4];
    v46 = v70;
    (v45)(v70, v40, v11);
    v47 = sub_23EDC0D30();
    if (*(v47 + 16) && (v48 = sub_23ED9C7E0(v46), (v49 & 1) != 0))
    {
      v71 = v11;
      sub_23ED71DA8(*(v47 + 56) + 32 * v48, v76);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      v50 = v67;
      v51 = v69;
      v52 = swift_dynamicCast();
      v53 = v68;
      (*(v68 + 56))(v50, v52 ^ 1u, 1, v51);
      if ((*(v53 + 48))(v50, 1, v51) != 1)
      {
        v54 = (*(v53 + 32))(v66, v50, v51);
        MEMORY[0x28223BE20](v54);
        *(&v60 - 2) = v61;
        v55 = v62;
        v67 = v44;
        v56 = v65;
        sub_23EDC17B0();
        v58 = v63;
        v57 = v64;
        (*(v64 + 16))(v63, v55, v56);
        (*(v57 + 56))(v58, 0, 1, v56);
        sub_23EDC14E0();
        swift_unknownObjectRelease();

        sub_23ED6F8AC(v38, v39);
        v59 = v55;
        v36 = v74;
        (*(v57 + 8))(v59, v56);
        (*(v53 + 8))(v66, v51);
        v67[1](v70, v71);
        return sub_23ED6FA68(v36, &qword_27E388470, &qword_23EDC5ED0);
      }

      v44[1](v70, v71);
    }

    else
    {

      v44[1](v46, v11);
      v50 = v67;
      (*(v68 + 56))(v67, 1, 1, v69);
    }

    v41 = &unk_27E389000;
    v42 = &qword_23EDC78D0;
    v43 = v50;
  }

  sub_23ED6FA68(v43, v41, v42);
  sub_23ED922EC(v38, v39);
  MEMORY[0x23EF23260](v38, v39);
  swift_unknownObjectRelease();

  sub_23ED6F8AC(v38, v39);
  return sub_23ED6FA68(v36, &qword_27E388470, &qword_23EDC5ED0);
}

uint64_t sub_23ED88118@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63[1] = a6;
  v77 = a4;
  v78 = a5;
  v75 = a2;
  v76 = a3;
  v79 = a1;
  v74 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = v63 - v8;
  v67 = sub_23EDC1810();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = v63 - v11;
  v12 = sub_23EDC17D0();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v63[0] = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23EDC1FC0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v63 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v73 = v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v63 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v63 - v29;
  sub_23EDC0D50();
  swift_allocObject();
  v31 = sub_23EDC0D40();
  sub_23EDC1FB0();
  v83 = v30;
  sub_23ED6FA00(v30, v28, &qword_27E388470, &qword_23EDC5ED0);
  v32 = *(v15 + 48);
  v33 = v32(v28, 1, v14);
  v72 = v12;
  v69 = v15;
  if (v33 == 1)
  {
    v34 = v14;
    sub_23ED6FA68(v28, &qword_27E388470, &qword_23EDC5ED0);
  }

  else
  {
    (*(v15 + 32))(v22, v28, v14);
    (*(v15 + 16))(v20, v22, v14);
    v82[3] = v12;
    __swift_allocate_boxed_opaque_existential_0(v82);
    sub_23EDC17C0();
    v35 = sub_23EDC0D20();
    sub_23ED889C8(v82, v20);
    v35(v81, 0);
    v34 = v14;
    (*(v15 + 8))(v22, v14);
  }

  v75(0);
  sub_23ED8F964(v76, 255, v77, v78);
  v36 = v80;
  v37 = sub_23EDC0D10();
  v39 = v83;
  if (v36)
  {
    sub_23ED6FA68(v83, &qword_27E388470, &qword_23EDC5ED0);
  }

  v41 = v37;
  v42 = v38;
  v80 = v31;
  sub_23ED922EC(v37, v38);
  v79 = sub_23ED8F770(v41, v42, v41, v42);
  v43 = v73;
  sub_23ED6FA00(v39, v73, &qword_27E388470, &qword_23EDC5ED0);
  v44 = v34;
  if (v32(v43, 1, v34) == 1)
  {
    v45 = &qword_27E388470;
    v46 = &qword_23EDC5ED0;
    v47 = v43;
  }

  else
  {
    v48 = v69;
    v49 = v70;
    (*(v69 + 32))(v70, v43, v44);
    v50 = sub_23EDC0D30();
    if (*(v50 + 16) && (v51 = sub_23ED9C7E0(v49), (v52 & 1) != 0))
    {
      v78 = v44;
      sub_23ED71DA8(*(v50 + 56) + 32 * v51, v82);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      v53 = v68;
      v54 = v72;
      v55 = swift_dynamicCast();
      v56 = v71;
      (*(v71 + 56))(v53, v55 ^ 1u, 1, v54);
      if ((*(v56 + 48))(v53, 1, v54) != 1)
      {
        v57 = v63[0];
        v58 = (*(v56 + 32))(v63[0], v53, v54);
        MEMORY[0x28223BE20](v58);
        v63[-2] = v79;
        v59 = v64;
        v60 = v67;
        sub_23EDC17B0();
        v61 = v66;
        v62 = v65;
        (*(v66 + 16))(v65, v59, v60);
        (*(v61 + 56))(v62, 0, 1, v60);
        sub_23EDC14E0();
        swift_unknownObjectRelease();

        sub_23ED6F8AC(v41, v42);
        (*(v61 + 8))(v59, v60);
        (*(v71 + 8))(v57, v72);
        v39 = v83;
        (*(v48 + 8))(v70, v78);
        return sub_23ED6FA68(v39, &qword_27E388470, &qword_23EDC5ED0);
      }

      (*(v48 + 8))(v49, v78);
    }

    else
    {

      (*(v48 + 8))(v49, v44);
      v53 = v68;
      (*(v71 + 56))(v68, 1, 1, v72);
    }

    v45 = &unk_27E389000;
    v46 = &qword_23EDC78D0;
    v47 = v53;
  }

  sub_23ED6FA68(v47, v45, v46);
  sub_23ED922EC(v41, v42);
  MEMORY[0x23EF23260](v41, v42);
  swift_unknownObjectRelease();

  sub_23ED6F8AC(v41, v42);
  return sub_23ED6FA68(v39, &qword_27E388470, &qword_23EDC5ED0);
}

uint64_t sub_23ED889C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23ED7BB70(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_23ED784A4(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_23EDC1FC0();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_23ED6FA68(a1, &qword_27E3888A8, &qword_23EDC4EC0);
    sub_23ED8F9AC(a2, v9);
    v7 = sub_23EDC1FC0();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_23ED6FA68(v9, &qword_27E3888A8, &qword_23EDC4EC0);
  }

  return result;
}

void sub_23ED88AE4(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_23ED7BB70(a1, &v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v5 = v13;
    v6 = __swift_mutable_project_boxed_opaque_existential_0(&v12, v13);
    MEMORY[0x28223BE20](v6);
    v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8);
    sub_23ED907D8(v8, a2, isUniquelyReferenced_nonNull_native, &v11, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(&v12);

    *v2 = v11;
  }

  else
  {
    sub_23ED6FA68(a1, &qword_27E3888A8, &qword_23EDC4EC0);
    sub_23ED8FA88(a2, &v12);

    sub_23ED6FA68(&v12, &qword_27E3888A8, &qword_23EDC4EC0);
  }
}

uint64_t sub_23ED88C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C48, &qword_23EDC9D30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_23EDC16D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_23ED6FA68(a1, &qword_27E388C48, &qword_23EDC9D30);
    sub_23ED8FC98(a2, a3, v9);

    return sub_23ED6FA68(v9, &qword_27E388C48, &qword_23EDC9D30);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_23ED78C58(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_23ED88E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C40, &qword_23EDC5ED8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_23ED6FA68(a1, &qword_27E388C40, &qword_23EDC5ED8);
    sub_23ED8FB28(a2, a3, v9);

    return sub_23ED6FA68(v9, &qword_27E388C40, &qword_23EDC5ED8);
  }

  else
  {
    sub_23ED7BA6C(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_23ED78AE8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_23ED89000(uint64_t a1)
{
  v2 = sub_23ED89648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED8903C(uint64_t a1)
{
  v2 = sub_23ED89648();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23ED89094()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_23ED890EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23ED91E44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23ED89120(uint64_t a1)
{
  v2 = sub_23ED895F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED8915C(uint64_t a1)
{
  v2 = sub_23ED895F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED89198(uint64_t a1)
{
  v2 = sub_23ED8969C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED891D4(uint64_t a1)
{
  v2 = sub_23ED8969C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED89210(uint64_t a1)
{
  v2 = sub_23ED896F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED8924C(uint64_t a1)
{
  v2 = sub_23ED896F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ALCInferenceProvider.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A68, &qword_23EDC55C0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A70, &qword_23EDC55C8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A78, &qword_23EDC55D0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A80, &qword_23EDC55D8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED895F4();
  sub_23EDC23A0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_23ED8969C();
      v9 = v21;
      sub_23EDC2140();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_23ED89648();
      v9 = v24;
      sub_23EDC2140();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_23ED896F0();
    sub_23EDC2140();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_23ED895F4()
{
  result = qword_27E388A88;
  if (!qword_27E388A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A88);
  }

  return result;
}

unint64_t sub_23ED89648()
{
  result = qword_27E388A90;
  if (!qword_27E388A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A90);
  }

  return result;
}

unint64_t sub_23ED8969C()
{
  result = qword_27E388A98;
  if (!qword_27E388A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388A98);
  }

  return result;
}

unint64_t sub_23ED896F0()
{
  result = qword_27E388AA0;
  if (!qword_27E388AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388AA0);
  }

  return result;
}

uint64_t ALCInferenceProvider.Error.hashValue.getter()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

uint64_t ALCInferenceProvider.Error.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AA8, &qword_23EDC55E0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AB0, &qword_23EDC55E8);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AB8, &qword_23EDC55F0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AC0, &qword_23EDC55F8);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED895F4();
  v13 = v43;
  sub_23EDC2360();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_23EDC2120();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_23ED8969C();
          v27 = v34;
          sub_23EDC2090();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_23ED89648();
          v31 = v34;
          sub_23EDC2090();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_23ED896F0();
        v29 = v34;
        sub_23EDC2090();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }
  }

  v21 = sub_23EDC1F30();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389020, &qword_23EDC5600);
  *v23 = &type metadata for ALCInferenceProvider.Error;
  sub_23EDC20A0();
  sub_23EDC1F10();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_23ED89D7C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23ED89DB0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23ED89E14()
{
  v1 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider35ALCModelOutputStreamIteratorWrapper_wrappedIterator;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C00, &qword_23EDC5E98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23ED89E98(uint64_t a1)
{
  v2[6] = a1;
  v3 = sub_23EDC1530();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = *v1;
  v2[10] = *v1;

  return MEMORY[0x2822009F8](sub_23ED89F5C, v4, 0);
}

uint64_t sub_23ED89F5C()
{
  v1 = v0[10];
  v2 = sub_23ED8F964(&qword_27E388BF8, 255, type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamIteratorWrapper, &unk_23EDC5D00);
  swift_beginAccess();
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C00, &qword_23EDC5E98);
  *v3 = v0;
  v3[1] = sub_23ED8A080;
  v5 = v0[6];

  return MEMORY[0x2822005A8](v5, v1, v2, v4, v0 + 5);
}

uint64_t sub_23ED8A080()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_23ED8A1C8, v4, 0);
  }

  else
  {
    swift_endAccess();

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_23ED8A1C8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  swift_endAccess();
  (*(v2 + 104))(v1, *MEMORY[0x277D29DB8], v3);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  swift_allocError();
  (*(v2 + 32))(v5, v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23ED8A300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v9 = sub_23EDC1530();
  v6[6] = v9;
  v6[7] = *(v9 - 8);
  v6[8] = swift_task_alloc();
  v10 = type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamIteratorWrapper(0);
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_23ED8A420;

  return MEMORY[0x282200308](a1, v10, a6);
}

uint64_t sub_23ED8A420()
{
  v2 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_23EDC1B90();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_23ED8A614;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_23EDC1B90();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_23ED8A5B0;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_23ED8A5B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8A614()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v0[2] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389010, &qword_23EDC58B0);
  swift_dynamicCast();
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23ED8A72C@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C00, &qword_23EDC5E98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B70, &unk_23EDC5930);
  sub_23EDC1C20();
  type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamIteratorWrapper(0);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_23ED9228C(v1, type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamWrapper);
  result = (*(v4 + 32))(v7 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider35ALCModelOutputStreamIteratorWrapper_wrappedIterator, v6, v3);
  *a1 = v7;
  return result;
}

uint64_t sub_23ED8A85C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C20, &qword_23EDC5EB8);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = sub_23EDC1510();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *a3;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v15 = sub_23EDC1790();
  __swift_project_value_buffer(v15, qword_27E389818);
  v16 = sub_23EDC1770();
  v17 = sub_23EDC1D60();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23ED67000, v16, v17, "ALCInferenceProvider received output", v18, 2u);
    MEMORY[0x23EF24B30](v18, -1, -1);
  }

  v23 = v14;
  sub_23ED86454();
  sub_23ED87838(v14, v13);
  (*(v8 + 16))(v11, v13, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  sub_23EDC1C90();
  (*(v21 + 8))(v6, v22);
  return (*(v8 + 8))(v13, v7);
}

void sub_23ED8AC44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C20, &qword_23EDC5EB8);
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v35 - v5;
  v6 = sub_23EDC1510();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v35 - v9;
  v10 = sub_23EDC13D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v14 = sub_23EDC1790();
  __swift_project_value_buffer(v14, qword_27E389818);
  v15 = *(v11 + 16);
  v41 = a3;
  v15(v13, a3, v10);
  v16 = sub_23EDC1770();
  v17 = sub_23EDC1D60();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v4;
    v19 = v18;
    *v18 = 134349056;
    sub_23EDC1340();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    *(v19 + 1) = v21;
    _os_log_impl(&dword_23ED67000, v16, v17, "ALCInferenceProvider received summary with actual focal length = %{public}f", v19, 0xCu);
    v4 = v35;
    MEMORY[0x23EF24B30](v19, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v22 = v42;
  v23 = v43;
  sub_23ED88118(v41, MEMORY[0x277CEA5A0], &qword_27E388C30, MEMORY[0x277CEA5A0], MEMORY[0x277CEA5A8], sub_23ED92340, v42);
  if (v23)
  {
    v24 = v23;
    v25 = sub_23EDC1770();
    v26 = sub_23EDC1D80();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_23ED67000, v25, v26, "ALCInferenceProvider got error from pipeline: %{public}@", v27, 0xCu);
      sub_23ED6FA68(v28, &unk_27E388D00, &unk_23EDC6730);
      MEMORY[0x23EF24B30](v28, -1, -1);
      MEMORY[0x23EF24B30](v27, -1, -1);
    }

    v44 = v23;
    v31 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
    sub_23EDC1CA0();
  }

  else
  {
    v32 = v37;
    v33 = v38;
    (*(v37 + 16))(v36, v22, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
    v34 = v39;
    sub_23EDC1C90();
    (*(v40 + 8))(v34, v4);
    (*(v32 + 8))(v22, v33);
  }
}

uint64_t sub_23ED8B198()
{
  v1 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider14OutputDelegate_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider14OutputDelegate_owning_task_id_token;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A50, &qword_23EDC5500);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23ED8B2B4()
{
  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD00000000000001FLL, 0x800000023EDCAC00);
  sub_23EDC0EF0();
  sub_23ED8F964(&qword_27E388AE0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v0);

  MEMORY[0x23EF237D0](0xD000000000000011, 0x800000023EDCAC20);
  v1 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v1);

  MEMORY[0x23EF237D0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_23ED8B400()
{
  sub_23ED6FA68(v0 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_continuation, &qword_27E388C18, &qword_23EDC5EB0);
  v1 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_operationID;
  v2 = sub_23EDC0EF0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_providerID, v2);
  sub_23ED9228C(v0 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_recipe, type metadata accessor for InferenceRecipe);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED8B5B8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_23ED8B5DC, v2, 0);
}

uint64_t sub_23ED8B5DC()
{
  v1 = v0[10];
  swift_beginAccess();
  v3 = *(v1 + 112);
  if (v3 >> 62)
  {
    if (sub_23EDC1FE0())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = v0[10];
    v5 = v0[8];
    sub_23ED8F964(&qword_27E388C08, v2, type metadata accessor for ALCInferenceProvider.InferenceJobQueue, &unk_23EDC5BDC);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_23ED8B91C;

    return MEMORY[0x2822007B8]();
  }

  swift_beginAccess();

  MEMORY[0x23EF23830](v8);
  if (*((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23EDC1B20();
  }

  sub_23EDC1B50();
  swift_endAccess();
  v9 = v0[10];
  v10 = swift_task_alloc();
  v0[13] = v10;
  v15 = *(v0 + 4);
  *(v10 + 16) = v15;
  *(v10 + 32) = sub_23ED91F70;
  *(v10 + 40) = v9;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v15;
  v11[3] = sub_23ED91F70;
  v11[4] = v9;
  sub_23ED8F964(&qword_27E388C08, v12, type metadata accessor for ALCInferenceProvider.InferenceJobQueue, &unk_23EDC5BDC);

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_23ED8BBC4;

  return MEMORY[0x282200830]();
}

uint64_t sub_23ED8B91C()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_23ED8BA48, v1, 0);
}

uint64_t sub_23ED8BA48()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v7 = *(v0 + 64);
  *(v2 + 16) = v7;
  *(v2 + 32) = sub_23ED91F70;
  *(v2 + 40) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v3[2] = v7;
  v3[3] = sub_23ED91F70;
  v3[4] = v1;
  sub_23ED8F964(&qword_27E388C08, v4, type metadata accessor for ALCInferenceProvider.InferenceJobQueue, &unk_23EDC5BDC);

  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_23ED8BBC4;

  return MEMORY[0x282200830]();
}

uint64_t sub_23ED8BBC4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_23ED8BD58;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_23ED8BCF4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23ED8BCF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8BD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8BDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C18, &qword_23EDC5EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B68, &qword_23EDC58E0);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_continuation;
  swift_beginAccess();
  sub_23ED9221C(v8, a2 + v11);
  swift_endAccess();
  swift_beginAccess();

  MEMORY[0x23EF23830](v12);
  if (*((*(a3 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23EDC1B20();
  }

  sub_23EDC1B50();
  return swift_endAccess();
}

uint64_t sub_23ED8BF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B68, &qword_23EDC58E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C18, &qword_23EDC5EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  swift_beginAccess();
  v9 = *(a1 + 112);
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_23EDC1FE0())
  {
LABEL_3:
    swift_beginAccess();
    sub_23ED8CB14();
    swift_endAccess();
  }

LABEL_4:
  v10 = *(a1 + 112);
  if (v10 >> 62)
  {
    result = sub_23EDC1FE0();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x23EF23C50](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v13 = sub_23EDC1790();
  __swift_project_value_buffer(v13, qword_27E389818);

  v14 = sub_23EDC1770();
  v15 = sub_23EDC1D70();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27[0] = v18;
    *v17 = 136446210;

    v19 = sub_23ED8B2B4();
    v21 = v20;

    v22 = sub_23ED713FC(v19, v21, v27);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_23ED67000, v14, v15, "ALCInferenceProvider resuming %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x23EF24B30](v18, -1, -1);
    v23 = v17;
    v3 = v26;
    MEMORY[0x23EF24B30](v23, -1, -1);
  }

  v24 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_continuation;
  swift_beginAccess();
  sub_23ED6FA00(v12 + v24, v8, &qword_27E388C18, &qword_23EDC5EB0);
  if ((*(v3 + 48))(v8, 1, v2))
  {

    return sub_23ED6FA68(v8, &qword_27E388C18, &qword_23EDC5EB0);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_23ED6FA68(v8, &qword_27E388C18, &qword_23EDC5EB0);
    sub_23EDC1BA0();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_23ED8C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v6 = sub_23EDC1BE0();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED8C468, 0, 0);
}

uint64_t sub_23ED8C468()
{
  v26 = v0;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E389818);

  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D70();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446466;
    sub_23EDC1C70();
    sub_23ED8F964(&qword_27E388C10, 255, MEMORY[0x277D85720], MEMORY[0x277D85730]);
    v9 = sub_23EDC21E0();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_23ED713FC(v9, v11, &v25);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = sub_23ED8B2B4();
    v15 = sub_23ED713FC(v13, v14, &v25);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_23ED67000, v2, v3, "ALCInferenceProvider TaskPriority is %{public}s, fulfilling %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF24B30](v8, -1, -1);
    MEMORY[0x23EF24B30](v7, -1, -1);
  }

  v16 = v0[7];
  v17 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_recipe;
  v18 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_operationID;
  v19 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_providerID;
  v20 = *(v16 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_canceller);
  v0[5] = type metadata accessor for StatefulCanceller();
  v0[6] = &off_285165680;
  v0[2] = v20;
  v21 = *(v16 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_delegate);
  v22 = *(v16 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_delegate + 8);

  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_23ED8C768;

  return sub_23EDB61B8(v16 + v17, v16 + v18, v16 + v19, (v0 + 2), v21, v22);
}

uint64_t sub_23ED8C768()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23ED8C8F8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = sub_23ED8C884;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23ED8C884()
{
  (*(v0 + 72))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8C8F8()
{
  v1 = v0[9];
  v2 = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1(v2);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23ED8C98C(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v3 = sub_23EDC1790();
  __swift_project_value_buffer(v3, qword_27E389818);

  v4 = sub_23EDC1770();
  v5 = sub_23EDC1D70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_23ED8B2B4();
    v10 = sub_23ED713FC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23ED67000, v4, v5, "ALCInferenceProvider %{public}s cancelled.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EF24B30](v7, -1, -1);
    MEMORY[0x23EF24B30](v6, -1, -1);
  }

  sub_23ED850A8();
  return a2();
}

void sub_23ED8CB14()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_23EDC1FE0())
  {
    if (sub_23EDC1FE0())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x23EF23C50](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_23EDC1FE0();
LABEL_13:
      if (v3)
      {
        sub_23ED92144(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_23ED8CBEC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t ALCInferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  ALCInferenceProvider.init()();
  return v0;
}

uint64_t ALCInferenceProvider.init()()
{
  v1 = v0;
  type metadata accessor for InferencePipeline();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v1 + 16) = v2;
  type metadata accessor for ALCInferenceProvider.InferenceJobQueue();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x277D84F90];
  *(v1 + 24) = v3;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v4 = sub_23EDC1790();
  __swift_project_value_buffer(v4, qword_27E389818);
  v5 = sub_23EDC1770();
  v6 = sub_23EDC1D60();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23ED67000, v5, v6, "Joint predictor model loaded successfully", v7, 2u);
    MEMORY[0x23EF24B30](v7, -1, -1);
  }

  return v1;
}

uint64_t _s16AlchemistService20ALCInferenceProviderC15transitionAsset_2toy20ModelManagerServices09InferencedF10DescriptorV_AF9LoadStateOtYaAF0K5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = v3;
  v4[9] = a3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23EDC1660();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED8CE70, 0, 0);
}

uint64_t sub_23ED8CE70()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = sub_23EDC1610();
  v7 = v6;
  v0[13] = v6;
  (*(v2 + 16))(v1, v4, v3);
  v8 = (*(v2 + 88))(v1, v3);
  if (v8 == *MEMORY[0x277D29F18])
  {
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_23ED8D610;

    return sub_23EDB7448(v5, v7);
  }

  else if (v8 == *MEMORY[0x277D29F08])
  {
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_23ED8D4DC;

    return sub_23EDB7758(v5, v7);
  }

  else if (v8 == *MEMORY[0x277D29F10])
  {
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_23ED8D344;

    return sub_23EDB6FB0(v5, v7);
  }

  else
  {
    v13 = v0[11];
    v24 = v0[12];
    v14 = v0[10];

    v15 = sub_23EDC1530();
    sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v16 = swift_allocError();
    v18 = v17;
    sub_23EDC1EC0();

    sub_23ED8F964(&qword_27E388AC8, 255, MEMORY[0x277D29F20], MEMORY[0x277D29F28]);
    v19 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v19);

    v20 = MEMORY[0x277D84F90];
    sub_23ED90B6C(MEMORY[0x277D84F90]);
    sub_23EDC1520();
    v21 = *(*(v15 - 8) + 104);
    v21(v18, *MEMORY[0x277D29D98], v15);
    swift_willThrow();
    (*(v13 + 8))(v24, v14);
    v22 = v0[9];
    swift_getErrorValue();
    sub_23EDC2290();
    sub_23ED90B6C(v20);
    sub_23EDC1520();
    v21(v22, *MEMORY[0x277D29D70], v15);
    swift_willThrowTypedImpl();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_23ED8D344()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_23ED8D744;
  }

  else
  {
    v2 = sub_23ED8D478;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23ED8D478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8D4DC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_23ED8D8B4;
  }

  else
  {
    v2 = sub_23ED92908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23ED8D610()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_23ED8DA24;
  }

  else
  {
    v2 = sub_23ED92908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23ED8D744()
{
  v1 = v0[15];
  v2 = v0[9];
  swift_getErrorValue();
  sub_23EDC2290();
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  v3 = *MEMORY[0x277D29D70];
  v4 = sub_23EDC1530();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  v5 = v0[1];

  return v5();
}

uint64_t sub_23ED8D8B4()
{
  v1 = v0[17];
  v2 = v0[9];
  swift_getErrorValue();
  sub_23EDC2290();
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  v3 = *MEMORY[0x277D29D70];
  v4 = sub_23EDC1530();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  v5 = v0[1];

  return v5();
}

uint64_t sub_23ED8DA24()
{
  v1 = v0[19];
  v2 = v0[9];
  swift_getErrorValue();
  sub_23EDC2290();
  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  v3 = *MEMORY[0x277D29D70];
  v4 = sub_23EDC1530();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();

  v5 = v0[1];

  return v5();
}

uint64_t sub_23ED8DBB4()
{
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E389818);
  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23ED67000, v2, v3, "requestOneShot(...) is not yet implemented", v4, 2u);
    MEMORY[0x23EF24B30](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  sub_23ED90B6C(MEMORY[0x277D84F90]);
  sub_23EDC1520();
  v6 = *MEMORY[0x277D29D98];
  v7 = sub_23EDC1530();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_23ED8F964(&qword_27E388768, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t ALCInferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v38 = v2;
  v35 = v4;
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388AD0, &qword_23EDC5618);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = &v31 - v5;
  v6 = sub_23EDC0EF0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  sub_23EDC1620();
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v13 = sub_23EDC1790();
  __swift_project_value_buffer(v13, qword_27E389818);
  (*(v7 + 16))(v10, v12, v6);
  v14 = sub_23EDC1770();
  v15 = sub_23EDC1D60();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a2;
    v17 = v16;
    v32 = swift_slowAlloc();
    v40 = v32;
    *v17 = 136446210;
    sub_23ED8F964(&qword_27E388AE0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_23EDC21E0();
    v19 = v6;
    v21 = v20;
    v22 = *(v7 + 8);
    v23 = v10;
    v24 = v19;
    v22(v23, v19);
    v25 = sub_23ED713FC(v18, v21, &v40);

    *(v17 + 4) = v25;
    _os_log_impl(&dword_23ED67000, v14, v15, "ALCInferenceProvider got streaming request from UUID %{public}s", v17, 0xCu);
    v26 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x23EF24B30](v26, -1, -1);
    v27 = v17;
    a2 = v33;
    MEMORY[0x23EF24B30](v27, -1, -1);
  }

  else
  {

    v22 = *(v7 + 8);
    v28 = (v22)(v10, v6);
    v24 = v6;
  }

  MEMORY[0x28223BE20](v28);
  *(&v31 - 4) = v36;
  *(&v31 - 3) = v12;
  v29 = v35;
  *(&v31 - 2) = v38;
  *(&v31 - 1) = v29;
  sub_23EDC1510();
  (*(v34 + 104))(v39, *MEMORY[0x277D858A0], v37);
  a2[3] = type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamWrapper(0);
  a2[4] = sub_23ED8F964(&qword_27E388AD8, 255, type metadata accessor for ALCInferenceProvider.ALCModelOutputStreamWrapper, &unk_23EDC5D28);
  __swift_allocate_boxed_opaque_existential_0(a2);
  sub_23EDC1CD0();
  return (v22)(v12, v24);
}

uint64_t sub_23ED8E204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v54 = a3;
  v62 = a1;
  v59 = sub_23EDC0EF0();
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = v4;
  v51 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C58, &qword_23EDC5EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A50, &qword_23EDC5500);
  v52 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  v16 = type metadata accessor for ALCInferenceInput(0);
  v53 = *(v16 - 8);
  v17 = *(v53 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  sub_23ED6B108(&v44 - v19);
  v47 = v17;
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v8;
  v50 = v20;
  v21 = v60;
  v22 = v62;
  sub_23ED92C2C();
  v23 = *(v52 + 4);
  v24 = v13;
  v25 = v10;
  v23(v13, v15, v10);
  v26 = v61;
  v46 = *(v61 + 16);
  v27 = v21;
  v28 = v22;
  v29 = v7;
  v46(v21, v28, v7);
  type metadata accessor for ALCInferenceProvider.OutputDelegate(0);
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  v31 = *(v26 + 32);
  v61 = v26 + 32;
  v52 = v31;
  v32 = v27;
  v45 = v29;
  v31(v30 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider14OutputDelegate_continuation, v27, v29);
  v23((v30 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider14OutputDelegate_owning_task_id_token), v24, v25);
  v33 = sub_23EDC1BE0();
  (*(*(v33 - 8) + 56))(v58, 1, 1, v33);
  v44 = type metadata accessor for ALCInferenceInput;
  v34 = v48;
  sub_23ED92810(v50, v48, type metadata accessor for ALCInferenceInput);
  v35 = v56;
  v36 = v51;
  (*(v56 + 16))(v51, v54, v59);
  v46(v32, v62, v29);
  v37 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v38 = (v47 + *(v35 + 80) + v37) & ~*(v35 + 80);
  v39 = (v55 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v61 + 48) + v40 + 8) & ~*(v61 + 48);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  sub_23ED92878(v34, v42 + v37, v44);
  (*(v35 + 32))(v42 + v38, v36, v59);
  *(v42 + v39) = v30;
  *(v42 + v40) = v57;
  v52(v42 + v41, v60, v45);

  sub_23ED8EDE0(0, 0, v58, &unk_23EDC5EF0, v42);

  return sub_23ED9228C(v50, type metadata accessor for ALCInferenceInput);
}

uint64_t sub_23ED8E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  type metadata accessor for InferenceRecipe(0);
  v8[8] = swift_task_alloc();
  v9 = sub_23EDC0EF0();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED8E900, 0, 0);
}

uint64_t sub_23ED8E900()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[5];
  v22 = v0[12];
  v23 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = *(v3 + 16);
  v8();
  (v8)(v1, v6, v2);
  v9 = type metadata accessor for ALCInferenceInput(0);
  sub_23ED92810(v7 + *(v9 + 20), v4, type metadata accessor for InferenceRecipe);
  v21 = sub_23ED8F964(&qword_27E388C60, 255, type metadata accessor for ALCInferenceProvider.OutputDelegate, &unk_23EDC5C3C);
  type metadata accessor for ALCInferenceProvider.InferenceJob(0);
  v10 = swift_allocObject();
  v0[13] = v10;
  v11 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_continuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B68, &qword_23EDC58E0);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_canceller;
  type metadata accessor for StatefulCanceller();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v10 + v13) = v14;
  v15 = OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_operationID;
  v16 = *(v3 + 32);

  v16(v10 + v15, v22, v2);
  v16(v10 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_providerID, v1, v2);
  sub_23ED92878(v4, v10 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_recipe, type metadata accessor for InferenceRecipe);
  v17 = (v10 + OBJC_IVAR____TtCC16AlchemistService20ALCInferenceProvider12InferenceJob_delegate);
  *v17 = v5;
  v17[1] = v21;
  v18 = *(v23 + 16);
  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_23ED8EB80;

  return sub_23ED8B5B8(v10, v18);
}

uint64_t sub_23ED8EB80()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_23ED8ED54;
  }

  else
  {
    v2 = sub_23ED8EC94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23ED8EC94()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  sub_23EDC1CA0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8ED54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8EDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C58, &qword_23EDC5EE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23ED6FA00(a3, v22 - v9, &qword_27E388C58, &qword_23EDC5EE0);
  v11 = sub_23EDC1BE0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23ED6FA68(v10, &qword_27E388C58, &qword_23EDC5EE0);
  }

  else
  {
    sub_23EDC1BD0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23EDC1B90();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23EDC1A20() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23ED6FA68(a3, &qword_27E388C58, &qword_23EDC5EE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23ED6FA68(a3, &qword_27E388C58, &qword_23EDC5EE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t ALCInferenceProvider.deinit()
{

  return v0;
}

uint64_t ALCInferenceProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23ED8F0F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = ALCInferenceProvider.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_23ED8F130()
{
  v1 = sub_23EDC15F0();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_23ED8F194()
{
  v1 = sub_23EDC15C0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23ED8F23C()
{
  sub_23EDC15D0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23ED8F298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v6 = sub_23EDC1530();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_23ED92928;

  return _s16AlchemistService20ALCInferenceProviderC15transitionAsset_2toy20ModelManagerServices09InferencedF10DescriptorV_AF9LoadStateOtYaAF0K5ErrorOYKF(a1, a2, v7);
}

uint64_t sub_23ED8F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23ED70118;

  return MEMORY[0x282188C90](a1, a2, a3, a4, a5);
}

void sub_23ED8F498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23ED68C90;

  JUMPOUT(0x23EF23340);
}

uint64_t sub_23ED8F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23EDC1530();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v4[5] = v6;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_23ED8F63C;

  return _s16AlchemistService20ALCInferenceProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientI0VAI_AG09InferenceD20RequestConfigurationVtYaAG0O5ErrorOYKF(v7, v8, v9, v6);
}

uint64_t sub_23ED8F63C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

xpc_object_t sub_23ED8F770(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  bytes[2] = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    if (a1 <= a1 >> 32)
    {
      v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = a1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_29;
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  BYTE4(bytes[1]) = BYTE4(a2);
  v7 = a4 >> 62;
  BYTE5(bytes[1]) = BYTE5(a2);
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v11 = 0;
      goto LABEL_26;
    }

    v13 = *(a3 + 16);
    v12 = *(a3 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_26;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v7)
  {
LABEL_15:
    v11 = BYTE6(a4);
LABEL_26:
    v9 = xpc_data_create(bytes, v11);
    sub_23ED6F8AC(a3, a4);
    return v9;
  }

  LODWORD(v6) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_8:
  if (v6 != 2)
  {
    v10 = a4 >> 62;
    memset(bytes, 0, 14);
    if ((a4 >> 62) > 1)
    {
      v11 = 0;
      if (v10 != 2)
      {
        goto LABEL_26;
      }

      v15 = *(a3 + 16);
      v14 = *(a3 + 24);
      v11 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v10)
    {
      goto LABEL_15;
    }

    LODWORD(v6) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_24:
      v11 = v6;
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
  }

  a1 = *(a1 + 16);
  v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_12:
  v9 = sub_23ED91D7C(a1, v8, a3, a4);
  sub_23ED6F8AC(a3, a4);
  return v9;
}

uint64_t sub_23ED8F964(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_23ED8F9AC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_23ED9C7E0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED79098();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_23EDC1FC0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_23ED7BB70((*(v9 + 56) + 32 * v7), a2);
    sub_23ED8FE08(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_23ED8FA88@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_23ED9C888(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED795C8();
      v9 = v11;
    }

    sub_23ED7BB70((*(v9 + 56) + 32 * v7), a2);
    sub_23ED900BC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23ED8FB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_23ED906A8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED798E8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
    v19 = *(v12 - 8);
    sub_23ED7BA6C(v11 + *(v19 + 72) * v8, a3);
    sub_23ED902B8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_23ED8FC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_23ED906A8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED79B30();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_23EDC16D0();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_23ED904BC(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_23EDC16D0();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_23ED8FE08(int64_t a1, uint64_t a2)
{
  v4 = sub_23EDC1FC0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_23EDC1E80();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_23EDC18C0();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

void sub_23ED900BC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23EDC1E80() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_23EDC22F0();
      type metadata accessor for CFString(0);
      sub_23ED8F964(&qword_27E388D10, 255, type metadata accessor for CFString, &unk_23EDC3BEC);
      v11 = v10;
      sub_23EDC14B0();
      v12 = sub_23EDC2320();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_23ED902B8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23EDC1E80() + 1) & ~v5;
    while (1)
    {
      sub_23EDC22F0();

      sub_23EDC1A50();
      v9 = sub_23EDC2320();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23ED904BC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23EDC1E80() + 1) & ~v5;
    while (1)
    {
      sub_23EDC22F0();

      sub_23EDC1A50();
      v9 = sub_23EDC2320();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_23EDC16D0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23ED906A8(uint64_t a1, uint64_t a2)
{
  sub_23EDC22F0();
  sub_23EDC1A50();
  v4 = sub_23EDC2320();

  return sub_23ED90720(a1, a2, v4);
}

unint64_t sub_23ED90720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23EDC2240())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_23ED907D8(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t a5)
{
  v30 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v11 = *a4;
  v13 = sub_23ED9C888(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *a4;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      return sub_23ED7BB70(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_23ED795C8();
    goto LABEL_7;
  }

  sub_23ED77818(v16, a3 & 1);
  v22 = sub_23ED9C888(a2);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    type metadata accessor for CFString(0);
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v30);
  MEMORY[0x28223BE20](v24);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  sub_23ED909E4(v13, a2, v26, v19, a5);
  v28 = a2;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v29);
}

_OWORD *sub_23ED909E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v16 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7BB70(&v15, (a4[7] + 32 * a1));
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_23ED90AB0(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_23EDC1FE0();
    }

    result = sub_23EDC1F00();
    *v2 = result;
  }

  return result;
}

unint64_t sub_23ED90B6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C68, &qword_23EDC5EF8);
    v3 = sub_23EDC2050();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23ED906A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23ED90CB0()
{
  result = qword_27E388AE8;
  if (!qword_27E388AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388AE8);
  }

  return result;
}

uint64_t sub_23ED90D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23ED70118;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_23ED90E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23ED70118;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_23ED90F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23ED70118;

  return v11(a1, a2, a3, a4);
}

void sub_23ED9111C(uint64_t a1)
{
  sub_23ED916C4(319, &qword_27E388B00, MEMORY[0x277D858C8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23ED911FC(uint64_t a1)
{
  sub_23ED916C4(319, &qword_27E388B18, MEMORY[0x277D858B0]);
  if (v1 <= 0x3F)
  {
    sub_23ED912F0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23ED912F0()
{
  if (!qword_27E388B20)
  {
    v0 = sub_23EDC1840();
    if (!v1)
    {
      atomic_store(v0, &qword_27E388B20);
    }
  }
}

uint64_t sub_23ED91348()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388A50, &qword_23EDC5500);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_23ED913A0(uint64_t a1)
{
  sub_23ED914BC(319);
  if (v1 <= 0x3F)
  {
    sub_23EDC0EF0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for InferenceRecipe(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23ED914BC(uint64_t a1)
{
  if (!qword_27E388B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E388B68, &qword_23EDC58E0);
    v1 = sub_23EDC1E40();
    if (!v2)
    {
      atomic_store(v1, &qword_27E388B60);
    }
  }
}

uint64_t sub_23ED91534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B70, &unk_23EDC5930);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23ED915C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388B70, &unk_23EDC5930);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23ED9163C(uint64_t a1)
{
  sub_23ED916C4(319, &qword_27E388B88, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23ED916C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_23EDC1510();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E389010, &qword_23EDC58B0);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for XPCReferenceShareableDecodingError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCReferenceShareableDecodingError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23ED918DC()
{
  result = qword_27E388B90;
  if (!qword_27E388B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388B90);
  }

  return result;
}

uint64_t sub_23ED9197C(uint64_t a1)
{
  result = sub_23ED8F964(&qword_27E388BA0, 255, type metadata accessor for ALCInferenceProvider.OutputDelegate, &unk_23EDC5C58);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23ED91AC0()
{
  result = qword_27E388BB8;
  if (!qword_27E388BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BB8);
  }

  return result;
}

unint64_t sub_23ED91B18()
{
  result = qword_27E388BC0;
  if (!qword_27E388BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BC0);
  }

  return result;
}

unint64_t sub_23ED91B70()
{
  result = qword_27E388BC8;
  if (!qword_27E388BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BC8);
  }

  return result;
}

unint64_t sub_23ED91BC8()
{
  result = qword_27E388BD0;
  if (!qword_27E388BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BD0);
  }

  return result;
}

unint64_t sub_23ED91C20()
{
  result = qword_27E388BD8;
  if (!qword_27E388BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BD8);
  }

  return result;
}

unint64_t sub_23ED91C78()
{
  result = qword_27E388BE0;
  if (!qword_27E388BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BE0);
  }

  return result;
}

unint64_t sub_23ED91CD0()
{
  result = qword_27E388BE8;
  if (!qword_27E388BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BE8);
  }

  return result;
}

unint64_t sub_23ED91D28()
{
  result = qword_27E388BF0;
  if (!qword_27E388BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388BF0);
  }

  return result;
}

xpc_object_t sub_23ED91D7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_23EDC0DC0();
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = sub_23EDC0DE0();
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_23EDC0DD0();
    goto LABEL_18;
  }

  v10 = (a1 - v9 + v8);
  result = sub_23EDC0DD0();
  if (v10)
  {
    v12 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        return xpc_data_create(v10, v13);
      }

      v15 = *(a3 + 16);
      v14 = *(a3 + 24);
      v13 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        return xpc_data_create(v10, v13);
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(a4);
      return xpc_data_create(v10, v13);
    }

    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = HIDWORD(a3) - a3;
      return xpc_data_create(v10, v13);
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23ED91E44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000023EDCAB80 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023EDCABA0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023EDCABC0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_23EDC2240();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23ED91F78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23ED70118;

  return sub_23ED8C3A4(a1, v4, v5, v7, v6);
}

uint64_t sub_23ED92044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ALCInferenceProvider.InferenceJob(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23EDC1FE0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_23EDC1FE0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23ED92144(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23EDC1FE0();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_23EDC1FE0();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_23ED90AB0(result, 1);

  return sub_23ED92044(v5, v3, 0);
}

uint64_t sub_23ED9221C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C18, &qword_23EDC5EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED9228C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23ED922EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_23ED9235C()
{
  result = qword_27E388C38;
  if (!qword_27E388C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388C38);
  }

  return result;
}

uint64_t sub_23ED923B0()
{
  v1 = (type metadata accessor for ALCInferenceInput(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_23EDC0EF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = (v3 + v4 + v7) & ~v7;
  v18 = (((*(v6 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  v8 = *(v21 - 8);
  v9 = *(v8 + 80);
  v10 = (v18 + v9 + 8) & ~v9;
  v19 = *(v8 + 64);
  v11 = v2 | v7 | v9;
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  v13 = *(v6 + 8);
  v13(v12, v5);
  v14 = v12 + v1[7];

  v15 = *(type metadata accessor for InferenceRecipe(0) + 24);
  v16 = sub_23EDC13F0();
  (*(*(v16 - 8) + 8))(v14 + v15, v16);
  v13(v0 + v20, v5);

  (*(v8 + 8))(v0 + v10, v21);

  return MEMORY[0x2821FE8E8](v0, v10 + v19, v11 | 7);
}

uint64_t sub_23ED92624(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ALCInferenceInput(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23EDC0EF0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0) - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + v10);
  v17 = *(v1 + v11);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_23ED68C90;

  return sub_23ED8E800(a1, v14, v15, v1 + v6, v1 + v9, v16, v17, v1 + v13);
}

uint64_t sub_23ED92810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23ED92878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23ED92930()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-v4];
  sub_23EDC14D0();
  v6 = sub_23EDC1810();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_23ED92EA8(v5);
    sub_23ED6F858();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  v10 = sub_23EDC17F0();
  (*(v7 + 8))(v5, v6);
  v11 = MEMORY[0x23EF24CA0](v10);
  if (v11 == sub_23EDC17A0())
  {
    token = 0;
    if (!task_create_identity_token(*MEMORY[0x277D85F48], &token))
    {
      sub_23EDC1A20();
      xpc_dictionary_set_mach_send();

      sub_23EDC14F0();
      swift_unknownObjectRetain();
      sub_23EDC1800();
      (*(v7 + 56))(v3, 0, 1, v6);
      sub_23EDC14E0();
      mach_port_deallocate(*MEMORY[0x277D85F48], token);
      return swift_unknownObjectRelease();
    }

    sub_23ED6F858();
    swift_allocError();
    *v13 = 1;
  }

  else
  {
    sub_23ED6F858();
    swift_allocError();
    *v12 = 0;
  }

  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_23ED92C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  sub_23EDC14D0();
  v3 = sub_23EDC1810();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_23ED92EA8(v2);
    sub_23ED6F858();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  v7 = sub_23EDC17F0();
  (*(v4 + 8))(v2, v3);
  v8 = MEMORY[0x23EF24CA0](v7);
  if (v8 == sub_23EDC17A0())
  {
    sub_23EDC1A20();
    v10 = xpc_dictionary_copy_mach_send();

    if (v10)
    {
      sub_23EDC1820();
      return swift_unknownObjectRelease();
    }

    sub_23ED6F858();
    swift_allocError();
    *v11 = 2;
  }

  else
  {
    sub_23ED6F858();
    swift_allocError();
    *v9 = 0;
  }

  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_23ED92E54(void *a1, xpc_object_t value)
{
  xpc_dictionary_set_value(a1, "DATA", value);
  swift_unknownObjectRetain();
  return sub_23EDC1800();
}

uint64_t sub_23ED92EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ALCBakingOptions.resolution.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ALCBakingOptions.resolution.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23ED93620(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED93640(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_23ED936C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23ED93710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for ALCBakingOptions.Resolution(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

id sub_23ED937D4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_23EDC5F00;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 16;
  *(a1 + 48) = 257;
  *(a1 + 52) = 0x3E99999A3F80A3D7;
  *(a1 + 60) = 1065353216;
  *(a1 + 64) = 4096;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_23EDC5F10;
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processorCount];

  *(a1 + 96) = v3;
  *(a1 + 104) = 68;
  *(a1 + 112) = 1065185444;
  v4 = MEMORY[0x277D25788];
  *(a1 + 116) = 257;
  v5 = *v4;
  *(a1 + 120) = *v4;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 1;

  return v5;
}

id sub_23ED938DC(__int128 *a1, float *a2, void *a3, char a4, uint64_t a5)
{
  v74 = a5;
  v9 = a1[7];
  v72 = a1[6];
  *v73 = v9;
  *&v73[9] = *(a1 + 121);
  v10 = a1[3];
  v68 = a1[2];
  v69 = v10;
  v11 = a1[5];
  v70 = a1[4];
  v71 = v11;
  v12 = a1[1];
  v66 = *a1;
  v67 = v12;
  if (qword_27E3881B8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_23EDC1DE0();
  if (v5)
  {
    sub_23ED93E78(&v66);
  }

  else
  {
    v63 = v67;
    v61 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v62 = *(&v67 + 1);
    v13 = a2[2] * *&v68;
    v14 = *&v68 * a2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C70, &qword_23EDC60B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23EDC5F20;
    v60 = *MEMORY[0x277D257E0];
    *(inited + 32) = *MEMORY[0x277D257E0];
    v16 = atan2f(a2[29], a2[25]);
    v17 = MEMORY[0x277D83A90];
    *(inited + 40) = v16 + v16;
    v59 = *MEMORY[0x277D257B8];
    v18 = *MEMORY[0x277D257B8];
    *(inited + 64) = v17;
    *(inited + 72) = v18;
    v19 = MEMORY[0x277D839B0];
    *(inited + 80) = 1;
    v58 = *MEMORY[0x277D25798];
    v20 = *MEMORY[0x277D25798];
    *(inited + 104) = v19;
    *(inited + 112) = v20;
    v21 = v19;
    v22 = MEMORY[0x277D83B88];
    *(inited + 120) = v70;
    v57 = *MEMORY[0x277D257D8];
    v23 = *MEMORY[0x277D257D8];
    *(inited + 144) = v22;
    *(inited + 152) = v23;
    *(inited + 160) = BYTE8(v70);
    v24 = *MEMORY[0x277D257D0];
    *(inited + 184) = v21;
    *(inited + 192) = v24;
    v25 = *(&v71 + 1);
    *(inited + 200) = v71;
    v26 = *MEMORY[0x277D257C8];
    *(inited + 224) = v22;
    *(inited + 232) = v26;
    *(inited + 240) = v72;
    v27 = *MEMORY[0x277D257A8];
    *(inited + 264) = v22;
    *(inited + 272) = v27;
    *(inited + 280) = v25;
    v28 = *MEMORY[0x277D257A0];
    *(inited + 304) = v22;
    *(inited + 312) = v28;
    type metadata accessor for MXISceneBuilderColorPrimaries(0);
    *(inited + 320) = a3;
    v29 = *MEMORY[0x277D257B0];
    *(inited + 344) = v30;
    *(inited + 352) = v29;
    *(inited + 360) = *&v73[8];
    v31 = a3;
    v32 = *MEMORY[0x277D257C0];
    *(inited + 384) = v30;
    *(inited + 392) = v32;
    v33 = v73[16];
    *(inited + 424) = MEMORY[0x277D839B0];
    *(inited + 400) = v33;
    v34 = v60;
    v35 = v59;
    v36 = v58;
    v37 = v57;
    v38 = v24;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v31;
    v43 = v29;
    sub_23ED93EA8(&v66, &v65);
    v44 = v32;
    *(inited + 432) = sub_23EDC19A0();
    v45 = MEMORY[0x277D839B0];
    *(inited + 464) = MEMORY[0x277D839B0];
    *(inited + 440) = a4 & 1;
    *(inited + 472) = sub_23EDC19A0();
    v46 = v74;
    v47 = atan2f(*(v74 + 116), *(v74 + 100));
    v48 = MEMORY[0x277D83A90];
    *(inited + 504) = MEMORY[0x277D83A90];
    *(inited + 480) = v47 + v47;
    *(inited + 512) = sub_23EDC19A0();
    v49 = *v46 / v46[1];
    *(inited + 544) = v48;
    *(inited + 520) = v49;
    *(inited + 552) = sub_23EDC19A0();
    v50 = *&v73[20];
    *(inited + 584) = v48;
    *(inited + 560) = v50;
    *(inited + 592) = sub_23EDC19A0();
    v51 = v73[24];
    *(inited + 624) = v45;
    *(inited + 600) = v51;
    sub_23ED7A5F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886F8, &qword_23EDC60C0);
    swift_arrayDestroy();
    type metadata accessor for MXISceneBuilderConfiguration(0);
    sub_23ED93EE0();
    v52 = sub_23EDC1890();

    *&v53 = v13;
    *&v54 = v14;
    v6 = [v61 initWithType:v63 numberOfLayers:v62 depthRange:v52 options:{v53, v54}];

    v55 = sub_23ED93E78(&v66);
    MEMORY[0x28223BE20](v55);
    sub_23EDC1DE0();
  }

  return v6;
}

unint64_t sub_23ED93EE0()
{
  result = qword_27E388508;
  if (!qword_27E388508)
  {
    type metadata accessor for MXISceneBuilderConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388508);
  }

  return result;
}

uint64_t sub_23ED93F38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x647261646E617473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6957736F746F6870;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xEC00000074656764;
    }

    else
    {
      v5 = 0x800000023EDC9E50;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7041736F746F6870;
    }

    else
    {
      v4 = 0x647261646E617473;
    }

    if (v3)
    {
      v5 = 0xE900000000000070;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6957736F746F6870;
  v8 = 0x800000023EDC9E50;
  if (a2 == 2)
  {
    v8 = 0xEC00000074656764;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x7041736F746F6870;
    v6 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23EDC2240();
  }

  return v11 & 1;
}

uint64_t sub_23ED94094(unsigned __int8 a1)
{
  v2 = a1;
  v3 = 0xEF73726579614C67;
  v4 = 0x800000023EDCAD20;
  v5 = 0xD000000000000010;
  if (a1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000023EDCACE0;
  }

  if (a1)
  {
    v3 = 0xEF73657373615067;
  }

  if (a1 <= 1u)
  {
    v6 = 0x6E696B61426D756ELL;
  }

  else
  {
    v6 = v5;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  *&v13[0] = 0xD000000000000016;
  *(&v13[0] + 1) = 0x800000023EDCAD00;
  MEMORY[0x23EF237D0](v6, v7);

  v8 = sub_23EDC19A0();
  v9 = [v1 objectForKey_];

  if (v9)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
    sub_23ED741A0(v13);
    v10 = sub_23EDC19A0();

    v11 = [v1 BOOLForKey_];
  }

  else
  {

    memset(v13, 0, sizeof(v13));
    sub_23ED741A0(v13);
    return 2;
  }

  return v11;
}

id sub_23ED94224(unsigned __int8 a1)
{
  v2 = a1;
  v3 = 0xEF73726579614C67;
  v4 = 0x800000023EDCAD20;
  v5 = 0xD000000000000010;
  if (a1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000023EDCACE0;
  }

  if (a1)
  {
    v3 = 0xEF73657373615067;
  }

  if (a1 <= 1u)
  {
    v6 = 0x6E696B61426D756ELL;
  }

  else
  {
    v6 = v5;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = v1;
  *&v14[0] = 0xD000000000000016;
  *(&v14[0] + 1) = 0x800000023EDCAD00;
  MEMORY[0x23EF237D0](v6, v7);

  v9 = sub_23EDC19A0();
  v10 = [v1 objectForKey_];

  if (v10)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
    sub_23ED741A0(v14);
    v11 = sub_23EDC19A0();

    v12 = [v8 integerForKey_];
  }

  else
  {

    memset(v14, 0, sizeof(v14));
    sub_23ED741A0(v14);
    return 0;
  }

  return v12;
}
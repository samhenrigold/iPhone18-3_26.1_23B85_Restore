uint64_t sub_267C78174()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;
  *(v4 + 184) = v3;
  *(v4 + 192) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C78280(uint64_t a1)
{
  v92 = v1;
  v6 = *(v1 + 184);
  if (*(v1 + 192))
  {
    v7 = v6;
    v8 = sub_267EF89F8();
    v9 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v9))
    {
      v3 = *(v1 + 152);
      v2 = *(v1 + 160);
      v4 = *(v1 + 136);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_267BF9988(v11, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
      v6 = *(v1 + 184);
      v63 = *(v1 + 160);
      v64 = *(v1 + 136);

      sub_267C7973C(v6, 1);
    }

    v66 = *(v1 + 104);
    v65 = *(v1 + 112);
    v67 = *(v1 + 96);
    v90 = 1;
    sub_267C7973C(*(v1 + 184), 1);
    v69 = *(v66 + 8);
    v68 = (v66 + 8);
    v69(v65, v67);
    OUTLINED_FUNCTION_8_13();
    goto LABEL_23;
  }

  if (v6 && sub_267BAF0DC(*(v1 + 184)))
  {
    v18 = *(v1 + 184) & 0xC000000000000001;
    sub_267BBD0EC(0, v18 == 0, v6);
    if (v18)
    {
      v19 = MEMORY[0x26D609870](0, v6);
    }

    else
    {
      v19 = v6[4];
    }

    v20 = v19;
    v21 = [v19 postalAddress];
    if (v21)
    {
      v22 = v21;
      v23 = sub_267BE28D0(*(v1 + 136), &selRef_searchQuery);
      v88 = v20;
      if (!v24)
      {
        v23 = sub_267BE28D0(v20, &selRef_name);
      }

      v25 = v23;
      v26 = v24;

      v27 = v22;
      v28 = sub_267EF89F8();
      v29 = sub_267EF95D8();

      v30 = &selRef_personTypes;
      v31 = &selRef_personTypes;
      v89 = v25;
      if (os_log_type_enabled(v28, v29))
      {
        v32 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v32 = 136315650;
        *(v1 + 32) = v25;
        *(v1 + 40) = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
        v33 = sub_267EF9098();
        v35 = sub_267BA33E8(v33, v34, &v91);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        v36 = [v27 city];
        v37 = sub_267EF9028();
        v38 = v27;
        v40 = v39;

        v41 = sub_267BA33E8(v37, v40, &v91);

        *(v32 + 14) = v41;
        *(v32 + 22) = 2080;
        v42 = [v38 state];
        v43 = sub_267EF9028();
        v45 = v44;

        v46 = v43;
        v30 = &selRef_personTypes;
        v47 = sub_267BA33E8(v46, v45, &v91);
        v27 = v38;

        *(v32 + 24) = v47;
        _os_log_impl(&dword_267B93000, v28, v29, "#AppleMapsLinkParser reverse geocoded place name %s city %s, state %s", v32, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        v31 = &selRef_personTypes;
        OUTLINED_FUNCTION_32_0();
      }

      v48 = *(v1 + 136);
      v49 = [v27 v30[47]];
      v50 = sub_267EF9028();
      v52 = v51;

      v53 = [v27 v31[48]];
      v54 = sub_267EF9028();
      v56 = v55;

      v57 = [v48 addressString];
      v58 = *(v1 + 184);
      v59 = *(v1 + 152);
      v83 = *(v1 + 136);
      v84 = *(v1 + 160);
      v90 = v26;
      v87 = v54;
      if (v57)
      {
        v60 = v57;
        v61 = sub_267EF9028();
        v85 = v62;
        v86 = v61;

        sub_267C7973C(v58, 0);
      }

      else
      {

        sub_267C7973C(v58, 0);
        v85 = 0;
        v86 = 0;
      }

      v78 = OUTLINED_FUNCTION_15_9();
      v79(v78);
      v6 = v89;
      v3 = v52;
      v65 = v50;
      v5 = v56;
      v4 = v87;
      v2 = v85;
      v68 = v86;
      goto LABEL_23;
    }
  }

  v65 = sub_267EF89F8();
  v70 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_5_2(v70))
  {
    v71 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v71);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v72, v73, "#AppleMapsLinkParser error reverse geocoding returned nil addresses");
    OUTLINED_FUNCTION_26();
  }

  v6 = *(v1 + 184);
  v74 = *(v1 + 160);
  v2 = *(v1 + 136);
  v76 = *(v1 + 104);
  v75 = *(v1 + 112);
  v68 = *(v1 + 96);

  sub_267C7973C(v6, 0);
  v77 = *(v76 + 8);
  v3 = (v76 + 8);
  v77(v75, v68);
  OUTLINED_FUNCTION_8_13();
  v90 = 1;
LABEL_23:
  v80 = *(v1 + 72);

  *v80 = v6;
  v80[1] = v90;
  v80[2] = v65;
  v80[3] = v3;
  v80[4] = v4;
  v80[5] = v5;
  v80[6] = v68;
  v80[7] = v2;
  OUTLINED_FUNCTION_17();

  return v81();
}

void sub_267C78884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D38, &qword_267EFF3F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  v7 = sub_267EF2AF8();
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_267C79808;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C78AB0;
  aBlock[3] = &block_descriptor_19;
  v10 = _Block_copy(aBlock);

  [v6 urlParserForURL:v7 completion:v10];
  _Block_release(v10);
}

uint64_t sub_267C78A54(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D38, &qword_267EFF3F8);
  return sub_267EF93C8();
}

void sub_267C78AB0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_267C78B3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_267C797D0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_267C78C30;
  v10[3] = &block_descriptor_5;
  v9 = _Block_copy(v10);

  [a3 reverseGeocodeLocation:a4 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_267C78C30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_267BA9F38(0, &qword_280229D30, 0x277CBFC40);
    v4 = sub_267EF92F8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_267C78CD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_267C78CF4, 0, 0);
}

uint64_t sub_267C78CF4()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D20, &qword_267EFF3E8);
  *v2 = v0;
  v2[1] = sub_267C78DF8;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000267F13E50, sub_267C79748, v1, v3);
}

uint64_t sub_267C78DF8()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = *(v1 + 16);
  v6 = *(v2 + 24);
  v7 = *(v4 + 8);

  return v7(v5, v6);
}

uint64_t sub_267C78F1C()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v0;
  v2 = sub_267EF43A8();
  v1[3] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = sub_267EF43C8();
  v1[7] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C79028()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[2];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0(v1 + 5, v2);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_267C79104;
  v5 = v0[9];

  return MEMORY[0x2821BB7C0](v5, 0x6C7070612E6D6F63, 0xEE007370614D2E65, v2, v3);
}

uint64_t sub_267C79104()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C791E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  sub_267EF43B8();
  (*(v6 + 104))(v5, *MEMORY[0x277D5BE08], v7);
  v8 = sub_267C28E20(v4, v5);
  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v8 & 1);
}

void *sub_267C79310()
{
  v1 = *(*v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_267C7933C(uint64_t a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_267C793D8;

  return sub_267C773E4();
}

uint64_t sub_267C793D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[4];
  v3[2] = v2[3];
  v3[3] = v8;
  *v3 = v6;
  v3[1] = v7;
  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267C794DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BA83C4;

  return sub_267C78F1C();
}

uint64_t sub_267C7956C(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D28, &qword_267EFF3F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  a2(sub_267C79758, v9);
}

uint64_t sub_267C796BC(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D28, &qword_267EFF3F0);
  return sub_267EF93C8();
}

void sub_267C7973C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_267C79758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D28, &qword_267EFF3F0);
  OUTLINED_FUNCTION_18(v0);
  v1 = OUTLINED_FUNCTION_19_7();

  return sub_267C79750(v1, v2);
}

uint64_t sub_267C797D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_267C79808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D38, &qword_267EFF3F8);
  OUTLINED_FUNCTION_18(v0);
  v1 = OUTLINED_FUNCTION_19_7();

  return sub_267C78A54(v1, v2);
}

uint64_t sub_267C79888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v95 = a3;
  v96 = a4;
  v97 = a2;
  v93 = a5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D40, &qword_267EFF448);
  OUTLINED_FUNCTION_58();
  v83 = v6;
  MEMORY[0x28223BE20](v7);
  v82 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299D0, &unk_267F09690);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_3_1(&v80 - v10);
  v87 = sub_267EF51F8();
  OUTLINED_FUNCTION_58();
  v86 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v14 - v13);
  v89 = sub_267EF5318();
  OUTLINED_FUNCTION_58();
  v81 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v18 - v17);
  v92 = sub_267EF4C68();
  OUTLINED_FUNCTION_58();
  v91 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_0();
  v90 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D48, qword_267EFF450);
  OUTLINED_FUNCTION_58();
  v94 = v23;
  MEMORY[0x28223BE20](v24);
  v25 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_0();
  v31 = v30 - v29;
  v32 = sub_267EF6718();
  OUTLINED_FUNCTION_58();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_0();
  v38 = v37 - v36;
  (*(v27 + 16))(v31, a1, v25);
  v39 = (*(v27 + 88))(v31, v25);
  if (v39 == *MEMORY[0x277D5C128])
  {
    v40 = OUTLINED_FUNCTION_3_16();
    v41(v40);
LABEL_5:
    (*(v34 + 32))(v38, v31, v32);
    sub_267B9AFEC(v95, v100);
    sub_267B9AFEC(v96, v99);
    sub_267B9AFEC(v97, v98);
    v44 = swift_allocObject();
    sub_267B9A5E8(v100, v44 + 16);
    sub_267B9A5E8(v99, v44 + 56);
    sub_267B9A5E8(v98, v44 + 96);
    sub_267BB7170();
    sub_267EF7058();
    v45 = sub_267EF7068();
    v46 = v101;
    v45(v100, v38);
    if (v46)
    {

      v47 = OUTLINED_FUNCTION_5_19();
      v48(v47);
      return (*(v34 + 8))(v38, v32);
    }

    v50 = OUTLINED_FUNCTION_5_19();
    v51(v50);
    result = (*(v34 + 8))(v38, v32);
    goto LABEL_8;
  }

  if (v39 == *MEMORY[0x277D5C158])
  {
    v42 = OUTLINED_FUNCTION_3_16();
    v43(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D50, &qword_267F0C8C0);

    goto LABEL_5;
  }

  if (v39 != *MEMORY[0x277D5C160])
  {
    v68 = sub_267EF71B8();
    v69 = sub_267C6C8E8();
    OUTLINED_FUNCTION_6_14(v69);
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x277D61DF8], v68);
    swift_willThrow();
    v66 = *(v27 + 8);
    v67 = v31;
    return v66(v67, v25);
  }

  v52 = OUTLINED_FUNCTION_3_16();
  v53(v52);
  v54 = v91;
  v55 = v90;
  v25 = v92;
  (*(v91 + 32))(v90, v31, v92);
  v56 = v85;
  sub_267EF4C48();
  v57 = v88;
  sub_267EF51A8();
  (*(v86 + 8))(v56, v87);
  v58 = v89;
  if (__swift_getEnumTagSinglePayload(v57, 1, v89) == 1)
  {
    sub_267C7A238(v57);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v59 = sub_267EF8A08();
    __swift_project_value_buffer(v59, qword_280240FB0);
    v60 = sub_267EF89F8();
    v61 = sub_267EF95E8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_267B93000, v60, v61, "#SendMessageTransformer could not find UserDialogAct from userParse", v62, 2u);
      MEMORY[0x26D60A7B0](v62, -1, -1);
    }

    v63 = sub_267EF71B8();
    v64 = sub_267C6C8E8();
    OUTLINED_FUNCTION_6_14(v64);
    *v65 = 0xD000000000000010;
    v65[1] = 0x8000000267F13EF0;
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D61E00], v63);
    swift_willThrow();
    v66 = *(v54 + 8);
    v67 = v55;
    return v66(v67, v25);
  }

  v71 = v81;
  v72 = v80;
  (*(v81 + 32))(v80, v57, v58);
  sub_267B9AFEC(v95, v100);
  sub_267B9AFEC(v96, v99);
  sub_267B9AFEC(v97, v98);
  v73 = swift_allocObject();
  sub_267B9A5E8(v100, v73 + 16);
  sub_267B9A5E8(v99, v73 + 56);
  sub_267B9A5E8(v98, v73 + 96);
  sub_267BB7170();
  sub_267EF7058();
  v74 = sub_267EF7068();
  v75 = v101;
  v74(v100, v72);
  if (!v75)
  {

    v78 = OUTLINED_FUNCTION_4_18();
    v79(v78);
    (*(v71 + 8))(v72, v58);
    result = (*(v54 + 8))(v55, v92);
LABEL_8:
    *v93 = *&v100[0];
    return result;
  }

  v76 = OUTLINED_FUNCTION_4_18();
  v77(v76);
  (*(v71 + 8))(v72, v58);
  return (*(v54 + 8))(v55, v92);
}

uint64_t sub_267C7A238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299D0, &unk_267F09690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267C7A2F8()
{
  result = qword_280229D60;
  if (!qword_280229D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D60);
  }

  return result;
}

unint64_t sub_267C7A35C()
{
  result = qword_280229D68;
  if (!qword_280229D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D68);
  }

  return result;
}

unint64_t sub_267C7A3C0()
{
  result = qword_280229D70;
  if (!qword_280229D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D70);
  }

  return result;
}

void sub_267C7A414(uint64_t a1)
{
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  v2 = sub_267EF92D8();

  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_280229D58, v2, 1);
  swift_endAccess();
}

uint64_t sub_267C7A4A0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_280229D58);
  swift_endAccess();
  if (v1)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D88, &qword_267EFF528);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_267C0BFFC(v6);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267C7A584()
{
  v1 = sub_267C7A658(v0);
  v3 = v2;
  if (v2)
  {
    sub_267C7A6BC();
    sub_267C7A710();
    if (sub_267EF8FA8())
    {
      v4 = sub_267EF9138();
      v5 = sub_267BB8FCC(v4, v1, v3);
      v1 = MEMORY[0x26D608DB0](v5);
    }
  }

  return v1;
}

uint64_t sub_267C7A658(void *a1)
{
  v1 = [a1 launchId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267C7A6BC()
{
  result = qword_280229D78;
  if (!qword_280229D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D78);
  }

  return result;
}

unint64_t sub_267C7A710()
{
  result = qword_280229D80;
  if (!qword_280229D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229D80);
  }

  return result;
}

uint64_t static MessagesSELFPerformanceLogger.signpost<A>(domainExecutionType:taskType:osLogger:siriKitEventSender:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_267EF8A08();
  OUTLINED_FUNCTION_2_23();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17, a4);
  sub_267B9AFEC(a5, v31);
  v21 = type metadata accessor for MessagesSELFPerformanceLogger(0);
  v22 = swift_allocObject();

  MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(a1, a2, a3, v19, v31);
  v30 = v22;
  v27 = a8;
  v28 = a6;
  v29 = a7;
  v23 = sub_267EF9888();
  sub_267C7AEA4(&v30, sub_267C7AE74, v26, v21, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v24);
}

{
  sub_267EF8A08();
  OUTLINED_FUNCTION_2_23();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17, a4);
  sub_267B9AFEC(a5, v30);
  v21 = type metadata accessor for MessagesSELFPerformanceLogger(0);
  v22 = swift_allocObject();

  MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(a1, a2, a3, v19, v30);
  v29 = a7;
  v30[0] = v22;
  v27 = a8;
  v28 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  v24 = sub_267EF9888();
  sub_267C7B180(v30, sub_267C7B4A0, v26, v21, v23, v24, MEMORY[0x277D84950], &v31);
}

uint64_t static MessagesSELFPerformanceLogger.signpost<A>(domainExecutionType:taskType:osLogger:siriKitEventSender:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 184) = a2;
  *(v8 + 56) = a1;
  v9 = sub_267EF9888();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  v10 = sub_267EF8A08();
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 - 8);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C7AA28, 0, 0);
}

uint64_t sub_267C7AA28()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 184);
  (*(*(v0 + 144) + 16))(v1, *(v0 + 80), *(v0 + 136));
  sub_267B9AFEC(v3, v0 + 16);
  type metadata accessor for MessagesSELFPerformanceLogger(0);
  *(v0 + 160) = swift_allocObject();

  MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(v6, v5, v4, v1, (v0 + 16));
  v10 = (v2 + *v2);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_267C7ABA4;
  v8 = *(v0 + 128);

  return v10(v8);
}

uint64_t sub_267C7ABA4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_267C7AD6C;
  }

  else
  {
    v2 = sub_267C7ACB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_267C7ACB8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  sub_267C7B358();

  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_267C7AD6C()
{
  sub_267C7B344();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MessagesSELFPerformanceLogger.__allocating_init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_267C7AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

uint64_t sub_267C7B124(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  result = a2();
  if (v5)
  {
    sub_267C7B344();
    result = swift_willThrow();
    *a5 = v5;
  }

  return result;
}

uint64_t sub_267C7B180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t MessagesSELFPerformanceLogger.deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_failed) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_ended) & 1) == 0)
  {
    sub_267C7B358();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = OBJC_IVAR____TtC16SiriMessagesFlow29MessagesSELFPerformanceLogger_osLogger;
  sub_267EF8A08();
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t MessagesSELFPerformanceLogger.__deallocating_deinit()
{
  MessagesSELFPerformanceLogger.deinit();

  return swift_deallocClassInstance();
}

void sub_267C7B368(Class *a1, char a2)
{
  v3 = [objc_allocWithZone(*a1) init];
  if (v3)
  {
    oslog = v3;
    sub_267BBCB48(v3, a2);
  }

  else
  {

    oslog = sub_267EF89F8();
    v4 = sub_267EF95E8();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136315138;
      v7 = sub_267EF9798();
      v9 = sub_267BA33E8(v7, v8, &v17);

      *(v5 + 4) = v9;
      OUTLINED_FUNCTION_4_19(&dword_267B93000, v10, v11, "#MessagesSELFPerformanceLogger Failed to register end event for %s", v12, v13, v14, v15, oslog);
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }
}

uint64_t sub_267C7B4CC(uint64_t a1)
{
  result = sub_267EF8A08();
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

void sub_267C7B60C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - v10;
  v12 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_37;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v13 = sub_267BAF0DC(v12);
      v14 = v12 & 0xC000000000000001;
      sub_267BBD0EC(0, (v12 & 0xC000000000000001) == 0, v12);
      if (v13 == 1)
      {
        if (v14)
        {
          v15 = MEMORY[0x26D609870](0, v12);
        }

        else
        {
          v15 = *(v12 + 32);
        }

        v16 = v15;
        goto LABEL_39;
      }

      v72 = v13;
      if (v14)
      {
        v17 = MEMORY[0x26D609870](0, v12);
      }

      else
      {
        v17 = *(v12 + 32);
      }

      v18 = v17;
      v19 = [v17 personHandle];
      v67 = v3;
      if (v19)
      {
        v20 = v19;
        v21 = [v19 type];
      }

      else
      {
        v21 = 0;
      }

      v22 = [v18 personHandle];
      v23 = [v22 label];

      v24 = objc_allocWithZone(MEMORY[0x277CD3E98]);
      v25 = sub_267C7BEC0(0, 0, v21, v23);
      v26 = [v18 nameComponents];
      v66 = a2;
      v71 = v12 & 0xC000000000000001;
      if (v26)
      {
        v27 = v26;
        sub_267EF2A18();

        v28 = sub_267EF2A58();
        v29 = 0;
      }

      else
      {
        v28 = sub_267EF2A58();
        v29 = 1;
      }

      __swift_storeEnumTagSinglePayload(v11, v29, 1, v28);
      v30 = [v18 displayName];
      v31 = sub_267EF9028();
      v33 = v32;

      v65 = v18;
      v34 = [v18 image];
      v35 = objc_allocWithZone(MEMORY[0x277CD3E90]);
      v3 = sub_267C7BD3C(v25, v11, v31, v33, v34, 0, 0, 0, 0);
      v36 = MEMORY[0x277D84F90];
      v37 = v72;
      if (!v72)
      {
LABEL_30:
        sub_267C7BF44(v36, v3);
        v56 = v65;
        a2 = v66;
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v57 = sub_267EF8A08();
        __swift_project_value_buffer(v57, qword_280240FB0);
        v16 = v3;
        v58 = sub_267EF89F8();
        v59 = sub_267EF95D8();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = 138412290;
          *(v60 + 4) = v16;
          *v61 = v16;
          v62 = v16;
          _os_log_impl(&dword_267B93000, v58, v59, "#getUpdatedPersonList Ambiguous selection! Returning result: %@", v60, 0xCu);
          sub_267C142D4(v61);
          MEMORY[0x26D60A7B0](v61, -1, -1);
          MEMORY[0x26D60A7B0](v60, -1, -1);
        }

        goto LABEL_39;
      }

      v64 = v3;
      v70 = v9;
      v75 = MEMORY[0x277D84F90];
      sub_267EF9BF8();
      if (v37 < 0)
      {
        __break(1u);
        return;
      }

      v38 = 0;
      v68 = v12 & 0xFFFFFFFFFFFFFF8;
      v69 = v12;
      while (1)
      {
        if (v71)
        {
          v39 = MEMORY[0x26D609870](v38, v12);
          v9 = v70;
          goto LABEL_23;
        }

        v9 = v70;
        if ((v38 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v38 >= *(v68 + 16))
        {
          goto LABEL_36;
        }

        v39 = *(v12 + 8 * v38 + 32);
LABEL_23:
        v40 = [v39 personHandle];
        if (!v40)
        {
          v41 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          v40 = sub_267E7605C(0, 0, 0);
        }

        v42 = [v39 nameComponents];
        v74 = v40;
        if (v42)
        {
          v43 = v42;
          sub_267EF2A18();

          v44 = 0;
        }

        else
        {
          v44 = 1;
        }

        v45 = sub_267EF2A58();
        __swift_storeEnumTagSinglePayload(v9, v44, 1, v45);
        ++v38;
        v46 = [v39 displayName];
        v11 = sub_267EF9028();
        v73 = v47;

        v48 = [v39 image];
        v49 = sub_267BBD380(v39);
        a2 = v50;
        v51 = sub_267DEC22C(v39);
        v53 = v52;
        v54 = objc_allocWithZone(MEMORY[0x277CD3E90]);
        v55 = sub_267C7BD3C(v74, v9, v11, v73, v48, v49, a2, v51, v53);
        v3 = [objc_allocWithZone(MEMORY[0x277CD4008]) initWithPerson:v55 recommendation:2];

        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v12 = v69;
        if (v72 == v38)
        {
          v36 = v75;
          v3 = v64;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

    while (sub_267EF9A68());
  }

  v16 = 0;
LABEL_39:
  *a2 = v16;
}

uint64_t sub_267C7BC54(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_267EF47F8();
  sub_267EF4858();
  v6 = sub_267EF4158();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_267EF4818();
}

id sub_267C7BD3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_267EF2A58();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_267EF29E8();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_267EF8FF8();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_267EF8FF8();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_267EF8FF8();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_267C7BEC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_267EF8FF8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

void sub_267C7BF44(uint64_t a1, void *a2)
{
  sub_267C7BFB8();
  v3 = sub_267EF92D8();

  [a2 setScoredAlternatives_];
}

unint64_t sub_267C7BFB8()
{
  result = qword_280229DB8;
  if (!qword_280229DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229DB8);
  }

  return result;
}

_BYTE *sub_267C7BFFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MessagesConversationDialogContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_267C7C168(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267C7C240(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_267C7C28C(char a1)
{
  result = 0x6E65697069636572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x746E65746E6F63;
      break;
    case 4:
      result = 0x746365666665;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x4E65636976726573;
      break;
    case 7:
      result = OUTLINED_FUNCTION_0_15();
      break;
    case 8:
      result = 0x656D686361747461;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267C7C3BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267C7C240(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267C7C3EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C7C28C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_267C7C41C()
{
  result = qword_280229DC0;
  if (!qword_280229DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229DC0);
  }

  return result;
}

unint64_t sub_267C7C47C(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_267C7C4C8(char a1)
{
  result = 0x6E65697069636572;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_0_15();
      break;
    case 2:
      result = 0x6554686372616573;
      break;
    case 3:
      result = 0x7475626972747461;
      break;
    case 4:
      result = 0x656D695465746164;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x696669746E656469;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267C7C600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267C7C47C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267C7C630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C7C4C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_267C7C660()
{
  result = qword_280229DC8;
  if (!qword_280229DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229DC8);
  }

  return result;
}

uint64_t sub_267C7C6C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

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

uint64_t sub_267C7C714(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6F43646574696465;
  }
}

uint64_t sub_267C7C780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267C7C6C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267C7C7B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C7C714(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_267C7C7E0()
{
  result = qword_280229DD0;
  if (!qword_280229DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229DD0);
  }

  return result;
}

uint64_t sub_267C7C8D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_267C7C934@<X0>(uint64_t a1@<X8>)
{
  sub_267EF7408();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_11_14(v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_19();
  if (v8(v7) == *MEMORY[0x277D1C680])
  {
    v9 = OUTLINED_FUNCTION_19();
    v10(v9);
    v11 = sub_267EF8D48();
    OUTLINED_FUNCTION_22();
    (*(v12 + 32))(a1, v1, v11);
    OUTLINED_FUNCTION_9();
    v16 = v11;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_19();
    v18(v17);
    v16 = sub_267EF8D48();
    v13 = a1;
    v14 = 1;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_267C7CA90()
{
  OUTLINED_FUNCTION_48_0();
  v83 = v1;
  sub_267EF8D18();
  OUTLINED_FUNCTION_58();
  v75 = v3;
  v76 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v74 = v5 - v4;
  sub_267EF8D28();
  OUTLINED_FUNCTION_58();
  v77 = v7;
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v73 = v9 - v8;
  v10 = sub_267EF73F8();
  OUTLINED_FUNCTION_58();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_26();
  v14 = sub_267EF7408();
  OUTLINED_FUNCTION_58();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6();
  v81 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v79 = &v73 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - v25;
  v27 = *(v16 + 16);
  v80 = v0;
  v27(&v73 - v25, v0, v14);
  v28 = (*(v16 + 88))(v26, v14);
  v29 = *MEMORY[0x277D1C680];
  v82 = v26;
  if (v28 == v29)
  {
    v27(v22, v26, v14);
    v30 = OUTLINED_FUNCTION_29_6();
    v31(v30);
    v32 = sub_267EF8D48();
    v33 = *(v32 - 8);
    if ((*(v33 + 88))(v22, v32) == *MEMORY[0x277D72A58])
    {
      (*(v33 + 96))(v22, v32);
      v34 = swift_projectBox();
      v36 = v77;
      v35 = v78;
      v37 = (*(v77 + 88))(v34, v78);
      v38 = v81;
      if (v37 == *MEMORY[0x277D729B0])
      {
        v39 = v73;
        (*(v36 + 16))(v73, v34, v35);
        (*(v36 + 96))(v39, v35);
        v41 = v74;
        v40 = v75;
        v42 = v39;
        v43 = v76;
        (*(v75 + 32))(v74, v42, v76);
        v44 = sub_267EF8D08();
        sub_267EF97D8();

        (*(v40 + 8))(v41, v43);
        sub_267EF6A08();
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);

LABEL_15:
        v50 = v82;
        goto LABEL_16;
      }
    }

    else
    {
      (*(v33 + 8))(v22, v32);
      v38 = v81;
    }

LABEL_9:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v59 = sub_267EF8A08();
    __swift_project_value_buffer(v59, qword_280240FB0);
    v27(v38, v80, v14);
    v60 = sub_267EF89F8();
    v61 = sub_267EF95E8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_48();
      v63 = swift_slowAlloc();
      v84 = v63;
      *v62 = 136315138;
      v27(v79, v38, v14);
      v64 = sub_267EF9098();
      v66 = v65;
      v67 = OUTLINED_FUNCTION_30_8();
      v68(v67);
      v69 = sub_267BA33E8(v64, v66, &v84);

      *(v62 + 4) = v69;
      _os_log_impl(&dword_267B93000, v60, v61, "#ClientAction+Utilities unexpected shim parameter for person: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v70 = OUTLINED_FUNCTION_30_8();
      v71(v70);
    }

    v72 = sub_267EF6A08();
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v72);
    goto LABEL_15;
  }

  v38 = v81;
  if (v28 != *MEMORY[0x277D1C668])
  {
    goto LABEL_9;
  }

  v49 = v79;
  v50 = v82;
  v27(v79, v82, v14);
  v51 = OUTLINED_FUNCTION_29_6();
  v52(v51);
  (*(v12 + 32))(v0, v49, v10);
  sub_267C7D104();
  v53 = OUTLINED_FUNCTION_66();
  v54(v53);
  sub_267EF6A08();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
LABEL_16:
  (*(v16 + 8))(v50, v14);
  OUTLINED_FUNCTION_47();
}

void sub_267C7D104()
{
  OUTLINED_FUNCTION_48_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EB8, &qword_267EFF9A0);
  v1 = OUTLINED_FUNCTION_18(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - v2;
  sub_267EF6A18();
  OUTLINED_FUNCTION_58();
  v32 = v5;
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC0, &qword_267EFF9A8);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229EC8, &unk_267EFF9B0);
  v13 = OUTLINED_FUNCTION_18(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = sub_267EF73D8();
  OUTLINED_FUNCTION_58();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v22 = v21 - v20;
  sub_267EF69F8();
  sub_267EF7388();
  sub_267EF69B8();
  sub_267EF7378();
  sub_267EF6998();
  sub_267EF73E8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_267B9F98C(v15, &qword_280229EC8, &unk_267EFF9B0);
  }

  else
  {
    v23 = (*(v18 + 32))(v22, v15, v16);
    MEMORY[0x26D607070](v23);
    v24 = sub_267EF7398();
    if (__swift_getEnumTagSinglePayload(v3, 1, v24) == 1)
    {
      sub_267B9F98C(v3, &qword_280229EB8, &qword_267EFF9A0);
      (*(v32 + 104))(v9, *MEMORY[0x277D56018], v33);
    }

    else
    {
      v25 = v31;
      sub_267C7F434(v31);
      (*(*(v24 - 8) + 8))(v3, v24);
      (*(v32 + 32))(v9, v25, v33);
    }

    sub_267EF73B8();
    sub_267EF73C8();
    sub_267EF6AD8();
    sub_267EF6AE8();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    sub_267EF69A8();
    (*(v18 + 8))(v22, v16);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C7D4D8()
{
  v1[19] = v0;
  v2 = sub_267EF7408();
  v1[20] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[21] = v3;
  v1[22] = OUTLINED_FUNCTION_50();
  v1[23] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E10, &unk_267F0DF70);
  OUTLINED_FUNCTION_18(v4);
  v1[24] = OUTLINED_FUNCTION_50();
  v1[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E18, &unk_267F0D0C0);
  OUTLINED_FUNCTION_18(v5);
  v1[26] = swift_task_alloc();
  v6 = sub_267EF8818();
  v1[27] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[28] = v7;
  v1[29] = OUTLINED_FUNCTION_50();
  v1[30] = swift_task_alloc();
  v8 = sub_267EF2BA8();
  v1[31] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[32] = v9;
  v1[33] = OUTLINED_FUNCTION_50();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v10);
  v1[37] = OUTLINED_FUNCTION_50();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E28, &qword_267EFF990);
  OUTLINED_FUNCTION_18(v11);
  v1[42] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267C7D754()
{
  v151 = v0;
  v1 = v0[42];
  sub_267C7C934(v1);
  v2 = sub_267EF8D48();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[42];
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v0[42], &qword_280229E28, &qword_267EFF990);
LABEL_14:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = v0[23];
    v23 = v0[20];
    v24 = v0[21];
    v25 = v0[19];
    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v27 = *(v24 + 16);
    v27(v22, v25, v23);
    v28 = sub_267EF89F8();
    v29 = sub_267EF95E8();
    v30 = OUTLINED_FUNCTION_10_2(v29);
    v31 = v0[23];
    if (!v30)
    {
      v40 = v0[20];
      v41 = v0[21];

      (*(v41 + 8))(v31, v40);
      goto LABEL_20;
    }

    v33 = v0[21];
    v32 = v0[22];
    v34 = v0[20];
    v35 = OUTLINED_FUNCTION_48();
    v148 = swift_slowAlloc();
    v150[0] = v148;
    *v35 = 136315138;
    v27(v32, v31, v34);
    v36 = sub_267EF9098();
    v38 = v37;
    (*(v33 + 8))(v31, v34);
    v39 = sub_267BA33E8(v36, v38, v150);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_267B93000, v28, v23, "#ClientAction+Utilities unexpected shim parameter for attachment: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v148);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_32_0();
LABEL_18:

LABEL_20:
    v149 = 0;
    goto LABEL_21;
  }

  sub_267C7EFB0();
  v6 = v5;
  v0[43] = v5;
  (*(*(v2 - 8) + 8))(v4, v2);
  if (!v6)
  {
    goto LABEL_14;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  v0[44] = __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = v6;
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  if (os_log_type_enabled(v9, v10))
  {
    v147 = v0;
    v11 = 7104878;
    v12 = swift_slowAlloc();
    v150[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_267E761B0(v8);
    if (!v14)
    {
      v13 = 7104878;
    }

    v15 = v8;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_267BA33E8(v13, v16, v150);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v146 = v15;
    v18 = [v15 fileURL];
    if (v18)
    {
      v19 = v18;
      v20 = v147;
      sub_267EF2B48();

      v21 = 0;
    }

    else
    {
      v21 = 1;
      v20 = v147;
    }

    v54 = v20[40];
    v53 = v20[41];
    v55 = v20[31];
    __swift_storeEnumTagSinglePayload(v54, v21, 1, v55);
    sub_267BBE1D0(v54, v53, &qword_280229E20, &unk_267EFDCC0);
    v56 = __swift_getEnumTagSinglePayload(v53, 1, v55);
    v57 = v20[41];
    if (v56 == 1)
    {
      sub_267B9F98C(v20[41], &qword_280229E20, &unk_267EFDCC0);
      v58 = 0xE300000000000000;
    }

    else
    {
      v59 = v20[31];
      v60 = v20[32];
      v11 = sub_267EF2A98();
      v58 = v61;
      (*(v60 + 8))(v57, v59);
    }

    v62 = sub_267BA33E8(v11, v58, v150);

    *(v12 + 14) = v62;
    _os_log_impl(&dword_267B93000, v9, v10, "#ClientAction+Utilities converting file to attachment: typeIdentifier=%s, fileURL=%s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v8 = v146;
    v0 = v147;
  }

  else
  {
  }

  v63 = [v8 fileURL];
  v64 = v0[39];
  v65 = v0[31];
  if (!v63)
  {
    __swift_storeEnumTagSinglePayload(v0[39], 1, 1, v0[31]);
    sub_267B9F98C(v64, &qword_280229E20, &unk_267EFDCC0);
    v75 = sub_267EF89F8();
    v76 = sub_267EF95D8();
    if (os_log_type_enabled(v75, v76))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_23_7(&dword_267B93000, v77, v76, "#ClientAction+Utilities data-only INFile, saving to temporary file");
      OUTLINED_FUNCTION_42_0();
    }

    v78 = v0[36];

    sub_267CF242C(v8, v78);
    v91 = v0[36];
    sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
    v92 = [v8 filename];
    v93 = sub_267EF9028();
    v95 = v94;

    v96 = sub_267E761B0(v8);
    v98 = sub_267E0C800(v91, v93, v95, v96, v97);
    v0[18] = &unk_2878ED498;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      v28 = sub_267EF89F8();
      v125 = sub_267EF95E8();
      if (os_log_type_enabled(v28, v125))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_23_7(&dword_267B93000, v126, v125, "#ClientAction+Utilities INFile is not INEnumerable, this is unexpected");
        OUTLINED_FUNCTION_42_0();
      }

      goto LABEL_18;
    }

    v147 = v0;
    v99 = v98;
    v100 = sub_267EF89F8();
    v101 = sub_267EF95D8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = OUTLINED_FUNCTION_48();
      v103 = swift_slowAlloc();
      v150[0] = v103;
      *v102 = 136315138;
      v104 = [v99 &off_279C2E6F8];
      v146 = v8;
      if (v104)
      {
        v105 = v104;
        v106 = v147;
        sub_267EF2B48();

        v107 = 0;
      }

      else
      {
        v107 = 1;
        v106 = v147;
      }

      v127 = v106[38];
      v128 = v106[31];
      __swift_storeEnumTagSinglePayload(v106[37], v107, 1, v128);
      v129 = OUTLINED_FUNCTION_61_0();
      sub_267BBE1D0(v129, v130, v131, v132);
      if (__swift_getEnumTagSinglePayload(v127, 1, v128) == 1)
      {
        v133 = 7104878;
        sub_267B9F98C(v106[38], &qword_280229E20, &unk_267EFDCC0);
        v134 = 0xE300000000000000;
      }

      else
      {
        v133 = sub_267EF2B68();
        v134 = v135;
        v136 = OUTLINED_FUNCTION_66();
        v137(v136);
      }

      v138 = sub_267BA33E8(v133, v134, v150);

      *(v102 + 4) = v138;
      _os_log_impl(&dword_267B93000, v100, v101, "#ClientAction+Utilities issuing sandbox extension to path %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v103);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      v8 = v146;
    }

    else
    {
    }

    INIssueSandboxExtensionsForFileURLEnumerable();
    v149 = [objc_opt_self() attachmentWithFile_];

LABEL_21:
    v42 = OUTLINED_FUNCTION_8_14();
    OUTLINED_FUNCTION_3_17(v42);

    OUTLINED_FUNCTION_17_8(v43, v44, v45, v46, v47, v48, v49, v50, v140, v141, v142, v143, v144, v145, v146, v147, v149);
    OUTLINED_FUNCTION_93();

    __asm { BRAA            X2, X16 }
  }

  v66 = v63;
  sub_267EF2B48();

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v65);
  sub_267B9F98C(v64, &qword_280229E20, &unk_267EFDCC0);
  v70 = [v8 itemProvider];
  v0[45] = v70;
  if (v70)
  {
    v71 = v70;
    v72 = v0[26];
    v73 = v0[27];
    sub_267E761B0(v8);
    sub_267EF8828();
    if (__swift_getEnumTagSinglePayload(v72, 1, v73) == 1)
    {
      v74 = v0[26];

      sub_267B9F98C(v74, &qword_280229E18, &unk_267F0D0C0);
    }

    else
    {
      v79 = v0[29];
      v80 = v0[27];
      v81 = v0[28];
      (*(v81 + 32))(v0[30], v0[26], v80);
      sub_267EF8798();
      v82 = sub_267EF8808();
      v83 = *(v81 + 8);
      v0[46] = v83;
      v0[47] = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v83(v79, v80);
      if (v82)
      {
        v84 = sub_267EF89F8();
        v85 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_10_2(v85))
        {
          v86 = OUTLINED_FUNCTION_32();
          *v86 = 0;
          _os_log_impl(&dword_267B93000, v84, v79, "#ClientAction+Utilities type identifier conforming to URL, extracting URL from file", v86, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        v87 = swift_task_alloc();
        v0[48] = v87;
        *(v87 + 16) = v71;
        v88 = swift_task_alloc();
        v0[49] = v88;
        *v88 = v0;
        v88[1] = sub_267C7E560;
        OUTLINED_FUNCTION_93();

        __asm { BR              X3 }
      }

      v83(v0[30], v0[27]);
    }
  }

  v108 = sub_267E761B0(v8);
  if (!v109)
  {
LABEL_54:
    v149 = [objc_opt_self() attachmentWithFile_];

    goto LABEL_21;
  }

  if (v108 == 0xD00000000000001BLL && v109 == 0x8000000267F14000)
  {
  }

  else
  {
    v111 = sub_267EF9EA8();

    if ((v111 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v112 = v8;
  v113 = sub_267EF89F8();
  v114 = sub_267EF95D8();
  if (os_log_type_enabled(v113, v114))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_23_7(&dword_267B93000, v115, v114, "#ClientAction+Utilities loading image representation for live photo bundle");
    OUTLINED_FUNCTION_42_0();
  }

  v117 = v0[28];
  v116 = v0[29];
  v118 = v0[27];
  v119 = v0[25];

  sub_267EF87D8();
  v0[51] = sub_267EF8768();
  v0[52] = v120;
  (*(v117 + 8))(v116, v118);
  v121 = sub_267EF8FF8();
  v0[53] = v121;
  v0[2] = v0;
  v0[7] = v119;
  v0[3] = sub_267C7E7F8;
  v122 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280229EA0, &qword_267EFF998);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_267C7F290;
  v0[13] = &block_descriptor_6;
  v0[14] = v122;
  [v112 loadFileRepresentationWithType:v121 completion:v0 + 10];
  OUTLINED_FUNCTION_93();

  return MEMORY[0x282200938](v123);
}

uint64_t sub_267C7E560()
{
  *(*v1 + 400) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267C7E7F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 432) = v1;
  if (v1)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267C7EB9C()
{
  v1 = *(v0 + 400);

  v2 = v1;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95E8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 400);
  v7 = *(v0 + 360);
  v8 = *(v0 + 344);
  if (v5)
  {
    v9 = OUTLINED_FUNCTION_48();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v13, v14, "#ClientAction+Utilities failed to extract URL from file: %@");
    sub_267B9F98C(v10, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v15 = v3;
    v3 = v8;
  }

  else
  {

    v15 = v8;
  }

  (*(v0 + 368))(*(v0 + 240), *(v0 + 216));

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_267C7EDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  v22 = v20[53];
  v21 = v20[54];
  swift_willThrow();

  v23 = v21;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95E8();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v20[54];
  v28 = v20[43];
  if (v26)
  {
    v29 = OUTLINED_FUNCTION_48();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = v27;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v33, v34, "#ClientAction+Utilities failed to load image representation for live photo bundle: %@");
    sub_267B9F98C(v30, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_17(v20[42]);

  OUTLINED_FUNCTION_46_0();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_267C7EFB0()
{
  OUTLINED_FUNCTION_48_0();
  sub_267EF8D28();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_26();
  sub_267EF8D48();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  sub_267EF8CE8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_13_11();
  v4(v3);
  v5 = OUTLINED_FUNCTION_16_8();
  if (v6(v5) == *MEMORY[0x277D72A58])
  {
    v7 = OUTLINED_FUNCTION_16_8();
    v8(v7);
    swift_projectBox();
    v9 = OUTLINED_FUNCTION_7_15();
    v10(v9);
    v11 = OUTLINED_FUNCTION_66();
    if (v12(v11) == *MEMORY[0x277D72998])
    {
      v13 = OUTLINED_FUNCTION_66();
      v14(v13);
      v15 = OUTLINED_FUNCTION_19_8();
      v16(v15);

      sub_267EF8CD8();
      v17 = OUTLINED_FUNCTION_46_2();
      v18(v17);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_66();
      v22(v21);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_16_8();
    v20(v19);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C7F228(uint64_t a1, uint64_t a2)
{
  sub_267EF2BA8();
  sub_267C7FCD4();
  v2 = sub_267EF9608();
}

uint64_t sub_267C7F290(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E10, &unk_267F0DF70);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v15 = a4;

    return sub_267E98204();
  }

  else
  {
    if (a2)
    {
      sub_267EF2B48();
      v17 = sub_267EF2BA8();
      v18 = 0;
    }

    else
    {
      v17 = sub_267EF2BA8();
      v18 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v18, 1, v17);
    sub_267BBE1D0(v10, v13, &qword_280229E20, &unk_267EFDCC0);
    v13[*(v11 + 48)] = a3;
    return sub_267E92A84(v14, v13);
  }
}

uint64_t sub_267C7F434@<X0>(uint64_t a1@<X8>)
{
  sub_267EF7398();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v4 = OUTLINED_FUNCTION_11_14(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_19();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D1C658])
  {
    v9 = *MEMORY[0x277D56010];
    sub_267EF6A18();
    OUTLINED_FUNCTION_22();
    return (*(v10 + 104))(a1, v9);
  }

  else
  {
    v12 = v8;
    v13 = *MEMORY[0x277D1C650];
    sub_267EF6A18();
    OUTLINED_FUNCTION_22();
    v15 = *(v14 + 104);
    if (v12 == v13)
    {
      return v15(a1, *MEMORY[0x277D56008]);
    }

    else
    {
      v15(a1, *MEMORY[0x277D56018]);
      v16 = OUTLINED_FUNCTION_19();
      return v17(v16);
    }
  }
}

uint64_t sub_267C7F5C4()
{
  sub_267EF8D28();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_26();
  sub_267EF8D48();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_12_9(v2);
  v4(v3);
  v5 = OUTLINED_FUNCTION_46_2();
  if (v6(v5) == *MEMORY[0x277D72A58])
  {
    v7 = OUTLINED_FUNCTION_46_2();
    v8(v7);
    swift_projectBox();
    v9 = OUTLINED_FUNCTION_7_15();
    v10(v9);
    v11 = OUTLINED_FUNCTION_66();
    v12(v11);
    v13 = OUTLINED_FUNCTION_66();
    v14(v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_46_2();
    v16(v15);
  }

  return OUTLINED_FUNCTION_61_0();
}

void sub_267C7F7B8()
{
  OUTLINED_FUNCTION_48_0();
  sub_267EF8D28();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_26();
  sub_267EF8D48();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  sub_267EF8CB8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_13_11();
  v4(v3);
  v5 = OUTLINED_FUNCTION_16_8();
  if (v6(v5) == *MEMORY[0x277D72A58])
  {
    v7 = OUTLINED_FUNCTION_16_8();
    v8(v7);
    swift_projectBox();
    v9 = OUTLINED_FUNCTION_7_15();
    v10(v9);
    v11 = OUTLINED_FUNCTION_66();
    if (v12(v11) == *MEMORY[0x277D72970])
    {
      v13 = OUTLINED_FUNCTION_66();
      v14(v13);
      v15 = OUTLINED_FUNCTION_19_8();
      v16(v15);

      sub_267EF7C38();
      sub_267EF8CA8();
      sub_267EF7C08();
      v17 = OUTLINED_FUNCTION_46_2();
      v18(v17);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_66();
      v22(v21);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_16_8();
    v20(v19);
  }

  OUTLINED_FUNCTION_47();
}

id sub_267C7FA44()
{
  sub_267EF8D28();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_26();
  sub_267EF8D48();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v3 = OUTLINED_FUNCTION_12_9(v2);
  v4(v3);
  v5 = OUTLINED_FUNCTION_46_2();
  if (v6(v5) == *MEMORY[0x277D72A58])
  {
    v7 = OUTLINED_FUNCTION_46_2();
    v8(v7);
    swift_projectBox();
    v9 = OUTLINED_FUNCTION_7_15();
    v10(v9);
    v11 = OUTLINED_FUNCTION_66();
    if (v12(v11) == *MEMORY[0x277D729B8])
    {
      v13 = OUTLINED_FUNCTION_66();
      v14(v13);

      sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
      v15 = OUTLINED_FUNCTION_61_0();
      return sub_267C7FC58(v15, v16);
    }

    v20 = OUTLINED_FUNCTION_66();
    v21(v20);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_46_2();
    v19(v18);
  }

  return 0;
}

id sub_267C7FC58(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_267EF8FF8();

  v4 = [v2 initWithSpokenPhrase_];

  return v4;
}

unint64_t sub_267C7FCD4()
{
  result = qword_280229EB0;
  if (!qword_280229EB0)
  {
    sub_267EF2BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229EB0);
  }

  return result;
}

uint64_t sub_267C7FD8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  if (a1)
  {
    v3 = type metadata accessor for MessagesApp(0);
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v3;

  sub_267EF78D8();
}

unint64_t sub_267C7FEF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9EE8();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_267C7FF48(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x4373736572646461;
      break;
    case 2:
      result = 0x696A6F6D696E61;
      break;
    case 3:
      result = 0x7261646E656C6163;
      break;
    case 4:
      result = 0x546C617469676964;
      break;
    case 5:
      result = 0x46636972656E6567;
      break;
    case 6:
      result = 0x4D636972656E6567;
      break;
    case 7:
      result = 0x74697277646E6168;
      break;
    case 8:
      result = 0x6567616D69;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 10:
      result = 0x72656B63697473;
      break;
    case 11:
      result = 0x6F65646976;
      break;
    case 12:
      result = 0x615074656C6C6177;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x646574616D696E61;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 1819045744;
      break;
    case 17:
      result = 0x52636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267C8019C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267C7FEF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_267C801CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_267C7FF48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C80200(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_267C80240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountableComponentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CountableComponentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C804BC()
{
  result = qword_280229EF0;
  if (!qword_280229EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229EF0);
  }

  return result;
}

uint64_t sub_267C80510()
{
  OUTLINED_FUNCTION_12();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v1[18] = swift_task_alloc();
  v6 = sub_267EF79B8();
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();
  v7 = sub_267EF2E38();
  v1[22] = v7;
  v1[23] = *(v7 - 8);
  v1[24] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C80660()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 8);
  *(v0 + 200) = v2;
  v3 = *(v1 + 48);
  if (v3)
  {
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);
    v7 = *(v0 + 104);
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v8);
    (*(v9 + 8))(v8, v9);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_267EF3B68();
    v10 = v7[52];

    v3 = sub_267BC20F4(v4, 0, 0, v10, v3);

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v1 = *(v0 + 136);
  }

  *(v0 + 208) = v3;
  sub_267C7FF48(*v1);
  sub_267EF90F8();

  if (*(v1 + 64))
  {
    v11 = 1;
  }

  else
  {
    INMessageEffectType.description.getter(*(*(v0 + 136) + 56));
    sub_267EF90F8();

    v11 = 0;
  }

  v12 = *(v0 + 104);
  __swift_storeEnumTagSinglePayload(*(v0 + 144), v11, 1, *(v0 + 152));
  sub_267DBAEAC();
  *(v0 + 216) = v13;
  if (*(v12 + 88))
  {
    OUTLINED_FUNCTION_10(&unk_267F08D08);
    v29 = v14;
    v15 = swift_task_alloc();
    *(v0 + 224) = v15;
    *v15 = v0;
    v15[1] = sub_267C8097C;
    v16 = *(v0 + 136);
    v17 = *(v0 + 104);
    v18 = *(v0 + 112);

    return v29(v16, v17, v18);
  }

  else
  {
    v20 = v13;
    v21 = *(v0 + 168);
    v22 = *(v0 + 144);
    v28 = *(v0 + 136);
    v23 = v2;
    v24 = *(v0 + 120);
    v30 = *(v0 + 104);
    v25 = __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
    sub_267BB8364(v25);
    v26 = swift_task_alloc();
    *(v0 + 264) = v26;
    v26[1].i64[0] = v24;
    v26[1].i64[1] = v21;
    v26[2].i64[0] = v23;
    v26[2].i64[1] = v3;
    v26[3].i64[0] = v22;
    v26[3].i64[1] = v20;
    v26[4] = vextq_s8(v30, v30, 8uLL);
    v26[5].i64[0] = v28;
    v27 = swift_task_alloc();
    *(v0 + 272) = v27;
    *v27 = v0;
    v27[1] = sub_267C80E98;
    OUTLINED_FUNCTION_26_8();

    return sub_267D42B24();
  }
}

uint64_t sub_267C8097C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C80A64()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v12 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
  sub_267BB8364(v8);
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v3;
  *(v9 + 32) = v12;
  *(v9 + 48) = v5;
  *(v9 + 56) = v2;
  *(v9 + 64) = v1;
  *(v9 + 72) = v7;
  *(v9 + 80) = v4;
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_267C80B94;
  OUTLINED_FUNCTION_26_8();

  return sub_267D4530C();
}

uint64_t sub_267C80B94()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 256) = v0;

  if (v0)
  {
    v8 = sub_267C80DCC;
  }

  else
  {
    v8 = sub_267C80CB4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267C80CB4()
{

  v4 = *(v0 + 104);
  v5 = *(v4 + 416);
  if (v5)
  {
    v1 = *(v0 + 216);
    if ((*(v4 + 426) & 1) == 0)
    {

      sub_267C38238();
    }
  }

  OUTLINED_FUNCTION_31_7();
  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  (*(v3 + 8))(v5, v1);

  v6 = OUTLINED_FUNCTION_55_1();

  return v7(v6);
}

uint64_t sub_267C80DCC()
{

  OUTLINED_FUNCTION_29_7();

  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  (*(v3 + 8))(v0, v1);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C80E98()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 280) = v0;

  if (v0)
  {
    v8 = sub_267C810C8;
  }

  else
  {
    v8 = sub_267C80FB8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267C80FB8()
{
  v4 = *(v0 + 104);
  v5 = *(v4 + 416);
  if (v5)
  {
    v1 = *(v0 + 216);
    if ((*(v4 + 426) & 1) == 0)
    {

      sub_267C38238();
    }
  }

  OUTLINED_FUNCTION_31_7();
  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  (*(v3 + 8))(v5, v1);

  v6 = OUTLINED_FUNCTION_55_1();

  return v7(v6);
}

uint64_t sub_267C810C8()
{
  OUTLINED_FUNCTION_29_7();

  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  (*(v3 + 8))(v0, v1);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C8118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v12;
  v8[16] = v13;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C812CC, 0, 0);
}

void sub_267C812CC()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  SpokenGenericCountableComponentParameters = type metadata accessor for SearchForMessagesReadSpokenGenericCountableComponentParameters(0);
  *(v0 + 200) = SpokenGenericCountableComponentParameters;
  v5 = SpokenGenericCountableComponentParameters[9];
  sub_267B9F98C(v2 + v5, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v7 = ComponentPatternCommonParameters[5];
  v8 = sub_267EF79B8();
  *(v0 + 208) = v8;
  OUTLINED_FUNCTION_22();
  (*(v9 + 16))(v2 + v5, v3 + v7, v8);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  OUTLINED_FUNCTION_22_9();
  v13 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(SpokenGenericCountableComponentParameters[14]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(SpokenGenericCountableComponentParameters[15]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(SpokenGenericCountableComponentParameters[17]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_23_0();
  v37 = *(v0 + 168);
  v38 = *(v0 + 56);
  OUTLINED_FUNCTION_2_1();
  sub_267BD3DDC(v37, v38 + SpokenGenericCountableComponentParameters[19]);
  OUTLINED_FUNCTION_11_15();
  sub_267B9F98C(v38 + v8, &unk_28022AE30, &qword_267EFC0B0);
  v14 = OUTLINED_FUNCTION_21_6();
  v15(v14);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v8);
  OUTLINED_FUNCTION_20_5();
  v19 = SpokenGenericCountableComponentParameters[16];

  *(v38 + v19) = v13;
  sub_267BE855C(ComponentPatternCommonParameters, v38 + SpokenGenericCountableComponentParameters[10]);
  v20 = SpokenGenericCountableComponentParameters[6];

  *(v38 + v20) = v5;
  v21 = SpokenGenericCountableComponentParameters[18];
  v22 = *(v38 + v21);

  *(v38 + v21) = v37;
  v23 = sub_267EF7998();
  *(v0 + 248) = OUTLINED_FUNCTION_28_13(v23, v24);
  v25 = sub_267BDAF74(v22);
  *(v0 + 264) = v25 & 1;
  if (v25)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v26[1] = sub_267C8182C;
    OUTLINED_FUNCTION_15_3();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v38)
  {
    OUTLINED_FUNCTION_3_18();
    (*(v29 + 8))(v13);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_0_17();
    v31(v30);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v32, v33, v34);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C8182C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 265) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C81914(uint64_t a1)
{
  v2 = *(v1 + 265);
  v11 = *(v1 + 216);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  if (v11)
  {
    OUTLINED_FUNCTION_3_18();
    (*(v3 + 8))(v2);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_17();
    v6(v5);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v7, v8, v9);
  }

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267C81AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v12;
  v8[16] = v13;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C81BF0, 0, 0);
}

void sub_267C81BF0()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  GenericCountableComponentParameters = type metadata accessor for SearchForMessagesReadGenericCountableComponentParameters(0);
  *(v0 + 200) = GenericCountableComponentParameters;
  v5 = GenericCountableComponentParameters[9];
  sub_267B9F98C(v2 + v5, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v7 = ComponentPatternCommonParameters[5];
  v8 = sub_267EF79B8();
  *(v0 + 208) = v8;
  OUTLINED_FUNCTION_22();
  (*(v9 + 16))(v2 + v5, v3 + v7, v8);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  OUTLINED_FUNCTION_22_9();
  v13 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(GenericCountableComponentParameters[15]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(GenericCountableComponentParameters[16]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_24_5(GenericCountableComponentParameters[18]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_23_0();
  v37 = *(v0 + 168);
  v38 = *(v0 + 56);
  OUTLINED_FUNCTION_2_1();
  sub_267BD3DDC(v37, v38 + GenericCountableComponentParameters[19]);
  OUTLINED_FUNCTION_11_15();
  sub_267B9F98C(v38 + v8, &unk_28022AE30, &qword_267EFC0B0);
  v14 = OUTLINED_FUNCTION_21_6();
  v15(v14);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v8);
  OUTLINED_FUNCTION_20_5();
  v19 = GenericCountableComponentParameters[17];

  *(v38 + v19) = v13;
  sub_267BE855C(ComponentPatternCommonParameters, v38 + GenericCountableComponentParameters[11]);
  v20 = GenericCountableComponentParameters[6];

  *(v38 + v20) = v5;
  v21 = GenericCountableComponentParameters[10];
  v22 = *(v38 + v21);

  *(v38 + v21) = v37;
  v23 = sub_267EF7998();
  *(v0 + 248) = OUTLINED_FUNCTION_28_13(v23, v24);
  v25 = sub_267BDAF74(v22);
  *(v0 + 264) = v25 & 1;
  if (v25)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v26 = swift_task_alloc();
    *(v0 + 256) = v26;
    *v26 = v0;
    v26[1] = sub_267C82150;
    OUTLINED_FUNCTION_15_3();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v38)
  {
    OUTLINED_FUNCTION_3_18();
    (*(v29 + 8))(v13);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_0_17();
    v31(v30);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v32, v33, v34);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267C82150()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 265) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_267C82238(uint64_t a1)
{
  v2 = v1;
  sub_267BE4994(a1, v19);
  if (!v20)
  {
    sub_267B9F98C(v19, &qword_280229910, &unk_267EFEB70);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0x42uLL);
    v3 = *v1;
    v4 = __dst[0];
    v5 = sub_267C7FF48(v3);
    v7 = v6;
    if (v5 == sub_267C7FF48(v4) && v7 == v8)
    {
    }

    else
    {
      v10 = sub_267EF9EA8();

      if ((v10 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v11 = *(v2 + 6);
    v12 = __dst[6];
    if (v11)
    {
      if (!__dst[6])
      {
        goto LABEL_23;
      }

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v13 = v12;
      v14 = v11;
      v15 = sub_267EF9818();

      if ((v15 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (__dst[6])
    {
LABEL_23:
      sub_267C829D4(__dst);
      return;
    }

    if (v2[64])
    {
      if ((__dst[8] & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((__dst[8] & 1) != 0 || *(v2 + 7) != __dst[7])
    {
      goto LABEL_23;
    }

    v16 = *(v2 + 1);
    if (__OFADD__(v16, __dst[1]))
    {
      __break(1u);
    }

    else
    {
      *(v2 + 1) = v16 + __dst[1];
      sub_267BE22E4(__dst[2], v2 + 2);
      sub_267C829D4(__dst);
    }
  }
}

void *sub_267C82420()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_267C82454()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_267C8248C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_267C824CC()
{
  memcpy((v1 + 16), v0, 0x42uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_267C82568;

  return sub_267C0FB00();
}

uint64_t sub_267C82568()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_267C82658()
{
  memcpy((v1 + 16), v0, 0x42uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_267C8272C;

  return sub_267C80510();
}

uint64_t sub_267C8272C()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_267C82860(uint64_t a1)
{
  result = sub_267C82888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C82888()
{
  result = qword_280229EF8;
  if (!qword_280229EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229EF8);
  }

  return result;
}

unint64_t sub_267C828DC(uint64_t a1)
{
  result = sub_267C82904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C82904()
{
  result = qword_280229F00;
  if (!qword_280229F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229F00);
  }

  return result;
}

unint64_t sub_267C82958(uint64_t a1)
{
  result = sub_267C82980();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267C82980()
{
  result = qword_280229F08;
  if (!qword_280229F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229F08);
  }

  return result;
}

uint64_t sub_267C82A04()
{
  OUTLINED_FUNCTION_35_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_16_2(v1, v2, v3, v4, v5, v6, v7, v8, v18);

  return sub_267C81AB0(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_267C82AB4()
{
  OUTLINED_FUNCTION_35_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v9 = OUTLINED_FUNCTION_16_2(v1, v2, v3, v4, v5, v6, v7, v8, v18);

  return sub_267C8118C(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t sub_267C82B64()
{
  result = qword_280229F10;
  if (!qword_280229F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229F10);
  }

  return result;
}

void sub_267C82BE4(uint64_t a1)
{
  sub_267C82CB0(319);
  if (v1 <= 0x3F)
  {
    sub_267C82D18(319);
    if (v2 <= 0x3F)
    {
      sub_267C82D70(319);
      if (v3 <= 0x3F)
      {
        sub_267EF2BA8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267C82CB0(uint64_t a1)
{
  if (!qword_280229F28)
  {
    sub_267BA9F38(255, &qword_28022BB60, 0x277CD3E90);
    v1 = sub_267EF9888();
    if (!v2)
    {
      atomic_store(v1, &qword_280229F28);
    }
  }
}

void sub_267C82D18(uint64_t a1)
{
  if (!qword_280229F30)
  {
    type metadata accessor for INMessageEffectType(255);
    v1 = sub_267EF9888();
    if (!v2)
    {
      atomic_store(v1, &qword_280229F30);
    }
  }
}

void sub_267C82D70(uint64_t a1)
{
  if (!qword_280229F38)
  {
    v2 = sub_267BA9F38(255, &qword_28022A350, 0x277CD3DE0);
    v3 = sub_267C82DE4();
    v5 = type metadata accessor for OrderedSet(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280229F38);
    }
  }
}

unint64_t sub_267C82DE4()
{
  result = qword_280229F40;
  if (!qword_280229F40)
  {
    sub_267BA9F38(255, &qword_28022A350, 0x277CD3DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229F40);
  }

  return result;
}

uint64_t sub_267C82E68()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_267EF2E38();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C82F28, 0, 0);
}

uint64_t sub_267C82F28()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 8);
  if (v2)
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
    v7 = OUTLINED_FUNCTION_12_0();
    v8(v7);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_12_0();
    sub_267EF3B68();
    v9 = v6[52];

    v2 = sub_267BC20F4(v3, 0, 0, v9, v2);

    (*(v4 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v1 = *(v0 + 144);
  }

  *(v0 + 176) = v2;
  v10 = *(v0 + 128);
  v11 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_0(*(v0 + 136), *(*(v0 + 136) + 24));
  __swift_project_boxed_opaque_existential_0((v11 + 16), *(v11 + 40));
  v12 = OUTLINED_FUNCTION_12_0();
  v13(v12);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_12_0();
  v14 = sub_267EF3C48();
  sub_267BB8364(v14);
  v15 = swift_task_alloc();
  *(v0 + 184) = v15;
  v15[2] = v2;
  v15[3] = v1;
  v15[4] = v11;
  v15[5] = v10;
  v16 = swift_task_alloc();
  *(v0 + 192) = v16;
  *v16 = v0;
  v16[1] = sub_267C83144;

  return sub_267D474E4();
}

uint64_t sub_267C83144()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[25] = v0;

  if (v0)
  {
    v7 = sub_267C83330;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v7 = sub_267C83280;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267C83280()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[15];
  if (*(v1 + 416) && (*(v1 + 426) & 1) == 0)
  {

    sub_267C38238();
  }

  v2 = v0[13];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_267C83330()
{
  OUTLINED_FUNCTION_12();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C8339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_267EF8248();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F58, &unk_267EFFCF0);
  v5[21] = swift_task_alloc();
  v7 = sub_267EF2E38();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = type metadata accessor for SearchForMessagesReadSpokenSafetySessionComponentParameters(0);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C8356C, 0, 0);
}

uint64_t sub_267C8356C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v25 = *(v0 + 200);
  v29 = *(v0 + 168);
  v30 = *(v0 + 176);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v31 = *(v0 + 112);
  v32 = *(v0 + 184);
  v6 = *(v0 + 96);
  v7 = v2[16];

  *(v6 + v7) = v5;
  v26 = *(type metadata accessor for SafetySessionComponent(0) + 36);
  v27 = *(v6 + v2[10]);
  v28 = *(v6 + v2[9]);
  v9 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v9);
  (*(v8 + 8))(v9, v8);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_15_10();
  sub_267EF3B68();
  __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
  v10 = OUTLINED_FUNCTION_15_10();
  v11(v10);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_15_10();
  sub_267EF3B68();
  sub_267EF2E28();
  v12 = *(v32 + 8);
  v13 = v12(v3, v30);
  v14 = sub_267BB8364(v13);
  sub_267C83C4C((v31 + v26), v28, v27, v25, v29, v14 & 1, v1);
  sub_267B9FF34(v29, &qword_280229F58, &unk_267EFFCF0);
  v12(v25, v30);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_20_6(v2[13]);
  OUTLINED_FUNCTION_20_6(v2[7]);
  OUTLINED_FUNCTION_20_6(v2[17]);
  OUTLINED_FUNCTION_20_6(v2[20]);
  OUTLINED_FUNCTION_20_6(v2[12]);
  OUTLINED_FUNCTION_20_6(v2[18]);
  type metadata accessor for ReadComponentPatternCommonParameters(0);
  *(v0 + 224) = sub_267EF7998();
  *(v0 + 232) = v15;
  v16 = v4[12];
  *(v0 + 240) = v16;
  *(v0 + 248) = sub_267DB3C90();
  v17 = sub_267BDAF74(v16);
  *(v0 + 264) = v17 & 1;
  if (v17)
  {
    v18 = swift_task_alloc();
    *(v0 + 256) = v18;
    *v18 = v0;
    v18[1] = sub_267C839B8;

    return sub_267C8F96C(sub_267BDA6DC, 0);
  }

  else
  {
    sub_267EF7C18();
    sub_267EF8238();
    sub_267EF8348();
    v20 = *(v0 + 216);
    v21 = OUTLINED_FUNCTION_10_16();
    v22(v21);
    sub_267C856C4(v20);
    v23 = sub_267EF79B8();
    OUTLINED_FUNCTION_19_9(v23);

    OUTLINED_FUNCTION_17();

    return v24();
  }
}

uint64_t sub_267C839B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  *(v1 + 265) = v0;

  return MEMORY[0x2822009F8](sub_267C83AB0, 0, 0);
}

uint64_t sub_267C83AB0(uint64_t a1)
{
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  v2 = *(v1 + 216);
  v3 = OUTLINED_FUNCTION_10_16();
  v4(v3);
  sub_267C856C4(v2);
  v5 = sub_267EF79B8();
  OUTLINED_FUNCTION_19_9(v5);

  OUTLINED_FUNCTION_17();

  return v6();
}

void *sub_267C83C4C@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v182 = a5;
  v180 = a4;
  v190 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_6();
  v192 = v12;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v13);
  v177 = &v174 - v14;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v15);
  v183 = &v174 - v16;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v17);
  v189 = &v174 - v18;
  sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v185 = v20;
  v186 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6();
  v181 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  v184 = &v174 - v23;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_6();
  v179 = v24;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v25);
  v174 = &v174 - v26;
  sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v27);
  v28 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(a7, 1, 1, v28);
  SpokenSafetySessionComponentParameters = type metadata accessor for SearchForMessagesReadSpokenSafetySessionComponentParameters(0);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[5]);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[6]);
  v188 = SpokenSafetySessionComponentParameters[7];
  OUTLINED_FUNCTION_1_28(v188);
  v30 = SpokenSafetySessionComponentParameters[12];
  __swift_storeEnumTagSinglePayload(v30 + a7, 1, 1, v28);
  v191 = SpokenSafetySessionComponentParameters[13];
  OUTLINED_FUNCTION_1_28(v191);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[14]);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[15]);
  v176 = SpokenSafetySessionComponentParameters[17];
  OUTLINED_FUNCTION_1_28(v176);
  v178 = SpokenSafetySessionComponentParameters[18];
  OUTLINED_FUNCTION_1_28(v178);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[19]);
  v187 = SpokenSafetySessionComponentParameters[20];
  OUTLINED_FUNCTION_1_28(v187);
  OUTLINED_FUNCTION_1_28(SpokenSafetySessionComponentParameters[21]);
  *(a7 + SpokenSafetySessionComponentParameters[8]) = 0;
  *(a7 + SpokenSafetySessionComponentParameters[9]) = a2;
  *(a7 + SpokenSafetySessionComponentParameters[10]) = a3;
  *(a7 + SpokenSafetySessionComponentParameters[11]) = 0;
  *(a7 + SpokenSafetySessionComponentParameters[16]) = 0;
  *(a7 + SpokenSafetySessionComponentParameters[22]) = a6;
  v31 = objc_opt_self();
  type metadata accessor for SafetySessionComponent(0);
  v32 = sub_267EF2AF8();
  v33 = [v31 messageTypeFromURL_];

  if (v33 == 3)
  {
    v193 = v30;
    sub_267BA9F38(0, &qword_280229F60, 0x277D4AB10);
    v85 = OUTLINED_FUNCTION_6_15();
    v86(v85);
    result = sub_267D60CBC();
    if (result)
    {
      v87 = result;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v88 = sub_267EF8A08();
      __swift_project_value_buffer(v88, qword_280240FB0);
      v89 = v87;
      v90 = sub_267EF89F8();
      v91 = sub_267EF95D8();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_48();
        v190 = OUTLINED_FUNCTION_52();
        v194[0] = v190;
        *v92 = 136315138;
        v93 = v89;
        v94 = [v93 description];
        v95 = sub_267EF9028();
        v97 = v96;

        v98 = sub_267BA33E8(v95, v97, v194);

        *(v92 + 4) = v98;
        OUTLINED_FUNCTION_22_1(&dword_267B93000, v99, v100, "#SafetySessionComponent: Received a SMKeyReleaseMessage %s");
        __swift_destroy_boxed_opaque_existential_0(v190);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v78 = v191;
      v79 = v192;
      v101 = v189;
      v102 = v193;
      [v89 sessionType];
      v103 = sub_267DFEB18();
      OUTLINED_FUNCTION_21_7(v103, v104);

      v105 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v105, v106, v107, v28);
      OUTLINED_FUNCTION_24_6(v187);
      [v89 destinationType];
      v108 = sub_267DFEBBC();
      OUTLINED_FUNCTION_21_7(v108, v109);

      v110 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v110, v111, v112, v28);
      OUTLINED_FUNCTION_24_6(v188);
      v113 = sub_267DFEC50([v89 triggerType]);
      OUTLINED_FUNCTION_21_7(v113, v114);

      v115 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v28);
      sub_267BD3DDC(v101, v102 + a7);
      goto LABEL_39;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v33 == 2)
  {
    sub_267BA9F38(0, &qword_280229F68, 0x277D4AB98);
    v62 = OUTLINED_FUNCTION_6_15();
    v63(v62);
    result = sub_267D60CBC();
    if (result)
    {
      v64 = result;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v65 = sub_267EF8A08();
      __swift_project_value_buffer(v65, qword_280240FB0);
      v66 = v64;
      v67 = sub_267EF89F8();
      v68 = sub_267EF95D8();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_48();
        v193 = OUTLINED_FUNCTION_52();
        v194[0] = v193;
        *v69 = 136315138;
        v70 = v66;
        v71 = [v70 description];
        v72 = sub_267EF9028();
        v74 = v73;

        v75 = sub_267BA33E8(v72, v74, v194);

        *(v69 + 4) = v75;
        OUTLINED_FUNCTION_22_1(&dword_267B93000, v76, v77, "#SafetySessionComponent: Received a SMSessionEndMessage %s");
        __swift_destroy_boxed_opaque_existential_0(v193);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v78 = v191;
      v79 = v192;
      [v66 sessionType];
      v80 = sub_267DFEB18();
      OUTLINED_FUNCTION_21_7(v80, v81);

      v82 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v28);
      OUTLINED_FUNCTION_24_6(v187);
      [v66 sessionEndReason];
      v123 = v177;
      sub_267EF90F8();

      OUTLINED_FUNCTION_5_20(v123);
      sub_267BD3DDC(v123, a7 + v176);
      [v66 destinationType];
      v124 = sub_267DFEBBC();
      OUTLINED_FUNCTION_21_7(v124, v125);

      v126 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v28);
      OUTLINED_FUNCTION_24_6(v188);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v33 != 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v118 = sub_267EF8A08();
    __swift_project_value_buffer(v118, qword_280240FB0);
    v119 = sub_267EF89F8();
    v120 = sub_267EF95E8();
    v121 = os_log_type_enabled(v119, v120);
    v78 = v191;
    v79 = v192;
    if (v121)
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_267B93000, v119, v120, "#SafetySessionComponent: Unsupported check-in message type", v122, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_39;
  }

  sub_267BA9F38(0, &qword_280229F70, 0x277D4ABE8);
  v34 = OUTLINED_FUNCTION_6_15();
  v35(v34);
  result = sub_267D60CBC();
  if (result)
  {
    v37 = result;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v38 = sub_267EF8A08();
    v39 = __swift_project_value_buffer(v38, qword_280240FB0);
    v40 = v37;
    v193 = v39;
    v41 = sub_267EF89F8();
    v42 = sub_267EF95D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_48();
      v190 = OUTLINED_FUNCTION_52();
      v194[0] = v190;
      *v43 = 136315138;
      v44 = v40;
      v45 = [v44 description];
      v46 = sub_267EF9028();
      v48 = v47;

      v49 = sub_267BA33E8(v46, v48, v194);

      *(v43 + 4) = v49;
      OUTLINED_FUNCTION_23_8(&dword_267B93000, v50, v51, "#SafetySessionComponent: Received a SMSessionStartMessage %s");
      __swift_destroy_boxed_opaque_existential_0(v190);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v52 = v186;
    v53 = v40;
    v54 = sub_267EF89F8();
    v55 = sub_267EF95D8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_48();
      v57 = OUTLINED_FUNCTION_52();
      v194[0] = v57;
      *v56 = 136315138;
      v58 = [v53 coarseEstimatedEndTime];
      if (v58)
      {
        v59 = v58;
        v60 = v174;
        sub_267EF2C98();

        v61 = 0;
      }

      else
      {
        v61 = 1;
        v60 = v174;
      }

      __swift_storeEnumTagSinglePayload(v60, v61, 1, v52);
      v129 = sub_267EF9098();
      v131 = sub_267BA33E8(v129, v130, v194);

      *(v56 + 4) = v131;
      _os_log_impl(&dword_267B93000, v54, v55, "#SafetySessionComponent: session coarse end time is %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v132 = v53;
    v133 = sub_267EF89F8();
    v134 = sub_267EF95D8();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = OUTLINED_FUNCTION_48();
      v190 = OUTLINED_FUNCTION_52();
      v194[0] = v190;
      *v135 = 136315138;
      v136 = [v132 estimatedEndTime];
      v193 = v132;
      v137 = v184;
      sub_267EF2C98();

      sub_267C85504(&qword_28022BDE0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v138 = v186;
      v139 = sub_267EF9E58();
      v141 = v140;
      v142 = v137;
      v132 = v193;
      (*(v185 + 8))(v142, v138);
      v143 = sub_267BA33E8(v139, v141, v194);

      *(v135 + 4) = v143;
      OUTLINED_FUNCTION_23_8(&dword_267B93000, v144, v145, "#SafetySessionComponent: session end time is %s");
      __swift_destroy_boxed_opaque_existential_0(v190);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v147 = v188;
    v146 = v189;
    v148 = v187;
    [v132 sessionType];
    sub_267DFEB18();
    sub_267EF90F8();

    v149 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v149, v150, v151, v28);
    sub_267BD3DDC(v146, a7 + v148);
    [v132 destinationType];
    sub_267DFEBBC();
    sub_267EF90F8();

    v152 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v28);
    sub_267BD3DDC(v146, a7 + v147);
    v193 = sub_267EF2D48();
    v156 = v155;
    v157 = [v132 coarseEstimatedEndTime];
    if (v157)
    {
      v158 = v157;
      v159 = v132;
      v160 = v184;
      sub_267EF2C98();

      v161 = v185;
      v162 = v186;
      v163 = *(v185 + 32);
      v164 = v179;
      v165 = v160;
      v132 = v159;
      v163(v179, v165, v186);
      v166 = OUTLINED_FUNCTION_3_19();
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v162);
      v169 = v181;
      v163(v181, v164, v162);
      v79 = v192;
    }

    else
    {
      v170 = v179;
      v162 = v186;
      __swift_storeEnumTagSinglePayload(v179, 1, 1, v186);
      v171 = [v132 estimatedEndTime];
      v169 = v181;
      sub_267EF2C98();

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v170, 1, v162);
      v79 = v192;
      v161 = v185;
      if (EnumTagSinglePayload != 1)
      {
        sub_267B9FF34(v170, &qword_28022BD90, &unk_267EFCDD0);
      }
    }

    sub_267C84B60(v193, v156, v182, v169);

    (*(v161 + 8))(v169, v162);
    v173 = v183;
    sub_267EF90F8();

    OUTLINED_FUNCTION_5_20(v173);
    sub_267BD3DDC(v173, a7 + v178);
    v78 = v191;
LABEL_39:
    sub_267EF90F8();

    OUTLINED_FUNCTION_5_20(v79);
    return sub_267BD3DDC(v79, a7 + v78);
  }

LABEL_42:
  __break(1u);
  return result;
}

void sub_267C84B60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v61 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F58, &unk_267EFFCF0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_6();
  v59 = v7;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v11 = sub_267EF2EF8();
  OUTLINED_FUNCTION_58();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  v56 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  v57 = &v55 - v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];

  v58 = a1;
  sub_267EF2D38();
  v28 = sub_267EF2D98();
  (*(v23 + 8))(v26, v21);
  v29 = v11;
  [v27 setLocale_];

  sub_267C85660(0x61206D6D3A68, 0xE600000000000000, v27);
  sub_267C85720(v61, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_267B9FF34(v10, &qword_280229F58, &unk_267EFFCF0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);
    v31 = v27;
    v32 = sub_267EF89F8();
    v33 = sub_267EF95D8();
    if (!os_log_type_enabled(v32, v33))
    {

      goto LABEL_14;
    }

    v34 = OUTLINED_FUNCTION_48();
    v35 = OUTLINED_FUNCTION_52();
    v62 = v35;
    *v34 = 136315138;
    v36 = [v31 timeZone];

    if (v36)
    {
      v37 = v56;
      sub_267EF2ED8();

      v38 = v57;
      (*(v13 + 32))(v57, v37, v29);
      sub_267C85504(&qword_280229F78, MEMORY[0x277CC9A70], MEMORY[0x277CC9AA0]);
      v39 = sub_267EF9E58();
      v41 = v40;
      (*(v13 + 8))(v38, v29);
      v42 = sub_267BA33E8(v39, v41, &v62);

      *(v34 + 4) = v42;
      _os_log_impl(&dword_267B93000, v32, v33, "#SafetySessionComponent: No time zone available, using %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
LABEL_14:

      v51 = sub_267EF2C48();
      v52 = [v31 stringFromDate_];

      sub_267EF9028();
      return;
    }

    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v20, v10, v11);
    v43 = v20;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v44 = sub_267EF8A08();
    __swift_project_value_buffer(v44, qword_280240FB0);

    v45 = sub_267EF89F8();
    v46 = sub_267EF95D8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_48();
      v48 = OUTLINED_FUNCTION_52();
      v62 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_267BA33E8(v58, a2, &v62);
      _os_log_impl(&dword_267B93000, v45, v46, "#SafetySessionComponent: Locale is %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v49 = v59;
    sub_267EF2EB8();
    sub_267EF2EA8();

    if (__swift_getEnumTagSinglePayload(v49, 1, v29) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_267EF2EC8();
      (*(v13 + 8))(v49, v29);
    }

    [v27 setTimeZone_];

    v53 = sub_267EF2C48();
    v54 = [v27 stringFromDate_];

    sub_267EF9028();
    (*(v13 + 8))(v43, v29);
  }
}

void *sub_267C851C8()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_267C851FC()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_267C85234()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_267C85274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267C85300;

  return sub_267C82E4C();
}

uint64_t sub_267C85300()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = *(v4 + 8);
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

uint64_t sub_267C853F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267C82E68();
}

uint64_t sub_267C854AC(uint64_t a1)
{
  result = sub_267C85504(&qword_280229F48, type metadata accessor for SafetySessionComponent, &unk_267EFFCB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C85504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267C8554C(uint64_t a1)
{
  result = sub_267C85504(&qword_280229F50, type metadata accessor for SafetySessionComponent, &unk_267EFFC58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C855A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_267BAEBEC;

  return sub_267C8339C(a1, v4, v5, v7, v6);
}

void sub_267C85660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setDateFormat_];
}

uint64_t sub_267C856C4(uint64_t a1)
{
  SpokenSafetySessionComponentParameters = type metadata accessor for SearchForMessagesReadSpokenSafetySessionComponentParameters(0);
  (*(*(SpokenSafetySessionComponentParameters - 8) + 8))(a1, SpokenSafetySessionComponentParameters);
  return a1;
}

uint64_t sub_267C85720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F58, &unk_267EFFCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C85790()
{
  if (qword_280228718 != -1)
  {
    swift_once();
  }

  v1 = sub_267C8EC60([v0 type], qword_280229F80);
  if (v1 && (v2 = v1, v3 = [v0 label], v4 = sub_267C8ECAC(v3, v2), v3, , v4 != 41))
  {
    sub_267D6C2F0(v4);
    return v8;
  }

  else
  {
    v5 = [v0 label];
    if (v5)
    {
      v6 = v5;
      v7 = sub_267EF9028();
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_267C858A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F88, &qword_267EFFD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCC90;
  *(inited + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F90, &qword_267EFFD28);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_267EFCDC0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 30;
  v2 = *MEMORY[0x277CD3870];
  *(v1 + 48) = *MEMORY[0x277CD3870];
  *(v1 + 56) = 32;
  v3 = *MEMORY[0x277CD3890];
  *(v1 + 64) = *MEMORY[0x277CD3890];
  *(v1 + 72) = 33;
  v4 = *MEMORY[0x277CD38A8];
  *(v1 + 80) = *MEMORY[0x277CD38A8];
  *(v1 + 88) = 31;
  v5 = *MEMORY[0x277CD38A0];
  *(v1 + 96) = *MEMORY[0x277CD38A0];
  *(v1 + 104) = 40;
  v26 = v2;
  v27 = v3;
  v29 = v4;
  v28 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229F98, &qword_267EFFD30);
  sub_267C85BB0();
  *(inited + 40) = sub_267EF8F28();
  *(inited + 48) = 2;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_267EFFD10;
  *(v6 + 32) = 0;
  *(v6 + 40) = 10;
  *(v6 + 48) = v2;
  v7 = MEMORY[0x277CD3878];
  *(v6 + 56) = 0;
  v8 = *v7;
  *(v6 + 64) = *v7;
  v9 = MEMORY[0x277CD38B8];
  *(v6 + 72) = 5;
  v10 = *v9;
  *(v6 + 80) = *v9;
  v11 = MEMORY[0x277CD3880];
  *(v6 + 88) = 3;
  v12 = *v11;
  *(v6 + 104) = 4;
  v13 = MEMORY[0x277CD3888];
  *(v6 + 96) = v12;
  v14 = *v13;
  *(v6 + 112) = *v13;
  *(v6 + 120) = 2;
  *(v6 + 128) = v3;
  *(v6 + 136) = 9;
  v15 = *MEMORY[0x277CD3898];
  *(v6 + 144) = *MEMORY[0x277CD3898];
  *(v6 + 152) = 8;
  *(v6 + 160) = v4;
  *(v6 + 168) = 1;
  *(v6 + 176) = v5;
  *(v6 + 184) = 11;
  v16 = v26;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  v20 = v14;
  v21 = v27;
  v22 = v15;
  v23 = v29;
  v24 = v28;
  *(inited + 56) = sub_267EF8F28();
  type metadata accessor for INPersonHandleType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229FA8, &qword_267EFFD38);
  sub_267C85C64(&qword_280229FB0, type metadata accessor for INPersonHandleType, &unk_267EFBD70);
  result = sub_267EF8F28();
  qword_280229F80 = result;
  return result;
}

unint64_t sub_267C85BB0()
{
  result = qword_280229FA0;
  if (!qword_280229FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229F98, &qword_267EFFD30);
    sub_267C85C64(&qword_280228BD8, type metadata accessor for INPersonHandleLabel, &unk_267EFBDB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229FA0);
  }

  return result;
}

uint64_t sub_267C85C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267C85CCC(uint64_t a1)
{
  sub_267EF4018();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_267C85D2C(void (*a1)(char *))
{
  v2 = sub_267EF4028();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4018();
  a1(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_267C85E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267C85EDC;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_267C85EDC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_267C85FF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BCE5E4;

  return sub_267C85CAC(a1);
}

void sub_267C86088(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  sub_267DE0D58(&v24 - v11);
  v13 = sub_267EF2CC8();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  v14 = sub_267E2D6E4(a2);
  if (v14)
  {
    v15 = v14;
    v25 = v12;
    v26 = a1;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v16 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
    v17 = sub_267BAF0DC(v14);
    v18 = 0;
    while (1)
    {
      if (v17 == v18)
      {

        a4 = v28;
        a5 = v29;
        a3 = v27;
        v12 = v25;
        goto LABEL_17;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D609870](v18, v15);
      }

      else
      {
        if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v19 = *(v15 + 8 * v18 + 32);
      }

      v20 = v19;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v19 copy];
      sub_267EF99B8();
      swift_unknownObjectRelease();

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      if ((swift_dynamicCast() & 1) != 0 && v30)
      {
        MEMORY[0x26D608F90]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v16 = v31;
        ++v18;
      }

      else
      {
        ++v18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v16 = 0;
LABEL_17:
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v21 = sub_267BDB698(2, 0, v12, v16);
    sub_267EF7C18();
    if (v22)
    {
      v23 = sub_267EF8FF8();
    }

    else
    {
      v23 = 0;
    }

    [v21 _setLaunchId_];

    sub_267BC42D8(a3, v21, a4, a5);
  }
}

id sub_267C86350(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF9078();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 intentResponse];
  if (!v10 || (sub_267BE9BBC(v10), !v11))
  {
    v33[0] = a2;
    v33[1] = a3;

    MEMORY[0x26D608E60](0x65736E6F70736552, 0xE800000000000000);
  }

  v12 = [a1 intentResponse];
  if (v12)
  {
    v13 = sub_267C86DA4(v12);
    if (v14 >> 60 != 15)
    {
      v24 = v13;
      v25 = v14;
      v26 = sub_267EF8FF8();

      v27 = sub_267EF2BB8();
      v23 = INIntentResponseCreate();

      v28 = v24;
      v29 = v25;
LABEL_15:
      sub_267BBE0C8(v28, v29);
      return v23;
    }
  }

  sub_267C86D40(a1);
  if (v15)
  {
    sub_267EF9068();
    v16 = sub_267EF9038();
    v18 = v17;

    (*(v7 + 8))(v9, v6);
    if (v18 >> 60 != 15)
    {
      v30 = sub_267EF8FF8();

      v31 = sub_267EF2BB8();
      v23 = INIntentResponseCreate();

      v28 = v16;
      v29 = v18;
      goto LABEL_15;
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v19 = sub_267EF8A08();
  __swift_project_value_buffer(v19, qword_280240FB0);
  v20 = sub_267EF89F8();
  v21 = sub_267EF95E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_267B93000, v20, v21, "handleIntentCompleted contains no valid jsonEncodedIntentResponse", v22, 2u);
    MEMORY[0x26D60A7B0](v22, -1, -1);
  }

  return 0;
}

uint64_t sub_267C86680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_267C866A4, 0, 0);
}

uint64_t sub_267C866A4()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_267EFC020;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  sub_267EF7C18();
  v5 = sub_267DE86F4();
  v0[9] = v5;
  sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
  v6 = v5;
  v7 = sub_267EF9768();
  v0[10] = v7;
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v8);
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = sub_267BA9F38(0, &qword_280229FB8, 0x277D473D8);
  *v10 = v0;
  v10[1] = sub_267C86848;

  return MEMORY[0x2821BB6A0](v7, v8, v11, v9);
}

uint64_t sub_267C86848(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_267C86C68;
  }

  else
  {
    v4 = sub_267C8695C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_267C8695C()
{
  v1 = *(v0 + 96);
  v2 = [*(v0 + 72) typeName];
  v3 = sub_267EF9028();
  v5 = v4;

  v6 = sub_267C86350(v1, v3, v5);

  if (!v6)
  {
    goto LABEL_16;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

LABEL_16:
    v17 = *(v0 + 96);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    sub_267C266B0();
    swift_allocError();
    *v20 = 0xD000000000000049;
    v20[1] = 0x8000000267F14170;
    swift_willThrow();
LABEL_18:

    v24 = *(v0 + 8);

    v24();
    return;
  }

  v8 = v7;
  if ([v7 code] != 3)
  {
    v17 = *(v0 + 96);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    sub_267EF9B68();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x26D608E60](0xD000000000000022, 0x8000000267F141C0);
    *(v0 + 32) = [v8 code];
    type metadata accessor for INSearchForMessagesIntentResponseCode(0);
    sub_267EF9C58();
    v21 = *(v0 + 16);
    v22 = *(v0 + 24);
    sub_267C266B0();
    swift_allocError();
    *v23 = v21;
    v23[1] = v22;
    swift_willThrow();

    goto LABEL_18;
  }

  v9 = *(v0 + 48);
  v10 = sub_267C86CD0(v8);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_267BAF0DC(v11);
  for (i = 0; v12 != i; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D609870](i, v11);
    }

    else
    {
      if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v16 = *(v0 + 40);

    sub_267D6039C(v16, v9);
  }

  v25 = *(v0 + 96);
  v26 = *(v0 + 80);

  v27 = *(v0 + 8);

  v27(v11);
}

uint64_t sub_267C86C68()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_267C86CD0(void *a1)
{
  v1 = [a1 messages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267C86D40(void *a1)
{
  v1 = [a1 jsonEncodedIntentResponse];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267C86DA4(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF2BE8();

  return v3;
}

uint64_t sub_267C86E24()
{
  v1 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_siteName;
  v2 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_title);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_linkMediaType);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songTitle);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songArtist);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumArtist);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoArtist);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_artistName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistCurator);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioCurator);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_softwareName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookAuthor);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookAuthor);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastArtist);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodeName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodePodcastName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeEpisodeName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeSeasonName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvSeasonName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvShowName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieBundleName);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle);
  return v0;
}

uint64_t sub_267C86FD0()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_siteName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_title);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_linkMediaType);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songTitle);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_artistName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistCurator);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioCurator);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_softwareName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookAuthor);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookAuthor);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodeName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodePodcastName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeEpisodeName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeSeasonName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvSeasonName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvShowName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieBundleName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle);
  return v0;
}

uint64_t sub_267C871FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_siteName, v37);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_title, v36);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_linkMediaType, v35);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songTitle, v34);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songArtist, v33);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumName, v32);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumArtist, v31);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoName, v30);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoArtist, &v29);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_artistName, &v28);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistName, &v27);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistCurator, &v26);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioName, &v25);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioCurator, &v24);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_softwareName, &v23);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookName, &v22);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookAuthor, &v21);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookName, &v20);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookAuthor, &v19);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastName, &v18);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastArtist, &v17);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodeName, &v16);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodePodcastName, &v15);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeEpisodeName, &v14);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeSeasonName, &v13);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvSeasonName, &v12);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieName, &v11);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvShowName, &v10);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieBundleName, &v9);
  OUTLINED_FUNCTION_39_6(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
  v6 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle;
  OUTLINED_FUNCTION_83(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle, v8);
  sub_267C12290(a1 + v6, v5);

  sub_267C12220(v5, v1 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_appleTvTitle);
  return v1;
}

uint64_t sub_267C87668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  type metadata accessor for MessagesLinkMetadata.Builder(0);
  v38 = swift_allocObject();
  sub_267C86E24();
  v39 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_siteName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a1, v38 + v39);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_title;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a2, v38 + v40);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_linkMediaType;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a3, v38 + v41);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songTitle;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a4, v38 + v42);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_songArtist;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a5, v38 + v43);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a6, v38 + v44);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_albumArtist;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a7, v38 + v45);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a8, v38 + v46);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_musicVideoArtist;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a9, v38 + v47);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_artistName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a10, v38 + v48);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a11, v38 + v49);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_playlistCurator;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a12, v38 + v50);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a13, v38 + v51);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_radioCurator;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a14, v38 + v52);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_softwareName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a15, v38 + v53);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a16, v38 + v54);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_bookAuthor;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a17, v38 + v55);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a18, v38 + v56);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_audioBookAuthor;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a19, v38 + v57);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a20, v38 + v58);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastArtist;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a21, v38 + v59);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodeName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a22, v38 + v60);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_podcastEpisodePodcastName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a23, v38 + v61);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeEpisodeName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a24, v38 + v62);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvEpisodeSeasonName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a25, v38 + v63);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvSeasonName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a26, v38 + v64);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a27, v38 + v65);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_tvShowName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a28, v38 + v66);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_movieBundleName;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a29, v38 + v67);
  swift_endAccess();
  v68 = OBJC_IVAR____TtCC16SiriMessagesFlow20MessagesLinkMetadata7Builder_appleTvTitle;
  OUTLINED_FUNCTION_22_10();
  sub_267BE855C(a30, v38 + v68);
  swift_endAccess();
  type metadata accessor for MessagesLinkMetadata(0);
  v69 = swift_allocObject();
  sub_267C871FC(v38);
  sub_267BBD6F0(a30);
  sub_267BBD6F0(a29);
  sub_267BBD6F0(a28);
  sub_267BBD6F0(a27);
  sub_267BBD6F0(a26);
  sub_267BBD6F0(a25);
  sub_267BBD6F0(a24);
  sub_267BBD6F0(a23);
  sub_267BBD6F0(a22);
  sub_267BBD6F0(a21);
  sub_267BBD6F0(a20);
  sub_267BBD6F0(a19);
  sub_267BBD6F0(a18);
  sub_267BBD6F0(a17);
  sub_267BBD6F0(a16);
  sub_267BBD6F0(a15);
  sub_267BBD6F0(a14);
  sub_267BBD6F0(a13);
  sub_267BBD6F0(a12);
  sub_267BBD6F0(a11);
  sub_267BBD6F0(a10);
  sub_267BBD6F0(a9);
  sub_267BBD6F0(a8);
  sub_267BBD6F0(a7);
  sub_267BBD6F0(a6);
  sub_267BBD6F0(a5);
  sub_267BBD6F0(a4);
  sub_267BBD6F0(a3);
  sub_267BBD6F0(a2);
  sub_267BBD6F0(a1);
  return v69;
}

uint64_t sub_267C87C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v240 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](0x656D614E65746973);
  OUTLINED_FUNCTION_6();
  v233 = v7;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0();
  v232 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  v231 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v230 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v229 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v228 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v227 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v226 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v225 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v224 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v223 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v222 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_0();
  v221 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_0();
  v234 = v38;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_0();
  v235 = v40;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77_0();
  v236 = v42;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_77_0();
  v237 = v44;
  OUTLINED_FUNCTION_115();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v220[-v47];
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_26_5();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v220[-v51];
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v220[-v54];
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_50_0();
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v220[-v59];
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v220[-v62];
  v238 = a1;
  v239 = a2;
  v64 = a1 == v61 && a2 == 0xE800000000000000;
  if (v64 || (OUTLINED_FUNCTION_36_8(v61, 0xE800000000000000) & 1) != 0)
  {
    v65 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
    sub_267C12290(v65, v63);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v63);
    if (!v64)
    {
      goto LABEL_138;
    }

    v66 = v63;
    goto LABEL_9;
  }

  v69 = v238 == 0x656C746974 && v239 == 0xE500000000000000;
  if (v69 || (OUTLINED_FUNCTION_36_8(0x656C746974, 0xE500000000000000) & 1) != 0)
  {
    v70 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
    sub_267C12290(v70, v60);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v60);
    if (!v64)
    {
      goto LABEL_138;
    }

    v66 = v60;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_30_9();
  v74 = v64 && v73 == v72;
  if (!v74 && (OUTLINED_FUNCTION_36_8(v71, v72) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_9();
    v81 = v64 && v80 == 0xE900000000000065;
    if (v81 || (OUTLINED_FUNCTION_33_3(v79) & 1) != 0)
    {
      v82 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
      sub_267C12290(v82, v3);
      sub_267EF79B8();
      OUTLINED_FUNCTION_8_7(v3);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v3;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_9();
    v86 = v64 && v85 == v84;
    if (v86 || (OUTLINED_FUNCTION_36_8(v83, v84) & 1) != 0)
    {
      v87 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
      sub_267C12290(v87, v55);
      v88 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v88);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v55;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_9();
    v91 = v64 && v90 == 0xE900000000000065;
    if (v91 || (OUTLINED_FUNCTION_33_3(v89) & 1) != 0)
    {
      v92 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
      sub_267C12290(v92, v52);
      sub_267EF79B8();
      OUTLINED_FUNCTION_8_7(v52);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v52;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_47_5();
    OUTLINED_FUNCTION_30_9();
    v96 = v64 && v95 == v94;
    if (v96 || (OUTLINED_FUNCTION_36_8(v93, v94) & 1) != 0)
    {
      v97 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
      sub_267C12290(v97, v4);
      sub_267EF79B8();
      OUTLINED_FUNCTION_8_7(v4);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v4;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_43_8();
    OUTLINED_FUNCTION_30_9();
    v101 = v64 && v100 == v99;
    if (v101 || (OUTLINED_FUNCTION_36_8(v98, v99) & 1) != 0)
    {
      v102 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
      sub_267C12290(v102, v48);
      sub_267EF79B8();
      OUTLINED_FUNCTION_8_7(v48);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v48;
      goto LABEL_9;
    }

    v103 = v238 == 0xD000000000000010 && 0x8000000267F0FFB0 == v239;
    if (v103 || (OUTLINED_FUNCTION_36_8(0xD000000000000010, 0x8000000267F0FFB0) & 1) != 0)
    {
      v104 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
      sub_267C12290(v104, v237);
      v105 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v105);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v237;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_9();
    v108 = v64 && v107 == 0xEA0000000000656DLL;
    if (v108 || (OUTLINED_FUNCTION_36_8(v106, 0xEA0000000000656DLL) & 1) != 0)
    {
      v109 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
      sub_267C12290(v109, v236);
      v110 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v110);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v236;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_49_5();
    v112 = v64 && v111 == 0xEC000000656D614ELL;
    if (v112 || (OUTLINED_FUNCTION_36_8(0x7473696C79616C70, 0xEC000000656D614ELL) & 1) != 0)
    {
      v113 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
      sub_267C12290(v113, v235);
      v114 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v114);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v235;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_49_5();
    v117 = v64 && v116 == v115;
    if (v117 || (OUTLINED_FUNCTION_36_8(0x7473696C79616C70, v115) & 1) != 0)
    {
      v118 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
      sub_267C12290(v118, v234);
      v119 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v119);
      if (!v64)
      {
        goto LABEL_138;
      }

      v66 = v234;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30_9();
    v122 = v64 && v121 == 0xE900000000000065;
    if (v122 || (OUTLINED_FUNCTION_33_3(v120) & 1) != 0)
    {
      v123 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
      OUTLINED_FUNCTION_48_6(v123, &v241);
      v124 = sub_267EF79B8();
      OUTLINED_FUNCTION_9_15(v124);
      if (!v64)
      {
        goto LABEL_138;
      }

      v125 = &v241;
    }

    else
    {
      OUTLINED_FUNCTION_45_7();
      OUTLINED_FUNCTION_30_9();
      v129 = v64 && v128 == v127;
      if (v129 || (OUTLINED_FUNCTION_36_8(v126, v127) & 1) != 0)
      {
        v130 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
        OUTLINED_FUNCTION_48_6(v130, &v242);
        v131 = sub_267EF79B8();
        OUTLINED_FUNCTION_9_15(v131);
        if (!v64)
        {
          goto LABEL_138;
        }

        v125 = &v242;
      }

      else
      {
        OUTLINED_FUNCTION_30_9();
        v134 = v64 && v133 == 0xEC000000656D614ELL;
        if (v134 || (OUTLINED_FUNCTION_36_8(v132, 0xEC000000656D614ELL) & 1) != 0)
        {
          v135 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
          OUTLINED_FUNCTION_48_6(v135, &v243);
          v136 = sub_267EF79B8();
          OUTLINED_FUNCTION_9_15(v136);
          if (!v64)
          {
            goto LABEL_138;
          }

          v125 = &v243;
        }

        else
        {
          v137 = v238 == 0x656D614E6B6F6F62 && v239 == 0xE800000000000000;
          if (v137 || (OUTLINED_FUNCTION_36_8(0x656D614E6B6F6F62, 0xE800000000000000) & 1) != 0)
          {
            v138 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
            OUTLINED_FUNCTION_48_6(v138, &v244);
            v139 = sub_267EF79B8();
            OUTLINED_FUNCTION_9_15(v139);
            if (!v64)
            {
              goto LABEL_138;
            }

            v125 = &v244;
          }

          else
          {
            OUTLINED_FUNCTION_30_9();
            v143 = v64 && v142 == v141;
            if (!v143 && (OUTLINED_FUNCTION_36_8(v140, v141) & 1) == 0)
            {
              OUTLINED_FUNCTION_49_5();
              v149 = v64 && v148 == v147;
              if (v149 || (OUTLINED_FUNCTION_36_8(0x6F6F426F69647561, v147) & 1) != 0)
              {
                v150 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
                sub_267C12290(v150, v221);
                v151 = sub_267EF79B8();
                OUTLINED_FUNCTION_9_15(v151);
                if (!v64)
                {
                  goto LABEL_138;
                }

                v66 = v221;
              }

              else
              {
                OUTLINED_FUNCTION_49_5();
                v154 = v64 && v153 == v152;
                if (v154 || (OUTLINED_FUNCTION_36_8(0x6F6F426F69647561, v152) & 1) != 0)
                {
                  v155 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
                  sub_267C12290(v155, v222);
                  v156 = sub_267EF79B8();
                  OUTLINED_FUNCTION_9_15(v156);
                  if (!v64)
                  {
                    goto LABEL_138;
                  }

                  v66 = v222;
                }

                else
                {
                  OUTLINED_FUNCTION_44_8();
                  OUTLINED_FUNCTION_30_9();
                  v160 = v64 && v159 == v158;
                  if (v160 || (OUTLINED_FUNCTION_36_8(v157, v158) & 1) != 0)
                  {
                    v161 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
                    sub_267C12290(v161, v223);
                    v162 = sub_267EF79B8();
                    OUTLINED_FUNCTION_9_15(v162);
                    if (!v64)
                    {
                      goto LABEL_138;
                    }

                    v66 = v223;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_40_5();
                    OUTLINED_FUNCTION_30_9();
                    v166 = v64 && v165 == v164;
                    if (v166 || (OUTLINED_FUNCTION_36_8(v163, v164) & 1) != 0)
                    {
                      v167 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
                      sub_267C12290(v167, v224);
                      v168 = sub_267EF79B8();
                      OUTLINED_FUNCTION_9_15(v168);
                      if (!v64)
                      {
                        goto LABEL_138;
                      }

                      v66 = v224;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_30_9();
                      v172 = v64 && v170 == v171;
                      if (v172 || (OUTLINED_FUNCTION_36_8(v169, v170) & 1) != 0)
                      {
                        v173 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
                        sub_267C12290(v173, v225);
                        v174 = sub_267EF79B8();
                        OUTLINED_FUNCTION_9_15(v174);
                        if (!v64)
                        {
                          goto LABEL_138;
                        }

                        v66 = v225;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_30_9();
                        v178 = v64 && v176 == v177;
                        if (v178 || (OUTLINED_FUNCTION_36_8(v175, v176) & 1) != 0)
                        {
                          v179 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
                          sub_267C12290(v179, v226);
                          v180 = sub_267EF79B8();
                          OUTLINED_FUNCTION_9_15(v180);
                          if (!v64)
                          {
                            goto LABEL_138;
                          }

                          v66 = v226;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_30_9();
                          v184 = v64 && v182 == v183;
                          if (v184 || (OUTLINED_FUNCTION_36_8(v181, v182) & 1) != 0)
                          {
                            v185 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
                            sub_267C12290(v185, v227);
                            v186 = sub_267EF79B8();
                            OUTLINED_FUNCTION_9_15(v186);
                            if (!v64)
                            {
                              goto LABEL_138;
                            }

                            v66 = v227;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_30_9();
                            v190 = v64 && v188 == v189;
                            if (v190 || (OUTLINED_FUNCTION_36_8(v187, v188) & 1) != 0)
                            {
                              v191 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
                              sub_267C12290(v191, v228);
                              v192 = sub_267EF79B8();
                              OUTLINED_FUNCTION_9_15(v192);
                              if (!v64)
                              {
                                goto LABEL_138;
                              }

                              v66 = v228;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_30_9();
                              v195 = v64 && v194 == 0xEC000000656D614ELL;
                              if (v195 || (OUTLINED_FUNCTION_36_8(v193, 0xEC000000656D614ELL) & 1) != 0)
                              {
                                v196 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
                                sub_267C12290(v196, v229);
                                v197 = sub_267EF79B8();
                                OUTLINED_FUNCTION_9_15(v197);
                                if (!v64)
                                {
                                  goto LABEL_138;
                                }

                                v66 = v229;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_30_9();
                                v200 = v64 && v199 == 0xE900000000000065;
                                if (v200 || (OUTLINED_FUNCTION_33_3(v198) & 1) != 0)
                                {
                                  v201 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
                                  sub_267C12290(v201, v230);
                                  v202 = sub_267EF79B8();
                                  OUTLINED_FUNCTION_9_15(v202);
                                  if (!v64)
                                  {
                                    goto LABEL_138;
                                  }

                                  v66 = v230;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_30_9();
                                  v205 = v64 && v204 == 0xEA0000000000656DLL;
                                  if (v205 || (OUTLINED_FUNCTION_36_8(v203, 0xEA0000000000656DLL) & 1) != 0)
                                  {
                                    v206 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
                                    sub_267C12290(v206, v231);
                                    v207 = sub_267EF79B8();
                                    OUTLINED_FUNCTION_9_15(v207);
                                    if (!v64)
                                    {
                                      goto LABEL_138;
                                    }

                                    v66 = v231;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_42_6();
                                    OUTLINED_FUNCTION_30_9();
                                    v211 = v64 && v210 == v209;
                                    if (v211 || (OUTLINED_FUNCTION_36_8(v208, v209) & 1) != 0)
                                    {
                                      v212 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
                                      sub_267C12290(v212, v232);
                                      v213 = sub_267EF79B8();
                                      OUTLINED_FUNCTION_9_15(v213);
                                      if (!v64)
                                      {
                                        goto LABEL_138;
                                      }

                                      v66 = v232;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_46_6();
                                      OUTLINED_FUNCTION_30_9();
                                      if (!v64 || v216 != v215)
                                      {
                                        result = OUTLINED_FUNCTION_36_8(v214, v215);
                                        if ((result & 1) == 0)
                                        {
                                          goto LABEL_10;
                                        }
                                      }

                                      v218 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_appleTvTitle);
                                      sub_267C12290(v218, v233);
                                      v219 = sub_267EF79B8();
                                      OUTLINED_FUNCTION_9_15(v219);
                                      if (!v64)
                                      {
                                        goto LABEL_138;
                                      }

                                      v66 = v233;
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
                }
              }

LABEL_9:
              result = sub_267BBD6F0(v66);
LABEL_10:
              v68 = v240;
              *v240 = 0u;
              *(v68 + 1) = 0u;
              return result;
            }

            v144 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
            OUTLINED_FUNCTION_48_6(v144, &v245);
            v145 = sub_267EF79B8();
            OUTLINED_FUNCTION_9_15(v145);
            if (!v64)
            {
LABEL_138:
              OUTLINED_FUNCTION_38_7();
              OUTLINED_FUNCTION_18_0();
              v78 = *(v146 + 32);
              return v78();
            }

            v125 = &v245;
          }
        }
      }
    }

    v66 = *(v125 - 32);
    goto LABEL_9;
  }

  v75 = OUTLINED_FUNCTION_26_9(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
  sub_267C12290(v75, 0x656D614E65746973);
  v76 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(0x656D614E65746973, 1, v76) == 1)
  {
    v66 = 0x656D614E65746973;
    goto LABEL_9;
  }

  v77 = v240;
  v240[3] = v76;
  __swift_allocate_boxed_opaque_existential_0(v77);
  v78 = *(*(v76 - 8) + 32);
  return v78();
}

unint64_t sub_267C88E74(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9EE8();

  if (v2 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_267C88ECC(char a1)
{
  result = 0x656D614E65746973;
  switch(a1)
  {
    case 1:
      return 0x656C746974;
    case 2:
      return OUTLINED_FUNCTION_41_6();
    case 3:
      return 0x6C746954676E6F73;
    case 4:
      return 0x69747241676E6F73;
    case 5:
      v4 = 0x4E6D75626C61;
      goto LABEL_32;
    case 6:
      return OUTLINED_FUNCTION_47_5();
    case 7:
      return OUTLINED_FUNCTION_43_8();
    case 8:
      return 0xD000000000000010;
    case 9:
      v3 = 0x747369747261;
      goto LABEL_10;
    case 10:
      return 0x7473696C79616C70;
    case 11:
      return 0x7473696C79616C70;
    case 12:
      v4 = 0x4E6F69646172;
      goto LABEL_32;
    case 13:
      return OUTLINED_FUNCTION_45_7();
    case 14:
      return 0x6572617774666F73;
    case 15:
      return 0x656D614E6B6F6F62;
    case 16:
      return 0x687475416B6F6F62;
    case 17:
    case 18:
      return 0x6F6F426F69647561;
    case 19:
      return OUTLINED_FUNCTION_44_8();
    case 20:
      return OUTLINED_FUNCTION_40_5();
    case 21:
      return 0xD000000000000012;
    case 22:
      return 0xD000000000000019;
    case 23:
      return 0xD000000000000014;
    case 24:
      return 0xD000000000000013;
    case 25:
      return 0x6E6F736165537674;
    case 26:
      v4 = 0x4E6569766F6DLL;
LABEL_32:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
      break;
    case 27:
      v3 = 0x776F68537674;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 28:
      result = OUTLINED_FUNCTION_42_6();
      break;
    case 29:
      result = OUTLINED_FUNCTION_46_6();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267C89218@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267C88E74(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267C89248@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C88ECC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C8927C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267C88EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267C892B0(uint64_t a1)
{
  v2 = sub_267C8B378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267C892EC(uint64_t a1)
{
  v2 = sub_267C8B378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267C89328()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_appleTvTitle);
  return v0;
}

uint64_t sub_267C89540(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_267C895C4(uint64_t a1)
{
  sub_267C11A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267C89694(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A010, &qword_267EFFEF0);
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267C8B378();
  sub_267EFA088();
  v12[15] = 0;
  sub_267EF79B8();
  OUTLINED_FUNCTION_32_6();
  sub_267C8B330(v9, v10, MEMORY[0x277D55C50]);
  sub_267EF9DF8();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_10_17();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_267C89AC0(void *a1)
{
  v2 = swift_allocObject();
  sub_267C89BFC(a1);
  return v2;
}

void sub_267C89B38(uint64_t a1)
{
  sub_267C11A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267C89BFC(void *a1)
{
  v5 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6();
  v161 = v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77_0();
  v160 = v10;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77_0();
  v159 = v12;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77_0();
  v158 = v14;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0();
  v162 = v26;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_0();
  v163 = v28;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77_0();
  v164 = v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  v165 = v32;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77_0();
  v166 = v34;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_77_0();
  v167 = v36;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_0();
  v168 = v38;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_0();
  v169 = v40;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77_0();
  v170 = v42;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_77_0();
  v171 = v44;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_77_0();
  v172 = v46;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_50_0();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = v144 - v52;
  MEMORY[0x28223BE20](v51);
  v173 = v144 - v54;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A000, &qword_267EFFEE8);
  OUTLINED_FUNCTION_58();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  v59 = v144 - v58;
  v177 = a1;
  v178 = v5;
  *(v5 + 16) = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267C8B378();
  v175 = v59;
  v60 = v176;
  sub_267EFA078();
  if (v60)
  {
    v66 = v178;

    v67 = v177;
    goto LABEL_4;
  }

  v147 = v1;
  v146 = v3;
  v145 = v4;
  v176 = v56;
  v61 = sub_267EF79B8();
  v179 = 0;
  OUTLINED_FUNCTION_32_6();
  v64 = sub_267C8B330(v62, v63, MEMORY[0x277D55C60]);
  v65 = v173;
  sub_267EF9D88();
  v69 = v178;
  sub_267C12220(v65, v178 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
  OUTLINED_FUNCTION_27_6(1);
  v144[1] = v61;
  v144[2] = v64;
  sub_267EF9D88();
  sub_267C12220(v53, v69 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
  OUTLINED_FUNCTION_27_6(2);
  OUTLINED_FUNCTION_19_10();
  v144[0] = 0;
  sub_267EF9D88();
  OUTLINED_FUNCTION_55_4(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
  OUTLINED_FUNCTION_27_6(3);
  v70 = v146;
  OUTLINED_FUNCTION_19_10();
  sub_267EF9D88();
  sub_267C12220(v70, v69 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
  OUTLINED_FUNCTION_27_6(4);
  v71 = v145;
  OUTLINED_FUNCTION_19_10();
  sub_267EF9D88();
  sub_267C12220(v71, v69 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
  OUTLINED_FUNCTION_27_6(5);
  v72 = v175;
  sub_267EF9D88();
  OUTLINED_FUNCTION_55_4(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
  OUTLINED_FUNCTION_27_6(6);
  OUTLINED_FUNCTION_34_6();
  sub_267EF9D88();
  OUTLINED_FUNCTION_55_4(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
  OUTLINED_FUNCTION_27_6(7);
  OUTLINED_FUNCTION_34_6();
  sub_267EF9D88();
  OUTLINED_FUNCTION_55_4(OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
  OUTLINED_FUNCTION_27_6(8);
  v73 = v169;
  OUTLINED_FUNCTION_34_6();
  v75 = *(v74 - 256);
  sub_267EF9D88();
  v173 = 0;
  OUTLINED_FUNCTION_31_1();
  sub_267C12220(v73, v76);
  OUTLINED_FUNCTION_27_6(9);
  v77 = v173;
  sub_267EF9D88();
  v173 = v77;
  if (!v77)
  {
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v168, v80);
    OUTLINED_FUNCTION_27_6(10);
    OUTLINED_FUNCTION_14_15(v81, v82);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v167, v83);
    OUTLINED_FUNCTION_27_6(11);
    OUTLINED_FUNCTION_14_15(v84, v85);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v166, v88);
    OUTLINED_FUNCTION_27_6(12);
    OUTLINED_FUNCTION_14_15(v89, v90);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v165, v91);
    OUTLINED_FUNCTION_27_6(13);
    OUTLINED_FUNCTION_14_15(v92, v93);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v164, v94);
    OUTLINED_FUNCTION_27_6(14);
    OUTLINED_FUNCTION_14_15(v95, v96);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v163, v97);
    OUTLINED_FUNCTION_27_6(15);
    OUTLINED_FUNCTION_14_15(v98, v99);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v162, v100);
    OUTLINED_FUNCTION_27_6(16);
    OUTLINED_FUNCTION_14_15(v101, v102);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v148, v103);
    OUTLINED_FUNCTION_27_6(17);
    OUTLINED_FUNCTION_14_15(v104, v105);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v149, v106);
    OUTLINED_FUNCTION_27_6(18);
    OUTLINED_FUNCTION_14_15(v107, v108);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v150, v109);
    OUTLINED_FUNCTION_27_6(19);
    OUTLINED_FUNCTION_14_15(v110, v111);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v151, v112);
    OUTLINED_FUNCTION_27_6(20);
    OUTLINED_FUNCTION_14_15(v113, v114);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v152, v115);
    OUTLINED_FUNCTION_27_6(21);
    OUTLINED_FUNCTION_14_15(v116, v117);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v153, v118);
    OUTLINED_FUNCTION_27_6(22);
    OUTLINED_FUNCTION_14_15(v119, v120);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v154, v121);
    OUTLINED_FUNCTION_27_6(23);
    OUTLINED_FUNCTION_14_15(v122, v123);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v155, v124);
    OUTLINED_FUNCTION_27_6(24);
    OUTLINED_FUNCTION_14_15(v125, v126);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v156, v127);
    OUTLINED_FUNCTION_27_6(25);
    OUTLINED_FUNCTION_14_15(v128, v129);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v157, v130);
    OUTLINED_FUNCTION_27_6(26);
    OUTLINED_FUNCTION_14_15(v131, v132);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v158, v133);
    OUTLINED_FUNCTION_27_6(27);
    OUTLINED_FUNCTION_14_15(v134, v135);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v159, v136);
    OUTLINED_FUNCTION_27_6(28);
    OUTLINED_FUNCTION_14_15(v137, v138);
    v173 = 0;
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v160, v139);
    OUTLINED_FUNCTION_27_6(29);
    OUTLINED_FUNCTION_14_15(v140, v141);
    v173 = 0;
    v142 = OUTLINED_FUNCTION_20_7();
    v143(v142);
    v66 = v178;
    sub_267C12220(v161, v178 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_appleTvTitle);
    __swift_destroy_boxed_opaque_existential_0(v177);
    return v66;
  }

  v78 = OUTLINED_FUNCTION_20_7();
  v79(v78);
  LODWORD(v156) = 0;
  LODWORD(v157) = 0;
  LODWORD(v158) = 0;
  LODWORD(v159) = 0;
  LODWORD(v160) = 0;
  LODWORD(v161) = 0;
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_8_15();
  v86 = v144[0];
  v87 = v178;

  sub_267BBD6F0(v87 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_siteName);
  if (v86)
  {
    v67 = v177;
    if (v69)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_267BBD6F0(v87 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_title);
    v67 = v177;
    if (v69)
    {
LABEL_11:
      sub_267BBD6F0(v178 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_linkMediaType);
      if ((&unk_280240000 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_39;
    }
  }

  if (!&unk_280240000)
  {
LABEL_12:
    v66 = v178;
    if (v72)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v66 = v178;
  sub_267BBD6F0(v178 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songTitle);
  if (v72)
  {
LABEL_13:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_songArtist);
    if ((&unk_280240000 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (!&unk_280240000)
  {
LABEL_14:
    if (v75)
    {
      goto LABEL_15;
    }

LABEL_42:
    if (!v73)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_41:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumName);
  if ((v75 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_15:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_albumArtist);
  if ((v73 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_43:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoName);
LABEL_16:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_musicVideoArtist);
  if (v156)
  {
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_artistName);
    if (v157)
    {
LABEL_18:
      sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistName);
      if ((v158 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_46;
    }
  }

  else if (v157)
  {
    goto LABEL_18;
  }

  if (!v158)
  {
LABEL_19:
    if (v159)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_playlistCurator);
  if (v159)
  {
LABEL_20:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioName);
    if ((v160 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (!v160)
  {
LABEL_21:
    if (v161)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_radioCurator);
  if (v161)
  {
LABEL_22:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_softwareName);
    if ((v162 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  if (!v162)
  {
LABEL_23:
    if (v163)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookName);
  if (v163)
  {
LABEL_24:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_bookAuthor);
    if ((v164 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (!v164)
  {
LABEL_25:
    if (v165)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookName);
  if (v165)
  {
LABEL_26:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_audioBookAuthor);
    if ((v166 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!v166)
  {
LABEL_27:
    if (v167)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastName);
  if (v167)
  {
LABEL_28:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastArtist);
    if ((v168 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (!v168)
  {
LABEL_29:
    if (v169)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodeName);
  if (v169)
  {
LABEL_30:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_podcastEpisodePodcastName);
    if ((v170 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  if (!v170)
  {
LABEL_31:
    if (v171)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeEpisodeName);
  if (v171)
  {
LABEL_32:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvEpisodeSeasonName);
    if ((v172 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_60;
  }

LABEL_59:
  if (!v172)
  {
LABEL_33:
    if (v174)
    {
      goto LABEL_34;
    }

    goto LABEL_61;
  }

LABEL_60:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvSeasonName);
  if (v174)
  {
LABEL_34:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieName);
    if ((v175 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_61:
  if (!v175)
  {
LABEL_35:
    if (v176)
    {
      goto LABEL_63;
    }

    goto LABEL_4;
  }

LABEL_62:
  sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_tvShowName);
  if (v176)
  {
LABEL_63:
    sub_267BBD6F0(v66 + OBJC_IVAR____TtC16SiriMessagesFlow20MessagesLinkMetadata_movieBundleName);
  }

LABEL_4:
  type metadata accessor for MessagesLinkMetadata(0);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_0(v67);
  return v66;
}

uint64_t sub_267C8B250@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267C89AC0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267C8B330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267C8B378()
{
  result = qword_28022A008;
  if (!qword_28022A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A008);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesLinkMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesLinkMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C8B534()
{
  result = qword_28022A018;
  if (!qword_28022A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A018);
  }

  return result;
}

unint64_t sub_267C8B58C()
{
  result = qword_28022A020;
  if (!qword_28022A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A020);
  }

  return result;
}

unint64_t sub_267C8B5E4()
{
  result = qword_28022A028;
  if (!qword_28022A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A028);
  }

  return result;
}

uint64_t sub_267C8B638@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_2_25();
  sub_267C8D7F4(v1 + v6, v5, v7);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_267EF2FC8();
    OUTLINED_FUNCTION_22();
    return (*(v8 + 32))(a1, v5);
  }

  else
  {
    sub_267C4BE60();
    v10 = swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    *a1 = v10;
    *(a1 + 8) = 0;
    v12 = *MEMORY[0x277D5B408];
    sub_267EF2FC8();
    OUTLINED_FUNCTION_22();
    (*(v13 + 104))(a1, v12);
    OUTLINED_FUNCTION_0_19();
    return sub_267C8D74C(v5, v14);
  }
}

uint64_t sub_267C8B7A0()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_267EF2FC8();
  v1[7] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C8B8A0()
{
  v49 = v0;
  v1 = v0[14];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_2_25();
  sub_267C8D7F4(v2 + v3, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    (*(v0[8] + 32))(v0[11], v0[14], v0[7]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[7];
    v12 = v0[8];
    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[10];
    if (v17)
    {
      v47 = v16;
      v19 = v0[8];
      v20 = v0[9];
      v21 = v0[7];
      v22 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v22 = 136315138;
      v14(v20, v18, v21);
      v23 = sub_267EF9098();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v21);
      v27 = sub_267BA33E8(v23, v25, &v48);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_267B93000, v15, v47, "SearchAppResolutionFlow# flow execution completed with result: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      v40 = v0[7];
      v41 = v0[8];

      v26 = *(v41 + 8);
      v26(v18, v40);
    }

    v42 = v0[11];
    v43 = v0[7];
    sub_267EF4018();
    v26(v42, v43);
LABEL_19:

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    __asm { BRAA            X1, X16 }
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v28 = sub_267EF8A08();
      __swift_project_value_buffer(v28, qword_280240FB0);

      v29 = sub_267EF89F8();
      v30 = sub_267EF95E8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v0[13];
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v48 = v33;
        *v32 = 136315138;
        OUTLINED_FUNCTION_2_25();
        sub_267C8D7F4(v2 + v3, v31, v34);
        v35 = sub_267EF9098();
        v37 = sub_267BA33E8(v35, v36, &v48);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_267B93000, v29, v30, "SearchAppResolutionFlow# execute() called while in an unexpected state: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v38 = v0[14];
      sub_267EF4018();
      OUTLINED_FUNCTION_0_19();
      sub_267C8D74C(v38, v39);
    }

    else
    {
      sub_267C8BF10(*v0[14]);
    }

    goto LABEL_19;
  }

  v0[15] = *v0[14];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_267C8BD3C;
  OUTLINED_FUNCTION_64_3();

  return sub_267C8C6B0();
}

uint64_t sub_267C8BD3C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C8BE20()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C8BF10(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_267B93000, v7, v8, "SearchAppResolutionFlow# pushing app resolution flow", v9, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();
  sub_267C8D6E0(v5, v2 + v10);
  swift_endAccess();

  sub_267EF3FD8();
}

uint64_t sub_267C8C0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_267EF2FC8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v47 - v15);
  v53 = *(v8 + 16);
  v54 = a1;
  v53(&v47 - v15, a1, v7);
  if ((*(v8 + 88))(v16, v7) == *MEMORY[0x277D5B410])
  {
    (*(v8 + 96))(v16, v7);
    v17 = *v16;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);

    v19 = sub_267EF89F8();
    v20 = sub_267EF95C8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55 = v17;
      v56[0] = v22;
      *v21 = 136446210;
      sub_267EF7C38();
      v23 = v6;
      sub_267C8D7AC(&qword_28022A060, MEMORY[0x277D55380], MEMORY[0x277D55390]);
      v24 = sub_267EF9E58();
      v26 = sub_267BA33E8(v24, v25, v56);

      *(v21 + 4) = v26;
      v6 = v23;
      _os_log_impl(&dword_267B93000, v19, v20, "SearchAppResolutionFlow# app resolution flow resolved app: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D60A7B0](v22, -1, -1);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }

    *v6 = v17;
    swift_storeEnumTagMultiPayload();
    v27 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
    sub_267C8D6E0(v6, a2 + v27);
    return swift_endAccess();
  }

  else
  {
    v50 = v4;
    v51 = v6;
    v52 = a2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v29 = sub_267EF8A08();
    __swift_project_value_buffer(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95C8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_267B93000, v30, v31, "SearchAppResolutionFlow# app resolution flow didn't resolve app", v32, 2u);
      MEMORY[0x26D60A7B0](v32, -1, -1);
    }

    v33 = v53;
    v53(v14, v54, v7);
    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v48 = v36;
      v49 = swift_slowAlloc();
      v56[0] = v49;
      *v36 = 136315138;
      v33(v11, v14, v7);
      v47 = sub_267EF9098();
      v38 = v37;
      v39 = *(v8 + 8);
      v39(v14, v7);
      v40 = sub_267BA33E8(v47, v38, v56);

      v41 = v48;
      *(v48 + 1) = v40;
      _os_log_impl(&dword_267B93000, v34, v35, "SearchAppResolutionFlow# app resolution flow didn't resolve app: %s", v41, 0xCu);
      v42 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x26D60A7B0](v42, -1, -1);
      MEMORY[0x26D60A7B0](v41, -1, -1);

      v43 = v53;
    }

    else
    {

      v39 = *(v8 + 8);
      v43 = v33;
      v39(v14, v7);
    }

    v44 = v51;
    v43(v51, v54, v7);
    swift_storeEnumTagMultiPayload();
    v45 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    v46 = v52;
    swift_beginAccess();
    sub_267C8D6E0(v44, v46 + v45);
    swift_endAccess();
    return (v39)(v16, v7);
  }
}

uint64_t sub_267C8C6B0()
{
  OUTLINED_FUNCTION_12();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_267EF43F8();
  v1[12] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[13] = v5;
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  v1[16] = swift_task_alloc();
  type metadata accessor for AuthenticationRequiredResponse(0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C8C7C8()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_0(v1 + 8, v1[11]);
  v2 = v1[7];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_267C8C870;
  v4 = v0[10];

  return sub_267E3C970(v2, v4);
}

uint64_t sub_267C8C870()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  *(v1 + 168) = v0;

  v2 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267C8C960(uint64_t a1)
{
  if (*(v1 + 168) == 1)
  {
    sub_267EF43E8();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 96);
  __swift_storeEnumTagSinglePayload(v4, v2, 1, v5);
  sub_267C8D7F4(v4, v3, type metadata accessor for AuthenticationRequiredResponse);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    (*(*(v1 + 104) + 32))(*(v1 + 112), *(v1 + 136), *(v1 + 96));
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_267B93000, v20, v21, "SearchAppResolutionFlow# Authentication is required - pushing unlock flow", v22, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v23 = *(v1 + 128);
    v25 = *(v1 + 104);
    v24 = *(v1 + 112);
    v26 = *(v1 + 88);
    v35 = *(v1 + 96);
    v36 = *(v1 + 144);
    v27 = *(v1 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229218, &unk_267EFCBA0);
    v28 = sub_267EF3488();
    OUTLINED_FUNCTION_30_0(v28);
    *(swift_allocObject() + 16) = xmmword_267EFC020;
    sub_267EF3478();
    v29 = sub_267EF2F28();

    swift_storeEnumTagMultiPayload();
    v30 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
    sub_267C8D6E0(v23, v26 + v30);
    swift_endAccess();
    *(v1 + 64) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    *(v31 + 24) = v27;
    sub_267EF3428();

    sub_267EF3FC8();

    (*(v25 + 8))(v24, v35);
    OUTLINED_FUNCTION_5_22();
    sub_267C8D74C(v36, v32);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_267B93000, v7, v8, "SearchAppResolutionFlow# Authentication is not required", v9, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v10 = *(v1 + 128);
  v11 = *(v1 + 80);
  v12 = *(v1 + 88);

  *v10 = v11;
  v13 = *MEMORY[0x277D5B410];
  sub_267EF2FC8();
  OUTLINED_FUNCTION_22();
  (*(v14 + 104))(v10, v13);
  swift_storeEnumTagMultiPayload();
  v15 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
  swift_beginAccess();

  sub_267C8D6E0(v10, v12 + v15);
  swift_endAccess();
  v16 = swift_task_alloc();
  *(v1 + 160) = v16;
  *v16 = v1;
  v16[1] = sub_267C8CE60;
  OUTLINED_FUNCTION_64_3();

  return sub_267C8B7A0();
}

uint64_t sub_267C8CE60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C8CF44()
{
  OUTLINED_FUNCTION_5_22();
  sub_267C8D74C(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C8CFD4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95E8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267B93000, v10, v11, "SearchAppResolutionFlow# error while trying to authenticate the device", v12, 2u);
      MEMORY[0x26D60A7B0](v12, -1, -1);
    }

    sub_267C4BE60();
    v13 = swift_allocError();
    *v14 = xmmword_267F00050;
    *v8 = v13;
    v8[8] = 0;
    v15 = *MEMORY[0x277D5B408];
    v16 = sub_267EF2FC8();
    (*(*(v16 - 8) + 104))(v8, v15, v16);
    swift_storeEnumTagMultiPayload();
    v17 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_267B93000, v19, v20, "SearchAppResolutionFlow# Authentication successful!", v21, 2u);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }

    *v8 = a3;
    v22 = *MEMORY[0x277D5B410];
    v23 = sub_267EF2FC8();
    (*(*(v23 - 8) + 104))(v8, v22, v23);
    swift_storeEnumTagMultiPayload();
    v17 = OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state;
    swift_beginAccess();
  }

  sub_267C8D6E0(v8, a2 + v17);
  return swift_endAccess();
}

uint64_t sub_267C8D310()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  OUTLINED_FUNCTION_0_19();
  return sub_267C8D74C(v0 + v1, v2);
}

uint64_t sub_267C8D350()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  OUTLINED_FUNCTION_0_19();
  sub_267C8D74C(v0 + v1, v2);
  return v0;
}

uint64_t sub_267C8D39C()
{
  sub_267C8D350();

  return swift_deallocClassInstance();
}

uint64_t sub_267C8D41C(uint64_t a1)
{
  result = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(319);
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

void sub_267C8D4E8(uint64_t a1)
{
  sub_267C8D570(319);
  if (v1 <= 0x3F)
  {
    sub_267EF7C38();
    if (v2 <= 0x3F)
    {
      sub_267EF2FC8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_267C8D570(uint64_t a1)
{
  if (!qword_28022A050)
  {
    sub_267EF2FC8();
    v1 = sub_267EF3538();
    if (!v2)
    {
      atomic_store(v1, &qword_28022A050);
    }
  }
}

uint64_t sub_267C8D5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267C8B7A0();
}

uint64_t sub_267C8D6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C8D74C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267C8D7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267C8D7F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id sub_267C8D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a4;
  v115 = a3;
  v6 = sub_267EF8818();
  OUTLINED_FUNCTION_58();
  v110 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v108 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_17(v13, v102);
  v14 = sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v109 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v106 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v107 = &v102 - v19;
  v20 = sub_267EF8AE8();
  OUTLINED_FUNCTION_58();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v26 = v25 - v24;
  sub_267EF8AD8();
  v114 = sub_267EF6778();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v27 = sub_267EF8A08();
  v28 = __swift_project_value_buffer(v27, qword_280240FB0);
  v29 = *(v22 + 16);
  v112 = a1;
  v29(v26, a1, v20);
  v116 = v28;
  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_48();
    v103 = a2;
    v33 = v32;
    v34 = OUTLINED_FUNCTION_52();
    v117 = v34;
    *v33 = 136315138;
    sub_267EF8AD8();
    v35 = sub_267EF66B8();
    v104 = v14;
    v105 = v6;
    v36 = v35;
    v38 = v37;

    (*(v22 + 8))(v26, v20);
    v39 = v36;
    v6 = v105;
    v40 = sub_267BA33E8(v39, v38, &v117);
    v14 = v104;

    *(v33 + 4) = v40;
    _os_log_impl(&dword_267B93000, v30, v31, "#SiriGeneratedResponseProvider: transformRREntityToAttachment %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_32_0();
    a2 = v103;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v22 + 8))(v26, v20);
  }

  v41 = v115;
  v42 = *(v114 + 16);

  v43 = v116;
  if (!v42)
  {
    v57 = v116;
    v58 = sub_267EF89F8();
    v59 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v59))
    {
      v60 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v60);
      v61 = "#SiriGeneratedResponseProvider: no uso entities containing identifiers";
LABEL_36:
      _os_log_impl(&dword_267B93000, v58, v57, v61, v20, 2u);
      OUTLINED_FUNCTION_32_0();
    }

LABEL_37:

    return 0;
  }

  v44 = v113;
  v45 = v41 == 0xD000000000000016 && 0x8000000267F14380 == v113;
  if (!v45 && (sub_267EF9EA8() & 1) == 0)
  {
    v62 = v41 == 0x555F6E6F6D6D6F63 && v44 == 0xEA00000000006972;
    if (!v62 && (sub_267EF9EA8() & 1) == 0)
    {
      v57 = v43;
      v58 = sub_267EF89F8();
      v89 = sub_267EF95D8();
      if (!OUTLINED_FUNCTION_36(v89))
      {
        goto LABEL_37;
      }

      v90 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v90);
      v61 = "#SiriGeneratedResponseProvider: No formatted strings or attachments found";
      goto LABEL_36;
    }

    sub_267C09714();
    if (v63)
    {

      v64 = sub_267EF89F8();
      v65 = sub_267EF95D8();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = OUTLINED_FUNCTION_48();
        v67 = OUTLINED_FUNCTION_52();
        v117 = v67;
        *(v66 + 4) = OUTLINED_FUNCTION_13_14(4.8149e-34);
        OUTLINED_FUNCTION_20();
        _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v73 = v111;
      sub_267EF2B88();
      if (__swift_getEnumTagSinglePayload(v73, 1, v14) != 1)
      {

        v91 = v109;
        v92 = v107;
        (*(v109 + 32))(v107, v73, v14);
        v116 = sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
        v93 = v106;
        (*(v91 + 16))(v106, v92, v14);
        v94 = sub_267EF2AE8();
        v96 = v95;
        v97 = v108;
        sub_267EF87D8();
        v98 = sub_267EF8768();
        v100 = v99;
        (*(v110 + 8))(v97, v6);
        v101 = sub_267E0C800(v93, v94, v96, v98, v100);
        v53 = [objc_opt_self() attachmentWithFile_];

        (*(v91 + 8))(v92, v14);
        return v53;
      }

      sub_267B9FF34(v73, &qword_280229E20, &unk_267EFDCC0);

      v74 = sub_267EF89F8();
      v75 = sub_267EF95E8();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_48();
        v77 = OUTLINED_FUNCTION_52();
        v117 = v77;
        v78 = OUTLINED_FUNCTION_13_14(4.8149e-34);

        *(v76 + 4) = v78;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
      }

      return 0;
    }

    v57 = v43;
    v58 = sub_267EF89F8();
    v87 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v87))
    {
      v88 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v88);
      v61 = "#SiriGeneratedResponseProvider: no common_Uri entity found";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v46 = sub_267C09674();
  if (!v47)
  {
LABEL_34:
    v57 = v43;
    v58 = sub_267EF89F8();
    v84 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v84))
    {
      v85 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v85);
      v61 = "#SiriGeneratedResponseProvider: no common_FormattedString entity found";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v20 = v46;
  v48 = v47;
  v49 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

    goto LABEL_34;
  }

  v50 = sub_267EF89F8();
  v51 = sub_267EF95D8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_32();
    *v52 = 0;
    _os_log_impl(&dword_267B93000, v50, v51, "#SiriGeneratedResponseProvider: got string entity", v52, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v53 = [objc_allocWithZone(MEMORY[0x277CD4070]) init];
  if (v53)
  {
    v54 = sub_267C8E518(v20, v48, a2);
    v56 = v55;

    sub_267D13FBC(v54, v56);
  }

  else
  {
  }

  return v53;
}

id sub_267C8E0F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = sub_267EF8AE8();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v16 = sub_267EF8A08();
  v17 = __swift_project_value_buffer(v16, qword_280240FB0);

  v56 = v17;
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_48();
    v54 = v15;
    v21 = v20;
    v22 = OUTLINED_FUNCTION_52();
    v53 = v9;
    v23 = v3;
    v24 = v11;
    v25 = v22;
    v57[0] = v22;
    *v21 = 136315138;
    v26 = sub_267EF66B8();
    v28 = sub_267BA33E8(v26, v27, v57);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_267B93000, v18, v19, "#SiriGeneratedResponseProvider: fetchSiriGeneratedResults %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v11 = v24;
    v3 = v23;
    v9 = v53;
    OUTLINED_FUNCTION_32_0();
    v15 = v54;
    OUTLINED_FUNCTION_32_0();
  }

  sub_267B9AFEC(v3 + 16, v57);
  v29 = v58;
  v30 = v59;
  __swift_project_boxed_opaque_existential_0(v57, v58);
  sub_267EBD060(a1, v29, v30);
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_0(v57);
  sub_267BBE6E0(v32, v8);

  OUTLINED_FUNCTION_8_7(v8);
  if (v33)
  {
    sub_267B9FF34(v8, &qword_2802294B0, &qword_267F001F0);

    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_48();
      v37 = OUTLINED_FUNCTION_52();
      v57[0] = v37;
      *v36 = 136315138;
      v38 = sub_267EF66B8();
      v40 = sub_267BA33E8(v38, v39, v57);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_267B93000, v34, v35, "#SiriGeneratedResponseProvider: SRR did not return entity of type %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    return 0;
  }

  (*(v11 + 32))(v15, v8, v9);
  v41 = sub_267EF66B8();
  v43 = sub_267C8D854(v15, v55, v41, v42);

  if (!v43)
  {
    v44 = sub_267EF89F8();
    v45 = sub_267EF95D8();
    if (os_log_type_enabled(v44, v45))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    (*(v11 + 8))(v15, v9);
    return 0;
  }

  (*(v11 + 8))(v15, v9);
  return v43;
}

uint64_t sub_267C8E518(char *a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v65 = a2;
  v66 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_17(v5, v56);
  v62 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v60 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v59 = v9 - v8;
  v64 = sub_267EF27C8();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  v16 = sub_267EF27D8();
  OUTLINED_FUNCTION_58();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v22 = v21 - v20;
  v23 = sub_267EF27F8();
  v24 = OUTLINED_FUNCTION_18(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v25);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  sub_267EF28A8();
  OUTLINED_FUNCTION_58();
  v57 = v30;
  v58 = v29;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v56 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v56 - v37;
  v39 = sub_267EF2BA8();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v39);
  (*(v18 + 104))(v22, *MEMORY[0x277CC8BB0], v16);
  (*(v11 + 104))(v15, *MEMORY[0x277CC8B98], v64);

  sub_267EF27E8();
  sub_267EF2888();
  v66 = v33;
  v41 = v57;
  v40 = v58;
  v42 = v60;
  v43 = v61;
  v44 = v59;
  v45 = v62;
  v46 = v63;
  OUTLINED_FUNCTION_8_7(v63);
  if (v50)
  {
    sub_267EF2D38();
    v47 = v42;
    v48 = v36;
    v49 = v66;
LABEL_6:
    sub_267D5D6C0(v44, v48);
    (*(v47 + 8))(v44, v45);
    sub_267BA9F38(0, &qword_28022A068, 0x277CCA898);
    (*(v41 + 16))(v49, v48, v40);
    v52 = sub_267EF9678();
    v53 = [v52 string];

    v54 = sub_267EF9028();
    v55 = *(v41 + 8);
    v55(v48, v40);
    v55(v38, v40);
    return v54;
  }

  sub_267C8EA3C(v46, v43);
  result = OUTLINED_FUNCTION_8_7(v43);
  v48 = v36;
  v49 = v66;
  if (!v50)
  {
    v47 = v42;
    (*(v42 + 32))(v44, v43, v45);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_267C8EA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C8EAAC()
{
  OUTLINED_FUNCTION_120_2();
  if (v2 && (v3 = v1, v4 = sub_267BA9948(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_267EF6DC8();
    OUTLINED_FUNCTION_22();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_57_0();
    v13 = v8;
  }

  else
  {
    sub_267EF6DC8();
    v10 = OUTLINED_FUNCTION_55();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void *sub_267C8EB50(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_267C94B6C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_267C8EB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_267BA9948(), (v3 & 1) != 0))
  {
  }

  else
  {
    OUTLINED_FUNCTION_114();
  }

  return OUTLINED_FUNCTION_61_0();
}

void sub_267C8EC00()
{
  OUTLINED_FUNCTION_120_2();
  if (v1 && (sub_267BA9948(), (v2 & 1) != 0))
  {
    sub_267BD6CE0();
  }

  else
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 1;
  }
}

uint64_t sub_267C8EC60(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_267C94C94(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_93_2(v2);
}

uint64_t sub_267C8ECAC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 41;
  }

  v3 = sub_267C94BF0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 41;
  }
}

void *sub_267C8ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_267BA9948();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_267C8ED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_267BA9948(), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_52_3(v3);
  }

  else
  {
    OUTLINED_FUNCTION_114();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267C8ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_267BA9948();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_93_2(v3);
}

uint64_t sub_267C8EDD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (sub_267C94D90(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = sub_267EF2BA8();
    OUTLINED_FUNCTION_22();
    (*(v10 + 16))(a2, v8 + *(v10 + 72) * v7, v9);
    v11 = OUTLINED_FUNCTION_57_0();
    v14 = v9;
  }

  else
  {
    sub_267EF2BA8();
    v11 = OUTLINED_FUNCTION_55();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

double sub_267C8EE7C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_267C94BB0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_267BA2E04(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_267C8EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_267BA9948();
  if (v4)
  {
    return OUTLINED_FUNCTION_93_2(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C8EF34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_267C94E20(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_52_3(v2);
  }

  else
  {
    OUTLINED_FUNCTION_114();
  }

  return OUTLINED_FUNCTION_61_0();
}

double sub_267C8F094@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_267BA2E04(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_267C8F0E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    sub_267C96A98();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v7, 1, v6);
}

uint64_t sub_267C8F198(uint64_t a1)
{
  sub_267C95F70(a1);
  v2 = sub_267C95FD0(a1);
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_66();
  v11 = sub_267C96620(v7, v8, v9, v2, v4, v10);
  sub_267C96654(v2, v4, v6 & 1);
  v12 = OUTLINED_FUNCTION_66();
  if (v11)
  {
    sub_267C96654(v12, v13, v14);
    return 0;
  }

  else
  {
    sub_267C96024(v12, v13, v14, a1);
    v15 = v16;
    v17 = OUTLINED_FUNCTION_66();
    sub_267C96654(v17, v18, v19);
  }

  return v15;
}

id sub_267C8F2A4()
{
  OUTLINED_FUNCTION_53_5();
  if (v2)
  {
    result = OUTLINED_FUNCTION_63_4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }
  }

  v1(0, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) == 0)
  {
    return *(v0 + 32);
  }

  v4 = OUTLINED_FUNCTION_118_3();
  return MEMORY[0x26D609870](v4);
}

unint64_t sub_267C8F314(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    OUTLINED_FUNCTION_89_4();
    OUTLINED_FUNCTION_92_2();
    v8 = sub_267C95728(v5, v6, v7);
    if ((v2 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_92_2();
      v12 = sub_267EF9B58();
    }

    else
    {
      v9 = v8 >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v22[0] = v3;
        v22[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v12 = *(v22 + v9);
        if (*(v22 + v9) < 0)
        {
          OUTLINED_FUNCTION_84_2();
          switch(v15)
          {
            case 1:
LABEL_14:
              v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v16 = v13[1];
              v17 = v13[2];
              v18 = ((v12 & 0xF) << 12) | ((v16 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v19 = v13[1];
              v20 = v13[2];
              v17 = v13[3];
              v18 = ((v12 & 0xF) << 18) | ((v19 & 0x3F) << 12) | ((v20 & 0x3F) << 6);
LABEL_17:
              v12 = v18 & 0xFFFFFFC0 | v17 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v10 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          OUTLINED_FUNCTION_66();
          v10 = sub_267EF9BC8();
        }

        v11 = *(v10 + v9);
        v12 = *(v10 + v9);
        if (v11 < 0)
        {
          OUTLINED_FUNCTION_84_2();
          switch(v14)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v22[0]) = v4 == 0;
  return v12 | ((v4 == 0) << 32);
}

uint64_t sub_267C8F4A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
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

uint64_t sub_267C8F554()
{
  OUTLINED_FUNCTION_53_5();
  if (v2)
  {
    result = OUTLINED_FUNCTION_63_4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }
  }

  v1(0, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) == 0)
  {
  }

  v4 = OUTLINED_FUNCTION_118_3();
  return MEMORY[0x26D609870](v4);
}

uint64_t sub_267C8F5C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 1;
  }

  v1 = *(a1 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_267C8F5FC(uint64_t a1)
{
  result = sub_267BA7F5C(a1);
  if (v5)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v4)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_86_3();
  if (v7)
  {
    return 0;
  }

  sub_267C96814(v1, v6, 0, a1);
  return v8;
}

uint64_t sub_267C8F66C(uint64_t a1)
{
  result = sub_267BA7F5C(a1);
  if (v5)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v4)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_86_3();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_267C96864(v1, v6, 0, a1);
  }
}

void sub_267C8F6D8(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    OUTLINED_FUNCTION_94_1(a4);
  }

  else if ((a3 >> 1) <= a2)
  {
    __break(1u);
  }

  else
  {
    sub_267B9AFEC(a1 + 40 * a2, a4);
  }
}

uint64_t sub_267C8F714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_267EF5958();
    OUTLINED_FUNCTION_22();
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = OUTLINED_FUNCTION_57_0();
    v11 = v6;
  }

  else
  {
    sub_267EF5958();
    v8 = OUTLINED_FUNCTION_55();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

double sub_267C8F7C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return OUTLINED_FUNCTION_94_1(a2);
  }

  sub_267B9AFEC(a1 + 40 * v2 - 8, a2);
  return result;
}

uint64_t sub_267C8F7F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C8F89C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}
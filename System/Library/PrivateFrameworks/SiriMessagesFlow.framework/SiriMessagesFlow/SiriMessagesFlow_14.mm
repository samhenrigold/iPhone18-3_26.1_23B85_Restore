uint64_t sub_267CD8EE8(uint64_t a1)
{
  sub_267EF56B8();
  v1 = sub_267EF6758();

  return v1;
}

uint64_t sub_267CD8F34(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A880, &unk_267F01F80);
  return sub_267EF9098();
}

uint64_t sub_267CD8F78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C0, &unk_267F0AC60);
  v1 = OUTLINED_FUNCTION_18(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_60();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  sub_267EF54F8();
  v8 = sub_267EF5518();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_267BC9B04(v7, v4, &qword_28022A8C0, &unk_267F0AC60);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 88))(v4, v8);
    if (v11 == *MEMORY[0x277D5E270])
    {
      v9 = 1;
    }

    else if (v11 == *MEMORY[0x277D5E298])
    {
      v9 = 4;
    }

    else if (v11 == *MEMORY[0x277D5E2C8])
    {
      v9 = 8;
    }

    else if (v11 == *MEMORY[0x277D5E290] || v11 == *MEMORY[0x277D5E268])
    {
      v9 = 2;
    }

    else if (v11 == *MEMORY[0x277D5E288])
    {
      v9 = 3;
    }

    else
    {
      (*(v10 + 8))(v4, v8);
      v9 = 0;
    }
  }

  sub_267B9FED8(v7, &qword_28022A8C0, &unk_267F0AC60);
  return v9;
}

uint64_t sub_267CD9168(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_267EFC020;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return v4;
}

uint64_t sub_267CD91D4(uint64_t a1)
{
  result = sub_267DE87C0();
  if (!v2)
  {
    return 7104878;
  }

  return result;
}

void sub_267CD9210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_22();
  a19 = v21;
  a20 = v22;
  v110 = v20;
  v24 = v23;
  v26 = v25;
  v95 = v27;
  sub_267EF6AB8();
  OUTLINED_FUNCTION_58();
  v111 = v29;
  v112 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_0();
  v109 = v31 - v30;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C8, &qword_267F01FE0);
  OUTLINED_FUNCTION_58();
  v98 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_60();
  v94 = (v34 - v35);
  v37 = MEMORY[0x28223BE20](v36);
  v97 = &v94 - v38;
  MEMORY[0x28223BE20](v37);
  v116 = (&v94 - v39);
  OUTLINED_FUNCTION_26_2();
  sub_267EF6B48();
  OUTLINED_FUNCTION_58();
  v107 = v41;
  v108 = v40;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_0_0();
  v106 = v43 - v42;
  OUTLINED_FUNCTION_26_2();
  sub_267EF6B58();
  OUTLINED_FUNCTION_58();
  v104 = v45;
  v105 = v44;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_0_0();
  v103 = v47 - v46;
  OUTLINED_FUNCTION_26_2();
  sub_267EF6B78();
  OUTLINED_FUNCTION_58();
  v113 = v49;
  v114 = v48;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_0_0();
  v115 = v51 - v50;
  OUTLINED_FUNCTION_26_2();
  v52 = sub_267EF2CC8();
  v53 = OUTLINED_FUNCTION_18(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0_0();
  v101 = v55 - v54;
  OUTLINED_FUNCTION_26_2();
  v56 = sub_267EF2E98();
  v57 = OUTLINED_FUNCTION_18(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_0_0();
  v100 = v59 - v58;
  OUTLINED_FUNCTION_26_2();
  v99 = sub_267EF6BD8();
  OUTLINED_FUNCTION_58();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_0_0();
  v65 = v64 - v63;
  v66 = sub_267EF2EF8();
  v67 = OUTLINED_FUNCTION_18(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_0_0();
  v68 = sub_267EF2E38();
  v69 = OUTLINED_FUNCTION_18(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_60();
  v71 = MEMORY[0x28223BE20](v70);
  MEMORY[0x28223BE20](v71);
  v102 = *v26;
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_267EF3B68();
  sub_267EF3B68();
  v72 = v115;
  sub_267EF3B68();
  sub_267EF2EE8();
  (*(v61 + 104))(v65, *MEMORY[0x277D56150], v99);
  sub_267EF2E78();
  sub_267EF2CB8();
  sub_267EF6BF8();
  swift_allocObject();
  v73 = v116;
  v74 = v109;
  sub_267EF6BE8();
  (*(v104 + 104))(v103, *MEMORY[0x277D56138], v105);
  (*(v107 + 104))(v106, *MEMORY[0x277D56120], v108);
  sub_267EF6C58();
  sub_267EF6C78();
  sub_267CD9C08(&qword_28022A8D0, MEMORY[0x277D563F8], MEMORY[0x277D56400]);
  sub_267EF8F28();
  sub_267EF6B68();
  sub_267EF6AA8();
  v75 = v110;
  sub_267EF6A98();
  if (v75)
  {

    (*(v111 + 8))(v74, v112);
    (*(v113 + 8))(v72, v114);
  }

  else
  {
    (*(v111 + 8))(v74, v112);
    v77 = v97;
    v76 = v98;
    v78 = *(v98 + 16);
    v79 = v96;
    v78(v97, v73, v96);
    if ((*(v76 + 88))(v77, v79) == *MEMORY[0x277D56080])
    {
      (*(v76 + 96))(v77, v79);
      v80 = sub_267EF6C68();

      (*(v76 + 8))(v73, v79);
      (*(v113 + 8))(v72, v114);
      *v95 = v80;
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v81 = sub_267EF8A08();
      __swift_project_value_buffer(v81, qword_280240FB0);
      v78(v94, v73, v79);
      v82 = sub_267EF89F8();
      v83 = sub_267EF95E8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        a10 = v112;
        *v84 = 136315138;
        sub_267CD9C50();
        v85 = sub_267EF9E58();
        v86 = v79;
        v88 = v87;
        v89 = OUTLINED_FUNCTION_6_19();
        v73(v89, v86);
        v90 = sub_267BA33E8(v85, v88, &a10);
        v79 = v86;
        v77 = v97;

        *(v84 + 4) = v90;
        _os_log_impl(&dword_267B93000, v82, v83, "#SearchForMessagesNLIntentTransformer DateTimeResolver returned unexpected recommendation: %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v112);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {

        v91 = OUTLINED_FUNCTION_6_19();
        v73(v91, v79);
      }

      v92 = v114;
      sub_267C266B0();
      swift_allocError();
      *v93 = 0xD000000000000033;
      v93[1] = 0x8000000267F15620;
      swift_willThrow();

      v73(v116, v79);
      (*(v113 + 8))(v115, v92);
      v73(v77, v79);
    }
  }

  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_267CD9C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267CD9C50()
{
  result = qword_28022A8D8;
  if (!qword_28022A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A8C8, &qword_267F01FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A8D8);
  }

  return result;
}

uint64_t sub_267CD9CD0(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_267CD9CF0, 0, 0);
}

uint64_t sub_267CD9CF0()
{
  v33 = v0;
  v1 = v0[21];
  v2 = v1[7];
  v0[22] = v2;
  v3 = v1[8];
  v0[23] = v3;
  v4 = v1[9];
  v0[24] = v4;
  v0[25] = v1[10];
  v0[26] = v1[11];
  if (v3)
  {
    sub_267CDAF0C(v2, v3, v4);
    v5 = qword_280228818;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v6 = sub_267EF8A08();
    v0[27] = __swift_project_value_buffer(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95C8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v9 = 136446466;
      *(v9 + 4) = sub_267BA33E8(v2, v3, &v32);
      *(v9 + 12) = 2082;
      v0[19] = v4;
      sub_267EF7C38();
      sub_267CDAF50(&qword_28022A060, MEMORY[0x277D55380], MEMORY[0x277D55390]);
      v10 = sub_267EF9E58();
      v12 = sub_267BA33E8(v10, v11, &v32);

      *(v9 + 14) = v12;
      _os_log_impl(&dword_267B93000, v7, v8, "#SpokenMessagesFlow searching for a message for notification ID %{public}s in %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v13 = v0[21];
    v14 = v13[5];
    v15 = v13[6];
    __swift_project_boxed_opaque_existential_0(v13 + 2, v14);
    (*(v15 + 24))(v14, v15);
    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_267CDA114;

    return sub_267C86680(v2, v3, v4, (v0 + 7));
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);

    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_48();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v23 = v1[7];
      v24 = v1[8];
      v25 = v1[9];
      v26 = v1[10];
      v27 = v1[11];
      v0[2] = v23;
      v0[3] = v24;
      v0[4] = v25;
      v0[5] = v26;
      v0[6] = v27;
      sub_267CDAF0C(v23, v24, v25);
      v28 = sub_267EF9098();
      v30 = sub_267BA33E8(v28, v29, &v32);

      *(v21 + 4) = v30;
      _os_log_impl(&dword_267B93000, v19, v20, "#SpokenMessagesFlow: execute() called in an unexpected state: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF4018();
    OUTLINED_FUNCTION_17();

    return v31();
  }
}

uint64_t sub_267CDA114()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  *(v1 + 232) = v3;
  *(v1 + 240) = v0;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  if (v0)
  {
    v4 = sub_267CDA7C8;
  }

  else
  {
    v4 = sub_267CDA22C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_267CDA22C()
{

  v1 = sub_267EF89F8();
  v2 = sub_267EF95C8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[29];
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_48();
    *v5 = 134349056;
    *(v5 + 4) = sub_267BAF0DC(v4);

    OUTLINED_FUNCTION_6_20(&dword_267B93000, v6, v2, "#SpokenMessagesFlow received intent response with %{public}ld message(s), pushing reading flow");
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[21];
  sub_267B9AFEC(v9 + 16, (v0 + 12));
  v10 = *(v9 + 136);
  type metadata accessor for SpokenMessagesFlowSource();
  swift_allocObject();

  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_267CDA3C4;
  v12 = v0[29];
  v13 = v0[25];
  v14 = v0[26];
  v15 = v0[22];

  return sub_267C124E4(v15, v7, v12, v8, v13, v14, (v0 + 12), v10);
}

uint64_t sub_267CDA3C4(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v5 + 256) = v1;

  if (v1)
  {
    v8 = sub_267CDA678;
  }

  else
  {
    *(v5 + 264) = a1;
    v8 = sub_267CDA4E0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267CDA4E0()
{
  v8 = v0[23];
  v1 = v0[21];
  v2 = v0[22];
  sub_267CDAF50(&qword_28022A8E0, type metadata accessor for SpokenMessagesFlowSource, &unk_267EFC814);
  sub_267CDAF50(&qword_28022A8E8, type metadata accessor for SpokenMessagesFlowSource, &unk_267EFC7BC);
  sub_267EF34B8();
  swift_allocObject();
  swift_retain_n();
  v3 = sub_267EF34A8();
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  sub_267CDAEC8(v4, v5);
  v0[18] = v3;
  sub_267EF3FF8();

  sub_267CDAEC8(v2, v8);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267CDA678()
{
  v15 = v0;
  v1 = *(v0 + 256);
  v2 = v1;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = swift_slowAlloc();
    v14 = v6;
    OUTLINED_FUNCTION_8_21(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v7 = sub_267EF9098();
    v9 = sub_267BA33E8(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v10, v4, "#SpokenMessagesFlow: HandleIntent failed: %s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_9_23(v11);

  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267CDA7C8()
{
  v15 = v0;
  v1 = *(v0 + 240);
  v2 = v1;
  v3 = sub_267EF89F8();
  v4 = sub_267EF95E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = swift_slowAlloc();
    v14 = v6;
    OUTLINED_FUNCTION_8_21(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v7 = sub_267EF9098();
    v9 = sub_267BA33E8(v7, v8, &v14);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v10, v4, "#SpokenMessagesFlow: HandleIntent failed: %s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_9_23(v11);

  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267CDA974()
{
  sub_267CDAEC8(v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
}

void *sub_267CDA9B4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267CDAEC8(v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return v0;
}

uint64_t sub_267CDA9F4()
{
  sub_267CDA9B4();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow06SpokenbC0C5State33_F40BDBB263014468BD0C40EFDBF623BCLLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_267CDAA78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267CDAAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

double sub_267CDAB24(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267CDAB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267CDAC10;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_267CDAC10(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_267CDAD10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CDADAC;

  return sub_267CD9CD0(a1);
}

uint64_t sub_267CDADAC()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267CDAE90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SpokenMessagesFlow();

  return sub_267EF3748();
}

uint64_t sub_267CDAEC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_267CDAF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_267CDAF50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_267CDAF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = 0;
  v3[5] = 0;
  v3[2] = a2;
  v3[3] = a3;
  v3[6] = a1;
  return v3;
}

uint64_t sub_267CDAFAC()
{
  v1 = sub_267EF4C08();
  MEMORY[0x28223BE20](v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4B88();
  sub_267E57DFC(v3, &v58);
  v4 = OUTLINED_FUNCTION_3();
  v5(v4);
  if (v59)
  {
    sub_267BE58F4(&v58, v60);
    OUTLINED_FUNCTION_10_21();
    v6 = OUTLINED_FUNCTION_38_0();
    v0[4] = v7(v6);
    v0[5] = v8;

    OUTLINED_FUNCTION_10_21();
    v9 = OUTLINED_FUNCTION_38_0();
    v10(v9);
    if (v11)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v12 = sub_267EF8A08();
      __swift_project_value_buffer(v12, qword_280240FB0);

      v13 = sub_267EF89F8();
      v14 = sub_267EF95D8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_48();
        v16 = OUTLINED_FUNCTION_52();
        *&v58 = v16;
        *v15 = 136315138;
        v17 = OUTLINED_FUNCTION_3();
        *(v15 + 4) = sub_267BA33E8(v17, v18, v19);
        OUTLINED_FUNCTION_14_5();
        _os_log_impl(v20, v21, v22, v23, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF4458();
      sub_267EF7C38();
      OUTLINED_FUNCTION_3();
      sub_267EF7C08();
LABEL_8:
      v24 = sub_267EF4438();

LABEL_9:
      __swift_destroy_boxed_opaque_existential_0(v60);
      return v24;
    }

    OUTLINED_FUNCTION_10_21();
    v31 = OUTLINED_FUNCTION_38_0();
    if (v32(v31))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v33 = sub_267EF8A08();
      v34 = OUTLINED_FUNCTION_13_8(v33, qword_280240FB0);
      v35 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v35))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v36, v37, "#SearchForMessagesAppResolutionOnDeviceFlowStrategy specified app is not installed, returning noAppFound");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF4458();
      v24 = sub_267EF4408();
      goto LABEL_9;
    }

    v38 = v0[6];
    if (v38)
    {
      sub_267DE87C0();
      if (v39)
      {
        v40 = [v38 speakableGroupNames];
        if (v40)
        {

          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0_10();
            swift_once();
          }

          v41 = sub_267EF8A08();
          __swift_project_value_buffer(v41, qword_280240FB0);

          v42 = sub_267EF89F8();
          v43 = sub_267EF95D8();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = OUTLINED_FUNCTION_48();
            v45 = OUTLINED_FUNCTION_52();
            *&v58 = v45;
            *v44 = 136315138;
            v46 = OUTLINED_FUNCTION_3();
            *(v44 + 4) = sub_267BA33E8(v46, v47, v48);
            OUTLINED_FUNCTION_14_5();
            _os_log_impl(v49, v50, v51, v52, v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v45);
            OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_32_0();
          }

          sub_267EF7C38();
          OUTLINED_FUNCTION_3();
          sub_267EF7C08();
          sub_267EF4458();
          goto LABEL_8;
        }
      }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v53 = sub_267EF8A08();
    v54 = OUTLINED_FUNCTION_13_8(v53, qword_280240FB0);
    v55 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v55))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v56, v57, "#SearchForMessagesAppResolutionOnDeviceFlowStrategy app not specified, defaulting to Messages app");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF4458();
    sub_267EF7C38();
    sub_267EF7C08();
    goto LABEL_8;
  }

  sub_267CD2360(&v58);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v25 = sub_267EF8A08();
  v26 = OUTLINED_FUNCTION_13_8(v25, qword_280240FB0);
  v27 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v27))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v28, v29, "#SearchForMessagesAppResolutionOnDeviceFlowStrategy received non-NL input, returning noAppFound");
    OUTLINED_FUNCTION_26();
  }

  sub_267EF4458();
  return sub_267EF4408();
}

void sub_267CDB550()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  v1 = OUTLINED_FUNCTION_13_8(v0, qword_280240FB0);
  v2 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_267BA33E8(0xD000000000000065, 0x8000000267F15920, &v7);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v5, v6, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_6_21("Fatal error", 11, 2, 101, 0x8000000267F15920, "SiriMessagesFlow/SearchForMessagesAppResolutionOnDeviceFlowStrategy.swift");
  __break(1u);
}

uint64_t sub_267CDB670()
{
  v12 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0xD000000000000062, 0x8000000267F158B0, &v11);
    OUTLINED_FUNCTION_14_5();
    _os_log_impl(v6, v7, v8, v9, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_6_21("Fatal error", 11, 2, 98, 0x8000000267F158B0, "SiriMessagesFlow/SearchForMessagesAppResolutionOnDeviceFlowStrategy.swift");
}

void sub_267CDB7B8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  v1 = OUTLINED_FUNCTION_13_8(v0, qword_280240FB0);
  v2 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_267BA33E8(0xD000000000000067, 0x8000000267F15840, &v7);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v5, v6, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_6_21("Fatal error", 11, 2, 103, 0x8000000267F15840, "SiriMessagesFlow/SearchForMessagesAppResolutionOnDeviceFlowStrategy.swift");
  __break(1u);
}

uint64_t sub_267CDB8D8()
{
  v12 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  v2 = OUTLINED_FUNCTION_13_8(v1, qword_280240FB0);
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0xD000000000000064, 0x8000000267F15780, &v11);
    OUTLINED_FUNCTION_14_5();
    _os_log_impl(v6, v7, v8, v9, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_6_21("Fatal error", 11, 2, 100, 0x8000000267F15780, "SiriMessagesFlow/SearchForMessagesAppResolutionOnDeviceFlowStrategy.swift");
}

uint64_t sub_267CDBA20()
{

  return v0;
}

uint64_t sub_267CDBA48()
{
  sub_267CDBA20();

  return swift_deallocClassInstance();
}

uint64_t sub_267CDBAAC()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_267CDBAE0()
{
  v1 = sub_267CDAFAC();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_267CDBB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BA000](a1, a2, a3, a4);
}

uint64_t sub_267CDBC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  swift_getWitnessTable();
  *v4 = v3;
  v4[1] = sub_267CDC6B8;

  return sub_267E48E64();
}

uint64_t sub_267CDBCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t sub_267CDBDB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267CDB65C();
}

uint64_t sub_267CDBE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BCE5E4;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t sub_267CDBF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t sub_267CDBFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t sub_267CDC088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t sub_267CDC14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_267CDC6B8;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t sub_267CDC228()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267CDB8C4();
}

uint64_t sub_267CDC2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_267CDC378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_267CDC43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDC6B8;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_267CDC500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_267CDC6B8;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

uint64_t sub_267CDC634(uint64_t a1)
{
  result = sub_267CDC678(&qword_28022A900, &unk_267F02288);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267CDC678(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchForMessagesAppResolutionOnDeviceFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267CDC6BC@<X0>(uint8_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v66 = v11;
  v67 = v10;
  MEMORY[0x28223BE20](v10);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v19 = sub_267EF8A08();
  v20 = __swift_project_value_buffer(v19, qword_280240FB0);
  (*(v15 + 16))(v18, a1, v13);
  v64 = v20;
  v21 = sub_267EF89F8();
  v22 = sub_267EF95C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v62 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v63 = a2;
    v61 = v25;
    v70[0] = v25;
    *v24 = 136315138;
    sub_267BC4154(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v26 = sub_267EF9E58();
    v27 = v9;
    v28 = v3;
    v30 = v29;
    (*(v15 + 8))(v18, v13);
    v31 = sub_267BA33E8(v26, v30, v70);
    v3 = v28;
    v9 = v27;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_267B93000, v21, v22, "#ReplyConfirmationFlowStrategy received input: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    OUTLINED_FUNCTION_32_0();
    a1 = v62;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v15 + 8))(v18, v13);
  }

  v32 = v65;
  sub_267EF4B88();
  v33 = sub_267E57DFC(v32, &v68);
  (*(v66 + 8))(v32, v67, v33);
  if (v69)
  {
    sub_267BE58F4(&v68, v70);
    v34 = v71;
    v35 = v72;
    __swift_project_boxed_opaque_existential_0(v70, v71);
    v36 = (*(v35 + 384))(v34, v35);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    v39 = os_log_type_enabled(v37, v38);
    if (v36 == 2)
    {
      if (v39)
      {
        v54 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v54);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v55, v56, "#ReplyConfirmationFlowStrategy cancelled");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E48();
      return __swift_destroy_boxed_opaque_existential_0(v70);
    }

    if (v36 == 1)
    {
      if (v39)
      {
        v48 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v48);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v49, v50, "#ReplyConfirmationFlowStrategy rejected");
        OUTLINED_FUNCTION_26();
      }

      v43 = MEMORY[0x277D5BED0];
    }

    else
    {
      if (v36)
      {
        if (v39)
        {
          v57 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v57);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v58, v59, "#ReplyConfirmationFlowStrategy non-confirmation input, ignoring");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E68();
        return __swift_destroy_boxed_opaque_existential_0(v70);
      }

      if (v39)
      {
        v40 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v40);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v41, v42, "#ReplyConfirmationFlowStrategy confirmed");
        OUTLINED_FUNCTION_26();
      }

      v43 = MEMORY[0x277D5BED8];
    }

    v51 = *v43;
    v52 = sub_267EF44F8();
    (*(*(v52 - 8) + 104))(v9, v51, v52);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v52);
    v53 = OBJC_IVAR____TtC16SiriMessagesFlow29ReplyConfirmationFlowStrategy_confirmationResponse;
    swift_beginAccess();
    sub_267CCED84(v9, v3 + v53);
    swift_endAccess();
    sub_267EF3E58();
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  sub_267B9FF34(&v68, &unk_28022BBF0, &unk_267F01C60);
  v44 = sub_267EF89F8();
  v45 = sub_267EF95E8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v46);
    _os_log_impl(&dword_267B93000, v44, v45, "#ReplyConfirmationFlowStrategy received non-NL input, ignoring", a1, 2u);
    OUTLINED_FUNCTION_26();
  }

  return sub_267EF3E68();
}

uint64_t sub_267CDCC74(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  OUTLINED_FUNCTION_18(v3);
  v2[7] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267CDCD04, 0, 0);
}

uint64_t sub_267CDCD04()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow29ReplyConfirmationFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267CCED14(v2 + v3, v1);
  sub_267EF4B58();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267CDCDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v5);
  v4[21] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v6);
  v4[22] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  v4[23] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4228();
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267CDCEDC, 0, 0);
}

uint64_t sub_267CDCEDC()
{
  type metadata accessor for SendMessageCATs(0);
  sub_267EF7B68();
  *(v0 + 216) = sub_267EF78E8();
  sub_267EF90F8();
  v1 = sub_267EF79B8();
  OUTLINED_FUNCTION_27_3(v1);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_267CDCFD4;

  return sub_267E4A8AC();
}

uint64_t sub_267CDCFD4()
{
  v2 = *(*v1 + 176);
  *(*v1 + 232) = v0;

  sub_267B9FF34(v2, &unk_28022AE30, &qword_267EFC0B0);

  if (v0)
  {
    v3 = sub_267CDD3A4;
  }

  else
  {
    v3 = sub_267CDD138;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_267CDD138()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#ReplyConfirmationFlowStrategy returning reply confirmation prompt");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v10 = *(v0 + 168);
  v11 = *(v0 + 160);
  v12 = *(v0 + 136);

  __swift_project_boxed_opaque_existential_0((v11 + 16), *(v11 + 40));
  v13 = OUTLINED_FUNCTION_31();
  v14(v13);
  __swift_project_boxed_opaque_existential_0((v11 + 16), *(v11 + 40));
  v15 = OUTLINED_FUNCTION_31();
  v16(v15);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_31();
  sub_267EF3BC8();
  sub_267CDD42C(v10);
  v17 = sub_267EF4158();
  OUTLINED_FUNCTION_27_3(v17);
  v18 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v19 = MEMORY[0x277D5C1D8];
  v12[3] = v18;
  v12[4] = v19;
  __swift_allocate_boxed_opaque_existential_0(v12);
  sub_267EF3F58();
  sub_267B9FF34(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v10, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v7 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();

  return v20();
}

uint64_t sub_267CDD3A4()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CDD42C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  sub_267EF4148();
  sub_267EF4098();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v14 = swift_allocObject();
  v47 = xmmword_267EFC020;
  *(v14 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v14 + 32) = sub_267BC9500();
  *(v14 + 40) = v15;
  sub_267EF4118();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_267EFCE30;
  *(v16 + 32) = sub_267BB90E4(0);
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_267BB90E4(1);
  *(v16 + 56) = v18;
  *(v16 + 64) = sub_267BB90E4(2);
  *(v16 + 72) = v19;
  sub_267EF4108();
  sub_267EF6488();
  swift_allocObject();
  sub_267EF6478();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v20 = sub_267EF8A08();
  __swift_project_value_buffer(v20, qword_280240FB0);
  v21 = *(v4 + 16);
  v48 = v13;
  v21(v11, v13, v2);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = a1;
    v25 = v24;
    v44 = v24;
    v45 = swift_slowAlloc();
    v50 = v45;
    *v25 = 136315138;
    v21(v8, v11, v2);
    sub_267EF5458();
    v49[3] = v2;
    v49[4] = sub_267BC4154(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v49);
    v21(boxed_opaque_existential_0, v8, v2);
    v42 = sub_267EF5448();
    v27 = v11;
    v28 = v2;
    v30 = v29;
    v43 = v23;
    v31 = *(v4 + 8);
    v32 = v8;
    v33 = v4;
    v31(v32, v28);
    v31(v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v34 = sub_267BA33E8(v42, v30, &v50);

    v35 = v44;
    *(v44 + 4) = v34;
    _os_log_impl(&dword_267B93000, v22, v43, "#ReplyConfirmationFlowStrategy sending system dialog act: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v31 = *(v4 + 8);
    v33 = v4;
    v31(v11, v2);
    v28 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v47;
  v38 = v37 + v36;
  v39 = v48;
  v21(v38, v48, v28);
  sub_267EF4088();
  return (v31)(v39, v28);
}

uint64_t sub_267CDD964()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267B9FF34(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29ReplyConfirmationFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
  return v0;
}

uint64_t sub_267CDD9AC()
{
  sub_267CDD964();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReplyConfirmationFlowStrategy(uint64_t a1)
{
  result = qword_28022A910;
  if (!qword_28022A910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267CDDA58(uint64_t a1)
{
  sub_267C25DD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267CDDAF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CDE0E8;

  return sub_267CDCC74(a1);
}

uint64_t sub_267CDDB90(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_267CDE0E8;

  return sub_267CDCDA8(a1, v4, v5);
}

uint64_t sub_267CDDC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ReplyConfirmationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267CDE0E8;

  return MEMORY[0x2821BA040](a1, a2, v9, a4);
}

uint64_t sub_267CDDD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ReplyConfirmationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267CDE0E8;

  return MEMORY[0x2821BA048](a1, a2, v9, a4);
}

uint64_t sub_267CDDDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267CDE0E8;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_267CDDE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267CDDF34;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_267CDDF34()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CDE024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDE0E8;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

id sub_267CDE0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_267EF8FF8();

  v6 = [v4 initWithLanguage:v5 assetType:a3];

  return v6;
}

void sub_267CDE168(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  v3 = 0;
  v4 = 0;
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v7 = [v5 text];
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    v9 = sub_267EF9028();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!((v12 == 0) | v4 & 1) && ([v6 removeSpaceBefore] & 1) == 0)
    {
      MEMORY[0x26D608E60](32, 0xE100000000000000);
    }

    v13 = [v6 text];
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = v13;
    v15 = sub_267EF9028();
    v17 = v16;

    MEMORY[0x26D608E60](v15, v17);

    v4 = [v6 removeSpaceAfter];

    ++v3;
  }
}

uint64_t sub_267CDE30C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_267CDE394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  v63 = v9 - v10;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v11);
  v64 = &v59 - v12;
  v13 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v19 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
  (*(v15 + 16))(v18, a1, v13);
  v65 = v2;
  v20 = sub_267EF89F8();
  v21 = sub_267EF95C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_48();
    v61 = a1;
    v23 = v22;
    v24 = OUTLINED_FUNCTION_52();
    v62 = a2;
    v60 = v24;
    v69[0] = v24;
    *v23 = 136315138;
    sub_267CE855C(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v25 = sub_267EF9E58();
    v26 = v7;
    v27 = v5;
    v29 = v28;
    v30 = OUTLINED_FUNCTION_109();
    v31(v30);
    v32 = sub_267BA33E8(v25, v29, v69);
    v5 = v27;
    v7 = v26;

    *(v23 + 4) = v32;
    _os_log_impl(&dword_267B93000, v20, v21, "#SendMessageRCHFlowStrategy received input: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  else
  {

    v33 = OUTLINED_FUNCTION_109();
    v34(v33);
  }

  if (*(*(v66 + 56) + 214))
  {
    v35 = v65;
    v36 = sub_267EF89F8();
    v37 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v37))
    {
LABEL_10:

      return sub_267EF3E68();
    }

    v38 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v38);
    v39 = "#SendMessageRCHFlowStrategy intent was already handled, ignoring";
LABEL_9:
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v36, v35, v39);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    goto LABEL_10;
  }

  sub_267EF4B88();
  v41 = OUTLINED_FUNCTION_44_0();
  v43 = v42(v41);
  v44 = *MEMORY[0x277D5C150];
  v45 = *(v7 + 8);
  v46 = OUTLINED_FUNCTION_44_0();
  v45(v46);
  if (v43 == v44)
  {
    return sub_267EF3E58();
  }

  v47 = v63;
  sub_267EF4B88();
  v48 = sub_267E57DFC(v47, &v67);
  (v45)(v47, v5, v48);
  if (!v68)
  {
    sub_267B9F98C(&v67, &unk_28022BBF0, &unk_267F01C60);
    v35 = v65;
    v36 = sub_267EF89F8();
    v53 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v53))
    {
      goto LABEL_10;
    }

    v54 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v54);
    v39 = "#SendMessageRCHFlowStrategy unexpected input, ignoring";
    goto LABEL_9;
  }

  sub_267BE58F4(&v67, v69);
  __swift_project_boxed_opaque_existential_0(v69, v70);
  v49 = OUTLINED_FUNCTION_26_0();
  if ((v50(v49) & 1) != 0 && (__swift_project_boxed_opaque_existential_0(v69, v70), v51 = OUTLINED_FUNCTION_26_0(), (v52(v51) & 1) == 0))
  {
    v55 = v65;
    v56 = sub_267EF89F8();
    v57 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v57))
    {
      v58 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v58);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v56, v55, "#SendMessageRCHFlowStrategy unrelated request, ignoring");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    sub_267EF3E68();
  }

  else
  {
    sub_267EF3E58();
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t sub_267CDE89C()
{
  OUTLINED_FUNCTION_12();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = sub_267EF4BE8();
  v1[17] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4C08();
  v1[20] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_50();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267CDE9B4()
{
  v77 = v0;
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 128) + 56);
  *(v0 + 208) = v2;
  sub_267D60DE4();
  if (v1)
  {
    v3 = qword_280228818;
    v4 = *(v0 + 120);
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v5 = *(v0 + 168);
    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = *(v5 + 16);
    v8 = OUTLINED_FUNCTION_14_1();
    v7(v8);
    v9 = v4;
    v10 = sub_267EF89F8();
    v11 = sub_267EF95D8();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 200);
    if (v12)
    {
      v74 = v7;
      v15 = *(v0 + 160);
      v14 = *(v0 + 168);
      v72 = *(v0 + 120);
      swift_slowAlloc();
      v71 = OUTLINED_FUNCTION_40_2();
      v73 = OUTLINED_FUNCTION_52();
      v76[0] = v73;
      *v11 = 136315394;
      v16 = OUTLINED_FUNCTION_109();
      v7(v16);
      v17 = sub_267EF9098();
      v19 = v18;
      log = v10;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = v17;
      v7 = v74;
      v22 = sub_267BA33E8(v21, v19, v76);

      *(v11 + 4) = v22;
      v23 = v20;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v9;
      *v71 = v72;
      v24 = v9;
      _os_log_impl(&dword_267B93000, log, v11, "#SendMessageRCHFlowStrategy converting %s\nwith current intent: %@", v11, 0x16u);
      sub_267B9F98C(v71, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      __swift_destroy_boxed_opaque_existential_0(v73);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    else
    {
      v48 = *(v0 + 160);
      v49 = *(v0 + 168);

      v23 = *(v49 + 8);
      v23(v13, v48);
    }

    v50 = sub_267EF97C8();

    v51 = *(v2 + 64);
    *(v2 + 64) = v50;
  }

  else
  {

    sub_267C390B0();

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v25 = *(v0 + 184);
    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    v28 = *(v0 + 112);
    v29 = sub_267EF8A08();
    __swift_project_value_buffer(v29, qword_280240FB0);
    v7 = *(v27 + 16);
    (v7)(v25, v28, v26);
    v30 = sub_267EF89F8();
    sub_267EF95D8();
    v31 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 184);
      v75 = v7;
      v34 = *(v0 + 160);
      v35 = *(v0 + 168);
      OUTLINED_FUNCTION_48();
      v36 = OUTLINED_FUNCTION_64_2();
      v76[0] = v36;
      *v28 = 136315138;
      v37 = OUTLINED_FUNCTION_63();
      v75(v37);
      v38 = sub_267EF9098();
      v40 = v39;
      v41 = v33;
      v23 = *(v35 + 8);
      v23(v41, v34);
      v7 = v75;
      v42 = sub_267BA33E8(v38, v40, v76);

      *(v28 + 4) = v42;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    else
    {
      v52 = *(v0 + 168);

      v23 = *(v52 + 8);
      v53 = OUTLINED_FUNCTION_26_0();
      (v23)(v53);
    }
  }

  (v7)(*(v0 + 176), *(v0 + 112), *(v0 + 160));
  v54 = OUTLINED_FUNCTION_66();
  v56 = v55(v54);
  if (v56 == *MEMORY[0x277D5C128])
  {
    goto LABEL_14;
  }

  if (v56 != *MEMORY[0x277D5C150])
  {
    if (v56 != *MEMORY[0x277D5C160])
    {
      v66 = sub_267C266B0();
      OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v66);
      *v67 = 0xD000000000000042;
      v67[1] = 0x8000000267F15BA0;
      swift_willThrow();
      v23(*(v0 + 176), *(v0 + 160));

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_46_0();

      __asm { BRAA            X1, X16 }
    }

LABEL_14:
    v23(*(v0 + 176), *(v0 + 160));
    v57 = swift_task_alloc();
    *(v0 + 232) = v57;
    *v57 = v0;
    v57[1] = sub_267CDF80C;
    OUTLINED_FUNCTION_66_6(*(v0 + 112));
    OUTLINED_FUNCTION_46_0();

    return sub_267CE2D28();
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 152);
  v62 = *(v0 + 136);
  v63 = *(v0 + 144);
  (*(*(v0 + 168) + 96))(v60, *(v0 + 160));
  (*(v63 + 32))(v61, v60, v62);
  v64 = swift_task_alloc();
  *(v0 + 216) = v64;
  *v64 = v0;
  v64[1] = sub_267CDF030;
  OUTLINED_FUNCTION_66_6(*(v0 + 152));
  OUTLINED_FUNCTION_46_0();

  return sub_267CE0364();
}

uint64_t sub_267CDF030()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 224) = v0;

  if (v0)
  {
    v8 = sub_267CE0030;
  }

  else
  {
    v8 = sub_267CDF138;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267CDF138()
{
  (*(v1[18] + 8))(v1[19], v1[17]);
  v6 = v1[9];
  v7 = v1[26];
  if (*(v7 + 40))
  {
    goto LABEL_4;
  }

  if (sub_267D60D20())
  {
    v7 = v1[26];
LABEL_4:
    *(*(v7 + 216) + 24) = 1;
  }

  v8 = v6;
  sub_267BCE788(v8);
  v93 = v8;
  v9 = sub_267EB7470(v8);
  v10 = 0x280228000;
  if (!v9)
  {
    goto LABEL_52;
  }

  sub_267BAF0DC(v9);
  OUTLINED_FUNCTION_40_8();
  *&v11 = 136315138;
  v81 = v11;
  v84 = v2;
  v85 = v12;
  v82 = v4;
  v83 = v3;
  while (1)
  {
    while (1)
    {
      if (v8 == v0)
      {

        v10 = 0x280228000uLL;
LABEL_52:
        if (*(v10 + 2072) == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_70;
      }

      if (v2)
      {
        v13 = MEMORY[0x26D609870](v8, v80);
      }

      else
      {
        if (v8 >= *(v3 + 16))
        {
          goto LABEL_69;
        }

        v13 = *(v4 + 8 * v8);
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_68;
      }

      v86 = v8 + 1;
      v87 = v13;
      v14 = sub_267D28E98(v13);
      HIDWORD(v92) = v8 >= *(v14 + 16) ? 0 : *(v14 + 4 * v8 + 32);

      if (sub_267DEC2A0(v87))
      {
        break;
      }

      ++v8;
    }

    OUTLINED_FUNCTION_67_3();
    if (v16)
    {
      break;
    }

    if (*(v15 + 16))
    {
      goto LABEL_18;
    }

LABEL_39:

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v40 = v1[16];
    v41 = sub_267EF8A08();
    __swift_project_value_buffer(v41, qword_280240FB0);
    OUTLINED_FUNCTION_54();

    v42 = sub_267EF89F8();
    v43 = sub_267EF95D8();

    if (OUTLINED_FUNCTION_116_0())
    {
      OUTLINED_FUNCTION_48();
      v44 = OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_32_10(v44, v45, v46, v47, v48, v49, v50, v51, v79, v80, v81);

      sub_267EF8F08();
      OUTLINED_FUNCTION_73_3();

      v52 = OUTLINED_FUNCTION_63();
      v55 = sub_267BA33E8(v52, v53, v54);

      *(v40 + 4) = v55;
      OUTLINED_FUNCTION_55_6(&dword_267B93000, v42, v43, "#SendMessageRCHFlowStrategy Contact reco scores: %s");
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v0 = v85;
    v8 = v86;
    v3 = v83;
    v2 = v84;
    v4 = v82;
  }

  if (!sub_267EF9A68())
  {
    goto LABEL_39;
  }

LABEL_18:
  OUTLINED_FUNCTION_62_4();
  while (2)
  {
    if (v91)
    {
      v17 = MEMORY[0x26D609870](v4, v8);
    }

    else
    {
      if (v4 >= *(v88 + 16))
      {
        goto LABEL_67;
      }

      v17 = *(v8 + 8 * v4 + 32);
    }

    v18 = v17;
    v2 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      OUTLINED_FUNCTION_0_10();
      swift_once();
LABEL_53:
      v58 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v58, qword_280240FB0);
      v59 = v93;
      v60 = sub_267EF89F8();
      v61 = sub_267EF95D8();

      if (os_log_type_enabled(v60, v61))
      {
        OUTLINED_FUNCTION_48();
        v62 = OUTLINED_FUNCTION_40_2();
        *v2 = 138412290;
        *(v2 + 4) = v59;
        *v62 = v59;
        v63 = v59;
        OUTLINED_FUNCTION_76_5(&dword_267B93000, v64, v65, "#SendMessageRCHFlowStrategy converted to %@");
        sub_267B9F98C(v62, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v66 = v59;
      v67 = sub_267EF89F8();
      sub_267EF95D8();
      v68 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = OUTLINED_FUNCTION_48();
        *v70 = 134217984;
        v71 = sub_267E76140(v66);
        if (v71)
        {
          v72 = sub_267BAF0DC(v71);
        }

        else
        {
          v72 = 0;
        }

        *(v70 + 4) = v72;
        OUTLINED_FUNCTION_41_8();
        OUTLINED_FUNCTION_55_6(v73, v74, v75, v76);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {

        v67 = v66;
      }

      [v66 _setLaunchId_];

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_49_9();

      __asm { BRAA            X2, X16 }
    }

    v19 = OUTLINED_FUNCTION_79_4();
    v94 = sub_267DE9B04();
    v21 = v20;

    [v18 recommendation];
    v22 = OUTLINED_FUNCTION_79_4();
    sub_267DE9B04();

    v24 = sub_267D28F5C(v23);
    if (*(v24 + 16))
    {
      v25 = sub_267BA9948();
      v27 = v26;

      if (v27)
      {
        v8 = *(*(v24 + 56) + 8 * v25);

        goto LABEL_29;
      }
    }

    else
    {
    }

    v8 = sub_267EF8F28();
LABEL_29:
    OUTLINED_FUNCTION_48_10();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_43_12();
    OUTLINED_FUNCTION_74_3();
    if (v30)
    {
      goto LABEL_65;
    }

    v5 = v28;
    v1 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A9A8, &qword_267F02658);
    if ((OUTLINED_FUNCTION_78_6(v31) & 1) == 0)
    {
LABEL_33:
      if (v1)
      {

        OUTLINED_FUNCTION_24_7();
        OUTLINED_FUNCTION_12_16(v34, v79, v80, v81, *(&v81 + 1), v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, SHIDWORD(v92));
      }

      else
      {
        *(v95 + 8 * (v5 >> 6) + 64) |= 1 << v5;
        v35 = (*(v95 + 48) + 16 * v5);
        *v35 = v94;
        v35[1] = v21;
        OUTLINED_FUNCTION_24_7();
        OUTLINED_FUNCTION_12_16(v36, v79, v80, v81, *(&v81 + 1), v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, SHIDWORD(v92));
        v37 = *(v95 + 16);
        v30 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v30)
        {
          goto LABEL_66;
        }

        *(v95 + 16) = v38;
      }

      OUTLINED_FUNCTION_77_2();

      OUTLINED_FUNCTION_69_3();
      if (v39)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v32 = sub_267BA9948();
  if ((v1 & 1) == (v33 & 1))
  {
    v5 = v32;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_49_9();

  return sub_267EF9F28();
}

uint64_t sub_267CDF80C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_267CDF974, 0, 0);
  }
}

uint64_t sub_267CDF974(uint64_t a1)
{
  v7 = v2[12];
  v8 = v2[26];
  if (*(v8 + 40))
  {
    goto LABEL_4;
  }

  if (sub_267D60D20())
  {
    v8 = v2[26];
LABEL_4:
    *(*(v8 + 216) + 24) = 1;
  }

  v9 = v7;
  sub_267BCE788(v9);
  v94 = v9;
  v10 = sub_267EB7470(v9);
  v11 = 0x280228000;
  if (!v10)
  {
    goto LABEL_52;
  }

  sub_267BAF0DC(v10);
  OUTLINED_FUNCTION_40_8();
  *&v12 = 136315138;
  v82 = v12;
  v85 = v3;
  v86 = v13;
  v83 = v5;
  v84 = v4;
  while (1)
  {
    while (1)
    {
      if (v9 == v1)
      {

        v11 = 0x280228000uLL;
LABEL_52:
        if (*(v11 + 2072) == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_70;
      }

      if (v3)
      {
        v14 = MEMORY[0x26D609870](v9, v81);
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_69;
        }

        v14 = *(v5 + 8 * v9);
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_68;
      }

      v87 = v9 + 1;
      v88 = v14;
      v15 = sub_267D28E98(v14);
      HIDWORD(v93) = v9 >= *(v15 + 16) ? 0 : *(v15 + 4 * v9 + 32);

      if (sub_267DEC2A0(v88))
      {
        break;
      }

      ++v9;
    }

    OUTLINED_FUNCTION_67_3();
    if (v17)
    {
      break;
    }

    if (*(v16 + 16))
    {
      goto LABEL_18;
    }

LABEL_39:

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v41 = v2[16];
    v42 = sub_267EF8A08();
    __swift_project_value_buffer(v42, qword_280240FB0);
    OUTLINED_FUNCTION_54();

    v43 = sub_267EF89F8();
    v44 = sub_267EF95D8();

    if (OUTLINED_FUNCTION_116_0())
    {
      OUTLINED_FUNCTION_48();
      v45 = OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_32_10(v45, v46, v47, v48, v49, v50, v51, v52, v80, v81, v82);

      sub_267EF8F08();
      OUTLINED_FUNCTION_73_3();

      v53 = OUTLINED_FUNCTION_63();
      v56 = sub_267BA33E8(v53, v54, v55);

      *(v41 + 4) = v56;
      OUTLINED_FUNCTION_55_6(&dword_267B93000, v43, v44, "#SendMessageRCHFlowStrategy Contact reco scores: %s");
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v1 = v86;
    v9 = v87;
    v4 = v84;
    v3 = v85;
    v5 = v83;
  }

  if (!sub_267EF9A68())
  {
    goto LABEL_39;
  }

LABEL_18:
  OUTLINED_FUNCTION_62_4();
  while (2)
  {
    if (v92)
    {
      v18 = MEMORY[0x26D609870](v5, v9);
    }

    else
    {
      if (v5 >= *(v89 + 16))
      {
        goto LABEL_67;
      }

      v18 = *(v9 + 8 * v5 + 32);
    }

    v19 = v18;
    v3 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      OUTLINED_FUNCTION_0_10();
      swift_once();
LABEL_53:
      v59 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v59, qword_280240FB0);
      v60 = v94;
      v61 = sub_267EF89F8();
      v62 = sub_267EF95D8();

      if (os_log_type_enabled(v61, v62))
      {
        OUTLINED_FUNCTION_48();
        v63 = OUTLINED_FUNCTION_40_2();
        *v3 = 138412290;
        *(v3 + 4) = v60;
        *v63 = v60;
        v64 = v60;
        OUTLINED_FUNCTION_76_5(&dword_267B93000, v65, v66, "#SendMessageRCHFlowStrategy converted to %@");
        sub_267B9F98C(v63, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v67 = v60;
      v68 = sub_267EF89F8();
      sub_267EF95D8();
      v69 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = OUTLINED_FUNCTION_48();
        *v71 = 134217984;
        v72 = sub_267E76140(v67);
        if (v72)
        {
          v73 = sub_267BAF0DC(v72);
        }

        else
        {
          v73 = 0;
        }

        *(v71 + 4) = v73;
        OUTLINED_FUNCTION_41_8();
        OUTLINED_FUNCTION_55_6(v74, v75, v76, v77);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {

        v68 = v67;
      }

      [v67 _setLaunchId_];

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_49_9();

      __asm { BRAA            X2, X16 }
    }

    v20 = OUTLINED_FUNCTION_79_4();
    v95 = sub_267DE9B04();
    v22 = v21;

    [v19 recommendation];
    v23 = OUTLINED_FUNCTION_79_4();
    sub_267DE9B04();

    v25 = sub_267D28F5C(v24);
    if (*(v25 + 16))
    {
      v26 = sub_267BA9948();
      v28 = v27;

      if (v28)
      {
        v9 = *(*(v25 + 56) + 8 * v26);

        goto LABEL_29;
      }
    }

    else
    {
    }

    v9 = sub_267EF8F28();
LABEL_29:
    OUTLINED_FUNCTION_48_10();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_43_12();
    OUTLINED_FUNCTION_74_3();
    if (v31)
    {
      goto LABEL_65;
    }

    v6 = v29;
    v2 = v30;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A9A8, &qword_267F02658);
    if ((OUTLINED_FUNCTION_78_6(v32) & 1) == 0)
    {
LABEL_33:
      if (v2)
      {

        OUTLINED_FUNCTION_24_7();
        OUTLINED_FUNCTION_12_16(v35, v80, v81, v82, *(&v82 + 1), v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, SHIDWORD(v93));
      }

      else
      {
        *(v96 + 8 * (v6 >> 6) + 64) |= 1 << v6;
        v36 = (*(v96 + 48) + 16 * v6);
        *v36 = v95;
        v36[1] = v22;
        OUTLINED_FUNCTION_24_7();
        OUTLINED_FUNCTION_12_16(v37, v80, v81, v82, *(&v82 + 1), v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, SHIDWORD(v93));
        v38 = *(v96 + 16);
        v31 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v31)
        {
          goto LABEL_66;
        }

        *(v96 + 16) = v39;
      }

      OUTLINED_FUNCTION_77_2();

      OUTLINED_FUNCTION_69_3();
      if (v40)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v33 = sub_267BA9948();
  if ((v2 & 1) == (v34 & 1))
  {
    v6 = v33;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_49_9();

  return sub_267EF9F28();
}

uint64_t sub_267CE0030()
{
  OUTLINED_FUNCTION_62();
  (*(v0[18] + 8))(v0[19], v0[17]);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267CE00DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CE00F8()
{
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v5 = *(v0 + 40);
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_267B9F98C(v7, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  *v14 = v0;
  v14[1] = sub_267CE0284;

  return sub_267CA5F80();
}

uint64_t sub_267CE0284()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267CE0364()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_267EF8228();
  v1[30] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[31] = v5;
  v1[32] = OUTLINED_FUNCTION_50();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v6 = sub_267EF8818();
  v1[35] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[36] = v7;
  v1[37] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF2BA8();
  v1[38] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[39] = v9;
  v1[40] = OUTLINED_FUNCTION_50();
  v1[41] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v10);
  v1[42] = OUTLINED_FUNCTION_50();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CE050C()
{
  v207 = v0;
  v1 = v0;
  v2 = (v0 + 352);
  v3 = *(v1 + 224);
  sub_267B9CC04(*(v1 + 216), *(v1 + 352));
  if (!v3)
  {
    v11 = sub_267C266B0();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v11);
    *v12 = 0xD00000000000004BLL;
    v12[1] = 0x8000000267F15B00;
    swift_willThrow();
LABEL_6:
    OUTLINED_FUNCTION_34_9();
    sub_267B9F98C(v13, &unk_28022BBE0, qword_267EFD030);

    OUTLINED_FUNCTION_17();

    return v14();
  }

  v4 = *(v1 + 344);
  v5 = *(v1 + 224);
  sub_267C2FB6C(*(v1 + 352), v4, &unk_28022BBE0, qword_267EFD030);
  v6 = type metadata accessor for DirectInvocationUseCases(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    v7 = v5;
LABEL_4:
    v8 = *v2;
    v9 = sub_267C266B0();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v9);
    *v10 = 0xD000000000000044;
    v10[1] = 0x8000000267F15B50;
    swift_willThrow();

    sub_267B9F98C(v8, &unk_28022BBE0, qword_267EFD030);
    goto LABEL_6;
  }

  sub_267C2FB6C(*(v1 + 344), *(v1 + 336), &unk_28022BBE0, qword_267EFD030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v197 = v1;
  switch(EnumCaseMultiPayload)
  {
    case 11:
      v17 = *(v1 + 352);
      v18 = *(v1 + 336);
      v20 = *v18;
      v19 = v18[1];
      v21 = v5;
      v24 = sub_267CE17B4(v21, v20, v19, v22, v23, v17);

      v25 = sub_267E76140(v24);
      if (v25)
      {
        v26 = sub_267BAF0DC(v25);

        v27 = v26 != 0;
      }

      else
      {
        v27 = 0;
      }

      v199 = v27;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v202 = v24;
      v156 = sub_267EF8A08();
      __swift_project_value_buffer(v156, qword_280240FB0);
      OUTLINED_FUNCTION_54();

      v157 = sub_267EF89F8();
      sub_267EF95D8();
      v158 = OUTLINED_FUNCTION_13_0();
      v160 = v20 & 0xFFFFFFFFFFFFLL;
      if (os_log_type_enabled(v158, v159))
      {
        v161 = swift_slowAlloc();
        v162 = v161;
        *v161 = 67109376;
        v163 = v19 & 0x2000000000000000;
        v164 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) != 0)
        {
          v165 = HIBYTE(v19) & 0xF;
        }

        else
        {
          v165 = v160;
        }

        v161[1] = v165 == 0;

        *(v162 + 4) = 1024;
        v24 = v21;
        v166 = v199;
        *(v162 + 10) = v199;
        OUTLINED_FUNCTION_41_8();
        _os_log_impl(v167, v168, v169, v170, v162, 0xEu);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();

        v171 = v197;
      }

      else
      {

        v163 = v19 & 0x2000000000000000;
        v164 = HIBYTE(v19) & 0xF;
        v171 = v197;
        v166 = v199;
      }

      sub_267B9F98C(*v2, &unk_28022BBE0, qword_267EFD030);

      if (v163)
      {
        v172 = v164;
      }

      else
      {
        v172 = v160;
      }

      if (v172 != 0 || v166)
      {
        *(*(v171[29] + 56) + 41) = 1;
      }

      goto LABEL_63;
    case 12:
      v85 = *(v1 + 336);
      v24 = *v85;
      v86 = v85[1];
      v87 = qword_280228818;
      v88 = v5;
      if (v87 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v89 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v89, qword_280240FB0);

      v90 = sub_267EF89F8();
      sub_267EF95D8();
      v91 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = v93;
        *v93 = 67109120;
        v95 = HIBYTE(v86) & 0xF;
        if ((v86 & 0x2000000000000000) == 0)
        {
          v95 = v24 & 0xFFFFFFFFFFFFLL;
        }

        *(v93 + 1) = v95 == 0;

        OUTLINED_FUNCTION_41_8();
        _os_log_impl(v96, v97, v98, v99, v94, 8u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {
      }

      v147 = *(v1 + 352);
      v148 = OUTLINED_FUNCTION_3();
      v202 = sub_267CE17B4(v148, v149, v86, v150, v151, v147);

      OUTLINED_FUNCTION_15_17();

      v71 = &unk_28022BBE0;
      v72 = qword_267EFD030;
      v73 = v147;
      goto LABEL_62;
    case 13:
    case 14:
    case 15:
    case 19:
    case 20:
      goto LABEL_21;
    case 16:
      v51 = *(*(v1 + 336) + 8);
      v52 = qword_280228818;
      v53 = v5;
      if (v52 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v54 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        *v57 = 0;
        _os_log_impl(&dword_267B93000, v55, v56, "#SendMessageRCHFlowStrategy received recipientChangedViaSnippet directInvocation", v57, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v58 = OUTLINED_FUNCTION_64_0();
      v60 = sub_267CE1E1C(v58, v59, v51);
      v24 = *(v1 + 352);
      v155 = v60;

      OUTLINED_FUNCTION_15_17();

      sub_267B9F98C(v24, &unk_28022BBE0, qword_267EFD030);
      v202 = v155;
      goto LABEL_63;
    case 17:
      v74 = *(v1 + 336);
      v24 = *v74;
      v75 = v74[1];
      v76 = qword_280228818;
      v77 = v5;
      if (v76 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v78 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v78, qword_280240FB0);
      v79 = sub_267EF89F8();
      v80 = sub_267EF95D8();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_32();
        *v81 = 0;
        _os_log_impl(&dword_267B93000, v79, v80, "#SendMessageRCHFlowStrategy received appChangedViaSnippet directInvocation", v81, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v82 = *(v1 + 352);

      v83 = OUTLINED_FUNCTION_3();
      v202 = sub_267CE28B8(v83, v84, v75);

      OUTLINED_FUNCTION_15_17();

      v71 = &unk_28022BBE0;
      v72 = qword_267EFD030;
      v73 = v82;
      goto LABEL_62;
    case 18:
      v100 = *(v1 + 336);
      v102 = *v100;
      v101 = v100[1];
      v103 = qword_280228818;
      v192 = v5;
      if (v103 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v104 = sub_267EF8A08();
      __swift_project_value_buffer(v104, qword_280240FB0);
      v105 = sub_267EF89F8();
      sub_267EF95C8();
      v106 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v108);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v109, v110, v111, v112, v113, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v114 = *(v1 + 312);
      v115 = *(v1 + 288);
      v116 = *(v1 + 232);

      v117 = *(v116 + 56);
      *(v117 + 168) = 0;
      swift_beginAccess();
      v118 = MEMORY[0x277D84F90];
      v201 = v117;
      *(v117 + 152) = MEMORY[0x277D84F90];

      v204 = v118;
      v205[0] = v102;
      v193 = (v115 + 8);
      v195 = (v114 + 16);
      v205[1] = 0;
      v205[2] = v101;
      v205[3] = 0;
      v206 = 0;
      while (1)
      {
        v119 = sub_267D0F108();
        if (!v120)
        {
          break;
        }

        v123 = v122;
        v198 = v121;
        v124 = v197[40];
        v125 = v197[41];
        v126 = v197[37];
        v127 = v197[38];
        v128 = v197[35];
        v197[25] = v119;
        v197[26] = v120;
        sub_267BB5034();
        sub_267EF9958();

        sub_267EF2AD8();

        sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
        (*v195)(v124, v125, v127);
        sub_267EF2AE8();
        OUTLINED_FUNCTION_73_3();
        sub_267EF87D8();
        v129 = sub_267EF8768();
        v131 = v130;
        (*v193)(v126, v128);
        v132 = sub_267E0C800(v124, v125, v127, v129, v131);
        v133 = [objc_opt_self() attachmentWithFile_];
        MEMORY[0x26D608F90]();
        if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        OUTLINED_FUNCTION_64_0();
        sub_267EF9368();
        v118 = v204;
        swift_beginAccess();
        v134 = *(v201 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v201 + 152) = v134;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_267BF4EE8();
          v134 = v140;
          *(v201 + 152) = v140;
        }

        v136 = *(v134 + 16);
        if (v136 >= *(v134 + 24) >> 1)
        {
          sub_267BF4EE8();
          v134 = v141;
        }

        *(v134 + 16) = v136 + 1;
        v137 = v134 + 16 * v136;
        *(v137 + 32) = v198;
        *(v137 + 40) = v123;
        *(v201 + 152) = v134;
        swift_endAccess();

        v138 = OUTLINED_FUNCTION_63();
        v139(v138);
      }

      v142 = sub_267EF89F8();
      v143 = sub_267EF95D8();
      v144 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = OUTLINED_FUNCTION_48();
        *v146 = 134217984;
        *(v146 + 4) = sub_267BAF0DC(v118);

        _os_log_impl(&dword_267B93000, v142, v143, "#SendMessageConfirmIntentFlow updating attachment list with %ld files", v146, 0xCu);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      else
      {
      }

      v152 = v197[44];

      v24 = v192;
      v153 = sub_267EF97C8();
      v197[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
      v197[15] = v118;
      v202 = v153;
      sub_267ECE290();

      sub_267B9F98C(v152, &unk_28022BBE0, qword_267EFD030);
      v71 = &qword_28022AEF0;
      v72 = &qword_267EFCDE0;
      v73 = (v197 + 15);
      goto LABEL_62;
    case 21:
      v61 = qword_280228818;
      v62 = v5;
      if (v61 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v63 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v63, qword_280240FB0);
      v64 = sub_267EF89F8();
      v24 = sub_267EF95D8();
      v65 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_32();
        *v67 = 0;
        _os_log_impl(&dword_267B93000, v64, v24, "#SendMessageRCHFlowStrategy received deviceUnlockedViaSnippet directInvocation", v67, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v68 = *(v1 + 352);
      v69 = *(v1 + 232);

      v70 = *(v69 + 56);
      *(v70 + 213) = 1;
      *(*(v70 + 216) + 24) = 1;
      *(*(v69 + 56) + 213) = 0;
      v202 = sub_267EF97C8();

      v71 = &unk_28022BBE0;
      v72 = qword_267EFD030;
      v73 = v68;
LABEL_62:
      sub_267B9F98C(v73, v71, v72);
      goto LABEL_63;
    default:
      if (EnumCaseMultiPayload != 1)
      {
LABEL_21:
        v49 = *(v1 + 336);
        v50 = v5;
        sub_267CCEDF4(v49);
        goto LABEL_4;
      }

      v28 = *(v1 + 264);
      v29 = *(v1 + 240);
      v30 = *(v1 + 248);
      (*(v30 + 32))(*(v1 + 272), *(v1 + 336), v29);
      v31 = (v30 + 16);
      v32 = *(v30 + 16);
      OUTLINED_FUNCTION_92_2();
      v32();
      v33 = (*(v30 + 88))(v28, v29);
      LODWORD(v29) = *MEMORY[0x277D5D4E0];
      v34 = qword_280228818;
      v35 = v5;
      if (v33 == v29)
      {
        if (v34 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v36 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
        v37 = sub_267EF89F8();
        v38 = sub_267EF95D8();
        v39 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = OUTLINED_FUNCTION_32();
          *v41 = 0;
          _os_log_impl(&dword_267B93000, v37, v38, "#SendMessageRCHFlowStrategy Modify button pressed -> clearing content and audio message attachment", v41, 2u);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        v42 = *(v1 + 232);

        v43 = sub_267EF97C8();
        sub_267B9AFEC(v42 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender, v1 + 16);
        v24 = v1;
        __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        result = sub_267BB41B0(ObjCClassFromMetadata);
        if (!v45)
        {
          __break(1u);
          return result;
        }

        sub_267EF3B18();
        *(swift_allocObject() + 16) = v35;
        v46 = v35;
        LOBYTE(v205[0]) = 1;
        sub_267EF3B08();
        sub_267EF3848();

        __swift_destroy_boxed_opaque_existential_0((v1 + 16));
        *(v1 + 72) = 0u;
        *(v1 + 56) = 0u;
        sub_267ECE290();
        sub_267B9F98C(v1 + 56, &qword_28022AEF0, &qword_267EFCDE0);
        v47 = sub_267E0CA8C(v46);
        v48 = v47;
        if (v47)
        {
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
        }

        else
        {
          *(v1 + 96) = 0;
          *(v1 + 104) = 0;
        }

        v188 = *(v1 + 352);
        v189 = *(v1 + 232);
        *(v1 + 88) = v48;
        *(v1 + 112) = v47;
        sub_267ECE290();

        v190 = OUTLINED_FUNCTION_44_0();
        v191(v190);
        sub_267B9F98C(v188, &unk_28022BBE0, qword_267EFD030);
        sub_267B9F98C(v1 + 88, &qword_28022AEF0, &qword_267EFCDE0);
        *(*(v189 + 56) + 40) = 1;
        v202 = v43;
      }

      else
      {
        if (v34 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v173 = sub_267EF8A08();
        __swift_project_value_buffer(v173, qword_280240FB0);
        OUTLINED_FUNCTION_92_2();
        v32();
        v174 = sub_267EF89F8();
        v175 = sub_267EF95D8();
        v176 = os_log_type_enabled(v174, v175);
        v177 = *(v1 + 352);
        v24 = *(v1 + 272);
        v178 = *(v1 + 240);
        if (v176)
        {
          v203 = v35;
          v179 = OUTLINED_FUNCTION_48();
          v200 = v177;
          v180 = OUTLINED_FUNCTION_52();
          v205[0] = v180;
          *v179 = 136315138;
          v194 = v178;
          v196 = v24;
          v181 = sub_267EF8218();
          v24 = v182;
          v183 = OUTLINED_FUNCTION_61_7();
          v31(v183, v184);
          v185 = sub_267BA33E8(v181, v24, v205);

          *(v179 + 4) = v185;
          _os_log_impl(&dword_267B93000, v174, v175, "#SendMessageRCHFlowStrategy Keeping the current intent for button %s", v179, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v180);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
          v35 = v203;
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();

          v31(v196, v194);
          v186 = v200;
        }

        else
        {

          v187 = OUTLINED_FUNCTION_61_7();
          v31(v187, v178);
          v31(v24, v178);
          v186 = v177;
        }

        sub_267B9F98C(v186, &unk_28022BBE0, qword_267EFD030);
        v31(*(v1 + 264), *(v1 + 240));
        v202 = v35;
      }

LABEL_63:
      OUTLINED_FUNCTION_34_9();
      sub_267B9F98C(v24, &unk_28022BBE0, qword_267EFD030);

      OUTLINED_FUNCTION_4_3();

      result = v154(v202);
      break;
  }

  return result;
}

uint64_t sub_267CE1768()
{
  sub_267EF7C38();
  sub_267C7A584();
  sub_267EF7C08();
  return sub_267EF3AD8();
}

id sub_267CE17B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_267ED9A2C(a1);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_47_8();
  v19 = sub_267CE1B04(v15, v16, v17, v18);
  v20 = sub_267EF97C8();
  v44 = MEMORY[0x277D837D0];
  v43[0] = a2;
  v43[1] = a3;

  sub_267ECE290();
  sub_267B9F98C(v43, &qword_28022AEF0, &qword_267EFCDE0);
  if (v13 == a2 && v14 == a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_47_8();
    v22 = sub_267EF9EA8();

    if (v22 & 1) == 0 && (sub_267EF96D8())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v23 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
      v24 = sub_267EF89F8();
      v25 = sub_267EF95D8();
      v26 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = OUTLINED_FUNCTION_32();
        *v28 = 0;
        _os_log_impl(&dword_267B93000, v24, v25, "#SendMessageRCHFlowStrategy content updated by keyboard, hiding Siri attribution", v28, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      sub_267EF96B8();
    }
  }

  if (!v19)
  {

    v30 = 0;
    goto LABEL_30;
  }

  v29 = v19;
  if ([v29 numCharsAdded])
  {
  }

  else
  {
    v31 = [v29 numCharsDeleted];

    if (!v31)
    {
      goto LABEL_25;
    }
  }

  *(v7[7] + 40) = 1;
LABEL_25:
  v30 = v29;

  if ([v30 numCharsAdded])
  {
    v32 = v7[5];
    v33 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v32);
    OUTLINED_FUNCTION_70_5();
    v34(v43, v32, v33);
    __swift_project_boxed_opaque_existential_0(v43, v44);
    sub_267EF3BD8();
    v36 = v35;

    if (v36)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
  }

LABEL_30:
  sub_267B9AFEC(v7 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService, v43);
  sub_267C3911C(v20, 1);
  sub_267C3A088();
  sub_267B9F98C(v43, &qword_280229508, &unk_267EFD960);
  v37 = sub_267CE2B94(a6);
  v38 = v20;
  v39 = sub_267C7A584();
  v41 = v40;

  sub_267CE29B0(v37, v39, v41);

  return v38;
}

unint64_t sub_267CE1B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v31 = v11;
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A9A0, &unk_267F02648);
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v14);
  v33 = a4;
  v34[0] = a3;
  v34[1] = a4;
  v34[5] = a1;
  v34[6] = a2;
  sub_267C7A6BC();
  sub_267EF8FB8();
  v15 = [objc_allocWithZone(MEMORY[0x277D575D0]) init];
  if (!v15)
  {
LABEL_10:
    v29 = OUTLINED_FUNCTION_3();
    v30(v29);
    return v15;
  }

  v16 = *(sub_267EF9D08() + 16);

  if (HIDWORD(v16))
  {
    __break(1u);
    goto LABEL_12;
  }

  [v15 setNumCharsAdded_];
  v18 = *(sub_267EF9D18() + 16);

  if (HIDWORD(v18))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v15 setNumCharsDeleted_];
  v19._countAndFlagsBits = a3;
  v19._object = v33;
  result = String.distanceLevenshtein(between:)(v19);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!HIDWORD(result))
  {
    [v15 setLevenshteinEditDistance_];
    v20 = v5[6];
    __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
    v21 = OUTLINED_FUNCTION_53_0();
    v22(v21, v20);
    __swift_project_boxed_opaque_existential_0(v34, v34[3]);
    OUTLINED_FUNCTION_53_0();
    sub_267EF3B68();
    sub_267BFDCA0(a3, v33);
    v24 = v23;
    (*(v31 + 8))(v13, v32);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v25 = *(v24 + 16) + 1;
    v26 = 56;
    do
    {
      if (!--v25)
      {
        break;
      }

      v27 = *(v24 + v26);
      v26 += 32;
    }

    while (v27 != 1);
    v28 = v25 != 0;

    [v15 setIsEmojiUsed_];
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_267CE1E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v106 = a2;
  v115 = sub_267EF6A08();
  OUTLINED_FUNCTION_58();
  v110 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v109 = v6;
  v101 = sub_267EF6A88();
  OUTLINED_FUNCTION_58();
  v100 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v9);
  v98 = sub_267EF6B88();
  OUTLINED_FUNCTION_58();
  v96 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v12);
  v13 = sub_267EF6B38();
  v14 = OUTLINED_FUNCTION_18(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v15);
  v16 = sub_267EF2E38();
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v114 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v20 = OUTLINED_FUNCTION_18(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_60();
  v112 = v21 - v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  v25 = &v85 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_60();
  v94 = v27 - v28;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v29);
  v88 = &v85 - v30;
  OUTLINED_FUNCTION_115();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v85 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v85 - v35;
  sub_267EF6B18();
  OUTLINED_FUNCTION_58();
  v104 = v38;
  v105 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_0();
  v102 = v39;
  v103 = sub_267EF97C8();
  v40 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver + 24);
  v95 = (v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver), v40);
  v90 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  v41 = *(v3 + 40);
  v87 = v3;
  __swift_project_boxed_opaque_existential_0((v3 + 16), v41);
  OUTLINED_FUNCTION_70_5();
  v42 = OUTLINED_FUNCTION_109();
  v43(v42);
  sub_267EF2D28();
  OUTLINED_FUNCTION_78();
  v91 = v44;
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  sub_267EF6C28();
  v113 = v25;
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  OUTLINED_FUNCTION_44_0();
  v92 = OUTLINED_FUNCTION_28_3();
  sub_267EF6FF8();
  v52 = sub_267EF6FC8();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v53 = sub_267EF8A08();
  __swift_project_value_buffer(v53, qword_280240FB0);
  sub_267C2FB6C(v36, v34, &qword_280229430, &qword_267EFD2C0);
  v54 = sub_267EF89F8();
  v55 = sub_267EF95D8();
  v56 = OUTLINED_FUNCTION_13_0();
  v58 = os_log_type_enabled(v56, v57);
  v111 = v36;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v121 = v86;
    *v59 = 136315394;
    v116 = 0;
    v117 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v60 = sub_267EF9098();
    v62 = sub_267BA33E8(v60, v61, &v121);

    *(v59 + 4) = v62;
    *(v59 + 12) = 2080;
    sub_267C2FB6C(v34, v88, &qword_280229430, &qword_267EFD2C0);
    v63 = sub_267EF9098();
    v65 = v64;
    sub_267B9F98C(v34, &qword_280229430, &qword_267EFD2C0);
    v66 = sub_267BA33E8(v63, v65, &v121);

    *(v59 + 14) = v66;
    _os_log_impl(&dword_267B93000, v54, v55, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v59, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  else
  {

    sub_267B9F98C(v34, &qword_280229430, &qword_267EFD2C0);
  }

  v67 = v109;
  v68 = v94;
  v93 = v52;
  if (v52 && (sub_267EF6F98(), v69 = sub_267EF37B8(), v71 = v70, , v71))
  {
    v109 = v69;
  }

  else
  {

    v109 = 0;
  }

  v116 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  sub_267EF9098();
  __swift_project_boxed_opaque_existential_0(&v118, *(&v119 + 1));
  OUTLINED_FUNCTION_53_0();
  sub_267EF3B68();
  sub_267C2FB6C(v113, v112, &qword_280229428, &unk_267F00E50);
  sub_267C2FB6C(v111, v68, &qword_280229430, &qword_267EFD2C0);
  v72 = v91;
  if (__swift_getEnumTagSinglePayload(v68, 1, v91) == 1)
  {
    sub_267B9F98C(v68, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v72 - 8) + 8))(v68, v72);
  }

  sub_267EF6B28();
  (*(v96 + 104))(v99, *MEMORY[0x277D56148], v98);
  (*(v100 + 104))(v97, *MEMORY[0x277D560D0], v101);
  v73 = v102;
  sub_267EF6AF8();

  sub_267B9F98C(v113, &qword_280229428, &unk_267F00E50);
  sub_267B9F98C(v111, &qword_280229430, &qword_267EFD2C0);
  __swift_destroy_boxed_opaque_existential_0(&v118);
  sub_267EF69F8();

  sub_267EF69B8();
  v74 = __swift_project_boxed_opaque_existential_0(v95, v95[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B00, &unk_267EFEF90);
  v75 = v110;
  v76 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_267EFC020;
  (*(v75 + 16))(v77 + v76, v67, v115);
  v78 = v108;
  sub_267EF6888();
  if (v78)
  {
    v79 = v103;
  }

  else
  {
    OUTLINED_FUNCTION_53_0();

    *(&v119 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
    *&v118 = v74;
    v79 = v103;
    sub_267ECE290();
    sub_267B9F98C(&v118, &qword_28022AEF0, &qword_267EFCDE0);
    v120 = 0;
    v118 = 0u;
    v119 = 0u;

    sub_267C3911C(v79, 1);
    sub_267C3A088();

    sub_267B9F98C(&v118, &qword_280229508, &unk_267EFD960);
    v80 = v79;
    v81 = sub_267C7A584();
    v83 = v82;

    sub_267CE29B0(23, v81, v83);
  }

  (*(v75 + 8))(v67, v115);
  (*(v104 + 8))(v73, v105);
  return v79;
}

id sub_267CE28B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_267EF97C8();
  sub_267E81CAC(v5, a2, a3);
  v12 = 0;
  memset(v11, 0, sizeof(v11));

  sub_267C3911C(v5, 1);
  sub_267C3A088();

  sub_267B9F98C(v11, &qword_280229508, &unk_267EFD960);
  v6 = v5;
  v7 = sub_267C7A584();
  v9 = v8;

  sub_267CE29B0(18, v7, v9);

  return v6;
}

uint64_t sub_267CE29B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267B9AFEC(v3 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender, v10);
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v8)
  {
    sub_267EF3B18();
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v3;

    sub_267EF3B08();
    sub_267EF3848();

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267CE2AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_267EF7C38();

  sub_267EF7C08();
  sub_267EF3AD8();
  v5 = *(*(*(a4 + 56) + 136) + 16);
  return sub_267EF3AB8();
}

uint64_t sub_267CE2B94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_267C2FB6C(a1, &v18 - v8, &unk_28022BBE0, qword_267EFD030);
  v10 = type metadata accessor for DirectInvocationUseCases(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v11 = OUTLINED_FUNCTION_66();
    sub_267C2FB6C(v11, v12, v13, v14);
    OUTLINED_FUNCTION_26_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      v16 = 133;
LABEL_6:
      sub_267CCEDF4(v6);
      sub_267B9F98C(v9, &unk_28022BBE0, qword_267EFD030);
      return v16;
    }

    if (EnumCaseMultiPayload == 12)
    {
      v16 = 134;
      goto LABEL_6;
    }

    sub_267CCEDF4(v6);
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267CE2D28()
{
  OUTLINED_FUNCTION_12();
  v1[45] = v2;
  v1[46] = v0;
  v1[44] = v3;
  v4 = sub_267EF7008();
  v1[47] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[48] = v5;
  v1[49] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CE2DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v61 = v16;
  v17 = *(v16 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v18 = sub_267EF7068();
  v18(&v60, v17);
  v21 = *(v16 + 352);

  v22 = v60;
  *(v16 + 400) = v60;
  sub_267E57DFC(v21, (v16 + 56));
  if (*(v16 + 80))
  {
    v24 = *(v16 + 360);
    v23 = *(v16 + 368);
    sub_267BE58F4((v16 + 56), v16 + 16);
    OUTLINED_FUNCTION_38_10();
    v25 = OUTLINED_FUNCTION_7_1();
    v27 = v26(v25);
    v28 = (v23 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_appName);
    *v28 = v27;
    v28[1] = v29;

    if (v24)
    {
      v30 = *(v16 + 360);
      if ([v22 outgoingMessageType])
      {
      }

      else
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v42 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v42, qword_280240FB0);
        v43 = sub_267EF89F8();
        v44 = sub_267EF95D8();
        v45 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v47);
          OUTLINED_FUNCTION_21_1(&dword_267B93000, v48, v44, "#SendMessageRCHFlowStrategy carrying over outgoing message type from current intent");
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        v49 = [v30 outgoingMessageType];
        *(v16 + 336) = MEMORY[0x277D83B88];
        *(v16 + 312) = v49;
        sub_267ECE290();

        sub_267B9F98C(v16 + 312, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    v50 = *(v16 + 368);
    __swift_project_boxed_opaque_existential_0((v50 + 16), *(v50 + 40));
    v51 = OUTLINED_FUNCTION_44_0();
    v52(v51);
    __swift_project_boxed_opaque_existential_0((v50 + 16), *(v50 + 40));
    v53 = OUTLINED_FUNCTION_44_0();
    v54(v53);
    __swift_project_boxed_opaque_existential_0((v16 + 136), *(v16 + 160));
    OUTLINED_FUNCTION_44_0();
    v55 = sub_267EF3C28();
    __swift_project_boxed_opaque_existential_0((v50 + 16), *(v50 + 40));
    v56 = OUTLINED_FUNCTION_12_0();
    v57(v56);
    __swift_project_boxed_opaque_existential_0((v16 + 176), *(v16 + 200));
    OUTLINED_FUNCTION_12_0();
    sub_267EF3B78();
    v58 = swift_task_alloc();
    *(v16 + 408) = v58;
    *v58 = v16;
    v58[1] = sub_267CE3250;
    v59 = *(v16 + 392);

    return sub_267E0BF50(v16 + 16, v22, v16 + 96, v55 & 1, v59);
  }

  else
  {
    sub_267B9F98C(v16 + 56, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v31 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    sub_267EF95E8();
    v33 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_32();
      *v35 = 0;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v36, v37, v38, v39, v35, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v40 = sub_267C266B0();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v40);
    *v41 = 0xD00000000000001ALL;
    v41[1] = 0x8000000267F15A60;
    swift_willThrow();

    OUTLINED_FUNCTION_17();

    return v19();
  }
}

uint64_t sub_267CE3250()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[52] = v0;

  (*(v3[48] + 8))(v3[49], v3[47]);
  __swift_destroy_boxed_opaque_existential_0(v3 + 12);
  if (v0)
  {
    v7 = sub_267CE389C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 22);
    __swift_destroy_boxed_opaque_existential_0(v3 + 17);
    v7 = sub_267CE33A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267CE33A0()
{
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  v4 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_32();
    *v6 = 0;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v7, v8, v9, v10, v6, 2u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  OUTLINED_FUNCTION_38_10();
  v11 = OUTLINED_FUNCTION_7_1();
  if (v12(v11))
  {
    OUTLINED_FUNCTION_38_10();
    v13 = OUTLINED_FUNCTION_7_1();
    v14(v13);
    if (v15)
    {

      OUTLINED_FUNCTION_38_10();
      v16 = OUTLINED_FUNCTION_7_1();
      v18 = v17(v16);
      if (!v19)
      {
        goto LABEL_19;
      }

      if (v18 == 0xD000000000000013 && v19 == 0x8000000267F10280)
      {
      }

      else
      {
        v21 = sub_267EF9EA8();

        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    __swift_project_boxed_opaque_existential_0((*(v0 + 368) + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor), *(*(v0 + 368) + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor + 24));
    if (sub_267C106F0())
    {
      v22 = sub_267EF89F8();
      v23 = sub_267EF95D8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v24);
        _os_log_impl(&dword_267B93000, v22, v23, "#SendMessageRCHFlowStrategy request is to contact an emergency service while Stewie is active, overriding conversationIdentifier and recipients", v1, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v25 = sub_267EF9028();
      *(v0 + 240) = MEMORY[0x277D837D0];
      *(v0 + 216) = v25;
      *(v0 + 224) = v26;
      sub_267ECE290();
      sub_267B9F98C(v0 + 216, &qword_28022AEF0, &qword_267EFCDE0);
      *(v0 + 248) = 0u;
      *(v0 + 264) = 0u;
      sub_267ECE290();
      v27 = OUTLINED_FUNCTION_64_0();
      sub_267B9F98C(v27, v28, &qword_267EFCDE0);
      *(v0 + 280) = 0u;
      *(v0 + 296) = 0u;
      sub_267ECE290();
      v29 = OUTLINED_FUNCTION_3();
      sub_267B9F98C(v29, v30, &qword_267EFCDE0);
    }
  }

LABEL_19:
  v31 = *(v0 + 360);
  if (v31)
  {
    v32 = *(v0 + 400);
    v33 = v31;
    v34 = sub_267CE53A4(v33, v32, (v0 + 16));

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    OUTLINED_FUNCTION_4_3();

    return v35(v34);
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 424) = v37;
    *v37 = v0;
    v37[1] = sub_267CE3738;
    OUTLINED_FUNCTION_66_6(*(v0 + 400));

    return sub_267CE3A48();
  }
}

uint64_t sub_267CE3738()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CE3824()
{
  OUTLINED_FUNCTION_12();

  v1 = *(v0 + 432);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_4_3();

  return v2(v1);
}

uint64_t sub_267CE389C()
{
  v22 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[52];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = OUTLINED_FUNCTION_54();
  v4 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v5 = v0[52];
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_64_2();
    v21 = v6;
    *v1 = 136315138;
    v0[43] = v5;
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v8 = sub_267EF9098();
    v10 = sub_267BA33E8(v8, v9, &v21);

    *(v1 + 1) = v10;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0](v16);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0](v17);
  }

  v18 = v0[50];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267CE3A48()
{
  OUTLINED_FUNCTION_12();
  v1[52] = v2;
  v1[53] = v0;
  v1[51] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v4);
  v1[54] = OUTLINED_FUNCTION_50();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v5 = sub_267EF2BA8();
  v1[57] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[58] = v6;
  v1[59] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v7);
  v1[60] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF2E38();
  v1[61] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[62] = v9;
  v1[63] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF7008();
  v1[64] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[65] = v11;
  v1[66] = OUTLINED_FUNCTION_50();
  v1[67] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267CE3C04()
{
  v179 = v0;
  if (![*(v0 + 408) outgoingMessageType])
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v1 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v1, qword_280240FB0);
    v2 = sub_267EF89F8();
    v3 = sub_267EF95D8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v4);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v2, v3, "#SendMessageRCHFlowStrategy outgoingMessageType is unknown, defaulting to text");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    *(v0 + 400) = MEMORY[0x277D83B88];
    *(v0 + 376) = 1;
    sub_267ECE290();
    sub_267B9F98C(v0 + 376, &qword_28022AEF0, &qword_267EFCDE0);
  }

  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v9 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]);
  v10 = OUTLINED_FUNCTION_12_0();
  v11(v10);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_12_0();
  sub_267EF3B78();
  (*(v7 + 104))(v6, *MEMORY[0x277D61C48], v8);
  v12 = sub_267C28F38(v5, v6);
  v13 = *(v7 + 8);
  v13(v6, v8);
  v14 = OUTLINED_FUNCTION_26_0();
  (v13)(v14);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v12 & 1) != 0 && (sub_267EF96D8())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v15 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v15, qword_280240FB0);
    v16 = sub_267EF89F8();
    v17 = sub_267EF95D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v18);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v16, v17, "#SendMessageRCHFlowStrategy content from Type to Siri, hiding Siri attribution");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    sub_267EF96B8();
  }

  sub_267EF6FF8();
  if (!sub_267EF6FC8())
  {
    goto LABEL_26;
  }

  v19 = sub_267EF6FA8();

  v20 = sub_267EF86A8();
  if (v20)
  {
    v21 = v20;
    v22 = sub_267EF8688();
    if (v22 != 2 && (v22 & 1) != 0)
    {
      v24 = *(v0 + 496);
      v23 = *(v0 + 504);
      v25 = *(v0 + 488);
      v26 = *(v0 + 416);
      v174 = v9;
      __swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]);
      OUTLINED_FUNCTION_70_5();
      v27 = OUTLINED_FUNCTION_8_22();
      v28(v27);
      v29 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_0((v0 + 176), v29);
      OUTLINED_FUNCTION_8_22();
      sub_267EF3B68();
      v30 = [objc_opt_self() sharedPreferences];
      v31 = OUTLINED_FUNCTION_7_1();
      sub_267CE78A0(v31, v32, v23, v19, 0);
      OUTLINED_FUNCTION_72_4();

      (*(v24 + 8))(v23, v25);
      __swift_destroy_boxed_opaque_existential_0((v0 + 176));
      if (v26)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v33 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v33, qword_280240FB0);

        v34 = sub_267EF89F8();
        v35 = sub_267EF95D8();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = OUTLINED_FUNCTION_48();
          v37 = OUTLINED_FUNCTION_52();
          v178 = v37;
          *v36 = 136642819;
          *(v36 + 4) = sub_267BA33E8(v29, v26, &v178);
          OUTLINED_FUNCTION_41_8();
          _os_log_impl(v38, v39, v40, v41, v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        v9 = v174;
        *(v0 + 368) = MEMORY[0x277D837D0];
        *(v0 + 344) = v29;
        *(v0 + 352) = v26;
        sub_267ECE290();

        sub_267B9F98C(v0 + 344, &qword_28022AEF0, &qword_267EFCDE0);
      }

      else
      {
      }

      goto LABEL_26;
    }
  }

LABEL_26:
  v42 = *(*(v0 + 424) + 56);
  v43 = *(v42 + 104);
  if (!v43)
  {
    goto LABEL_79;
  }

  v44 = sub_267BAF0DC(*(v42 + 104));
  if (!v44)
  {
    goto LABEL_79;
  }

  v45 = v44;
  v173 = v42;
  v46 = *(v0 + 416);
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_0(v46, v47);
  v49 = *(v48 + 368);

  v171 = v49(v47, v48);
  v172 = v50;
  sub_267BBD0EC(0, (v43 & 0xC000000000000001) == 0, v43);
  if ((v43 & 0xC000000000000001) != 0)
  {
LABEL_116:
    v51 = MEMORY[0x26D609870](0, v43);
  }

  else
  {
    v51 = *(v43 + 32);
  }

  v52 = v51;
  v53 = sub_267D140C0();
  v55 = v54;

  v175 = v9;
  if (v55)
  {
    v56 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v56 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v57 = *(v0 + 408);

      sub_267ED9A2C(v57);
      if (v58)
      {
        OUTLINED_FUNCTION_72_4();
        v59 = *(v0 + 480);
        v176 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]);
        OUTLINED_FUNCTION_70_5();
        v60 = OUTLINED_FUNCTION_109();
        v61(v60);
        __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        sub_267EF3B68();
        __swift_storeEnumTagSinglePayload(v59, 0, 1, v176);
        OUTLINED_FUNCTION_47_8();
        v53 = sub_267D5E5A0(v62, v63, v64, v65, v48);
        v67 = v66;

        sub_267B9F98C(v59, &unk_28022AF10, &unk_267F001E0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 136));
        v55 = v67;
      }

      v42 = v173;
      *(v0 + 304) = MEMORY[0x277D837D0];
      *(v0 + 280) = v53;
      *(v0 + 288) = v55;
      sub_267ECE290();
      sub_267B9F98C(v0 + 280, &qword_28022AEF0, &qword_267EFCDE0);
      if (sub_267BAF0DC(v43) == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A980, &qword_267F02638);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_267EFC020;
        v69 = sub_267BF6698();

        *(v68 + 32) = v69;
        *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A988, &qword_267F02640);
        *(v0 + 312) = v68;
        sub_267ECE290();
        sub_267B9F98C(v0 + 312, &qword_28022AEF0, &qword_267EFCDE0);
      }

      else
      {
      }

      *(v173 + 104) = 0;

      goto LABEL_79;
    }
  }

  v70 = 0;
  v9 = &unk_267EFDCC0;
  while (1)
  {
    if (v45 == v70)
    {
      v79 = *(v0 + 456);

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
      v9 = v175;
      goto LABEL_53;
    }

    if ((v43 & 0xC000000000000001) != 0)
    {
      v71 = OUTLINED_FUNCTION_66();
      v72 = MEMORY[0x26D609870](v71);
    }

    else
    {
      if (v70 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_115;
      }

      v72 = *(v43 + 8 * v70 + 32);
    }

    v73 = v72;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v74 = [v72 sharedLink];
    v48 = *(v0 + 456);
    v75 = *(v0 + 440);
    if (v74)
    {
      break;
    }

    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v48);
    sub_267B9F98C(v75, &qword_280229E20, &unk_267EFDCC0);
    ++v70;
  }

  v83 = v74;

  sub_267EF2B48();

  v84 = 1;
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v48);
  sub_267B9F98C(v75, &qword_280229E20, &unk_267EFDCC0);
  v85 = [v73 sharedLink];

  if (v85)
  {
    sub_267EF2B48();

    v84 = 0;
  }

  v9 = v175;
  v87 = *(v0 + 448);
  v86 = *(v0 + 456);
  v88 = *(v0 + 432);
  __swift_storeEnumTagSinglePayload(v88, v84, 1, v86);
  sub_267C26704(v88, v87);
  if (__swift_getEnumTagSinglePayload(v87, 1, v86) == 1)
  {

LABEL_53:
    sub_267B9F98C(*(v0 + 448), &qword_280229E20, &unk_267EFDCC0);
LABEL_71:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v111 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v111, qword_280240FB0);
    v112 = sub_267EF89F8();
    sub_267EF95D8();
    v113 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v115);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v116, v117, v118, v119, v120, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v121 = *(v42 + 104);
    if (v121)
    {
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
    }

    else
    {
      v122 = 0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0;
    }

    *(v0 + 216) = v121;
    *(v0 + 240) = v122;

    sub_267ECE290();
    sub_267B9F98C(v0 + 216, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_79;
  }

  (*(*(v0 + 464) + 32))(*(v0 + 472), *(v0 + 448), *(v0 + 456));
  if (!v172)
  {
    goto LABEL_70;
  }

  if (v171 == 0xD000000000000013 && v172 == 0x8000000267F10280)
  {

    goto LABEL_70;
  }

  v90 = sub_267EF9EA8();

  if (v90)
  {
LABEL_70:
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    goto LABEL_71;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v91 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v91, qword_280240FB0);
  v92 = sub_267EF89F8();
  sub_267EF95D8();
  v93 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v95);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v96, v97, v98, v99, v100, 2u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v101 = *(v0 + 408);

  v102 = sub_267ED9A2C(v101);
  if (v103)
  {
    v88 = v102;
    v104 = v103;
    v105 = *(v0 + 480);
    v45 = *(v0 + 488);
    v106 = sub_267EF2AC8();
    v108 = v107;
    v109 = v175[5];
    v110 = v175[6];
    __swift_project_boxed_opaque_existential_0(v175 + 2, v109);
    (*(v110 + 8))(v109, v110);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    v9 = v175;
    sub_267EF3B68();
    __swift_storeEnumTagSinglePayload(v105, 0, 1, v45);
    sub_267D5E5A0(v106, v108, v105, v88, v104);
    OUTLINED_FUNCTION_72_4();

    sub_267B9F98C(v105, &unk_28022AF10, &unk_267F001E0);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    sub_267EF2AC8();
    OUTLINED_FUNCTION_72_4();
  }

  *(v0 + 272) = MEMORY[0x277D837D0];
  *(v0 + 248) = v45;
  *(v0 + 256) = v88;
  sub_267ECE290();
  v169 = OUTLINED_FUNCTION_26_0();
  v170(v169);
  sub_267B9F98C(v0 + 248, &qword_28022AEF0, &qword_267EFCDE0);
  v42 = v173;
  *(v173 + 104) = 0;

  *(*(v173 + 136) + 32) = 1;
LABEL_79:
  v123 = *(v0 + 408);
  v124 = *(v42 + 200);
  *(v42 + 200) = v123;
  v125 = v123;

  v127 = *(v42 + 200);
  if (v127)
  {
    v126 = sub_267D99838(v127);
    if (v128)
    {

      LOBYTE(v127) = 1;
    }

    else
    {
      LOBYTE(v127) = 0;
    }
  }

  v129 = *(v0 + 416);
  *(v42 + 209) = v127;
  *(v42 + 264) = sub_267D2904C(v126);
  *(v42 + 272) = v130;

  *(v42 + 88) = sub_267D29108(v131);

  v132 = OUTLINED_FUNCTION_26_0();
  __swift_project_boxed_opaque_existential_0(v132, v133);
  v134 = OUTLINED_FUNCTION_7_1();
  if (v135(v134))
  {
    goto LABEL_84;
  }

  __swift_project_boxed_opaque_existential_0(*(v0 + 416), *(v129 + 24));
  v139 = OUTLINED_FUNCTION_7_1();
  if ((v140(v139) & 1) == 0)
  {
    goto LABEL_102;
  }

  __swift_project_boxed_opaque_existential_0(*(v0 + 416), *(v129 + 24));
  v141 = OUTLINED_FUNCTION_7_1();
  v143 = v142(v141);
  if (v143 == 37)
  {
LABEL_90:
    v145 = *(v129 + 24);
    v144 = *(v129 + 32);
    __swift_project_boxed_opaque_existential_0(*(v0 + 416), v145);
    v146 = OUTLINED_FUNCTION_54();
    v148 = v147(v146, v144);
    if (v148 == 37)
    {
      goto LABEL_102;
    }

    sub_267D6C0D4(v148);
    if (v150 != 2037277037 || v149 != 0xE400000000000000)
    {
      v152 = sub_267EF9EA8();

      if ((v152 & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_84;
    }

    goto LABEL_111;
  }

  sub_267D6C0D4(v143);
  if (v166 != 6647407 || v165 != 0xE300000000000000)
  {
    v168 = sub_267EF9EA8();

    if (v168)
    {
      goto LABEL_84;
    }

    goto LABEL_90;
  }

LABEL_111:

LABEL_84:
  v136 = sub_267BCEA0C(*(v0 + 408));
  if (v136)
  {
    v137 = sub_267BAF0DC(v136);

    if (v137)
    {
      goto LABEL_102;
    }
  }

  v138 = [*(v0 + 408) speakableGroupName];
  if (v138)
  {

    goto LABEL_102;
  }

  v153 = sub_267D29EC0(*(v0 + 408));
  v155 = sub_267DEAC8C(v153, v154);

  if (!v155 || (__swift_project_boxed_opaque_existential_0(v9 + 2, v9[5]), v156 = OUTLINED_FUNCTION_26_0(), v157(v156), __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80)), OUTLINED_FUNCTION_66(), v158 = sub_267BCF0D8(), __swift_destroy_boxed_opaque_existential_0((v0 + 56)), (v158 & 1) == 0))
  {
LABEL_102:
    v162 = *(v0 + 408);
    sub_267CE5F0C(v162);
    v177 = *(v0 + 408);
    v163 = v162;

    OUTLINED_FUNCTION_4_3();

    return v164(v177);
  }

  v159 = swift_task_alloc();
  *(v0 + 544) = v159;
  *v159 = v0;
  v159[1] = sub_267CE4C7C;
  v160 = OUTLINED_FUNCTION_66_6(*(v0 + 408));

  return sub_267CE4E70(v160);
}

uint64_t sub_267CE4C7C(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_267CE4E70(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CE4E84()
{
  sub_267CE77F0(v0[17] + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver, (v0 + 2));
  v1 = swift_allocObject();
  v0[18] = v1;
  memcpy((v1 + 16), v0 + 2, 0x50uLL);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = sub_267CE784C;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_267CE4FA8;

  return sub_267C8FFD8(sub_267CE7854, v2);
}

uint64_t sub_267CE4FA8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v7 + 168) = v5;
  *(v7 + 176) = v6;

  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267CE50C8()
{
  v1 = v0[22];
  if (v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);

    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_48();
      v20 = OUTLINED_FUNCTION_52();
      *v5 = 136315138;
      v6 = OUTLINED_FUNCTION_64_0();
      *(v5 + 4) = sub_267BA33E8(v6, v7, v8);
      OUTLINED_FUNCTION_45();
      _os_log_impl(v9, v10, v11, v12, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v13 = v0[21];
    v0[15] = MEMORY[0x277D837D0];
    v0[12] = v13;
    v0[13] = v1;
    sub_267ECE290();
    sub_267B9F98C((v0 + 12), &qword_28022AEF0, &qword_267EFCDE0);
  }

  v14 = v0[16];
  sub_267CE5F0C(v14);
  OUTLINED_FUNCTION_17();
  v19 = v15;
  v16 = v14;
  v17 = v0[16];

  return v19(v17);
}

uint64_t sub_267CE5274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267CE77F0(a3, v7);
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  memcpy(v5 + 4, v7, 0x50uLL);

  sub_267E7C0CC(sub_267CE7894, v5);
}

uint64_t sub_267CE5310(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_267CE785C, v6);
}

void *sub_267CE53A4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v170 = a2;
  v7 = sub_267EF7008();
  OUTLINED_FUNCTION_58();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_60();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v168 - v15;
  v169 = a1;
  v17 = sub_267EF97C8();
  v19 = v4[5];
  v18 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v19);
  (*(v18 + 8))(v171, v19, v18);
  __swift_project_boxed_opaque_existential_0(v171, v171[3]);
  sub_267EF3B78();
  (*(v9 + 104))(v13, *MEMORY[0x277D61C58], v7);
  LOBYTE(a1) = sub_267C28F38(v16, v13);
  v20 = *(v9 + 8);
  v20(v13, v7);
  v20(v16, v7);
  __swift_destroy_boxed_opaque_existential_0(v171);
  if (a1)
  {
    v21 = a3[3];
    v22 = a3[4];
    __swift_project_boxed_opaque_existential_0(a3, v21);
    v23 = (*(v22 + 368))(v21, v22);
    sub_267E80A08(v170, v17, v23, v24, 1);

    *(v4[7] + 40) = 0;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v25 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    sub_267EF95D8();
    v27 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      *v29 = 0;
      OUTLINED_FUNCTION_45();
      _os_log_impl(v30, v31, v32, v33, v29, 2u);
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    return v17;
  }

  v34 = v17;
  v35 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v35, v36);
  v37 = OUTLINED_FUNCTION_12_0();
  v39 = v38(v37);
  v40 = *(v39 + 16);
  v41 = v40 == 0;
  if (v40)
  {
    sub_267E819A0(v39, v17);

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v42 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v42, qword_280240FB0);
    v43 = sub_267EF89F8();
    v44 = sub_267EF95D8();
    v45 = OUTLINED_FUNCTION_13_0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_31_5(v47);
      OUTLINED_FUNCTION_21_1(&dword_267B93000, v48, v44, "#SendMessageRCHFlowStrategy remove request");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }
  }

  else
  {
  }

  v49 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v49, v50);
  v51 = OUTLINED_FUNCTION_17_2();
  v53 = v52(v51);
  v168 = v4;
  if (v53 & 1) != 0 || (v54 = OUTLINED_FUNCTION_14_1(), __swift_project_boxed_opaque_existential_0(v54, v55), v56 = OUTLINED_FUNCTION_17_2(), (v57(v56)) || (v108 = OUTLINED_FUNCTION_14_1(), __swift_project_boxed_opaque_existential_0(v108, v109), v110 = OUTLINED_FUNCTION_17_2(), (v111(v110)))
  {
    v58 = 0;
  }

  else
  {
    v112 = v170;
    if ([v170 outgoingMessageType])
    {
      v113 = [v112 outgoingMessageType];
      v58 = v113 == [v169 outgoingMessageType];
    }

    else
    {
      v58 = 1;
    }

    v17 = v34;
  }

  OUTLINED_FUNCTION_11_23();
  v59 = OUTLINED_FUNCTION_17_2();
  if ((v60(v59) & 1) == 0)
  {
    OUTLINED_FUNCTION_11_23();
    v85 = OUTLINED_FUNCTION_17_2();
    if (v86(v85) & 1) == 0 || (OUTLINED_FUNCTION_11_23(), v87 = OUTLINED_FUNCTION_17_2(), ((v88(v87) | v58)))
    {
      v89 = OUTLINED_FUNCTION_14_1();
      __swift_project_boxed_opaque_existential_0(v89, v90);
      v91 = OUTLINED_FUNCTION_12_0();
      if (v92(v91) & 1) != 0 || (v114 = OUTLINED_FUNCTION_14_1(), __swift_project_boxed_opaque_existential_0(v114, v115), v116 = OUTLINED_FUNCTION_12_0(), (v117(v116)) && (v118 = OUTLINED_FUNCTION_14_1(), __swift_project_boxed_opaque_existential_0(v118, v119), v120 = OUTLINED_FUNCTION_12_0(), (v121(v120)))
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v93 = sub_267EF8A08();
        __swift_project_value_buffer(v93, qword_280240FB0);
        v94 = sub_267EF89F8();
        v95 = sub_267EF95D8();
        v96 = OUTLINED_FUNCTION_13_0();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v98);
          OUTLINED_FUNCTION_21_1(&dword_267B93000, v99, v95, "#SendMessageRCHFlowStrategy append request");
          OUTLINED_FUNCTION_11_19();
          MEMORY[0x26D60A7B0]();
        }

        OUTLINED_FUNCTION_11_23();
        v100 = OUTLINED_FUNCTION_17_2();
        if (v101(v100))
        {
          OUTLINED_FUNCTION_11_23();
          v102 = OUTLINED_FUNCTION_17_2();
          if (v103(v102))
          {
            goto LABEL_63;
          }
        }

        v104 = a3[3];
        v105 = a3[4];
        __swift_project_boxed_opaque_existential_0(a3, v104);
        v106 = sub_267E58398(v104, v105);
        if (v106)
        {
          v107 = v106;
          sub_267EC4E04();
          OUTLINED_FUNCTION_54();
        }

        else
        {
          v107 = MEMORY[0x277D84F90];
        }

        v147 = *(v107 + 16);

        if (v147)
        {
LABEL_63:
          v148 = sub_267EF89F8();
          v149 = sub_267EF95D8();
          v150 = OUTLINED_FUNCTION_13_0();
          if (os_log_type_enabled(v150, v151))
          {
            v152 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v152);
            OUTLINED_FUNCTION_21_1(&dword_267B93000, v153, v149, "#SendMessageRCHFlowStrategy 'no send' request, clearing existing recipients");
            OUTLINED_FUNCTION_11_19();
            MEMORY[0x26D60A7B0]();
          }

          OUTLINED_FUNCTION_59_8();
          sub_267B9F98C(v171, &qword_28022AEF0, &qword_267EFCDE0);
        }

        v122 = v168;
        sub_267E81224(v170, v17);
      }

      else
      {
        v122 = v168;
        if (!v40)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0_10();
            swift_once();
          }

          v123 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v123, qword_280240FB0);
          v124 = sub_267EF89F8();
          v125 = sub_267EF95C8();
          v126 = OUTLINED_FUNCTION_13_0();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v128);
            OUTLINED_FUNCTION_21_1(&dword_267B93000, v129, v125, "#SendMessageRCHFlowStrategy follow-up request without modifying the original intent");
            OUTLINED_FUNCTION_11_19();
            MEMORY[0x26D60A7B0]();
          }
        }
      }

      goto LABEL_67;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v61 = sub_267EF8A08();
  __swift_project_value_buffer(v61, qword_280240FB0);
  v62 = sub_267EF89F8();
  v63 = sub_267EF95D8();
  v64 = OUTLINED_FUNCTION_13_0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_31_5(v66);
    OUTLINED_FUNCTION_21_1(&dword_267B93000, v67, v63, "#SendMessageRCHFlowStrategy modify request");
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v68 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v68, v69);
  v70 = OUTLINED_FUNCTION_8_22();
  if (v71(v70) & 1) != 0 || (v72 = OUTLINED_FUNCTION_14_1(), __swift_project_boxed_opaque_existential_0(v72, v73), v74 = OUTLINED_FUNCTION_8_22(), (v75(v74)))
  {
    v76 = OUTLINED_FUNCTION_14_1();
    __swift_project_boxed_opaque_existential_0(v76, v77);
    v78 = OUTLINED_FUNCTION_8_22();
    v80 = v79(v78);
    if (v80 != 35)
    {
      sub_267D6C8B0(v80);
      if (v82 == 0x746361746E6F63 && v81 == 0xE700000000000000)
      {
      }

      else
      {
        v84 = sub_267EF9EA8();

        if ((v84 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      v130 = sub_267EF89F8();
      v131 = sub_267EF95D8();
      v132 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v134);
        OUTLINED_FUNCTION_21_1(&dword_267B93000, v135, v131, "#SendMessageRCHFlowStrategy modify contact request, clearing recipient and preserving content");
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      OUTLINED_FUNCTION_59_8();
      sub_267B9F98C(v171, &qword_28022AEF0, &qword_267EFCDE0);
      sub_267D291CC(0);
      v41 = 0;
    }
  }

LABEL_57:
  v122 = v168;
  v136 = OUTLINED_FUNCTION_14_1();
  __swift_project_boxed_opaque_existential_0(v136, v137);
  v138 = OUTLINED_FUNCTION_8_22();
  if (v139(v138))
  {
    v140 = OUTLINED_FUNCTION_14_1();
    __swift_project_boxed_opaque_existential_0(v140, v141);
    v142 = OUTLINED_FUNCTION_8_22();
    v144 = v143(v142);
    v146 = v145;
  }

  else
  {
    v144 = 0;
    v146 = 0;
  }

  sub_267E80A08(v170, v17, v144, v146, v41);

LABEL_67:
  v154 = sub_267BCEA0C(v17);
  if (v154)
  {

    v155 = v122[7];
    if (*(v155 + 88))
    {
      v156 = *(v155 + 88);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v156 = sub_267EF8F28();
    }

    v158 = sub_267D29108(v157);
    if (!v158)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v158 = sub_267EF8F28();
    }

    v159 = sub_267CDE30C(v158, v156, sub_267EDA984, sub_267CE7058);
    v154 = sub_267D291CC(v159);
  }

  v160 = v122[7];
  v160[33] = sub_267D2904C(v154);
  v160[34] = v161;

  v162 = sub_267CE60E4(v169, v17);
  v160[11] = sub_267D29108(v162);

  v164 = sub_267D28F5C(v163);
  v165 = sub_267D28F5C(v164);
  v166 = sub_267CDE30C(v165, v164, sub_267E19614, sub_267CE6DA4);
  sub_267D29264(v166);
  return v17;
}

uint64_t sub_267CE5F0C(void *a1)
{
  v3 = *(*(v1 + 56) + 136);
  sub_267B9AFEC(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService, v8);

  sub_267C3911C(a1, 1);
  sub_267C3A088();
  sub_267B9F98C(v8, &qword_280229508, &unk_267EFD960);
  sub_267EF3B18();
  v4 = [a1 typeName];
  sub_267EF9028();
  OUTLINED_FUNCTION_73_3();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;

  v6 = a1;
  v8[0] = 1;
  sub_267EF3B08();
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 24));
  OUTLINED_FUNCTION_53_0();
  sub_267EF3848();
}

uint64_t sub_267CE6084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267EF7C38();
  sub_267C7A584();
  sub_267EF7C08();
  sub_267EF3AD8();
  v4 = *(a3 + 16);
  return sub_267EF3AB8();
}

unint64_t sub_267CE60E4(void *a1, void *a2)
{
  v5 = [a1 outgoingMessageType];
  if (v5 != [a2 outgoingMessageType])
  {
    v6 = *(v2 + 56);
    v7 = sub_267BCEA0C(a1);
    v8 = sub_267EF4CF8();
    sub_267CE7418(7, v6, v7, v8, &off_2878D64C0);

    OUTLINED_FUNCTION_92_2();
    sub_267CE6314(v9, v10, v11);
  }

  v12 = sub_267ED9A2C(a1);
  v14 = v13;
  v15 = sub_267ED9A2C(a2);
  if (!v14)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v16)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v12 == v15 && v14 == v16)
  {

    goto LABEL_15;
  }

  v18 = sub_267EF9EA8();

  if ((v18 & 1) == 0)
  {
LABEL_13:
    v19 = *(v2 + 56);
    v20 = sub_267BCEA0C(a1);
    v21 = sub_267EF4CF8();
    sub_267CE7418(6, v19, v20, v21, &off_2878D64C0);

    OUTLINED_FUNCTION_92_2();
    sub_267CE6314(v22, v23, v24);
  }

LABEL_15:
  v25 = sub_267BCEA0C(a1);
  result = sub_267BCEA0C(a2);
  if (v25)
  {
    if (result)
    {
      v27 = sub_267DF0FF0(v25, result);

      if (v27)
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  else if (!result)
  {
    return result;
  }

LABEL_22:
  v28 = *(v2 + 56);
  v29 = sub_267BCEA0C(a1);
  v30 = sub_267EF4CF8();
  sub_267CE7418(5, v28, v29, v30, &off_2878D64C0);

  OUTLINED_FUNCTION_92_2();

  return sub_267CE6314(v31, v32, v33);
}

uint64_t sub_267CE6314(int a1, uint64_t a2, void *a3)
{
  v22 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A968, &unk_267F02610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_267EF3D78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  v13 = *(a2 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 24);
  v21 = v12[4];
  __swift_project_boxed_opaque_existential_0(v12, v13);
  sub_267EF3B18();
  (*(v9 + 104))(v11, *MEMORY[0x277D5BB80], v8);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  sub_267EF9028();

  v16 = *MEMORY[0x277D5B948];
  v17 = sub_267EF3858();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = v22;
  v19 = a3;
  sub_267EF3AE8();
  sub_267EF3848();
}

uint64_t sub_267CE658C(uint64_t a1, uint64_t a2, char a3)
{
  sub_267EF7C38();
  sub_267C7A584();
  sub_267EF7C08();
  sub_267EF3AD8();
  sub_267C7C28C(a3);
  return sub_267EF3AC8();
}

uint64_t sub_267CE65E8()
{
  sub_267B9EF80(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver);

  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor));
}

uint64_t sub_267CE66D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CE6778;

  return sub_267CDE89C();
}

uint64_t sub_267CE6778()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  OUTLINED_FUNCTION_4_3();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_267CE6864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_267CE6934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BBD07C;

  return (sub_267CB71B8)(a1, a2, a3);
}

uint64_t sub_267CE6A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_267CE6AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendMessageRCHFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267CE6BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return sub_267CE00DC(a1, a2, a3, a4);
}

uint64_t sub_267CE6D4C(uint64_t a1)
{
  result = sub_267CE855C(&qword_28022A960, type metadata accessor for SendMessageRCHFlowStrategy, &unk_267F025A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267CE6DA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v67 = a5;
  v7 = a1;
  sub_267EDB728();
  v8 = v60;
  v9 = v62;
  v10 = v63;
  v50 = v64;
  v51 = v59;
  v52 = v65;
  v44 = v61;
  v11 = (v61 + 64) >> 6;
  v46 = v7;

  v45 = a3;

  v48 = v11;
  v49 = v60;
  if (v63)
  {
    while (1)
    {
      v12 = v9;
LABEL_7:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v51 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v51 + 56) + 8 * v14);
      v56 = *v15;
      v57 = v16;
      v58 = v17;

      v50(&v53, &v56);

      v19 = v53;
      v18 = v54;
      v20 = v55;
      v21 = *v67;
      v29 = sub_267BA9948();
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A978, &unk_267F0AC90);
          sub_267EF9C78();
        }
      }

      else
      {
        sub_267CFA760(v32, a4 & 1, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
        v34 = sub_267BA9948();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_23;
        }

        v29 = v34;
      }

      v10 &= v10 - 1;
      v36 = *v67;
      if (v33)
      {
        v37 = *(v36[7] + 8 * v29);

        *(v36[7] + 8 * v29) = v37;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v38 = (v36[6] + 16 * v29);
        *v38 = v19;
        v38[1] = v18;
        *(v36[7] + 8 * v29) = v20;
        v39 = v36[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_22;
        }

        v36[2] = v41;
      }

      a4 = 1;
      v9 = v12;
      v11 = v48;
      v8 = v49;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_267C095D8(v51);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267CE7058(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v68 = a5;
  v7 = a1;
  sub_267EDB728();
  v8 = v61;
  v9 = v63;
  v10 = v64;
  v51 = v65;
  v52 = v60;
  v53 = v66;
  v45 = v62;
  v11 = (v62 + 64) >> 6;
  v47 = v7;

  v46 = a3;

  v49 = v11;
  v50 = v61;
  if (v64)
  {
    while (1)
    {
      v12 = v9;
LABEL_7:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v52 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v52 + 56) + 8 * v14);
      v57 = *v15;
      v58 = v16;
      v59 = v17;

      v51(&v54, &v57);

      v18 = v54;
      v19 = v55;
      v20 = v56;
      v21 = *v68;
      v29 = sub_267BA9948();
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A970, &unk_267F02620);
          sub_267EF9C78();
        }
      }

      else
      {
        sub_267CFA774(v32, a4 & 1, v23, v24, v25, v26, v27, v28, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
        v34 = sub_267BA9948();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_23;
        }

        v29 = v34;
      }

      v10 &= v10 - 1;
      v36 = *v68;
      if (v33)
      {
        v37 = *(v36[7] + 8 * v29);

        v38 = sub_267ECED10(v20, v37);

        *(v36[7] + 8 * v29) = v38;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v39 = (v36[6] + 16 * v29);
        *v39 = v18;
        v39[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v40 = v36[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_22;
        }

        v36[2] = v42;
      }

      a4 = 1;
      v9 = v12;
      v11 = v49;
      v8 = v50;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_267C095D8(v52);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267CE7314(uint64_t a1, void *a2)
{
  sub_267BA9F38(0, &qword_280229BA8, 0x277CEF4B0);
  v3 = sub_267EF92D8();
  v4 = [a2 formatSpeechTokensWithAutoPunctuation_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_267EF92F8();

  return v5;
}

uint64_t sub_267CE73B4(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

void sub_267CE7418(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = sub_267EF8E58();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267EF8EA8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &type metadata for Features;
  v27 = sub_267BAFCAC();
  LOBYTE(aBlock[0]) = 0;
  v16 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v16)
  {
    if (!AFIsCustomerInstall() || (sub_267D6350C(0.0, 1.0), v17 < 0.01))
    {
      if (qword_280228800 != -1)
      {
        swift_once();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = a3;
      *(v18 + 24) = a2;
      *(v18 + 32) = a1;
      v19 = v22;
      *(v18 + 40) = a4;
      *(v18 + 48) = v19;
      v27 = sub_267CE7768;
      v28 = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_267C16DE4;
      v26 = &block_descriptor_9;
      v20 = _Block_copy(aBlock);

      sub_267EF8E78();
      v24 = MEMORY[0x277D84F90];
      sub_267CE855C(&qword_280229180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229188, qword_267F0DFB0);
      sub_267CE7778();
      sub_267EF99C8();
      MEMORY[0x26D609320](0, v15, v11, v20);
      _Block_release(v20);
      (*(v23 + 8))(v11, v9);
      (*(v13 + 8))(v15, v12);
    }
  }
}

unint64_t sub_267CE7778()
{
  result = qword_280229190;
  if (!qword_280229190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229188, qword_267F0DFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229190);
  }

  return result;
}

uint64_t sub_267CE785C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

void *sub_267CE78A0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v105 = sub_267EF8A08();
  v101 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_267EF2E38();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a4 dictationAutoPunctuationSupportedLocales];
  v16 = sub_267EF94B8();

  v104 = a3;
  v107[0] = sub_267EF2D48();
  v107[1] = v17;
  sub_267EF9AE8();
  LOBYTE(v15) = sub_267EE9388(v108, v16);

  sub_267C965CC(v108);
  if ((v15 & 1) == 0)
  {
    if (qword_280228818 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

  if (([a4 dictationAutoPunctuationEnabled] & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v105, qword_280240FB0);
    v46 = sub_267EF89F8();
    v47 = sub_267EF95C8();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_36;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "#AutoPunctuationUtils user preference for auto-punctuation is disabled, not applying auto-punctuation";
    goto LABEL_35;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v105, qword_280240FB0);
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_267B93000, v19, v20, "#AutoPunctuationUtils getting messageContent AFSpeechTokens for auto-punctuation", v21, 2u);
    MEMORY[0x26D60A7B0](v21, -1, -1);
  }

  v11 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v11);
  v23 = v22[58](a1, v11, v22);
  if (!v23)
  {
    v46 = sub_267EF89F8();
    v47 = sub_267EF95D8();
    if (!os_log_type_enabled(v46, v47))
    {
LABEL_36:

      return 0;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "#AutoPunctuationUtils did not generate messageContentSpeechTokens, not applying auto-punctuation";
LABEL_35:
    _os_log_impl(&dword_267B93000, v46, v47, v49, v48, 2u);
    MEMORY[0x26D60A7B0](v48, -1, -1);
    goto LABEL_36;
  }

  v24 = v23;
  v25 = sub_267BAF0DC(v23);
  v26 = MEMORY[0x277D84F90];
  v100 = v18;
  v106 = v24;
  if (v25)
  {
    v14 = v25;
    v99 = a5;
    v108[0] = MEMORY[0x277D84F90];
    sub_267BC7934(0, v25 & ~(v25 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v26 = v108[0];
      v28 = v24 & 0xC000000000000001;
      v103 = v24 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_71;
        }

        if (v28)
        {
          v30 = MEMORY[0x26D609870](v27, v24);
        }

        else
        {
          if (v27 >= *(v103 + 16))
          {
            goto LABEL_72;
          }

          v30 = *(v24 + 8 * v27 + 32);
        }

        v31 = v30;
        result = sub_267CE73B4(v30);
        if (!v33)
        {
          break;
        }

        v11 = result;
        v34 = v33;

        v108[0] = v26;
        v36 = *(v26 + 16);
        v35 = *(v26 + 24);
        v12 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          sub_267BC7934((v35 > 1), v36 + 1, 1);
          v26 = v108[0];
        }

        *(v26 + 16) = v12;
        v37 = v26 + 16 * v36;
        *(v37 + 32) = v11;
        *(v37 + 40) = v34;
        ++v27;
        v24 = v106;
        if (v29 == v14)
        {
          a5 = v99;
          v18 = v100;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_29:

  v50 = sub_267EF89F8();
  v14 = sub_267EF95D8();

  if (os_log_type_enabled(v50, v14))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v108[0] = v52;
    *v51 = 136642819;
    v53 = MEMORY[0x26D608FD0](v26, MEMORY[0x277D837D0]);
    v55 = sub_267BA33E8(v53, v54, v108);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_267B93000, v50, v14, "#AutoPunctuationUtils pre-ITN messageContent token.text list is %{sensitive}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x26D60A7B0](v52, -1, -1);
    v56 = v51;
    v18 = v100;
    MEMORY[0x26D60A7B0](v56, -1, -1);
  }

  sub_267BA9F38(0, &qword_28022A998, 0x277CDCE88);
  v57 = sub_267EF2D48();
  v22 = sub_267CDE0EC(v57, v58, 3);
  if (a5)
  {
    v11 = a5;
    goto LABEL_40;
  }

  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v60)
  {
    v61 = result;
    v14 = v60;
    sub_267EF3838();
    v62 = v102;
    v101[2](v102, v18, v105);
    sub_267B9AFEC(v108, v107);
    type metadata accessor for MessagesSELFPerformanceLogger(0);
    swift_allocObject();

    MessagesSELFPerformanceLogger.init(domainExecutionType:taskType:osLogger:siriKitEventSender:)(102, v61, v14, v62, v107);
    v63 = [objc_allocWithZone(MEMORY[0x277CFE3D0]) initWithAssetConfig_];

    __swift_destroy_boxed_opaque_existential_0(v108);

    if (!v63)
    {

      v96 = sub_267EF89F8();
      v97 = sub_267EF95C8();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_267B93000, v96, v97, "#AutoPunctuationUtils could not create CESRFormatter, not applying auto-punctuation", v98, 2u);
        MEMORY[0x26D60A7B0](v98, -1, -1);
      }

      goto LABEL_67;
    }

    v11 = v63;
LABEL_40:
    v64 = a5;

    result = sub_267CE7314(v24, v11);
    if (!result)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v65 = result;
    v66 = sub_267BAF0DC(result);
    v102 = v11;
    v103 = v65;
    if (v66)
    {
      v67 = v66;
      v101 = v22;
      v108[0] = MEMORY[0x277D84F90];
      sub_267BC7934(0, v66 & ~(v66 >> 63), 0);
      if (v67 < 0)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v68 = 0;
      v12 = v108[0];
      v69 = v103;
      v104 = v103 & 0xFFFFFFFFFFFFFF8;
      v105 = v103 & 0xC000000000000001;
      v70 = v67;
      while (1)
      {
        v71 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        if (v105)
        {
          v72 = MEMORY[0x26D609870](v68, v69);
        }

        else
        {
          if (v68 >= *(v104 + 16))
          {
            goto LABEL_73;
          }

          v72 = *(v69 + 8 * v68 + 32);
        }

        v73 = v72;
        result = sub_267CE73B4(v72);
        if (!v74)
        {
          goto LABEL_79;
        }

        v75 = result;
        v76 = v74;

        v108[0] = v12;
        v14 = *(v12 + 16);
        v77 = *(v12 + 24);
        v11 = (v14 + 1);
        if (v14 >= v77 >> 1)
        {
          sub_267BC7934((v77 > 1), v14 + 1, 1);
          v69 = v103;
          v12 = v108[0];
        }

        *(v12 + 16) = v11;
        v78 = v12 + 16 * v14;
        *(v78 + 32) = v75;
        *(v78 + 40) = v76;
        ++v68;
        if (v71 == v70)
        {

          v22 = v101;
          goto LABEL_55;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
LABEL_22:
      __swift_project_value_buffer(v105, qword_280240FB0);
      (*(v12 + 16))(v14, v104, v11);
      v38 = sub_267EF89F8();
      v39 = sub_267EF95D8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v108[0] = v41;
        *v40 = 136315138;
        sub_267CE855C(&qword_28022A990, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
        v42 = sub_267EF9E58();
        v44 = v43;
        (*(v12 + 8))(v14, v11);
        v45 = sub_267BA33E8(v42, v44, v108);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_267B93000, v38, v39, "#AutoPunctuationUtils unsupported for %s, not applying auto-punctuation", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x26D60A7B0](v41, -1, -1);
        MEMORY[0x26D60A7B0](v40, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v14, v11);
      }

      return 0;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_55:

    v79 = sub_267EF89F8();
    v80 = sub_267EF95D8();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v108[0] = v82;
      *v81 = 136642819;
      v83 = MEMORY[0x26D608FD0](v12, MEMORY[0x277D837D0]);
      v85 = sub_267BA33E8(v83, v84, v108);

      *(v81 + 4) = v85;
      _os_log_impl(&dword_267B93000, v79, v80, "#AutoPunctuationUtils auto punctuated messageContent punctuatedTextList list is %{sensitive}s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x26D60A7B0](v82, -1, -1);
      MEMORY[0x26D60A7B0](v81, -1, -1);
    }

    v86 = sub_267DF11D4(v12, v26);

    if ((v86 & 1) == 0)
    {
      sub_267CDE168(v103);
      v11 = v90;
      v92 = v91;

      v108[0] = v11;
      v108[1] = v92;
      if (qword_2802287D0 == -1)
      {
LABEL_62:
        v93 = sub_267EF2728();
        __swift_project_value_buffer(v93, qword_280240EC0);
        sub_267BB5034();
        sub_267EF9908();
        v95 = v94;

        if ((v95 & 1) == 0)
        {
          return v11;
        }

        return 0;
      }

LABEL_77:
      swift_once();
      goto LABEL_62;
    }

    v87 = sub_267EF89F8();
    v88 = sub_267EF95D8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_267B93000, v87, v88, "#AutoPunctuationUtils punctuatedTextList == textList, no auto-punctuation was applied, ignoring", v89, 2u);
      MEMORY[0x26D60A7B0](v89, -1, -1);
    }

LABEL_67:
    return 0;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_267CE855C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267CE85E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CE8668()
{
  OUTLINED_FUNCTION_60_5();
  v15 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v4 = OUTLINED_FUNCTION_37_7(v3);
  *(v4 + 16) = xmmword_267EFC020;
  v5 = OUTLINED_FUNCTION_55_7(v4, 0x65707954706974);
  OUTLINED_FUNCTION_48_11(v5, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v7);
  if (v8)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_25(v11);
  OUTLINED_FUNCTION_16_14();

  return v13();
}

uint64_t sub_267CE87B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267CE8904()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CE8988()
{
  OUTLINED_FUNCTION_60_5();
  v15 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v4 = OUTLINED_FUNCTION_37_7(v3);
  v5 = OUTLINED_FUNCTION_4_8(v4, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v5, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v7);
  if (v8)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_25(v11);
  OUTLINED_FUNCTION_16_14();

  return v13();
}

uint64_t sub_267CE8AC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CE8B48()
{
  OUTLINED_FUNCTION_60_5();
  v15 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v4 = OUTLINED_FUNCTION_37_7(v3);
  v5 = OUTLINED_FUNCTION_4_8(v4, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v5, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v7);
  if (v8)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_25(v11);
  OUTLINED_FUNCTION_16_14();

  return v13();
}

uint64_t sub_267CE8C84()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CE8D08()
{
  OUTLINED_FUNCTION_60_5();
  v15 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v4 = OUTLINED_FUNCTION_37_7(v3);
  v5 = OUTLINED_FUNCTION_4_8(v4, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v5, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v7);
  if (v8)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_25(v11);
  OUTLINED_FUNCTION_16_14();

  return v13();
}

uint64_t sub_267CE8E44()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267CE8F68()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CE8FF0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_4_8(v3, xmmword_267EFC020);
  v4 = 0;
  if (v1)
  {
    v4 = sub_267EF77C8();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_22_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_30_2();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_267CE90F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267CE920C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CE9268()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9318()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE93C8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE94A0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9550()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9600()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE96B0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9760()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CE9810()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CE9894()
{
  OUTLINED_FUNCTION_60_5();
  v15 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v4 = OUTLINED_FUNCTION_37_7(v3);
  *(v4 + 16) = xmmword_267EFC020;
  v5 = OUTLINED_FUNCTION_55_7(v4, 0x73736572646461);
  OUTLINED_FUNCTION_48_11(v5, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v7);
  if (v8)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_25(v11);
  OUTLINED_FUNCTION_16_14();

  return v13();
}

uint64_t sub_267CE99E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_32_11(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  *(v0 + 64) = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_58_4(v10, v11, v12);
}

uint64_t sub_267CE9A5C()
{
  OUTLINED_FUNCTION_113();
  v25 = v4;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_53_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = swift_allocObject();
  *(v2 + 72) = v5;
  *(v5 + 32) = 0x747865547369;
  *(v5 + 40) = 0xE600000000000000;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v3;
  *(v5 + 16) = xmmword_267F02660;
  OUTLINED_FUNCTION_12_1();
  v7[9] = v6;
  v7[10] = 17;
  v7[11] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A580, &unk_267F00E90);
  *(v5 + 96) = v1;
  *(v5 + 120) = v9;
  *(v5 + 128) = 0x746E756F63;
  *(v5 + 136) = 0xE500000000000000;
  if (v0)
  {
    OUTLINED_FUNCTION_44_11();
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  else
  {
    v10 = MEMORY[0x277D839F8];
  }

  OUTLINED_FUNCTION_25_13(v10);
  *(v5 + 240) = v11;
  OUTLINED_FUNCTION_12_1();
  *(v5 + 264) = v6;
  *(v5 + 272) = 19;
  *(v5 + 280) = v12;
  if (v13)
  {
    OUTLINED_FUNCTION_44_11();
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
  }

  else
  {
    v14 = MEMORY[0x277D839F8];
  }

  v15 = OUTLINED_FUNCTION_38_11(v14);
  sub_267BB16A4(v15, v1, &unk_28022AE30, &qword_267EFC0B0);
  v16 = sub_267EF79B8();
  OUTLINED_FUNCTION_15_1(v16);
  v17 = *(v2 + 64);
  OUTLINED_FUNCTION_56_7();
  if (v18)
  {

    sub_267B9FF34(v17, &unk_28022AE30, &qword_267EFC0B0);
    *(v5 + 336) = 0u;
    *(v5 + 352) = 0u;
  }

  else
  {
    *(v5 + 360) = v0;
    __swift_allocate_boxed_opaque_existential_0((v5 + 336));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v19();
  }

  v20 = *(v2 + 101);
  *(v5 + 368) = 27;
  *(v5 + 376) = 0x8000000267F16170;
  *(v5 + 408) = v6;
  *(v5 + 384) = v20;
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 80) = v21;
  *v21 = v22;
  v21[1] = sub_267CE9CC4;
  OUTLINED_FUNCTION_21_10();

  return v23();
}

uint64_t sub_267CE9CC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267CE9DE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_32_11(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  *(v0 + 64) = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_58_4(v10, v11, v12);
}

uint64_t sub_267CE9E60()
{
  OUTLINED_FUNCTION_113();
  v28 = v4;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_53_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = swift_allocObject();
  *(v2 + 72) = v5;
  v6 = OUTLINED_FUNCTION_55_7(v5, 0x696A6F6D457369);
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v3;
  *(v6 + 16) = v8;
  OUTLINED_FUNCTION_12_1();
  v9[9] = v7;
  v9[10] = 19;
  v9[11] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A580, &unk_267F00E90);
  *(v5 + 96) = v1;
  OUTLINED_FUNCTION_12_1();
  *(v5 + 120) = v11;
  *(v5 + 128) = 28;
  *(v5 + 136) = v12;
  if (v0)
  {
    OUTLINED_FUNCTION_44_11();
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  else
  {
    v13 = MEMORY[0x277D839F8];
  }

  OUTLINED_FUNCTION_25_13(v13);
  *(v5 + 240) = v14;
  OUTLINED_FUNCTION_12_1();
  *(v5 + 264) = v7;
  *(v5 + 272) = 19;
  *(v5 + 280) = v15;
  if (v16)
  {
    OUTLINED_FUNCTION_44_11();
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
  }

  else
  {
    v17 = MEMORY[0x277D839F8];
  }

  v18 = OUTLINED_FUNCTION_38_11(v17);
  sub_267BB16A4(v18, v1, &unk_28022AE30, &qword_267EFC0B0);
  v19 = sub_267EF79B8();
  OUTLINED_FUNCTION_15_1(v19);
  v20 = *(v2 + 64);
  OUTLINED_FUNCTION_56_7();
  if (v21)
  {

    sub_267B9FF34(v20, &unk_28022AE30, &qword_267EFC0B0);
    *(v5 + 336) = 0u;
    *(v5 + 352) = 0u;
  }

  else
  {
    *(v5 + 360) = v0;
    __swift_allocate_boxed_opaque_existential_0((v5 + 336));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v22();
  }

  v23 = *(v2 + 101);
  *(v5 + 368) = 20;
  *(v5 + 376) = 0x8000000267F16100;
  *(v5 + 408) = v7;
  *(v5 + 384) = v23;
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 80) = v24;
  *v24 = v25;
  v24[1] = sub_267CEA0C4;
  OUTLINED_FUNCTION_21_10();

  return v26();
}

uint64_t sub_267CEA0C4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267CEA1E8()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CEA24C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 128) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267CEA30C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v0 + 104) = v2;
  *(v2 + 16) = xmmword_267EFCDC0;
  *(v2 + 32) = 1701869940;
  *(v2 + 40) = 0xE400000000000000;
  OUTLINED_FUNCTION_48_11(v2, v3, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v4) == 1)
  {
    sub_267B9FF34(*(v0 + 96), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v5();
  }

  v6 = *(v0 + 128);
  *(v2 + 80) = 0x746E756F63;
  *(v2 + 88) = 0xE500000000000000;
  if (v6)
  {
    OUTLINED_FUNCTION_44_11();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v8 = *(v0 + 32);
    v7 = MEMORY[0x277D839F8];
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 40);
  *(v2 + 96) = v8;
  *(v2 + 120) = v7;
  *(v2 + 128) = 0xD000000000000012;
  *(v2 + 136) = 0x8000000267F16020;
  sub_267BB16A4(v10, v9, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 88), &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 144));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v11();
  }

  v12 = *(v0 + 80);
  OUTLINED_FUNCTION_12_1();
  *(v2 + 176) = 0xD000000000000011;
  *(v2 + 184) = v13;
  sub_267BB16A4(v14, v12, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 80), &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
  }

  else
  {
    *(v2 + 216) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 192));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v15();
  }

  v16 = *(v0 + 72);
  OUTLINED_FUNCTION_12_1();
  *(v2 + 224) = 0xD000000000000015;
  *(v2 + 232) = v17;
  sub_267BB16A4(v18, v16, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 72), &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 240) = 0u;
    *(v2 + 256) = 0u;
  }

  else
  {
    *(v2 + 264) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 240));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v19();
  }

  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 112) = v20;
  *v20 = v21;
  v20[1] = sub_267CEA690;
  OUTLINED_FUNCTION_30_2();

  return v26(v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_267CEA690()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267CEA7E0()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CEA86C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CEA8F0()
{
  OUTLINED_FUNCTION_60_5();
  v15 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v4 = OUTLINED_FUNCTION_37_7(v3);
  v5 = OUTLINED_FUNCTION_51_7(v4, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v5, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v7);
  if (v8)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_25(v11);
  OUTLINED_FUNCTION_16_14();

  return v13();
}

uint64_t sub_267CEAA50()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_267EFC020;
  *(v3 + 32) = 0x6D754E656E6F6870;
  *(v3 + 40) = 0xEB00000000726562;
  v4 = 0;
  if (v1)
  {
    v4 = sub_267EF74E8();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_22_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_30_2();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_267CEAB70()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267CEAC8C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CEAD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *(v3 + 16) = xmmword_267EFC020;
  *(v3 + 32) = 0x7265646E6573;
  *(v3 + 40) = 0xE600000000000000;
  if (a1)
  {
    v4 = sub_267EF77C8();
    v5 = a1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v5;
  *(v3 + 72) = v4;

  sub_267EF78C8();
}

uint64_t sub_267CEAE1C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEAE34()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v4 = OUTLINED_FUNCTION_55_7(v3, 0x657369636E6F63);
  *(v4 + 72) = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277D55BF0];
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_1_5(v5);
  *(v0 + 32) = v3;
  *(v3 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_34_1(v7);

  return v11(v9, 0xD00000000000002BLL);
}

uint64_t sub_267CEAF34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267CEB050(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 57) = a3;
  *(v5 + 56) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEB070()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 58);
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_267EFCE30;
  *(v4 + 32) = 0x796C706572;
  *(v4 + 40) = 0xE500000000000000;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 1735290732;
  *(v4 + 88) = 0xE400000000000000;
  *(v4 + 96) = v2;
  *(v4 + 120) = v5;
  *(v4 + 128) = 0x657369636E6F63;
  *(v4 + 136) = 0xE700000000000000;
  *(v4 + 168) = v5;
  *(v4 + 144) = v1;
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_34_1(v6);
  OUTLINED_FUNCTION_30_2();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_267CEB1B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267CEB2D4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CEB384()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CEB434()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267CEB4E4(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEB500()
{
  OUTLINED_FUNCTION_60_5();
  v13 = v1;
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = OUTLINED_FUNCTION_52_5(v4);
  *(v0 + 32) = v5;
  *(v5 + 16) = xmmword_267EFCC90;
  *(v5 + 32) = 0x7461657065527369;
  *(v5 + 40) = 0xE800000000000000;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = v3;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x7369636E6F437369;
  *(v5 + 88) = 0xE900000000000065;
  *(v5 + 120) = v6;
  *(v5 + 96) = v2;
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v12 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_34_1(v8);

  return v12(v10, 0xD00000000000002CLL);
}

uint64_t sub_267CEB630()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_8(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267CEB6B4()
{
  OUTLINED_FUNCTION_60_5();
  v15 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v4 = OUTLINED_FUNCTION_37_7(v3);
  v5 = OUTLINED_FUNCTION_51_7(v4, xmmword_267EFC020);
  OUTLINED_FUNCTION_48_11(v5, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v7);
  if (v8)
  {
    sub_267B9FF34(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_25(v11);
  OUTLINED_FUNCTION_16_14();

  return v13();
}

uint64_t sub_267CEB7F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEB80C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 72);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_52_5(v3);
  v5 = OUTLINED_FUNCTION_37_7(v4);
  *(v5 + 16) = xmmword_267EFCC90;
  strcpy((v5 + 32), "messageCount");
  *(v5 + 45) = 0;
  *(v5 + 46) = -5120;
  if (v2)
  {
    OUTLINED_FUNCTION_44_11();
    v1[7] = 0;
    v1[8] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v6 = MEMORY[0x277D839F8];
  }

  v8 = *(v0 + 32);
  v1[6] = v7;
  v1[9] = v6;
  v1[10] = 7368801;
  v1[11] = 0xE300000000000000;
  v9 = 0;
  if (v8)
  {
    v9 = sub_267EF7958();
  }

  else
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  v1[12] = v8;
  v1[15] = v9;
  OUTLINED_FUNCTION_22_12();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_14_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_27_2(v11);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_30_2();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_267CEB95C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267CEBAA0()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v1[6] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CEBB28()
{
  OUTLINED_FUNCTION_113();
  v17 = v3;
  OUTLINED_FUNCTION_29();
  v4 = v2[3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v6 = OUTLINED_FUNCTION_52_5(v5);
  v2[7] = v6;
  OUTLINED_FUNCTION_16(v6, xmmword_267EFCC90);
  if (v4)
  {
    type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_50_10(v7);
  sub_267BB16A4(v8, v1, &unk_28022AE30, &qword_267EFC0B0);
  v9 = sub_267EF79B8();
  OUTLINED_FUNCTION_15_1(v9);
  v10 = v2[6];
  OUTLINED_FUNCTION_56_7();
  if (v11)
  {

    sub_267B9FF34(v10, &unk_28022AE30, &qword_267EFC0B0);
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
  }

  else
  {
    *(v6 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_0((v6 + 96));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v12();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v2[8] = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_27_2(v13);
  OUTLINED_FUNCTION_21_10();

  return v15();
}

uint64_t sub_267CEBCC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267CEBDE4()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CEBE6C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_16(v3, xmmword_267EFC020);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_22_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_30_2();

  return v11(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_267CEBF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEBF84()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_52_5(v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_16(v3, xmmword_267EFCC90);
  if (v1)
  {
    v4 = type metadata accessor for MessagesApp(0);
    v5 = v1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = v0[4];
  v7 = OUTLINED_FUNCTION_42_10(v4, v5);
  if (v6)
  {
    v7 = sub_267EF77C8();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  v3[7].n128_u64[1] = v7;
  OUTLINED_FUNCTION_22_12();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_14_19(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_27_2(v9);
  OUTLINED_FUNCTION_49_10();

  return v11();
}

uint64_t sub_267CEC0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267CEC0D8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_52_5(v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_16(v3, xmmword_267EFCC90);
  if (v1)
  {
    v4 = type metadata accessor for MessagesApp(0);
    v5 = v1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = v0[4];
  v7 = OUTLINED_FUNCTION_42_10(v4, v5);
  if (v6)
  {
    v7 = sub_267EF77C8();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  v3[7].n128_u64[1] = v7;
  OUTLINED_FUNCTION_22_12();

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_14_19(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_27_2(v9);
  OUTLINED_FUNCTION_49_10();

  return v11();
}

uint64_t sub_267CEC214()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267CEC330()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CEC38C()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v5);
  v1[6] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CEC414()
{
  OUTLINED_FUNCTION_113();
  v17 = v3;
  OUTLINED_FUNCTION_29();
  v4 = v2[3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v6 = OUTLINED_FUNCTION_52_5(v5);
  v2[7] = v6;
  OUTLINED_FUNCTION_16(v6, xmmword_267EFCC90);
  if (v4)
  {
    type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_50_10(v7);
  sub_267BB16A4(v8, v1, &unk_28022AE30, &qword_267EFC0B0);
  v9 = sub_267EF79B8();
  OUTLINED_FUNCTION_15_1(v9);
  v10 = v2[6];
  OUTLINED_FUNCTION_56_7();
  if (v11)
  {

    sub_267B9FF34(v10, &unk_28022AE30, &qword_267EFC0B0);
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
  }

  else
  {
    *(v6 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_0((v6 + 96));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v12();
  }

  OUTLINED_FUNCTION_10(MEMORY[0x277D55BF0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v2[8] = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_27_2(v13);
  OUTLINED_FUNCTION_21_10();

  return v15();
}

uint64_t sub_267CEC5AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

void sub_267CEC714()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  type metadata accessor for EditMessageFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);
  (*(v11 + 16))(v15, v3, v9);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v40 = v1;
    v38 = v21;
    v43 = v21;
    *v20 = 136315138;
    sub_267CEFF68(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v22 = sub_267EF9E58();
    v24 = v23;
    (*(v11 + 8))(v15, v9);
    v25 = sub_267BA33E8(v22, v24, &v43);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_267B93000, v17, v18, "#EditMessageFlow received input %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v1 = v40;
    OUTLINED_FUNCTION_32_0();
    v8 = v39;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v11 + 8))(v15, v9);
  }

  v26 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  sub_267CEFA40(v1 + v26, v8, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_28();
  sub_267CEFD8C();
  if (EnumCaseMultiPayload != 4)
  {

    v29 = sub_267EF89F8();
    v30 = sub_267EF95D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136315138;
      OUTLINED_FUNCTION_3_26();
      sub_267CEFA40(v33 + v26, v41, v34);
      v35 = sub_267EF9098();
      v37 = sub_267BA33E8(v35, v36, &v42);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_267B93000, v29, v30, "#EditMessageFlow input received in state %s, ignoring", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267CECB04()
{
  OUTLINED_FUNCTION_12();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA40, &qword_267F028D8);
  v1[16] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[17] = v4;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_30_0(v5);
  v1[21] = v6;
  v1[22] = *(v7 + 64);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = type metadata accessor for EditMessageFlow.State(0);
  v1[26] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267CECC84, 0, 0);
}

uint64_t sub_267CECC84()
{
  v72 = v1;
  v2 = v1[28];
  v3 = v1[15];
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  sub_267CEFA40(v3 + v4, v2, v5);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_267C1B4DC(v1[28], v1[23]);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v46 = sub_267EF8A08();
      v47 = OUTLINED_FUNCTION_13_8(v46, qword_280240FB0);
      v48 = sub_267EF95C8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v49);
        _os_log_impl(&dword_267B93000, v47, v48, "#EditMessageFlow ready to start", v0, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267CEE4B0();
      goto LABEL_21;
    case 2u:
      v6 = v1[15];
      sub_267C1B4DC(v1[28], v1[24]);
      v7 = v6[5];
      v8 = v6[6];
      __swift_project_boxed_opaque_existential_0(v6 + 2, v7);
      (*(v8 + 8))(v7, v8);
      __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
      LOBYTE(v6) = sub_267EF3C58();
      __swift_destroy_boxed_opaque_existential_0(v1 + 2);
      if (v6)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v9 = sub_267EF8A08();
        v10 = OUTLINED_FUNCTION_13_8(v9, qword_280240FB0);
        v11 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v11))
        {
          v12 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v12);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v13, v14, "#EditMessageFlow pushing PostPersonalDomainActivityNotificationFlow");
          OUTLINED_FUNCTION_32_0();
        }

        v15 = v1[24];
        v16 = v1[25];
        v17 = v1[21];
        v18 = v1[15];

        v19 = sub_267EF33A8();
        OUTLINED_FUNCTION_97(v19);
        v1[13] = sub_267EF3388();
        OUTLINED_FUNCTION_0_22();
        sub_267CEFA40(v15, v16, v20);
        v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = v18;
        sub_267C1B4DC(v16, v22 + v21);
        v23 = swift_allocObject();
        *(v23 + 16) = sub_267CEFEE0;
        *(v23 + 24) = v22;

        sub_267EF3FC8();

        OUTLINED_FUNCTION_9_24();
        sub_267CEFD8C();

LABEL_37:
        OUTLINED_FUNCTION_19_11();

        OUTLINED_FUNCTION_17();

        return v68();
      }

      else
      {
        v60 = v1[27];
        OUTLINED_FUNCTION_0_22();
        sub_267CEFA40(v61, v60, v62);
        OUTLINED_FUNCTION_66();
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_267CEF8DC(v60, v3 + v4);
        swift_endAccess();
        v63 = swift_task_alloc();
        v1[29] = v63;
        *v63 = v1;
        v63[1] = sub_267CED434;

        return sub_267CECB04();
      }

    case 3u:
      (*(v1[17] + 32))(v1[20], v1[28], v1[16]);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v24 = sub_267EF8A08();
      v25 = OUTLINED_FUNCTION_13_8(v24, qword_280240FB0);
      v26 = sub_267EF95C8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_32();
        *v27 = 0;
        _os_log_impl(&dword_267B93000, v25, v26, "#EditMessageFlow RCH completed", v27, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v29 = v1[19];
      v28 = v1[20];
      v30 = v1[16];
      v31 = v1[17];

      v32 = *(v31 + 16);
      v32(v29, v28, v30);
      v33 = sub_267EF89F8();
      v34 = sub_267EF95D8();
      v35 = OUTLINED_FUNCTION_10_2(v34);
      v36 = v1[19];
      if (v35)
      {
        v70 = v25;
        v37 = v1[17];
        v38 = v1[18];
        v39 = v1[16];
        v40 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v71 = v69;
        *v40 = 136315138;
        v32(v38, v36, v39);
        v41 = sub_267EF9098();
        v43 = v42;
        v44 = *(v37 + 8);
        v44(v36, v39);
        v45 = sub_267BA33E8(v41, v43, &v71);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_267B93000, v33, v70, "#EditMessageFlow RCH completed with result: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
        v65 = v1[16];
        v66 = v1[17];

        v44 = *(v66 + 8);
        v44(v36, v65);
      }

      sub_267EF4018();
      v67 = OUTLINED_FUNCTION_66();
      (v44)(v67);
      goto LABEL_37;
    case 4u:
      sub_267CEDFF8();
      goto LABEL_37;
    case 5u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v50 = sub_267EF8A08();
      v51 = OUTLINED_FUNCTION_13_8(v50, qword_280240FB0);
      v52 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v52))
      {
        goto LABEL_31;
      }

      v53 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v53);
      v56 = "#EditMessageFlow no context fetched";
      goto LABEL_30;
    case 6u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v57 = sub_267EF8A08();
      v51 = OUTLINED_FUNCTION_13_8(v57, qword_280240FB0);
      v58 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_10_2(v58))
      {
        goto LABEL_31;
      }

      v59 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v59);
      v56 = "#EditMessageFlow guard flow failed";
LABEL_30:
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v54, v55, v56);
      OUTLINED_FUNCTION_32_0();
LABEL_31:

      sub_267EF4018();
      goto LABEL_37;
    default:
      sub_267C1B4DC(v1[28], v1[25]);
      sub_267CED990();
LABEL_21:
      sub_267CEFD8C();
      goto LABEL_37;
  }
}

uint64_t sub_267CED434()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_267CED520, 0, 0);
}

uint64_t sub_267CED520()
{
  OUTLINED_FUNCTION_9_24();
  sub_267CEFD8C();
  OUTLINED_FUNCTION_19_11();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CED5F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v1[2] = 0xD000000000000011;
  v1[3] = 0x8000000267F11F50;
  v1[4] = 0xD000000000000022;
  v1[5] = 0x8000000267F11F70;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_267CED6F4;

  return sub_267C9BCE8(sub_267C1BEF4, v1);
}

uint64_t sub_267CED6F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v7 + 32) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_267C18EF4, 0, 0);
  }

  else
  {

    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_267CED854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageFlow.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267CEFA40(a2, v6, type metadata accessor for TimedSentMessageContext);
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  sub_267CEF8DC(v6, a1 + v7);
  return swift_endAccess();
}

void sub_267CED990()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v25 = v3;
  v4 = type metadata accessor for TimedSentMessageContext(0);
  v5 = OUTLINED_FUNCTION_30_0(v4);
  v24 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_267EF3488();
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3468();
  v10 = sub_267EF3448();
  v11 = OUTLINED_FUNCTION_66();
  v12(v11);
  sub_267B9AFEC(v0 + 56, v27);
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(v2, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  sub_267B9AFEC(v0 + 16, v26);
  *&v27[0] = sub_267CEFB14(v27, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  type metadata accessor for EditMessageRequestSupportCheckFlow(0);
  sub_267CEFF68(&qword_28022AA50, type metadata accessor for EditMessageRequestSupportCheckFlow, &unk_267F0AB28);
  v14 = sub_267EF36F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_267F027B0;
  *(v15 + 32) = v10;
  *(v15 + 40) = v14;
  *&v26[0] = v15;
  sub_267B9AFEC(v0 + 56, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
  v16 = OUTLINED_FUNCTION_28_16();
  type metadata accessor for SmsNLv4Intent(v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_267B9AFEC(v0 + 16, v27);
  v17 = type metadata accessor for NetworkStatusProvider();
  v18 = OUTLINED_FUNCTION_49(v17);
  *&v27[0] = sub_267CEFC48(v27, v18);
  type metadata accessor for NetworkConnectivityCheckFlow();
  sub_267CEFF68(&qword_28022AA58, type metadata accessor for NetworkConnectivityCheckFlow, &unk_267F0D2C0);
  sub_267EF36F8();

  sub_267C74A48();
  if (sub_267BAF0DC(v15) < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(sub_267BAF0DC(v15), 1))
  {
    sub_267CA5F78();
    sub_267C735E0();
LABEL_5:
    v19 = sub_267EF3428();
    OUTLINED_FUNCTION_97(v19);
    *&v27[0] = sub_267EF3418();
    OUTLINED_FUNCTION_0_22();
    sub_267CEFA40(v2, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    v21 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    sub_267C1B4DC(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);

    sub_267EF3FC8();

    OUTLINED_FUNCTION_47();
    return;
  }

  __break(1u);
}

uint64_t sub_267CEDD90(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditMessageFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267B93000, v10, v11, "#EditMessageFlow guard flow failed", v12, 2u);
      MEMORY[0x26D60A7B0](v12, -1, -1);
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v15, "#EditMessageFlow guard flow passed", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    sub_267CEFA40(a3, v8, type metadata accessor for TimedSentMessageContext);
  }

  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  sub_267CEF8DC(v8, a2 + v17);
  return swift_endAccess();
}

uint64_t sub_267CEDFF8()
{
  v1 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  v3 = OUTLINED_FUNCTION_13_8(v2, qword_280240FB0);
  v4 = sub_267EF95C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    *v5 = 0;
    _os_log_impl(&dword_267B93000, v3, v4, "#EditMessageFlow pushing FetchMessageContextFlow", v5, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267B9AFEC(v1 + 56, v10);
  sub_267B9AFEC(v1 + 16, v9);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  swift_unknownObjectRetain();
  *&v10[0] = sub_267CEF940(v10, v9, v6, v7);
  type metadata accessor for FetchMessageContextFlow(0);
  sub_267CEFF68(&qword_28022AA48, type metadata accessor for FetchMessageContextFlow, &unk_267F02C00);

  sub_267EF3FC8();
}

uint64_t sub_267CEE188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageFlow.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimedSentMessageContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessageContextFlowResult = type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult(0);
  MEMORY[0x28223BE20](MessageContextFlowResult - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267CEFA40(a1, v12, type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v15, "#EditMessageFlow no context fetched", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }
  }

  else
  {
    sub_267C1B4DC(v12, v9);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_267B93000, v18, v19, "#EditMessageFlow context fetched", v20, 2u);
      MEMORY[0x26D60A7B0](v20, -1, -1);
    }

    sub_267C1B4DC(v9, v6);
  }

  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  sub_267CEF8DC(v6, a2 + v21);
  return swift_endAccess();
}

void sub_267CEE4B0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v40 = v5;
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  v9 = sub_267EF7B88();
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v11 = type metadata accessor for TimedSentMessageContext(0);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  type metadata accessor for EditMessageState();
  swift_allocObject();
  v16 = sub_267DA7284();
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(v3, v15, v17);
  sub_267B9AFEC((v0 + 2), v43);
  v18 = qword_2802286F0;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  type metadata accessor for EditMessageCATs(0);
  sub_267EF7B68();
  v19 = sub_267EF78E8();
  v20 = type metadata accessor for CommonTemplateProvider();
  v42[3] = v20;
  v42[4] = &off_2878D2530;
  v42[0] = OUTLINED_FUNCTION_49(v20);
  v21 = type metadata accessor for EditMessageRCHFlowStrategy(0);
  v22 = OUTLINED_FUNCTION_97(v21);
  __swift_mutable_project_boxed_opaque_existential_1(v42, v20);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  v28 = *v26;
  v29 = (v22 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_commonTemplateProvider);
  v29[3] = v20;
  v29[4] = &off_2878D2530;
  *v29 = v28;
  sub_267C1B4DC(v15, v22 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_sentMessageContext);
  *(v22 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageCATs) = v19;
  *(v22 + OBJC_IVAR____TtC16SiriMessagesFlow26EditMessageRCHFlowStrategy_editMessageState) = v16;
  sub_267B9A5E8(v43, v22 + 16);
  __swift_destroy_boxed_opaque_existential_0(v42);
  sub_267CEEA7C();
  __swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
  sub_267E2F218();
  v30 = v1[10];
  v31 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v30);
  (*(v31 + 8))(v30, v31);
  LOBYTE(v30) = sub_267EF3528();
  (*(v40 + 8))(v8, v41);
  if (v30)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v32 = sub_267EF8A08();
    v33 = OUTLINED_FUNCTION_13_8(v32, qword_280240FB0);
    v34 = sub_267EF95C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_32();
      *v35 = 0;
      _os_log_impl(&dword_267B93000, v33, v34, "#EditMessageFlow pushing RCHFlow", v35, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF3FD8();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v36 = sub_267EF8A08();
    v37 = OUTLINED_FUNCTION_13_8(v36, qword_280240FB0);
    v38 = sub_267EF95E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_32();
      *v39 = 0;
      _os_log_impl(&dword_267B93000, v37, v38, "#EditMessageFlow RCHFlow.on() returned false", v39, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF4018();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267CEE974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageFlow.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA40, &qword_267F028D8);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow15EditMessageFlow_state;
  swift_beginAccess();
  sub_267CEF8DC(v6, a2 + v8);
  return swift_endAccess();
}

void sub_267CEEA7C()
{
  OUTLINED_FUNCTION_48_0();
  v40 = v1;
  v3 = v2;
  v4 = type metadata accessor for TimedSentMessageContext(0);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA10, &qword_267F028C0);
  OUTLINED_FUNCTION_23();
  v42 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v41 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
  sub_267BA9F38(0, &qword_28022A9F8, 0x277CD3BC8);
  sub_267EF36C8();
  sub_267EF3568();
  OUTLINED_FUNCTION_17_13();
  sub_267EF3648();
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(v3, v7, v15);
  *&v43 = v0;
  sub_267B9AFEC(v0 + 16, v55);
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  sub_267B9AFEC(qword_2802405A0, v53);
  sub_267EF8668();
  __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  v51 = &type metadata for CATProvider;
  v52 = &off_2878CE7A0;
  v48 = &type metadata for MessagesFeatureFlagsImpl;
  v49 = off_2878D1228;
  v16 = type metadata accessor for EditMessageNeedsValueFlowStrategy(0);
  v17 = OUTLINED_FUNCTION_97(v16);
  __swift_mutable_project_boxed_opaque_existential_1(v50, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v47, &type metadata for MessagesFeatureFlagsImpl);
  v18 = v17 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_catProvider;
  *(v18 + 24) = &type metadata for CATProvider;
  *(v18 + 32) = &off_2878CE7A0;
  v19 = v17 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_featureFlags;
  *(v19 + 24) = &type metadata for MessagesFeatureFlagsImpl;
  *(v19 + 32) = off_2878D1228;
  sub_267C1B4DC(v7, v17 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sentMessageContext);
  v20 = v40;
  *(v17 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_editMessageState) = v40;
  OUTLINED_FUNCTION_24_8(OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sharedContextService);
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v53);
  v55[0] = v17;
  sub_267CEFF68(&qword_28022AA18, type metadata accessor for EditMessageNeedsValueFlowStrategy, &unk_267F09268);
  OUTLINED_FUNCTION_14_20();
  sub_267EF3548();

  OUTLINED_FUNCTION_17_13();
  sub_267EF3628();
  v21 = v43;
  sub_267CEF124(v20, v3);
  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_17_13();
  sub_267EF3658();
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(v3, v7, v22);
  sub_267B9AFEC(v21 + 16, v55);
  v43 = *(v21 + 136);
  sub_267B9AFEC(qword_2802405A0, v53);
  v23 = type metadata accessor for CommonTemplateProvider();
  v24 = OUTLINED_FUNCTION_49(v23);
  swift_unknownObjectRetain();
  sub_267EF8668();
  __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  v51 = &type metadata for CATProvider;
  v52 = &off_2878CE7A0;
  v49 = &off_2878D2530;
  v48 = v23;
  v47[0] = v24;
  v45 = &type metadata for MessagesFeatureFlagsImpl;
  v46 = off_2878D1228;
  v25 = type metadata accessor for EditMessageHandleIntentFlowStrategy(0);
  v26 = OUTLINED_FUNCTION_97(v25);
  __swift_mutable_project_boxed_opaque_existential_1(v50, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v47, v23);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v30 = (v29 - v28);
  (*(v31 + 16))(v29 - v28);
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v32 = *v30;
  v33 = v26 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider;
  *(v33 + 24) = &type metadata for CATProvider;
  *(v33 + 32) = &off_2878CE7A0;
  v34 = (v26 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_commonTemplateProvider);
  v34[3] = v23;
  v34[4] = &off_2878D2530;
  *v34 = v32;
  v35 = v26 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags;
  *(v35 + 24) = &type metadata for MessagesFeatureFlagsImpl;
  *(v35 + 32) = off_2878D1228;
  sub_267C1B4DC(v7, v26 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext);
  *(v26 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_editMessageState) = v20;
  *(v26 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextProvider) = v43;
  OUTLINED_FUNCTION_24_8(OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextService);
  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v53);
  v55[0] = v26;
  sub_267CEFF68(&qword_28022AA20, type metadata accessor for EditMessageHandleIntentFlowStrategy, &unk_267F0DEA8);
  OUTLINED_FUNCTION_14_20();
  sub_267EF3558();

  OUTLINED_FUNCTION_17_13();
  sub_267EF3638();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA28, &qword_267F028C8);
  v55[0] = OUTLINED_FUNCTION_49(v36);
  sub_267CEF870();
  OUTLINED_FUNCTION_14_20();
  sub_267EF3598();

  OUTLINED_FUNCTION_17_13();
  sub_267EF3668();
  v37 = v42;
  (*(v42 + 16))(v41, v14, v8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA38, &qword_267F028D0);
  OUTLINED_FUNCTION_97(v38);
  sub_267EF36D8();
  (*(v37 + 8))(v14, v8);
  OUTLINED_FUNCTION_47();
}

uint64_t (*sub_267CEF124(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_28_16();
  v6 = type metadata accessor for TimedSentMessageContext(v5);
  v7 = OUTLINED_FUNCTION_30_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_22();
  sub_267CEFA40(a2, &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  sub_267C1B4DC(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  return OUTLINED_FUNCTION_8_23();
}

uint64_t sub_267CEF22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TimedSentMessageContext(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v12 = sub_267EF4648();
  v13 = sub_267EF4668();
  v14 = sub_267EF4638();
  sub_267CEFA40(a4, v11, type metadata accessor for TimedSentMessageContext);
  sub_267B9AFEC(a5 + 16, v18);
  type metadata accessor for EditMessageConfirmIntentFlow(0);
  swift_allocObject();
  *&v18[0] = sub_267D73C7C(a1, v12, v13, v14, a3, v11, v18);
  sub_267CEFF68(&qword_28022AA08, type metadata accessor for EditMessageConfirmIntentFlow, &unk_267F07FF0);

  v15 = sub_267EF36F8();

  return v15;
}

uint64_t sub_267CEF3DC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_28();
  return sub_267CEFD8C();
}

void *sub_267CEF41C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_28();
  sub_267CEFD8C();
  return v0;
}

uint64_t sub_267CEF468()
{
  sub_267CEF41C();

  return swift_deallocClassInstance();
}

uint64_t sub_267CEF4E8(uint64_t a1)
{
  result = type metadata accessor for EditMessageFlow.State(319);
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

void sub_267CEF5B8(uint64_t a1)
{
  type metadata accessor for TimedSentMessageContext(319);
  if (v1 <= 0x3F)
  {
    sub_267CEF630(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267CEF630(uint64_t a1)
{
  if (!qword_28022A9E8)
  {
    sub_267BA9F38(255, &qword_28022A9F0, 0x277CD3BC0);
    sub_267BA9F38(255, &qword_28022A9F8, 0x277CD3BC8);
    v1 = sub_267EF3E08();
    if (!v2)
    {
      atomic_store(v1, &qword_28022A9E8);
    }
  }
}

uint64_t sub_267CEF6F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267CECB04();
}

uint64_t sub_267CEF78C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EditMessageFlow(0);

  return sub_267EF3748();
}

uint64_t sub_267CEF7C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_30_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *(v2 + 16);

  return sub_267CEF22C(a1, a2, v12, v2 + v10, v11);
}

unint64_t sub_267CEF870()
{
  result = qword_28022AA30;
  if (!qword_28022AA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022AA28, &qword_267F028C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AA30);
  }

  return result;
}

uint64_t sub_267CEF8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditMessageFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267CEF940(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = &type metadata for CATProvider;
  v14[4] = &off_2878CE7A0;
  type metadata accessor for FetchMessageContextFlow(0);
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for CATProvider);
  v9 = v8 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_catProvider;
  *(v9 + 24) = &type metadata for CATProvider;
  *(v9 + 32) = &off_2878CE7A0;
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue;
  v11 = type metadata accessor for TimedSentMessageContext(0);
  __swift_storeEnumTagSinglePayload(v8 + v10, 1, 1, v11);
  sub_267B9A5E8(a1, v8 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent);
  v12 = (v8 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_sharedContextProvider);
  *v12 = a3;
  v12[1] = a4;
  sub_267B9A5E8(a2, v8 + 16);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v8;
}
void sub_21492BEF0()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_281190CB8 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_281194E10 object:0];
}

uint64_t sub_21492BF90(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C428, &unk_21499A988);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492CE64();
  sub_2149901B0();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_21492CEB8();
    sub_21498FF40();
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_21492C150()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21492C1AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899138;

  return sub_21492C4B8();
}

uint64_t sub_21492C378@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_21492BF90(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_21492C460(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_214990080() & 1;
  }
}

uint64_t sub_21492C4B8()
{
  v1[19] = v0;
  v2 = sub_21498F510();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_21498F540();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = sub_21498E320();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v5 = sub_21498E690();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492C68C, 0, 0);
}

uint64_t sub_21492C68C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FB90();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[MAInvalidateCacheAction] invalidateMailCleanupCacheNotification", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v8 = v0 + 12;
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v12 = v0[19];

  (*(v10 + 8))(v9, v11);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 16);
  }

  else
  {
    v13 = &unk_2826C3CE0;
  }

  v0[8] = 0x746E65736E6F63;
  v0[9] = 0xE700000000000000;
  v14 = swift_task_alloc();
  *(v14 + 16) = v0 + 8;

  v15 = sub_214923544(sub_21492CDE8, v14, v13);

  if (v15)
  {
    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v20 = v19;
    sub_21498E310();
    v21 = sub_21498E2B0();
    v22 = sub_21498F840();
    [v20 setValue:v21 forKey:v22];

    (*(v17 + 8))(v16, v18);
    v8 = v0 + 12;
  }

  v0[10] = 0x6E65726566657270;
  v0[11] = 0xEA00000000006563;
  v23 = swift_task_alloc();
  *(v23 + 16) = v0 + 10;
  v24 = sub_214923544(sub_21492D04C, v23, v13);

  if (v24)
  {
    v26 = v0[27];
    v25 = v0[28];
    v27 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v29 = v28;
    sub_21498E310();
    v30 = sub_21498E2B0();
    v31 = sub_21498F840();
    [v29 setValue:v30 forKey:v31];

    (*(v26 + 8))(v25, v27);
  }

  v0[12] = 7367028;
  v0[13] = 0xE300000000000000;
  v32 = swift_task_alloc();
  *(v32 + 16) = v8;
  v33 = sub_214923544(sub_21492D04C, v32, v13);

  if (v33)
  {
    v35 = v0[27];
    v34 = v0[28];
    v36 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v38 = v37;
    sub_21498E310();
    v39 = sub_21498E2B0();
    v40 = sub_21498F840();
    [v38 setValue:v39 forKey:v40];

    (*(v35 + 8))(v34, v36);
  }

  v0[14] = 1701606770;
  v0[15] = 0xE400000000000000;
  v41 = swift_task_alloc();
  *(v41 + 16) = v0 + 14;
  v42 = sub_214923544(sub_21492D04C, v41, v13);

  if (v42)
  {
    v44 = v0[27];
    v43 = v0[28];
    v45 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v47 = v46;
    sub_21498E310();
    v48 = sub_21498E2B0();
    v49 = sub_21498F840();
    [v47 setValue:v48 forKey:v49];

    (*(v44 + 8))(v43, v45);
  }

  v0[16] = 0x72616F6268736164;
  v0[17] = 0xE900000000000064;
  v50 = swift_task_alloc();
  *(v50 + 16) = v0 + 16;
  v51 = sub_214923544(sub_21492D04C, v50, v13);

  if (v51)
  {
    v53 = v0[27];
    v52 = v0[28];
    v54 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v56 = v55;
    sub_21498E310();
    v57 = sub_21498E2B0();
    v58 = sub_21498F840();
    [v56 setValue:v57 forKey:v58];

    (*(v53 + 8))(v52, v54);
  }

  v60 = v0[24];
  v59 = v0[25];
  v61 = v0[22];
  v68 = v0[23];
  v62 = v0[20];
  v63 = v0[21];
  sub_2148FFDCC();
  v67 = sub_21498FC20();
  v0[6] = sub_21492BEF0;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2148A457C;
  v0[5] = &block_descriptor_4;
  v64 = _Block_copy(v0 + 2);
  sub_21498F530();
  v0[18] = MEMORY[0x277D84F90];
  sub_21492CE1C(&qword_281190D90, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_214925D6C();
  sub_21498FD60();
  MEMORY[0x216058CD0](0, v59, v61, v64);
  _Block_release(v64);

  (*(v63 + 8))(v61, v62);
  (*(v60 + 8))(v59, v68);

  v65 = v0[1];

  return v65();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21492CE1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_21492CE64()
{
  result = qword_27CA1C430;
  if (!qword_27CA1C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C430);
  }

  return result;
}

unint64_t sub_21492CEB8()
{
  result = qword_281190CE8;
  if (!qword_281190CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A378, &qword_214993B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CE8);
  }

  return result;
}

unint64_t sub_21492CF48()
{
  result = qword_27CA1C438;
  if (!qword_27CA1C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C438);
  }

  return result;
}

unint64_t sub_21492CFA0()
{
  result = qword_27CA1C440;
  if (!qword_27CA1C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C440);
  }

  return result;
}

unint64_t sub_21492CFF8()
{
  result = qword_27CA1C448;
  if (!qword_27CA1C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C448);
  }

  return result;
}

uint64_t sub_21492D068()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21492D0B0()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAUIWisperUnsubscribeRequest(0);
  v22.receiver = v0;
  v22.super_class = v5;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD000000000000032, 0x80000002149A2AF0, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498DE14();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD000000000000036, 0x80000002149A2B30);

    return v21[0];
  }

  return v7;
}

uint64_t sub_21492D400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a3;
  v14[2] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4B8, &qword_21499AFD0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F4C4();
  sub_2149901C0();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_2148F6A8C(&qword_281190CF8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_214990040();
  if (!v5)
  {
    LOBYTE(v16) = 1;
    sub_21498FFC0();
    v16 = a5;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4C8, &qword_21499AFD8);
    sub_21492F56C(&qword_27CA1C4D0, sub_21492F518, MEMORY[0x277D83948]);
    sub_21498FFE0();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21492D67C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4A8, &unk_21499AFC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F470();
  sub_2149901C0();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_2148F6A8C(&qword_281190CF8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_214990040();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21492D7FC()
{
  v1 = 0x696F507972746E65;
  if (*v0 != 1)
  {
    v1 = 0x636974796C616E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737265646E6573;
  }
}

uint64_t sub_21492D860@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21492E824(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21492D888(uint64_t a1)
{
  v2 = sub_21492F4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492D8C4(uint64_t a1)
{
  v2 = sub_21492F4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21492D900@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21492E94C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_21492D968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265646E6573 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21492D9F0(uint64_t a1)
{
  v2 = sub_21492F470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492DA2C(uint64_t a1)
{
  v2 = sub_21492F470();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21492DA68@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21492EC24(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21492DABC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_21492DAEC(uint64_t a1)
{
  v2 = sub_21492F19C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492DB28(uint64_t a1)
{
  v2 = sub_21492F19C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21492DB64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C480, &qword_21499ACB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F19C();
  sub_2149901C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21492DC78()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21492DCC0()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAUIWisperRemoveUnsubscribeRequest(0);
  v22.receiver = v0;
  v22.super_class = v5;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD000000000000032, 0x80000002149A2A70, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498DE14();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD000000000000036, 0x80000002149A2AB0);

    return v21[0];
  }

  return v7;
}

id sub_21492DFE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21492E050()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21492E098()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DashboardEntryPointRequest = type metadata accessor for MAUIWisperGetDashboardEntryPointRequest(0);
  v22.receiver = v0;
  v22.super_class = DashboardEntryPointRequest;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD000000000000037, 0x80000002149A29F0, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498DE14();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD00000000000003ALL, 0x80000002149A2A30);

    return v21[0];
  }

  return v7;
}

id sub_21492E3A8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21498F840();

  return v5;
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

uint64_t sub_21492E46C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21492E4B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21492E518(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C478, &qword_21499ACA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F148();
  sub_2149901C0();
  v8[15] = 0;
  sub_214990000();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_214990000();
  v8[13] = 2;
  sub_214990010();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21492E6B8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D657449756E656DLL;
  }
}

uint64_t sub_21492E724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21492EDCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21492E74C(uint64_t a1)
{
  v2 = sub_21492F148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492E788(uint64_t a1)
{
  v2 = sub_21492F148();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21492E7C4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21492EEF8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_21492E824(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737265646E6573 && a2 == 0xE700000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21492E94C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4E0, &qword_21499AFE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F4C4();
  sub_2149901B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  v9 = 0;
  sub_2148F6A8C(&qword_281190CE8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_21498FFA0();
  v7 = v10;
  LOBYTE(v10) = 1;
  sub_21498FF20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4C8, &qword_21499AFD8);
  v9 = 2;
  sub_21492F56C(&qword_27CA1C4E8, sub_21492F5E4, MEMORY[0x277D83978]);
  v8 = 0;
  sub_21498FF40();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

void *sub_21492EC24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4F8, &qword_21499AFE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F470();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_2148F6A8C(&qword_281190CE8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_21498FFA0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_21492EDCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449756E656DLL && a2 == 0xED0000656C746954;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002149A0A90 == a2 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002149A0AB0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21492EEF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C470, &qword_21499ACA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F148();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_21498FF60();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  v23 = 1;
  v12 = sub_21498FF60();
  v19 = v13;
  v22 = 2;
  v14 = sub_21498FF70();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v20;
  *v20 = v21;
  v16[1] = v11;
  v17 = v19;
  v16[2] = v12;
  v16[3] = v17;
  *(v16 + 32) = v14 & 1;
  return result;
}

unint64_t sub_21492F148()
{
  result = qword_281190FE8[0];
  if (!qword_281190FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281190FE8);
  }

  return result;
}

unint64_t sub_21492F19C()
{
  result = qword_27CA1C488;
  if (!qword_27CA1C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C488);
  }

  return result;
}

uint64_t sub_21492F1F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21492F238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21492F2BC()
{
  result = qword_27CA1C490;
  if (!qword_27CA1C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C490);
  }

  return result;
}

unint64_t sub_21492F314()
{
  result = qword_27CA1C498;
  if (!qword_27CA1C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C498);
  }

  return result;
}

unint64_t sub_21492F36C()
{
  result = qword_27CA1C4A0;
  if (!qword_27CA1C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4A0);
  }

  return result;
}

unint64_t sub_21492F3C4()
{
  result = qword_281190FD8;
  if (!qword_281190FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FD8);
  }

  return result;
}

unint64_t sub_21492F41C()
{
  result = qword_281190FE0;
  if (!qword_281190FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FE0);
  }

  return result;
}

unint64_t sub_21492F470()
{
  result = qword_27CA1C4B0;
  if (!qword_27CA1C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4B0);
  }

  return result;
}

unint64_t sub_21492F4C4()
{
  result = qword_27CA1C4C0;
  if (!qword_27CA1C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4C0);
  }

  return result;
}

unint64_t sub_21492F518()
{
  result = qword_27CA1C4D8;
  if (!qword_27CA1C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4D8);
  }

  return result;
}

uint64_t sub_21492F56C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C4C8, &qword_21499AFD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21492F5E4()
{
  result = qword_27CA1C4F0;
  if (!qword_27CA1C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4F0);
  }

  return result;
}

unint64_t sub_21492F65C()
{
  result = qword_27CA1C500;
  if (!qword_27CA1C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C500);
  }

  return result;
}

unint64_t sub_21492F6B4()
{
  result = qword_27CA1C508;
  if (!qword_27CA1C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C508);
  }

  return result;
}

unint64_t sub_21492F70C()
{
  result = qword_27CA1C510;
  if (!qword_27CA1C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C510);
  }

  return result;
}

unint64_t sub_21492F764()
{
  result = qword_27CA1C518;
  if (!qword_27CA1C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C518);
  }

  return result;
}

unint64_t sub_21492F7BC()
{
  result = qword_27CA1C520;
  if (!qword_27CA1C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C520);
  }

  return result;
}

unint64_t sub_21492F814()
{
  result = qword_27CA1C528;
  if (!qword_27CA1C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C528);
  }

  return result;
}

uint64_t sub_21492F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_214899964;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_21492FA14(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899964;

  return v7(a1, a2);
}

uint64_t sub_21492FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_214899964;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_21492FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_214899964;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21492FDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899964;

  return v9(a1, a2, a3);
}

uint64_t sub_21492FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 64) + **(a7 + 64));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_21490976C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_214930028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_214899964;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21493015C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 80) + **(a5 + 80));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21493029C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_21493029C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_2149303B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2149304D8;

  return v9(a1, a2, a3);
}

uint64_t sub_2149304D8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2149305D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899964;

  return v9(a1, a2, a3);
}

uint64_t sub_2149306FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899964;

  return v9(a1, a2, a3);
}

uint64_t sub_214930824(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 112) + **(a2 + 112));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21493093C;

  return v7(a1, a2);
}

uint64_t sub_21493093C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_214930A38(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 120) + **(a2 + 120));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21493ECB0;

  return v7(a1, a2);
}

uint64_t sub_214930BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899138;

  return v9(a1, a2, a3);
}

uint64_t sub_214930CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899138;

  return v9(a1, a2, a3);
}

uint64_t sub_214930E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 184) + **(a3 + 184));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899964;

  return v9(a1, a2, a3);
}

uint64_t sub_214930F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C660, &qword_21499B530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C668, &qword_21499B538);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  *(swift_allocObject() + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C670, &qword_21499B540);
  swift_allocObject();
  v8 = v0;
  v13[1] = sub_21498E9E0();
  sub_2148FFDCC();
  v9 = sub_21498FC20();
  v13[0] = v9;
  v10 = sub_21498FC00();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_2148B4C20(&qword_27CA1C678, &qword_27CA1C670, &qword_21499B540, MEMORY[0x277CBCEB0]);
  sub_21493E950(&qword_281190CC8, sub_2148FFDCC, MEMORY[0x277D85228]);
  sub_21498EA60();
  sub_21489DFCC(v3, &qword_27CA1C660, &qword_21499B530);

  sub_2148B4C20(&qword_27CA1C680, &qword_27CA1C668, &qword_21499B538, MEMORY[0x277CBCD60]);
  v11 = sub_21498EA40();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21493121C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_21491E990(sub_21493E8D8, v4, 1, 0);
}

uint64_t sub_2149312A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C688, &qword_21499B548), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x60);
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = v6[40];
    if (v6[41])
    {
      v14 = *v6;
      *&v15 = v8;
      *(&v15 + 1) = v9;
      *&v16 = v10 & 1;
      *(&v16 + 1) = v11;
      LOBYTE(v17) = v12 & 1;
      HIBYTE(v17) = 1;
      sub_21493EAE8(v7, v8, v9, v10, v11, v12, 1);
      a4(&v14);
      return sub_21493E8EC(v7, v8, v9, v10, v11, v12, 1);
    }

    else
    {
      sub_21493EAE8(v7, v8, v9, v10, v11, v12, 0);
      sub_21489B4F8(v8, v9);
      v14 = v7;
      v15 = 0u;
      v16 = 0u;
      v17 = 0;

      a4(&v14);
      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v14 = qword_27CA30F98;
    v15 = xmmword_27CA30FA0;
    LOBYTE(v16) = byte_27CA30FB0;
    *(&v16 + 1) = qword_27CA30FB8;
    LOBYTE(v17) = byte_27CA30FC0;
    HIBYTE(v17) = 1;

    a4(&v14);
    return sub_21493E8E0(v14, v15, *(&v15 + 1), v16, *(&v16 + 1), v17, SHIBYTE(v17));
  }
}

uint64_t sub_2149314BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C600, &qword_21499B4D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_214919710(sub_21493E640, v7, 1, 0);
}

uint64_t sub_21493160C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C588, &qword_21499B460);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491A4D0(sub_21493BB48, v7, 1, 0);
}

uint64_t sub_21493175C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C530, &qword_21499B3F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491ABB0(sub_21493B984, v7, 1, 0);
}

uint64_t sub_2149318AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6B8, &qword_21499B5A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491B290(sub_21493EA20, v7, 1, 0);
}

uint64_t sub_2149319FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5D8, &qword_21499B4B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491B970(sub_21493E5BC, v7, 1, 0);
}

uint64_t sub_214931B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6D0, &qword_21499B5C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491C050(sub_21493EBD0, v7, 1, 0);
}

uint64_t sub_214931C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5A0, &qword_21499B470);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491C730(sub_21493BC38, v7, 1, 0);
}

uint64_t sub_214931DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5C0, &qword_21499B490);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491CE10(sub_21493BCB8, v7, 1, 0);
}

uint64_t sub_214931F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6A0, &qword_21499B580);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491D4F0(sub_21493E9F4, v7, 1, 0);
}

uint64_t sub_21493208C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C550, &qword_21499B420);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491DBD0(sub_21493BA08, v7, 1, 0);
}

uint64_t sub_2149321DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C570, &qword_21499B440);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491E2B0(sub_21493BAC8, v7, 1, 0);
}

uint64_t sub_21493232C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C628, &qword_21499B4F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21491F070(sub_21493E728, v7, 1, 0);
}

uint64_t sub_21493247C(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C608, &unk_21499B4E0), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v11 = qword_27CA30F98;
    v12 = xmmword_27CA30FA0;
    v13 = byte_27CA30FB0;
    v14 = qword_27CA30FB8;
    v15 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v12;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;

    goto LABEL_8;
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v5 = *v3;
  v4 = *(v3 + 1);
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = v3[40];
  if (v3[41])
  {
    sub_2148A2800();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v4;
    *(v10 + 16) = v7;
    *(v10 + 24) = v6 & 1;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9 & 1;
    sub_214925DD0(v5, v4, v7, v6, v8, v9, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C600, &qword_21499B4D8);
    return sub_21498FA60();
  }

  sub_214925DD0(v5, v4, v7, v6, v8, v9, 0);
  sub_214925DD0(v5, v4, v7, v6, v8, v9, 0);
  sub_21489B4F8(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C600, &qword_21499B4D8);
  sub_21498FA70();

  return sub_21493E668(v5, v4, v7, v6, v8, v9, 0);
}

uint64_t sub_2149326E0(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C590, &qword_21499B468), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v16 = qword_27CA30F98;
    v17 = xmmword_27CA30FA0;
    v18 = byte_27CA30FB0;
    v19 = qword_27CA30FB8;
    v20 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v21 = v16;
    *(v21 + 8) = v17;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = v20;

    goto LABEL_8;
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v4 = *v3;
  v6 = *v3;
  v5 = *(v3 + 1);
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = v3[40];
  if (v3[41])
  {
    v12 = *(v3 + 1);
    v11 = v3 + 1;
    v13 = *(v11 + 2);
    v14 = v11[6];
    sub_2148A2800();
    swift_allocError();
    *v15 = v4;
    *(v15 + 7) = v14;
    *(v15 + 5) = v13;
    *(v15 + 1) = v12;
    *(v15 + 8) = v5;
    *(v15 + 16) = v7;
    *(v15 + 24) = v8 & 1;
    *(v15 + 32) = v9;
    *(v15 + 40) = v10 & 1;
    sub_21493BB70(v6, v5, v7, v8, v9, v10, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C588, &qword_21499B460);
    return sub_21498FA60();
  }

  sub_21493BB70(*v3, *(v3 + 1), *(v3 + 2), *(v3 + 3), *(v3 + 4), v3[40], 0);
  sub_21489B4F8(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C588, &qword_21499B460);
  return sub_21498FA70();
}

uint64_t sub_21493291C(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C538, &qword_21499B400), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v14 = qword_27CA30F98;
    v15 = xmmword_27CA30FA0;
    v16 = byte_27CA30FB0;
    v17 = qword_27CA30FB8;
    v18 = byte_27CA30FC0;
    sub_2148A2800();
    v19 = swift_allocError();
    *v20 = v14;
    *(v20 + 8) = v15;
    *(v20 + 24) = v16;
    *(v20 + 32) = v17;
    *(v20 + 40) = v18;
    *&v32 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C530, &qword_21499B3F8);
    return sub_21498FA60();
  }

  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60));
  v32 = *v3;
  v5 = v3[2];
  v4 = v3[3];
  v6 = *(v3 + 57);
  v33 = v3[1];
  v34 = v5;
  *&v35[9] = v6;
  *v35 = v4;
  v7 = v32;
  v8 = *(&v33 + 1);
  v9 = v33;
  v10 = *(&v5 + 1);
  v11 = v5;
  if (HIBYTE(v6))
  {
    sub_2148A2800();
    v12 = swift_allocError();
    *v13 = v32;
    *(v13 + 16) = v9;
    *(v13 + 24) = v8 & 1;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10 & 1;
    v31 = v12;
    sub_2148AA824(&v32, &v25, &qword_27CA1C540, &qword_21499B408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C530, &qword_21499B3F8);
    return sub_21498FA60();
  }

  v23 = *&v35[8];
  v22 = *&v35[16];
  v24 = v35[0];
  sub_2148AA824(&v32, &v25, &qword_27CA1C540, &qword_21499B408);
  sub_21489B4F8(v23, v22);
  v25 = v7;
  v26 = v9;
  v27 = v8;
  v28 = v11;
  v29 = v10;
  v30 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C530, &qword_21499B3F8);
  return sub_21498FA70();
}

uint64_t sub_214932B74(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6C0, &qword_21499B5A8), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v11 = qword_27CA30F98;
    v12 = xmmword_27CA30FA0;
    v13 = byte_27CA30FB0;
    v14 = qword_27CA30FB8;
    v15 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v12;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;

    goto LABEL_8;
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = v3[40];
  if (v3[41])
  {
    sub_2148A2800();
    swift_allocError();
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v10 + 16) = v6;
    *(v10 + 24) = v7 & 1;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9 & 1;
    sub_21493EAE8(v4, v5, v6, v7, v8, v9, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6B8, &qword_21499B5A0);
    return sub_21498FA60();
  }

  sub_21493EAE8(v4, v5, v6, v7, v8, v9, 0);
  sub_21489B4F8(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6B8, &qword_21499B5A0);
  return sub_21498FA70();
}

uint64_t sub_214932D7C(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5E0, &qword_21499B4B8), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v14 = qword_27CA30F98;
    v15 = xmmword_27CA30FA0;
    v16 = byte_27CA30FB0;
    v17 = qword_27CA30FB8;
    v18 = byte_27CA30FC0;
    sub_2148A2800();
    v19 = swift_allocError();
    *v20 = v14;
    *(v20 + 8) = v15;
    *(v20 + 24) = v16;
    *(v20 + 32) = v17;
    *(v20 + 40) = v18;
    *&v29 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5D8, &qword_21499B4B0);
    return sub_21498FA60();
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v29 = *v3;
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v3[64];
  v30 = *(v3 + 1);
  v31 = v5;
  v33 = v6;
  v32 = v4;
  v7 = v29;
  v8 = *(&v30 + 1);
  v9 = v30;
  v10 = v5;
  v11 = BYTE8(v5);
  if (v6)
  {
    sub_2148A2800();
    v12 = swift_allocError();
    *v13 = v29;
    *(v13 + 16) = v9;
    *(v13 + 24) = v8 & 1;
    *(v13 + 32) = v10;
    *(v13 + 40) = v11 & 1;
    v28 = v12;
    sub_2148AA824(&v29, &v23, &qword_27CA1C5E8, &unk_21499B4C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5D8, &qword_21499B4B0);
    return sub_21498FA60();
  }

  v22 = v32;
  sub_2148AA824(&v29, &v23, &qword_27CA1C5E8, &unk_21499B4C0);
  sub_21489B4F8(v22, *(&v22 + 1));
  v23 = v7;
  v24 = v9;
  v25 = v8;
  v26 = v10;
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5D8, &qword_21499B4B0);
  return sub_21498FA70();
}

uint64_t sub_214932FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6), (v10 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v19 = qword_27CA30F98;
    v20 = xmmword_27CA30FA0;
    v21 = byte_27CA30FB0;
    v22 = qword_27CA30FB8;
    v23 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v24 = v19;
    *(v24 + 8) = v20;
    *(v24 + 24) = v21;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;

    goto LABEL_8;
  }

  v11 = v10 + *((*MEMORY[0x277D85000] & *v10) + 0x60);
  v13 = *v11;
  v12 = *(v11 + 1);
  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  v16 = *(v11 + 4);
  v17 = v11[40];
  if (v11[41])
  {
    sub_2148A2800();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v12;
    *(v18 + 16) = v15;
    *(v18 + 24) = v14 & 1;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17 & 1;
    sub_214925DD0(v13, v12, v15, v14, v16, v17, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    return sub_21498FA60();
  }

  sub_214925DD0(v13, v12, v15, v14, v16, v17, 0);
  sub_21489B4F8(v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  return sub_21498FA70();
}

uint64_t sub_2149331C4()
{
  result = sub_2149331E8();
  byte_281194E48 = result & 1;
  return result;
}

uint64_t sub_2149331E8()
{
  v0 = sub_21498E690();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v57 = &v57 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = sub_21498E4D0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, *MEMORY[0x277D24578], v15);
  v19 = sub_21498E4C0();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v0, qword_281194E18);
    (*(v1 + 16))(v14, v33, v0);
    v34 = sub_21498E670();
    v35 = sub_21498FBA0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21488E000, v34, v35, "isMailCleanupFeatureAvailable - feature not enabled", v36, 2u);
      MEMORY[0x216059AC0](v36, -1, -1);
    }

    (*(v1 + 8))(v14, v0);
    goto LABEL_42;
  }

  v20 = [objc_opt_self() defaultStore];
  if (!v20)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v0, qword_281194E18);
    (*(v1 + 16))(v12, v37, v0);
    v38 = sub_21498E670();
    v39 = sub_21498FBA0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_21488E000, v38, v39, "isMailCleanupFeatureAvailable - no account store", v40, 2u);
      MEMORY[0x216059AC0](v40, -1, -1);
    }

    (*(v1 + 8))(v12, v0);
    goto LABEL_42;
  }

  v21 = v20;
  v22 = [v20 aa_primaryAppleAccount];
  v23 = v1;
  v24 = v0;
  if (!v22)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v0, qword_281194E18);
    (*(v1 + 16))(v9, v41, v0);
    v42 = sub_21498E670();
    v43 = sub_21498FBA0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_21488E000, v42, v43, "isMailCleanupFeatureAvailable - no appleAccount", v44, 2u);
      MEMORY[0x216059AC0](v44, -1, -1);
    }

    (*(v1 + 8))(v9, v0);
    goto LABEL_42;
  }

  v25 = v22;
  v26 = *MEMORY[0x277CB89C8];
  if (([v22 isEnabledForDataclass_] & 1) == 0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v0, qword_281194E18);
    (*(v1 + 16))(v4, v45, v0);
    v46 = sub_21498E670();
    v47 = sub_21498FBA0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_21488E000, v46, v47, "isMailCleanupFeatureAvailable - apple account does not have mail data class", v48, 2u);
      MEMORY[0x216059AC0](v48, -1, -1);
    }

    (*(v1 + 8))(v4, v24);
    goto LABEL_42;
  }

  v27 = [v25 propertiesForDataclass_];
  if (!v27)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v0, qword_281194E18);
    v52 = v57;
    (*(v1 + 16))(v57, v51, v24);
    v53 = sub_21498E670();
    v54 = sub_21498FBA0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_21488E000, v53, v54, "isMailCleanupFeatureAvailable - apple account has no properties for mail data class", v55, 2u);
      MEMORY[0x216059AC0](v55, -1, -1);
    }

    (*(v23 + 8))(v52, v24);
LABEL_42:
    v32 = 0;
    return v32 & 1;
  }

  v28 = v27;
  v29 = sub_21498F7E0();

  v58 = 0xD00000000000003ELL;
  v59 = 0x80000002149A2C70;
  sub_21498FDB0();
  if (!*(v29 + 16) || (v30 = sub_214908014(v60), (v31 & 1) == 0))
  {
    sub_21489E5C0(v60);
    goto LABEL_33;
  }

  sub_21489E614(*(v29 + 56) + 32 * v30, v61);
  sub_21489E5C0(v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v58 = 0xD00000000000003ELL;
    v59 = 0x80000002149A2C70;
    sub_21498FDB0();
    if (*(v29 + 16) && (v49 = sub_214908014(v60), (v50 & 1) != 0))
    {
      sub_21489E614(*(v29 + 56) + 32 * v49, v61);

      sub_21489E5C0(v60);

      if (swift_dynamicCast())
      {
        v32 = v58;
        return v32 & 1;
      }
    }

    else
    {

      sub_21489E5C0(v60);
    }

    v32 = 1;
    return v32 & 1;
  }

  if (v58 == 1702195828 && v59 == 0xE400000000000000)
  {

    v32 = 1;
  }

  else
  {
    v32 = sub_214990080();
  }

  return v32 & 1;
}

uint64_t sub_214933ACC()
{
  sub_21498E590();
  result = sub_21498E560();
  qword_27CA31038 = result;
  return result;
}

unint64_t sub_214933B00(void *a1)
{
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 propertiesForDataclass_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21498F7E0();

    v17 = 0xD000000000000020;
    v18 = 0x80000002149A0D20;
    sub_21498FDB0();
    if (*(v8 + 16) && (v9 = sub_214908014(v19), (v10 & 1) != 0))
    {
      sub_21489E614(*(v8 + 56) + 32 * v9, v20);
      sub_21489E5C0(v19);

      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {

      sub_21489E5C0(v19);
    }
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v5, v12, v2);
  v13 = sub_21498E670();
  v14 = sub_21498FB90();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21488E000, v13, v14, "[MARepository] getAPIGatewayUrlFromAccountBag - url is empty", v15, 2u);
    MEMORY[0x216059AC0](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_214933DA0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_214933DC0, 0, 0);
}

uint64_t sub_214933DC0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = type metadata accessor for UnifiedRulesAPIRequest(0);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6 = objc_allocWithZone(v5);
  *&v6[qword_281191540] = v2;
  sub_2148AA824(v0 + 16, v0 + 56, &qword_27CA1C410, &unk_21499B410);

  v7 = v3;
  v8 = v4;
  v9 = sub_21493B6E4(v3, v8, v0 + 56, &qword_27CA1C6C8, &qword_21499B5B8, &qword_27CA1C3D8, &qword_21499B5B0);
  *(v0 + 120) = v9;

  sub_21489DFCC(v0 + 16, &qword_27CA1C410, &unk_21499B410);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_214933F8C;

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493EA18, v10, &type metadata for UnifiedRulesAPIResponse);
}

uint64_t sub_214933F8C()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2149340D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_2149340D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214934144(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_21498E690();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214934208, 0, 0);
}

uint64_t sub_214934208()
{
  v27 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_21498E670();
  v6 = sub_21498FBD0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  if (v7)
  {
    v12 = v0[12];
    v11 = v0[13];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2149079F4(v12, v11, &v26);
    _os_log_impl(&dword_21488E000, v5, v6, "deleteUnifiedRule(%s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = *(v15 + 32);
  v19 = *(v15 + 40);
  v0[5] = &type metadata for DeleteUnifiedRuleAPIRequest.DeleteUnifiedRuleAPIRequestPayload;
  v0[6] = sub_21493E998();
  v0[2] = v17;
  v0[3] = v16;
  objc_allocWithZone(type metadata accessor for DeleteUnifiedRuleAPIRequest(0));
  sub_2148AA824((v0 + 2), (v0 + 7), &qword_27CA1C410, &unk_21499B410);

  v20 = v18;
  v21 = v19;
  v22 = sub_21493B6E4(v18, v21, (v0 + 7), &qword_27CA1C6B0, &qword_21499B598, &qword_27CA1C3D0, &unk_21499A710);
  v0[18] = v22;

  sub_21489DFCC((v0 + 2), &qword_27CA1C410, &unk_21499B410);
  v23 = swift_task_alloc();
  v0[19] = v23;
  *(v23 + 16) = v22;
  v24 = swift_task_alloc();
  v0[20] = v24;
  *v24 = v0;
  v24[1] = sub_214934528;

  return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493E9EC, v23, &type metadata for DeleteUnifiedRuleAPIResponse);
}

uint64_t sub_214934528()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21493467C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21493467C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2149346F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 720) = v6;
  *(v7 + 712) = a6;
  *(v7 + 704) = a5;
  *(v7 + 696) = a4;
  *(v7 + 688) = a3;
  *(v7 + 944) = a2;
  v9 = sub_21498E690();
  *(v7 + 728) = v9;
  *(v7 + 736) = *(v9 - 8);
  *(v7 + 744) = swift_task_alloc();
  *(v7 + 752) = swift_task_alloc();
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v7 + 760) = *(a1 + 8);
  *(v7 + 776) = v10;
  *(v7 + 792) = v11;
  *(v7 + 808) = *(a1 + 64);

  return MEMORY[0x2822009F8](sub_2149347FC, 0, 0);
}

uint64_t sub_2149347FC()
{
  v37 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 752);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = __swift_project_value_buffer(v7, qword_281194E18);
  *(v0 + 816) = v8;
  v9 = *(v6 + 16);
  *(v0 + 824) = v9;
  *(v0 + 832) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v7);

  sub_2148F20B8(v4, v3, v2, v1);
  v10 = sub_21498E670();
  v11 = sub_21498FBD0();

  sub_2148AF724(v4, v3, v2, v1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 768);
    v13 = *(v0 + 752);
    v14 = *(v0 + 736);
    v15 = *(v0 + 728);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x216058A90](v12, MEMORY[0x277D837D0]);
    v20 = sub_2149079F4(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_21488E000, v10, v11, "unsubscribeFromOneSender(%s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x216059AC0](v17, -1, -1);
    MEMORY[0x216059AC0](v16, -1, -1);

    v21 = *(v14 + 8);
    v22 = v21(v13, v15);
  }

  else
  {
    v23 = *(v0 + 752);
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);

    v21 = *(v24 + 8);
    v22 = v21(v23, v25);
  }

  *(v0 + 840) = v21;
  if (*(v0 + 944) == 1)
  {
    v26 = *(v0 + 688);
    if (v26)
    {
      if (is_mul_ok(v26, 0xF4240uLL))
      {
        v27 = 1000000 * v26;
        v28 = swift_task_alloc();
        *(v0 + 848) = v28;
        *v28 = v0;
        v28[1] = sub_214934C08;
        v22 = v27;

        return MEMORY[0x282200480](v22);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return MEMORY[0x282200480](v22);
    }
  }

  v29 = *(v0 + 768);
  v30 = v29[2];
  *(v0 + 856) = v30;
  if (v30)
  {
    *(v0 + 864) = 0;
    if (!v29[2])
    {
      goto LABEL_21;
    }

    v31 = v29[4];
    *(v0 + 872) = v31;
    v32 = v29[5];
    *(v0 + 880) = v32;

    v33 = swift_task_alloc();
    *(v0 + 888) = v33;
    *v33 = v0;
    v33[1] = sub_214934E48;

    return sub_214935B10(v31, v32);
  }

  else
  {

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_214934C08()
{

  if (v0)
  {

    v1 = sub_21493ECAC;
  }

  else
  {
    v1 = sub_214934D20;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

void sub_214934D20()
{
  v1 = v0[96];
  v2 = v1[2];
  v0[107] = v2;
  if (v2)
  {
    v0[108] = 0;
    if (v1[2])
    {
      v3 = v1[4];
      v0[109] = v3;
      v4 = v1[5];
      v0[110] = v4;

      v5 = swift_task_alloc();
      v0[111] = v5;
      *v5 = v0;
      v5[1] = sub_214934E48;

      sub_214935B10(v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6 = v0[1];

    v6();
  }
}

uint64_t sub_214934E48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 896) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214934FA8, 0, 0);
  }
}

uint64_t sub_214934FA8()
{
  v34 = v0;
  v1 = *(*(v0 + 896) + 16);
  *(v0 + 904) = v1;
  if (v1)
  {

    *(v0 + 912) = 0;
    v3 = *(v0 + 896);
    if (*(v3 + 2))
    {
      v4 = v3[3];
      *(v0 + 112) = v3[2];
      *(v0 + 128) = v4;
      v5 = v3[4];
      v6 = v3[5];
      v7 = v3[7];
      *(v0 + 176) = v3[6];
      *(v0 + 192) = v7;
      *(v0 + 144) = v5;
      *(v0 + 160) = v6;
      memmove((v0 + 16), v3 + 2, 0x60uLL);
      sub_2148AFFDC(v0 + 112, v0 + 592);
      v8 = swift_task_alloc();
      *(v0 + 936) = v8;
      *v8 = v0;
      v8[1] = sub_214935618;
      v9 = *(v0 + 712);

      return sub_21493D94C(v0 + 16, v9);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  (*(v0 + 824))(*(v0 + 744), *(v0 + 816), *(v0 + 728));

  v10 = sub_21498E670();
  v11 = sub_21498FBD0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 880);
  if (v12)
  {
    v14 = *(v0 + 872);
    v32 = *(v0 + 840);
    v15 = *(v0 + 744);
    v16 = *(v0 + 728);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    v19 = sub_2149079F4(v14, v13, &v33);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_21488E000, v10, v11, "- No unsubscribe links found for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x216059AC0](v18, -1, -1);
    MEMORY[0x216059AC0](v17, -1, -1);

    v32(v15, v16);
  }

  else
  {
    v20 = *(v0 + 840);
    v21 = *(v0 + 744);
    v22 = *(v0 + 728);

    v20(v21, v22);
  }

  v23 = *(v0 + 864);
  v24 = *(v0 + 856);

  if (v23 + 1 == v24)
  {

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v26 = *(v0 + 864) + 1;
    *(v0 + 864) = v26;
    v27 = *(v0 + 768);
    if (v26 >= *(v27 + 16))
    {
      goto LABEL_18;
    }

    v28 = v27 + 16 * v26;
    v29 = *(v28 + 32);
    *(v0 + 872) = v29;
    v30 = *(v28 + 40);
    *(v0 + 880) = v30;

    v31 = swift_task_alloc();
    *(v0 + 888) = v31;
    *v31 = v0;
    v31[1] = sub_214934E48;

    return sub_214935B10(v29, v30);
  }
}

uint64_t sub_214935368()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 936) = v4;
  *v4 = v3;
  v4[1] = sub_214935618;
  v5 = *(v2 + 712);

  return sub_21493D94C(v2 + 16, v5);
}

uint64_t sub_2149354C0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 936) = v4;
  *v4 = v3;
  v4[1] = sub_214935618;
  v5 = *(v2 + 712);

  return sub_21493D94C(v2 + 16, v5);
}

uint64_t sub_214935618()
{
  v1 = *v0;

  sub_2148B0014(v1 + 16);

  return MEMORY[0x2822009F8](sub_21493571C, 0, 0);
}

uint64_t sub_21493571C(uint64_t a1)
{
  v2 = *(v1 + 912) + 1;
  if (v2 == *(v1 + 904))
  {
    v3 = *(v1 + 864);
    v4 = *(v1 + 856);

    if (v3 + 1 == v4)
    {

      v5 = *(v1 + 8);

      return v5();
    }

    v16 = *(v1 + 864) + 1;
    *(v1 + 864) = v16;
    v17 = *(v1 + 768);
    if (v16 < *(v17 + 16))
    {
      v18 = v17 + 16 * v16;
      v19 = *(v18 + 32);
      *(v1 + 872) = v19;
      v20 = *(v18 + 40);
      *(v1 + 880) = v20;

      v21 = swift_task_alloc();
      *(v1 + 888) = v21;
      *v21 = v1;
      v21[1] = sub_214934E48;

      return sub_214935B10(v19, v20);
    }

    goto LABEL_36;
  }

  *(v1 + 912) = v2;
  v7 = *(v1 + 896);
  if (v2 >= *(v7 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = (v7 + 96 * v2);
  v9 = v8[3];
  *(v1 + 112) = v8[2];
  *(v1 + 128) = v9;
  v10 = v8[4];
  v11 = v8[5];
  v12 = v8[7];
  *(v1 + 176) = v8[6];
  *(v1 + 192) = v12;
  *(v1 + 144) = v10;
  *(v1 + 160) = v11;
  a1 = memmove((v1 + 16), v8 + 2, 0x60uLL);
  v14 = *(v1 + 16);
  v13 = *(v1 + 24);
  v15 = *(v1 + 696);
  if (v14 != 1953722224 || v13 != 0xE400000000000000)
  {
    a1 = sub_214990080();
    if ((a1 & 1) == 0 || !v15)
    {
      if (v14 == 0x6F746C69616DLL && v13 == 0xE600000000000000)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v15 = *(v1 + 696);
    goto LABEL_18;
  }

  if (v15)
  {
LABEL_18:
    if (is_mul_ok(v15, 0xF4240uLL))
    {
      v22 = 1000000 * v15;
      sub_2148AFFDC(v1 + 112, v1 + 496);
      v23 = swift_task_alloc();
      *(v1 + 920) = v23;
      *v23 = v1;
      v24 = sub_214935368;
      goto LABEL_26;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_22:
  a1 = sub_214990080();
  if ((a1 & 1) == 0)
  {
    v26 = v1 + 208;
    goto LABEL_31;
  }

LABEL_23:
  v25 = *(v1 + 704);
  if (v25)
  {
    if (!is_mul_ok(v25, 0xF4240uLL))
    {
LABEL_37:
      __break(1u);
      return MEMORY[0x282200480](a1);
    }

    v22 = 1000000 * v25;
    sub_2148AFFDC(v1 + 112, v1 + 400);
    v23 = swift_task_alloc();
    *(v1 + 928) = v23;
    *v23 = v1;
    v24 = sub_2149354C0;
LABEL_26:
    v23[1] = v24;
    a1 = v22;

    return MEMORY[0x282200480](a1);
  }

  v26 = v1 + 304;
LABEL_31:
  sub_2148AFFDC(v1 + 112, v26);
  v27 = swift_task_alloc();
  *(v1 + 936) = v27;
  *v27 = v1;
  v27[1] = sub_214935618;
  v28 = *(v1 + 712);

  return sub_21493D94C(v1 + 16, v28);
}

uint64_t sub_214935B10(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21498E690();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214935BD4, 0, 0);
}

uint64_t sub_214935BD4()
{
  v22 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_21498E670();
  v6 = sub_21498FBD0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  if (v7)
  {
    v12 = v0[3];
    v11 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2149079F4(v12, v11, &v21);
    _os_log_impl(&dword_21488E000, v5, v6, "getUnsubscribeLinks(%s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v15 = v0[3];
  v16 = swift_task_alloc();
  v0[9] = v16;
  v17 = *(v0 + 2);
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v18 = swift_task_alloc();
  v0[10] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6E8, &qword_214992A18);
  *v18 = v0;
  v18[1] = sub_214935E4C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x80000002149A2C00, sub_21493E74C, v16, v19);
}

uint64_t sub_214935E4C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_214935FD4;
  }

  else
  {

    v2 = sub_214935F68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214935F68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_214935FD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214936040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v28 - v10;
  v12 = swift_allocObject();
  v33 = v12;
  *(v12 + 16) = 0;
  v35 = (v12 + 16);
  v14 = *(a4 + 32);
  v13 = *(a4 + 40);
  v37[3] = &type metadata for UnsubscribeLinkRequestBody;
  v37[4] = sub_21493E758();
  v37[0] = a2;
  v37[1] = a3;
  objc_allocWithZone(type metadata accessor for UnsubscribeLinksAPIRequest(0));
  sub_2148AA824(v37, v36, &qword_27CA1C410, &unk_21499B410);
  v15 = v14;
  v16 = v13;

  v17 = sub_21493B6E4(v14, v16, v36, &qword_27CA1C690, &qword_21499B558, &qword_27CA1C3C8, &qword_21499B550);

  sub_21489DFCC(v37, &qword_27CA1C410, &unk_21499B410);
  v18 = sub_214930F30();
  v32 = v18;

  v37[0] = v18;
  v29 = *(v8 + 16);
  v19 = a1;
  v20 = v34;
  v29(v11, v19, v34);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = v21 + v9;
  v22 = swift_allocObject();
  v23 = *(v8 + 32);
  v23(v22 + v21, v11, v20);
  *(v22 + ((v21 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v29(v11, v30, v20);
  v24 = swift_allocObject();
  v23(v24 + v21, v11, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C650, &qword_21499B528);
  sub_2148B4C20(&qword_27CA1C658, &qword_27CA1C650, &qword_21499B528, MEMORY[0x277CBCD90]);
  v25 = sub_21498EA50();

  v26 = v35;
  swift_beginAccess();
  *v26 = v25;
}

uint64_t sub_2149363B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = a1[4];
    v7 = *(a1 + 6);
    v8 = a1[2];
    v9 = *a1;
    sub_2148A2800();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v4;
    *(v10 + 16) = v8;
    *(v10 + 24) = v7 & 1;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);
    sub_21498FA60();
  }

  result = swift_beginAccess();
  if (*(a3 + 16))
  {

    sub_21498E9B0();
  }

  return result;
}

uint64_t sub_2149364A8(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);
  return sub_21498FA70();
}

uint64_t sub_2149364FC()
{
  v1[12] = v0;
  v2 = sub_21498E690();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2149365C8, 0, 0);
}

uint64_t sub_2149365C8()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  *(v0 + 136) = v4;
  v5 = *(v3 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "initializeBlockRulesEnabled", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);

  v13 = *(v11 + 8);
  *(v0 + 160) = v13;
  v13(v9, v10);
  v14 = *(v12 + 32);
  v15 = *(v12 + 40);
  *(v0 + 40) = &type metadata for SharedPreferencesAPIRequest.SharedPreferencesAPIRequestPayload;
  *(v0 + 48) = sub_21493E6CC();
  *(v0 + 16) = 1;
  v16 = objc_allocWithZone(type metadata accessor for SharedPreferencesAPIRequest(0));
  sub_2148AA824(v0 + 16, v0 + 56, &qword_27CA1C410, &unk_21499B410);
  v17 = v14;
  v18 = v15;
  v19 = sub_21493B6E4(v14, v18, v0 + 56, &qword_27CA1C638, &unk_21499B510, &qword_27CA1C3C0, &unk_21499A700);
  *(v0 + 168) = v19;

  sub_21489DFCC(v0 + 16, &qword_27CA1C410, &unk_21499B410);
  v20 = swift_task_alloc();
  *(v0 + 176) = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  *(v0 + 184) = v21;
  *v21 = v0;
  v21[1] = sub_214936888;

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493E720, v20, &type metadata for SharedPreferencesAPIResponse);
}

uint64_t sub_214936888()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2149369DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2149369DC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);

  v1(v3, v2, v4);
  v5 = sub_21498E670();
  v6 = sub_21498FBB0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 192);
  v9 = *(v0 + 160);
  v10 = *(v0 + 120);
  v11 = *(v0 + 104);
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "ERROR: Failed to initialize blockRulesEnabled flag", v12, 2u);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  v9(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_214936B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_21498E690();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214936BF4, 0, 0);
}

uint64_t sub_214936BF4()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "saveUnsubscribeRule", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[20];

  (*(v9 + 8))(v8, v10);
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  v0[11] = &type metadata for MAUIWisperUnsubscribeRequestBody;
  v0[12] = sub_21493E678();
  v18 = swift_allocObject();
  v0[8] = v18;
  v18[2] = v14;
  v18[3] = v15;
  v18[4] = v12;
  v18[5] = v13;
  v19 = objc_allocWithZone(type metadata accessor for MAUIWisperUnsubscribeRequest(0));
  sub_2148AA824((v0 + 8), (v0 + 13), &qword_27CA1C410, &unk_21499B410);

  v20 = v16;
  v21 = v17;

  v22 = sub_21493B6E4(v16, v21, (v0 + 13), &qword_27CA1C610, &qword_21499B4F0, &qword_27CA1C3B8, &qword_21499A6F8);
  v0[27] = v22;

  sub_21489DFCC((v0 + 8), &qword_27CA1C410, &unk_21499B410);
  v23 = swift_task_alloc();
  v0[28] = v23;
  *(v23 + 16) = v22;
  v24 = swift_task_alloc();
  v0[29] = v24;
  *v24 = v0;
  v24[1] = sub_214936EDC;

  return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493ECB4, v23, &type metadata for MAUIWisperUnsubscribeResponse);
}

uint64_t sub_214936EDC()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21493702C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21493702C()
{
  v1 = *(v0 + 240);

  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v3 = *(v0 + 32), v4 = *(v0 + 40), , (v4) || (v3 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_21493713C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_21498E690();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214937200, 0, 0);
}

uint64_t sub_214937200()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "removeUnsubscribeRule", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[19];
  v12 = v0[20];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_214991720;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  v0[11] = &type metadata for MAUIWisperRemoveUnsubscribeRequestBody;
  v0[12] = sub_21493E5E4();
  v0[8] = v14;
  v17 = objc_allocWithZone(type metadata accessor for MAUIWisperRemoveUnsubscribeRequest(0));
  sub_2148AA824((v0 + 8), (v0 + 13), &qword_27CA1C410, &unk_21499B410);

  v18 = v15;
  v19 = v16;
  v20 = sub_21493B6E4(v15, v19, (v0 + 13), &qword_27CA1C610, &qword_21499B4F0, &qword_27CA1C3B8, &qword_21499A6F8);
  v0[25] = v20;

  sub_21489DFCC((v0 + 8), &qword_27CA1C410, &unk_21499B410);
  v21 = swift_task_alloc();
  v0[26] = v21;
  *(v21 + 16) = v20;
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = sub_2149374E4;

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493E638, v21, &type metadata for MAUIWisperUnsubscribeResponse);
}

uint64_t sub_2149374E4()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214937634, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214937634()
{
  v1 = *(v0 + 224);

  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v3 = *(v0 + 32), v4 = *(v0 + 40), , (v4) || (v3 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_214937744(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a4;
  *(v6 + 104) = a3;
  *(v6 + 32) = a1;
  return MEMORY[0x2822009F8](sub_214937770, 0, 0);
}

uint64_t sub_214937770()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 104);
  v6 = *(v0 + 32);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = objc_allocWithZone(type metadata accessor for GenericRequestAPIRequest(0));
  v10 = &v9[qword_27CA1BEE0];
  *v10 = v6;
  v10[1] = v3;
  v9[qword_27CA1BEE8] = v5;
  v11 = v8;

  v12 = v7;
  sub_21489B6F8(v4, v2);
  v13 = sub_214925BF4(v7, v11, v4, v2);
  *(v0 + 72) = v13;
  sub_21489B8F0(v4, v2);

  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *(v14 + 16) = v13;
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = sub_21493790C;
  v16 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000025, 0x80000002149A26A0, sub_214925C18, v14, v16);
}

uint64_t sub_21493790C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_214937A98;
  }

  else
  {

    v2 = sub_214937A28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214937A28()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_214937A98()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_214937B00(uint64_t a1, char a2)
{
  *(v3 + 57) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  v4 = sub_21498E690();
  *(v3 + 160) = v4;
  *(v3 + 168) = *(v4 - 8);
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214937BC4, 0, 0);
}

uint64_t sub_214937BC4()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "getInlineTips()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 57);

  v13 = (*(v9 + 8))(v8, v10);
  v14 = sub_21493E404(v13);
  LOBYTE(v9) = v15;
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  *(v0 + 88) = &type metadata for MATipAPIAPIRequestBody;
  *(v0 + 96) = sub_21493E560();
  *(v0 + 64) = v12;
  *(v0 + 72) = v14;
  *(v0 + 80) = v9 & 1;
  v18 = objc_allocWithZone(type metadata accessor for MATipAPIRequest(0));
  sub_2148AA824(v0 + 64, v0 + 104, &qword_27CA1C410, &unk_21499B410);
  v19 = v17;
  v20 = v16;
  v21 = sub_21493B6E4(v16, v19, v0 + 104, &qword_27CA1C5F0, &qword_21499B4D0, &qword_27CA1C3B0, &qword_21499A6F0);
  *(v0 + 184) = v21;

  sub_21489DFCC(v0 + 64, &qword_27CA1C410, &unk_21499B410);
  v22 = swift_task_alloc();
  *(v0 + 192) = v22;
  *(v22 + 16) = v21;
  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *v23 = v0;
  v23[1] = sub_214937E8C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493E5B4, v22, &type metadata for MATipAPIResponse);
}

uint64_t sub_214937E8C()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214938024, 0, 0);
  }

  else
  {
    v3 = *(v2 + 144);

    v4 = *(v2 + 16);
    v5 = *(v2 + 56);
    v8 = *(v2 + 40);
    v9 = *(v2 + 24);

    *v3 = v4;
    *(v3 + 24) = v8;
    *(v3 + 8) = v9;
    *(v3 + 40) = v5;
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_214938024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21493809C(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 57) = a1;
  v3 = sub_21498E690();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214938160, 0, 0);
}

uint64_t sub_214938160()
{
  v25 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateAutomationInlineTip()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 57);

  (*(v9 + 8))(v8, v10);
  v13 = *(v11 + 32);
  v14 = *(v11 + 40);
  v15 = objc_allocWithZone(type metadata accessor for MAUpdateAutomationTipAPIRequest(0));
  v23 = &type metadata for MAUpdateAutomationTipAPIRequestBody;
  v24 = sub_21493BC5C();
  v22[0] = v12;
  v16 = v14;
  v17 = v13;
  v18 = sub_21493B6E4(v13, v16, v22, &qword_27CA1C5D0, &qword_21499B4A8, &qword_27CA1C3A8, &qword_21499B4A0);
  *(v0 + 104) = v18;

  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  *(v19 + 16) = v18;
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_2149383D0;

  return MEMORY[0x2822008A0](v20, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BCB0, v19, &type metadata for MAUpdateAutomationTipAPIResponse);
}

uint64_t sub_2149383D0()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214938520, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214938520()
{
  v1 = *(v0 + 128);

  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v3 = *(v0 + 32), v4 = *(v0 + 40), , (v4) || (v3 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_214938630(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 57) = a1;
  v3 = sub_21498E690();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2149386F4, 0, 0);
}

uint64_t sub_2149386F4()
{
  v25 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateUnsubscribeInlineTip()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 57);

  (*(v9 + 8))(v8, v10);
  v13 = *(v11 + 32);
  v14 = *(v11 + 40);
  v15 = objc_allocWithZone(type metadata accessor for MAUpdateUnsubscribeTipAPIRequest(0));
  v23 = &type metadata for MAUpdateUnsubscribeTipAPIRequestBody;
  v24 = sub_21493BBDC();
  v22[0] = v12;
  v16 = v14;
  v17 = v13;
  v18 = sub_21493B6E4(v13, v16, v22, &qword_27CA1C5B0, &qword_21499B488, &qword_27CA1C3A0, &unk_21499A6E0);
  *(v0 + 104) = v18;

  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  *(v19 + 16) = v18;
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_214938964;

  return MEMORY[0x2822008A0](v20, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BC30, v19, &type metadata for MAUpdateUnsubscribeTipAPIResponse);
}

uint64_t sub_214938964()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21493ECA4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214938AB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 120) = a3;
  *(v4 + 40) = a1;
  v5 = sub_21498E690();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214938B7C, 0, 0);
}

uint64_t sub_214938B7C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "getRecommendations()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 120);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);

  (*(v9 + 8))(v8, v10);
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  v17 = objc_allocWithZone(type metadata accessor for GetRecommendationsAPIRequest(0));
  v18 = &v17[qword_27CA1CA58];
  *v18 = v14;
  v18[1] = v13;
  v17[qword_27CA1CA60] = v12;

  v19 = v15;
  v20 = v16;
  v21 = sub_214925DE0(v15, v20, 0, 0xF000000000000000);
  *(v0 + 88) = v21;

  v22 = swift_task_alloc();
  *(v0 + 96) = v22;
  *(v22 + 16) = v21;
  v23 = swift_task_alloc();
  *(v0 + 104) = v23;
  *v23 = v0;
  v23[1] = sub_214938DF0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BB40, v22, &type metadata for GetRecommendationsAPIResponse);
}

uint64_t sub_214938DF0()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214938F64, 0, 0);
  }

  else
  {

    v3 = *(v2 + 16);
    v5 = *(v2 + 24);
    v4 = *(v2 + 32);

    v6 = *(v2 + 8);

    return v6(v3, v5, v4);
  }
}

uint64_t sub_214938F64()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_214938FE0()
{
  v1[61] = v0;
  v2 = sub_21498E690();
  v1[62] = v2;
  v1[63] = *(v2 - 8);
  v1[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2149390A0, 0, 0);
}

uint64_t sub_2149390A0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "getRecommendationsToReset()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];

  (*(v9 + 8))(v8, v10);
  v11 = MEMORY[0x277D84F90];
  v0[59] = MEMORY[0x277D84F90];
  v0[60] = v11;
  v0[65] = 0;
  v12 = *aInitial;
  v13 = unk_2826C56F0;
  v0[66] = unk_2826C56F0;

  v14 = swift_task_alloc();
  v0[67] = v14;
  *v14 = v0;
  v14[1] = sub_214939260;

  return sub_214938AB4(v12, v13, 2);
}

uint64_t sub_214939260(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 456) = a3;
  *(v7 + 464) = v3;
  *(v7 + 448) = a2;
  *(v7 + 440) = a1;
  *(v7 + 432) = v4;
  *(v7 + 544) = v3;

  if (v3)
  {
    swift_arrayDestroy();

    v8 = sub_21493981C;
  }

  else
  {

    *(v7 + 552) = a3;
    *(v7 + 560) = a2;
    v8 = sub_2149393D8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2149393D8()
{
  v42 = v0;
  v1 = *(v0 + 520);

  sub_2148A8B48(v2);

  sub_2148A8C40(v3);

  if (v1 == 3)
  {
    v40 = MEMORY[0x277D84FA0];
    v4 = *(v0 + 472);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v39 = MEMORY[0x277D84F90];
      while (1)
      {
        v7 = v4 + 32 + 104 * v6;
        v8 = *v7;
        v9 = *(v7 + 32);
        *(v0 + 32) = *(v7 + 16);
        *(v0 + 48) = v9;
        *(v0 + 16) = v8;
        v10 = *(v7 + 48);
        v11 = *(v7 + 64);
        v12 = *(v7 + 80);
        *(v0 + 112) = *(v7 + 96);
        *(v0 + 80) = v11;
        *(v0 + 96) = v12;
        *(v0 + 64) = v10;
        v14 = *(v0 + 16);
        v13 = *(v0 + 24);
        if (*(v40 + 16))
        {
          sub_214990160();
          sub_2148D93C8(v0 + 16, v0 + 120);

          sub_21498F900();
          v15 = sub_214990190();
          v16 = -1 << *(v40 + 32);
          v17 = v15 & ~v16;
          if ((*(v40 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = (*(v40 + 48) + 16 * v17);
              v20 = *v19 == v14 && v19[1] == v13;
              if (v20 || (sub_214990080() & 1) != 0)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v40 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_13;
              }
            }

LABEL_24:
            result = sub_21493BAEC(v0 + 16);
            goto LABEL_25;
          }

LABEL_13:
        }

        else
        {
          sub_2148D93C8(v0 + 16, v0 + 328);
        }

        if (*(v0 + 96) == 0x4C414954494E49 && *(v0 + 104) == 0xE700000000000000 || (sub_214990080() & 1) != 0)
        {
          goto LABEL_24;
        }

        sub_2148D93C8(v0 + 16, v0 + 224);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_2148A962C(0, *(v39 + 2) + 1, 1, v39);
        }

        v22 = *(v39 + 2);
        v21 = *(v39 + 3);
        if (v22 >= v21 >> 1)
        {
          v39 = sub_2148A962C((v21 > 1), v22 + 1, 1, v39);
        }

        *(v39 + 2) = v22 + 1;
        v23 = &v39[104 * v22];
        v24 = *(v0 + 16);
        v25 = *(v0 + 48);
        *(v23 + 3) = *(v0 + 32);
        *(v23 + 4) = v25;
        *(v23 + 2) = v24;
        v26 = *(v0 + 64);
        v27 = *(v0 + 80);
        v28 = *(v0 + 96);
        v23[128] = *(v0 + 112);
        *(v23 + 6) = v27;
        *(v23 + 7) = v28;
        *(v23 + 5) = v26;

        sub_21493BAEC(v0 + 16);
        sub_214974494(&v41, v14, v13);

LABEL_25:
        if (++v6 == v5)
        {

          v35 = v39;
          goto LABEL_33;
        }

        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_33:
    v36 = *(v0 + 440);

    v37 = *(v0 + 480);

    v38 = *(v0 + 8);

    return v38(v36, v35, v37);
  }

  else
  {
    v30 = *(v0 + 520) + 1;
    *(v0 + 520) = v30;
    v31 = &unk_2826C56C8 + 16 * v30;
    v32 = *(v31 + 5);
    *(v0 + 528) = v32;
    v33 = *(v31 + 4);

    v34 = swift_task_alloc();
    *(v0 + 536) = v34;
    *v34 = v0;
    v34[1] = sub_214939260;

    return sub_214938AB4(v33, v32, 2);
  }
}

uint64_t sub_21493981C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_214939884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_21498E690();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493994C, 0, 0);
}

uint64_t sub_21493994C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateUnsubscribeRecommendation()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];

  (*(v9 + 8))(v8, v10);
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  v0[11] = &type metadata for UpdateUnsubscribeRecommendationAPIRequestBody;
  v0[12] = sub_21493BA2C();
  v18 = swift_allocObject();
  v0[8] = v18;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v13;
  v18[5] = v12;
  v19 = objc_allocWithZone(type metadata accessor for UpdateUnsubscribeRecommendationAPIRequest(0));
  sub_2148AA824((v0 + 8), (v0 + 13), &qword_27CA1C410, &unk_21499B410);
  v20 = v16;
  v21 = v17;

  v22 = sub_21493B6E4(v16, v21, (v0 + 13), &qword_27CA1C580, &qword_21499B458, &qword_27CA1C388, &qword_21499B450);
  v0[27] = v22;

  sub_21489DFCC((v0 + 8), &qword_27CA1C410, &unk_21499B410);
  v23 = swift_task_alloc();
  v0[28] = v23;
  *(v23 + 16) = v22;
  v24 = swift_task_alloc();
  v0[29] = v24;
  *v24 = v0;
  v24[1] = sub_214939C2C;

  return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BAC0, v23, &type metadata for UpdateUnsubscribeRecommendationAPIResponse);
}

uint64_t sub_214939C2C()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21493ECA8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214939D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_21498E690();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214939E44, 0, 0);
}

uint64_t sub_214939E44()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateAutomationRecommendation()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];

  (*(v9 + 8))(v8, v10);
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  v0[11] = &type metadata for UpdateAutomationRecommendationAPIRequestBody;
  v0[12] = sub_21493B9AC();
  v18 = swift_allocObject();
  v0[8] = v18;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v13;
  v18[5] = v12;
  v19 = objc_allocWithZone(type metadata accessor for UpdateAutomationRecommendationAPIRequest(0));
  sub_2148AA824((v0 + 8), (v0 + 13), &qword_27CA1C410, &unk_21499B410);
  v20 = v16;
  v21 = v17;

  v22 = sub_21493B6E4(v16, v21, (v0 + 13), &qword_27CA1C560, &qword_21499B438, &qword_27CA1C380, &unk_21499A6C0);
  v0[27] = v22;

  sub_21489DFCC((v0 + 8), &qword_27CA1C410, &unk_21499B410);
  v23 = swift_task_alloc();
  v0[28] = v23;
  *(v23 + 16) = v22;
  v24 = swift_task_alloc();
  v0[29] = v24;
  *v24 = v0;
  v24[1] = sub_214939C2C;

  return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BA00, v23, &type metadata for UpdateAutomationRecommendationAPIResponse);
}

uint64_t sub_21493A124(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_21493A144, 0, 0);
}

uint64_t sub_21493A144()
{
  v1 = v0[10];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = objc_allocWithZone(type metadata accessor for GetPreferencesAPIRequest(0));
  v5 = v2;
  v6 = v3;
  v7 = sub_21492601C(v2, v6, 0, 0xF000000000000000);
  v0[11] = v7;

  v8 = swift_task_alloc();
  v0[12] = v8;
  *(v8 + 16) = v7;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_21493A288;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493B97C, v8, &type metadata for GetPreferencesAPIResponse);
}

uint64_t sub_21493A288()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_21493A3E0;
  }

  else
  {

    v3 = sub_21493A3AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21493A3AC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_21493A3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21493A44C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  v4 = sub_21498E690();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = *(a1 + 176);

  return MEMORY[0x2822009F8](sub_21493A518, 0, 0);
}

uint64_t sub_21493A518()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 120);
    *(v0 + 24) = v1;
    v4 = v2[13];
    v3 = v2[14];
    *(v0 + 32) = v2[12];
    *(v0 + 48) = v4;
    *(v0 + 64) = v3;
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_21493A718;

    return sub_21493A828((v0 + 16));
  }

  else
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = __swift_project_value_buffer(v9, qword_281194E18);
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_21498E670();
    v12 = sub_21498FBB0();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 96);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21488E000, v11, v12, "dismissTip - cancelAction is missing", v17, 2u);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_21493A718()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21493A828(_OWORD *a1)
{
  *(v2 + 16) = v1;
  v4 = sub_21498E690();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  v5 = sub_21498F8C0();
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  v6 = a1[2];
  *(v2 + 80) = a1[1];
  *(v2 + 96) = v6;
  *(v2 + 112) = a1[3];

  return MEMORY[0x2822009F8](sub_21493A964, 0, 0);
}

uint64_t sub_21493A964(uint64_t a1)
{
  v2 = v1[11];
  if (v2)
  {
    v3 = v1[13];
    if (v3)
    {
      v4 = v1[12];

      v5 = sub_21491F750(v4, v3);
      if (v5 == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      v7 = v1[15];
      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = 1;
      v7 = v1[15];
      if (v7)
      {
LABEL_7:
        v8 = v1[8];
        v9 = v1[9];
        v10 = v1[7];
        sub_21498F8B0();
        v7 = sub_21498F880();
        v12 = v11;
        (*(v8 + 8))(v9, v10);
LABEL_17:
        v1[16] = v7;
        v1[17] = v12;
        v26 = swift_task_alloc();
        v1[18] = v26;
        *v26 = v1;
        v26[1] = sub_21493AC08;
        v27 = v1[10];

        return sub_214937744(v27, v2, v6, v7, v12);
      }
    }

    v12 = 0xF000000000000000;
    goto LABEL_17;
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v13 = v1[6];
  v14 = v1[3];
  v15 = v1[4];
  v16 = __swift_project_value_buffer(v14, qword_281194E18);
  (*(v15 + 16))(v13, v16, v14);
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v1[6];
  v21 = v1[3];
  v22 = v1[4];
  if (v19)
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21488E000, v17, v18, "performTipAction - url missing", v23, 2u);
    MEMORY[0x216059AC0](v23, -1, -1);
  }

  (*(v22 + 8))(v20, v21);

  v24 = v1[1];

  return v24();
}

uint64_t sub_21493AC08(uint64_t a1, unint64_t a2)
{
  *(*v3 + 152) = v2;

  if (v2)
  {
    v6 = sub_21493ADB4;
  }

  else
  {
    sub_21489B4F8(a1, a2);
    v6 = sub_21493AD38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21493AD38()
{
  sub_21489B8F0(v0[16], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21493ADB4()
{
  v29 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBB0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  v11 = v0[16];
  if (v9)
  {
    v12 = v0[10];
    v13 = v0[11];
    v24 = v0[17];
    v25 = v0[4];
    v26 = v0[3];
    v27 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_2149079F4(v12, v13, &v28);
    *(v14 + 12) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_21488E000, v7, v8, "performTipAction - url: %s - error: %@", v14, 0x16u);
    sub_21489DFCC(v15, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x216059AC0](v16, -1, -1);
    MEMORY[0x216059AC0](v14, -1, -1);
    sub_21489B8F0(v11, v24);

    (*(v25 + 8))(v27, v26);
  }

  else
  {
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];
    sub_21489B8F0(v0[16], v0[17]);

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[1];

  return v22();
}

double sub_21493B060(uint64_t a1, unint64_t a2)
{
  v54 = a1;
  v4 = sub_21498E690();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = *MEMORY[0x277CB89C8];
  v14 = [*(v2 + 40) propertiesForDataclass_];
  v15 = 0x281190000;
  if (v14)
  {
    v16 = v14;
    v17 = sub_21498F7E0();

    v18 = sub_21498F840();
    v19 = [v18 key];

    v20 = sub_21498F870();
    v22 = v21;

    v55 = *&v20;
    v56 = v22;
    sub_21498FDB0();
    if (*(v17 + 16) && (v23 = sub_214908014(v57), (v24 & 1) != 0))
    {
      sub_21489E614(*(v17 + 56) + 32 * v23, v58);
      sub_21489E5C0(v57);

      v15 = 0x281190000;
      if (swift_dynamicCast())
      {
        v25 = v55;
        goto LABEL_12;
      }
    }

    else
    {

      sub_21489E5C0(v57);
      v15 = 0x281190000uLL;
    }
  }

  if (*(v15 + 3488) != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v5 + 16))(v12, v26, v4);

  v27 = v13;
  v28 = sub_21498E670();
  v29 = sub_21498FB90();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v52 = v10;
    v31 = v15;
    v32 = v30;
    v33 = swift_slowAlloc();
    v57[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_2149079F4(v54, a2, v57);
    *(v32 + 12) = 2080;
    v34 = sub_21498F870();
    v36 = sub_2149079F4(v34, v35, v57);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_21488E000, v28, v29, "Account bag has no value for key: %s in %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v33, -1, -1);
    v37 = v32;
    v15 = v31;
    v10 = v52;
    MEMORY[0x216059AC0](v37, -1, -1);
  }

  (*(v5 + 8))(v12, v4);
  v25 = 1800.0;
LABEL_12:
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v39 = v38;
  v40 = sub_21498F840();
  v41 = [v39 BOOLForKey_];

  if (v41)
  {
    if (*(v15 + 3488) != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v4, qword_281194E18);
    (*(v5 + 16))(v10, v42, v4);
    v43 = sub_21498E670();
    v44 = sub_21498FB90();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21488E000, v43, v44, "Cache is disabled for Mail Cleanup (via UserDefaults). Forcing TTL to 0.", v45, 2u);
      MEMORY[0x216059AC0](v45, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v25 = 0.0;
  }

  if (*(v15 + 3488) != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v4, qword_281194E18);
  v47 = v53;
  (*(v5 + 16))(v53, v46, v4);
  v48 = sub_21498E670();
  v49 = sub_21498FB90();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v25;
    _os_log_impl(&dword_21488E000, v48, v49, "getTimeToLive: %f", v50, 0xCu);
    MEMORY[0x216059AC0](v50, -1, -1);
  }

  (*(v5 + 8))(v47, v4);
  return v25;
}

uint64_t sub_21493B678()
{

  return swift_deallocClassInstance();
}

id sub_21493B6E4(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v34 = a6;
  v35 = a7;
  v31 = a5;
  v30 = a4;
  v8 = v7;
  v32 = a3;
  v33 = a2;
  v10 = sub_21498E350();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_281190E68;
  *&v8[qword_281190E68] = 0;
  v15 = &v8[qword_281190E48];
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 40) = -1;
  *&v8[qword_281190E58] = 5;
  *&v8[qword_281190E30] = 0x3FF0000000000000;
  *&v8[qword_281190E38] = 0x403E000000000000;
  *&v8[qword_281190E50] = 0;
  v16 = &v8[qword_281190E40];
  sub_21498E340();
  v17 = sub_21498E330();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  *v16 = v17;
  v16[1] = v19;
  v20 = *&v8[v14];
  *&v8[v14] = a1;
  v21 = v32;
  v22 = a1;

  v23 = v33;
  *&v8[qword_281190E60] = v33;
  sub_2148AA824(v21, &v36, &qword_27CA1C410, &unk_21499B410);
  if (v37)
  {
    sub_2148970B8(&v36, v40);
    sub_2148970B8(v40, &v36);
    v38 = 0;
    swift_beginAccess();
    v24 = v23;
    sub_21492635C(&v36, v15, v30, v31);
    swift_endAccess();
  }

  else
  {
    v25 = v23;
    sub_21489DFCC(&v36, &qword_27CA1C410, &unk_21499B410);
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  v39.receiver = v8;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, sel_init);
  sub_21489DFCC(v21, &qword_27CA1C410, &unk_21499B410);
  return v27;
}

unint64_t sub_21493B9AC()
{
  result = qword_27CA1C548;
  if (!qword_27CA1C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C548);
  }

  return result;
}

unint64_t sub_21493BA2C()
{
  result = qword_27CA1C568;
  if (!qword_27CA1C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C568);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21493BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_21489B70C(a4, a5);
  }
}

unint64_t sub_21493BBDC()
{
  result = qword_27CA1C598;
  if (!qword_27CA1C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C598);
  }

  return result;
}

unint64_t sub_21493BC5C()
{
  result = qword_27CA1C5B8;
  if (!qword_27CA1C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C5B8);
  }

  return result;
}

uint64_t sub_21493BCDC(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_21498F8C0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_21498DEE0();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_21498E1B0();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_21498E690();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493BEF8, 0, 0);
}

uint64_t sub_21493BEF8()
{
  v62 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[6];
  v7 = __swift_project_value_buffer(v0[18], qword_281194E18);
  v0[25] = v7;
  v8 = *(v2 + 16);
  v0[26] = v8;
  v0[27] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58 = v7;
  v57 = v8;
  (v8)(v1);
  v56 = *(v4 + 16);
  v56(v3, v6, v5);
  v9 = sub_21498E670();
  v10 = sub_21498FBA0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[24];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v17 = v0[13];
  v16 = v0[14];
  if (v11)
  {
    v53 = v0[18];
    v18 = swift_slowAlloc();
    v49 = v10;
    v19 = swift_slowAlloc();
    v61 = v19;
    *v18 = 136315138;
    sub_21493E950(&unk_281192700, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = sub_214990050();
    v51 = v12;
    v22 = v21;
    v55 = *(v16 + 8);
    v55(v15, v17);
    v23 = sub_2149079F4(v20, v22, &v61);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21488E000, v9, v49, "\t- performPostUnsubscribe(url: %s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x216059AC0](v19, -1, -1);
    MEMORY[0x216059AC0](v18, -1, -1);

    v24 = *(v13 + 8);
    v24(v51, v53);
  }

  else
  {

    v55 = *(v16 + 8);
    v55(v15, v17);
    v24 = *(v13 + 8);
    v24(v12, v14);
  }

  v0[28] = v24;
  v48 = v0[23];
  v50 = v0[18];
  v52 = v0[15];
  v54 = v24;
  v25 = v0[13];
  v26 = v0[8];
  v27 = v0[9];
  v28 = v0[6];
  v47 = v0[7];
  v56(v0[16], v28, v25);
  sub_21498DE90();
  sub_21498DE60();
  sub_21498DED0();
  sub_21498F8B0();
  sub_21498F880();
  (*(v26 + 8))(v27, v47);
  sub_21498DEC0();
  v57(v48, v58, v50);
  v56(v52, v28, v25);
  v29 = sub_21498E670();
  v30 = sub_21498FBA0();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[23];
  v33 = v0[18];
  v34 = v0[15];
  v35 = v0[13];
  if (v31)
  {
    v60 = v0[18];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v61 = v37;
    *v36 = 136315138;
    sub_21493E950(&unk_281192700, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v38 = sub_214990050();
    v59 = v32;
    v40 = v39;
    v55(v34, v35);
    v41 = sub_2149079F4(v38, v40, &v61);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_21488E000, v29, v30, "\t\t- sending POST request to %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x216059AC0](v37, -1, -1);
    MEMORY[0x216059AC0](v36, -1, -1);

    v42 = v59;
    v43 = v60;
  }

  else
  {

    v55(v34, v35);
    v42 = v32;
    v43 = v33;
  }

  v54(v42, v43);
  v0[29] = [objc_opt_self() sharedSession];
  v44 = swift_task_alloc();
  v0[30] = v44;
  *v44 = v0;
  v44[1] = sub_21493C4D4;
  v45 = v0[12];

  return MEMORY[0x28211ECF8](v45, 0);
}

uint64_t sub_21493C4D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 248) = a3;
  *(v7 + 256) = v3;

  if (v3)
  {
    v8 = sub_21493C95C;
  }

  else
  {

    sub_21489B4F8(a1, a2);
    v8 = sub_21493C60C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21493C60C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v27 = v1;
    v2 = *(v0 + 248);
    (*(v0 + 208))(*(v0 + 176), *(v0 + 200), *(v0 + 144));
    v3 = v2;
    v4 = sub_21498E670();
    v5 = sub_21498FBD0();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 248);
    v29 = *(v0 + 224);
    v8 = *(v0 + 176);
    v9 = *(v0 + 144);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = *(v0 + 80);
    if (v6)
    {
      v26 = *(v0 + 96);
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = [v27 statusCode];

      _os_log_impl(&dword_21488E000, v4, v5, "\t\t- Response Code(%ld)", v13, 0xCu);
      MEMORY[0x216059AC0](v13, -1, -1);

      v29(v8, v9);
      (*(v11 + 8))(v26, v12);
    }

    else
    {

      v29(v8, v9);
      (*(v11 + 8))(v10, v12);
    }
  }

  else
  {
    (*(v0 + 208))(*(v0 + 168), *(v0 + 200), *(v0 + 144));
    v14 = sub_21498E670();
    v15 = sub_21498FBB0();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 248);
    v18 = *(v0 + 224);
    v19 = *(v0 + 168);
    v20 = *(v0 + 144);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v30 = *(v0 + 80);
    if (v16)
    {
      v28 = *(v0 + 96);
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21488E000, v14, v15, "\t\t- error: Bad Server response", v23, 2u);
      MEMORY[0x216059AC0](v23, -1, -1);

      v18(v19, v20);
      (*(v22 + 8))(v28, v30);
    }

    else
    {

      v18(v19, v20);
      (*(v22 + 8))(v21, v30);
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21493C95C()
{
  v31 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 208);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 256);
    v25 = *(v0 + 144);
    v26 = *(v0 + 160);
    v10 = *(v0 + 88);
    v28 = *(v0 + 224);
    v29 = *(v0 + 96);
    v27 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_214990100();
    v15 = sub_2149079F4(v13, v14, &v30);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_21488E000, v7, v8, "\t\t- ERROR: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);

    v28(v26, v25);
    (*(v10 + 8))(v29, v27);
  }

  else
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 224);
    v18 = *(v0 + 160);
    v19 = *(v0 + 144);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 80);

    v17(v18, v19);
    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_21493CC08(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v3 = sub_21498E1B0();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_21498E690();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493CD8C, 0, 0);
}

void sub_21493CD8C()
{
  v115 = v0;
  v114[1] = *MEMORY[0x277D85DE8];
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v0[20], qword_281194E18);
  v5 = *(v2 + 16);
  v113 = v4;
  v5(v1);
  sub_2148B015C(v3, (v0 + 2));
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  sub_2148B0194(v3);
  v111 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v114[0] = v10;
    *v9 = 136315906;
    v11 = v0[15];
    if (*(v8 + 56))
    {
      v12 = *(v11 + 48);
      v13 = *(v8 + 56);
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v17 = sub_2149079F4(v12, v13, v114);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v18 = *(v11 + 40);
    v19 = v0[15];
    if (v18)
    {
      v20 = *(v19 + 32);
      v21 = v18;
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = sub_2149079F4(v20, v21, v114);

    *(v9 + 14) = v22;
    *(v9 + 22) = 2080;
    v23 = v0[15];
    if (*(v19 + 8))
    {
      v24 = *v23;
      v25 = *(v19 + 8);
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = sub_2149079F4(v24, v25, v114);

    *(v9 + 24) = v26;
    *(v9 + 32) = 2080;
    if (v23[3])
    {
      v27 = *(v0[15] + 16);
      v28 = v23[3];
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = v0[27];
    v31 = v0[20];
    v30 = v0[21];

    v32 = sub_2149079F4(v27, v28, v114);

    *(v9 + 34) = v32;
    _os_log_impl(&dword_21488E000, v6, v7, "\t- performMailtoUnsubscribe(emailParams: { from: %s, to: %s, subject: %s, body: %s })", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v10, -1, -1);
    MEMORY[0x216059AC0](v9, -1, -1);

    v112 = *(v30 + 8);
    v112(v29, v31);
    v5 = v111;
  }

  else
  {
    v14 = v0[27];
    v16 = v0[20];
    v15 = v0[21];

    v112 = *(v15 + 8);
    v112(v14, v16);
  }

  v33 = v0[15];
  v34 = v33[5];
  if (!v34)
  {
    v40 = v0 + 23;
    (v5)(v0[23], v113, v0[20]);
    v41 = sub_21498E670();
    v42 = sub_21498FBB0();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_40;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "\t\t- Missing To address in Mailto Unsubscribe";
LABEL_25:
    _os_log_impl(&dword_21488E000, v41, v42, v44, v43, 2u);
    MEMORY[0x216059AC0](v43, -1, -1);
    goto LABEL_40;
  }

  if (!v33[7])
  {
    v40 = v0 + 24;
    (v5)(v0[24], v113, v0[20]);
    v41 = sub_21498E670();
    v42 = sub_21498FBB0();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_40;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "\t\t- Missing From address in Mailto Unsubscribe";
    goto LABEL_25;
  }

  v35 = v33[4];
  v36 = [objc_allocWithZone(MEMORY[0x277D25850]) init];
  [v36 setType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_214991720;
  v108 = v35;
  *(v37 + 32) = v35;
  *(v37 + 40) = v34;

  v38 = sub_21498F9E0();

  [v36 setTo_];

  v39 = sub_21498F840();
  [v36 setSender_];

  v45 = sub_21498F840();

  [v36 setSubject_];

  v46 = v111;
  v47 = v0[26];
  v48 = v0[20];

  v49 = sub_21498F840();

  [v36 setBody_];

  (v111)(v47, v113, v48);
  v50 = v36;

  v51 = v50;
  v52 = sub_21498E670();
  v53 = sub_21498FBA0();

  if (!os_log_type_enabled(v52, v53))
  {
    v75 = v0[26];
    v76 = v0[20];

    v112(v75, v76);
    goto LABEL_32;
  }

  v54 = v51;
  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v114[0] = v56;
  *v55 = 136315906;
  *(v55 + 4) = sub_2149079F4(v108, v34, v114);
  *(v55 + 12) = 2080;
  v57 = [v54 sender];
  if (!v57)
  {

    __break(1u);
    goto LABEL_46;
  }

  v58 = v57;
  v107 = v56;
  v59 = sub_21498F870();
  v61 = v60;

  v62 = sub_2149079F4(v59, v61, v114);

  *(v55 + 14) = v62;
  *(v55 + 22) = 2080;
  v63 = [v54 subject];

  if (!v63)
  {
LABEL_46:

    __break(1u);
    goto LABEL_47;
  }

  v64 = sub_21498F870();
  v66 = v65;

  v67 = sub_2149079F4(v64, v66, v114);

  *(v55 + 24) = v67;
  *(v55 + 32) = 2080;
  v68 = [v54 body];
  v109 = v54;

  if (!v68)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v69 = v0[26];
  v70 = v0[20];
  v71 = sub_21498F870();
  v73 = v72;

  v74 = sub_2149079F4(v71, v73, v114);

  *(v55 + 34) = v74;
  _os_log_impl(&dword_21488E000, v52, v53, "\t\t- MSSendEmail- Start To: %s From: %s Subject: %s Body: %s", v55, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x216059AC0](v107, -1, -1);
  MEMORY[0x216059AC0](v55, -1, -1);

  v112(v69, v70);
  v46 = v111;
  v51 = v109;
LABEL_32:
  v77 = v0[16];
  v78 = objc_opt_self();
  v0[13] = 0;
  v79 = [v78 sendEmail:v51 playSound:1 timeout:v0 + 13 error:v77 / 1000.0];
  v80 = v0[13];
  if (v79)
  {
    v82 = v0[18];
    v81 = v0[19];
    v83 = v0[17];
    v84 = v79;
    sub_21498E160();
    v85 = v80;

    (*(v82 + 8))(v81, v83);
  }

  else
  {
    v110 = v51;
    v86 = v0[22];
    v87 = v0[20];
    v88 = v80;
    v89 = sub_21498E100();

    swift_willThrow();
    v46(v86, v113, v87);
    v90 = v89;
    v91 = sub_21498E670();
    v92 = sub_21498FBB0();

    v93 = os_log_type_enabled(v91, v92);
    v94 = v0[22];
    v95 = v0[20];
    if (v93)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v114[0] = v97;
      *v96 = 136315138;
      swift_getErrorValue();
      v98 = sub_214990100();
      v100 = sub_2149079F4(v98, v99, v114);

      *(v96 + 4) = v100;
      _os_log_impl(&dword_21488E000, v91, v92, "\t\t- ERROR: %s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x216059AC0](v97, -1, -1);
      MEMORY[0x216059AC0](v96, -1, -1);
    }

    else
    {
    }

    v112(v94, v95);
    v46 = v111;
    v51 = v110;
  }

  v40 = v0 + 25;
  v46(v0[25], v113, v0[20]);
  v41 = sub_21498E670();
  v101 = sub_21498FBA0();
  if (!os_log_type_enabled(v41, v101))
  {

    v103 = v51;
    goto LABEL_41;
  }

  v102 = swift_slowAlloc();
  *v102 = 0;
  _os_log_impl(&dword_21488E000, v41, v101, "\t\t- MSSendEmail - End", v102, 2u);
  MEMORY[0x216059AC0](v102, -1, -1);

LABEL_40:
  v103 = v41;
LABEL_41:
  v104 = *v40;
  v105 = v0[20];

  v112(v104, v105);

  v106 = v0[1];

  v106();
}

uint64_t sub_21493D94C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_21498E690();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v2[18] = swift_task_alloc();
  v4 = sub_21498E1B0();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493DAC4, 0, 0);
}

uint64_t sub_21493DAC4()
{
  v1 = *(v0 + 80);
  v3 = *v1;
  v2 = v1[1];
  if (*v1 == 1953722224 && v2 == 0xE400000000000000)
  {
    goto LABEL_7;
  }

  if (sub_214990080())
  {
    v1 = *(v0 + 80);
LABEL_7:
    if (!v1[3])
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 128);
      v21 = *(v0 + 96);
      v22 = *(v0 + 104);
      v23 = __swift_project_value_buffer(v21, qword_281194E18);
      (*(v22 + 16))(v20, v23, v21);
      v12 = sub_21498E670();
      v13 = sub_21498FBB0();
      v24 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 128);
      v16 = *(v0 + 96);
      v17 = *(v0 + 104);
      if (!v24)
      {
        goto LABEL_38;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "ERROR: Missing url in post unsubscribe";
      goto LABEL_37;
    }

    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    sub_21498E1A0();
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_21489DFCC(*(v0 + 144), &qword_27CA1A348, &qword_214991700);
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 136);
      v9 = *(v0 + 96);
      v10 = *(v0 + 104);
      v11 = __swift_project_value_buffer(v9, qword_281194E18);
      (*(v10 + 16))(v8, v11, v9);
      v12 = sub_21498E670();
      v13 = sub_21498FBB0();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 136);
      v16 = *(v0 + 96);
      v17 = *(v0 + 104);
      if (!v14)
      {
        goto LABEL_38;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "ERROR: Unsable to parse url for post unsubscribe";
LABEL_37:
      _os_log_impl(&dword_21488E000, v12, v13, v19, v18, 2u);
      MEMORY[0x216059AC0](v18, -1, -1);
LABEL_38:

      (*(v17 + 8))(v15, v16);

      v46 = *(v0 + 8);

      return v46();
    }

    (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
    v33 = swift_task_alloc();
    *(v0 + 176) = v33;
    *v33 = v0;
    v33[1] = sub_21493E0A0;
    v34 = *(v0 + 168);

    return sub_21493BCDC(v34);
  }

  v25 = v3 == 0x6F746C69616DLL && v2 == 0xE600000000000000;
  if (!v25 && (sub_214990080() & 1) == 0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 104);
    v41 = *(v0 + 112);
    v43 = *(v0 + 96);
    v44 = __swift_project_value_buffer(v43, qword_281194E18);
    (*(v42 + 16))(v41, v44, v43);
    v12 = sub_21498E670();
    v13 = sub_21498FBB0();
    v45 = os_log_type_enabled(v12, v13);
    v17 = *(v0 + 104);
    v15 = *(v0 + 112);
    v16 = *(v0 + 96);
    if (!v45)
    {
      goto LABEL_38;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "ERROR: Unsupported unsubscribe link";
    goto LABEL_37;
  }

  v26 = *(v0 + 80);
  v27 = *(v26 + 40);
  if (v27 == 1)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 120);
    v29 = *(v0 + 96);
    v30 = *(v0 + 104);
    v31 = __swift_project_value_buffer(v29, qword_281194E18);
    (*(v30 + 16))(v28, v31, v29);
    v12 = sub_21498E670();
    v13 = sub_21498FBB0();
    v32 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    if (!v32)
    {
      goto LABEL_38;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "ERROR: Email Params Hash is missing for mailto unsubscribe";
    goto LABEL_37;
  }

  v36 = *(v26 + 32);
  v37 = *(v26 + 48);
  v38 = *(v26 + 80);
  *(v0 + 48) = *(v26 + 64);
  *(v0 + 64) = v38;
  *(v0 + 32) = v37;
  *(v0 + 16) = v36;
  *(v0 + 24) = v27;
  v39 = swift_task_alloc();
  *(v0 + 184) = v39;
  *v39 = v0;
  v39[1] = sub_21493E258;
  v40 = *(v0 + 88);

  return sub_21493CC08(v0 + 16, v40);
}

uint64_t sub_21493E0A0()
{

  return MEMORY[0x2822009F8](sub_21493E19C, 0, 0);
}

uint64_t sub_21493E19C()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21493E258()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21493E404(uint64_t a1)
{
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v2 = v1;
  v3 = sub_21498F840();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_21498FD40();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = 0;
      v6 = v12;
      goto LABEL_9;
    }
  }

  else
  {
    sub_21489DFCC(v15, &qword_27CA1B878, qword_214996678);
  }

  v6 = 0;
  v5 = 1;
LABEL_9:
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v8 = v7;
  v9 = sub_21498F840();
  v10 = [v8 BOOLForKey_];

  if ((v5 | v10))
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_21493E560()
{
  result = qword_281191548;
  if (!qword_281191548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191548);
  }

  return result;
}

unint64_t sub_21493E5E4()
{
  result = qword_27CA1C5F8;
  if (!qword_27CA1C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C5F8);
  }

  return result;
}

uint64_t sub_21493E668(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    return sub_21489B4F8(a1, a2);
  }
}

unint64_t sub_21493E678()
{
  result = qword_27CA1C618;
  if (!qword_27CA1C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C618);
  }

  return result;
}

unint64_t sub_21493E6CC()
{
  result = qword_27CA1C620;
  if (!qword_27CA1C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C620);
  }

  return result;
}

unint64_t sub_21493E758()
{
  result = qword_27CA1C648;
  if (!qword_27CA1C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C648);
  }

  return result;
}

uint64_t sub_21493E7AC(uint64_t *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2149363B4(a1, v1 + v4, v5);
}

uint64_t sub_21493E854(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);

  return sub_2149364A8(a1);
}

uint64_t sub_21493E8EC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_21489B4F8(a2, a3);
  }
}

uint64_t sub_21493E950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21493E998()
{
  result = qword_27CA1C698;
  if (!qword_27CA1C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C698);
  }

  return result;
}

uint64_t sub_21493EA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_21493EAE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_21489B70C(a2, a3);
  }
}

uint64_t objectdestroyTm_3(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_21493ECD0(uint64_t a1)
{
  sub_21498F900();
}

unint64_t sub_21493EDEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214941CCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21493EE1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  v5 = 0xEC0000006E6F6974;
  v6 = 0x656C706D6F436E6FLL;
  if (v2 != 5)
  {
    v6 = 2036625250;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE900000000000073;
  v8 = 0x7365636375536E6FLL;
  if (v2 != 3)
  {
    v8 = 0x726F7272456E6FLL;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x646F6874656DLL;
  if (v2 != 1)
  {
    v10 = 0x6D6F437469617761;
    v9 = 0xEF6E6F6974656C70;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_21493EF00()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x656C706D6F436E6FLL;
  if (v1 != 5)
  {
    v3 = 2036625250;
  }

  v4 = 0x7365636375536E6FLL;
  if (v1 != 3)
  {
    v4 = 0x726F7272456E6FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x646F6874656DLL;
  if (v1 != 1)
  {
    v5 = 0x6D6F437469617761;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21493EFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214941CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21493F008(uint64_t a1)
{
  v2 = sub_214941AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21493F044(uint64_t a1)
{
  v2 = sub_214941AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21493F080(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21498E690();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v3[9] = swift_task_alloc();
  v5 = sub_21498E1B0();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v3[12] = *(v6 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493F224, 0, 0);
}

uint64_t sub_21493F224()
{
  v44 = v0;
  v1 = sub_21498E8F0();
  v2 = v0[9];
  v4 = v3;
  v6 = v0[10];
  v5 = v0[11];
  v42 = v1;
  sub_21498E1A0();
  if ((*(v5 + 48))(v2, 1, v6) == 1)
  {
    sub_21489DFCC(v0[9], &qword_27CA1A348, &qword_214991700);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v10 = __swift_project_value_buffer(v9, qword_281194E18);
    (*(v8 + 16))(v7, v10, v9);

    v11 = sub_21498E670();
    v12 = sub_21498FBB0();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136315138;
      v19 = sub_2149079F4(v42, v4, &v43);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_21488E000, v11, v12, "HTTP Request Action: not url: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    else
    {
    }

    (*(v15 + 8))(v14, v16);
    sub_21498FA20();
    sub_21498FA20();
  }

  else
  {
    v21 = v0[13];
    v20 = v0[14];
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[10];
    v25 = v0[8];
    v38 = v0[4];
    v39 = v25;
    v40 = v20;
    v41 = v0[3];
    v37 = v0[2];
    v35 = v21;
    v36 = *(v23 + 32);
    v36(v20, v0[9], v24);
    v26 = sub_21498FAE0();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    (*(v23 + 16))(v21, v20, v24);
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v28 = (v22 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v36(v31 + v27, v35, v24);
    *(v31 + v28) = v38;
    *(v31 + v29) = v37;
    v32 = (v31 + v30);
    *v32 = v42;
    v32[1] = v4;
    *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v41;

    sub_214926978(0, 0, v39, &unk_21499B728, v31);

    (*(v23 + 8))(v40, v24);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_21493F6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v14;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v9 = sub_21498EDC0();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v8[23] = swift_task_alloc();
  v10 = sub_21498E1B0();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v11 = sub_21498E690();
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493F8B0, 0, 0);
}

uint64_t sub_21493F8B0()
{
  v58 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[13];
  v8 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[32] = v8;
  v9 = *(v3 + 16);
  v0[33] = v9;
  v0[34] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = *(v6 + 16);
  v0[35] = v10;
  v0[36] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v7, v5);
  v11 = sub_21498E670();
  v12 = sub_21498FBD0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[31];
  v16 = v0[28];
  v15 = v0[29];
  v17 = v0[27];
  v19 = v0[24];
  v18 = v0[25];
  if (v13)
  {
    v56 = v0[28];
    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v20 = 136315138;
    sub_214941B6C(&unk_281192700, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = sub_214990050();
    v54 = v14;
    v23 = v22;
    v53 = v12;
    v24 = *(v18 + 8);
    v24(v17, v19);
    v25 = sub_2149079F4(v21, v23, &v57);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_21488E000, v11, v53, "HTTP Request Action: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x216059AC0](v55, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v26 = *(v15 + 8);
    v26(v54, v56);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v19);
    v26 = *(v15 + 8);
    v26(v14, v16);
  }

  v0[37] = v26;
  v0[38] = v24;
  v27 = v0[23];
  sub_2148AA824(v0[14] + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_method, v27, &qword_27CA1A800, &unk_214993100);
  v28 = sub_21498E900();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_21489DFCC(v0[23], &qword_27CA1A800, &unk_214993100);
    v30 = 1;
  }

  else
  {
    v31 = sub_21498E8F0();
    v33 = v32;
    (*(v29 + 8))(v0[23], v28);
    v34 = sub_21491F750(v31, v33);
    if (v34 == 4)
    {
      v30 = 1;
    }

    else
    {
      v30 = v34;
    }
  }

  v35 = v0[22];
  sub_2148AA824(v0[14] + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_jsonBody, v35, &qword_27CA1A808, &unk_21499B730);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_21489DFCC(v0[22], &qword_27CA1A808, &unk_21499B730);
    v38 = 0;
    v39 = 0xF000000000000000;
  }

  else
  {
    sub_2148B4A4C();
    sub_21498E750();
    (*(v37 + 8))(v0[22], v36);
    v51 = v0[9];
    sub_21498DF70();
    swift_allocObject();
    sub_21498DF60();
    v0[12] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D0, &qword_2149933D0);
    sub_2148B4AC8();
    v38 = sub_21498DF50();
    v39 = v52;
  }

  v0[39] = v38;
  v0[40] = v39;
  v40 = v0[14];
  v41 = *(v40 + 16);
  v42 = *(v40 + 24);

  if ((v42 & 1) == 0)
  {
    v43 = v0[20];
    v44 = v0[21];
    v45 = v0[19];

    sub_21498FBC0();
    v46 = sub_21498EFC0();
    sub_21498E5A0();

    sub_21498EDB0();
    swift_getAtKeyPath();

    (*(v43 + 8))(v44, v45);

    v41 = v0[10];
  }

  sub_2148994D0(v41 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository, (v0 + 2));

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v47 = swift_task_alloc();
  v0[41] = v47;
  *v47 = v0;
  v47[1] = sub_214940244;
  v49 = v0[16];
  v48 = v0[17];

  return sub_214937744(v49, v48, v30, v38, v39);
}

uint64_t sub_214940244(uint64_t a1, unint64_t a2)
{
  *(*v3 + 336) = v2;

  if (v2)
  {
    v6 = sub_214940470;
  }

  else
  {
    sub_21489B4F8(a1, a2);
    v6 = sub_214940374;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_214940374()
{
  v1 = v0[39];
  v2 = v0[40];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_21498FA20();
  sub_21498FA20();
  sub_21489B8F0(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_214940470()
{
  v34 = v0;
  sub_21489B8F0(v0[39], v0[40]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v32 = v0[42];
  v0[11] = v32;
  v30 = v0[35];
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[24];
  v7 = v0[13];
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  sub_21498FE70();
  v28 = v0[7];
  v8 = v0[8];
  v1(v3, v2, v4);
  v30(v5, v7, v6);

  v9 = sub_21498E670();
  LOBYTE(v2) = sub_21498FBB0();

  v29 = v2;
  v10 = os_log_type_enabled(v9, v2);
  v11 = v0[37];
  v12 = v0[30];
  v31 = v0[38];
  v13 = v0[28];
  v14 = v0[26];
  v15 = v0[24];
  if (v10)
  {
    v27 = v0[28];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315394;
    sub_214941B6C(&unk_281192700, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v25 = v12;
    v26 = v11;
    v18 = sub_214990050();
    v20 = v19;
    v31(v14, v15);
    v21 = sub_2149079F4(v18, v20, &v33);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_2149079F4(v28, v8, &v33);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_21488E000, v9, v29, "Network request failed with url: %s | Error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v17, -1, -1);
    MEMORY[0x216059AC0](v16, -1, -1);

    v26(v25, v27);
  }

  else
  {

    v31(v14, v15);
    v11(v12, v13);
  }

  sub_21498FA20();
  sub_21498FA20();

  v23 = v0[1];

  return v23();
}

uint64_t *sub_214940828(void *a1)
{
  v3 = v1;
  v77 = *v3;
  v78 = v2;
  v73 = sub_21498E890();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v74 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v64 - v9;
  v11 = sub_21498E900();
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v76 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C708, &qword_21499B740);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v64 - v15;
  v3[2] = swift_getKeyPath();
  *(v3 + 24) = 0;
  v17 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_214941AB4();
  v18 = v78;
  sub_2149901B0();
  if (v18)
  {

LABEL_4:
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v79);
    return v3;
  }

  v78 = v14;
  LOBYTE(v80[0]) = 0;
  sub_214941B6C(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v19 = v76;
  sub_21498FFA0();
  (*(v75 + 32))(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_urlReference, v19, v11);
  LOBYTE(v80[0]) = 1;
  sub_21498FF40();
  v68 = v11;
  sub_2148B4C68(v10, v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_method, &qword_27CA1A800, &unk_214993100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  LOBYTE(v80[0]) = 6;
  sub_214941B08();
  v21 = v72;
  v67 = 0;
  sub_21498FF40();
  v22 = v78;
  sub_2148B4C68(v21, v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_jsonBody, &qword_27CA1A808, &unk_21499B730);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
  LOBYTE(v81) = 3;
  v24 = sub_2148AAA9C();
  sub_21498FF40();
  v76 = 0;
  v64[1] = v24;
  v64[2] = v23;
  v65 = v16;
  v66 = v13;
  if (*&v80[0])
  {
    v25 = *&v80[0];
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);
  if (v26)
  {
    v81 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v26, 0);
    v27 = v81;
    v72 = *(v71 + 16);
    v28 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v64[0] = v25;
    v29 = v25 + v28;
    v30 = *(v71 + 72);
    v69 = v71 + 16;
    v70 = v30;
    v31 = (v71 + 8);
    v33 = v73;
    v32 = v74;
    v34 = v75;
    do
    {
      (v72)(v32, v29, v33);
      sub_21498E880();
      (*v31)(v32, v33);
      v81 = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2148A9BD8((v35 > 1), v36 + 1, 1);
        v27 = v81;
      }

      *(v27 + 16) = v36 + 1;
      sub_2148970B8(v80, v27 + 40 * v36 + 32);
      v29 += v70;
      --v26;
      v33 = v73;
      v32 = v74;
    }

    while (v26);

    v22 = v78;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    v33 = v73;
    v32 = v74;
    v34 = v75;
  }

  *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onSuccessActions) = v27;
  LOBYTE(v81) = 4;
  v37 = v65;
  v38 = v66;
  v39 = v76;
  sub_21498FF40();
  v76 = v39;
  if (v39)
  {
    (*(v22 + 8))(v37, v38);
    v40 = 0;
    goto LABEL_36;
  }

  if (*&v80[0])
  {
    v41 = *&v80[0];
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v42 = *(v41 + 16);
  if (v42)
  {
    v81 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v42, 0);
    v43 = v81;
    v75 = *(v71 + 16);
    v44 = *(v71 + 80);
    v69 = v41;
    v70 = v71 + 16;
    v45 = v41 + ((v44 + 32) & ~v44);
    v72 = *(v71 + 72);
    v46 = (v71 + 8);
    do
    {
      (v75)(v32, v45, v33);
      sub_21498E880();
      (*v46)(v32, v33);
      v81 = v43;
      v48 = *(v43 + 16);
      v47 = *(v43 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_2148A9BD8((v47 > 1), v48 + 1, 1);
        v43 = v81;
      }

      *(v43 + 16) = v48 + 1;
      sub_2148970B8(v80, v43 + 40 * v48 + 32);
      v33 = v73;
      v45 += v72;
      --v42;
      v32 = v74;
    }

    while (v42);

    v22 = v78;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onErrorActions) = v43;
  LOBYTE(v81) = 5;
  v49 = v65;
  v50 = v66;
  v51 = v76;
  sub_21498FF40();
  v76 = v51;
  if (v51)
  {
    (*(v22 + 8))(v49, v50);
    v40 = 1;
LABEL_36:
    v53 = v67;
    v52 = v68;

    (*(v34 + 8))(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_urlReference, v52);
    if (!v53)
    {
      sub_21489DFCC(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_method, &qword_27CA1A800, &unk_214993100);
    }

    sub_21489DFCC(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_jsonBody, &qword_27CA1A808, &unk_21499B730);

    if (v40)
    {
    }

    goto LABEL_4;
  }

  if (*&v80[0])
  {
    v54 = *&v80[0];
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v55 = *(v54 + 16);
  if (v55)
  {
    v81 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v55, 0);
    v56 = v81;
    v57 = *(v71 + 16);
    v58 = *(v71 + 80);
    v75 = v54;
    v59 = v54 + ((v58 + 32) & ~v58);
    v77 = *(v71 + 72);
    v60 = (v71 + 8);
    v71 += 16;
    do
    {
      v61 = v74;
      v57(v74, v59, v33);
      sub_21498E880();
      (*v60)(v61, v33);
      v81 = v56;
      v63 = *(v56 + 16);
      v62 = *(v56 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_2148A9BD8((v62 > 1), v63 + 1, 1);
        v56 = v81;
      }

      *(v56 + 16) = v63 + 1;
      sub_2148970B8(v80, v56 + 40 * v63 + 32);
      v59 += v77;
      --v55;
      v33 = v73;
    }

    while (v55);
    (*(v78 + 8))(v65, v66);
  }

  else
  {

    (*(v22 + 8))(v49, v50);
    v56 = MEMORY[0x277D84F90];
  }

  *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onCompletionActions) = v56;
  __swift_destroy_boxed_opaque_existential_1(v79);
  return v3;
}

uint64_t sub_214941348()
{

  v1 = OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_urlReference;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_method, &qword_27CA1A800, &unk_214993100);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_jsonBody, &qword_27CA1A808, &unk_21499B730);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MAHttpRequestAction(uint64_t a1)
{
  result = qword_27CA1C6E8;
  if (!qword_27CA1C6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2149414B0(uint64_t a1)
{
  sub_21498E900();
  if (v1 <= 0x3F)
  {
    sub_2149415D0(319);
    if (v2 <= 0x3F)
    {
      sub_214941628(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2149415D0(uint64_t a1)
{
  if (!qword_27CA1A828)
  {
    sub_21498E900();
    v1 = sub_21498FCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1A828);
    }
  }
}

void sub_214941628(uint64_t a1)
{
  if (!qword_27CA1A830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A838, &qword_21499B640);
    v1 = sub_21498FCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1A830);
    }
  }
}

uint64_t sub_21494168C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return sub_21493F080(a1, a2);
}

uint64_t *sub_21494185C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_214940828(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_214941944(uint64_t a1)
{
  v3 = *(sub_21498E1B0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_214899138;

  return sub_21493F6A0(a1, v8, v9, v1 + v4, v10, v11, v12, v13);
}

unint64_t sub_214941AB4()
{
  result = qword_27CA1C710;
  if (!qword_27CA1C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C710);
  }

  return result;
}

unint64_t sub_214941B08()
{
  result = qword_27CA1A928;
  if (!qword_27CA1A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A838, &qword_21499B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A928);
  }

  return result;
}

uint64_t sub_214941B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_214941BC8()
{
  result = qword_27CA1C718;
  if (!qword_27CA1C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C718);
  }

  return result;
}

unint64_t sub_214941C20()
{
  result = qword_27CA1C720;
  if (!qword_27CA1C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C720);
  }

  return result;
}

unint64_t sub_214941C78()
{
  result = qword_27CA1C728;
  if (!qword_27CA1C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C728);
  }

  return result;
}

unint64_t sub_214941CCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_214941D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214941D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_214941E20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214941E68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214941ED4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C758, &qword_21499BB00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149437E4();
  sub_2149901C0();
  v8[15] = 0;
  sub_214990000();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_21498FFC0();
  v8[13] = 2;
  sub_214990000();
  v8[12] = 3;
  sub_214990000();
  v8[11] = 4;
  sub_214990000();
  v8[10] = 5;
  sub_214990000();
  v8[9] = 6;
  sub_214990010();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2149420F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C740, &qword_21499BAF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214943728();
  sub_2149901C0();
  v15 = 0;
  sub_214990000();
  if (!v2)
  {
    v14 = 1;
    sub_21498FFC0();
    v13 = 2;
    sub_21498FFC0();
    v12 = 3;
    sub_21498FFC0();
    v11 = *(v3 + 64);
    v10[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_2148F6A8C(&qword_281190CF8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_21498FFE0();
    v10[14] = 5;
    sub_21498FFC0();
    v10[13] = 6;
    sub_214990000();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_21494238C()
{
  v1 = *v0;
  v2 = 0x6E6569736E617274;
  v3 = 0x737574617473;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 6645601;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x79726F6765746163;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21494246C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214942784(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214942494(uint64_t a1)
{
  v2 = sub_2149437E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149424D0(uint64_t a1)
{
  v2 = sub_2149437E4();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_21494250C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2149429D8(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_214942584()
{
  v1 = *v0;
  v2 = 0x6E6569736E617274;
  v3 = 0x6E6F69746361;
  if (v1 != 5)
  {
    v3 = 0x737574617473;
  }

  if (v1 != 3)
  {
    v2 = 0x69726F6765746163;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21494266C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214942F2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214942694(uint64_t a1)
{
  v2 = sub_214943728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149426D0(uint64_t a1)
{
  v2 = sub_214943728();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_21494270C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_214943180(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_214942784(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1110 == a2 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEB00000000644974 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_214990080() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002149A2D60 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_214990080();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2149429D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C748, &qword_21499BAF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149437E4();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44[0]) = 0;
  v9 = sub_21498FF60();
  v36 = v10;
  LOBYTE(v44[0]) = 1;
  *&v35 = sub_21498FF20();
  *(&v35 + 1) = v11;
  LOBYTE(v44[0]) = 2;
  v33 = sub_21498FF60();
  v13 = v12;
  LOBYTE(v44[0]) = 3;
  v14 = sub_21498FF60();
  v34 = v15;
  v29 = v14;
  LOBYTE(v44[0]) = 4;
  v32 = 0;
  v28 = sub_21498FF60();
  v31 = v16;
  LOBYTE(v44[0]) = 5;
  v27 = sub_21498FF60();
  v30 = v17;
  v46 = 6;
  v18 = sub_21498FF70();
  (*(v6 + 8))(v8, v5);
  LODWORD(v32) = v18 & 1;
  *&v37 = v9;
  v19 = v36;
  *(&v37 + 1) = v36;
  v38 = v35;
  v20 = *(&v35 + 1);
  *&v39 = v33;
  *(&v39 + 1) = v13;
  *&v40 = v29;
  v21 = v34;
  *(&v40 + 1) = v34;
  *&v41 = v28;
  v22 = v31;
  *(&v41 + 1) = v31;
  *&v42 = v27;
  *(&v42 + 1) = v30;
  v43 = v32;
  sub_2148D93C8(&v37, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44[0] = v9;
  v44[1] = v19;
  v44[2] = v35;
  v44[3] = v20;
  v44[4] = v33;
  v44[5] = v13;
  v44[6] = v29;
  v44[7] = v21;
  v44[8] = v28;
  v44[9] = v22;
  v44[10] = v27;
  v44[11] = v30;
  v45 = v32;
  result = sub_21493BAEC(v44);
  v24 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v24;
  *(a2 + 96) = v43;
  v25 = v38;
  *a2 = v37;
  *(a2 + 16) = v25;
  v26 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v26;
  return result;
}

uint64_t sub_214942F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000002149A2D00 == a2;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002149A2D20 == a2 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002149A2D40 == a2 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEB00000000644974 || (sub_214990080() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_214990080() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_214943180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C730, &unk_21499BAE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214943728();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v46[0]) = 0;
  v9 = sub_21498FF60();
  v11 = v10;
  LOBYTE(v46[0]) = 1;
  v12 = sub_21498FF20();
  *(&v38 + 1) = v13;
  *&v38 = v12;
  LOBYTE(v46[0]) = 2;
  v35 = sub_21498FF20();
  v37 = v14;
  LOBYTE(v46[0]) = 3;
  v15 = sub_21498FF20();
  v36 = v16;
  v33 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  LOBYTE(v39) = 4;
  sub_2148F6A8C(&qword_281190CE8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_21498FF40();
  v31 = 0;
  v32 = v46[0];
  LOBYTE(v46[0]) = 5;
  v30 = sub_21498FF20();
  v34 = v17;
  v57 = 6;
  v18 = sub_21498FF60();
  v19 = *(v6 + 8);
  v20 = v18;
  v31 = v21;
  v19(v8, v5);
  *&v39 = v9;
  *(&v39 + 1) = v11;
  v40 = v38;
  *&v41 = v35;
  v22 = v37;
  *(&v41 + 1) = v37;
  *&v42 = v33;
  v23 = v36;
  *(&v42 + 1) = v36;
  *&v43 = v32;
  *(&v43 + 1) = v30;
  *&v44 = v34;
  v24 = v31;
  *(&v44 + 1) = v20;
  v45 = v31;
  sub_21494377C(&v39, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46[0] = v9;
  v46[1] = v11;
  v47 = v38;
  v48 = v35;
  v49 = v22;
  v50 = v33;
  v51 = v23;
  v52 = v32;
  v53 = v30;
  v54 = v34;
  v55 = v20;
  v56 = v24;
  result = sub_2149437B4(v46);
  v26 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v26;
  *(a2 + 96) = v45;
  v27 = v40;
  *a2 = v39;
  *(a2 + 16) = v27;
  v28 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v28;
  return result;
}

unint64_t sub_214943728()
{
  result = qword_27CA1C738;
  if (!qword_27CA1C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C738);
  }

  return result;
}

unint64_t sub_2149437E4()
{
  result = qword_27CA1C750;
  if (!qword_27CA1C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C750);
  }

  return result;
}

unint64_t sub_21494385C()
{
  result = qword_27CA1C760;
  if (!qword_27CA1C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C760);
  }

  return result;
}

unint64_t sub_2149438B4()
{
  result = qword_27CA1C768;
  if (!qword_27CA1C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C768);
  }

  return result;
}

unint64_t sub_21494390C()
{
  result = qword_27CA1C770;
  if (!qword_27CA1C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C770);
  }

  return result;
}

unint64_t sub_214943964()
{
  result = qword_27CA1C778;
  if (!qword_27CA1C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C778);
  }

  return result;
}

unint64_t sub_2149439BC()
{
  result = qword_27CA1C780;
  if (!qword_27CA1C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C780);
  }

  return result;
}

unint64_t sub_214943A14()
{
  result = qword_27CA1C788[0];
  if (!qword_27CA1C788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA1C788);
  }

  return result;
}

uint64_t sub_214943A74(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_214943AE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_214943C24(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_214943E88(uint64_t a1)
{
  sub_21498EFD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C810, &qword_21499BDB0);
  sub_214944720();
  return sub_21498EB60();
}

__n128 sub_214943F14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C840, &qword_21499BDC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v76 - v6;
  v8 = sub_21498F080();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = *(v12 + 16);
  v16(&v76 - v17, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C848, &unk_21499BDD0);
  if (swift_dynamicCast())
  {
    v19 = v78;
    v18 = v79;
    sub_2148970B8(v89, v91);
    v20 = sub_2149448B4(v91);
    if (v21)
    {
      *&v92 = v20;
      *(&v92 + 1) = v21;
      sub_21489CA00();
      v22 = sub_21498F100();
      v76 = v23;
      v77 = v22;
      v25 = v24;
      v27 = v26;
      (*(v19 + 104))(v11, *MEMORY[0x277CE0A68], v18);
      v28 = *MEMORY[0x277CE0980];
      v29 = sub_21498F020();
      v30 = *(v29 - 8);
      (*(v30 + 104))(v7, v28, v29);
      (*(v30 + 56))(v7, 0, 1, v29);
      sub_21498F040();
      sub_21489DFCC(v7, &qword_27CA1C840, &qword_21499BDC8);
      (*(v19 + 8))(v11, v18);
      v31 = v77;
      v32 = sub_21498F0E0();
      v34 = v33;
      v36 = v35;
      v38 = v37;

      sub_2148C85D4(v31, v25, v27 & 1);

      v39 = sub_21498EFF0();
      LOBYTE(v86) = 0;
      *&v92 = v32;
      *(&v92 + 1) = v34;
      v93.n128_u8[0] = v36 & 1;
      v93.n128_u64[1] = v38;
      v94[0] = v39;
      memset(&v94[8], 0, 32);
      *&v94[40] = 1;
    }

    else
    {
      sub_21498EE40();
      v60 = sub_21498F0F0();
      v62 = v61;
      v64 = v63;
      sub_21498F2A0();
      v65 = sub_21498F0A0();
      v67 = v66;
      v69 = v68;
      v71 = v70;

      sub_2148C85D4(v60, v62, v64 & 1);

      v72 = sub_21498EFF0();
      LOBYTE(v86) = 1;
      *&v92 = v65;
      *(&v92 + 1) = v67;
      v93.n128_u8[0] = v69 & 1;
      v93.n128_u64[1] = v71;
      v94[0] = v72;
      memset(&v94[8], 0, 32);
      *&v94[40] = 257;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C838, &qword_21499BDC0);
    sub_214944830();
    sub_21498EE90();
    v93 = v83;
    *v94 = v84;
    *&v94[16] = v85[0];
    *&v94[26] = *(v85 + 10);
    v92 = v82;
    v81 = 0;
    v94[42] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C828, &qword_21499BDB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C838, &qword_21499BDC0);
    sub_2149447AC();
    sub_214944830();
    sub_21498EE90();
    __swift_destroy_boxed_opaque_existential_1(v91);
    v93 = v87;
    *v94 = v88[0];
    *&v94[16] = v88[1];
    *&v94[27] = *(&v88[1] + 11);
    v92 = v86;
  }

  else
  {
    memset(v89, 0, sizeof(v89));
    v90 = 0;
    sub_21489DFCC(v89, &qword_27CA1C410, &unk_21499B410);
    v16(v15, a1, a2);
    *&v92 = sub_21498F8D0();
    *(&v92 + 1) = v40;
    sub_21489CA00();
    v41 = sub_21498F100();
    v76 = v42;
    v77 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v78;
    v47 = v79;
    (*(v78 + 104))(v11, *MEMORY[0x277CE0A68], v79);
    v49 = *MEMORY[0x277CE0980];
    v50 = sub_21498F020();
    v51 = *(v50 - 8);
    (*(v51 + 104))(v7, v49, v50);
    (*(v51 + 56))(v7, 0, 1, v50);
    sub_21498F040();
    sub_21489DFCC(v7, &qword_27CA1C840, &qword_21499BDC8);
    (*(v48 + 8))(v11, v47);
    v52 = v77;
    v53 = sub_21498F0E0();
    v55 = v54;
    LOBYTE(v48) = v56;
    v58 = v57;

    sub_2148C85D4(v52, v44, v46 & 1);

    v59 = sub_21498EFF0();
    LOBYTE(v92) = v48 & 1;
    LOBYTE(v82) = 1;
    *&v86 = v53;
    *(&v86 + 1) = v55;
    v87.n128_u8[0] = v48 & 1;
    v87.n128_u64[1] = v58;
    LOBYTE(v88[0]) = v59;
    *(v88 + 8) = 0u;
    *(&v88[1] + 8) = 0u;
    BYTE8(v88[2]) = 1;
    BYTE10(v88[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C828, &qword_21499BDB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C838, &qword_21499BDC0);
    sub_2149447AC();
    sub_214944830();
    sub_21498EE90();
  }

  result = v93;
  v74 = *&v94[16];
  v75 = v80;
  *(v80 + 32) = *v94;
  *(v75 + 48) = v74;
  *(v75 + 59) = *&v94[27];
  *v75 = v92;
  *(v75 + 16) = result;
  return result;
}

unint64_t sub_214944720()
{
  result = qword_27CA1C818;
  if (!qword_27CA1C818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C810, &qword_21499BDB0);
    sub_2149447AC();
    sub_214944830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C818);
  }

  return result;
}

unint64_t sub_2149447AC()
{
  result = qword_27CA1C820;
  if (!qword_27CA1C820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C828, &qword_21499BDB8);
    sub_214944830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C820);
  }

  return result;
}

unint64_t sub_214944830()
{
  result = qword_27CA1C830;
  if (!qword_27CA1C830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C838, &qword_21499BDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C830);
  }

  return result;
}

uint64_t sub_2149448B4(void *a1)
{
  v2 = sub_21498F8C0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21498DF30();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21498DF70();
  swift_allocObject();
  sub_21498DF60();
  sub_21498DF20();
  sub_21498DF40();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_21498DF50();
  v6 = v5;
  sub_21498F8B0();
  v7 = sub_21498F890();
  sub_21489B4F8(v4, v6);

  return v7;
}

unint64_t sub_214944A20()
{
  result = qword_27CA1C850;
  if (!qword_27CA1C850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C858, qword_21499BDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C850);
  }

  return result;
}

uint64_t sub_214944A84()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214944ACC()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MATipAPIRequest(0);
  v22.receiver = v0;
  v22.super_class = v5;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD00000000000002ELL, 0x80000002149A2F50, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498DE14();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD000000000000030, 0x80000002149A2F80);

    return v21[0];
  }

  return v7;
}

uint64_t sub_214944E1C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v11[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C8C8, &qword_21499C380);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21494744C();
  sub_2149901C0();
  v13 = 0;
  sub_21498FFD0();
  if (!v4)
  {
    v12 = 1;
    sub_21498FFF0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_214944FB0()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6C416E7275746572;
  }
}

uint64_t sub_214944FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C416E7275746572 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002149A2FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

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

uint64_t sub_2149450E0(uint64_t a1)
{
  v2 = sub_21494744C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21494511C(uint64_t a1)
{
  v2 = sub_21494744C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21494517C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 1936746868;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000002149A0A60;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 1936746868;
  }

  if (*a2)
  {
    v6 = 0x80000002149A0A60;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214990080();
  }

  return v8 & 1;
}

uint64_t sub_214945220()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149452A0(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_21494530C(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214945388@<X0>(char *a2@<X8>)
{
  v3 = sub_21498FEF0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2149453E8(unint64_t *a1@<X8>)
{
  v2 = 0x80000002149A0A60;
  v3 = 1936746868;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_214945424()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1936746868;
  }
}

uint64_t sub_21494545C@<X0>(char *a3@<X8>)
{
  v4 = sub_21498FEF0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2149454C0(uint64_t a1)
{
  v2 = sub_214946EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149454FC(uint64_t a1)
{
  v2 = sub_214946EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214945538(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000002149A0A90;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x80000002149A0A90;
  }

  else
  {
    v6 = 0x80000002149A0AB0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D657449756E656DLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED0000656C746954;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x80000002149A0AB0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6D657449756E656DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED0000656C746954;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_21494561C()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149456D0(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_214945770(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_214945820@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21494659C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_214945850(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C746954;
  v4 = 0xD000000000000010;
  v5 = 0x80000002149A0A90;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000002149A0AB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6D657449756E656DLL;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2149458C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21494659C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2149458E8(uint64_t a1)
{
  v2 = sub_214946F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214945924(uint64_t a1)
{
  v2 = sub_214946F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_214945960@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2149465E8(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_2149459A4()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_2149459EC()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAUpdateAutomationTipAPIRequest(0);
  v22.receiver = v0;
  v22.super_class = v5;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD00000000000003ALL, 0x80000002149A2ED0, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498DE14();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD000000000000032, 0x80000002149A2F10);

    return v21[0];
  }

  return v7;
}

id sub_214945D0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_214945D90(uint64_t a1)
{
  v2 = sub_2149473F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214945DCC(uint64_t a1)
{
  v2 = sub_2149473F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214945E4C()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214945E94()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAUpdateUnsubscribeTipAPIRequest(0);
  v22.receiver = v0;
  v22.super_class = v5;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD00000000000003BLL, 0x80000002149A2E60, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498DE14();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD00000000000002ELL, 0x80000002149A2EA0);

    return v21[0];
  }

  return v7;
}

id sub_21494619C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21498F840();

  return v5;
}

uint64_t sub_21494626C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2149462B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214946310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2149463A0(uint64_t a1)
{
  v2 = sub_2149473A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149463DC(uint64_t a1)
{
  v2 = sub_2149473A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21494645C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v14 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_2149901C0();
  sub_214990010();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_21494659C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2149465E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = sub_21498E690();
  *&v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v56 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C880, &qword_21499BF90);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C888, &qword_21499BF98);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C890, &unk_21499BFA0);
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214946EE8();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v42 = v9;
  v43 = v11;
  v53[0] = 0;
  sub_21498FF00();
  v39 = v12;
  v40 = v14;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  if (sub_214990070())
  {
    v41 = MEMORY[0x277D84F90];
    v17 = v50;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
    *&v16 = 138412290;
    v46 = v16;
    v17 = v50;
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
      sub_2149044E8();
      sub_214990060();
      memcpy(v52, v53, sizeof(v52));
      v19 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2148A9878(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_2148A9878((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v41 = v19;
      memcpy(&v19[384 * v21 + 32], v52, 0x179uLL);
      __swift_project_boxed_opaque_existential_1(v54, v55);
    }

    while ((sub_214990070() & 1) == 0);
  }

  v53[0] = 1;
  sub_214946F3C();
  v18 = v39;
  sub_21498FF10();
  v23 = v44;
  v22 = v45;
  v24 = v47;
  v25 = v43;
  (*(v47 + 56))(v43, 0, 1, v44);
  v26 = v42;
  sub_214946F90(v25, v42);
  if ((*(v24 + 48))(v26, 1, v23) == 1)
  {
    sub_21489DFCC(v26, &qword_27CA1C888, &qword_21499BF98);
    sub_21489DFCC(v25, &qword_27CA1C888, &qword_21499BF98);
    (*(v48 + 8))(v40, v18);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0xE000000000000000;
    v31 = 0xE000000000000000;
  }

  else
  {
    (*(v24 + 32))(v22, v26, v23);
    v53[0] = 0;
    v29 = sub_21498FF60();
    v31 = v33;
    v53[0] = 1;
    v34 = v23;
    v28 = sub_21498FF60();
    v30 = v35;
    v53[0] = 2;
    v36 = sub_21498FF70();
    v56 = (v48 + 8);
    v37 = *(v47 + 8);
    LODWORD(v51) = v36;
    v37(v22, v34);
    sub_21489DFCC(v43, &qword_27CA1C888, &qword_21499BF98);
    (*v56)(v40, v39);
    v27 = v51 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  result = __swift_destroy_boxed_opaque_existential_1(v49);
  *v17 = v41;
  *(v17 + 8) = v29;
  *(v17 + 16) = v31;
  *(v17 + 24) = v28;
  *(v17 + 32) = v30;
  *(v17 + 40) = v27;
  return result;
}

unint64_t sub_214946EE8()
{
  result = qword_281191880;
  if (!qword_281191880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191880);
  }

  return result;
}

unint64_t sub_214946F3C()
{
  result = qword_281191858;
  if (!qword_281191858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191858);
  }

  return result;
}

uint64_t sub_214946F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C888, &qword_21499BF98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MATipAPIAPIRequestBody(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[17])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MATipAPIAPIRequestBody(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedPreferencesAPIRequest.SharedPreferencesAPIRequestPayload(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_214947198()
{
  result = qword_27CA1C898;
  if (!qword_27CA1C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C898);
  }

  return result;
}

unint64_t sub_2149471F0()
{
  result = qword_27CA1C8A0;
  if (!qword_27CA1C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8A0);
  }

  return result;
}

unint64_t sub_214947248()
{
  result = qword_281191860;
  if (!qword_281191860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191860);
  }

  return result;
}

unint64_t sub_2149472A0()
{
  result = qword_281191868;
  if (!qword_281191868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191868);
  }

  return result;
}

unint64_t sub_2149472F8()
{
  result = qword_281191870;
  if (!qword_281191870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191870);
  }

  return result;
}
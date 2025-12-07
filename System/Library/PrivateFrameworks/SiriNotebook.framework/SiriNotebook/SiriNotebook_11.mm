uint64_t sub_2681F5C84()
{
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_26();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {

    v7 = sub_2681F60A0;
  }

  else
  {
    v7 = sub_2681F5D98;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681F5D98()
{
  v28 = v0;
  v1 = v0[10];
  v2 = v0[11];
  OUTLINED_FUNCTION_4_22();
  if (v3)
  {
    (*(v0[12] + 104))(v0[14], *MEMORY[0x277D56150], v2);
    OUTLINED_FUNCTION_4_22();
    if (!v3)
    {
      sub_2681A3C2C(v0[10]);
    }
  }

  else
  {
    (*(v0[12] + 32))(v0[14], v1, v2);
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  sub_2683CE998();
  v26 = type metadata accessor for NotebookDateTimeResolver(0);
  (*(v8 + 16))(v9, v10 + *(v26 + 20), v11);
  (*(v7 + 16))(v4, v5, v6);
  sub_2681F68D8(v9, v4);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v12 = sub_2683CF7E8();
  __swift_project_value_buffer(v12, qword_28027C958);

  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[4];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    v0[2] = v15;
    sub_2683CEB78();
    sub_2681F6BE8();
    v18 = sub_2683D0568();
    v20 = sub_2681610A0(v18, v19, &v27);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2680EB000, v13, v14, "[NotebookDateTimeResolver] Making recommendation for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v21 = v0[6] + *(v26 + 24);
  sub_2683CE7D8();
  v22 = OUTLINED_FUNCTION_2_25();
  v23(v22);

  sub_2681F6380(v21);

  OUTLINED_FUNCTION_40();

  return v24();
}

uint64_t sub_2681F60A0()
{
  v26 = v0;
  __swift_storeEnumTagSinglePayload(v0[10], 1, 1, v0[11]);
  (*(v0[12] + 104))(v0[14], *MEMORY[0x277D56150], v0[11]);
  OUTLINED_FUNCTION_4_22();
  if (!v1)
  {
    sub_2681A3C2C(v0[10]);
  }

  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  sub_2683CE998();
  v24 = type metadata accessor for NotebookDateTimeResolver(0);
  (*(v7 + 16))(v6, v8 + *(v24 + 20), v9);
  (*(v5 + 16))(v2, v3, v4);
  sub_2681F68D8(v6, v2);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v10 = sub_2683CF7E8();
  __swift_project_value_buffer(v10, qword_28027C958);

  v11 = sub_2683CF7C8();
  v12 = sub_2683CFE98();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    v0[2] = v13;
    sub_2683CEB78();
    sub_2681F6BE8();
    v16 = sub_2683D0568();
    v18 = sub_2681610A0(v16, v17, &v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v11, v12, "[NotebookDateTimeResolver] Making recommendation for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v19 = v0[6] + *(v24 + 24);
  sub_2683CE7D8();
  v20 = OUTLINED_FUNCTION_2_25();
  v21(v20);

  sub_2681F6380(v19);

  OUTLINED_FUNCTION_40();

  return v22();
}

uint64_t sub_2681F6380(uint64_t a1)
{
  v1 = sub_2683CF778();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF738();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v9 = sub_2683CF768();
  __swift_project_value_buffer(v9, qword_28027C9A0);
  v10 = sub_2683CF758();
  sub_2683CF788();
  v11 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v10, v11, v14, "NotebookDateTimeResolver#makeRecommendation", v12, v13, 2u);
    MEMORY[0x26D617A40](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2681F660C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2681F669C;

  return sub_26837E8B8();
}

uint64_t sub_2681F669C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  v8 = *v4;
  *v7 = *v4;
  *(v6 + 32) = v9;

  if (v3)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v6 + 40) = a3;

    return MEMORY[0x2822009F8](sub_2681F67E8);
  }
}

uint64_t sub_2681F67E8()
{
  if (*(v0 + 40))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = sub_2683CE978();
    v5 = MEMORY[0x277D56158];
    if (v2 >= 0.0)
    {
      v5 = MEMORY[0x277D56150];
    }

    (*(*(v4 - 8) + 104))(v3, *v5, v4);
    v1 = 0;
  }

  v6 = *(v0 + 16);
  v7 = sub_2683CE978();
  __swift_storeEnumTagSinglePayload(v6, v1, 1, v7);
  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_2681F68D8(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_2683CB528();
  v4 = OUTLINED_FUNCTION_23(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v41 = v6 - v5;
  v7 = sub_2683CB7A8();
  v8 = OUTLINED_FUNCTION_23(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v40 = v10 - v9;
  v39 = sub_2683CE978();
  OUTLINED_FUNCTION_0_3();
  v12 = v11;
  v35 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v38 = v15 - v14;
  v16 = sub_2683CB7D8();
  v17 = OUTLINED_FUNCTION_23(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_3();
  v18 = sub_2683CB668();
  OUTLINED_FUNCTION_0_3();
  v20 = v19;
  v37 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v34 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = *(v20 + 16);
  v36 = a1;
  v28(&v34 - v29, a1, v18);
  v28(v27, a1, v18);
  v28(v24, a1, v18);
  sub_2683CB7C8();
  v30 = v39;
  v31 = v42;
  (*(v12 + 16))(v38, v42, v39);
  sub_2683CB768();
  sub_2683CB508();
  v32 = sub_2683CE988();
  (*(v35 + 8))(v31, v30);
  (*(v37 + 8))(v36, v18);
  return v32;
}

unint64_t sub_2681F6BE8()
{
  result = qword_28024D3E8;
  if (!qword_28024D3E8)
  {
    sub_2683CEB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D3E8);
  }

  return result;
}

uint64_t sub_2681F6C84(uint64_t a1, void *a2)
{
  if (a2[2] && (v3 = a1, sub_2683D0698(), sub_2683556FC(v3), sub_2683CFB48(), , sub_2683D06D8(), OUTLINED_FUNCTION_14_6(), v6 = v5 & ~v4, ((*(a2 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) != 0))
  {
    v7 = ~v4;
    while (1)
    {
      v8 = 0xEC00000073736572;
      v9 = 0x64646120656D6F68;
      switch(*(a2[6] + v6))
      {
        case 1:
          v9 = 0x646461206B726F77;
          v8 = 0xEC00000073736572;
          break;
        case 2:
          v9 = 0xD000000000000010;
          v8 = 0x80000002683FA6A0;
          break;
        case 3:
          v8 = 0xE600000000000000;
          v9 = 0x79627261656ELL;
          break;
        case 4:
          v9 = 0x61206C6F6F686373;
          v8 = 0xEE00737365726464;
          break;
        case 5:
          v10 = 544045415;
          goto LABEL_11;
        case 6:
          v9 = 0x646120726568746FLL;
          v8 = 0xED00007373657264;
          break;
        case 7:
          v10 = 544829025;
LABEL_11:
          v9 = v10 | 0x7264646100000000;
          v8 = 0xEB00000000737365;
          break;
        case 8:
          v9 = 0xD000000000000010;
          v8 = 0x80000002683FA6F0;
          break;
        default:
          break;
      }

      v11 = 0x64646120656D6F68;
      v12 = 0xEC00000073736572;
      switch(v3)
      {
        case 1:
          v11 = 0x646461206B726F77;
          v12 = 0xEC00000073736572;
          break;
        case 2:
          v11 = 0xD000000000000010;
          v12 = 0x80000002683FA6A0;
          break;
        case 3:
          v12 = 0xE600000000000000;
          v11 = 0x79627261656ELL;
          break;
        case 4:
          v11 = 0x61206C6F6F686373;
          v12 = 0xEE00737365726464;
          break;
        case 5:
          v13 = 544045415;
          goto LABEL_21;
        case 6:
          v11 = 0x646120726568746FLL;
          v12 = 0xED00007373657264;
          break;
        case 7:
          v13 = 544829025;
LABEL_21:
          v11 = v13 | 0x7264646100000000;
          v12 = 0xEB00000000737365;
          break;
        case 8:
          v11 = 0xD000000000000010;
          v12 = 0x80000002683FA6F0;
          break;
        default:
          break;
      }

      if (v9 == v11 && v8 == v12)
      {
        break;
      }

      v15 = sub_2683D0598();

      if ((v15 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
        {
          continue;
        }
      }

      return v15 & 1;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_2681F6FC4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_2683D0698();
  sub_2683CFB48();
  sub_2683D06D8();
  OUTLINED_FUNCTION_14_6();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_2683D0598();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_2681F70AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5[2])
  {
    return 0;
  }

  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  sub_2683D06D8();
  v10 = a5 + 7;
  OUTLINED_FUNCTION_14_6();
  v13 = v12 & ~v11;
  if (((*(a5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v11;
  v15 = a5[6];
  while (1)
  {
    v16 = (v15 + 32 * v13);
    v17 = v16[2];
    v18 = v16[3];
    v19 = *v16 == a1 && v16[1] == a2;
    if (v19 || (sub_2683D0598() & 1) != 0)
    {
      v20 = v17 == a3 && v18 == a4;
      if (v20 || (sub_2683D0598() & 1) != 0)
      {
        break;
      }
    }

    v13 = (v13 + 1) & v14;
    if (((*(v10 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2681F71F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_2683D0688();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

void sub_2681F7280()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for InstalledAppProvider(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_14_3();
  v38 = (v8 - v7);
  v9 = sub_2683CF738();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  if (qword_28024C8F8 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_28024C8F8);
  }

  v18 = sub_2683CF768();
  __swift_project_value_buffer(v18, qword_28027C9A0);
  sub_2683CF728();
  v19 = sub_2683CF758();
  v20 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v21 = OUTLINED_FUNCTION_21_5();
    v37 = v3;
    v22 = v21;
    *v21 = 0;
    v23 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v19, v20, v23, "InstalledAppProvider#getApp", "", v22, 2u);
    v1 = v0;
    v3 = v37;
    OUTLINED_FUNCTION_38();
  }

  (*(v11 + 16))(v15, v17, v9);
  sub_2683CF7A8();
  swift_allocObject();
  sub_2683CF798();
  (*(v11 + 8))(v17, v9);
  v24 = sub_2681F77C8(v5, v3);
  v26 = v25;
  v27 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v28 = sub_2681F93B0(v24, v26, 0);
  v29 = sub_2681F7864(v28);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v30 = sub_2683CF7E8();
  __swift_project_value_buffer(v30, qword_28027C958);
  v31 = v38;
  sub_2681F9490(v1, v38);
  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v1;
    v35 = swift_slowAlloc();
    *v35 = 67109376;
    *(v35 + 4) = v29 & 1;
    *(v35 + 8) = 1024;
    v36 = *v31;
    sub_2681F9844(v31);
    *(v35 + 10) = v36;
    _os_log_impl(&dword_2680EB000, v32, v33, "[InstalledAppProvider] isHiddenInternalApp: %{BOOL}d includeHiddenApps:  %{BOOL}d", v35, 0xEu);
    v1 = v34;
    OUTLINED_FUNCTION_38();
  }

  else
  {
    sub_2681F9844(v31);
  }

  if (*v1 & 1) != 0 || ((v29 ^ 1))
  {
    sub_2681F7AE4(v28, 1);
  }

  else
  {
  }

  sub_2681F90AC();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681F77C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2683CFBE8();

  if (v4)
  {
    v5 = sub_2683CFB58();
    v6 = sub_2681F92F0(v5, a1, a2);
    a1 = MEMORY[0x26D616610](v6);
  }

  return a1;
}

void *sub_2681F7864(void *a1)
{
  v2 = sub_2683CF738();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v9 = sub_2683CF768();
  __swift_project_value_buffer(v9, qword_28027C9A0);
  sub_2683CF728();
  v10 = sub_2683CF758();
  v11 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v10, v11, v13, "InstalledAppProvider#isHiddenInternalApp", "", v12, 2u);
    MEMORY[0x26D617A40](v12, -1, -1);
  }

  (*(v3 + 16))(v6, v8, v2);
  sub_2683CF7A8();
  swift_allocObject();
  sub_2683CF798();
  (*(v3 + 8))(v8, v2);
  result = SBSCopyDisplayIdentifiers();
  if (result)
  {
    v15 = result;
    sub_2681F9648(a1);
    v16 = sub_2683CFA68();

    v17 = [v15 containsObject_];

    sub_2681F90AC();

    return (v17 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2681F7AE4(void *a1, int a2)
{
  LODWORD(v2) = a2;
  v76 = a1;
  v3 = sub_2683CB648();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F3E8, &unk_2683DB930);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v67 - v6;
  v7 = sub_2683CF738();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - v12;
  if (qword_28024C8F8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v14 = sub_2683CF768();
    __swift_project_value_buffer(v14, qword_28027C9A0);
    sub_2683CF728();
    v15 = sub_2683CF758();
    v16 = sub_2683CFEF8();
    if (sub_2683CFF88())
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v2 & 1;
      v18 = sub_2683CF718();
      _os_signpost_emit_with_name_impl(&dword_2680EB000, v15, v16, v18, "InstalledAppProvider#makeAnnotatedApp", "Add Supported Intents: %{BOOL}d", v17, 8u);
      MEMORY[0x26D617A40](v17, -1, -1);
    }

    v73 = v2;

    (*(v8 + 16))(v11, v13, v7);
    sub_2683CF7A8();
    swift_allocObject();
    v74 = sub_2683CF798();
    (*(v8 + 8))(v13, v7);
    v19 = [v76 applicationExtensionRecords];
    v20 = sub_268129504(0, &qword_28024F3F0, 0x277CC1E50);
    sub_2681F95E0();
    v13 = sub_2683CFD98();

    v71 = v13;
    v75 = v20;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2683D0098();
      sub_2683CFDB8();
      v13 = v81[1];
      v8 = v81[2];
      v21 = v81[3];
      v22 = v81[4];
      v11 = v81[5];
    }

    else
    {
      v23 = -1 << *(v13 + 32);
      v8 = v13 + 56;
      v21 = ~v23;
      v24 = -v23;
      v25 = v24 < 64 ? ~(-1 << v24) : -1;
      v11 = (v25 & *(v13 + 56));

      v22 = 0;
    }

    v70 = v21;
    v26 = (v21 + 64) >> 6;
    v79 = *MEMORY[0x277CD3858];
    if (v13 < 0)
    {
      break;
    }

LABEL_11:
    v27 = v22;
    v28 = v11;
    v7 = v22;
    if (v11)
    {
LABEL_15:
      v2 = (v28 - 1) & v28;
      v29 = *(*(v13 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v28)))));
      if (v29)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    while (1)
    {
      v7 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v7 >= v26)
      {
        goto LABEL_26;
      }

      v28 = *(v8 + 8 * v7);
      ++v27;
      if (v28)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v30 = sub_2683D00C8();
    if (!v30)
    {
      break;
    }

    v80 = v30;
    swift_dynamicCast();
    v29 = v81[0];
    v7 = v22;
    v2 = v11;
    if (!v81[0])
    {
      break;
    }

LABEL_19:
    v77 = v22;
    v78 = v11;
    v31 = v13;
    v32 = [v29 extensionPointRecord];
    v33 = [v32 identifier];

    v34 = sub_2683CFA78();
    v36 = v35;

    if (v34 == sub_2683CFA78() && v36 == v37)
    {

LABEL_28:
      sub_2681281A4(v31);

      sub_2681F9714(v29);
      goto LABEL_29;
    }

    v39 = sub_2683D0598();

    if (v39)
    {
      goto LABEL_28;
    }

    v22 = v7;
    v11 = v2;
    v13 = v31;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_26:
  sub_2681281A4(v13);

LABEL_29:
  v40 = v76;
  v41 = v72;
  sub_2683CF278();
  sub_2681F9648(v40);
  v42 = sub_2683CF248();
  if ((v73 & 1) == 0)
  {
    goto LABEL_32;
  }

  v43 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 supportedIntents];
    sub_2683CFD98();

LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2683D1EC0;
    type metadata accessor for InstalledAppProvider(0);
    v47 = v67;
    sub_2683CB658();
    sub_2683CB638();
    (*(v68 + 8))(v47, v69);
    v48 = sub_2683CB5C8();
    if (__swift_getEnumTagSinglePayload(v41, 1, v48) == 1)
    {
      sub_2681F96AC(v41);
      v49 = 0xE200000000000000;
      v50 = 28261;
    }

    else
    {
      v50 = sub_2683CB5B8();
      v49 = v51;
      (*(*(v48 - 8) + 8))(v41, v48);
    }

    *(v46 + 32) = v50;
    *(v46 + 40) = v49;
    v52 = sub_2683CFC98();

    v53 = [v40 localizedNameWithPreferredLocalizations_];

    sub_2683CFA78();
    goto LABEL_36;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v55 = sub_2683CF7E8();
  __swift_project_value_buffer(v55, qword_28027C958);
  v56 = v40;
  v57 = sub_2683CF7C8();
  v58 = sub_2683CFE88();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v81[0] = v60;
    *v59 = 136446210;
    v61 = v56;
    v62 = [v61 description];
    v63 = sub_2683CFA78();
    v65 = v64;

    v66 = sub_2681610A0(v63, v65, v81);

    *(v59 + 4) = v66;
    _os_log_impl(&dword_2680EB000, v57, v58, "[InstalledAppProvider] Could not make INAppInfo for %{public}s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x26D617A40](v60, -1, -1);
    MEMORY[0x26D617A40](v59, -1, -1);
  }

  v42 = 0;
LABEL_36:
  sub_2681F90AC();

  return v42;
}

void sub_2681F840C()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for InstalledAppProvider(0);
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = v6;
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2683CF738();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = "InstalledAppProvider#getAllAppsFiltered";
  if (!v2)
  {
    v14 = "InstalledAppProvider#getAllApps";
  }

  v50 = v14;
  if (qword_28024C8F8 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_28024C8F8);
  }

  v15 = sub_2683CF768();
  __swift_project_value_buffer(v15, qword_28027C9A0);
  sub_2683CF728();
  v16 = sub_2683CF758();
  v17 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v18 = OUTLINED_FUNCTION_21_5();
    v49 = v7;
    v19 = v18;
    *v18 = 0;
    v20 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v16, v17, v20, v50, "", v19, 2u);
    v7 = v49;
    OUTLINED_FUNCTION_38();
  }

  v21 = OUTLINED_FUNCTION_10_13();
  v22 = v47;
  v23(v21);
  sub_2683CF7A8();
  swift_allocObject();
  v49 = sub_2683CF798();
  (*(v9 + 8))(v13, v22);
  v24 = [objc_opt_self() enumeratorWithOptions_];
  sub_2681F9490(v0, v7);
  v25 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v26 = swift_allocObject();
  sub_2681F94F4(v7, v26 + v25);
  v52[4] = sub_2681F9558;
  v52[5] = v26;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 1107296256;
  v52[2] = sub_2681F8BD8;
  v52[3] = &block_descriptor_1;
  v27 = _Block_copy(v52);

  [v24 setFilter_];
  _Block_release(v27);
  v51 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = [v24 nextObject];
    if (!v28)
    {
      break;
    }

    v29 = v28;
    if ((!v2 || sub_2681F8C30(v4, v2)) && (v30 = sub_2681F7AE4(v29, 0)) != 0)
    {
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E49B0();
        v51 = v43;
      }

      v39 = *(v51 + 16);
      v38 = *(v51 + 24);
      v47 = v39 + 1;
      v48 = v39;
      if (v39 >= v38 >> 1)
      {
        sub_2682E49B0();
        v51 = v44;
      }

      v40 = v51;
      v41 = v48;
      *(v51 + 16) = v47;
      v42 = (v40 + 32 * v41);
      v42[4] = v34;
      v42[5] = v35;
      v42[6] = v36;
      v42[7] = v37;
    }

    else
    {
    }
  }

  if (v2)
  {
    v45 = 39;
  }

  else
  {
    v45 = 31;
  }

  sub_2681F88BC(v50, v45, 2, v49);

  OUTLINED_FUNCTION_29_0();
}

uint64_t type metadata accessor for InstalledAppProvider(uint64_t a1)
{
  result = qword_28024F400;
  if (!qword_28024F400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681F88BC(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_2683CF778();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CF738();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v13 = sub_2683CF768();
  __swift_project_value_buffer(v13, qword_28027C9A0);
  v14 = sub_2683CF758();
  sub_2683CF788();
  v19 = sub_2683CFEE8();
  result = sub_2683CFF88();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_2683CF7B8();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_2683CF718();
      _os_signpost_emit_with_name_impl(&dword_2680EB000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x26D617A40](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2681F8B98(void *a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2681F7864(a1) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_2681F8BD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

BOOL sub_2681F8C30(uint64_t a1, unint64_t a2)
{
  v5 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 supportedIntents];
    v8 = sub_2683CFD98();

    v9 = sub_2681F6FC4(a1, a2, v8);

    return v9;
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v11 = sub_2683CF7E8();
    __swift_project_value_buffer(v11, qword_28027C958);

    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE78();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2681610A0(a1, a2, &v16);
      _os_log_impl(&dword_2680EB000, v12, v13, "[InstalledAppProvider] cannot create INAppInfo for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x26D617A40](v15, -1, -1);
      MEMORY[0x26D617A40](v14, -1, -1);
    }

    return 0;
  }
}

void sub_2681F8E04()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = sub_2683CF738();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  if (qword_28024C8F8 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_28024C8F8);
  }

  v10 = sub_2683CF768();
  __swift_project_value_buffer(v10, qword_28027C9A0);
  sub_2683CF728();
  v11 = sub_2683CF758();
  v12 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v13 = OUTLINED_FUNCTION_21_5();
    *v13 = 0;
    v14 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v11, v12, v14, "InstalledAppProvider#addSupportedIntents", "", v13, 2u);
    OUTLINED_FUNCTION_38();
  }

  v15 = OUTLINED_FUNCTION_10_13();
  v16(v15);
  sub_2683CF7A8();
  swift_allocObject();
  sub_2683CF798();
  v17 = (*(v5 + 8))(v9, v3);
  MEMORY[0x28223BE20](v17);
  *&v18[-16] = v0;
  sub_26836F868(sub_2681F9828, &v18[-32], v2);
  sub_2681F90AC();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681F9024@<X0>(void *a2@<X8>)
{
  sub_2683CF258();
  sub_2681F7280();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

void sub_2681F90AC()
{
  OUTLINED_FUNCTION_30_0();
  v21 = v0;
  v1 = sub_2683CF778();
  OUTLINED_FUNCTION_0_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v7 = v6 - v5;
  v8 = sub_2683CF738();
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v14 = v13 - v12;
  if (qword_28024C8F8 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_28024C8F8);
  }

  v15 = sub_2683CF768();
  __swift_project_value_buffer(v15, qword_28027C9A0);
  v16 = sub_2683CF758();
  sub_2683CF788();
  v17 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v3 + 88))(v7, v1) == *MEMORY[0x277D85B00])
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v7, v1);
      v18 = "";
    }

    v19 = OUTLINED_FUNCTION_21_5();
    *v19 = 0;
    v20 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v16, v17, v20, v21, v18, v19, 2u);
    OUTLINED_FUNCTION_38();
  }

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681F92F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2683CFB78();
    v3 = sub_2683CFC18();

    return v3;
  }

  return result;
}

id sub_2681F93B0(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2683CFA68();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2683CB388();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2681F9490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstalledAppProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681F94F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstalledAppProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681F9558(void *a1)
{
  v3 = *(type metadata accessor for InstalledAppProvider(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2681F8B98(a1, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2681F95E0()
{
  result = qword_28024F3F8;
  if (!qword_28024F3F8)
  {
    sub_268129504(255, &qword_28024F3F0, 0x277CC1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F3F8);
  }

  return result;
}

uint64_t sub_2681F9648(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_2681F96AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F3E8, &unk_2683DB930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681F9714(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_2681F97AC(uint64_t a1)
{
  result = sub_2683CB668();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2681F9844(uint64_t a1)
{
  v2 = type metadata accessor for InstalledAppProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1)
{

  return swift_once();
}

uint64_t Snippet.SectionHeading.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v6 = (v5 - v4);
  sub_2681F9B38(v1, v5 - v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      memcpy(__dst, v6, sizeof(__dst));
      v8 = *&__dst[8];
      v26 = *__dst;
      v9 = *&__dst[32];
      v10 = *&__dst[40];

      v11 = sub_2683CFAC8();
      v24 = v12;
      v25 = v11;
      if (v10)
      {
        v9 = sub_2683CFAC8();
        v10 = v13;
      }

      v23 = *&__dst[48];
      v14 = *&__dst[64];
      v15 = __dst[72];
      v16 = *&__dst[80];
      v17 = *&__dst[88];
      v18 = __dst[96];
      sub_268151B1C(*&__dst[80], *&__dst[88], __dst[96]);
      sub_268151B3C(0, 0, 255);
      sub_26814F740(__dst);
      *a1 = v26;
      *(a1 + 8) = v8;
      *(a1 + 16) = v25;
      *(a1 + 24) = v24;
      *(a1 + 32) = v9;
      *(a1 + 40) = v10;
      *(a1 + 48) = v23;
      *(a1 + 64) = v14;
      *(a1 + 72) = v15;
      *(a1 + 80) = v16;
      *(a1 + 88) = v17;
      *(a1 + 96) = v18;
      return swift_storeEnumTagMultiPayload();
    case 2u:
      v19 = sub_2683CFAC8();
      v21 = v20;

      *a1 = v19;
      *(a1 + 8) = v21;
      return swift_storeEnumTagMultiPayload();
    case 3u:
      v22 = v6[1];
      *a1 = *v6;
      *(a1 + 8) = v22;
      return swift_storeEnumTagMultiPayload();
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      return sub_2681F9B38(v1, a1);
    default:
      sub_2681F9B9C(v6);
      return sub_2681F9B38(v1, a1);
  }
}

uint64_t type metadata accessor for Snippet.SectionHeading(uint64_t a1)
{
  result = qword_28024F588;
  if (!qword_28024F588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681F9B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.SectionHeading(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681F9B9C(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.SectionHeading(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Snippet.SectionHeading.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v39 = v6;
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v38 = v8 - v7;
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_14();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F410, &qword_2683DB970);
  OUTLINED_FUNCTION_3_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v23 = (&v38 + *(v20 + 56) - v21);
  sub_2681F9B38(a1, &v38 - v21);
  sub_2681F9B38(a2, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2681F9B38(v22, v16);
      memcpy(__dst, v16, 0x61uLL);
      if (OUTLINED_FUNCTION_19_17() == 1)
      {
        memcpy(v43, v23, 0x61uLL);
        memcpy(v42, v16, 0x61uLL);
        memcpy(v41, v23, 0x61uLL);
        v31 = static Snippet.ReminderList.== infix(_:_:)(v42, v41);
        sub_26814F740(v43);
        sub_26814F740(__dst);
        goto LABEL_47;
      }

      sub_26814F740(__dst);
      goto LABEL_43;
    case 2u:
      sub_2681F9B38(v22, v2);
      v25 = *v2;
      v24 = v2[1];
      if (OUTLINED_FUNCTION_19_17() != 2)
      {
        goto LABEL_25;
      }

      if (v25 != *v23 || v24 != v23[1])
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    case 3u:
      sub_2681F9B38(v22, v12);
      v28 = *v12;
      v27 = v12[1];
      if (OUTLINED_FUNCTION_19_17() != 3)
      {
LABEL_25:

        goto LABEL_43;
      }

      if (v28 == *v23 && v27 == v23[1])
      {
LABEL_40:
      }

      else
      {
LABEL_23:
        v30 = sub_2683D0598();

        if ((v30 & 1) == 0)
        {
          sub_2681F9B9C(v22);
          goto LABEL_44;
        }
      }

LABEL_41:
      sub_2681F9B9C(v22);
      v31 = 1;
      break;
    case 4u:
      if (OUTLINED_FUNCTION_19_17() != 4)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 5u:
      if (OUTLINED_FUNCTION_19_17() != 5)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 6u:
      if (OUTLINED_FUNCTION_19_17() != 6)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 7u:
      if (OUTLINED_FUNCTION_19_17() != 7)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 8u:
      if (OUTLINED_FUNCTION_19_17() != 8)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 9u:
      if (OUTLINED_FUNCTION_19_17() != 9)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 0xAu:
      if (OUTLINED_FUNCTION_19_17() != 10)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 0xBu:
      if (OUTLINED_FUNCTION_19_17() != 11)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 0xCu:
      if (OUTLINED_FUNCTION_19_17() != 12)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 0xDu:
      if (OUTLINED_FUNCTION_19_17() != 13)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    default:
      sub_2681F9B38(v22, v18);
      if (OUTLINED_FUNCTION_19_17())
      {
        (*(v39 + 8))(v18, v40);
LABEL_43:
        sub_2681FA074(v22);
LABEL_44:
        v31 = 0;
      }

      else
      {
        v34 = v38;
        v33 = v39;
        v35 = v23;
        v36 = v40;
        (*(v39 + 32))(v38, v35, v40);
        v31 = sub_2683CB4F8();
        v37 = *(v33 + 8);
        v37(v34, v36);
        v37(v18, v36);
LABEL_47:
        sub_2681F9B9C(v22);
      }

      break;
  }

  return v31 & 1;
}

uint64_t sub_2681FA074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F410, &qword_2683DB970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681FA0DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64656767616C66 && a2 == 0xE700000000000000;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1953720684 && a2 == 0xE400000000000000;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746365537473696CLL && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_2683D0598() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79627261656ELL && a2 == 0xE600000000000000;
            if (v10 || (sub_2683D0598() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7365746F6ELL && a2 == 0xE500000000000000;
              if (v11 || (sub_2683D0598() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65754474736170 && a2 == 0xE700000000000000;
                if (v12 || (sub_2683D0598() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
                  if (v13 || (sub_2683D0598() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
                    if (v14 || (sub_2683D0598() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972;
                      if (v15 || (sub_2683D0598() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x736B736174 && a2 == 0xE500000000000000;
                        if (v16 || (sub_2683D0598() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
                          if (v17 || (sub_2683D0598() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6F69746365536F6ELL && a2 == 0xE90000000000006ELL)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_2683D0598();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
    }
  }
}

unint64_t sub_2681FA508(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x64656767616C66;
      break;
    case 3:
      result = 1953720684;
      break;
    case 4:
      result = 0x746365537473696CLL;
      break;
    case 5:
      result = 0x79627261656ELL;
      break;
    case 6:
      v3 = 1702129518;
      goto LABEL_13;
    case 7:
      result = 0x65754474736170;
      break;
    case 8:
      result = 0x73746C75736572;
      break;
    case 9:
      result = 0x656C756465686373;
      break;
    case 10:
      result = 0x7453686372616573;
      break;
    case 11:
      v3 = 1802723700;
LABEL_13:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 12:
      result = 0x7961646F74;
      break;
    case 13:
      result = 0x6F69746365536F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2681FA670(uint64_t a1)
{
  v2 = sub_2681FBFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA6AC(uint64_t a1)
{
  v2 = sub_2681FBFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681FA0DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681FA718(uint64_t a1)
{
  v2 = sub_2681FBB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA754(uint64_t a1)
{
  v2 = sub_2681FBB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA790(uint64_t a1)
{
  v2 = sub_2681FBF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA7CC(uint64_t a1)
{
  v2 = sub_2681FBF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA808(uint64_t a1)
{
  v2 = sub_2681FBF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA844(uint64_t a1)
{
  v2 = sub_2681FBF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA880(uint64_t a1)
{
  v2 = sub_2681FBED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA8BC(uint64_t a1)
{
  v2 = sub_2681FBED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA8F8(uint64_t a1)
{
  v2 = sub_2681FBE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA934(uint64_t a1)
{
  v2 = sub_2681FBE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA970(uint64_t a1)
{
  v2 = sub_2681FBE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA9AC(uint64_t a1)
{
  v2 = sub_2681FBE28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA9E8(uint64_t a1)
{
  v2 = sub_2681FBB88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAA24(uint64_t a1)
{
  v2 = sub_2681FBB88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAA60(uint64_t a1)
{
  v2 = sub_2681FBDD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAA9C(uint64_t a1)
{
  v2 = sub_2681FBDD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAAD8(uint64_t a1)
{
  v2 = sub_2681FBD80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAB14(uint64_t a1)
{
  v2 = sub_2681FBD80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAB50(uint64_t a1)
{
  v2 = sub_2681FBD2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAB8C(uint64_t a1)
{
  v2 = sub_2681FBD2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FABC8(uint64_t a1)
{
  v2 = sub_2681FBCD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAC04(uint64_t a1)
{
  v2 = sub_2681FBCD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAC40(uint64_t a1)
{
  v2 = sub_2681FBC84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAC7C(uint64_t a1)
{
  v2 = sub_2681FBC84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FACB8(uint64_t a1)
{
  v2 = sub_2681FBC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FACF4(uint64_t a1)
{
  v2 = sub_2681FBC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAD30(uint64_t a1)
{
  v2 = sub_2681FBBDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAD6C(uint64_t a1)
{
  v2 = sub_2681FBBDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.SectionHeading.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F418, &qword_2683DB978);
  OUTLINED_FUNCTION_0_38(v2, v131);
  v127[0] = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F420, &qword_2683DB980);
  OUTLINED_FUNCTION_0_38(v6, &__dst[88]);
  v125 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F428, &qword_2683DB988);
  OUTLINED_FUNCTION_0_38(v10, &__dst[56]);
  v123 = v11;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F430, &qword_2683DB990);
  OUTLINED_FUNCTION_0_38(v14, &__dst[64]);
  v124 = v15;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F438, &qword_2683DB998);
  OUTLINED_FUNCTION_0_38(v18, &__dst[16]);
  v122 = v19;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F440, &qword_2683DB9A0);
  OUTLINED_FUNCTION_0_38(v22, &v129[96]);
  v121 = v23;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F448, &qword_2683DB9A8);
  OUTLINED_FUNCTION_0_38(v26, &v129[72]);
  v120 = v27;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F450, &qword_2683DB9B0);
  OUTLINED_FUNCTION_0_38(v30, &v129[48]);
  v119 = v31;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F458, &qword_2683DB9B8);
  OUTLINED_FUNCTION_0_38(v34, &v129[24]);
  v118 = v35;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F460, &qword_2683DB9C0);
  OUTLINED_FUNCTION_0_38(v38, &v129[8]);
  v116 = v39;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F468, &qword_2683DB9C8);
  OUTLINED_FUNCTION_0_38(v42, v128);
  v114 = v43;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F470, &qword_2683DB9D0);
  OUTLINED_FUNCTION_0_38(v46, &v125);
  v109[3] = v47;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F478, &qword_2683DB9D8);
  OUTLINED_FUNCTION_0_38(v50, v127);
  v111 = v51;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v53);
  v54 = sub_2683CB528();
  v55 = OUTLINED_FUNCTION_0_38(v54, &v126);
  v109[5] = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_3();
  v59 = v58 - v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F480, &qword_2683DB9E0);
  OUTLINED_FUNCTION_0_3();
  v109[1] = v61;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v62);
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_14_3();
  v66 = (v65 - v64);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F488, &qword_2683DB9E8);
  OUTLINED_FUNCTION_0_38(v67, &v132);
  v128[1] = v68;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v69);
  v71 = (v109 - v70);
  v72 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681FBB34();
  v127[2] = v71;
  sub_2683D0718();
  sub_2681F9B38(v131[1], v66);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      memcpy(__dst, v66, 0x61uLL);
      v129[0] = 3;
      sub_2681FBED0();
      v98 = v113;
      OUTLINED_FUNCTION_2_26();
      sub_2683D04C8();
      memcpy(v129, __dst, 0x61uLL);
      sub_26814F7E8();
      v99 = v115;
      OUTLINED_FUNCTION_21_12();
      sub_2683D0548();
      OUTLINED_FUNCTION_12_15();
      v100(v98, v99);
      v101 = OUTLINED_FUNCTION_6_24();
      v102(v101, v72);
      return sub_26814F740(__dst);
    case 2u:
      __dst[0] = 4;
      sub_2681FBE7C();
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_16_21(v89);
      v90 = v117;
      OUTLINED_FUNCTION_21_12();
      sub_2683D0518();

      OUTLINED_FUNCTION_12_15();
      v92 = v71;
      v93 = v90;
      goto LABEL_9;
    case 3u:
      __dst[0] = 10;
      sub_2681FBC84();
      OUTLINED_FUNCTION_20_15();
      OUTLINED_FUNCTION_16_21(v94);
      OUTLINED_FUNCTION_21_12();
      sub_2683D0518();

      v92 = OUTLINED_FUNCTION_10_14();
LABEL_9:
      v91(v92, v93);
      goto LABEL_10;
    case 4u:
      __dst[0] = 0;
      sub_2681FBFCC();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v85 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v86 = v60;
      goto LABEL_19;
    case 5u:
      __dst[0] = 2;
      sub_2681FBF24();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v103 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = &v125;
      goto LABEL_18;
    case 6u:
      __dst[0] = 5;
      sub_2681FBE28();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v105 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = &v129[24];
      goto LABEL_18;
    case 7u:
      __dst[0] = 6;
      sub_2681FBDD4();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v97 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = &v129[48];
      goto LABEL_18;
    case 8u:
      __dst[0] = 7;
      sub_2681FBD80();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v107 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = &v129[72];
      goto LABEL_18;
    case 9u:
      __dst[0] = 8;
      sub_2681FBD2C();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v88 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = &v129[96];
      goto LABEL_18;
    case 0xAu:
      __dst[0] = 9;
      sub_2681FBCD8();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v106 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = &__dst[16];
      goto LABEL_18;
    case 0xBu:
      __dst[0] = 11;
      sub_2681FBC30();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v80 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = &__dst[56];
      goto LABEL_18;
    case 0xCu:
      __dst[0] = 12;
      sub_2681FBBDC();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v87 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = &__dst[88];
      goto LABEL_18;
    case 0xDu:
      __dst[0] = 13;
      sub_2681FBB88();
      OUTLINED_FUNCTION_17_13();
      OUTLINED_FUNCTION_2_26();
      v81 = *(v104 - 256);
      sub_2683D04C8();
      v82 = OUTLINED_FUNCTION_6_24();
      v84 = v131;
LABEL_18:
      v86 = *(v84 - 32);
LABEL_19:
      v83(v82, v86);
      OUTLINED_FUNCTION_12_15();
      result = v108(v81, v72);
      break;
    default:
      OUTLINED_FUNCTION_20_15();
      v74 = v110;
      (*(v73 + 32))(v59, v66, v110);
      __dst[0] = 1;
      sub_2681FBF78();
      v75 = v109[4];
      OUTLINED_FUNCTION_16_21(&_s14descr2878F8F29V14SectionHeadingO14DateCodingKeysON);
      OUTLINED_FUNCTION_7_17();
      sub_2681FD5F0(v76, v77, MEMORY[0x277CC9580]);
      v78 = v112;
      OUTLINED_FUNCTION_21_12();
      sub_2683D0548();
      OUTLINED_FUNCTION_12_15();
      v79(v75, v78);
      v71[1](v59, v74);
LABEL_10:
      OUTLINED_FUNCTION_12_15();
      result = v95(v66, v60);
      break;
  }

  return result;
}

unint64_t sub_2681FBB34()
{
  result = qword_28024F490;
  if (!qword_28024F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F490);
  }

  return result;
}

unint64_t sub_2681FBB88()
{
  result = qword_28024F498;
  if (!qword_28024F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F498);
  }

  return result;
}

unint64_t sub_2681FBBDC()
{
  result = qword_28024F4A0;
  if (!qword_28024F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4A0);
  }

  return result;
}

unint64_t sub_2681FBC30()
{
  result = qword_28024F4A8;
  if (!qword_28024F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4A8);
  }

  return result;
}

unint64_t sub_2681FBC84()
{
  result = qword_28024F4B0;
  if (!qword_28024F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4B0);
  }

  return result;
}

unint64_t sub_2681FBCD8()
{
  result = qword_28024F4B8;
  if (!qword_28024F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4B8);
  }

  return result;
}

unint64_t sub_2681FBD2C()
{
  result = qword_28024F4C0;
  if (!qword_28024F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4C0);
  }

  return result;
}

unint64_t sub_2681FBD80()
{
  result = qword_28024F4C8;
  if (!qword_28024F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4C8);
  }

  return result;
}

unint64_t sub_2681FBDD4()
{
  result = qword_28024F4D0;
  if (!qword_28024F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4D0);
  }

  return result;
}

unint64_t sub_2681FBE28()
{
  result = qword_28024F4D8;
  if (!qword_28024F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4D8);
  }

  return result;
}

unint64_t sub_2681FBE7C()
{
  result = qword_28024F4E0;
  if (!qword_28024F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4E0);
  }

  return result;
}

unint64_t sub_2681FBED0()
{
  result = qword_28024F4E8;
  if (!qword_28024F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4E8);
  }

  return result;
}

unint64_t sub_2681FBF24()
{
  result = qword_28024F4F0;
  if (!qword_28024F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4F0);
  }

  return result;
}

unint64_t sub_2681FBF78()
{
  result = qword_28024F4F8;
  if (!qword_28024F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4F8);
  }

  return result;
}

unint64_t sub_2681FBFCC()
{
  result = qword_28024F500;
  if (!qword_28024F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F500);
  }

  return result;
}

uint64_t Snippet.SectionHeading.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v14 = (v13 - v12);
  sub_2681F9B38(v2, v13 - v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      memcpy(__dst, v14, 0x61uLL);
      MEMORY[0x26D617190](3);
      memcpy(v20, __dst, sizeof(v20));
      Snippet.ReminderList.hash(into:)(a1);
      return sub_26814F740(__dst);
    case 2u:
      v19 = 4;
      goto LABEL_9;
    case 3u:
      v19 = 10;
LABEL_9:
      MEMORY[0x26D617190](v19);
      sub_2683CFB48();

    case 4u:
      v18 = 0;
      goto LABEL_17;
    case 5u:
      v18 = 2;
      goto LABEL_17;
    case 6u:
      v18 = 5;
      goto LABEL_17;
    case 7u:
      v18 = 6;
      goto LABEL_17;
    case 8u:
      v18 = 7;
      goto LABEL_17;
    case 9u:
      v18 = 8;
      goto LABEL_17;
    case 0xAu:
      v18 = 9;
      goto LABEL_17;
    case 0xBu:
      v18 = 11;
      goto LABEL_17;
    case 0xCu:
      v18 = 12;
      goto LABEL_17;
    case 0xDu:
      v18 = 13;
LABEL_17:
      result = MEMORY[0x26D617190](v18);
      break;
    default:
      (*(v6 + 32))(v10, v14, v4);
      MEMORY[0x26D617190](1);
      OUTLINED_FUNCTION_7_17();
      sub_2681FD5F0(v15, v16, MEMORY[0x277CC9588]);
      sub_2683CFA08();
      result = (*(v6 + 8))(v10, v4);
      break;
  }

  return result;
}

uint64_t Snippet.SectionHeading.hashValue.getter()
{
  sub_2683D0698();
  Snippet.SectionHeading.hash(into:)(v1);
  return sub_2683D06D8();
}

uint64_t Snippet.SectionHeading.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v202 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F508, &qword_2683DB9F0);
  OUTLINED_FUNCTION_0_38(v4, &v212);
  v203 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F510, &qword_2683DB9F8);
  OUTLINED_FUNCTION_0_38(v8, &__src[80]);
  v196 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F518, &qword_2683DBA00);
  OUTLINED_FUNCTION_0_38(v12, &__src[56]);
  v193 = v13;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F520, &qword_2683DBA08);
  OUTLINED_FUNCTION_0_38(v16, &__src[64]);
  v175 = v17;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F528, &qword_2683DBA10);
  OUTLINED_FUNCTION_0_38(v20, &__src[40]);
  v191 = v21;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F530, &qword_2683DBA18);
  OUTLINED_FUNCTION_0_38(v24, &__src[24]);
  v189 = v25;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F538, &qword_2683DBA20);
  OUTLINED_FUNCTION_0_38(v28, &__src[8]);
  v187 = v29;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F540, &qword_2683DBA28);
  OUTLINED_FUNCTION_0_38(v32, &v209);
  v185 = v33;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_0();
  v207 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F548, &qword_2683DBA30);
  OUTLINED_FUNCTION_0_38(v36, &v206);
  v182 = v37;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F550, &qword_2683DBA38);
  OUTLINED_FUNCTION_0_38(v40, &v207);
  v174 = v41;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F558, &qword_2683DBA40);
  OUTLINED_FUNCTION_0_38(v44, &v204);
  v180 = v45;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F560, &qword_2683DBA48);
  OUTLINED_FUNCTION_0_38(v48, &v201);
  v178 = v49;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F568, &qword_2683DBA50);
  OUTLINED_FUNCTION_0_38(v52, &v202);
  v173 = v53;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_5_0();
  v206 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F570, &qword_2683DBA58);
  OUTLINED_FUNCTION_0_38(v56, v200);
  v176 = v57;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v59);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F578, &unk_2683DBA60);
  OUTLINED_FUNCTION_0_3();
  v205 = v60;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v61);
  v63 = &v166 - v62;
  v204 = type metadata accessor for Snippet.SectionHeading(0);
  OUTLINED_FUNCTION_1();
  v65 = MEMORY[0x28223BE20](v64);
  v67 = &v166 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v65);
  v70 = &v166 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v73 = &v166 - v72;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_23_14();
  MEMORY[0x28223BE20](v74);
  v76 = &v166 - v75;
  v77 = a1[3];
  v209 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v77);
  sub_2681FBB34();
  v78 = v211;
  sub_2683D06F8();
  if (v78)
  {
    goto LABEL_10;
  }

  v168 = v70;
  v171 = v2;
  v169 = v67;
  v170 = v73;
  v211 = v76;
  v79 = v208;
  v80 = v63;
  sub_2683D04B8();
  result = sub_268151B7C();
  if (v83 == v84 >> 1)
  {
    v85 = v205;
LABEL_9:
    v99 = v204;
    v100 = sub_2683D01D8();
    swift_allocError();
    v102 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
    *v102 = v99;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v100 - 8) + 104))(v102, *MEMORY[0x277D84160], v100);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v85 + 8))(v80, v79);
LABEL_10:
    v103 = v209;
    return __swift_destroy_boxed_opaque_existential_0(v103);
  }

  v172 = v63;
  v167 = 0;
  if (v83 < (v84 >> 1))
  {
    v86 = *(v82 + v83);
    sub_268151B68();
    v88 = v87;
    v90 = v89;
    swift_unknownObjectRelease();
    v91 = v203;
    if (v88 == v90 >> 1)
    {
      v92 = v202;
      v93 = v167;
      v94 = v201;
      switch(v86)
      {
        case 1:
          __src[0] = 1;
          sub_2681FBF78();
          OUTLINED_FUNCTION_4_23(&_s14descr2878F8F29V14SectionHeadingO14DateCodingKeysON);
          sub_2683CB528();
          OUTLINED_FUNCTION_7_17();
          sub_2681FD5F0(v128, v129, MEMORY[0x277CC95A0]);
          v130 = v171;
          OUTLINED_FUNCTION_25_12();
          sub_2683D04A8();
          swift_unknownObjectRelease();
          v157 = OUTLINED_FUNCTION_10_14();
          v158(v157);
          v159 = OUTLINED_FUNCTION_9_20();
          v160(v159);
          swift_storeEnumTagMultiPayload();
          v161 = v130;
          goto LABEL_30;
        case 2:
          __src[0] = 2;
          sub_2681FBF24();
          OUTLINED_FUNCTION_3_24(&_s14descr2878F8F29V14SectionHeadingO17FlaggedCodingKeysON);
          swift_unknownObjectRelease();
          v118 = OUTLINED_FUNCTION_6_24();
          v119(v118, v179);
          v120 = OUTLINED_FUNCTION_5_23();
          v121(v120);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 3:
          __src[0] = 3;
          sub_2681FBED0();
          OUTLINED_FUNCTION_20_15();
          v122 = v208;
          v123 = v172;
          sub_2683D0418();
          if (v93)
          {
            (*(v205 + 8))(v123, v122);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_26814FCE8();
          v143 = v181;
          OUTLINED_FUNCTION_25_12();
          sub_2683D04A8();
          v144 = (v180 + 8);
          swift_unknownObjectRelease();
          (*v144)(v91, v143);
          v154 = OUTLINED_FUNCTION_24_9();
          v155(v154);
          v156 = v170;
          memcpy(v170, __src, 0x61uLL);
          swift_storeEnumTagMultiPayload();
          v161 = v156;
LABEL_30:
          v90 = v211;
          sub_2681FD544(v161, v211);
LABEL_28:
          v149 = v209;
          sub_2681FD544(v90, v92);
          v103 = v149;
          break;
        case 4:
          __src[0] = 4;
          sub_2681FBE7C();
          OUTLINED_FUNCTION_20_15();
          OUTLINED_FUNCTION_4_23(v108);
          v109 = v184;
          OUTLINED_FUNCTION_25_12();
          sub_2683D0478();
          swift_unknownObjectRelease();
          v150 = OUTLINED_FUNCTION_10_14();
          v151(v150);
          v152 = OUTLINED_FUNCTION_9_20();
          v153(v152);
          OUTLINED_FUNCTION_22_10(&v198);
          goto LABEL_29;
        case 5:
          __src[0] = 5;
          sub_2681FBE28();
          OUTLINED_FUNCTION_3_24(&_s14descr2878F8F29V14SectionHeadingO16NearbyCodingKeysON);
          swift_unknownObjectRelease();
          v131 = OUTLINED_FUNCTION_6_24();
          v132(v131, v183);
          v133 = OUTLINED_FUNCTION_5_23();
          v134(v133);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 6:
          __src[0] = 6;
          sub_2681FBDD4();
          OUTLINED_FUNCTION_4_23(&_s14descr2878F8F29V14SectionHeadingO15NotesCodingKeysON);
          swift_unknownObjectRelease();
          v138 = OUTLINED_FUNCTION_6_24();
          v139(v138, v186);
          v140 = OUTLINED_FUNCTION_5_23();
          v141(v140);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 7:
          __src[0] = 7;
          sub_2681FBD80();
          OUTLINED_FUNCTION_3_24(&_s14descr2878F8F29V14SectionHeadingO17PastDueCodingKeysON);
          swift_unknownObjectRelease();
          v124 = OUTLINED_FUNCTION_6_24();
          v125(v124, v188);
          v126 = OUTLINED_FUNCTION_5_23();
          v127(v126);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 8:
          __src[0] = 8;
          sub_2681FBD2C();
          OUTLINED_FUNCTION_3_24(&_s14descr2878F8F29V14SectionHeadingO17ResultsCodingKeysON);
          swift_unknownObjectRelease();
          v145 = OUTLINED_FUNCTION_6_24();
          v146(v145, v190);
          v147 = OUTLINED_FUNCTION_5_23();
          v148(v147);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 9:
          __src[0] = 9;
          sub_2681FBCD8();
          OUTLINED_FUNCTION_3_24(&_s14descr2878F8F29V14SectionHeadingO19ScheduledCodingKeysON);
          swift_unknownObjectRelease();
          v114 = OUTLINED_FUNCTION_6_24();
          v115(v114, v192);
          v116 = OUTLINED_FUNCTION_5_23();
          v117(v116);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 10:
          __src[0] = 10;
          sub_2681FBC84();
          OUTLINED_FUNCTION_20_15();
          OUTLINED_FUNCTION_4_23(v142);
          v109 = v195;
          OUTLINED_FUNCTION_25_12();
          sub_2683D0478();
          swift_unknownObjectRelease();
          v162 = OUTLINED_FUNCTION_10_14();
          v163(v162);
          v164 = OUTLINED_FUNCTION_9_20();
          v165(v164);
          OUTLINED_FUNCTION_22_10(&v199);
LABEL_29:
          swift_storeEnumTagMultiPayload();
          v161 = v109;
          goto LABEL_30;
        case 11:
          __src[0] = 11;
          sub_2681FBC30();
          OUTLINED_FUNCTION_3_24(&_s14descr2878F8F29V14SectionHeadingO15TasksCodingKeysON);
          swift_unknownObjectRelease();
          v104 = OUTLINED_FUNCTION_6_24();
          v105(v104, v194);
          v106 = OUTLINED_FUNCTION_5_23();
          v107(v106);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 12:
          __src[0] = 12;
          sub_2681FBBDC();
          OUTLINED_FUNCTION_3_24(&_s14descr2878F8F29V14SectionHeadingO15TodayCodingKeysON);
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_6_24();
          v111(v110, v197);
          v112 = OUTLINED_FUNCTION_5_23();
          v113(v112);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 13:
          __src[0] = 13;
          sub_2681FBB88();
          v135 = v200[1];
          OUTLINED_FUNCTION_4_23(&_s14descr2878F8F29V14SectionHeadingO19NoSectionCodingKeysON);
          swift_unknownObjectRelease();
          (*(v91 + 8))(v135, v94);
          v136 = OUTLINED_FUNCTION_5_23();
          v137(v136);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        default:
          __src[0] = 0;
          sub_2681FBFCC();
          OUTLINED_FUNCTION_3_24(&_s14descr2878F8F29V14SectionHeadingO13AllCodingKeysON);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_6_24();
          v96(v95, v177);
          v97 = OUTLINED_FUNCTION_5_23();
          v98(v97);
          OUTLINED_FUNCTION_8_20();
LABEL_27:
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
      }

      return __swift_destroy_boxed_opaque_existential_0(v103);
    }

    v79 = v208;
    v85 = v205;
    v80 = v172;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2681FD500(uint64_t a1)
{
  sub_2683D0698();
  Snippet.SectionHeading.hash(into:)(v2);
  return sub_2683D06D8();
}

uint64_t sub_2681FD544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.SectionHeading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681FD5F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2681FD640(uint64_t a1)
{
  result = sub_2683CB528();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14descr2878F8F29V14SectionHeadingO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2681FD830(_BYTE *result, int a2, int a3)
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

unint64_t sub_2681FD910()
{
  result = qword_28024F598;
  if (!qword_28024F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F598);
  }

  return result;
}

unint64_t sub_2681FD968()
{
  result = qword_28024F5A0;
  if (!qword_28024F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5A0);
  }

  return result;
}

unint64_t sub_2681FD9C0()
{
  result = qword_28024F5A8;
  if (!qword_28024F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5A8);
  }

  return result;
}

unint64_t sub_2681FDA18()
{
  result = qword_28024F5B0;
  if (!qword_28024F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5B0);
  }

  return result;
}

unint64_t sub_2681FDA70()
{
  result = qword_28024F5B8;
  if (!qword_28024F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5B8);
  }

  return result;
}

unint64_t sub_2681FDAC8()
{
  result = qword_28024F5C0;
  if (!qword_28024F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5C0);
  }

  return result;
}

unint64_t sub_2681FDB20()
{
  result = qword_28024F5C8;
  if (!qword_28024F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5C8);
  }

  return result;
}

unint64_t sub_2681FDB78()
{
  result = qword_28024F5D0;
  if (!qword_28024F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5D0);
  }

  return result;
}

unint64_t sub_2681FDBD0()
{
  result = qword_28024F5D8;
  if (!qword_28024F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5D8);
  }

  return result;
}

unint64_t sub_2681FDC28()
{
  result = qword_28024F5E0;
  if (!qword_28024F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5E0);
  }

  return result;
}

unint64_t sub_2681FDC80()
{
  result = qword_28024F5E8;
  if (!qword_28024F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5E8);
  }

  return result;
}

unint64_t sub_2681FDCD8()
{
  result = qword_28024F5F0;
  if (!qword_28024F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5F0);
  }

  return result;
}

unint64_t sub_2681FDD30()
{
  result = qword_28024F5F8;
  if (!qword_28024F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5F8);
  }

  return result;
}

unint64_t sub_2681FDD88()
{
  result = qword_28024F600;
  if (!qword_28024F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F600);
  }

  return result;
}

unint64_t sub_2681FDDE0()
{
  result = qword_28024F608;
  if (!qword_28024F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F608);
  }

  return result;
}

unint64_t sub_2681FDE38()
{
  result = qword_28024F610;
  if (!qword_28024F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F610);
  }

  return result;
}

unint64_t sub_2681FDE90()
{
  result = qword_28024F618;
  if (!qword_28024F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F618);
  }

  return result;
}

unint64_t sub_2681FDEE8()
{
  result = qword_28024F620;
  if (!qword_28024F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F620);
  }

  return result;
}

unint64_t sub_2681FDF40()
{
  result = qword_28024F628;
  if (!qword_28024F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F628);
  }

  return result;
}

unint64_t sub_2681FDF98()
{
  result = qword_28024F630;
  if (!qword_28024F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F630);
  }

  return result;
}

unint64_t sub_2681FDFF0()
{
  result = qword_28024F638;
  if (!qword_28024F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F638);
  }

  return result;
}

unint64_t sub_2681FE048()
{
  result = qword_28024F640;
  if (!qword_28024F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F640);
  }

  return result;
}

unint64_t sub_2681FE0A0()
{
  result = qword_28024F648;
  if (!qword_28024F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F648);
  }

  return result;
}

unint64_t sub_2681FE0F8()
{
  result = qword_28024F650;
  if (!qword_28024F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F650);
  }

  return result;
}

unint64_t sub_2681FE150()
{
  result = qword_28024F658;
  if (!qword_28024F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F658);
  }

  return result;
}

unint64_t sub_2681FE1A8()
{
  result = qword_28024F660;
  if (!qword_28024F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F660);
  }

  return result;
}

unint64_t sub_2681FE200()
{
  result = qword_28024F668;
  if (!qword_28024F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F668);
  }

  return result;
}

unint64_t sub_2681FE258()
{
  result = qword_28024F670;
  if (!qword_28024F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F670);
  }

  return result;
}

unint64_t sub_2681FE2B0()
{
  result = qword_28024F678;
  if (!qword_28024F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F678);
  }

  return result;
}

unint64_t sub_2681FE308()
{
  result = qword_28024F680;
  if (!qword_28024F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F680);
  }

  return result;
}

unint64_t sub_2681FE360()
{
  result = qword_28024F688;
  if (!qword_28024F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F688);
  }

  return result;
}

unint64_t sub_2681FE3B8()
{
  result = qword_28024F690;
  if (!qword_28024F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F690);
  }

  return result;
}

unint64_t sub_2681FE410()
{
  result = qword_28024F698;
  if (!qword_28024F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F698);
  }

  return result;
}

unint64_t sub_2681FE468()
{
  result = qword_28024F6A0;
  if (!qword_28024F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6A0);
  }

  return result;
}

unint64_t sub_2681FE4C0()
{
  result = qword_28024F6A8;
  if (!qword_28024F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t a1)
{

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1)
{

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_16_21(uint64_t a1)
{

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_19_17()
{

  return swift_getEnumCaseMultiPayload();
}

void *OUTLINED_FUNCTION_22_10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = v1;
  v3[1] = v2;
  return v3;
}

uint64_t type metadata accessor for SearchForNotebookItemsV2CATsSimple(uint64_t a1)
{
  result = qword_28024F6B0;
  if (!qword_28024F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681FE764()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681FE7E8()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_10_12(v4, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v5, v6, &unk_28024E7C0, &unk_2683D6CA0);
  v7 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v7);
  if (v8)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6();
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8(v11);
  v13 = OUTLINED_FUNCTION_18(39);

  return v14(v13);
}

uint64_t sub_2681FE91C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681FE9A0()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_10_12(v4, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v5, v6, &unk_28024E7C0, &unk_2683D6CA0);
  v7 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v7);
  if (v8)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6();
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8(v11);
  v13 = OUTLINED_FUNCTION_18(46);

  return v14(v13);
}

uint64_t sub_2681FEAD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FEAE8()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  v4 = 0;
  if (v1)
  {
    v4 = sub_2683CEFE8();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  v10 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_18_18(v6);
  v8 = OUTLINED_FUNCTION_18_20();

  return (v10)(v8);
}

uint64_t sub_2681FEBF0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681FEC74()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_10_12(v4, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v5, v6, &unk_28024E7C0, &unk_2683D6CA0);
  v7 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v7);
  if (v8)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6();
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8(v11);
  v13 = OUTLINED_FUNCTION_18(40);

  return v14(v13);
}

uint64_t sub_2681FEDA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FEDBC()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  v4 = 0;
  if (v1)
  {
    v4 = sub_2683CF088();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  v10 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_18_18(v6);
  v8 = OUTLINED_FUNCTION_18_20();

  return (v10)(v8);
}

uint64_t sub_2681FEEC4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681FEF48()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_10_12(v4, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v5, v6, &unk_28024E7C0, &unk_2683D6CA0);
  v7 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v7);
  if (v8)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6();
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8(v11);
  v13 = OUTLINED_FUNCTION_18(38);

  return v14(v13);
}

uint64_t sub_2681FF07C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681FF100()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20(v2);
  v4 = OUTLINED_FUNCTION_14_8(v3);
  v5 = OUTLINED_FUNCTION_10_12(v4, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v5, v6, &unk_28024E7C0, &unk_2683D6CA0);
  v7 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v7);
  if (v8)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6();
  v11 = OUTLINED_FUNCTION_22(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_8(v11);
  v13 = OUTLINED_FUNCTION_18(37);

  return v14(v13);
}

uint64_t sub_2681FF234(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FF248()
{
  OUTLINED_FUNCTION_25();
  v11 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  v4[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v4[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_18_18(v6);
  v8 = OUTLINED_FUNCTION_17(44);

  return v9(v8);
}

uint64_t sub_2681FF34C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FF360()
{
  OUTLINED_FUNCTION_25();
  v11 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  v4[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v4[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_18_18(v6);
  v8 = OUTLINED_FUNCTION_17(45);

  return v9(v8);
}

uint64_t sub_2681FF464(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FF478()
{
  OUTLINED_FUNCTION_25();
  v11 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  v4[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v4[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_18_18(v6);
  v8 = OUTLINED_FUNCTION_17(42);

  return v9(v8);
}

uint64_t sub_2681FF57C()
{
  OUTLINED_FUNCTION_7();
  *(v1 + 56) = v25;
  *(v1 + 64) = v0;
  *(v1 + 40) = v19;
  *(v1 + 48) = v24;
  *(v1 + 117) = v23;
  *(v1 + 116) = v22;
  *(v1 + 115) = v21;
  *(v1 + 114) = v20;
  *(v1 + 113) = v18;
  *(v1 + 24) = v2;
  *(v1 + 32) = v17;
  *(v1 + 112) = v16;
  *(v1 + 111) = v15;
  *(v1 + 110) = v14;
  *(v1 + 109) = v3;
  *(v1 + 108) = v4;
  *(v1 + 107) = v5;
  *(v1 + 106) = v6;
  *(v1 + 105) = v7;
  *(v1 + 104) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v10);
  *(v1 + 72) = OUTLINED_FUNCTION_15_1();
  v11 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2681FF67C()
{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = xmmword_2683D7770;
  *(v2 + 32) = 0x6554686372616573;
  *(v2 + 40) = 0xEA00000000007478;
  OUTLINED_FUNCTION_29_8(v2, v3, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_26812C310(*(v0 + 72), &unk_28024E7C0, &unk_2683D6CA0);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_0((v2 + 48));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v5();
  }

  v6 = *(v0 + 105);
  v7 = *(v0 + 104);
  *(v2 + 80) = 0x6E6F707365527369;
  *(v2 + 88) = 0xEF7974706D456573;
  v8 = MEMORY[0x277D839B0];
  *(v2 + 96) = v7;
  *(v2 + 120) = v8;
  strcpy((v2 + 128), "taskListCount");
  *(v2 + 142) = -4864;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = MEMORY[0x277D839F8];
  }

  v11 = *(v0 + 113);
  v12 = *(v0 + 112);
  v13 = *(v0 + 111);
  v14 = *(v0 + 110);
  v15 = *(v0 + 109);
  v16 = *(v0 + 108);
  v17 = *(v0 + 107);
  v18 = *(v0 + 106);
  *(v2 + 144) = v9;
  *(v2 + 168) = v10;
  *(v2 + 176) = 0xD000000000000010;
  *(v2 + 184) = 0x80000002683FE240;
  *(v2 + 192) = v18;
  *(v2 + 216) = v8;
  *(v2 + 224) = 0x4F7365746F4E7369;
  *(v2 + 232) = 0xEB00000000796C6ELL;
  *(v2 + 240) = v17;
  *(v2 + 264) = v8;
  *(v2 + 272) = 0x4F736B7361547369;
  *(v2 + 280) = 0xEB00000000796C6ELL;
  *(v2 + 288) = v16;
  *(v2 + 312) = v8;
  *(v2 + 320) = 0x656C706D6F437369;
  *(v2 + 328) = 0xEB00000000646574;
  *(v2 + 336) = v15;
  *(v2 + 360) = v8;
  *(v2 + 368) = 0x79426575447369;
  *(v2 + 376) = 0xE700000000000000;
  *(v2 + 384) = v14;
  *(v2 + 408) = v8;
  *(v2 + 416) = 0x656767616C467369;
  *(v2 + 424) = 0xE900000000000064;
  *(v2 + 432) = v13;
  *(v2 + 456) = v8;
  *(v2 + 464) = 0xD000000000000010;
  *(v2 + 472) = 0x80000002683FE260;
  *(v2 + 480) = v12;
  *(v2 + 504) = v8;
  *(v2 + 512) = 0x6C6F687365726874;
  *(v2 + 520) = 0xE900000000000064;
  if (v11)
  {
    v19 = 0;
    v20 = 0;
    *(v2 + 536) = 0u;
  }

  else
  {
    v19 = *(v0 + 32);
    v20 = MEMORY[0x277D839F8];
  }

  v21 = *(v0 + 114);
  *(v2 + 528) = v19;
  *(v2 + 552) = v20;
  strcpy((v2 + 560), "totalItemCount");
  *(v2 + 575) = -18;
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    *(v2 + 584) = 0u;
  }

  else
  {
    v22 = *(v0 + 40);
    v23 = MEMORY[0x277D839F8];
  }

  v24 = *(v0 + 48);
  v25 = *(v0 + 117);
  v26 = *(v0 + 116);
  v27 = *(v0 + 115);
  *(v2 + 576) = v22;
  *(v2 + 600) = v23;
  *(v2 + 608) = 0x7564656863537369;
  *(v2 + 616) = 0xEB0000000064656CLL;
  *(v2 + 648) = v8;
  *(v2 + 624) = v27;
  *(v2 + 656) = 0x7272756365527369;
  *(v2 + 664) = 0xEB00000000676E69;
  *(v2 + 696) = v8;
  *(v2 + 672) = v26;
  *(v2 + 704) = 0x656C676E69537369;
  *(v2 + 712) = 0xEB00000000796144;
  *(v2 + 744) = v8;
  *(v2 + 720) = v25;
  *(v2 + 752) = 7368801;
  *(v2 + 760) = 0xE300000000000000;
  if (v24)
  {
    v28 = sub_2683CF138();
    v29 = v24;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    *(v2 + 776) = 0u;
  }

  v30 = *(v0 + 56);
  *(v2 + 768) = v29;
  *(v2 + 792) = v28;
  *(v2 + 800) = 0x7261646E656C6163;
  *(v2 + 808) = 0xE800000000000000;
  v31 = 0;
  if (v30)
  {
    v31 = sub_2683CEFE8();
  }

  else
  {
    *(v2 + 824) = 0u;
  }

  *(v2 + 816) = v30;
  *(v2 + 840) = v31;
  v34 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v32 = swift_task_alloc();
  *(v0 + 88) = v32;
  *v32 = v0;
  v32[1] = sub_2681FFB94;

  return v34(0xD00000000000002ELL, 0x80000002683FE280, v2);
}

uint64_t sub_2681FFB94()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_10();

    return v9(v8);
  }
}

uint64_t sub_2681FFCC4()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2681FFD2C()
{
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  return sub_2681FFD7C(v0, v1, v2);
}

uint64_t sub_2681FFD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v12 = OUTLINED_FUNCTION_23(v11);
  MEMORY[0x28223BE20](v12);
  sub_26812C2A8(a1, &v16 - v13, &qword_28024D258, &unk_2683D1F60);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_2683CF178();
  (*(v7 + 8))(a2, v3);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v14;
}

uint64_t sub_2681FFEF4(uint64_t a1, uint64_t a2)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2683CF188();
  (*(v5 + 8))(a2, v2);
  return v9;
}

double OUTLINED_FUNCTION_31_6()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_34_7()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 48));
}

id sub_268200040(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v27 = a2;
  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {
      goto LABEL_13;
    }

    sub_268200AC4(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, v9);
    v12 = [*&v9[*(v4 + 28) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428 &qword_2683D6CB0) + 28)]];
    v13 = [v12 _geoMapItem];

    if (!v13)
    {
      sub_268200B34(v9);
LABEL_13:
      v25 = v27;

      swift_bridgeObjectRelease_n();
      return (v10 == i);
    }

    v14 = [v13 _placeDataAsData];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2683CB468();
      v18 = v17;

      sub_268143054(v16, v18);
      swift_unknownObjectRelease();
      sub_268200B34(v9);
      continue;
    }

    result = [v13 name];
    if (!result)
    {
      break;
    }

    v20 = result;
    v21 = sub_2683CFA78();
    v23 = v22;

    swift_unknownObjectRelease();

    if ((v23 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v23) & 0xF;
    }

    else
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    sub_268200B34(v9);
    if (!v24)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_268200288@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v78 = a2;
  v76 = a3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  MEMORY[0x28223BE20](v80);
  v6 = (&v76 - v5);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_16:
    OUTLINED_FUNCTION_68_0();
    v72 = swift_allocObject();
    *(v72 + 16) = v8;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v74 = OUTLINED_FUNCTION_19_4(v73);
    *(v74 + 16) = xmmword_2683D1EC0;
    *(v74 + 32) = &unk_2683DC918;
    *(v74 + 40) = v72;
    OUTLINED_FUNCTION_68_0();
    result = swift_allocObject();
    result[2] = v74;
    v75 = v76;
    *v76 = &unk_2683DC920;
    v75[1] = result;
    return result;
  }

  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v79 = *(v4 + 72);
  v10 = &unk_279C3A000;
  v11 = &unk_279C3A000;
  v12 = &unk_280253370;
  v84 = xmmword_2683D1EC0;
  v77 = &v76 - v5;
  while (1)
  {
    v82 = v8;
    v13 = v12;
    sub_268200AC4(v9, v6);
    v14 = v6 + *(v80 + 28);
    v15 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0) + 28)];
    v16 = [v15 v10[312]];
    v17 = [v16 v11[443]];

    v83 = v17;
    if (!v17)
    {
      v62 = &unk_2683DC910;
      v61 = 0;
      goto LABEL_11;
    }

    v18 = v11;
    v19 = [v15 v10[312]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F6C0, &qword_2683DC928);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_4_24(inited);
    v21 = *v6;
    v22 = v6[1];
    *(v23 + 56) = &type metadata for DIStringValue;
    v24 = sub_268200DC4();
    inited[2].n128_u64[0] = v21;
    inited[2].n128_u64[1] = v22;
    v25 = v78;
    inited[4].n128_u64[0] = v24;
    inited[4].n128_u64[1] = v25;

    v26 = v25;
    v81 = v19;
    v27 = [v19 v18 + 494];
    if (!v27)
    {
      break;
    }

    v28 = [v27 _placeDataAsData];
    swift_unknownObjectRelease();
    if (!v28)
    {
      break;
    }

    v29 = sub_2683CB468();
    v31 = v30;

    sub_26814F3C8(v29, v31);
    v32 = sub_2682E3910(inited);
    swift_setDeallocating();
    sub_2681F55A8();
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v31;
    v33[4] = v32;
    v12 = v13;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, &qword_2683F1B30);
    v35 = OUTLINED_FUNCTION_19_4(v34);
    OUTLINED_FUNCTION_4_24(v35);
    *(v36 + 32) = &unk_2683DC950;
    *(v36 + 40) = v33;
    sub_268143054(v29, v31);
    OUTLINED_FUNCTION_68_0();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    v38 = &unk_2683DC958;
LABEL_9:
    v57 = v38;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, &qword_2683F1B30);
    v59 = OUTLINED_FUNCTION_19_4(v58);
    OUTLINED_FUNCTION_4_24(v59);
    *(v60 + 32) = v57;
    *(v60 + 40) = v37;
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_68_0();
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    v62 = &unk_2683DC940;
    v6 = v77;
LABEL_11:
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, &qword_2683F1B30);
    v64 = OUTLINED_FUNCTION_19_4(v63);
    OUTLINED_FUNCTION_4_24(v64);
    *(v65 + 32) = v62;
    *(v65 + 40) = v61;
    OUTLINED_FUNCTION_68_0();
    v66 = swift_allocObject();
    *(v66 + 16) = v64;

    v8 = v82;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v8 + 16) + 1, 1, v8);
      v8 = v70;
    }

    v68 = *(v8 + 16);
    v67 = *(v8 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_2682E511C(v67 > 1, v68 + 1, 1, v8);
      v8 = v71;
    }

    *(v8 + 16) = v68 + 1;
    v69 = v8 + 16 * v68;
    *(v69 + 32) = &unk_2683D8170;
    *(v69 + 40) = v66;
    sub_268200B34(v6);
    v9 += v79;
    --v7;
    v10 = &unk_279C3A000;
    v11 = &unk_279C3A000;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  result = [v83 name];
  if (result)
  {
    v40 = result;
    v12 = v13;
    sub_268200E18();
    v41 = sub_2683CFA78();
    v43 = v42;

    v44 = sub_2681C2F00(v41, v43, 0, 1);
    v45 = [v15 placemark];
    v46 = sub_2682B2068();
    v48 = v47;

    v49 = sub_2681C2F00(v46, v48, 0, 1);
    v50 = sub_2682E3910(inited);
    swift_setDeallocating();
    sub_2681F55A8();
    v51 = [objc_allocWithZone(MEMORY[0x277D4C5A8]) init];
    v52 = [v51 separatorStyle];

    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 1;
    *(v53 + 32) = v44;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = v49;
    *(v53 + 64) = 0;
    *(v53 + 72) = v52;
    *(v53 + 80) = 0;
    *(v53 + 88) = 0;
    *(v53 + 96) = MEMORY[0x277D84F90];
    *(v53 + 104) = v50;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, &qword_2683F1B30);
    v55 = OUTLINED_FUNCTION_19_4(v54);
    OUTLINED_FUNCTION_4_24(v55);
    *(v56 + 32) = &unk_2683DC930;
    *(v56 + 40) = v53;
    OUTLINED_FUNCTION_68_0();
    v37 = swift_allocObject();
    *(v37 + 16) = v55;
    v38 = &unk_2683DC938;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_268200914(uint64_t a1, void *a2)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - v7);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = a2;
    v26 = MEMORY[0x277D84F90];
    sub_268390940(0, v9, 0);
    v10 = v26;
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = *(v5 + 72);
    do
    {
      sub_268200AC4(v11, v8);
      v12 = v8[1];
      v25 = *v8;

      v13 = sub_2683CF158();
      v15 = v14;
      sub_268200B34(v8);
      v26 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_268390940((v16 > 1), v17 + 1, 1);
        v10 = v26;
      }

      *(v10 + 16) = v17 + 1;
      v18 = (v10 + 32 * v17);
      v18[4] = v25;
      v18[5] = v12;
      v18[6] = v13;
      v18[7] = v15;
      v11 += v23;
      --v9;
    }

    while (v9);
    a2 = v22;
  }

  v19 = a2;
  return v10;
}

uint64_t sub_268200AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268200B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268200B9C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_268200C38;

  return sub_268186518();
}

uint64_t sub_268200C38(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_268200D34()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

unint64_t sub_268200DC4()
{
  result = qword_28024F6C8;
  if (!qword_28024F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6C8);
  }

  return result;
}

unint64_t sub_268200E18()
{
  result = qword_280253380;
  if (!qword_280253380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280253380);
  }

  return result;
}

uint64_t sub_268200E5C()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268200EEC(uint64_t a1, uint64_t *a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_268129B00;

  return sub_26833D8D8();
}

uint64_t sub_268200F9C()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

__n128 OUTLINED_FUNCTION_4_24(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

uint64_t sub_268201068(uint64_t a1, uint64_t a2)
{
  sub_2683D0408();
  OUTLINED_FUNCTION_9_10();

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

uint64_t sub_2682010B8(char a1)
{
  if (a1)
  {
    return 0x736B736174;
  }

  else
  {
    return 0x676972547478656ELL;
  }
}

uint64_t sub_26820111C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268201068(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26820114C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2682010B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268201178()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = type metadata accessor for StringLocalizer(0);
  *(v0 + 64) = OUTLINED_FUNCTION_15_1();
  v1 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2682011F4()
{
  OUTLINED_FUNCTION_7();
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_28024C8D0 != -1)
  {
    swift_once();
  }

  v1 = qword_28027C938;
  *(v0[8] + *(v0[7] + 20)) = qword_28027C938;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_268201324;

  return sub_2681E5AB8();
}

uint64_t sub_268201324()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_42();
  v6 = *(v5 + 64);
  v7 = *v0;
  OUTLINED_FUNCTION_26();
  *v8 = v7;

  sub_268203834(v6, type metadata accessor for StringLocalizer);

  v9 = *(v7 + 8);

  return v9(v4, v2);
}

uint64_t sub_268201460()
{
  OUTLINED_FUNCTION_7();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_13_18(v1);

  return sub_268201660();
}

uint64_t sub_2682014FC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2682015E4()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = *(v0 + 32);
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_37();

  return v1(v0 + 16);
}

uint64_t sub_268201660()
{
  OUTLINED_FUNCTION_14();
  v0[204] = v1;
  v0[203] = v2;
  v0[202] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F6D0, &qword_2683DCA28);
  v0[205] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[206] = v5;
  v0[207] = OUTLINED_FUNCTION_15_1();
  v0[208] = type metadata accessor for SnippetFormatter(0);
  v0[209] = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F6D8, &qword_2683DCA30);
  v0[210] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[211] = v7;
  v0[212] = swift_task_alloc();
  v0[213] = swift_task_alloc();
  sub_2683CF238();
  v0[214] = OUTLINED_FUNCTION_15_1();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2682017D0(uint64_t a1)
{
  v25 = *(v1 + 1704);
  v29 = *(v1 + 1688);
  v30 = *(v1 + 1696);
  v28 = *(v1 + 1680);
  v35 = *(v1 + 1672);
  v26 = *(v1 + 1664);
  v31 = *(v1 + 1656);
  v32 = *(v1 + 1616);
  v37 = *(v1 + 1624);
  sub_2683CCC48();
  type metadata accessor for SnoozeTasksCATs(0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v2 = sub_2683CF0B8();
  *(v1 + 1720) = v2;
  v24 = v2;
  type metadata accessor for SnoozeTasksCATsSimple(0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v3 = sub_2683CF198();
  *(v1 + 1728) = v3;
  v27 = v3;
  type metadata accessor for NotebookBaseCATs(0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v34 = sub_2683CF0B8();
  *(v1 + 1736) = v34;
  type metadata accessor for NotebookLabelsV2CATs(0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v4 = sub_2683CF0B8();
  *(v1 + 1744) = v4;
  v5 = type metadata accessor for SnoozeTasksCATPatternsExecutor(0);
  sub_2683CF228();
  OUTLINED_FUNCTION_10_8();
  v6 = sub_2683CF0B8();
  *(v1 + 1752) = v6;
  sub_2683CC548();
  swift_allocObject();
  *(v1 + 1760) = sub_2683CC538();
  *(v1 + 1168) = &type metadata for SiriKitExecutionProvider;
  *(v1 + 1176) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v7 = swift_allocObject();
  *(v1 + 1144) = v7;
  *(v7 + 40) = &type metadata for NotebookFeatureManager;
  *(v7 + 48) = &protocol witness table for NotebookFeatureManager;
  *(v1 + 1128) = sub_268372484;
  *(v1 + 1136) = 0;
  sub_26813CA00(v1 + 1384, v1 + 1424);
  *(v1 + 1488) = &type metadata for TCCTemplateProvider;
  *(v1 + 1496) = &off_287902CB8;
  *(v1 + 1528) = v5;
  *(v1 + 1536) = &off_287902B08;
  *(v1 + 1504) = v6;
  *(v1 + 1568) = &type metadata for NotebookFeatureManager;
  *(v1 + 1576) = &protocol witness table for NotebookFeatureManager;
  v36 = sub_268129504(0, &qword_28024D5B8, 0x277CD4160);
  sub_268129504(0, &qword_28024F6E0, 0x277CD4168);

  sub_2683CBEB8();
  swift_allocObject();
  v33 = sub_2683CC538();
  __swift_project_boxed_opaque_existential_1((v1 + 1424), *(v1 + 1448));

  sub_2683CC088();
  *v35 = v34;
  v35[1] = v4;
  v35[2] = 0;
  v8 = *(v26 + 32);
  *(v35 + v8) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_2683CB768();
  sub_26813CA00(v1 + 1424, v1 + 976);
  *(v1 + 1048) = &type metadata for TCCTemplateProvider;
  *(v1 + 1056) = &off_287902CB8;
  *(v1 + 1016) = v4;
  v9 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v1 + 1272) = &unk_28790DB70;
  *(v1 + 1280) = &off_28790DB88;
  *(v1 + 1248) = v9;
  *(v1 + 1240) = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  sub_26813CA00(v1 + 1424, v1 + 1072);
  *(v1 + 1064) = v24;
  *(v1 + 1112) = sub_268372484;
  *(v1 + 1120) = 0;
  sub_2682031DC();

  sub_2683CBD98();
  sub_2683CBE38();
  sub_26813CA00(v1 + 1424, v1 + 1288);
  *(v1 + 1328) = v24;
  sub_268203230(v1 + 1288, v1 + 1336);
  OUTLINED_FUNCTION_19_11();
  v10 = swift_allocObject();
  v11 = *(v1 + 1352);
  v10[1] = *(v1 + 1336);
  v10[2] = v11;
  v10[3] = *(v1 + 1368);

  sub_2683CBE78();
  *(v1 + 40) = v26;
  *(v1 + 48) = &off_28790D590;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 16));
  sub_268203294(v35, boxed_opaque_existential_0);
  sub_26813CA00(v1 + 1504, v1 + 56);
  sub_26813CA00(v1 + 1424, v1 + 96);
  *(v1 + 160) = v33;
  *(v1 + 200) = 1;
  *(v1 + 232) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v1 + 240) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v13 = swift_allocObject();
  *(v1 + 208) = v13;
  sub_26818EE34(v1 + 1240, v13 + 16);
  *(v1 + 272) = &type metadata for NotebookDisambiguationFlowProducer;
  *(v1 + 280) = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v14 = swift_allocObject();
  *(v1 + 248) = v14;
  sub_26813CA00(v1 + 1424, v14 + 16);
  *(v1 + 136) = v24;
  *(v1 + 144) = v27;
  *(v1 + 152) = v34;
  *(v1 + 288) = 0;
  sub_2682032F8(v1 + 16, v1 + 296);
  v15 = swift_allocObject();
  memcpy((v15 + 16), (v1 + 296), 0x118uLL);

  OUTLINED_FUNCTION_16_22();
  sub_2683CBE98();
  *(v1 + 1584) = v27;
  *(v1 + 1592) = v33;
  *(v1 + 1600) = sub_2681B86A4;
  *(v1 + 1608) = 0;
  sub_26820335C();

  sub_2683CBDD8();
  OUTLINED_FUNCTION_16_22();
  sub_2683CBE88();
  *(v1 + 912) = &type metadata for SiriKitExecutionProvider;
  *(v1 + 920) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v16 = swift_allocObject();
  *(v1 + 888) = v16;
  sub_26813CA00(v1 + 1544, v16 + 16);
  *(v1 + 960) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v1 + 968) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v17 = swift_allocObject();
  *(v1 + 936) = v17;
  sub_26818EE34(v1 + 1240, v17 + 16);
  *(v1 + 880) = v27;
  *(v1 + 928) = v33;
  sub_2682033B0();
  sub_2683CBDA8();
  sub_2683CBE48();
  sub_26813CA00(v1 + 1424, v1 + 736);
  sub_26813CA00(v1 + 1464, v1 + 776);
  *(v1 + 840) = &type metadata for NotebookButtonProvider;
  *(v1 + 848) = &off_287902C78;
  v18 = swift_allocObject();
  *(v1 + 816) = v18;
  sub_26818EE98(v1 + 976, v18 + 16);
  *(v1 + 856) = v36;
  *(v1 + 864) = sub_2681B86A4;
  *(v1 + 872) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F700, &qword_2683DCA38);
  sub_26818A0C8(&qword_28024F708, &qword_28024F700, &qword_2683DCA38, &unk_2683E6708);
  sub_2683CBDF8();
  OUTLINED_FUNCTION_16_22();
  sub_2683CBEA8();
  sub_26813CA00(v1 + 1424, v1 + 576);
  *(v1 + 640) = &type metadata for NotebookButtonProvider;
  *(v1 + 648) = &off_287902C78;
  v19 = swift_allocObject();
  *(v1 + 616) = v19;
  sub_26818EE98(v1 + 976, v19 + 16);
  *(v1 + 680) = &type metadata for CommonResponseGenerator;
  *(v1 + 688) = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v20 = swift_allocObject();
  *(v1 + 656) = v20;
  sub_26813CA00(v1 + 1424, v20 + 16);
  *(v1 + 720) = &type metadata for CommonLabelGenerator;
  *(v1 + 728) = &off_28790E058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F710, &qword_2683DCA40);
  sub_26818A0C8(&qword_28024F718, &qword_28024F710, &qword_2683DCA40, &unk_2683F8DD0);
  sub_2683CBDC8();
  sub_2681433DC(v1 + 576, &qword_28024F710, &qword_2683DCA40);
  OUTLINED_FUNCTION_16_22();
  sub_2683CBE68();

  sub_268203404(v1 + 1288);
  sub_268203458(v1 + 1064);
  sub_268203834(v35, type metadata accessor for SnippetFormatter);
  __swift_destroy_boxed_opaque_existential_0((v1 + 1544));
  __swift_destroy_boxed_opaque_existential_0((v1 + 1504));
  __swift_destroy_boxed_opaque_existential_0((v1 + 1464));
  sub_2681433DC(v1 + 736, &qword_28024F700, &qword_2683DCA38);
  sub_2682034AC(v1 + 880);
  sub_268203500(v1 + 16);
  sub_26818F1A8(v1 + 1240);
  sub_26818F000(v1 + 976);
  __swift_destroy_boxed_opaque_existential_0((v1 + 1424));
  sub_2683CBDB8();
  sub_2683CBE58();
  (*(v29 + 16))(v30, v25, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F720, &qword_2683DCA48);
  swift_allocObject();
  OUTLINED_FUNCTION_9_10();
  *(v1 + 1768) = sub_2683CBEC8();
  sub_268203554(v1 + 1128, v1 + 1184);
  sub_2682035B0();

  sub_2683CC2E8();
  v21 = swift_task_alloc();
  *(v1 + 1776) = v21;
  *(v21 + 16) = v32;
  *(v21 + 24) = v37;
  *(v21 + 40) = v31;
  v22 = swift_task_alloc();
  *(v1 + 1784) = v22;
  *v22 = v1;
  v22[1] = sub_26820220C;

  return sub_2681347D4(dword_2683DCA58);
}

uint64_t sub_26820220C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  *(v6 + 1792) = v5;

  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268202310()
{
  v1 = v0[213];
  v2 = v0[211];
  v9 = v0[207];
  v3 = v0[206];
  v7 = v0[210];
  v8 = v0[205];

  (*(v2 + 8))(v1, v7);
  sub_26820378C((v0 + 141));
  __swift_destroy_boxed_opaque_existential_0(v0 + 173);
  (*(v3 + 8))(v9, v8);

  OUTLINED_FUNCTION_37();
  v5 = v0[224];

  return v4(v5);
}

uint64_t sub_268202474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_268202498);
}

uint64_t sub_268202498()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_268202548;

  return sub_26820A9CC(v3, v2);
}

uint64_t sub_268202548()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_26();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_26();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;
    v11 = swift_task_alloc();
    *(v5 + 64) = v11;
    *v11 = v7;
    v11[1] = sub_2682026BC;

    return sub_268202804();
  }
}

uint64_t sub_2682026BC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2682027A4()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_268202804()
{
  OUTLINED_FUNCTION_14();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v5 = sub_2683CC668();
  v0[15] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v0[16] = v6;
  v0[17] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CBCE8();
  v0[18] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v0[19] = v8;
  v0[20] = OUTLINED_FUNCTION_15_1();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2682028F8()
{
  OUTLINED_FUNCTION_14();
  sub_26813CA00(v0[12], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_268202998;
  v2 = v0[11];

  return sub_2681A0B40(v2);
}

uint64_t sub_268202998()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_268202A80()
{
  v1 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F6D0, &qword_2683DCA28);
  v2 = sub_2683CC2D8();
  v3 = v2;
  if (v1 == 1)
  {
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    v9 = *(v0 + 128);
    sub_2683CC658();
    sub_2683CBCC8();
    (*(v9 + 8))(v6, v8);
    v14 = sub_2683CBC98();
    (*(v5 + 8))(v4, v7);
    *(v0 + 64) = v3;
    *(v0 + 72) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F730, &qword_2683DCA68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
    v10 = MEMORY[0x277D5B820];
    sub_26818A0C8(&qword_28024F738, &qword_28024F730, &qword_2683DCA68, MEMORY[0x277D5B820]);
    sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80, v10);
    *(v0 + 80) = sub_2683CBF68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F740, &qword_2683DCA70);
    sub_26818A0C8(&qword_28024F748, &qword_28024F740, &qword_2683DCA70, MEMORY[0x277D5B380]);
    v11 = sub_2683CBF28();

    sub_2682037E0(v0 + 16);
  }

  else
  {
    *(v0 + 56) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F730, &qword_2683DCA68);
    sub_26818A0C8(&qword_28024F738, &qword_28024F730, &qword_2683DCA68, MEMORY[0x277D5B820]);
    v11 = sub_2683CBF28();
    sub_2682037E0(v0 + 16);
  }

  OUTLINED_FUNCTION_37();

  return v12(v11);
}

uint64_t sub_268202D4C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  if (a1)
  {
    if (qword_28024CBE0 != -1)
    {
      swift_once();
    }

    v3 = sub_2681E1F9C();
  }

  else
  {
    if (qword_28024CBA0 != -1)
    {
      swift_once();
    }

    v3 = sub_2681E20C8();
  }

  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  return v2;
}

uint64_t sub_268202E2C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_26820316C(a1, v24);
    if (v25)
    {
      v4 = sub_2683CDBD8();
      if (OUTLINED_FUNCTION_0_33(v4, v5))
      {

        sub_2683CDDE8();

        if (v24[0])
        {
LABEL_10:

          v8 = sub_2683CD1A8();

          return v8;
        }
      }
    }

    else
    {
      sub_2681433DC(v24, &qword_28024E370, &unk_2683D9AA0);
    }
  }

  sub_26820316C(a1, v24);
  if (v25)
  {
    v6 = sub_2683CD938();
    if (OUTLINED_FUNCTION_0_33(v6, v7))
    {

      sub_2683CCFF8();

      if (v24[0])
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_2681433DC(v24, &qword_28024E370, &unk_2683D9AA0);
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_2683CF7E8();
  __swift_project_value_buffer(v9, qword_28027C958);
  sub_26818F56C(a1, v24);
  v10 = sub_2683CF7C8();
  v11 = sub_2683CFE78();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    if (a2)
    {
      v14 = 0x736B736174;
    }

    else
    {
      v14 = 0x676972547478656ELL;
    }

    if (a2)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xEF656D6954726567;
    }

    v16 = sub_2681610A0(v14, v15, &v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_26820316C(v24, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
    v17 = sub_2683CFAD8();
    v19 = v18;
    sub_26818F5C8(v24);
    v20 = sub_2681610A0(v17, v19, &v23);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2680EB000, v10, v11, "[SnoozeTasks resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v13, -1, -1);
    MEMORY[0x26D617A40](v12, -1, -1);
  }

  else
  {

    sub_26818F5C8(v24);
  }

  return 0;
}

uint64_t sub_26820316C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2682031DC()
{
  result = qword_28024F6E8;
  if (!qword_28024F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6E8);
  }

  return result;
}

uint64_t sub_268203294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26820335C()
{
  result = qword_28024F6F0;
  if (!qword_28024F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6F0);
  }

  return result;
}

unint64_t sub_2682033B0()
{
  result = qword_28024F6F8;
  if (!qword_28024F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6F8);
  }

  return result;
}

unint64_t sub_2682035B0()
{
  result = qword_28024F728;
  if (!qword_28024F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F728);
  }

  return result;
}

uint64_t sub_268203604()
{
  OUTLINED_FUNCTION_7();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_13_18(v4);

  return sub_268202474(v5, v6, v3, v2);
}

uint64_t sub_2682036A0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v3 = *v0;
  OUTLINED_FUNCTION_26();
  *v4 = v3;

  OUTLINED_FUNCTION_37();

  return v5(v2);
}

uint64_t sub_268203834(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_9();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SnoozeTasks.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268203978()
{
  result = qword_28024F750;
  if (!qword_28024F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F750);
  }

  return result;
}

uint64_t sub_2682039EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v56 = a2;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F758, &qword_2683DCB40);
  v4 = OUTLINED_FUNCTION_23(v3);
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - v5;
  sub_2683CB148();
  OUTLINED_FUNCTION_0_3();
  v49 = v7;
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v48 = v9 - v8;
  v54 = sub_2683CB168();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  v53 = sub_2683CB178();
  OUTLINED_FUNCTION_0_3();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  v21 = v20 - v19;
  v22 = sub_2683CB198();
  v23 = OUTLINED_FUNCTION_23(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_3();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v25 = OUTLINED_FUNCTION_23(v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F760, &qword_2683DCB48);
  v29 = OUTLINED_FUNCTION_23(v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v46 - v30;
  v32 = sub_2683CB248();
  OUTLINED_FUNCTION_0_3();
  v47 = v33;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v46 - v38;
  v40 = sub_2683CB438();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v40);
  (*(v17 + 104))(v21, *MEMORY[0x277CC8BB0], v53);
  (*(v11 + 104))(v15, *MEMORY[0x277CC8B98], v54);

  sub_2683CB188();
  sub_2683CB228();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
  v41 = v47;
  (*(v47 + 32))(v39, v31, v32);
  sub_2682040B8(v51, v37);
  v42 = v48;
  sub_2683CB128();
  sub_268204F90(v52);
  (*(v49 + 8))(v42, v50);
  v43 = sub_2683CFAB8();
  v44 = *(v41 + 8);
  v44(v37, v32);
  v44(v39, v32);
  return v43;
}

uint64_t sub_268203ECC(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
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
    v8 = 0;
    v18 = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_2683D0168();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v17[0] = a1;
          v17[1] = v18;
          v11 = v17 + v8;
          v13 = *(v17 + v8);
          if (*(v17 + v8) < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v13 = v11[1] & 0x3F | ((v13 & 0x1F) << 6);
                v15 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v13 = ((v13 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
                v15 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v13 = ((v13 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v10 = v9;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_2683D01E8();
          }

          v11 = (v10 + v8);
          v12 = *(v10 + v8);
          v13 = *(v10 + v8);
          if (v12 < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_2682040B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v79 = a2;
  v2 = sub_2683CB278();
  MEMORY[0x28223BE20](v2 - 8);
  v104 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2683CAEA8();
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v103 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F798, &qword_2683DCB68);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v79 - v8;
  v113 = sub_2683CB438();
  v87 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F758, &qword_2683DCB40);
  MEMORY[0x28223BE20](v11 - 8);
  v101 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F770, &qword_2683DCB58);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = &v79 - v14;
  v99 = sub_2683CB148();
  v89 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_2683CB1D8();
  v105 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2683CB1B8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v93 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v79 - v21;
  v22 = sub_2683CB1E8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F7A0, &qword_2683DCB70);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v79 - v28;
  v109 = sub_2683CB248();
  v80 = *(v109 - 8);
  v30 = MEMORY[0x28223BE20](v109);
  v95 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v108 = &v79 - v32;
  sub_2683CB238();
  v119 = MEMORY[0x277D84FA0];
  sub_2683CB1F8();
  (*(v23 + 16))(v29, v25, v22);
  v33 = *(v27 + 44);
  v34 = v22;
  v35 = sub_268205D84(&qword_28024F7A8, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  v106 = v29;
  v107 = v35;
  sub_2683CFDD8();
  (*(v23 + 8))(v25, v22);
  swift_beginAccess();
  v90 = 0;
  ++v105;
  v92 = (v18 + 16);
  v91 = (v18 + 32);
  ++v89;
  v84 = (v87 + 4);
  v83 = (v87 + 1);
  v82 = v88 + 1;
  v88 = (v80 + 8);
  v87 = (v18 + 8);
  v97 = v17;
  v94 = v33;
  while (1)
  {
    v36 = v110;
    v37 = v106;
    sub_2683CFDF8();
    sub_268205D84(&qword_28024F7B0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v38 = v34;
    v39 = v111;
    v40 = sub_2683CFA58();
    (*v105)(v36, v39);
    if (v40)
    {
      break;
    }

    v41 = v10;
    v42 = sub_2683CFE28();
    v43 = v96;
    (*v92)(v96);
    v42(&v117, 0);
    v44 = v38;
    sub_2683CFE08();
    v45 = v93;
    (*v91)(v93, v43, v17);
    sub_26820570C(&v120);
    v46 = v98;
    sub_2683CB128();
    v47 = v100;
    sub_2683CB1A8();
    sub_2683CB158();
    sub_2681433DC(v47, &qword_28024F770, &qword_2683DCB58);
    (*v89)(v46, v99);
    v48 = sub_2683CFAB8();
    v50 = v49;
    v115 = v48;
    v116 = v49;
    sub_268205CDC();
    v51 = v102;
    sub_2683CB1C8();
    if (__swift_getEnumTagSinglePayload(v51, 1, v113) == 1)
    {
      sub_2681433DC(v51, &qword_28024D258, &unk_2683D1F60);
      v10 = v41;
    }

    else
    {
      v10 = v41;
      (*v84)(v41, v51, v113);
      if (sub_268205DCC(v48, v50))
      {
        v117 = v48;
        v118 = v50;

        MEMORY[0x26D616690](10272, 0xE200000000000000);
        v52 = sub_2683CB3A8();
        MEMORY[0x26D616690](v52);

        MEMORY[0x26D616690](41, 0xE100000000000000);
        v53 = v117;
        v54 = v118;
      }

      else
      {
        v53 = sub_2683CB3A8();
        v54 = v55;
      }

      (*v83)(v41, v113);

      v115 = v53;
      v116 = v54;
    }

    v34 = v44;
    if ((v126 & 1) == 0)
    {
      v57 = v122;
      v56 = v123;
      v58 = v124;
      v59 = v125;
      if ((sub_2681F71F4(v122, v119) & 1) == 0)
      {
        sub_268205FEC(v57, v56, v58 & 1, v59, &v115, v81);
        swift_beginAccess();
        sub_2681597D8(&v114, v57);
        swift_endAccess();
      }
    }

    v60 = v112;
    if ((v121 & 1) == 0)
    {
      v61 = v120;
      if ((sub_2681F71F4(v120, v119) & 1) == 0)
      {
        sub_268206260(v45, v60, &v120, &v115);
        swift_beginAccess();
        sub_2681597D8(&v114, v61);
        swift_endAccess();
      }
    }

    sub_268205D30();
    sub_2683CB1C8();
    if ((v118 & 1) == 0 && (v117 & 0x40) != 0)
    {
      sub_2682065D8();
      v62 = v85;
      sub_2683CB1C8();
      v63 = sub_2683CB318();
      if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
      {
        sub_2681433DC(v62, &qword_28024F798, &qword_2683DCB68);
      }

      else
      {
        sub_2683CB2F8();
        (*(*(v63 - 8) + 8))(v62, v63);
      }

      v64 = sub_2683CFBF8();
      v117 = 10;
      v118 = 0xE100000000000000;
      MEMORY[0x26D616690](v64);

      v65 = v115;
      v66 = v116;
      v67 = v103;
      v68 = sub_2683CAE58();
      MEMORY[0x28223BE20](v68);
      *(&v79 - 2) = v67;
      v69 = v90;
      v70 = sub_2682055C4(sub_26820662C, (&v79 - 4), v65, v66);
      v90 = v69;
      if (v71)
      {
        v72 = 0;
        v73 = 0xE000000000000000;
      }

      else
      {
        v74 = sub_2682056C0(v70, v65, v66);
        v72 = MEMORY[0x26D616610](v74);
        v73 = v75;
      }

      (*v82)(v103, v86);
      MEMORY[0x26D616690](v72, v73);

      v115 = v117;
      v116 = v118;
    }

    sub_2683CB268();
    v76 = v95;
    sub_2683CB258();
    sub_268205D84(&qword_28024F7C8, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
    v77 = v109;
    sub_2683CB218();
    (*v88)(v76, v77);

    v17 = v97;
    (*v87)(v45, v97);
  }

  sub_2681433DC(v37, &qword_28024F7A0, &qword_2683DCB70);
  (*(v80 + 32))(v79, v108, v109);
}

uint64_t sub_268204F90@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F768, &qword_2683DCB50);
  v2 = MEMORY[0x28223BE20](v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - v5;
  v7 = sub_2683CB208();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F770, &qword_2683DCB58);
  MEMORY[0x28223BE20](v25);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F778, &qword_2683DCB60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  v16 = sub_2683CB148();
  v17 = sub_268205D84(&qword_28024F780, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v27 = v16;
  v18 = v17;
  sub_2683CFDD8();
  sub_268205D84(&qword_28024F788, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  result = sub_2683CFA58();
  if (result)
  {
    sub_2683CFDF8();
    sub_268205D84(&qword_28024F790, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    result = sub_2683CFA48();
    if (result)
    {
      v24[1] = v1;
      v20 = *(v8 + 32);
      v20(v6, v15, v7);
      v24[0] = v18;
      v21 = v26;
      v20(&v6[*(v26 + 48)], v10, v7);
      sub_268205378(v6, v4);
      v22 = *(v21 + 48);
      v20(v12, v4, v7);
      v23 = *(v8 + 8);
      v23(&v4[v22], v7);
      sub_2682053E8(v6, v4);
      v20(&v12[*(v25 + 36)], &v4[*(v21 + 48)], v7);
      v23(v4, v7);
      sub_2683CFE18();
      return sub_2681433DC(v12, &qword_28024F770, &qword_2683DCB58);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268205378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F768, &qword_2683DCB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2682053E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F768, &qword_2683DCB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_268205458(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2683CAEA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *a1;
  v7 = a1[1];
  (*(v5 + 16))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11 = sub_268203ECC(v8, v7, sub_2682066A0);

  return (v11 & 1) == 0;
}

unint64_t sub_2682055C4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13 = 4 * v6;
  for (i = 15; ; i = sub_2683CFB68())
  {
    if (i >> 14 == v13)
    {
      return 0;
    }

    v12[0] = sub_2683CFC08();
    v12[1] = v8;
    v9 = a1(v12);
    if (v4)
    {
      break;
    }

    v10 = v9;

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_2682056C0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2683CFC18();
  }

  __break(1u);
  return result;
}

uint64_t sub_26820570C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2683CB308();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2683CB2D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F798, &qword_2683DCB68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  sub_2682065D8();
  sub_2683CB1C8();
  v13 = sub_2683CB318();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    v38 = a1;
    v22 = v3;
    v23 = sub_2683CB2E8();
    result = (*(*(v13 - 8) + 8))(v12, v13);
    v24 = 0;
    v44 = 0;
    v45 = 0;
    v52 = 0;
    v55 = *(v23 + 16);
    v54 = *MEMORY[0x277CC8D30];
    v53 = v7 + 16;
    v25 = *MEMORY[0x277CC8D38];
    v48 = *MEMORY[0x277CC8D48];
    v49 = v25;
    v26 = *MEMORY[0x277CC8D28];
    v42 = *MEMORY[0x277CC8D40];
    v43 = v26;
    v41 = *MEMORY[0x277CC8D58];
    v37 = *MEMORY[0x277CC8D50];
    v27 = *MEMORY[0x277CC8D08];
    v35 = *MEMORY[0x277CC8D18];
    v36 = v27;
    v46 = (v22 + 8);
    v34 = *MEMORY[0x277CC8D00];
    v47 = (v22 + 96);
    v39 = 2;
    v33 = *MEMORY[0x277CC8D10];
    v40 = -1;
    v50 = 1;
    v51 = 1;
    v32 = *MEMORY[0x277CC8D20];
    while (1)
    {
      if (v55 == v24)
      {

        if (v50)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v21 = 1;
          a1 = v38;
          v15 = v52;
          v20 = v51;
        }

        else
        {
          a1 = v38;
          v15 = v52;
          v20 = v51;
          if (v39 == 2 || (v39 & 1) == 0)
          {
            v17 = 0;
            v21 = 0;
            v18 = 1;
          }

          else
          {
            v18 = 0;
            v21 = 0;
            v17 = v44;
          }

          v16 = v45;
          v19 = v40;
        }

        goto LABEL_43;
      }

      if (v24 >= *(v23 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      (*(v7 + 16))(v9, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, v6);
      sub_2683CB2B8();
      result = (*(v22 + 88))(v5, v2);
      if (result == v54)
      {
        goto LABEL_7;
      }

      if (result == v49)
      {
        (*v47)(v5, v2);
        if (v50)
        {
          v44 = *v5;
          v45 = sub_2683CB2C8();
        }

        v50 = 0;
      }

      else
      {
        if (result == v48)
        {
          (*v46)(v5, v2);
LABEL_7:
          v52 = sub_2683CB2C8();
          v51 = 0;
          goto LABEL_28;
        }

        if (result == v43)
        {
LABEL_15:
          (*v46)(v5, v2);
          goto LABEL_28;
        }

        if (result != v42 && result != v41)
        {
          if (result == v37)
          {
            goto LABEL_7;
          }

          if (result == v36)
          {
            v29 = __OFADD__(v40++, 1);
            if (v29)
            {
              goto LABEL_45;
            }

            v30 = (v39 == 2) | v39;
LABEL_27:
            v39 = v30 & 1;
            goto LABEL_28;
          }

          if (result == v35)
          {
            v29 = __OFADD__(v40++, 1);
            if (v29)
            {
              goto LABEL_46;
            }

            v30 = v39;
            goto LABEL_27;
          }

          if (result == v34)
          {
            goto LABEL_7;
          }

          if (result != v33 && result != v32)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_28:
      result = (*(v7 + 8))(v9, v6);
      ++v24;
    }
  }

  result = sub_2681433DC(v12, &qword_28024F798, &qword_2683DCB68);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  v21 = 1;
LABEL_43:
  *a1 = v15;
  *(a1 + 8) = v20 & 1;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  return result;
}

unint64_t sub_268205CDC()
{
  result = qword_28024F7B8;
  if (!qword_28024F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7B8);
  }

  return result;
}

unint64_t sub_268205D30()
{
  result = qword_28024F7C0;
  if (!qword_28024F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7C0);
  }

  return result;
}

uint64_t sub_268205D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268205DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CAEA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2683CB3A8() == a1 && v8 == a2)
  {

    v11 = 0;
  }

  else
  {
    v10 = sub_2683D0598();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      v11 = 1;
      sub_2683CB3F8();
      if (v12)
      {
        v13 = sub_2683CFAF8();
        v15 = v14;

        v21 = v13;
        v22 = v15;
        sub_2683CAE68();
        sub_26812A1AC();
        v20[1] = sub_2683CFFE8();
        v16 = *(v5 + 8);
        v16(v7, v4);

        v21 = sub_2683CFAF8();
        v22 = v17;
        sub_2683CAE78();
        sub_2683CFFE8();
        v16(v7, v4);

        v18 = sub_2683CFBD8();

        v11 = v18 ^ 1;
      }
    }
  }

  return v11 & 1;
}

uint64_t sub_268205FEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = sub_2683CB668();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F7D8, &qword_2683DCB78);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  if (a3)
  {
    v29 = 547520738;
    v30 = 0xA400000000000000;
    v18 = *a5;
    v19 = a5[1];

    MEMORY[0x26D616690](v18, v19);

    v20 = v30;
    *a5 = v29;
    a5[1] = v20;
  }

  else
  {
    sub_2683CB5E8();
    sub_26820664C();
    sub_2683CB298();
    MEMORY[0x26D611D90](a6, v11);
    v22 = *(v12 + 8);
    v22(v15, v11);
    v29 = a2;
    v23 = sub_2683CB288();
    v25 = v24;
    v22(v17, v11);
    v29 = v23;
    v30 = v25;
    MEMORY[0x26D616690](8238, 0xE200000000000000);
    v26 = *a5;
    v27 = a5[1];

    MEMORY[0x26D616690](v26, v27);

    v28 = v30;
    *a5 = v29;
    a5[1] = v28;
  }
}

uint64_t sub_268206260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = a4;
  v29[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F798, &qword_2683DCB68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  v8 = sub_2683CB208();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F770, &qword_2683DCB58);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v29 - v16;
  v29[2] = a1;
  sub_2683CB1A8();
  (*(v9 + 16))(v14, v17, v8);
  sub_2681433DC(v17, &qword_28024F770, &qword_2683DCB58);
  sub_2683CB138();
  sub_268205D84(&qword_28024F788, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  LOBYTE(v17) = sub_2683CFA58();
  v18 = *(v9 + 8);
  v18(v12, v8);
  result = (v18)(v14, v8);
  if ((v17 & 1) == 0)
  {
    v20 = sub_2683CFBF8();
    v22 = v21;
    sub_2682065D8();
    sub_2683CB1C8();
    v23 = sub_2683CB318();
    if (__swift_getEnumTagSinglePayload(v7, 1, v23) == 1)
    {
      sub_2681433DC(v7, &qword_28024F798, &qword_2683DCB68);
    }

    else
    {
      sub_2683CB2F8();
      (*(*(v23 - 8) + 8))(v7, v23);
    }

    v24 = sub_2683CFBF8();
    v31 = v20;
    v32 = v22;
    MEMORY[0x26D616690](v24);

    v25 = v30;
    v26 = *v30;
    v27 = v30[1];

    MEMORY[0x26D616690](v26, v27);

    v28 = v32;
    *v25 = v31;
    v25[1] = v28;
  }

  return result;
}

unint64_t sub_2682065D8()
{
  result = qword_28024F7D0;
  if (!qword_28024F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7D0);
  }

  return result;
}

unint64_t sub_26820664C()
{
  result = qword_28024F7E0;
  if (!qword_28024F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7E0);
  }

  return result;
}

uint64_t sub_2682066A0(uint64_t a1)
{
  v1 = sub_2683CAEA8();
  OUTLINED_FUNCTION_23(v1);
  return sub_2683CAE98() & 1;
}

uint64_t sub_268206730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F7F8, &qword_2683DCC50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2683D1EC0;
  *(v1 + 56) = MEMORY[0x277D839B0];
  *(v1 + 32) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2682067C8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2682067F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681B7480;

  return sub_268206714();
}

unint64_t sub_26820688C()
{
  result = qword_28024F7E8;
  if (!qword_28024F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7E8);
  }

  return result;
}

unint64_t sub_2682068E4()
{
  result = qword_28024F7F0;
  if (!qword_28024F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7F0);
  }

  return result;
}

uint64_t sub_268206948()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_2683CCB88();
  v5(v35, v4, 0);
  (*(v2 + 8))(v4, v1);
  sub_268167C34(v35, v34);
  if (v34[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v34, v30);
  if (v33 != 1)
  {
    if (v33 == 7)
    {
      v6 = vorrq_s8(v31, v32);
      if (!(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v30[2] | v30[1] | v30[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v22 = sub_2683CF7E8();
        __swift_project_value_buffer(v22, qword_28027C958);
        v23 = sub_2683CF7C8();
        v24 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v24))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v25, v26, "[SnoozeTasks FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v30);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    sub_268167C34(v35, v30);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      sub_268167C34(v30, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v12 = sub_2683CFAD8();
      v14 = v13;
      sub_268167CA4(v30);
      v15 = sub_2681610A0(v12, v14, &v29);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2680EB000, v8, v9, "[SnoozeTasks FlowStrategy] unsupported task, ignoring: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v30);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v35);
    return sub_268167CA4(v34);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v16 = sub_2683CF7E8();
  __swift_project_value_buffer(v16, qword_28027C958);
  v17 = sub_2683CF7C8();
  v18 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v19, v20, "[SnoozeTasks FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_268167CA4(v35);
  sub_26813A1A0(v30);
  return sub_268167CA4(v34);
}

uint64_t sub_268206D38(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268206D50()
{
  v21 = v2;
  (**(v2 + 328))(*(v2 + 312), 0);
  sub_268167C34(v2 + 16, v2 + 80);
  v3 = *(v2 + 136);
  v4 = (v2 + 80);
  if (v3 == 1)
  {
    sub_268128148(v4, v2 + 272);
    OUTLINED_FUNCTION_10_15();
    v19 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v2 + 336) = v6;
    *v6 = v2;
    v6[1] = sub_268207074;

    return v19(1, v0, v1);
  }

  else
  {
    if (v3 == 255)
    {
      sub_268167CA4(v4);
    }

    else
    {
      sub_26813A1A0(v4);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    sub_268167C34(v2 + 16, v2 + 144);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      sub_268167C34(v2 + 144, v2 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v13 = sub_2683CFAD8();
      v15 = v14;
      sub_268167CA4(v2 + 144);
      v16 = sub_2681610A0(v13, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2680EB000, v9, v10, "[SnoozeTasks FlowStrategy] Did not get snoozeTasks task from parse. Got: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v2 + 144);
    }

    sub_26812C6B8();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 4;
    swift_willThrow();
    sub_268167CA4(v2 + 16);
    v18 = *(v2 + 8);

    return v18();
  }
}

uint64_t sub_268207074()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v1 + 344) = v0;

  return MEMORY[0x2822009F8](sub_26820716C);
}

uint64_t sub_26820716C(uint64_t a1)
{
  OUTLINED_FUNCTION_10_15();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v3 + 352) = v5;
  *v5 = v3;
  v5[1] = sub_26820727C;

  return (v7)(0, v1, v2);
}

uint64_t sub_26820727C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v1 + 360) = v0;

  return MEMORY[0x2822009F8](sub_268207374);
}

uint64_t sub_268207374()
{
  v22 = v0;
  if (*(v0 + 320))
  {
    v1 = sub_2682DDA40(*(v0 + 344));
  }

  else
  {
    v1 = *(v0 + 360);
  }

  v2 = v1;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);
  v4 = v2;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 344);
  if (v7)
  {
    v20 = *(v0 + 360);
    v19 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SnoozeTasks FlowStrategy] Updated intent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_37();

  return v17(v4);
}

uint64_t sub_268207578(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268207590()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_2682B28A0(v2, v1);
  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_26820760C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268132F90;

  return sub_268206D38(a1, a2);
}

uint64_t sub_2682076B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268193F14;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_268207774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_268193F14;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_268207840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_268193F14;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_26820790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_268193F14;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_2682079D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_268193D88;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268207AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_268193F14;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268207B90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_268207578(a1, a2);
}

unint64_t sub_268207C38()
{
  result = qword_28024F800;
  if (!qword_28024F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F800);
  }

  return result;
}

unint64_t sub_268207C90()
{
  result = qword_28024F808;
  if (!qword_28024F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F808);
  }

  return result;
}

unint64_t sub_268207CE8()
{
  result = qword_28024F810;
  if (!qword_28024F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F810);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_15()
{
  v1 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);
  return v1 + 16;
}

uint64_t Snippet.Interaction.init<A, B>(record:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2683CC858();
  *a2 = 0;
  a2[1] = 0;
  sub_2683CC828();
  v5 = sub_2683CF258();
  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  sub_268207E90();
  v9 = sub_2683CC848();
  v10 = sub_2683CC818();
  sub_268208190(v9, v10);
  type metadata accessor for Snippet.Interaction(0);
  sub_2683CB7E8();
  v11 = *(*(v4 - 8) + 8);

  return v11(a1, v4);
}

unint64_t sub_268207E90()
{
  result = qword_28024F818;
  if (!qword_28024F818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024F818);
  }

  return result;
}

uint64_t Snippet.Interaction.app.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Snippet.Interaction.app.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

void (*Snippet.Interaction.interaction.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for Snippet.Interaction(0);
  v2[4] = sub_2683CB7F8();
  return sub_268146C38;
}

uint64_t Snippet.Interaction.init(app:interaction:)@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  *a3 = v4;
  a3[1] = v5;
  type metadata accessor for Snippet.Interaction(0);
  return sub_2683CB7E8();
}

uint64_t sub_26820808C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_268208158(char a1)
{
  if (a1)
  {
    return 0x7463617265746E69;
  }

  else
  {
    return 7368801;
  }
}

id sub_268208190(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t type metadata accessor for Snippet.Interaction(uint64_t a1)
{
  result = qword_28024F858;
  if (!qword_28024F858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268208240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26820808C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268208268(uint64_t a1)
{
  v2 = sub_2682084A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682082A4(uint64_t a1)
{
  v2 = sub_2682084A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Interaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F820, &qword_2683DCDE0);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682084A4();
  sub_2683D0718();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v13[15] = 0;
  sub_2682084F8();

  sub_2683D0508();

  if (!v2)
  {
    type metadata accessor for Snippet.Interaction(0);
    LOBYTE(v14) = 1;
    sub_2683CB828();
    sub_2682088A0(&qword_28024F838, MEMORY[0x277D63470]);
    sub_2683D0548();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2682084A4()
{
  result = qword_28024F828;
  if (!qword_28024F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F828);
  }

  return result;
}

unint64_t sub_2682084F8()
{
  result = qword_28024F830;
  if (!qword_28024F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F830);
  }

  return result;
}

uint64_t Snippet.Interaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_2683CB828();
  OUTLINED_FUNCTION_0_3();
  v25 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F840, &qword_2683DCDE8);
  OUTLINED_FUNCTION_0_3();
  v27 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for Snippet.Interaction(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 0;
  *(v14 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682084A4();
  sub_2683D06F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v23 = v12;
    v24 = v7;
    v16 = v27;
    v15 = v28;
    v32 = 0;
    sub_26820884C();
    v17 = v29;
    sub_2683D0468();
    v18 = v30;
    v19 = v31;

    *v14 = v18;
    *(v14 + 1) = v19;
    LOBYTE(v30) = 1;
    sub_2682088A0(&qword_28024F850, MEMORY[0x277D63478]);
    v20 = v24;
    sub_2683D04A8();
    (*(v16 + 8))(v11, v17);
    (*(v25 + 32))(&v14[*(v23 + 20)], v20, v15);
    sub_2682088E4(v14, v26);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_268208948(v14);
  }
}

unint64_t sub_26820884C()
{
  result = qword_28024F848;
  if (!qword_28024F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F848);
  }

  return result;
}

uint64_t sub_2682088A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2683CB828();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2682088E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Interaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268208948(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Interaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2682089FC(uint64_t a1)
{
  sub_268208A80();
  if (v1 <= 0x3F)
  {
    sub_2683CB828();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268208A80()
{
  if (!qword_28024F868)
  {
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024F868);
    }
  }
}

_BYTE *_s14descr2878F8F29V11InteractionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268208BB0()
{
  result = qword_28024F870;
  if (!qword_28024F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F870);
  }

  return result;
}

unint64_t sub_268208C08()
{
  result = qword_28024F878;
  if (!qword_28024F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F878);
  }

  return result;
}

unint64_t sub_268208C60()
{
  result = qword_28024F880;
  if (!qword_28024F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F880);
  }

  return result;
}

char *Snippet.Color.init(red:green:blue:colorSpace:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v5 = *result;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_268208DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5079616C70736964 && a2 == 0xE900000000000033;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1111970419 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_268208E78(char a1)
{
  if (a1)
  {
    return 1111970419;
  }

  else
  {
    return 0x5079616C70736964;
  }
}

uint64_t sub_268208EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268208DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268208EDC(uint64_t a1)
{
  v2 = sub_2682092C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268208F18(uint64_t a1)
{
  v2 = sub_2682092C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268208F54(uint64_t a1)
{
  v2 = sub_26820936C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268208F90(uint64_t a1)
{
  v2 = sub_26820936C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268208FCC(uint64_t a1)
{
  v2 = sub_268209318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268209008(uint64_t a1)
{
  v2 = sub_268209318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Color.ColorSpace.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F888, &qword_2683DCF70);
  OUTLINED_FUNCTION_0_3();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F890, &qword_2683DCF78);
  OUTLINED_FUNCTION_0_3();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F898, &qword_2683DCF80);
  OUTLINED_FUNCTION_0_3();
  v14 = v13;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682092C4();
  sub_2683D0718();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_268209318();
    v20 = v24;
    sub_2683D04C8();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_26820936C();
    sub_2683D04C8();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

unint64_t sub_2682092C4()
{
  result = qword_28024F8A0;
  if (!qword_28024F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8A0);
  }

  return result;
}

unint64_t sub_268209318()
{
  result = qword_28024F8A8;
  if (!qword_28024F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8A8);
  }

  return result;
}

unint64_t sub_26820936C()
{
  result = qword_28024F8B0;
  if (!qword_28024F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8B0);
  }

  return result;
}

uint64_t Snippet.Color.ColorSpace.hashValue.getter()
{
  v1 = *v0;
  sub_2683D0698();
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

uint64_t Snippet.Color.ColorSpace.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8B8, &qword_2683DCF88);
  OUTLINED_FUNCTION_0_3();
  v40 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8C0, &qword_2683DCF90);
  OUTLINED_FUNCTION_0_3();
  v39 = v8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8C8, &unk_2683DCF98);
  OUTLINED_FUNCTION_0_3();
  v42 = v13;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v16 = v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682092C4();
  v17 = v44;
  sub_2683D06F8();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v7;
  v38 = v11;
  v44 = a1;
  v18 = v43;
  sub_2683D04B8();
  result = sub_268151B7C();
  if (v21 == v22 >> 1)
  {
    v43 = result;
LABEL_9:
    v32 = sub_2683D01D8();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
    *v34 = &type metadata for Snippet.Color.ColorSpace;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v16, v12);
    a1 = v44;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v36[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v20 + v21);
    v24 = sub_268151B68();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v43 = v24;
      goto LABEL_9;
    }

    v45 = v23;
    if (v23)
    {
      v47 = 1;
      sub_268209318();
      v29 = v6;
      OUTLINED_FUNCTION_97(&_s14descr2878F8F29V5ColorV10ColorSpaceO14SRGBCodingKeysON);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v29, v18);
    }

    else
    {
      v46 = 0;
      sub_26820936C();
      v35 = v38;
      OUTLINED_FUNCTION_97(&_s14descr2878F8F29V5ColorV10ColorSpaceO19DisplayP3CodingKeysON);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v39 + 8))(v35, v37);
    }

    (*(v31 + 8))(v16, v26);
    *v30 = v45;
    return __swift_destroy_boxed_opaque_existential_0(v44);
  }

  return result;
}

BOOL static Snippet.Color.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 != 2)
  {
    return v6 != 2 && ((v6 ^ v5) & 1) == 0;
  }

  return v6 == 2;
}

uint64_t sub_26820993C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_268209A98(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = 1702194274;
      break;
    case 3:
      result = 0x617053726F6C6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268209B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26820993C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268209B3C(uint64_t a1)
{
  v2 = sub_26820A108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268209B78(uint64_t a1)
{
  v2 = sub_26820A108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Color.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8D0, &qword_2683DCFA8);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26820A108();
  sub_2683D0718();
  v16 = v11;
  HIBYTE(v15) = 0;
  sub_26820A15C();
  OUTLINED_FUNCTION_2_27();
  if (!v2)
  {
    v16 = v10;
    HIBYTE(v15) = 1;
    OUTLINED_FUNCTION_2_27();
    v16 = v12;
    HIBYTE(v15) = 2;
    OUTLINED_FUNCTION_2_27();
    LOBYTE(v16) = v13;
    HIBYTE(v15) = 3;
    sub_26820A1B0();
    sub_2683D0508();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t Snippet.Color.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26D6171B0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x26D6171B0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x26D6171B0](*&v6);
  if (v4 == 2)
  {
    return sub_2683D06B8();
  }

  sub_2683D06B8();
  return MEMORY[0x26D617190](v4 & 1);
}

uint64_t Snippet.Color.hashValue.getter()
{
  sub_2683D0698();
  Snippet.Color.hash(into:)();
  return sub_2683D06D8();
}

uint64_t Snippet.Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8F0, &qword_2683DCFB0);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26820A108();
  sub_2683D06F8();
  if (!v2)
  {
    HIBYTE(v28) = 0;
    sub_26820A204();
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_5_24(v11, v12, v13, v14);
    v15 = v29;
    HIBYTE(v28) = 1;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_5_24(v16, v17, v18, v19);
    v20 = v29;
    HIBYTE(v28) = 2;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_5_24(v21, v22, v23, v24);
    v26 = v29;
    HIBYTE(v28) = 3;
    sub_26820A258();
    OUTLINED_FUNCTION_1_33();
    sub_2683D0468();
    (*(v7 + 8))(v10, v5);
    v27 = v29;
    *a2 = v15;
    *(a2 + 8) = v20;
    *(a2 + 16) = v26;
    *(a2 + 24) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_26820A07C(uint64_t a1)
{
  sub_2683D0698();
  Snippet.Color.hash(into:)();
  return sub_2683D06D8();
}

unint64_t sub_26820A108()
{
  result = qword_28024F8D8;
  if (!qword_28024F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8D8);
  }

  return result;
}

unint64_t sub_26820A15C()
{
  result = qword_28024F8E0;
  if (!qword_28024F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8E0);
  }

  return result;
}

unint64_t sub_26820A1B0()
{
  result = qword_28024F8E8;
  if (!qword_28024F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8E8);
  }

  return result;
}

unint64_t sub_26820A204()
{
  result = qword_28024F8F8;
  if (!qword_28024F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8F8);
  }

  return result;
}

unint64_t sub_26820A258()
{
  result = qword_28024F900;
  if (!qword_28024F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F900);
  }

  return result;
}

unint64_t sub_26820A2B0()
{
  result = qword_28024F908;
  if (!qword_28024F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F908);
  }

  return result;
}

unint64_t sub_26820A308()
{
  result = qword_28024F910;
  if (!qword_28024F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F910);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26820A370(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 24);
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26820A3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V5ColorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26820A500(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26820A600()
{
  result = qword_28024F918;
  if (!qword_28024F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F918);
  }

  return result;
}

unint64_t sub_26820A658()
{
  result = qword_28024F920;
  if (!qword_28024F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F920);
  }

  return result;
}

unint64_t sub_26820A6B0()
{
  result = qword_28024F928;
  if (!qword_28024F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F928);
  }

  return result;
}

unint64_t sub_26820A708()
{
  result = qword_28024F930;
  if (!qword_28024F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F930);
  }

  return result;
}

unint64_t sub_26820A760()
{
  result = qword_28024F938;
  if (!qword_28024F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F938);
  }

  return result;
}

unint64_t sub_26820A7B8()
{
  result = qword_28024F940;
  if (!qword_28024F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F940);
  }

  return result;
}

unint64_t sub_26820A810()
{
  result = qword_28024F948;
  if (!qword_28024F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F948);
  }

  return result;
}

unint64_t sub_26820A868()
{
  result = qword_28024F950;
  if (!qword_28024F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F950);
  }

  return result;
}

unint64_t sub_26820A8C0()
{
  result = qword_28024F958;
  if (!qword_28024F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F958);
  }

  return result;
}

unint64_t sub_26820A918()
{
  result = qword_28024F960;
  if (!qword_28024F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return sub_2683D0548();
}

uint64_t OUTLINED_FUNCTION_5_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2683D04A8();
}

uint64_t sub_26820A9CC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26820AAE8;

  return v7(0, a1, a2);
}

uint64_t sub_26820AAE8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_26820ABE8()
{
  v0 = sub_2683CB438();
  __swift_allocate_value_buffer(v0, qword_2814B1D10);
  __swift_project_value_buffer(v0, qword_2814B1D10);
  v1 = objc_opt_self();
  type metadata accessor for NotebookSuggestionsCATs(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v1 bundleTemplateDir_];

  if (v4)
  {
    sub_2683CFA78();

    sub_2683CB3B8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static SuggestionDialogUtil.templateDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814B1D08 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CB438();
  v3 = __swift_project_value_buffer(v2, qword_2814B1D10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t SuggestionDialogUtil.DialogId.catId.getter()
{
  v1 = 0xEE007265646E696DLL;
  v2 = 0x6552657461657263;
  switch(*v0)
  {
    case 1:
      v1 = 0xEA00000000006574;
      v2 = 0x6F4E657461657263;
      break;
    case 2:
      v3 = "addReminderLocation";
      goto LABEL_7;
    case 3:
      v1 = 0xEF656D6954726564;
      v2 = 0x6E696D6552646461;
      break;
    case 4:
      v1 = 0x80000002683FA960;
      v2 = 0xD000000000000012;
      break;
    case 5:
      v3 = "markAsCompletedHint";
LABEL_7:
      v1 = (v3 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000013;
      break;
    default:
      break;
  }

  MEMORY[0x26D616690](v2, v1);

  return 0xD000000000000014;
}

unint64_t SuggestionDialogUtil.DialogId.rawValue.getter()
{
  result = 0x6552657461657263;
  switch(*v0)
  {
    case 1:
      result = 0x6F4E657461657263;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6E696D6552646461;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

SiriNotebook::SuggestionDialogUtil::DialogId_optional __swiftcall SuggestionDialogUtil.DialogId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2683D0408();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_26820AFE8()
{
  result = qword_28024F968;
  if (!qword_28024F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F968);
  }

  return result;
}

unint64_t sub_26820B060@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionDialogUtil.DialogId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionDialogUtil(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SuggestionDialogUtil.DialogId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SuggestionDialogUtil.DialogId(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
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

uint64_t sub_26820B2FC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26820B31C);
}

uint64_t sub_26820B31C()
{
  v1 = v0[8];
  v2 = [objc_allocWithZone(MEMORY[0x277D4C5A0]) init];
  v3 = *v1;
  v4 = v1[1];
  v5 = v2;
  sub_26820B598(v3, v4, v5);
  if (v1[3])
  {
    v6 = sub_2683CFA68();
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[8];
  [v5 setSubtitle_];

  [v5 setIsCentered_];
  [v5 setTitleAlign_];
  if (*(v7 + 48))
  {
    v8 = 0;
  }

  else
  {
    sub_26820B5F0();
    v8 = sub_2683CFF38();
  }

  v9 = v0[7];
  v10 = v0[8];
  [v5 setTitleWeight_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2683D1EC0;
  v0[2] = v9;
  v0[3] = sub_26816B178;
  v0[4] = 0;
  v0[5] = sub_26816B19C;
  v0[6] = 0;
  v12 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  sub_2681B4CB8();
  v13 = sub_2683CFA38();
  v15 = v14;

  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_2681B2EE4(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2683D1EC0;
  *(v16 + 32) = sub_26839EEEC(v12, *(v10 + 64), MEMORY[0x277D84F90]);
  *(v16 + 40) = v17;

  v18 = v0[1];

  return v18(v16);
}

void sub_26820B598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 setTitle_];
}

unint64_t sub_26820B5F0()
{
  result = qword_28024F970;
  if (!qword_28024F970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024F970);
  }

  return result;
}

uint64_t sub_26820B634(uint64_t a1, int a2)
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

uint64_t sub_26820B674(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_11SiriKitFlow0A17CorrectionsClient_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26820B6EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_26820B72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26820B7E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26820B7F4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_39_6((v0[3] + 80));
  v1 = OUTLINED_FUNCTION_13_19();
  if (v2(v1))
  {
    sub_2683CEC88();
    sub_2683CEC78();
    sub_2683CEC38();
    OUTLINED_FUNCTION_97_0();

    sub_2683CF698();
    v4 = v3;

    v0[4] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[5] = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_27_9(v5);

      return sub_26820BC40(v6, v7, v8);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v12))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v13, v14, "[SuggestionsProvider] Missing or malformed request ID.");
      OUTLINED_FUNCTION_36();
    }
  }

  OUTLINED_FUNCTION_40();

  return v15();
}

uint64_t sub_26820B98C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26820B9AC);
}

uint64_t sub_26820B9AC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_39_6((v0[3] + 80));
  v1 = OUTLINED_FUNCTION_13_19();
  if (v2(v1))
  {
    sub_2683CEC88();
    sub_2683CEC78();
    sub_2683CEC38();
    OUTLINED_FUNCTION_97_0();

    sub_2683CF698();
    v4 = v3;

    v0[4] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[5] = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_27_9(v5);

      return sub_26820C188(v6, v7, v8);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v12))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v13, v14, "[SuggestionsProvider] Missing or malformed request ID.");
      OUTLINED_FUNCTION_36();
    }
  }

  OUTLINED_FUNCTION_40();

  return v15();
}

uint64_t sub_26820BB44()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26820BC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26820BC58()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  *(v0 + 136) = sub_2683CC848();
  sub_268129504(0, &qword_28024D340, 0x277CD4058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F990, &qword_2683DD878);
  OUTLINED_FUNCTION_41_0();
  if (swift_dynamicCast())
  {
    v1 = OUTLINED_FUNCTION_41_0();
    sub_268128148(v1, v2);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_2_28(v5);

    return sub_2681653FC(v6, v7, v8, v4, v3);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_2681433DC(v0 + 56, &qword_28024F998, &qword_2683DD880);
    OUTLINED_FUNCTION_50_3();
    v10 = sub_2683CC818();
    v11 = sub_268129504(0, &qword_28024D348, 0x277CD4060);
    *(v0 + 120) = v11;
    *(v0 + 128) = &off_2879034D0;
    *(v0 + 96) = v10;
    __swift_project_boxed_opaque_existential_1((v0 + 96), v11);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v13 = OUTLINED_FUNCTION_2_28(v12);

    return sub_26820C7A0(v13, v14, v15);
  }
}
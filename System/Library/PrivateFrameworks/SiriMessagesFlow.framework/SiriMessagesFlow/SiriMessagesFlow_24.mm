uint64_t sub_267DB35E4()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_47_14();
  sub_267DB37C4(v0, v1, v2, v3, v4, v5, 2u);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267DB3668()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_47_14();
  sub_267DB37C4(v0, v1, v2, v3, v4, v5, 3u);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267DB36EC()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

double sub_267DB3764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >= 3u)
  {
    if (a7 != 3)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_267DB37C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >= 3u)
  {
    if (a7 != 3)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_267DB3864(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 4)
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

uint64_t sub_267DB38A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_267DB3928(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_267DB3968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267DB3B04()
{
  v26 = &type metadata for GenericCountableComponent;
  v27 = sub_267C82904();
  OUTLINED_FUNCTION_160_1();
  *&v25 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_89_10(v25);
  memcpy(v3, v4, 0x42uLL);
  sub_267B9A5E8(&v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v6 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  if (!OUTLINED_FUNCTION_168_2(v6))
  {
    v15 = OUTLINED_FUNCTION_103_6();
    sub_267DBC288(v15, v16);
    v17 = v1;
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_39_14();
  if (v2)
  {
    v21 = OUTLINED_FUNCTION_103_6();
    sub_267DBC288(v21, v22);
    v23 = v1;
    OUTLINED_FUNCTION_114_7();
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = OUTLINED_FUNCTION_103_6();
    sub_267DBC288(v8, v9);
    v10 = v1;
    v11 = v7;
  }

  v12 = v11;
  v13 = [v11 recipients];

  if (!v13)
  {
    goto LABEL_7;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v14 = sub_267EF92F8();

LABEL_8:
  sub_267BE881C(inited, v14);
  v19 = v18;

  swift_setDeallocating();
  sub_267DB7190(&qword_280229790, &qword_267EFE4C0);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}

uint64_t sub_267DB3E10()
{
  v16 = &type metadata for ReactionComponent;
  v17 = &off_2878D30D0;
  OUTLINED_FUNCTION_99_8();
  *&v15 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_89_10(v15);
  memcpy(v1, v2, 0x71uLL);
  sub_267B9A5E8(&v15, v14);
  v3 = __swift_project_boxed_opaque_existential_0(v14, v14[3])[9];
  v4 = *(v0 + 40);
  if (!sub_267BAF0DC(v4))
  {
    sub_267C772E8(v0, v13);

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_267C772E8(v0, v13);

    OUTLINED_FUNCTION_114_7();
  }

  else
  {
    v5 = *(v4 + 32);
    sub_267C772E8(v0, v13);

    v6 = v5;
  }

  v7 = v6;
  v8 = [v6 recipients];

  if (!v8)
  {
    goto LABEL_7;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v9 = sub_267EF92F8();

LABEL_8:
  sub_267BE881C(v3, v9);
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_267DB3F8C()
{
  v1 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  sub_267D5D124(v0, &v12);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B4F0, &qword_267F062B0);
    sub_267EF9098();
    sub_267D5D15C(v1);
    v7 = OUTLINED_FUNCTION_63();
    v10 = sub_267BA33E8(v7, v8, v9);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_267B93000, v3, v4, "#ReadableComponent#conversationContactIdentifiers unknown component type %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267D5D15C(v0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267DB424C()
{
  v1 = v0;
  v22 = &type metadata for AudioComponent;
  v23 = sub_267DBC1F0();
  v2 = swift_allocObject();
  *&v21 = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  sub_267B9A5E8(&v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v5 = __swift_project_boxed_opaque_existential_0(v20, v20[3]);
  v6 = *v5;
  *(inited + 32) = *v5;
  v7 = *(v1 + 8);
  if (!sub_267BAF0DC(v7))
  {
    sub_267DBC244(v1, v19);
    v14 = v6;
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  sub_267BBD0EC(0, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_267DBC244(v1, v19);
    v18 = v6;
    v10 = MEMORY[0x26D609870](0, v7);
  }

  else
  {
    v8 = *(v7 + 32);
    sub_267DBC244(v1, v19);
    v9 = v6;
    v10 = v8;
  }

  v11 = v10;
  v12 = [v10 recipients];

  if (!v12)
  {
    goto LABEL_7;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v13 = sub_267EF92F8();

LABEL_8:
  sub_267BE881C(inited, v13);
  v16 = v15;

  swift_setDeallocating();
  sub_267DB7190(&qword_280229790, &qword_267EFE4C0);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v16;
}

uint64_t sub_267DB441C()
{
  v26 = &type metadata for PaymentComponent;
  v27 = sub_267DBCB60();
  OUTLINED_FUNCTION_99_8();
  *&v25 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_89_10(v25);
  memcpy(v3, v4, 0x71uLL);
  sub_267B9A5E8(&v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v6 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  if (!OUTLINED_FUNCTION_168_2(v6))
  {
    v15 = OUTLINED_FUNCTION_103_6();
    sub_267D5D40C(v15, v16);
    v17 = v1;
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_39_14();
  if (v2)
  {
    v21 = OUTLINED_FUNCTION_103_6();
    sub_267D5D40C(v21, v22);
    v23 = v1;
    OUTLINED_FUNCTION_114_7();
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = OUTLINED_FUNCTION_103_6();
    sub_267D5D40C(v8, v9);
    v10 = v1;
    v11 = v7;
  }

  v12 = v11;
  v13 = [v11 recipients];

  if (!v13)
  {
    goto LABEL_7;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v14 = sub_267EF92F8();

LABEL_8:
  sub_267BE881C(inited, v14);
  v19 = v18;

  swift_setDeallocating();
  sub_267DB7190(&qword_280229790, &qword_267EFE4C0);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}

uint64_t sub_267DB4A70()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 264) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 104) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 144) = swift_task_alloc();
  v8 = sub_267EF2E38();
  *(v1 + 152) = v8;
  *(v1 + 160) = *(v8 - 8);
  *(v1 + 168) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DB4B64()
{
  v1 = *(v0 + 136);
  v2 = *v1;
  if (*v1)
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
    v7 = OUTLINED_FUNCTION_63();
    v8(v7);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_63();
    sub_267EF3B68();
    v9 = v6[52];

    v2 = sub_267BC20F4(v3, 0, 0, v9, v2);

    (*(v4 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v1 = *(v0 + 136);
  }

  *(v0 + 176) = v2;
  v10 = sub_267BAF0DC(*(v1 + 8));
  *(v0 + 184) = v10;
  if (*(v1 + 48))
  {
    v11 = 1;
  }

  else
  {
    INMessageEffectType.description.getter(*(*(v0 + 136) + 40));
    sub_267EF90F8();

    v11 = 0;
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 104);
  v14 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v12, v11, 1, v14);
  v15 = OUTLINED_FUNCTION_63();
  v17 = sub_267DB86B0(v15, v16);
  *(v0 + 192) = v17;
  if (*(v13 + 88))
  {
    OUTLINED_FUNCTION_10(&unk_267F08C90);
    v31 = v18;
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_267DB4E7C;
    v20 = *(v0 + 136);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);

    return v31(v20, v21, v22);
  }

  else
  {
    v24 = v17;
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = *(v0 + 120);
    v32 = *(v0 + 104);
    v28 = __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
    sub_267BB8364(v28);
    v29 = swift_task_alloc();
    *(v0 + 240) = v29;
    *(v29 + 16) = v27;
    *(v29 + 24) = v2;
    *(v29 + 32) = v10;
    *(v29 + 40) = v25;
    *(v29 + 48) = v24;
    *(v29 + 56) = vextq_s8(v32, v32, 8uLL);
    *(v29 + 72) = v26;
    v30 = swift_task_alloc();
    *(v0 + 248) = v30;
    *v30 = v0;
    v30[1] = sub_267DB5368;

    return sub_267D42008();
  }
}

uint64_t sub_267DB4E7C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DB4F64()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 184);
  v9 = __swift_project_boxed_opaque_existential_0(*(v0 + 128), *(*(v0 + 128) + 24));
  sub_267BB8364(v9);
  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v3;
  *(v10 + 32) = v8;
  *(v10 + 40) = v5;
  *(v10 + 48) = v2;
  *(v10 + 56) = v1;
  *(v10 + 64) = v7;
  *(v10 + 72) = v4;
  v11 = swift_task_alloc();
  *(v0 + 224) = v11;
  *v11 = v0;
  v11[1] = sub_267DB50A8;

  return sub_267D44D54();
}

uint64_t sub_267DB50A8()
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
  *(v7 + 232) = v0;

  if (v0)
  {
    v8 = sub_267DB52C4;
  }

  else
  {
    v8 = sub_267DB51C8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267DB51C8()
{
  OUTLINED_FUNCTION_56();

  v1 = v0[8];
  v2 = v0[13];
  if (*(v2 + 416) && (*(v2 + 426) & 1) == 0)
  {

    sub_267C38238();
  }

  v3 = v0[18];

  sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_4_3();

  return v4(v1);
}

uint64_t sub_267DB52C4()
{
  OUTLINED_FUNCTION_56();

  v1 = *(v0 + 144);

  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267DB5368()
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
  *(v7 + 256) = v0;

  if (v0)
  {
    v8 = sub_267DB557C;
  }

  else
  {
    v8 = sub_267DB5488;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267DB5488()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[11];
  v2 = v0[13];
  if (*(v2 + 416) && (*(v2 + 426) & 1) == 0)
  {

    sub_267C38238();
  }

  v3 = v0[18];

  sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_4_3();

  return v4(v1);
}

uint64_t sub_267DB557C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 144);

  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267DB5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 88) = a4;
  *(v9 + 80) = a9;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 56) = a1;
  v10 = sub_267EF8248();
  *(v9 + 128) = v10;
  *(v9 + 136) = *(v10 - 8);
  *(v9 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DB5754, 0, 0);
}

void sub_267DB5754()
{
  v2 = *(v0 + 56);
  SpokenAudioComponentParameters = type metadata accessor for SearchForMessagesReadSpokenAudioComponentParameters(0);
  *(v0 + 192) = SpokenAudioComponentParameters;
  v4 = SpokenAudioComponentParameters[7];
  sub_267B9F98C(v2 + v4, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v6 = sub_267EF79B8();
  *(v0 + 200) = v6;
  OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_155_2();
  v8(v7);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  OUTLINED_FUNCTION_122_5();
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(SpokenAudioComponentParameters[13]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(SpokenAudioComponentParameters[14]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(SpokenAudioComponentParameters[17]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_134_2();
  v30 = *(v0 + 160);
  v31 = *(v0 + 56);
  OUTLINED_FUNCTION_40_15();
  sub_267BD3DDC(v30, v31 + SpokenAudioComponentParameters[19]);
  OUTLINED_FUNCTION_79_10();
  v12 = *(v1 + SpokenAudioComponentParameters[15]);

  OUTLINED_FUNCTION_117_7();
  sub_267BE855C(v6, v1 + v31[9]);
  v13 = v31[6];

  *(v1 + v13) = v4;
  v14 = v31[18];
  v15 = *(v1 + v14);

  *(v1 + v14) = v30;
  v16 = sub_267EF7998();
  *(v0 + 240) = OUTLINED_FUNCTION_165_1(v16, v17);
  v18 = sub_267BDAF74(v15);
  *(v0 + 256) = v18 & 1;
  if (v18)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_267DB5C58;
    OUTLINED_FUNCTION_98();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_129_2(v18);
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v31)
  {
    OUTLINED_FUNCTION_48_19();
    (*(v22 + 8))(v12);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_38_18();
    v24(v23);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v25, v26, v27);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_98();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267DB5C58()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 257) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DB5D40(uint64_t a1)
{
  v2 = *(v1 + 257);
  v11 = *(v1 + 208);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  if (v11)
  {
    OUTLINED_FUNCTION_48_19();
    (*(v3 + 8))(v2);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_38_18();
    v6(v5);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v7, v8, v9);
  }

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DB5EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 88) = a4;
  *(v9 + 80) = a9;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 56) = a1;
  v10 = sub_267EF8248();
  *(v9 + 128) = v10;
  *(v9 + 136) = *(v10 - 8);
  *(v9 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DB6018, 0, 0);
}

void sub_267DB6018()
{
  v2 = *(v0 + 56);
  AudioComponentParameters = type metadata accessor for SearchForMessagesReadAudioComponentParameters(0);
  *(v0 + 192) = AudioComponentParameters;
  v4 = AudioComponentParameters[7];
  sub_267B9F98C(v2 + v4, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v6 = sub_267EF79B8();
  *(v0 + 200) = v6;
  OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_155_2();
  v8(v7);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  OUTLINED_FUNCTION_122_5();
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(AudioComponentParameters[14]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(AudioComponentParameters[15]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_24_5(AudioComponentParameters[18]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_134_2();
  v30 = *(v0 + 160);
  v31 = *(v0 + 56);
  OUTLINED_FUNCTION_40_15();
  sub_267BD3DDC(v30, v31 + AudioComponentParameters[19]);
  OUTLINED_FUNCTION_79_10();
  v12 = *(v1 + AudioComponentParameters[16]);

  OUTLINED_FUNCTION_117_7();
  sub_267BE855C(v6, v1 + v31[10]);
  v13 = v31[6];

  *(v1 + v13) = v4;
  v14 = v31[9];
  v15 = *(v1 + v14);

  *(v1 + v14) = v30;
  v16 = sub_267EF7998();
  *(v0 + 240) = OUTLINED_FUNCTION_165_1(v16, v17);
  v18 = sub_267BDAF74(v15);
  *(v0 + 256) = v18 & 1;
  if (v18)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_267DB651C;
    OUTLINED_FUNCTION_98();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_129_2(v18);
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v31)
  {
    OUTLINED_FUNCTION_48_19();
    (*(v22 + 8))(v12);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_38_18();
    v24(v23);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v25, v26, v27);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_98();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267DB651C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 257) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DB6604(uint64_t a1)
{
  v2 = v1;
  sub_267C2FB6C(a1, v15, &qword_280229910, &unk_267EFEB70);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      v8[0] = v11;
      v8[1] = v12;
      v9 = v13;
      v10 = v14;
      v3 = *v1;
      if (*v1)
      {
        if (!v11)
        {
          goto LABEL_15;
        }

        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        v4 = v11;
        v5 = v3;
        v6 = sub_267EF9818();

        if ((v6 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (v11)
      {
LABEL_15:
        sub_267DB6CD8(v8);
        return 0;
      }

      if (v2[6])
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if ((v10 & 1) != 0 || v2[5] != *(&v9 + 1))
      {
        goto LABEL_15;
      }

      sub_267BE22E4(*(&v8[0] + 1), v2 + 1);
      sub_267DB6CD8(v8);
      return 1;
    }
  }

  else
  {
    sub_267B9F98C(v15, &qword_280229910, &unk_267EFEB70);
  }

  return 0;
}

id sub_267DB6790()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_267DB67C4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_267DB67FC()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_267DB683C()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_267DB68E0;

  return sub_267DB676C();
}

uint64_t sub_267DB68E0()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_4_3();

  return v5(v2);
}

uint64_t sub_267DB69CC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  *(v1 + 64) = *(v0 + 24);
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 16) = v2;
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v1;
  v5[1] = sub_267DB6AAC;

  return sub_267DB4A70();
}

uint64_t sub_267DB6AAC()
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

unint64_t sub_267DB6BE0(uint64_t a1)
{
  result = sub_267DB6C08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267DB6C08()
{
  result = qword_28022BE28;
  if (!qword_28022BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE28);
  }

  return result;
}

unint64_t sub_267DB6C5C(uint64_t a1)
{
  result = sub_267DB6C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267DB6C84()
{
  result = qword_28022BE30;
  if (!qword_28022BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE30);
  }

  return result;
}

void sub_267DB6D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v32 = MEMORY[0x277D84F90];
    sub_267BE8B74(0, v3, 0);
    v6 = (a1 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8)
      {
        v9 = sub_267BBD380(v7);
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      v13 = *(v32 + 16);
      v12 = *(v32 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_267BE8B74((v12 > 1), v13 + 1, 1);
      }

      *(v32 + 16) = v13 + 1;
      v14 = v32 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      --v3;
    }

    while (v3);
  }

  if (a2)
  {
    v15 = sub_267BAF0DC(a2);
    for (i = 0; ; ++i)
    {
      if (v15 == i)
      {
        v19 = v4;
        v20 = sub_267BAF0DC(v4);
        if (v20)
        {
          v21 = v20;
          sub_267BE8B74(0, v20 & ~(v20 >> 63), 0);
          if (v21 < 0)
          {
            goto LABEL_36;
          }

          v22 = 0;
          v23 = v4;
          do
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x26D609870](v22, v19);
            }

            else
            {
              v24 = *(v19 + 8 * v22 + 32);
            }

            v25 = v24;
            v26 = sub_267BBD380(v24);
            v28 = v27;

            v30 = *(v23 + 16);
            v29 = *(v23 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_267BE8B74((v29 > 1), v30 + 1, 1);
            }

            ++v22;
            *(v23 + 16) = v30 + 1;
            v31 = v23 + 16 * v30;
            *(v31 + 32) = v26;
            *(v31 + 40) = v28;
          }

          while (v21 != v22);
        }

        else
        {

          v23 = MEMORY[0x277D84F90];
        }

        sub_267BE8BC8(v23);
        return;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D609870](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v17 = *(a2 + 8 * i + 32);
      }

      v18 = v17;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v17 isMe])
      {
      }

      else
      {
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

uint64_t sub_267DB6FD4()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

uint64_t sub_267DB7014()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3D8, &qword_267F08D00);
  OUTLINED_FUNCTION_167_1();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

uint64_t sub_267DB7080()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

uint64_t sub_267DB7114(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_167_1();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

uint64_t sub_267DB7190(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_70();

  return swift_deallocClassInstance();
}

void sub_267DB71D8()
{
  OUTLINED_FUNCTION_48_0();
  v3 = OUTLINED_FUNCTION_95_8();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_30(v5, v117);
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_18(v7, v8, v9, v10, v11, v12, v13, v14, v118);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11_37(v16, v119);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v18 = OUTLINED_FUNCTION_18(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_141();
  v132[3] = &unk_2878CE588;
  v20 = sub_267C1016C();
  v132[4] = v20;
  OUTLINED_FUNCTION_163_1();
  v132[0] = swift_allocObject();
  v21 = OUTLINED_FUNCTION_109_8();
  sub_267C1023C(v21, v22);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v23 = qword_280240FC8;
  sub_267EF95D8();
  OUTLINED_FUNCTION_75_8("Beginning to create MessageComponentDialogContext..", v24, v25, &dword_267B93000);
  __swift_project_boxed_opaque_existential_0(v132, &unk_2878CE588);
  v26 = OUTLINED_FUNCTION_29_21();
  v28 = v27(v26);
  OUTLINED_FUNCTION_76_9(v28, v29);
  if (v130)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17(v30) & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(v129, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD9E24();
  if (v130)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14(v31) & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(v129, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  v32 = OUTLINED_FUNCTION_0_47(v132);
  v34 = v33(v32);
  v35 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v35, v36, v37, v38);
  if (v130)
  {
    v39 = OUTLINED_FUNCTION_0_47(v129);
    v41 = v40(v39);
    OUTLINED_FUNCTION_170_2(v41);
  }

  else
  {
    sub_267B9F98C(v129, &qword_280229CE0, &qword_267F00410);
    v128 = 0;
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD997C();
  OUTLINED_FUNCTION_78_12();
  if (!v42)
  {
    sub_267B9F98C(&v131, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8(v43, v44, v43, &type metadata for ReactionComponent) & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_32();
  if (!v45)
  {
    OUTLINED_FUNCTION_141_2();

LABEL_21:
    OUTLINED_FUNCTION_86_9();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_53_13();
  if (v46)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v2 = v127;
  if (v0 != 1)
  {

    v128 = v0;
  }

  OUTLINED_FUNCTION_90_8();
LABEL_25:
  v47 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v47, v48, v49, v50);
  v51 = v130;
  if (v130)
  {
    v52 = OUTLINED_FUNCTION_0_47(v129);
    v53(v52);
    OUTLINED_FUNCTION_171_2();
  }

  else
  {
    sub_267B9F98C(v129, &qword_280229CE0, &qword_267F00410);
    v20 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v54 = OUTLINED_FUNCTION_53_0();
  v56 = v55(v54);
  OUTLINED_FUNCTION_85_9(v56);
  if (v57 && v34)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v58 = v34;
    v59 = OUTLINED_FUNCTION_176_1();
    OUTLINED_FUNCTION_33();
    v23 = sub_267EF9818();
  }

  OUTLINED_FUNCTION_162_1();
  if (v20 && v34)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v61 = v34;
    v62 = v20;
    OUTLINED_FUNCTION_33();
    v23 = sub_267EF9818();

    v60 = v23 ^ 1;
  }

  v125 = v60;
  v63 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v63, v64, v65, v66);
  if (!v130)
  {
    sub_267B9F98C(v129, &qword_280229CE0, &qword_267F00410);
    v74 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v3);
    goto LABEL_39;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v68 = OUTLINED_FUNCTION_59_13(v67);
  OUTLINED_FUNCTION_8_41(v68);
  if (v45)
  {
LABEL_39:
    sub_267B9F98C(v1, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v1);
  OUTLINED_FUNCTION_107_7();
  sub_267BB5034();
  OUTLINED_FUNCTION_175_1();
  v69 = OUTLINED_FUNCTION_34_17();
  v70(v69);

  v71 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v71, v72);
  OUTLINED_FUNCTION_69_7();
  if (v23)
  {
    v73 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
  }

LABEL_40:
  OUTLINED_FUNCTION_110_7();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_45_16(v77))
  {
    v78 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_174_0(v78);
    v79 = OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_143_2(v79, v80);
    sub_267BB5034();
    OUTLINED_FUNCTION_146_2();
    v81 = OUTLINED_FUNCTION_35_18();
    v82(v81);

    v83 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v83, v84);
    OUTLINED_FUNCTION_69_7();
    if (v23)
    {
      v85 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    v86 = *(v0 + 32);
    if (v86 && *(v86 + 16))
    {
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_33();
      sub_267BB40A0();

      if (v130)
      {
        OUTLINED_FUNCTION_128_4();
        if (OUTLINED_FUNCTION_4_11())
        {
          OUTLINED_FUNCTION_68_8();
        }
      }

      else
      {
        sub_267B9F98C(v129, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v0);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v2, &qword_28022A090, &unk_267F08CC0);
    v0 = 0;
  }

  OUTLINED_FUNCTION_81_9();
  if (v87)
  {
    v88 = OUTLINED_FUNCTION_37_15();
    v89 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v89, v90, v91, v92);
    if (!v130)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_44_15();
  }

  else
  {

    v88 = 0;
  }

  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v93);
  v95 = OUTLINED_FUNCTION_3_50(v94, v120);
  v96(v95);
  OUTLINED_FUNCTION_58_8();
  v97 = OUTLINED_FUNCTION_32_15();
  v98(v97);
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v99);
  v101 = OUTLINED_FUNCTION_2_49(v100, v121);
  v102(v101);
  OUTLINED_FUNCTION_67_6();
  v103 = OUTLINED_FUNCTION_28_25();
  v104(v103);
  OUTLINED_FUNCTION_153_2();
  if ((v105 & 1) == 0)
  {
    if ((v88 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v125)
    {
      OUTLINED_FUNCTION_110_7();
      if (!OUTLINED_FUNCTION_56_12())
      {
        goto LABEL_61;
      }

      sub_267C00468(v0);
    }
  }

  OUTLINED_FUNCTION_121_5();
LABEL_61:
  v106 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_159_2();
  if (v107)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13();
  }

  sub_267C00EDC(v132);
  OUTLINED_FUNCTION_80_7();
  v108 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v108, v127, v122[0], v122[1], v122[2]);
  OUTLINED_FUNCTION_132_2();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v110 = OUTLINED_FUNCTION_9_14(v109);
  OUTLINED_FUNCTION_127_5(v110, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  v113 = sub_267C00310(v111, v112, &unk_267F032C8);
  OUTLINED_FUNCTION_96_7(v113);
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  v110[3].n128_u64[1] = v106;
  v114 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v114);
  OUTLINED_FUNCTION_57_11("#MessagesDialogContextFactory MessageComponentDialogContext: %@", v115, v116, &dword_267B93000);

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v132);
  OUTLINED_FUNCTION_47();
}

void sub_267DB7C44()
{
  OUTLINED_FUNCTION_48_0();
  v3 = OUTLINED_FUNCTION_95_8();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_30(v5, v117);
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_18(v7, v8, v9, v10, v11, v12, v13, v14, v118);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11_37(v16, v119);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v18 = OUTLINED_FUNCTION_18(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_141();
  v132[3] = &type metadata for LinkComponent;
  v20 = sub_267D68A64();
  v132[4] = v20;
  OUTLINED_FUNCTION_148_2();
  v132[0] = swift_allocObject();
  v21 = OUTLINED_FUNCTION_109_8();
  sub_267D68B34(v21, v22);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v23 = qword_280240FC8;
  sub_267EF95D8();
  OUTLINED_FUNCTION_75_8("Beginning to create MessageComponentDialogContext..", v24, v25, &dword_267B93000);
  __swift_project_boxed_opaque_existential_0(v132, &type metadata for LinkComponent);
  v26 = OUTLINED_FUNCTION_29_21();
  v28 = v27(v26);
  OUTLINED_FUNCTION_76_9(v28, v29);
  if (v130)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17(v30) & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(v129, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD9E24();
  if (v130)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14(v31) & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(v129, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  v32 = OUTLINED_FUNCTION_0_47(v132);
  v34 = v33(v32);
  v35 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v35, v36, v37, v38);
  if (v130)
  {
    v39 = OUTLINED_FUNCTION_0_47(v129);
    v41 = v40(v39);
    OUTLINED_FUNCTION_170_2(v41);
  }

  else
  {
    sub_267B9F98C(v129, &qword_280229CE0, &qword_267F00410);
    v128 = 0;
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD997C();
  OUTLINED_FUNCTION_78_12();
  if (!v42)
  {
    sub_267B9F98C(&v131, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8(v43, v44, v43, &type metadata for ReactionComponent) & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_32();
  if (!v45)
  {
    OUTLINED_FUNCTION_141_2();

LABEL_21:
    OUTLINED_FUNCTION_86_9();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_53_13();
  if (v46)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v2 = v127;
  if (v0 != 1)
  {

    v128 = v0;
  }

  OUTLINED_FUNCTION_90_8();
LABEL_25:
  v47 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v47, v48, v49, v50);
  v51 = v130;
  if (v130)
  {
    v52 = OUTLINED_FUNCTION_0_47(v129);
    v53(v52);
    OUTLINED_FUNCTION_171_2();
  }

  else
  {
    sub_267B9F98C(v129, &qword_280229CE0, &qword_267F00410);
    v20 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v54 = OUTLINED_FUNCTION_53_0();
  v56 = v55(v54);
  OUTLINED_FUNCTION_85_9(v56);
  if (v57 && v34)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v58 = v34;
    v59 = OUTLINED_FUNCTION_176_1();
    OUTLINED_FUNCTION_33();
    v23 = sub_267EF9818();
  }

  OUTLINED_FUNCTION_162_1();
  if (v20 && v34)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v61 = v34;
    v62 = v20;
    OUTLINED_FUNCTION_33();
    v23 = sub_267EF9818();

    v60 = v23 ^ 1;
  }

  v125 = v60;
  v63 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v63, v64, v65, v66);
  if (!v130)
  {
    sub_267B9F98C(v129, &qword_280229CE0, &qword_267F00410);
    v74 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v3);
    goto LABEL_39;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v68 = OUTLINED_FUNCTION_59_13(v67);
  OUTLINED_FUNCTION_8_41(v68);
  if (v45)
  {
LABEL_39:
    sub_267B9F98C(v1, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v1);
  OUTLINED_FUNCTION_107_7();
  sub_267BB5034();
  OUTLINED_FUNCTION_175_1();
  v69 = OUTLINED_FUNCTION_34_17();
  v70(v69);

  v71 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v71, v72);
  OUTLINED_FUNCTION_69_7();
  if (v23)
  {
    v73 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
  }

LABEL_40:
  OUTLINED_FUNCTION_110_7();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_45_16(v77))
  {
    v78 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_174_0(v78);
    v79 = OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_143_2(v79, v80);
    sub_267BB5034();
    OUTLINED_FUNCTION_146_2();
    v81 = OUTLINED_FUNCTION_35_18();
    v82(v81);

    v83 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v83, v84);
    OUTLINED_FUNCTION_69_7();
    if (v23)
    {
      v85 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    v86 = *(v0 + 32);
    if (v86 && *(v86 + 16))
    {
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_33();
      sub_267BB40A0();

      if (v130)
      {
        OUTLINED_FUNCTION_128_4();
        if (OUTLINED_FUNCTION_4_11())
        {
          OUTLINED_FUNCTION_68_8();
        }
      }

      else
      {
        sub_267B9F98C(v129, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v0);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v2, &qword_28022A090, &unk_267F08CC0);
    v0 = 0;
  }

  OUTLINED_FUNCTION_81_9();
  if (v87)
  {
    v88 = OUTLINED_FUNCTION_37_15();
    v89 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v89, v90, v91, v92);
    if (!v130)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_44_15();
  }

  else
  {

    v88 = 0;
  }

  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v93);
  v95 = OUTLINED_FUNCTION_3_50(v94, v120);
  v96(v95);
  OUTLINED_FUNCTION_58_8();
  v97 = OUTLINED_FUNCTION_32_15();
  v98(v97);
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v99);
  v101 = OUTLINED_FUNCTION_2_49(v100, v121);
  v102(v101);
  OUTLINED_FUNCTION_67_6();
  v103 = OUTLINED_FUNCTION_28_25();
  v104(v103);
  OUTLINED_FUNCTION_153_2();
  if ((v105 & 1) == 0)
  {
    if ((v88 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v125)
    {
      OUTLINED_FUNCTION_110_7();
      if (!OUTLINED_FUNCTION_56_12())
      {
        goto LABEL_61;
      }

      sub_267C00468(v0);
    }
  }

  OUTLINED_FUNCTION_121_5();
LABEL_61:
  v106 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_159_2();
  if (v107)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13();
  }

  sub_267C00EDC(v132);
  OUTLINED_FUNCTION_80_7();
  v108 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v108, v127, v122[0], v122[1], v122[2]);
  OUTLINED_FUNCTION_132_2();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v110 = OUTLINED_FUNCTION_9_14(v109);
  OUTLINED_FUNCTION_127_5(v110, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  v113 = sub_267C00310(v111, v112, &unk_267F032C8);
  OUTLINED_FUNCTION_96_7(v113);
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  v110[3].n128_u64[1] = v106;
  v114 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v114);
  OUTLINED_FUNCTION_57_11("#MessagesDialogContextFactory MessageComponentDialogContext: %@", v115, v116, &dword_267B93000);

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v132);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DB86B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextComponent(0);
  v5 = MEMORY[0x28223BE20](v4);
  v105 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v107 = (&v104 - v7);
  v8 = sub_267EF2728();
  v109 = *(v8 - 8);
  v110 = v8;
  MEMORY[0x28223BE20](v8);
  v108 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v104 - v14;
  v135 = &type metadata for AudioComponent;
  v136 = sub_267DBC1F0();
  v16 = swift_allocObject();
  v134[0] = v16;
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = *(a1 + 48);
  sub_267DBC244(a1, &v120);
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v18 = qword_280240FC8;
  v19 = sub_267EF95D8();
  v113 = v18;
  sub_267EF8998("Beginning to create MessageComponentDialogContext..", 51, 2, &dword_267B93000, v18, v19, MEMORY[0x277D84F90]);
  v21 = v135;
  v20 = v136;
  __swift_project_boxed_opaque_existential_0(v134, v135);
  (*(*(v20 + 8) + 32))(v21);
  v119 = v22;
  sub_267BD997C();
  if (v122)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v133 = 0;
      v131 = 0u;
      v132 = 0u;
    }
  }

  else
  {
    sub_267B9F98C(&v120, &qword_280229910, &unk_267EFEB70);
    v131 = 0u;
    v132 = 0u;
    v133 = 0;
  }

  sub_267BD9E24();
  if (v122)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
    }
  }

  else
  {
    sub_267B9F98C(&v120, &qword_280229910, &unk_267EFEB70);
    v128 = 0u;
    v129 = 0u;
    v130 = 0;
  }

  v23 = v135;
  v24 = v136;
  __swift_project_boxed_opaque_existential_0(v134, v135);
  v25 = (*(v24 + 16))(v23, v24);
  sub_267C2FB6C(&v131, &v120, &qword_280229CE0, &qword_267F00410);
  v26 = v122;
  if (v122)
  {
    v27 = v123;
    __swift_project_boxed_opaque_existential_0(&v120, v122);
    v118 = v27[2](v26, v27);
    __swift_destroy_boxed_opaque_existential_0(&v120);
  }

  else
  {
    sub_267B9F98C(&v120, &qword_280229CE0, &qword_267F00410);
    v118 = 0;
  }

  sub_267BD997C();
  v115 = v25;
  v116 = a2;
  v106 = v4;
  if (!v127[3])
  {
    sub_267B9F98C(v127, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v117 = v13;
  if (*(v125 + 16) != 1)
  {
    v28 = v126;

    goto LABEL_21;
  }

  v104 = v122;
  v111 = v121;
  v112 = v123;
  v114 = v126;
  if (v124)
  {

LABEL_21:
    v4 = v106;
    v25 = v115;
    v13 = v117;
    goto LABEL_25;
  }

  v29 = sub_267C904B4(v125);

  v13 = v117;
  if (v29 != 1)
  {

    v118 = v29;
  }

  v4 = v106;
  v25 = v115;
LABEL_25:
  sub_267C2FB6C(&v128, &v120, &qword_280229CE0, &qword_267F00410);
  v30 = v122;
  if (v122)
  {
    v31 = v123;
    __swift_project_boxed_opaque_existential_0(&v120, v122);
    v32 = v31[2](v30, v31);
    __swift_destroy_boxed_opaque_existential_0(&v120);
  }

  else
  {
    sub_267B9F98C(&v120, &qword_280229CE0, &qword_267F00410);
    v32 = 0;
  }

  v34 = v135;
  v33 = v136;
  __swift_project_boxed_opaque_existential_0(v134, v135);
  LODWORD(v111) = (*(*(v33 + 8) + 40))(v34);
  v35 = 1;
  if (v118 && v25)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v36 = v25;
    v37 = v118;
    v38 = sub_267EF9818();

    v35 = v38 ^ 1;
  }

  LODWORD(v117) = v35;
  v39 = 1;
  if (v32 && v25)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v40 = v25;
    v41 = v32;
    v42 = sub_267EF9818();

    v39 = v42 ^ 1;
  }

  LODWORD(v114) = v39;
  sub_267C2FB6C(&v131, &v120, &qword_280229CE0, &qword_267F00410);
  if (!v122)
  {
    sub_267B9F98C(&v120, &qword_280229CE0, &qword_267F00410);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v4);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v43 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v15, v43 ^ 1u, 1, v4);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
LABEL_39:
    sub_267B9F98C(v15, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  v44 = *(v15 + 2);
  v45 = *(v15 + 3);

  sub_267C00468(v15);
  v120 = v44;
  v121 = v45;
  v46 = v108;
  sub_267EF26D8();
  sub_267BB5034();
  v47 = sub_267EF9918();
  v49 = v48;
  (*(v109 + 8))(v46, v110);

  sub_267C00618(v47, v49);
  v51 = v50;

  if (v51)
  {
    v52 = sub_267EF8FF8();
    IsSingleEmoji = CEMStringIsSingleEmoji();

    v54 = IsSingleEmoji != 0;
    goto LABEL_41;
  }

LABEL_40:
  v54 = 0;
LABEL_41:
  sub_267B9AFEC(v134, &v120);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v4);
    sub_267B9F98C(v13, &qword_28022A090, &unk_267F08CC0);
    v67 = 0;
    goto LABEL_54;
  }

  v55 = v32;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v4);
  v56 = v107;
  sub_267C00778(v13, v107);
  v57 = v56[3];
  v120 = v56[2];
  v121 = v57;

  v58 = v108;
  sub_267EF26D8();
  sub_267BB5034();
  v59 = sub_267EF9918();
  v61 = v60;
  (*(v109 + 8))(v58, v110);

  sub_267BB8F30(v59, v61);
  v63 = v62;

  if (v63)
  {
    v64 = sub_267EF8FF8();
    v65 = CEMStringIsSingleEmoji();

    v66 = v65 != 0;
  }

  else
  {
    v66 = 0;
  }

  v68 = v56[4];
  if (!v68 || !*(v68 + 16))
  {
    goto LABEL_52;
  }

  sub_267EF9028();

  sub_267BB40A0();

  if (!v122)
  {
    sub_267B9F98C(&v120, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_52;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:
    v69 = 0;
    goto LABEL_53;
  }

  v69 = v127[0] == 0;
LABEL_53:
  sub_267C00468(v56);
  v67 = v66 || v69;
  v32 = v55;
LABEL_54:
  v112 = v32;
  LODWORD(v110) = v67;
  if (*(&v132 + 1))
  {
    __swift_project_boxed_opaque_existential_0(v134, v135);
    DynamicType = swift_getDynamicType();
    result = sub_267C2FB6C(&v131, &v120, &qword_280229CE0, &qword_267F00410);
    if (!v122)
    {
      __break(1u);
      return result;
    }

    __swift_project_boxed_opaque_existential_0(&v120, v122);
    v72 = DynamicType == swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v120);
    v73 = v72 & (v54 ^ v67 ^ 1);
  }

  else
  {

    v73 = 0;
  }

  v75 = v135;
  v74 = v136;
  v76 = __swift_project_boxed_opaque_existential_0(v134, v135);
  Description = v75[-1].Description;
  MEMORY[0x28223BE20](v76);
  v79 = &v104 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  Description[2](v79);
  v80 = v116;
  v81 = sub_267C00940(v79, v116, v75, *(v74 + 8));
  (Description[1])(v79, v75);
  v82 = v135;
  v83 = v136;
  v84 = __swift_project_boxed_opaque_existential_0(v134, v135);
  v85 = v82[-1].Description;
  MEMORY[0x28223BE20](v84);
  v87 = &v104 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85[2](v87);
  v88 = sub_267C00EC4(v87, v80, v82, *(v83 + 8));
  (v85[1])(v87, v82);
  v89 = v117;
  if (v117)
  {
    goto LABEL_59;
  }

  if ((v73 & 1) == 0)
  {
    goto LABEL_64;
  }

  if (v114)
  {
    sub_267B9AFEC(v134, &v120);
    v91 = v105;
    if (swift_dynamicCast())
    {
      sub_267C00468(v91);
      v89 = v117;
      goto LABEL_59;
    }

LABEL_64:
    v90 = 1;
    goto LABEL_65;
  }

LABEL_59:
  v90 = !v81 & v89;
LABEL_65:
  v92 = MEMORY[0x277D837D0];
  if (*(&v132 + 1))
  {
    v93 = 0;
    v94 = 0;
    v95 = 0;
  }

  else
  {
    v96 = *(v116 + 104);
    v94 = v96 == 1;
    v93 = v96 == 2;
    v95 = v96 > 2;
  }

  v97 = sub_267C00EDC(v134);
  type metadata accessor for MessagesMessageComponentDialogContext();
  v98 = sub_267C01144(v111 & 1, v117 & 1, v114 & 1, v73, v110 & 1, v97 & 1, v81, v88, (v90 | v94) & 1, v93, v95);
  v99 = sub_267EF95D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_267EFC020;
  v120 = v98;
  sub_267C00310(&qword_28022BE48, type metadata accessor for MessagesMessageComponentDialogContext, &unk_267F032C8);
  sub_267EF7B58();
  v101 = sub_267EF8F08();
  v103 = v102;

  *(v100 + 56) = v92;
  *(v100 + 64) = sub_267BFBEB4();
  *(v100 + 32) = v101;
  *(v100 + 40) = v103;
  sub_267EF8998("#MessagesDialogContextFactory MessageComponentDialogContext: %@", 63, 2, &dword_267B93000, v113, v99, v100);

  sub_267B9F98C(&v128, &qword_280229CE0, &qword_267F00410);
  sub_267B9F98C(&v131, &qword_280229CE0, &qword_267F00410);
  __swift_destroy_boxed_opaque_existential_0(v134);
  return v98;
}

uint64_t sub_267DB9694()
{
  OUTLINED_FUNCTION_108_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v10 = OUTLINED_FUNCTION_73_8(v1);

  return sub_267DB5EDC(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_267DB9740()
{
  OUTLINED_FUNCTION_48_0();
  v4 = OUTLINED_FUNCTION_95_8();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_30(v6, v118);
  v8 = MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_43_18(v8, v9, v10, v11, v12, v13, v14, v15, v119);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_37(v17, v120);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v19 = OUTLINED_FUNCTION_18(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_141();
  v133[3] = type metadata accessor for ImageComponent(0);
  OUTLINED_FUNCTION_21_22();
  v133[4] = sub_267C00310(v21, v22, &unk_267F0C6FC);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v133);
  OUTLINED_FUNCTION_27_22(boxed_opaque_existential_0);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v24 = qword_280240FC8;
  sub_267EF95D8();
  OUTLINED_FUNCTION_75_8("Beginning to create MessageComponentDialogContext..", v25, v26, &dword_267B93000);
  OUTLINED_FUNCTION_7_37();
  v27 = OUTLINED_FUNCTION_53_0();
  v29 = v28(v27);
  OUTLINED_FUNCTION_76_9(v29, v30);
  if (v131)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17(v31) & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(v130, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD9E24();
  if (v131)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14(v32) & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(v130, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  v33 = OUTLINED_FUNCTION_0_47(v133);
  v35 = v34(v33);
  v36 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v36, v37, v38, v39);
  if (v131)
  {
    v40 = OUTLINED_FUNCTION_0_47(v130);
    v42 = v41(v40);
    OUTLINED_FUNCTION_170_2(v42);
  }

  else
  {
    sub_267B9F98C(v130, &qword_280229CE0, &qword_267F00410);
    v129 = 0;
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD997C();
  OUTLINED_FUNCTION_78_12();
  if (!v43)
  {
    sub_267B9F98C(&v132, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8(v44, v45, v44, &type metadata for ReactionComponent) & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_32();
  if (!v46)
  {
    OUTLINED_FUNCTION_141_2();

LABEL_21:
    OUTLINED_FUNCTION_86_9();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_53_13();
  if (v47)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v3 = v128;
  if (v0 != 1)
  {

    v129 = v0;
  }

  OUTLINED_FUNCTION_90_8();
LABEL_25:
  v48 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v48, v49, v50, v51);
  v52 = v131;
  if (v131)
  {
    v53 = OUTLINED_FUNCTION_0_47(v130);
    v54(v53);
    OUTLINED_FUNCTION_171_2();
  }

  else
  {
    sub_267B9F98C(v130, &qword_280229CE0, &qword_267F00410);
    v1 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v55 = OUTLINED_FUNCTION_53_0();
  v57 = v56(v55);
  OUTLINED_FUNCTION_85_9(v57);
  if (v58 && v35)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v59 = v35;
    v60 = OUTLINED_FUNCTION_176_1();
    OUTLINED_FUNCTION_33();
    v24 = sub_267EF9818();
  }

  OUTLINED_FUNCTION_162_1();
  if (v1 && v35)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v62 = v35;
    v63 = v1;
    OUTLINED_FUNCTION_33();
    v24 = sub_267EF9818();

    v61 = v24 ^ 1;
  }

  v126 = v61;
  v64 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v64, v65, v66, v67);
  if (!v131)
  {
    sub_267B9F98C(v130, &qword_280229CE0, &qword_267F00410);
    v75 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v4);
    goto LABEL_39;
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v69 = OUTLINED_FUNCTION_59_13(v68);
  OUTLINED_FUNCTION_8_41(v69);
  if (v46)
  {
LABEL_39:
    sub_267B9F98C(v2, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v2);
  OUTLINED_FUNCTION_107_7();
  sub_267BB5034();
  OUTLINED_FUNCTION_175_1();
  v70 = OUTLINED_FUNCTION_34_17();
  v71(v70);

  v72 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v72, v73);
  OUTLINED_FUNCTION_69_7();
  if (v24)
  {
    v74 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
  }

LABEL_40:
  OUTLINED_FUNCTION_110_7();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_45_16(v78))
  {
    v79 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_174_0(v79);
    v80 = OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_143_2(v80, v81);
    sub_267BB5034();
    OUTLINED_FUNCTION_146_2();
    v82 = OUTLINED_FUNCTION_35_18();
    v83(v82);

    v84 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v84, v85);
    OUTLINED_FUNCTION_69_7();
    if (v24)
    {
      v86 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    v87 = *(v0 + 32);
    if (v87 && *(v87 + 16))
    {
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_33();
      sub_267BB40A0();

      if (v131)
      {
        OUTLINED_FUNCTION_128_4();
        if (OUTLINED_FUNCTION_4_11())
        {
          OUTLINED_FUNCTION_68_8();
        }
      }

      else
      {
        sub_267B9F98C(v130, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v0);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v3, &qword_28022A090, &unk_267F08CC0);
    v0 = 0;
  }

  OUTLINED_FUNCTION_81_9();
  if (v88)
  {
    v89 = OUTLINED_FUNCTION_37_15();
    v90 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v90, v91, v92, v93);
    if (!v131)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_44_15();
  }

  else
  {

    v89 = 0;
  }

  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v94);
  v96 = OUTLINED_FUNCTION_3_50(v95, v121);
  v97(v96);
  OUTLINED_FUNCTION_58_8();
  v98 = OUTLINED_FUNCTION_32_15();
  v99(v98);
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v100);
  v102 = OUTLINED_FUNCTION_2_49(v101, v122);
  v103(v102);
  OUTLINED_FUNCTION_67_6();
  v104 = OUTLINED_FUNCTION_28_25();
  v105(v104);
  OUTLINED_FUNCTION_153_2();
  if ((v106 & 1) == 0)
  {
    if ((v89 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v126)
    {
      OUTLINED_FUNCTION_110_7();
      if (!OUTLINED_FUNCTION_56_12())
      {
        goto LABEL_61;
      }

      sub_267C00468(v0);
    }
  }

  OUTLINED_FUNCTION_121_5();
LABEL_61:
  v107 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_159_2();
  if (v108)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13();
  }

  sub_267C00EDC(v133);
  OUTLINED_FUNCTION_80_7();
  v109 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v109, v128, v123[0], v123[1], v123[2]);
  OUTLINED_FUNCTION_132_2();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v111 = OUTLINED_FUNCTION_9_14(v110);
  OUTLINED_FUNCTION_127_5(v111, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  v114 = sub_267C00310(v112, v113, &unk_267F032C8);
  OUTLINED_FUNCTION_96_7(v114);
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  v111[3].n128_u64[1] = v107;
  v115 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v115);
  OUTLINED_FUNCTION_57_11("#MessagesDialogContextFactory MessageComponentDialogContext: %@", v116, v117, &dword_267B93000);

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v133);
  OUTLINED_FUNCTION_47();
}

void sub_267DBA1A8()
{
  OUTLINED_FUNCTION_48_0();
  v4 = OUTLINED_FUNCTION_95_8();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_151_1();
  MEMORY[0x28223BE20](v6);
  v104 = &v100 - v7;
  sub_267EF2728();
  OUTLINED_FUNCTION_23();
  v106 = v9;
  v107 = v8;
  MEMORY[0x28223BE20](v8);
  v105 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_141();
  v134 = &type metadata for PaymentComponent;
  v135 = sub_267DBCB60();
  OUTLINED_FUNCTION_99_8();
  v133[0] = swift_allocObject();
  v14 = OUTLINED_FUNCTION_89_10(v133[0]);
  memcpy(v14, v15, 0x71uLL);
  sub_267D5D40C(v0, &v124);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v16 = qword_280240FC8;
  v17 = sub_267EF95D8();
  v110 = v16;
  sub_267EF8998("Beginning to create MessageComponentDialogContext..", 51, 2, &dword_267B93000, v16, v17, MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_7_37();
  v18 = OUTLINED_FUNCTION_53_0();
  v19(v18);
  v116 = v20;
  sub_267BD997C();
  if (v126)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    OUTLINED_FUNCTION_161_1();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
    }
  }

  else
  {
    sub_267B9F98C(&v124, &qword_280229910, &unk_267EFEB70);
    v121 = 0u;
    v122 = 0u;
    v123 = 0;
  }

  sub_267BD9E24();
  if (v126)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v120 = 0;
      v118 = 0u;
      v119 = 0u;
    }
  }

  else
  {
    sub_267B9F98C(&v124, &qword_280229910, &unk_267EFEB70);
    v118 = 0u;
    v119 = 0u;
    v120 = 0;
  }

  v21 = OUTLINED_FUNCTION_0_47(v133);
  v23 = v22(v21);
  v24 = OUTLINED_FUNCTION_161_1();
  sub_267C2FB6C(v24, v25, v26, v27);
  if (v126)
  {
    v28 = OUTLINED_FUNCTION_0_47(&v124);
    v115 = v29(v28);
    __swift_destroy_boxed_opaque_existential_0(&v124);
  }

  else
  {
    sub_267B9F98C(&v124, &qword_280229CE0, &qword_267F00410);
    v115 = 0;
  }

  v30 = v1;
  sub_267BD997C();
  v112 = v23;
  v113 = v1;
  v103 = v4;
  if (!v117[3])
  {
    sub_267B9F98C(v117, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v114 = v3;
  v31 = v127;
  v30 = v128;
  v32 = v132;
  if (*(v130 + 16) != 1)
  {
    OUTLINED_FUNCTION_141_2();

    goto LABEL_21;
  }

  v101 = v126;
  v108 = v125;
  v109 = v127;
  v111 = v131;
  if (v129)
  {

LABEL_21:
    v4 = v103;
    v23 = v112;
    v3 = v114;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v3 = v114;
  if (v31 != 1)
  {

    v115 = v31;
  }

  v4 = v103;
  v23 = v112;
LABEL_25:
  sub_267C2FB6C(&v118, &v124, &qword_280229CE0, &qword_267F00410);
  v33 = v126;
  if (v126)
  {
    v34 = OUTLINED_FUNCTION_0_47(&v124);
    v36 = v35(v34);
    __swift_destroy_boxed_opaque_existential_0(&v124);
  }

  else
  {
    sub_267B9F98C(&v124, &qword_280229CE0, &qword_267F00410);
    v36 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v37 = OUTLINED_FUNCTION_53_0();
  LODWORD(v108) = v38(v37);
  v39 = 1;
  if (v115 && v23)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v33 = v23;
    v40 = v115;
    OUTLINED_FUNCTION_33();
    v30 = sub_267EF9818();

    v39 = v30 ^ 1;
  }

  LODWORD(v114) = v39;
  v41 = 1;
  if (v36 && v23)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v33 = v23;
    v42 = v36;
    OUTLINED_FUNCTION_33();
    v30 = sub_267EF9818();

    v41 = v30 ^ 1;
  }

  LODWORD(v111) = v41;
  v43 = OUTLINED_FUNCTION_161_1();
  sub_267C2FB6C(v43, v44, v45, v46);
  if (!v126)
  {
    sub_267B9F98C(&v124, &qword_280229CE0, &qword_267F00410);
    v53 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v4);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v47 = swift_dynamicCast();
  OUTLINED_FUNCTION_8_41(v47);
  if (v91)
  {
LABEL_39:
    sub_267B9F98C(v2, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v2);
  v124 = v30;
  v125 = v33;
  v48 = v105;
  sub_267EF26D8();
  sub_267BB5034();
  v49 = sub_267EF9918();
  (*(v106 + 8))(v48, v107);

  v50 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v50, v51);
  OUTLINED_FUNCTION_69_7();
  if (v49)
  {
    v52 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
    goto LABEL_41;
  }

LABEL_40:
  LOBYTE(v23) = 0;
LABEL_41:
  sub_267B9AFEC(v133, &v124);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (swift_dynamicCast())
  {
    v56 = OUTLINED_FUNCTION_25_25();
    v57 = v104;
    sub_267C00778(v56, v104);
    v58 = *(v57 + 24);
    v124 = *(v57 + 16);
    v125 = v58;

    v36 = v105;
    sub_267EF26D8();
    sub_267BB5034();
    v59 = sub_267EF9918();
    (*(v106 + 8))(v36, v107);

    v60 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v60, v61);
    OUTLINED_FUNCTION_69_7();
    if (v59)
    {
      v62 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    else
    {
      v36 = 0;
    }

    v63 = *(v57 + 32);
    if (v63 && *(v63 + 16))
    {
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_33();
      sub_267BB40A0();

      if (v126)
      {
        OUTLINED_FUNCTION_4_11();
      }

      else
      {
        sub_267B9F98C(&v124, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v57);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v3, &qword_28022A090, &unk_267F08CC0);
    LODWORD(v57) = 0;
  }

  v109 = v36;
  LODWORD(v107) = v57;
  if (*(&v122 + 1))
  {
    v64 = OUTLINED_FUNCTION_37_15();
    v65 = OUTLINED_FUNCTION_161_1();
    sub_267C2FB6C(v65, v66, v67, v68);
    if (!v126)
    {
      __break(1u);
      return;
    }

    __swift_project_boxed_opaque_existential_0(&v124, v126);
    v69 = v64 == swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v124);
    v70 = v69 & (v23 ^ v57 ^ 1);
  }

  else
  {

    v70 = 0;
  }

  v72 = v134;
  v71 = v135;
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v73);
  v75 = OUTLINED_FUNCTION_3_50(v74, v100);
  v76(v75);
  v77 = v113;
  sub_267C00940(v3, v113, v72, *(v71 + 8));
  v78 = OUTLINED_FUNCTION_32_15();
  v79(v78);
  v80 = v135;
  OUTLINED_FUNCTION_19_27();
  v81 = &v100;
  OUTLINED_FUNCTION_6_41();
  v83 = v82;
  MEMORY[0x28223BE20](v84);
  v86 = OUTLINED_FUNCTION_2_49(v85, v100);
  v87(v86);
  OUTLINED_FUNCTION_67_6();
  v88 = OUTLINED_FUNCTION_28_25();
  v89(v88);
  if (v114)
  {
    goto LABEL_57;
  }

  if ((v70 & 1) == 0)
  {
    goto LABEL_62;
  }

  if (v111)
  {
    sub_267B9AFEC(v133, &v124);
    v77 = v102;
    if (swift_dynamicCast())
    {
      sub_267C00468(v77);
      goto LABEL_57;
    }

LABEL_62:
    v83 = 1;
    goto LABEL_63;
  }

LABEL_57:
  OUTLINED_FUNCTION_121_5();
LABEL_63:
  v90 = MEMORY[0x277D837D0];
  if (*(&v122 + 1))
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13();
    if (v91)
    {
      LOBYTE(v81) = 1;
    }

    else
    {
      LOBYTE(v81) = 0;
    }

    if (v92 ^ v93 | v91)
    {
      v80 = 0;
    }

    else
    {
      v80 = 1;
    }
  }

  sub_267C00EDC(v133);
  OUTLINED_FUNCTION_80_7();
  sub_267C01144(v108 & 1, v114 & 1, v111 & 1, v70, v107 & 1, v77 & 1, v71 & 1, v3 & 1, v83 & 1, v81, v80);
  v94 = OUTLINED_FUNCTION_132_2();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v96 = OUTLINED_FUNCTION_9_14(v95);
  *(v96 + 16) = xmmword_267EFC020;
  v124 = v77;
  OUTLINED_FUNCTION_1_58();
  sub_267C00310(v97, v98, &unk_267F032C8);
  sub_267EF7B58();
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  *(v96 + 56) = v90;
  v99 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v99);
  sub_267EF8998("#MessagesDialogContextFactory MessageComponentDialogContext: %@", 63, 2, &dword_267B93000, v110, v94, v96);

  sub_267B9F98C(&v118, &qword_280229CE0, &qword_267F00410);
  sub_267B9F98C(&v121, &qword_280229CE0, &qword_267F00410);
  OUTLINED_FUNCTION_104_7(v133);
  OUTLINED_FUNCTION_47();
}

void sub_267DBAEAC()
{
  OUTLINED_FUNCTION_48_0();
  v5 = OUTLINED_FUNCTION_95_8();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_30(v7, v118);
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_43_18(v9, v10, v11, v12, v13, v14, v15, v16, v119);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_37(v18, v120);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v20 = OUTLINED_FUNCTION_18(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_30();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_141();
  v133[3] = &type metadata for GenericCountableComponent;
  v133[4] = sub_267C82904();
  OUTLINED_FUNCTION_160_1();
  v133[0] = swift_allocObject();
  v22 = OUTLINED_FUNCTION_89_10(v133[0]);
  memcpy(v22, v23, 0x42uLL);
  sub_267DBC288(v0, v130);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v24 = qword_280240FC8;
  sub_267EF95D8();
  OUTLINED_FUNCTION_75_8("Beginning to create MessageComponentDialogContext..", v25, v26, &dword_267B93000);
  OUTLINED_FUNCTION_7_37();
  v27 = OUTLINED_FUNCTION_53_0();
  v29 = v28(v27);
  OUTLINED_FUNCTION_76_9(v29, v30);
  if (v131)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17(v31) & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(v130, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD9E24();
  if (v131)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14(v32) & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(v130, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  v33 = OUTLINED_FUNCTION_0_47(v133);
  v35 = v34(v33);
  v36 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v36, v37, v38, v39);
  if (v131)
  {
    v40 = OUTLINED_FUNCTION_0_47(v130);
    v42 = v41(v40);
    OUTLINED_FUNCTION_170_2(v42);
  }

  else
  {
    sub_267B9F98C(v130, &qword_280229CE0, &qword_267F00410);
    v129 = 0;
  }

  OUTLINED_FUNCTION_31_18();
  sub_267BD997C();
  OUTLINED_FUNCTION_78_12();
  if (!v43)
  {
    sub_267B9F98C(&v132, &qword_280229910, &unk_267EFEB70);
    goto LABEL_25;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8(v44, v45, v44, &type metadata for ReactionComponent) & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_32();
  if (!v46)
  {
    OUTLINED_FUNCTION_141_2();

LABEL_21:
    OUTLINED_FUNCTION_86_9();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_53_13();
  if (v47)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_145_2();

  v4 = v128;
  if (v1 != 1)
  {

    v129 = v1;
  }

  OUTLINED_FUNCTION_90_8();
LABEL_25:
  v48 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v48, v49, v50, v51);
  v52 = v131;
  if (v131)
  {
    v53 = OUTLINED_FUNCTION_0_47(v130);
    v54(v53);
    OUTLINED_FUNCTION_171_2();
  }

  else
  {
    sub_267B9F98C(v130, &qword_280229CE0, &qword_267F00410);
    v2 = 0;
  }

  OUTLINED_FUNCTION_7_37();
  v55 = OUTLINED_FUNCTION_53_0();
  v57 = v56(v55);
  OUTLINED_FUNCTION_85_9(v57);
  if (v58 && v35)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v59 = v35;
    v60 = OUTLINED_FUNCTION_176_1();
    OUTLINED_FUNCTION_33();
    v24 = sub_267EF9818();
  }

  OUTLINED_FUNCTION_162_1();
  if (v2 && v35)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v62 = v35;
    v63 = v2;
    OUTLINED_FUNCTION_33();
    v24 = sub_267EF9818();

    v61 = v24 ^ 1;
  }

  v126 = v61;
  v64 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v64, v65, v66, v67);
  if (!v131)
  {
    sub_267B9F98C(v130, &qword_280229CE0, &qword_267F00410);
    v75 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v5);
    goto LABEL_39;
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v69 = OUTLINED_FUNCTION_59_13(v68);
  OUTLINED_FUNCTION_8_41(v69);
  if (v46)
  {
LABEL_39:
    sub_267B9F98C(v3, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_147_2();
  sub_267C00468(v3);
  OUTLINED_FUNCTION_107_7();
  sub_267BB5034();
  OUTLINED_FUNCTION_175_1();
  v70 = OUTLINED_FUNCTION_34_17();
  v71(v70);

  v72 = OUTLINED_FUNCTION_65_5();
  sub_267C00618(v72, v73);
  OUTLINED_FUNCTION_69_7();
  if (v24)
  {
    v74 = OUTLINED_FUNCTION_111_5();
    CEMStringIsSingleEmoji();

    OUTLINED_FUNCTION_125_5();
  }

LABEL_40:
  OUTLINED_FUNCTION_110_7();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_45_16(v78))
  {
    v79 = OUTLINED_FUNCTION_25_25();
    OUTLINED_FUNCTION_174_0(v79);
    v80 = OUTLINED_FUNCTION_105_9();
    OUTLINED_FUNCTION_143_2(v80, v81);
    sub_267BB5034();
    OUTLINED_FUNCTION_146_2();
    v82 = OUTLINED_FUNCTION_35_18();
    v83(v82);

    v84 = OUTLINED_FUNCTION_65_5();
    sub_267BB8F30(v84, v85);
    OUTLINED_FUNCTION_69_7();
    if (v24)
    {
      v86 = OUTLINED_FUNCTION_111_5();
      CEMStringIsSingleEmoji();

      OUTLINED_FUNCTION_124_3();
    }

    v87 = *(v1 + 32);
    if (v87 && *(v87 + 16))
    {
      sub_267EF9028();
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_33();
      sub_267BB40A0();

      if (v131)
      {
        OUTLINED_FUNCTION_128_4();
        if (OUTLINED_FUNCTION_4_11())
        {
          OUTLINED_FUNCTION_68_8();
        }
      }

      else
      {
        sub_267B9F98C(v130, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }

    sub_267C00468(v1);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_66_12();
    sub_267B9F98C(v4, &qword_28022A090, &unk_267F08CC0);
    v1 = 0;
  }

  OUTLINED_FUNCTION_81_9();
  if (v88)
  {
    v89 = OUTLINED_FUNCTION_37_15();
    v90 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v90, v91, v92, v93);
    if (!v131)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_44_15();
  }

  else
  {

    v89 = 0;
  }

  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v94);
  v96 = OUTLINED_FUNCTION_3_50(v95, v121);
  v97(v96);
  OUTLINED_FUNCTION_58_8();
  v98 = OUTLINED_FUNCTION_32_15();
  v99(v98);
  OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_6_41();
  MEMORY[0x28223BE20](v100);
  v102 = OUTLINED_FUNCTION_2_49(v101, v122);
  v103(v102);
  OUTLINED_FUNCTION_67_6();
  v104 = OUTLINED_FUNCTION_28_25();
  v105(v104);
  OUTLINED_FUNCTION_153_2();
  if ((v106 & 1) == 0)
  {
    if ((v89 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (v126)
    {
      OUTLINED_FUNCTION_110_7();
      if (!OUTLINED_FUNCTION_56_12())
      {
        goto LABEL_61;
      }

      sub_267C00468(v1);
    }
  }

  OUTLINED_FUNCTION_121_5();
LABEL_61:
  v107 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_159_2();
  if (v108)
  {
    OUTLINED_FUNCTION_51_12();
  }

  else
  {
    OUTLINED_FUNCTION_33_13();
  }

  sub_267C00EDC(v133);
  OUTLINED_FUNCTION_80_7();
  v109 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v109, v128, v123[0], v123[1], v123[2]);
  OUTLINED_FUNCTION_132_2();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v111 = OUTLINED_FUNCTION_9_14(v110);
  OUTLINED_FUNCTION_127_5(v111, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  v114 = sub_267C00310(v112, v113, &unk_267F032C8);
  OUTLINED_FUNCTION_96_7(v114);
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_82_7();
  v111[3].n128_u64[1] = v107;
  v115 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v115);
  OUTLINED_FUNCTION_57_11("#MessagesDialogContextFactory MessageComponentDialogContext: %@", v116, v117, &dword_267B93000);

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v133);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DBB914()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_157(v1, v2, v3);
  v0[5] = &unk_2878CE588;
  v0[6] = sub_267C100F0();
  OUTLINED_FUNCTION_163_1();
  v0[2] = swift_allocObject();
  v4 = OUTLINED_FUNCTION_109_8();
  sub_267C1023C(v4, v5);
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DBB99C()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_36_17(v0);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  v2[1] = sub_267DBBA4C;
  OUTLINED_FUNCTION_88_4();

  return v4();
}

uint64_t sub_267DBBA4C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  OUTLINED_FUNCTION_172_2(v5);

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DBBB44()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_157(v1, v2, v3);
  v0[5] = &type metadata for LinkComponent;
  v0[6] = sub_267D689E8();
  OUTLINED_FUNCTION_148_2();
  v0[2] = swift_allocObject();
  v4 = OUTLINED_FUNCTION_109_8();
  sub_267D68B34(v4, v5);
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DBBBCC()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_36_17(v0);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  v2[1] = sub_267DBBC7C;
  OUTLINED_FUNCTION_88_4();

  return v4();
}

uint64_t sub_267DBBC7C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  OUTLINED_FUNCTION_172_2(v5);

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DBBD74()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_267DBBDD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_157(v1, v2, v3);
  v0[5] = type metadata accessor for TextComponent(0);
  OUTLINED_FUNCTION_22_22();
  v0[6] = sub_267C00310(v4, v5, &unk_267F09728);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_26_24(boxed_opaque_existential_0);
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBBE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[12] = &type metadata for AudioComponent;
  v3[13] = sub_267DB6C84();
  v5 = swift_allocObject();
  v3[9] = v5;
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = *(a1 + 48);
  sub_267DBC244(a1, (v3 + 2));

  return MEMORY[0x2822009F8](sub_267DBBF20, 0, 0);
}

uint64_t sub_267DBBF20()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v0[8].n128_u64[0] = v1;
  OUTLINED_FUNCTION_87_2(v1, v0[7]);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v2 = swift_task_alloc();
  v0[8].n128_u64[1] = v2;
  *v2 = v0;
  v2[1] = sub_267DBBFE8;
  OUTLINED_FUNCTION_88_4();

  return v3();
}

uint64_t sub_267DBBFE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBC0E8()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_267DBC144()
{
  OUTLINED_FUNCTION_108_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v10 = OUTLINED_FUNCTION_73_8(v1);

  return sub_267DB5618(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_267DBC1F0()
{
  result = qword_28022BE38;
  if (!qword_28022BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE38);
  }

  return result;
}

uint64_t sub_267DBC2E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_157(v1, v2, v3);
  v0[5] = type metadata accessor for ImageComponent(0);
  OUTLINED_FUNCTION_21_22();
  v0[6] = sub_267C00310(v4, v5, &unk_267F0C720);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_27_22(boxed_opaque_existential_0);
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBC37C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[22] = v3;
  v0[23] = v4;
  v0[20] = &type metadata for PaymentComponent;
  v0[21] = sub_267DBCBC8();
  OUTLINED_FUNCTION_99_8();
  v5 = swift_allocObject();
  v0[17] = v5;
  v6 = OUTLINED_FUNCTION_89_10(v5);
  memcpy(v6, v7, 0x71uLL);
  sub_267D5D40C(v2, (v0 + 2));
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DBC418()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v0[12].n128_u64[0] = v1;
  OUTLINED_FUNCTION_87_2(v1, v0[11]);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v2 = swift_task_alloc();
  v0[12].n128_u64[1] = v2;
  *v2 = v0;
  v2[1] = sub_267DBC4E0;
  OUTLINED_FUNCTION_88_4();

  return v3();
}

uint64_t sub_267DBC4E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 208) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBC5E0()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 208);

  return v1(v2);
}

uint64_t sub_267DBC63C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[22] = v3;
  v0[23] = v4;
  v0[20] = &type metadata for ReactionComponent;
  v0[21] = sub_267C77294();
  OUTLINED_FUNCTION_99_8();
  v5 = swift_allocObject();
  v0[17] = v5;
  v6 = OUTLINED_FUNCTION_89_10(v5);
  memcpy(v6, v7, 0x71uLL);
  sub_267C772E8(v2, (v0 + 2));
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DBC6D8()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v0[12].n128_u64[0] = v1;
  OUTLINED_FUNCTION_87_2(v1, v0[11]);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v2 = swift_task_alloc();
  v0[12].n128_u64[1] = v2;
  *v2 = v0;
  v2[1] = sub_267DBC7A0;
  OUTLINED_FUNCTION_88_4();

  return v3();
}

uint64_t sub_267DBC7A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 208) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBC8A0()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = &type metadata for GenericCountableComponent;
  v0[15] = sub_267C82888();
  OUTLINED_FUNCTION_160_1();
  v5 = swift_allocObject();
  v0[11] = v5;
  v6 = OUTLINED_FUNCTION_89_10(v5);
  memcpy(v6, v7, 0x42uLL);
  sub_267DBC288(v2, (v0 + 2));
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DBC93C()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  v0[9].n128_u64[0] = v1;
  OUTLINED_FUNCTION_87_2(v1, v0[8]);
  OUTLINED_FUNCTION_10(&unk_267F00488);
  v2 = swift_task_alloc();
  v0[9].n128_u64[1] = v2;
  *v2 = v0;
  v2[1] = sub_267DBCA04;
  OUTLINED_FUNCTION_88_4();

  return v3();
}

uint64_t sub_267DBCA04()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v6 + 160) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBCB04()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 160);

  return v1(v2);
}

unint64_t sub_267DBCB60()
{
  result = qword_28022BE70;
  if (!qword_28022BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE70);
  }

  return result;
}

void sub_267DBCBB4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

unint64_t sub_267DBCBC8()
{
  result = qword_28022BE78;
  if (!qword_28022BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BE78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_137_2()
{
}

uint64_t OUTLINED_FUNCTION_164_0(uint64_t a1)
{
  *(v1 + 32) = *(a1 + 72);
  v4 = *(v2 + 40);

  return sub_267BAF0DC(v4);
}

uint64_t OUTLINED_FUNCTION_165_1(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v2[29] = *(v3 + 96);

  return sub_267DB424C();
}

uint64_t OUTLINED_FUNCTION_167_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_168_2(uint64_t a1)
{
  *(v2 + 32) = *(a1 + 48);
  v4 = *(v1 + 16);

  return sub_267BAF0DC(v4);
}

uint64_t OUTLINED_FUNCTION_170_2(uint64_t a1)
{
  *(v1 + 112) = a1;

  return __swift_destroy_boxed_opaque_existential_0((v1 + 128));
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 + 128));
}

uint64_t OUTLINED_FUNCTION_172_2(uint64_t a1)
{
  *(v1 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_174_0(uint64_t a1)
{
  v3 = *(v1 + 24);

  return sub_267C00778(a1, v3);
}

uint64_t OUTLINED_FUNCTION_175_1()
{

  return sub_267EF9918();
}

id OUTLINED_FUNCTION_176_1()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t sub_267DBCDC4()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  sub_267EF3CF8();
  v1[9] = OUTLINED_FUNCTION_2();
  v3 = sub_267EF48A8();
  v1[10] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DBCFF0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 120) = v7;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_267DBD154()
{
  OUTLINED_FUNCTION_56();
  sub_267EF3C88();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267EF4198();
  swift_allocObject();
  v0[16] = sub_267EF4188();
  v7 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[17] = v1;
  *v1 = v2;
  v1[1] = sub_267DBD268;
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[7];

  return v7(v5, v3, v4);
}

uint64_t sub_267DBD268()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBD380()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_267DBD410()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DBD4A8()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v0[4] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DBD534()
{
  OUTLINED_FUNCTION_56();
  v1 = [*(v0[3] + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) speakableGroupName];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 spokenPhrase];

    sub_267EF9028();
    sub_267EF90F8();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v5, v4, 1, v7);
  sub_267BD3DDC(v5, v6);

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_267DBD658()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[25] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF4228();
  v1[26] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[27] = v5;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229318, &qword_267EFCFA0);
  v1[35] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[36] = v7;
  v1[37] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DBD7DC()
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[23];
  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_267EF89F8();
  v7 = sub_267EF95E8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[36];
  v9 = v0[37];
  v11 = v0[35];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = sub_267EF4638();
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_267B93000, v6, v7, "#UnsendMessagesHandleIntentFlowStrategy received failure response: %@", v12, 0xCu);
    sub_267B9FF34(v13, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v13, -1, -1);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v15 = sub_267EF4638();
  v16 = [v15 code];

  if (v16 == 9)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[38] = v17;
    *v17 = v18;
    v17[1] = sub_267DBDDB0;
    OUTLINED_FUNCTION_122();

    return sub_267EBC480();
  }

  else if (*MEMORY[0x277CD45B0] == v16)
  {
    v21 = [*(v0[24] + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) recipients];
    if (v21)
    {
      sub_267BCA2C8();
      v22 = sub_267EF92F8();

      sub_267BAF0DC(v22);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v23;
    *v23 = v24;
    v23[1] = sub_267DBE004;
    OUTLINED_FUNCTION_122();

    return sub_267EBBE4C(v25, v26);
  }

  else if (*MEMORY[0x277CD45C0] == v16)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[42] = v28;
    *v28 = v29;
    v28[1] = sub_267DBE25C;
    OUTLINED_FUNCTION_122();

    return sub_267EBC3D0();
  }

  else if (*MEMORY[0x277CD45B8] == v16)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[44] = v31;
    *v31 = v32;
    v31[1] = sub_267DBE4B4;
    OUTLINED_FUNCTION_122();

    return sub_267EBC320();
  }

  else
  {
    v34 = v0[24];
    if (v16 == 10)
    {
      type metadata accessor for MessagesApp(0);
      v35 = sub_267EF4648();
      v0[46] = sub_267EC814C(v35);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[47] = v36;
      *v36 = v37;
      v36[1] = sub_267DBE70C;
      OUTLINED_FUNCTION_122();

      return sub_267EBC0A0(v38, v39);
    }

    else
    {
      v41 = v34[5];
      v42 = v34[6];
      __swift_project_boxed_opaque_existential_0(v34 + 2, v41);
      (*(v42 + 8))(v41, v42);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[49] = v43;
      *v43 = v44;
      v43[1] = sub_267DBE96C;
      OUTLINED_FUNCTION_122();

      return MEMORY[0x2821BAEE0](v45, v46);
    }
  }
}

uint64_t sub_267DBDDB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBE004()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBE25C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBE4B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBE70C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 384) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBE96C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 400) = v0;

  sub_267B9FF34(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DBEBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DBEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DBED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DBEDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DBEE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DBEF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_5_49();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267DBEFA8()
{
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesPatterns));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_commonTemplateProvider));
  v1 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_featureFlags);

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_267DBF018()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_unsendMessagesPatterns));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_commonTemplateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow38UnsendMessagesHandleIntentFlowStrategy_featureFlags));
  return v0;
}

uint64_t sub_267DBF088()
{
  sub_267DBF018();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnsendMessagesHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_28022BEF0;
  if (!qword_28022BEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DBF134(uint64_t a1)
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267DBF1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_267DBF2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_267DBF374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_267DBF43C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267DBCDC4();
}

uint64_t sub_267DBF4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_267DBF5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_267DBF668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267DBD658();
}

uint64_t sub_267DBF714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for UnsendMessagesHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v9, a4);
}

unint64_t sub_267DBF7E0()
{
  result = qword_28022BF00;
  if (!qword_28022BF00)
  {
    type metadata accessor for UnsendMessagesHandleIntentFlowStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BF00);
  }

  return result;
}

uint64_t sub_267DBF878()
{
  OUTLINED_FUNCTION_7_5();
  if (sub_267EF3C18() & 1) != 0 || (OUTLINED_FUNCTION_3(), (sub_267EF3BF8()) || (OUTLINED_FUNCTION_3(), (sub_267EF3C08()))
  {
    OUTLINED_FUNCTION_3();
    v0 = sub_267EF3C48() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_267DBF8D8()
{
  OUTLINED_FUNCTION_7_5();
  if (sub_267DBF878())
  {
    return 1;
  }

  OUTLINED_FUNCTION_3();

  return sub_267EF3C48();
}

uint64_t sub_267DBF990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_7_5();
  if (v6())
  {
    return 1;
  }

  v7 = OUTLINED_FUNCTION_3();
  if (a4(v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_3();

  return a5(v9);
}

uint64_t sub_267DBFA18(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_267EF8198();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_hasPrompted) = 0;
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext;
  type metadata accessor for SendMessageSelfContext();
  swift_allocObject();
  *(v1 + v7) = sub_267BC977C();
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap) = a1;
  return v1;
}

uint64_t sub_267DBFAAC()
{

  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback, &qword_280229920, &unk_267F0ABD0);

  return v0;
}

void sub_267DBFB3C(uint64_t a1)
{
  sub_267DC85AC(319, &qword_28022BF18, MEMORY[0x277D5D3D8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_267DBFC0C()
{
  OUTLINED_FUNCTION_48_0();
  v242 = v1;
  v243 = v0;
  v229 = sub_267EF63C8();
  OUTLINED_FUNCTION_58();
  v225 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_36_3(v5 - v4);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFE8, &qword_267F09188);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_3(&v220 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229950, &unk_267EFEBB0);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v12);
  v236 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v235 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229970, &unk_267F0E300);
  v20 = OUTLINED_FUNCTION_18(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v238 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_45_0();
  v240 = v25;
  v233 = sub_267EF8198();
  OUTLINED_FUNCTION_58();
  v231 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_0();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF88, &qword_267F09120);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v32);
  v34 = &v220 - v33;
  type metadata accessor for TapbackAction(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6();
  v241 = v36;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_0();
  v239 = v38;
  OUTLINED_FUNCTION_115();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v220 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v220 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v220 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v49 = OUTLINED_FUNCTION_18(v48);
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v220 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v220 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v220 - v56;
  OUTLINED_FUNCTION_10_33();
  sub_267DC8BB4(v243, v47, v58);
  if (swift_getEnumCaseMultiPayload())
  {
    v59 = v242;
    v45 = v47;
  }

  else
  {
    v222 = v31;
    v223 = v55;
    v221 = v52;
    v60 = OUTLINED_FUNCTION_66();
    sub_267BBE184(v60, v61, v62, v63);
    OUTLINED_FUNCTION_10_33();
    v59 = v242;
    sub_267DC8BB4(v242, v45, v64);
    if (!swift_getEnumCaseMultiPayload())
    {
      v88 = v223;
      OUTLINED_FUNCTION_41_15();
      sub_267BBE184(v89, v90, v91, v92);
      v93 = *(v222 + 48);
      v94 = v34;
      OUTLINED_FUNCTION_41_15();
      sub_267C6AD4C(v95, v96, v97, v98);
      OUTLINED_FUNCTION_41_15();
      sub_267C6AD4C(v99, v100, v101, v102);
      v103 = v34;
      v104 = v233;
      OUTLINED_FUNCTION_5_1(v103, 1, v233);
      if (v120)
      {
        OUTLINED_FUNCTION_439();
        sub_267B9F98C(v105, v106, v107);
        OUTLINED_FUNCTION_439();
        sub_267B9F98C(v108, v109, v110);
        OUTLINED_FUNCTION_5_1(v94 + v93, 1, v104);
        if (v120)
        {
          v111 = &qword_280229920;
          v112 = &unk_267F0ABD0;
          v113 = v94;
          goto LABEL_50;
        }
      }

      else
      {
        v132 = v221;
        sub_267C6AD4C(v94, v221, &qword_280229920, &unk_267F0ABD0);
        OUTLINED_FUNCTION_5_1(v94 + v93, 1, v104);
        if (!v133)
        {
          v147 = v231;
          (*(v231 + 32))(v30, v94 + v93, v104);
          OUTLINED_FUNCTION_39_15();
          sub_267DC89C4(v148, v149);
          sub_267EF8FE8();
          v150 = *(v147 + 8);
          v150(v30, v104);
          sub_267B9F98C(v88, &qword_280229920, &unk_267F0ABD0);
          sub_267B9F98C(v57, &qword_280229920, &unk_267F0ABD0);
          v150(v132, v104);
          v113 = v94;
          v111 = &qword_280229920;
          v112 = &unk_267F0ABD0;
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_439();
        sub_267B9F98C(v134, v135, v136);
        OUTLINED_FUNCTION_439();
        sub_267B9F98C(v137, v138, v139);
        (*(v231 + 8))(v132, v104);
      }

      v111 = &qword_28022BF88;
      v112 = &qword_267F09120;
      v113 = v94;
      goto LABEL_50;
    }

    sub_267B9F98C(v57, &qword_280229920, &unk_267F0ABD0);
  }

  sub_267DC8C10(v45, type metadata accessor for TapbackAction);
  sub_267DC8BB4(v243, v42, type metadata accessor for TapbackAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = v240;
    sub_267BBE184(v42, v240, &qword_280229970, &unk_267F0E300);
    OUTLINED_FUNCTION_10_33();
    v66 = v239;
    sub_267DC8BB4(v59, v239, v67);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = v66;
      v69 = v238;
      sub_267BBE184(v68, v238, &qword_280229970, &unk_267F0E300);
      v70 = v237;
      sub_267C6AD4C(v65, v237, &qword_280229970, &unk_267F0E300);
      v71 = sub_267EF4BA8();
      OUTLINED_FUNCTION_110(v70);
      if (v120)
      {
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v72, v73, v74);
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v75, v76, v77);
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v78, v79, v80);
      }

      else
      {
        sub_267EF4B88();
        v114 = (*(v71 - 8) + 8);
        v239 = *v114;
        v239(v70, v71);
        v115 = *(v235 + 32);
        v116 = v234;
        v117 = OUTLINED_FUNCTION_61_4();
        v118 = v236;
        v115(v117);
        v119 = v232;
        sub_267C6AD4C(v69, v232, &qword_280229970, &unk_267F0E300);
        OUTLINED_FUNCTION_110(v119);
        if (!v120)
        {
          v140 = v226;
          sub_267EF4B88();
          v239(v119, v71);
          v141 = v228;
          (v115)(v228, v140, v118);
          sub_267E57DFC(v116, v247);
          sub_267E57DFC(v141, v246);
          sub_267C6AD4C(v247, v244, &unk_28022BBF0, &unk_267F01C60);
          if (v245)
          {
            __swift_project_boxed_opaque_existential_0(v244, v245);
            v142 = OUTLINED_FUNCTION_38_0();
            v143(v142);
            OUTLINED_FUNCTION_67_7();
            OUTLINED_FUNCTION_89_11();
            if (v144)
            {
              v145 = sub_267EF60C8();

              v146 = v240;
              if (v145)
              {
                sub_267EF63B8();

                __swift_destroy_boxed_opaque_existential_0(v244);
                goto LABEL_34;
              }

              __swift_destroy_boxed_opaque_existential_0(v244);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(v244);
              v146 = v240;
            }
          }

          else
          {
            sub_267B9F98C(v244, &unk_28022BBF0, &unk_267F01C60);
            OUTLINED_FUNCTION_67_7();
            v146 = v240;
            OUTLINED_FUNCTION_89_11();
          }

          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v151, v152, v153, v115);
LABEL_34:
          sub_267C6AD4C(v246, v244, &unk_28022BBF0, &unk_267F01C60);
          if (v245)
          {
            __swift_project_boxed_opaque_existential_0(v244, v245);
            v154 = OUTLINED_FUNCTION_38_0();
            if (v155(v154))
            {
              v156 = sub_267EF60C8();

              if (v156)
              {
                sub_267EF63B8();

                __swift_destroy_boxed_opaque_existential_0(v244);
LABEL_41:
                v160 = *(v227 + 48);
                OUTLINED_FUNCTION_41_15();
                sub_267C6AD4C(v161, v162, v163, v164);
                OUTLINED_FUNCTION_41_15();
                sub_267C6AD4C(v165, v166, v167, v168);
                OUTLINED_FUNCTION_5_1(v116, 1, v115);
                if (!v120)
                {
                  v189 = OUTLINED_FUNCTION_61_4();
                  sub_267C6AD4C(v189, v190, v191, v192);
                  OUTLINED_FUNCTION_5_1(v116 + v160, 1, v115);
                  if (!v193)
                  {
                    v214 = v118;
                    v215 = v225;
                    v216 = v224;
                    (*(v225 + 32))(v224, v116 + v160, v115);
                    sub_267DC89C4(&qword_28022BFF0, MEMORY[0x277D5F120]);
                    sub_267EF8FE8();
                    v217 = *(v215 + 8);
                    v217(v216, v115);
                    sub_267B9F98C(v114, &qword_280229950, &unk_267EFEBB0);
                    OUTLINED_FUNCTION_83_8(v230);
                    OUTLINED_FUNCTION_83_8(v246);
                    OUTLINED_FUNCTION_83_8(v247);
                    v218 = *(v235 + 8);
                    v219 = v236;
                    v218(v141, v236);
                    v218(v234, v219);
                    OUTLINED_FUNCTION_83_8(v238);
                    OUTLINED_FUNCTION_83_8(v146);
                    v217(v214, v115);
                    v113 = v116;
                    v111 = &qword_280229950;
                    v112 = &unk_267EFEBB0;
                    goto LABEL_50;
                  }

                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v194, v195, v196);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v197, v198, v199);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v200, v201, v202);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v203, v204, v205);
                  v206 = *(v235 + 8);
                  v207 = OUTLINED_FUNCTION_85_10();
                  v206(v207);
                  (v206)(v234, &unk_267F01C60);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v208, v209, v210);
                  OUTLINED_FUNCTION_439();
                  sub_267B9F98C(v211, v212, v213);
                  (*(v225 + 8))(v118, v115);
LABEL_49:
                  v111 = &qword_28022BFE8;
                  v112 = &qword_267F09188;
                  v113 = v116;
                  goto LABEL_50;
                }

                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v169, v170, v171);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v172, v173, v174);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v175, v176, v177);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v178, v179, v180);
                v181 = *(v235 + 8);
                v182 = OUTLINED_FUNCTION_85_10();
                v181(v182);
                (v181)(v234, &unk_267F01C60);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v183, v184, v185);
                OUTLINED_FUNCTION_439();
                sub_267B9F98C(v186, v187, v188);
                OUTLINED_FUNCTION_5_1(v116 + v160, 1, v115);
                if (!v120)
                {
                  goto LABEL_49;
                }

                v111 = &qword_280229950;
                v112 = &unk_267EFEBB0;
                v113 = v116;
LABEL_50:
                sub_267B9F98C(v113, v111, v112);
                goto LABEL_51;
              }
            }

            __swift_destroy_boxed_opaque_existential_0(v244);
          }

          else
          {
            sub_267B9F98C(v244, &unk_28022BBF0, &unk_267F01C60);
          }

          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v157, v158, v159, v115);
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v121, v122, v123);
        v124 = OUTLINED_FUNCTION_61_4();
        v125(v124);
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v126, v127, v128);
        OUTLINED_FUNCTION_59_0();
        sub_267B9F98C(v129, v130, v131);
      }
    }

    else
    {
      sub_267B9F98C(v65, &qword_280229970, &unk_267F0E300);
      OUTLINED_FUNCTION_3_52();
      sub_267DC8C10(v66, v82);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
    sub_267DC8C10(v42, v81);
  }

  v83 = v241;
  OUTLINED_FUNCTION_3();
  swift_storeEnumTagMultiPayload();
  sub_267DBFC0C();
  v85 = v84;
  OUTLINED_FUNCTION_3_52();
  sub_267DC8C10(v83, v86);
  if (v85)
  {
    OUTLINED_FUNCTION_3();
    swift_storeEnumTagMultiPayload();
    sub_267DBFC0C();
    OUTLINED_FUNCTION_3_52();
    sub_267DC8C10(v83, v87);
  }

LABEL_51:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DC0BF4(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_267EF8198();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF88, &qword_267F09120);
  v12 = MEMORY[0x28223BE20](v11);
  v55 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v49 - v14;
  v15 = type metadata accessor for SendTapbackFlow.State(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF90, &unk_267F09128);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v49 - v29;
  v31 = *(v28 + 56);
  sub_267DC8BB4(a1, &v49 - v29, type metadata accessor for SendTapbackFlow.State);
  sub_267DC8BB4(v58, &v30[v31], type metadata accessor for SendTapbackFlow.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_267DC8BB4(v30, v24, type metadata accessor for SendTapbackFlow.State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = v56;
        v39 = v57;
        v41 = v54;
        (*(v56 + 32))(v54, &v30[v31], v57);
        v38 = sub_267C28D14(v24, v41);
        v42 = *(v40 + 8);
        v42(v41, v39);
        v42(v24, v39);
        goto LABEL_17;
      }

      (*(v56 + 8))(v24, v57);
      goto LABEL_27;
    case 2u:
      sub_267DC8BB4(v30, v21, type metadata accessor for SendTapbackFlow.State);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v32 = v21;
        goto LABEL_25;
      }

      v33 = *(v11 + 48);
      v34 = v55;
      sub_267BBE184(v21, v55, &qword_280229920, &unk_267F0ABD0);
      sub_267BBE184(&v30[v31], v34 + v33, &qword_280229920, &unk_267F0ABD0);
      v35 = v57;
      if (__swift_getEnumTagSinglePayload(v34, 1, v57) == 1)
      {
        goto LABEL_30;
      }

      v36 = v34;
      v37 = v52;
      goto LABEL_33;
    case 3u:
      sub_267DC8BB4(v30, v18, type metadata accessor for SendTapbackFlow.State);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_27;
      }

      v38 = *v18 == v30[v31];
LABEL_17:
      sub_267DC8C10(v30, type metadata accessor for SendTapbackFlow.State);
      return v38 & 1;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    default:
      sub_267DC8BB4(v30, v26, type metadata accessor for SendTapbackFlow.State);
      if (swift_getEnumCaseMultiPayload())
      {
        v32 = v26;
LABEL_25:
        sub_267B9F98C(v32, &qword_280229920, &unk_267F0ABD0);
LABEL_27:
        sub_267B9F98C(v30, &qword_28022BF90, &unk_267F09128);
        goto LABEL_28;
      }

      v33 = *(v11 + 48);
      v34 = v53;
      sub_267BBE184(v26, v53, &qword_280229920, &unk_267F0ABD0);
      sub_267BBE184(&v30[v31], v34 + v33, &qword_280229920, &unk_267F0ABD0);
      v35 = v57;
      if (__swift_getEnumTagSinglePayload(v34, 1, v57) != 1)
      {
        v36 = v34;
        v37 = v50;
LABEL_33:
        sub_267C6AD4C(v36, v37, &qword_280229920, &unk_267F0ABD0);
        if (__swift_getEnumTagSinglePayload(v34 + v33, 1, v35) != 1)
        {
          v43 = v56;
          v44 = v34 + v33;
          v45 = v51;
          (*(v56 + 32))(v51, v44, v35);
          sub_267DC89C4(&qword_28022BF98, MEMORY[0x277D5D3D8]);
          v46 = sub_267EF8FE8();
          v47 = *(v43 + 8);
          v47(v45, v35);
          v47(v37, v35);
          sub_267B9F98C(v34, &qword_280229920, &unk_267F0ABD0);
          if (v46)
          {
            goto LABEL_38;
          }

LABEL_36:
          sub_267DC8C10(v30, type metadata accessor for SendTapbackFlow.State);
LABEL_28:
          v38 = 0;
          return v38 & 1;
        }

        (*(v56 + 8))(v37, v35);
LABEL_35:
        sub_267B9F98C(v34, &qword_28022BF88, &qword_267F09120);
        goto LABEL_36;
      }

LABEL_30:
      if (__swift_getEnumTagSinglePayload(v34 + v33, 1, v35) != 1)
      {
        goto LABEL_35;
      }

      sub_267B9F98C(v34, &qword_280229920, &unk_267F0ABD0);
LABEL_38:
      sub_267DC8C10(v30, type metadata accessor for SendTapbackFlow.State);
      v38 = 1;
      return v38 & 1;
  }
}

void sub_267DC1410()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36_3(&v264 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229970, &unk_267F0E300);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36_3(&v264 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229928, &qword_267EFEB80);
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v264 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFD0, &qword_267F0D0B0);
  v15 = OUTLINED_FUNCTION_18(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v17);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
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
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v24);
  v283 = sub_267EF8198();
  OUTLINED_FUNCTION_58();
  v273 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v29);
  v289 = sub_267EF8428();
  OUTLINED_FUNCTION_58();
  v288 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v33);
  v292 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v291 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v37 - v36);
  v300 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v296 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_45_0();
  v43 = OUTLINED_FUNCTION_3_1(v42);
  v44 = type metadata accessor for SendTapbackFlow.State(v43);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6();
  v299 = v46;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v47);
  v49 = (&v264 - v48);
  v50 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0_0();
  v56 = v55 - v54;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v57 = sub_267EF8A08();
  v58 = __swift_project_value_buffer(v57, qword_280240FB0);
  v59 = *(v52 + 16);
  v297 = v3;
  v59(v56, v3, v50);
  v298 = v58;
  v60 = sub_267EF89F8();
  v61 = sub_267EF95C8();
  v62 = os_log_type_enabled(v60, v61);
  v284 = v13;
  v301 = v1;
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_48();
    v266 = swift_slowAlloc();
    *&v305 = v266;
    *v63 = 136315138;
    sub_267DC89C4(&qword_28022AF50, MEMORY[0x277D5C118]);
    v64 = sub_267EF9E58();
    v65 = v44;
    v66 = v49;
    v68 = v67;
    (*(v52 + 8))(v56, v50);
    v69 = sub_267BA33E8(v64, v68, &v305);
    v49 = v66;
    v44 = v65;

    *(v63 + 4) = v69;
    _os_log_impl(&dword_267B93000, v60, v61, "#SendTapbackFlow received input: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v266);
    OUTLINED_FUNCTION_32_0();
    v1 = v301;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v52 + 8))(v56, v50);
  }

  v70 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_83(v1 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, &v307);
  sub_267DC8BB4(v1 + v70, v49, type metadata accessor for SendTapbackFlow.State);
  v71 = v299;
  OUTLINED_FUNCTION_37_1();
  swift_storeEnumTagMultiPayload();
  v72 = sub_267DC0BF4(v49, v71);
  v73 = OUTLINED_FUNCTION_3();
  sub_267DC8C10(v73, v74);
  sub_267DC8C10(v49, type metadata accessor for SendTapbackFlow.State);
  v75 = v300;
  if ((v72 & 1) == 0)
  {

    v95 = sub_267EF89F8();
    v96 = sub_267EF95C8();

    if (!os_log_type_enabled(v95, v96))
    {
LABEL_14:

      goto LABEL_55;
    }

    OUTLINED_FUNCTION_48();
    v97 = OUTLINED_FUNCTION_64_2();
    *&v305 = v97;
    *v71 = 136315138;
    OUTLINED_FUNCTION_8_43();
    sub_267DC8BB4(v98 + v70, v49, v99);
    v100 = sub_267EF9098();
    v102 = sub_267BA33E8(v100, v101, &v305);

    *(v71 + 4) = v102;
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v103, v104, v105, v106, v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    OUTLINED_FUNCTION_32_0();
LABEL_13:
    OUTLINED_FUNCTION_26();
    goto LABEL_14;
  }

  v299 = v44;
  v266 = v49;
  v76 = v295;
  sub_267EF4B88();
  v77 = v296;
  v78 = *(v296 + 88);
  v79 = v78(v76, v75);
  v80 = *MEMORY[0x277D5C168];
  v81 = *(v77 + 8);
  v81(v76, v75);
  if (v79 == v80)
  {
    v82 = sub_267EF89F8();
    v83 = sub_267EF95C8();
    v84 = OUTLINED_FUNCTION_36(v83);
    v85 = v301;
    if (v84)
    {
      v86 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v86);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v87, v88, v89, v90, v91, 2u);
      OUTLINED_FUNCTION_26();
    }

    v92 = v266;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3(v85 + v70, &v305);
    v93 = v85 + v70;
    v94 = v92;
    goto LABEL_54;
  }

  v295 = v70;
  v108 = *(v301 + 72);
  v109 = v294;
  sub_267EF4B88();
  v110 = sub_267EBF874();
  v81(v109, v75);
  v265 = v108;
  *(v108 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap) = v110;
  v111 = v290;
  sub_267EF4B88();
  v112 = OUTLINED_FUNCTION_53_1();
  if ((v78)(v112) != *MEMORY[0x277D5C150])
  {
    v126 = OUTLINED_FUNCTION_53_1();
    (v81)(v126);
    v127 = v295;
    goto LABEL_23;
  }

  v264 = v81;
  v113 = OUTLINED_FUNCTION_53_1();
  v114(v113);
  (*(v291 + 32))(v293, v111, v292);
  v115 = v288;
  v116 = *(v288 + 104);
  v117 = v286;
  v118 = v289;
  v116(v286, *MEMORY[0x277D5D6F8], v289);
  v119 = sub_267EF8418();
  v121 = v120;
  v122 = *(v115 + 8);
  v122(v117, v118);
  v124 = v119 == sub_267EF4BC8() && v121 == v123;
  if (v124)
  {

    v125 = v287;
  }

  else
  {
    OUTLINED_FUNCTION_3();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_98_1();

    v125 = v287;
    if ((v119 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  if (!sub_267EF4BD8())
  {
    v305 = 0u;
    v306 = 0u;
    goto LABEL_44;
  }

  sub_267BB40A0();

  if (!*(&v306 + 1))
  {
LABEL_44:
    v173 = &qword_28022AEF0;
    v174 = &qword_267EFCDE0;
    v175 = &v305;
LABEL_45:
    sub_267B9F98C(v175, v173, v174);
    goto LABEL_46;
  }

  if (swift_dynamicCast())
  {
    v143 = *(&v303 + 1);

    v144 = v279;
    sub_267EF8208();
    v145 = sub_267EF8228();
    OUTLINED_FUNCTION_5_1(v144, 1, v145);
    if (v124)
    {
      sub_267B9F98C(v144, &qword_28022BFD0, &qword_267F0D0B0);
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v283);
      v149 = v280;
    }

    else
    {
      sub_267E9EDF4(v125);
      v221 = OUTLINED_FUNCTION_66();
      v222(v221);
      OUTLINED_FUNCTION_5_1(v125, 1, v283);
      v149 = v280;
      if (!v223)
      {

        v235 = *(v273 + 32);
        v236 = v283;
        v235(v268, v125, v283);
        v237 = sub_267EF89F8();
        v238 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v238))
        {
          v240 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v240);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v241, v242, v243, v244, v245, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_46_16();
        v246 = OUTLINED_FUNCTION_84_9();
        v247(v246);
        v248 = OUTLINED_FUNCTION_75_9();
        (v235)(v248);
        __swift_storeEnumTagSinglePayload(v143, 0, 1, v236);
LABEL_81:
        swift_storeEnumTagMultiPayload();
        v262 = v301;
        v263 = v295;
        OUTLINED_FUNCTION_66_3(v301 + v295, &v305);
        sub_267DC8AC4(v143, v262 + v263);
        swift_endAccess();
        goto LABEL_55;
      }
    }

    sub_267B9F98C(v125, &qword_280229920, &unk_267F0ABD0);
    sub_267EF8208();
    OUTLINED_FUNCTION_5_1(v149, 1, v145);
    if (v124)
    {
      sub_267B9F98C(v149, &qword_28022BFD0, &qword_267F0D0B0);
      v143 = v272;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v224, v225, v226, v283);
    }

    else
    {
      v143 = v272;
      sub_267E9F260(v272);
      v232 = OUTLINED_FUNCTION_66();
      v233(v232);
      OUTLINED_FUNCTION_5_1(v143, 1, v283);
      if (!v234)
      {
        v249 = *(v273 + 32);
        v249(v267, v143, v283);
        v250 = sub_267EF89F8();
        v251 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v251))
        {
          v253 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v253);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v254, v255, v256, v257, v258, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_46_16();
        v259 = OUTLINED_FUNCTION_84_9();
        v260(v259);
        v261 = OUTLINED_FUNCTION_75_9();
        (v249)(v261);
        goto LABEL_81;
      }
    }

    v173 = &qword_280229920;
    v174 = &unk_267F0ABD0;
    v175 = v143;
    goto LABEL_45;
  }

LABEL_46:
  v176 = v285;
  v177 = v289;
  v116(v285, *MEMORY[0x277D5D708], v289);
  v178 = sub_267EF8418();
  v180 = v179;
  v122(v176, v177);
  v78 = v293;
  if (v178 == sub_267EF4BC8() && v180 == v181)
  {

    OUTLINED_FUNCTION_46_16();
    v184(v78, v292);
    v127 = v295;
LABEL_53:
    v185 = v266;
    swift_storeEnumTagMultiPayload();
    v186 = v301;
    OUTLINED_FUNCTION_66_3(v301 + v127, &v305);
    v93 = v186 + v127;
    v94 = v185;
LABEL_54:
    sub_267DC8AC4(v94, v93);
    swift_endAccess();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_3();
  sub_267EF9EA8();
  OUTLINED_FUNCTION_98_1();

  OUTLINED_FUNCTION_46_16();
  v183(v78, v292);
  v81 = v264;
  v127 = v295;
  if (v178)
  {
    goto LABEL_53;
  }

LABEL_23:
  v128 = v294;
  sub_267EF4B88();
  sub_267E57DFC(v128, &v303);
  v129 = OUTLINED_FUNCTION_53_1();
  (v81)(v129);
  if (!v304)
  {
    sub_267B9F98C(&v303, &unk_28022BBF0, &unk_267F01C60);
    v95 = sub_267EF89F8();
    v150 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v150))
    {
      goto LABEL_14;
    }

    v151 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v151);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v152, v153, v154, v155, v156, 2u);
    goto LABEL_13;
  }

  sub_267BE58F4(&v303, &v305);
  __swift_project_boxed_opaque_existential_0(&v305, *(&v306 + 1));
  OUTLINED_FUNCTION_89_11();
  OUTLINED_FUNCTION_61_0();
  sub_267E58838(v130);
  v131 = type metadata accessor for TapbackAction(0);
  OUTLINED_FUNCTION_5_1(v78, 1, v131);
  if (!v124)
  {
    v157 = v282;
    sub_267C6AD4C(v78, v282, &qword_280229928, &qword_267EFEB80);
    OUTLINED_FUNCTION_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v159 = v266;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v160 = v275;
        sub_267BBE184(v157, v275, &qword_280229970, &unk_267F0E300);
        v161 = sub_267EF89F8();
        v162 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v162))
        {
          v163 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v163);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v164, v165, v166, v167, v168, 2u);
          OUTLINED_FUNCTION_26();
        }

        v169 = v160;
        v170 = v277;
        sub_267BBE184(v169, v277, &qword_280229970, &unk_267F0E300);
        type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v171 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
        v172 = v301;
        OUTLINED_FUNCTION_66_3(v301 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, &v303);
        sub_267BF3128(v170, v172 + v171, &qword_280229958, &unk_267F09110);
        swift_endAccess();
        OUTLINED_FUNCTION_86_10();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3(v172 + v127, &v303);
        sub_267DC8AC4(v159, v172 + v127);
        swift_endAccess();
        sub_267B9F98C(v78, &qword_280229928, &qword_267EFEB80);
        __swift_destroy_boxed_opaque_existential_0(&v305);
        goto LABEL_55;
      }

      v210 = sub_267EF89F8();
      v211 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v211))
      {
        v212 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v212);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v213, v214, v215, v216, v217, 2u);
        OUTLINED_FUNCTION_26();
      }

      v218 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
      v219 = v265;
      OUTLINED_FUNCTION_83(v265 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback, &v303);
      sub_267C6AD4C(v219 + v218, v159, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_86_10();
      swift_storeEnumTagMultiPayload();
      v220 = v301;
      OUTLINED_FUNCTION_66_3(v301 + v127, &v302);
      sub_267DC8AC4(v159, v220 + v127);
    }

    else
    {
      v187 = v281;
      OUTLINED_FUNCTION_41_15();
      sub_267BBE184(v188, v189, v190, v191);
      v192 = v274;
      OUTLINED_FUNCTION_41_15();
      sub_267C6AD4C(v193, v194, v195, v196);
      v197 = sub_267EF89F8();
      v198 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v198))
      {
        OUTLINED_FUNCTION_48();
        v199 = OUTLINED_FUNCTION_64_2();
        *&v303 = v199;
        *v187 = 136315138;
        sub_267C6AD4C(v192, v269, &qword_280229920, &unk_267F0ABD0);
        v200 = sub_267EF9098();
        v201 = v192;
        v202 = v200;
        v204 = v203;
        sub_267B9F98C(v201, &qword_280229920, &unk_267F0ABD0);
        v78 = sub_267BA33E8(v202, v204, &v303);
        v159 = v266;

        *(v187 + 4) = v78;
        OUTLINED_FUNCTION_89_11();
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v205, v206, v207, v208, v209, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v199);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      else
      {

        sub_267B9F98C(v192, &qword_280229920, &unk_267F0ABD0);
      }

      v227 = v301;
      v228 = v283;
      v229 = v278;
      sub_267BBE184(v281, v278, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_110(v229);
      if (v124)
      {
        sub_267B9F98C(v229, &qword_280229920, &unk_267F0ABD0);
      }

      else
      {
        v230 = *(v273 + 32);
        v231 = v271;
        v230(v271, v229, v228);
        v230(v159, v231, v228);
      }

      OUTLINED_FUNCTION_86_10();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3(v227 + v127, &v303);
      sub_267DC8AC4(v159, v227 + v127);
    }

    swift_endAccess();
    sub_267B9F98C(v78, &qword_280229928, &qword_267EFEB80);
    __swift_destroy_boxed_opaque_existential_0(&v305);
    goto LABEL_55;
  }

  v132 = sub_267EF89F8();
  v133 = sub_267EF95D8();
  v134 = OUTLINED_FUNCTION_36(v133);
  v135 = v266;
  if (v134)
  {
    v136 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v136);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v137, v138, v139, v140, v141, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_storeEnumTagMultiPayload();
  v142 = v301;
  OUTLINED_FUNCTION_66_3(v301 + v127, &v303);
  sub_267DC8AC4(v135, v142 + v127);
  swift_endAccess();
  sub_267B9F98C(v78, &qword_280229928, &qword_267EFEB80);
  __swift_destroy_boxed_opaque_existential_0(&v305);
LABEL_55:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DC2A58()
{
  OUTLINED_FUNCTION_12();
  v1[58] = v2;
  v1[59] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v1[60] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[61] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF8198();
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_18(v5);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v6 = type metadata accessor for SendTapbackFlow.State(0);
  v1[72] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC2BF0()
{
  v157 = v1;
  v2 = *(v1 + 592);
  v3 = *(v1 + 472);
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  *(v1 + 600) = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_83(v3 + v4, v1 + 56);
  OUTLINED_FUNCTION_8_43();
  sub_267DC8BB4(v3 + v4, v2, v5);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_267BBE184(*(v1 + 592), *(v1 + 568), &qword_280229920, &unk_267F0ABD0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v6 = sub_267EF8A08();
      __swift_project_value_buffer(v6, qword_280240FB0);
      v7 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_32();
        *v9 = 0;
        _os_log_impl(&dword_267B93000, v7, v0, "#SendTapbackFlow state .initialized", v9, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v10 = *(v1 + 560);
      v11 = *(v1 + 496);

      sub_267DC7E4C(1);
      v12 = OUTLINED_FUNCTION_37_1();
      sub_267C6AD4C(v12, v13, v14, v15);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_267B9F98C(*(v1 + 560), &qword_280229920, &unk_267F0ABD0);
        v16 = sub_267EF89F8();
        sub_267EF95C8();
        OUTLINED_FUNCTION_64();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v18);
          OUTLINED_FUNCTION_21_12(&dword_267B93000, v19, v20, "#SendTapbackFlow pushing PromptForValueFlowAsync with PromptForTapbackFlowStrategy");
          OUTLINED_FUNCTION_26();
        }

        v21 = *(v1 + 568);

        sub_267DC538C();
        v22 = v21;
      }

      else
      {
        (*(*(v1 + 504) + 32))(*(v1 + 528), *(v1 + 560), *(v1 + 496));
        v127 = sub_267EF89F8();
        v128 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v128))
        {
          v129 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v129);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v130, v131, v132, v133, v134, 2u);
          OUTLINED_FUNCTION_26();
        }

        v135 = *(v1 + 584);
        v155 = *(v1 + 568);
        v136 = *(v1 + 528);
        v138 = *(v1 + 496);
        v137 = *(v1 + 504);

        (*(v137 + 16))(v135, v136, v138);
        OUTLINED_FUNCTION_37_1();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_66_3(v3 + v4, v1 + 440);
        sub_267DC8AC4(v135, v3 + v4);
        swift_endAccess();
        sub_267EF3FB8();
        (*(v137 + 8))(v136, v138);
        v22 = v155;
      }

      sub_267B9F98C(v22, &qword_280229920, &unk_267F0ABD0);
      goto LABEL_64;
    case 1u:
      (*(*(v1 + 504) + 32))(*(v1 + 520), *(v1 + 592), *(v1 + 496));
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v57 = sub_267EF8A08();
      *(v1 + 608) = __swift_project_value_buffer(v57, qword_280240FB0);
      v58 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_32();
        *v60 = 0;
        _os_log_impl(&dword_267B93000, v58, v0, "#SendTapbackFlow state .readyToSend", v60, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v61 = sub_267DC5204();
      *(v1 + 776) = v61;
      if (v61 == 6)
      {
        (*(*(v1 + 504) + 16))(*(v1 + 512), *(v1 + 520), *(v1 + 496));
        v62 = sub_267EF89F8();
        sub_267EF95E8();
        OUTLINED_FUNCTION_12_3();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = OUTLINED_FUNCTION_48();
          v65 = swift_slowAlloc();
          v156 = v65;
          *v64 = 136315138;
          v150 = sub_267EF8188();
          v152 = v1;
          v67 = v66;
          v68 = OUTLINED_FUNCTION_66_13();
          v69(v68);
          v70 = sub_267BA33E8(v150, v67, &v156);
          v1 = v152;

          *(v64 + 4) = v70;
          _os_log_impl(&dword_267B93000, v62, v0, "#SendTapbackFlow get tapback type failed for %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_29_1();
        }

        else
        {

          v139 = OUTLINED_FUNCTION_66_13();
          v140(v139);
        }

        v141 = *(v1 + 584);
        v142 = *(v1 + 488);
        v151 = *(v1 + 496);
        v153 = *(v1 + 520);
        v143 = *(v1 + 472);
        v144 = sub_267C6AA68();
        v145 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v144);
        OUTLINED_FUNCTION_18_27(v145, v146);
        v147 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
        OUTLINED_FUNCTION_66_3(v143 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, v1 + 248);
        sub_267BF3128(v142, v143 + v147, &qword_280229958, &unk_267F09110);
        swift_endAccess();
        OUTLINED_FUNCTION_34_18();
        OUTLINED_FUNCTION_66_3(v3 + v4, v1 + 272);
        sub_267DC8AC4(v141, v3 + v4);
        swift_endAccess();
        sub_267EF4018();
        v154(v153, v151);
LABEL_64:
        OUTLINED_FUNCTION_0_49();

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_15();

        __asm { BRAA            X1, X16 }
      }

      v121 = *(v1 + 472);
      v122 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender;
      *(v1 + 616) = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender;
      __swift_project_boxed_opaque_existential_0((v121 + v122), *(v121 + v122 + 24));
      v123 = [*(v121 + 56) identifier];
      sub_267EF9028();
      v125 = v124;

      *(v1 + 624) = v125;
      v97 = swift_task_alloc();
      *(v1 + 632) = v97;
      *v97 = v1;
      v98 = sub_267DC3958;
LABEL_55:
      v97[1] = v98;
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_41_15();
      OUTLINED_FUNCTION_15();

      return sub_267D52D0C();
    case 2u:
      sub_267BBE184(*(v1 + 592), *(v1 + 544), &qword_280229920, &unk_267F0ABD0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v83 = sub_267EF8A08();
      *(v1 + 688) = __swift_project_value_buffer(v83, qword_280240FB0);
      v84 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v86);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v87, v88, v89, v90, v91, 2u);
        OUTLINED_FUNCTION_26();
      }

      v92 = *(v1 + 472);

      v93 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender;
      *(v1 + 696) = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender;
      __swift_project_boxed_opaque_existential_0((v92 + v93), *(v92 + v93 + 24));
      v94 = [*(v92 + 56) identifier];
      sub_267EF9028();
      v96 = v95;

      *(v1 + 704) = v96;
      v97 = swift_task_alloc();
      *(v1 + 712) = v97;
      *v97 = v1;
      v98 = sub_267DC453C;
      goto LABEL_55;
    case 3u:
      v99 = **(v1 + 592);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v100 = sub_267EF8A08();
      __swift_project_value_buffer(v100, qword_280240FB0);
      v101 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = OUTLINED_FUNCTION_48();
        v104 = swift_slowAlloc();
        *v103 = 138412290;
        v105 = sub_267C6AA68();
        OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v105);
        *v106 = v99;
        v107 = _swift_stdlib_bridgeErrorToNSError();
        *(v103 + 4) = v107;
        *v104 = v107;
        _os_log_impl(&dword_267B93000, v101, v0, "#SendTapbackFlow: failed %@", v103, 0xCu);
        sub_267B9F98C(v104, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_32_0();
      }

      v108 = *(v1 + 488);
      v109 = *(v1 + 472);

      v110 = sub_267C6AA68();
      v111 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v110);
      *v112 = v99;
      *v108 = v111;
      swift_storeEnumTagMultiPayload();
      v113 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
      OUTLINED_FUNCTION_66_3(v109 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, v1 + 80);
      sub_267BF3128(v108, v109 + v113, &qword_280229958, &unk_267F09110);
      swift_endAccess();
      goto LABEL_53;
    case 5u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v114 = sub_267EF8A08();
      __swift_project_value_buffer(v114, qword_280240FB0);
      v115 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v117);
        OUTLINED_FUNCTION_21_12(&dword_267B93000, v118, v119, "#SendTapbackFlow reprompt with PromptForTapbackFlowStrategy");
        OUTLINED_FUNCTION_26();
      }

      v120 = *(v1 + 472);

      *(*(v120 + 72) + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_hasPrompted) = 0;
      sub_267DC538C();
      goto LABEL_64;
    case 7u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v40 = sub_267EF8A08();
      __swift_project_value_buffer(v40, qword_280240FB0);
      v41 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v43);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v44, v45, v46, v47, v48, 2u);
        OUTLINED_FUNCTION_26();
      }

      v49 = *(v1 + 472);

      OUTLINED_FUNCTION_27_11((v49 + 16));
      v50 = OUTLINED_FUNCTION_38_0();
      v51(v50);
      __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
      OUTLINED_FUNCTION_38_0();
      v52 = sub_267EF3C48();
      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      if ((v52 & 1) == 0)
      {
        goto LABEL_53;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 768) = v53;
      *v53 = v54;
      v53[1] = sub_267DC506C;
      OUTLINED_FUNCTION_15();

      return sub_267DC7164();
    case 8u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v71 = sub_267EF8A08();
      __swift_project_value_buffer(v71, qword_280240FB0);
      v72 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v74);
        OUTLINED_FUNCTION_21_12(&dword_267B93000, v75, v76, "#SendTapbackFlow completed");
        OUTLINED_FUNCTION_26();
      }

      v77 = *(v1 + 536);
      v78 = *(v1 + 472);

      v79 = *(v78 + 72);
      v80 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
      OUTLINED_FUNCTION_83(v79 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback, v1 + 104);
      sub_267C6AD4C(v79 + v80, v77, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_110(v77);
      if (v81)
      {
        v82 = 5;
      }

      else
      {
        v82 = 2;
      }

      sub_267B9F98C(v77, &qword_280229920, &unk_267F0ABD0);
      sub_267DC7E4C(v82);
LABEL_53:
      sub_267EF4018();
      goto LABEL_64;
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v23 = *(v1 + 472);
      v24 = sub_267EF8A08();
      __swift_project_value_buffer(v24, qword_280240FB0);

      v25 = sub_267EF89F8();
      v26 = sub_267EF95E8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = *(v1 + 584);
        OUTLINED_FUNCTION_48();
        v28 = OUTLINED_FUNCTION_64_2();
        v156 = v28;
        *v23 = 136315138;
        OUTLINED_FUNCTION_8_43();
        sub_267DC8BB4(v3 + v4, v27, v29);
        v30 = sub_267EF9098();
        v32 = sub_267BA33E8(v30, v31, &v156);

        *(v23 + 4) = v32;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_26();
      }

      v38 = *(v1 + 592);
      sub_267EF4018();
      OUTLINED_FUNCTION_9_38();
      sub_267DC8C10(v38, v39);
      goto LABEL_64;
  }
}

uint64_t sub_267DC3958()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 640) = v6;
  *(v7 + 648) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DC3A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v15 = sub_267BAF0DC(v14[80]);
  v16 = v14[80];
  if (v15)
  {
    v17 = v16 & 0xC000000000000001;
    sub_267BBD0EC(0, (v16 & 0xC000000000000001) == 0, v16);
    if (v17)
    {
      v18 = MEMORY[0x26D609870](0, v14[80]);
    }

    else
    {
      v18 = *(v14[80] + 32);
    }

    v14[82] = v18;
    v19 = v14[77];
    v20 = v14[59];

    sub_267DC798C();
    __swift_project_boxed_opaque_existential_0((v20 + v19), *(v20 + v19 + 24));
    v21 = swift_task_alloc();
    v14[83] = v21;
    *v21 = v14;
    v21[1] = sub_267DC3F28;
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_64_3();

    return sub_267D51EC8();
  }

  else
  {

    v24 = sub_267EF89F8();
    v25 = sub_267EF95E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_32();
      *v26 = 0;
      _os_log_impl(&dword_267B93000, v24, v25, "#SendTapbackFlow failed to fetch message entity", v26, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v27 = v14[75];
    v28 = v14[73];
    v29 = v14[63];
    v45 = v14[62];
    v46 = v14[65];
    v30 = v14[61];
    v31 = v14[59];

    v32 = sub_267C6AA68();
    v33 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v32);
    *v34 = 0;
    *v30 = v33;
    OUTLINED_FUNCTION_61_4();
    swift_storeEnumTagMultiPayload();
    v35 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
    OUTLINED_FUNCTION_66_3(v31 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, (v14 + 49));
    sub_267BF3128(v30, v31 + v35, &qword_280229958, &unk_267F09110);
    swift_endAccess();
    *v28 = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3(v31 + v27, (v14 + 52));
    sub_267DC8AC4(v28, v31 + v27);
    swift_endAccess();
    sub_267EF4018();
    (*(v29 + 8))(v46, v45);
    OUTLINED_FUNCTION_0_49();
    v47 = v36;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_64_3();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v45, v47, a12, a13, a14);
  }
}

uint64_t sub_267DC3D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  v20 = *(v15 + 648);
  v21 = v20;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v22);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v23, v24, "#SendTapbackFlow failed to submit SendTapbackIntent, error: %@");
    sub_267B9F98C(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_56_13();
  OUTLINED_FUNCTION_80_8();
  v25 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3(v18 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, v15 + 296);
  v26 = v20;
  sub_267BF3128(v19, v18 + v25, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_96_8();
  OUTLINED_FUNCTION_66_3(v18 + v16, v15 + 320);
  sub_267DC8AC4(v17, v18 + v16);
  swift_endAccess();
  sub_267EF4018();

  (*(v14 + 8))(a11, a10);
  OUTLINED_FUNCTION_0_49();
  v37 = v27;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v37, a12, a13, a14);
}

uint64_t sub_267DC3F28()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 672) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC4020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[69];
  v14 = v12[65];
  v15 = v12[62];
  v16 = v12[61];
  v17 = v12[59];
  v18 = *(v17 + 72);
  v19 = *(v12[63] + 16);
  v20 = OUTLINED_FUNCTION_37_1();
  v19(v20);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  v21 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
  OUTLINED_FUNCTION_66_3(v18 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback, (v12 + 43));
  sub_267BF3128(v13, v18 + v21, &qword_280229920, &unk_267F0ABD0);
  swift_endAccess();
  (v19)(v16, v14, v15);
  type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
  OUTLINED_FUNCTION_110_0();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3(v17 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, (v12 + 46));
  sub_267BF3128(v16, v17 + v22, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v12[85] = v23;
  *v23 = v24;
  v23[1] = sub_267DC41AC;
  OUTLINED_FUNCTION_40();

  return sub_267DC6928();
}

uint64_t sub_267DC41AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DC4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  v12 = OUTLINED_FUNCTION_66();
  v13(v12);
  OUTLINED_FUNCTION_0_49();
  v24 = v14;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_267DC4368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();

  v20 = *(v15 + 672);
  v21 = v20;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v22);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v23, v24, "#SendTapbackFlow failed to submit SendTapbackIntent, error: %@");
    sub_267B9F98C(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_56_13();
  OUTLINED_FUNCTION_80_8();
  v25 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3(v18 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, v15 + 296);
  v26 = v20;
  sub_267BF3128(v19, v18 + v25, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_96_8();
  OUTLINED_FUNCTION_66_3(v18 + v16, v15 + 320);
  sub_267DC8AC4(v17, v18 + v16);
  swift_endAccess();
  sub_267EF4018();

  (*(v14 + 8))(a11, a10);
  OUTLINED_FUNCTION_0_49();
  v37 = v27;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v37, a12, a13, a14);
}

uint64_t sub_267DC453C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 720) = v6;
  *(v7 + 728) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DC4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = sub_267BAF0DC(v12[90]);
  v14 = v12[90];
  if (v13)
  {
    v15 = v14 & 0xC000000000000001;
    sub_267BBD0EC(0, (v14 & 0xC000000000000001) == 0, v14);
    if (v15)
    {
      v16 = MEMORY[0x26D609870](0, v12[90]);
    }

    else
    {
      v16 = *(v12[90] + 32);
    }

    v12[92] = v16;
    v17 = v12[87];
    v18 = v12[59];

    sub_267DC7DC4();
    __swift_project_boxed_opaque_existential_0((v18 + v17), *(v18 + v17 + 24));
    v19 = swift_task_alloc();
    v12[93] = v19;
    *v19 = v12;
    v19[1] = sub_267DC4A88;
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_40();

    return sub_267D526D0();
  }

  else
  {

    v22 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v24);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_26();
    }

    v30 = v12[75];
    v31 = v12[73];
    v32 = v12[68];
    v33 = v12[59];

    *v31 = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66_3(v33 + v30, (v12 + 28));
    sub_267DC8AC4(v31, v33 + v30);
    swift_endAccess();
    sub_267EF4018();
    sub_267B9F98C(v32, &qword_280229920, &unk_267F0ABD0);
    OUTLINED_FUNCTION_0_49();
    v43 = v34;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_40();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, v43, a10, a11, a12);
  }
}

uint64_t sub_267DC48B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v17 = *(v13 + 728);
  v18 = v17;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v19);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v20, v21, "#SendTapbackFlow failed to submit RemoveTapbackIntent error is: %@");
    sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_65_9();
  *v15 = v17;
  OUTLINED_FUNCTION_61_4();
  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3(v12 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, v13 + 128);
  v23 = v17;
  sub_267BF3128(v15, v12 + v22, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_78_13();
  OUTLINED_FUNCTION_66_3(v12 + v16, v13 + 152);
  sub_267DC8AC4(v14, v12 + v16);
  swift_endAccess();
  sub_267EF4018();

  sub_267B9F98C(a9, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_0_49();
  v34 = v24;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

uint64_t sub_267DC4A88()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC4B80()
{
  v1 = v0[69];
  v2 = v0[59];
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
  OUTLINED_FUNCTION_66_3(v3 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback, (v0 + 22));
  sub_267BF3128(v1, v3 + v8, &qword_280229920, &unk_267F0ABD0);
  swift_endAccess();
  type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
  OUTLINED_FUNCTION_110_0();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3(v2 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, (v0 + 25));
  v9 = OUTLINED_FUNCTION_90_9();
  sub_267BF3128(v9, v10, v11, v12);
  swift_endAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[95] = v13;
  *v13 = v14;
  v13[1] = sub_267DC4CD0;

  return sub_267DC6178();
}

uint64_t sub_267DC4CD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DC4DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 544);

  sub_267B9F98C(v13, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_0_49();
  v24 = v14;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_267DC4E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  v17 = *(v13 + 752);
  v18 = v17;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v19);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v20, v21, "#SendTapbackFlow failed to submit RemoveTapbackIntent error is: %@");
    sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_65_9();
  *v15 = v17;
  OUTLINED_FUNCTION_61_4();
  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  OUTLINED_FUNCTION_66_3(v12 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, v13 + 128);
  v23 = v17;
  sub_267BF3128(v15, v12 + v22, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_78_13();
  OUTLINED_FUNCTION_66_3(v12 + v16, v13 + 152);
  sub_267DC8AC4(v14, v12 + v16);
  swift_endAccess();
  sub_267EF4018();

  sub_267B9F98C(a9, &qword_280229920, &unk_267F0ABD0);
  OUTLINED_FUNCTION_0_49();
  v34 = v24;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

uint64_t sub_267DC506C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DC5150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_0_49();
  v22 = v12;

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_267DC5204()
{
  v1 = sub_267EF8198();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 16))(v6 - v5, v0, v1);
  v7 = OUTLINED_FUNCTION_66();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D5D3C8])
  {
    return 0;
  }

  if (v9 == *MEMORY[0x277D5D3D0])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x277D5D3A8])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x277D5D3C0])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x277D5D3B0])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x277D5D3B8])
  {
    return 5;
  }

  v11 = OUTLINED_FUNCTION_66();
  v12(v11);
  return 6;
}

void sub_267DC538C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  type metadata accessor for SendTapbackFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v13 = v4 - v3;
  v5 = v0[10];
  v6 = v1[9];
  type metadata accessor for PromptForTapbackFlowStrategy();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v9 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v9);
  v10 = *(v8 + 40);

  v10(v14, v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFA8, &qword_267F09138);
  swift_allocObject();
  sub_267DC89C4(&qword_28022BFB0, type metadata accessor for PromptForTapbackFlowStrategy);
  v11 = sub_267EF3068();
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_66_3(v1 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, v14);
  sub_267DC8AC4(v13, v1 + v12);
  swift_endAccess();
  v14[0] = v11;
  sub_267BC7A94(&qword_28022BFB8, &qword_28022BFA8, &qword_267F09138);

  sub_267EF3FA8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DC55B0(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  MEMORY[0x28223BE20](v89);
  v90 = &v84 - v3;
  v93 = type metadata accessor for SendTapbackFlow.State(0);
  MEMORY[0x28223BE20](v93);
  v94 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v84 - v6;
  v7 = sub_267EF8198();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x28223BE20](v7);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TapbackAction(0);
  v9 = MEMORY[0x28223BE20](v91);
  v92 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v84 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v84 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFC0, &unk_267F09140);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = (&v84 - v24);
  v26 = *(v20 + 16);
  v26(&v84 - v24, a1, v19);
  v27 = (*(v20 + 88))(v25, v19);
  if (v27 == *MEMORY[0x277D5BC38])
  {
    (*(v20 + 96))(v25, v19);
    sub_267DC8B50(v25, v18);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v28 = sub_267EF8A08();
    __swift_project_value_buffer(v28, qword_280240FB0);
    sub_267DC8BB4(v18, v16, type metadata accessor for TapbackAction);
    v29 = sub_267EF89F8();
    v30 = sub_267EF95D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v96[0] = v32;
      *v31 = 136315138;
      sub_267DC8BB4(v16, v13, type metadata accessor for TapbackAction);
      v33 = sub_267EF9098();
      v35 = v34;
      sub_267DC8C10(v16, type metadata accessor for TapbackAction);
      v36 = sub_267BA33E8(v33, v35, v96);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_267B93000, v29, v30, "#SendTapbackFlow .answered: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x26D60A7B0](v32, -1, -1);
      MEMORY[0x26D60A7B0](v31, -1, -1);
    }

    else
    {

      sub_267DC8C10(v16, type metadata accessor for TapbackAction);
    }

    v46 = v92;
    sub_267DC8B50(v18, v92);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v60 = v95;
        v61 = *(v95 + 72);
        v62 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
        swift_beginAccess();
        v63 = v61 + v62;
        v64 = v94;
        sub_267C6AD4C(v63, v94, &qword_280229920, &unk_267F0ABD0);
        swift_storeEnumTagMultiPayload();
        v65 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
        swift_beginAccess();
        sub_267DC8AC4(v64, v60 + v65);
        return swift_endAccess();
      }

      v48 = v90;
      sub_267BBE184(v46, v90, &qword_280229970, &unk_267F0E300);
      type metadata accessor for SendTapbackFlow.SendTapbackStatus(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v49 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
      v50 = v95;
      swift_beginAccess();
      sub_267BF3128(v48, v50 + v49, &qword_280229958, &unk_267F09110);
      swift_endAccess();
      v51 = v94;
      swift_storeEnumTagMultiPayload();
      v52 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
LABEL_36:
      swift_beginAccess();
      sub_267DC8AC4(v51, v50 + v52);
      return swift_endAccess();
    }

    v58 = v88;
    sub_267BBE184(v46, v88, &qword_280229920, &unk_267F0ABD0);
    v59 = v87;
    if (__swift_getEnumTagSinglePayload(v58, 1, v87) == 1)
    {
      sub_267B9F98C(v58, &qword_280229920, &unk_267F0ABD0);
      v51 = v94;
    }

    else
    {
      v78 = v85;
      v79 = *(v86 + 32);
      v79(v85, v58, v59);
      v51 = v94;
      v79(v94, v78, v59);
    }

LABEL_35:
    swift_storeEnumTagMultiPayload();
    v52 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
    v50 = v95;
    goto LABEL_36;
  }

  if (v27 == *MEMORY[0x277D5BC30])
  {
    (*(v20 + 96))(v25, v19);
    v37 = *v25;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v38 = sub_267EF8A08();
    __swift_project_value_buffer(v38, qword_280240FB0);
    v39 = v37;
    v40 = sub_267EF89F8();
    v41 = sub_267EF95E8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v37;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_267B93000, v40, v41, "SendTapbackFlow received error exitValue from PromptForTapbackFlowStrategy: %@", v42, 0xCu);
      sub_267B9F98C(v43, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v43, -1, -1);
      MEMORY[0x26D60A7B0](v42, -1, -1);
    }

    else
    {
    }

    v51 = v94;
    *v94 = 3;
    goto LABEL_35;
  }

  if (v27 == *MEMORY[0x277D5BC40] || v27 == *MEMORY[0x277D5BC28])
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v54 = sub_267EF8A08();
    __swift_project_value_buffer(v54, qword_280240FB0);
    v55 = sub_267EF89F8();
    v56 = sub_267EF95D8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_267B93000, v55, v56, "#SendTapbackFlow received .cancelled .unanswered exitValue", v57, 2u);
      MEMORY[0x26D60A7B0](v57, -1, -1);
    }

    v51 = v94;
    goto LABEL_35;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v66 = sub_267EF8A08();
  __swift_project_value_buffer(v66, qword_280240FB0);
  v26(v23, a1, v19);
  v67 = sub_267EF89F8();
  v68 = sub_267EF95E8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v91 = v69;
    v92 = swift_slowAlloc();
    v96[0] = v92;
    *v69 = 136315138;
    sub_267BC7A94(&qword_28022BFC8, &qword_28022BFC0, &unk_267F09140);
    v70 = sub_267EF9E58();
    v72 = v71;
    v73 = *(v20 + 8);
    v73(v23, v19);
    v74 = sub_267BA33E8(v70, v72, v96);

    v75 = v91;
    *(v91 + 4) = v74;
    v76 = v75;
    _os_log_impl(&dword_267B93000, v67, v68, "SendTapbackFlow received unsupported exitValue from PromptForTapbackFlowStrategy result is: %s", v75, 0xCu);
    v77 = v92;
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x26D60A7B0](v77, -1, -1);
    MEMORY[0x26D60A7B0](v76, -1, -1);
  }

  else
  {

    v73 = *(v20 + 8);
    v73(v23, v19);
  }

  v81 = v94;
  *v94 = 3;
  swift_storeEnumTagMultiPayload();
  v82 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  v83 = v95;
  swift_beginAccess();
  sub_267DC8AC4(v81, v83 + v82);
  swift_endAccess();
  return (v73)(v25, v19);
}

uint64_t sub_267DC6178()
{
  OUTLINED_FUNCTION_12();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = type metadata accessor for SendTapbackFlow.State(0);
  v1[21] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[22] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DC61F8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 192) = v10;
  *v10 = v11;
  v10[1] = sub_267DC631C;

  return sub_267E45A0C();
}

uint64_t sub_267DC631C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC6414()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_27_11((*(v0 + 160) + 16));
  v1 = OUTLINED_FUNCTION_38_0();
  v2(v1);
  OUTLINED_FUNCTION_77();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 208) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_24(v3);

  return MEMORY[0x2821BB5D0](v5, v6, v7);
}

uint64_t sub_267DC64D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC65C8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3(v1 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, (v0 + 15));
  v2 = OUTLINED_FUNCTION_90_9();
  sub_267DC8AC4(v2, v3);
  swift_endAccess();
  sub_267EF3FB8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DC6680()
{
  v1 = v0[25];
  v2 = v1;
  v3 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v5);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v6, v7, "#SendTapbackFlow caught error publishing tapback removed output: %@");
    sub_267B9F98C(v4, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v8 = v0[22];
  v9 = v0[20];

  *v8 = 4;
  OUTLINED_FUNCTION_37_1();
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_66_3(v9 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, (v0 + 12));
  sub_267DC8AC4(v8, v9 + v10);
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267DC67CC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[27];
  v2 = v1;
  v3 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v5);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v6, v7, "#SendTapbackFlow caught error publishing tapback removed output: %@");
    sub_267B9F98C(v4, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v8 = v0[22];
  v9 = v0[20];

  *v8 = 4;
  OUTLINED_FUNCTION_37_1();
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state;
  OUTLINED_FUNCTION_66_3(v9 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, (v0 + 12));
  sub_267DC8AC4(v8, v9 + v10);
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267DC6928()
{
  OUTLINED_FUNCTION_12();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v1[24] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[25] = OUTLINED_FUNCTION_2();
  v5 = type metadata accessor for SendTapbackFlow.State(0);
  v1[26] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[27] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267DC69D8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v0[28] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = v0[23];

  [*(v10 + 56) messageType];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v11;
  *v11 = v12;
  v11[1] = sub_267DC6B1C;

  return sub_267E4487C();
}

uint64_t sub_267DC6B1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC6C14()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_27_11((*(v0 + 184) + 16));
  v1 = OUTLINED_FUNCTION_38_0();
  v2(v1);
  OUTLINED_FUNCTION_77();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 248) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_24(v3);

  return MEMORY[0x2821BB5D0](v5, v6, v7);
}

uint64_t sub_267DC6CD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC6DC8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[23];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3(v1 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, (v0 + 18));
  v2 = OUTLINED_FUNCTION_90_9();
  sub_267DC8AC4(v2, v3);
  swift_endAccess();
  sub_267EF3FB8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DC6E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 240);
  v12 = v11;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v13 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v14);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v15, v16, "#SendTapbackFlow caught error publishing confirmation output: %@");
    sub_267B9F98C(v13, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_95_9();
  v17 = sub_267C6AA68();
  v18 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v17);
  OUTLINED_FUNCTION_18_27(v18, v19);
  v20 = OUTLINED_FUNCTION_42_18();
  OUTLINED_FUNCTION_101_7(v20, v21, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_100_7();
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267DC6FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0(v10 + 2);
  __swift_destroy_boxed_opaque_existential_0(v10 + 7);
  v11 = v10[32];
  v12 = v11;
  sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v13 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v14);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v15, v16, "#SendTapbackFlow caught error publishing confirmation output: %@");
    sub_267B9F98C(v13, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_95_9();
  v17 = sub_267C6AA68();
  v18 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v17);
  OUTLINED_FUNCTION_18_27(v18, v19);
  v20 = OUTLINED_FUNCTION_42_18();
  OUTLINED_FUNCTION_101_7(v20, v21, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_100_7();
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267DC7164()
{
  OUTLINED_FUNCTION_12();
  v1[21] = v2;
  v1[22] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229958, &unk_267F09110);
  v1[23] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[24] = OUTLINED_FUNCTION_2();
  v4 = type metadata accessor for SendTapbackFlow.State(0);
  v1[25] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[26] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DC7210()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  *(v0 + 216) = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 224) = v10;
  *v10 = v11;
  v10[1] = sub_267DC7330;

  return sub_267E464F0();
}

uint64_t sub_267DC7330()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC7428()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_27_11((*(v0 + 176) + 16));
  v1 = OUTLINED_FUNCTION_38_0();
  v2(v1);
  OUTLINED_FUNCTION_77();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 240) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_24(v3);

  return MEMORY[0x2821BB5D0](v5, v6, v7);
}

uint64_t sub_267DC74E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DC75DC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[22];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3(v1 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_state, (v0 + 18));
  v2 = OUTLINED_FUNCTION_90_9();
  sub_267DC8AC4(v2, v3);
  swift_endAccess();
  sub_267EF3FB8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267DC769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 232);
  v12 = v11;
  v13 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v15);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v16, v17, "#SendTapbackFlow caught error publishing empty output: %@");
    sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v18 = sub_267C6AA68();
  v19 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v18);
  OUTLINED_FUNCTION_18_27(v19, v20);
  v21 = OUTLINED_FUNCTION_42_18();
  OUTLINED_FUNCTION_101_7(v21, v22, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_100_7();
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_267DC780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0(v10 + 2);
  __swift_destroy_boxed_opaque_existential_0(v10 + 7);
  v11 = v10[31];
  v12 = v11;
  v13 = sub_267EF89F8();
  sub_267EF95E8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v15);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v16, v17, "#SendTapbackFlow caught error publishing empty output: %@");
    sub_267B9F98C(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  v18 = sub_267C6AA68();
  v19 = OUTLINED_FUNCTION_61_1(&type metadata for SendTapbackFlowError, v18);
  OUTLINED_FUNCTION_18_27(v19, v20);
  v21 = OUTLINED_FUNCTION_42_18();
  OUTLINED_FUNCTION_101_7(v21, v22, &qword_280229958, &unk_267F09110);
  swift_endAccess();
  OUTLINED_FUNCTION_34_18();
  OUTLINED_FUNCTION_43_19();
  OUTLINED_FUNCTION_100_7();
  swift_endAccess();
  sub_267EF4018();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

void sub_267DC798C()
{
  OUTLINED_FUNCTION_48_0();
  v45 = v1;
  v2 = sub_267EF8198();
  OUTLINED_FUNCTION_58();
  v46 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v41 = v6 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BF88, &qword_267F09120);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6();
  v42 = v12;
  OUTLINED_FUNCTION_115();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v47 = v0;
  v19 = *(v0 + 72);
  v20 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext;

  sub_267C39624();

  v43 = v20;
  LOBYTE(v20) = *(v19 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap);

  sub_267C39770(v20);

  v21 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback;
  OUTLINED_FUNCTION_83(v19 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_selectedTapback, &v48);
  sub_267C6AD4C(v19 + v21, v18, &qword_280229920, &unk_267F0ABD0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v2);
  sub_267B9F98C(v18, &qword_280229920, &unk_267F0ABD0);
  if (EnumTagSinglePayload != 1)
  {
    v23 = v46;
    (*(v46 + 16))(v16, v45, v2);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v2);
    v24 = *(v44 + 48);
    OUTLINED_FUNCTION_41_15();
    sub_267C6AD4C(v25, v26, v27, v28);
    OUTLINED_FUNCTION_41_15();
    sub_267C6AD4C(v29, v30, v31, v32);
    OUTLINED_FUNCTION_110(v9);
    if (v34)
    {
      sub_267B9F98C(v16, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_110(&v9[v24]);
      if (v34)
      {
        sub_267B9F98C(v9, &qword_280229920, &unk_267F0ABD0);
        goto LABEL_12;
      }
    }

    else
    {
      v33 = v42;
      sub_267C6AD4C(v9, v42, &qword_280229920, &unk_267F0ABD0);
      OUTLINED_FUNCTION_110(&v9[v24]);
      if (!v34)
      {
        v35 = &v9[v24];
        v36 = v41;
        (*(v23 + 32))(v41, v35, v2);
        OUTLINED_FUNCTION_39_15();
        sub_267DC89C4(v37, v38);
        v39 = sub_267EF8FE8();
        v40 = *(v23 + 8);
        v40(v36, v2);
        sub_267B9F98C(v16, &qword_280229920, &unk_267F0ABD0);
        v40(v33, v2);
        sub_267B9F98C(v9, &qword_280229920, &unk_267F0ABD0);
        if (v39)
        {
          goto LABEL_12;
        }

LABEL_11:

        sub_267C3964C();

        goto LABEL_12;
      }

      sub_267B9F98C(v16, &qword_280229920, &unk_267F0ABD0);
      (*(v23 + 8))(v33, v2);
    }

    sub_267B9F98C(v9, &qword_28022BF88, &qword_267F09120);
    goto LABEL_11;
  }

LABEL_12:
  sub_267DC7E4C(3);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DC7DC4()
{
  v1 = *(v0 + 72);

  sub_267C39638();

  LOBYTE(v1) = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap);

  sub_267C39770(v1);

  return sub_267DC7E4C(3);
}

uint64_t sub_267DC7E4C(uint64_t a1)
{
  sub_267EF3838();
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_267EF3B18();

  sub_267EF3B08();
  sub_267EF3848();

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

void sub_267DC7F2C(uint64_t a1, uint64_t a2)
{
  sub_267EF7C38();
  sub_267EF7C08();
  sub_267EF3AD8();
  v3 = sub_267DC8A10(*(*(*(a2 + 72) + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_sendMessageLoggingContext) + 16));
  if (v4 >> 60 == 15)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    oslog = sub_267EF89F8();
    v6 = sub_267EF95E8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_267B93000, oslog, v6, "#SendTapbackFlow failed to get jsonData from FLOWDomainContext", v7, 2u);
      MEMORY[0x26D60A7B0](v7, -1, -1);
    }
  }

  else
  {
    v8 = v3;
    v9 = v4;
    sub_267DC8A80();
    sub_267CAB9F0(v8, v9);
    sub_267DC80DC(v8, v9);
    sub_267EF3AB8();

    sub_267BBE0C8(v8, v9);
  }
}

id sub_267DC80DC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_267EF2BB8();
  v6 = [v4 initWithJSON_];

  sub_267BBE0DC(a1, a2);
  return v6;
}

uint64_t sub_267DC8154()
{
  type metadata accessor for SendTapbackFlow(0);
  sub_267DC89C4(&qword_280229960, type metadata accessor for SendTapbackFlow);
  OUTLINED_FUNCTION_3();
  return sub_267EF3708();
}

uint64_t sub_267DC81E0()
{

  OUTLINED_FUNCTION_9_38();
  sub_267DC8C10(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender));
  return sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, &qword_280229958, &unk_267F09110);
}

uint64_t sub_267DC8250()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_9_38();
  sub_267DC8C10(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_tapbackSender));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue, &qword_280229958, &unk_267F09110);
  return v0;
}

uint64_t sub_267DC82E4(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_267DC8368(uint64_t a1)
{
  type metadata accessor for SendTapbackFlow.State(319);
  if (v1 <= 0x3F)
  {
    sub_267DC8480(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_267DC8480(uint64_t a1)
{
  if (!qword_28022BF40)
  {
    type metadata accessor for SendTapbackFlow.SendTapbackStatus(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022A2D0, &unk_267EFCDB0);
    v1 = sub_267EFA038();
    if (!v2)
    {
      atomic_store(v1, &qword_28022BF40);
    }
  }
}

void sub_267DC851C(uint64_t a1)
{
  sub_267EF8198();
  if (v1 <= 0x3F)
  {
    sub_267DC85AC(319, &qword_28022BF58, MEMORY[0x277D5C118]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267DC85AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_110_0();
    v4 = sub_267EF9888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_267DC85FC(uint64_t a1)
{
  sub_267DC8690();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_267DC86F4();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_267DC8690()
{
  if (!qword_28022BF70)
  {
    sub_267DC85AC(0, &qword_28022BF18, MEMORY[0x277D5D3D8]);
    if (!v1)
    {
      atomic_store(v0, &qword_28022BF70);
    }
  }
}

void sub_267DC86F4()
{
  if (!qword_28022BF78)
  {
    v0 = sub_267EF8198();
    if (!v1)
    {
      atomic_store(v0, &qword_28022BF78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SendTapbackFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267DC881C()
{
  result = qword_28022BF80;
  if (!qword_28022BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BF80);
  }

  return result;
}

uint64_t sub_267DC88BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267DC2A58();
}

uint64_t sub_267DC8958@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow15SendTapbackFlow_exitValue;
  swift_beginAccess();
  return sub_267C6AD4C(v3 + v4, a1, &qword_280229958, &unk_267F09110);
}

uint64_t sub_267DC89C4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_110_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267DC8A10(void *a1)
{
  v2 = [a1 jsonData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF2BE8();

  return v3;
}

unint64_t sub_267DC8A80()
{
  result = qword_28022BFA0;
  if (!qword_28022BFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022BFA0);
  }

  return result;
}

uint64_t sub_267DC8AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendTapbackFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DC8B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapbackAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267DC8BB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  v4 = OUTLINED_FUNCTION_61_0();
  v5(v4);
  return a2;
}

uint64_t sub_267DC8C10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_267DC8C68(uint64_t a1)
{
  sub_267DC85AC(319, &qword_28022BF18, MEMORY[0x277D5D3D8]);
  if (v1 <= 0x3F)
  {
    sub_267DC85AC(319, &qword_28022BF58, MEMORY[0x277D5C118]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_267DC8D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  v115 = v114 - v6;
  OUTLINED_FUNCTION_26_2();
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v120 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v118 = v9;
  MEMORY[0x28223BE20](v10);
  v119 = v114 - v11;
  OUTLINED_FUNCTION_26_2();
  v116 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v127 = v16 - v15;
  OUTLINED_FUNCTION_26_2();
  sub_267EF7008();
  OUTLINED_FUNCTION_58();
  v124 = v18;
  v125 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6();
  v123 = v19;
  MEMORY[0x28223BE20](v20);
  v122 = v114 - v21;
  OUTLINED_FUNCTION_26_2();
  v22 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_0();
  v28 = v27 - v26;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v29 = sub_267EF8A08();
  v30 = __swift_project_value_buffer(v29, qword_280240FB0);
  (*(v24 + 16))(v28, a1, v22);
  v121 = v30;
  v31 = sub_267EF89F8();
  v32 = sub_267EF95C8();
  v33 = os_log_type_enabled(v31, v32);
  v117 = v13;
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_48();
    v114[1] = a2;
    v35 = v34;
    v114[0] = OUTLINED_FUNCTION_52();
    v130[0] = v114[0];
    *v35 = 136315138;
    sub_267DCE67C(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v36 = sub_267EF9E58();
    v38 = v37;
    v39 = OUTLINED_FUNCTION_61_4();
    v40(v39);
    v41 = sub_267BA33E8(v36, v38, v130);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_267B93000, v31, v32, "#EditMessageNeedsValueFlowStrategy received input: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v114[0]);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v42 = OUTLINED_FUNCTION_61_4();
    v43(v42);
  }

  v44 = v126[6];
  __swift_project_boxed_opaque_existential_0(v126 + 2, v126[5]);
  v45 = OUTLINED_FUNCTION_43();
  v46(v45, v44);
  __swift_project_boxed_opaque_existential_0(v130, v130[3]);
  v47 = v122;
  OUTLINED_FUNCTION_43();
  sub_267EF3B78();
  v49 = v123;
  v48 = v124;
  v50 = v125;
  (*(v124 + 104))(v123, *MEMORY[0x277D61C58], v125);
  v51 = sub_267C28F38(v47, v49);
  v52 = *(v48 + 8);
  v52(v49, v50);
  v52(v47, v50);
  __swift_destroy_boxed_opaque_existential_0(v130);
  v53 = v127;
  if (v51)
  {
    v54 = sub_267EF89F8();
    v55 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v55))
    {
      v56 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v56);
      v59 = "#EditMessageNeedsValueFlowStrategy tap-to-edit request, ignoring";
LABEL_21:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v57, v58, v59);
      OUTLINED_FUNCTION_26();
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v60 = v119;
  sub_267EF4B88();
  v61 = OUTLINED_FUNCTION_26_0();
  if (v62(v61) == *MEMORY[0x277D5C150])
  {
    v63 = OUTLINED_FUNCTION_26_0();
    v64(v63);
    v65 = v117;
    v66 = v116;
    (*(v117 + 32))(v53, v60, v116);
    v67 = v115;
    sub_267B9CC04(v53, v115);
    v68 = type metadata accessor for DirectInvocationUseCases(0);
    if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
    {
      (*(v65 + 8))(v53, v66);
      sub_267BF9988(v67, &unk_28022BBE0, qword_267EFD030);
    }

    else
    {
      OUTLINED_FUNCTION_54_13();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_267EF8228();
        OUTLINED_FUNCTION_58();
        v92 = OUTLINED_FUNCTION_54_13();
        if (v93(v92) == *MEMORY[0x277D5D4D8])
        {
          v94 = OUTLINED_FUNCTION_54_13();
          v95(v94);
          v96 = sub_267EF89F8();
          v97 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v97))
          {
            v98 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v98);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v99, v100, "#EditMessageNeedsValueFlowStrategy prompt is cancelled by button press");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E48();
          v101 = OUTLINED_FUNCTION_39_16();
          return v102(v101, v116);
        }

        v105 = OUTLINED_FUNCTION_39_16();
        v106(v105, v116);
        v107 = OUTLINED_FUNCTION_54_13();
        v108(v107);
      }

      else
      {
        v103 = OUTLINED_FUNCTION_39_16();
        v104(v103, v66);
        sub_267DCE628(v67, type metadata accessor for DirectInvocationUseCases);
      }
    }
  }

  else
  {
    v69 = OUTLINED_FUNCTION_26_0();
    v70(v69);
  }

  v71 = v118;
  sub_267EF4B88();
  sub_267E57DFC(v71, &v128);
  v72 = OUTLINED_FUNCTION_26_0();
  v73(v72);
  if (!v129)
  {
    sub_267BF9988(&v128, &unk_28022BBF0, &unk_267F01C60);
    v54 = sub_267EF89F8();
    v82 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v82))
    {
      v83 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v83);
      v59 = "#EditMessageNeedsValueFlowStrategy unexpected input, ignoring";
      goto LABEL_21;
    }

LABEL_22:

    return sub_267EF3E68();
  }

  sub_267BE58F4(&v128, v130);
  OUTLINED_FUNCTION_33_0();
  v74 = OUTLINED_FUNCTION_38_0();
  v75(v74);
  OUTLINED_FUNCTION_52_12();
  if (v76)
  {
    v77 = sub_267EF89F8();
    v78 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v78))
    {
      v79 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v79);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v80, v81, "#EditMessageNeedsValueFlowStrategy prompt is cancelled");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
    v85 = OUTLINED_FUNCTION_38_0();
    v87 = v86(v85);
    if (v87 & 1) == 0 || (OUTLINED_FUNCTION_33_0(), v88 = OUTLINED_FUNCTION_38_0(), (v89(v88)) || (OUTLINED_FUNCTION_33_0(), v90 = OUTLINED_FUNCTION_38_0(), (v91(v90)))
    {
      sub_267EF3E58();
    }

    else
    {
      v109 = sub_267EF89F8();
      v110 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v110))
      {
        v111 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v111);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v112, v113, "#EditMessageNeedsValueFlowStrategy unrelated request, ignoring");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v130);
}

uint64_t sub_267DC965C()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v5);
  v1[25] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4C08();
  v1[26] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[27] = v7;
  v1[28] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF44C8();
  v1[29] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[30] = v9;
  v1[31] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267DC977C()
{
  v63 = v0;
  v1 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  sub_267EF4938();
  v2 = sub_267EF44B8();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_63();
  v6(v5);

  sub_267C7C6C0(v2, v4);
  OUTLINED_FUNCTION_52_12();
  if (v7)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_5_50();
  if (v1 == v17 && (v16 & 1) == 0)
  {

    goto LABEL_13;
  }

  v18 = sub_267EF9EA8();

  if ((v18 & 1) == 0)
  {
LABEL_3:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    OUTLINED_FUNCTION_43();

    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_48();
      v12 = OUTLINED_FUNCTION_52();
      v62[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_267BA33E8(v2, v4, v62);
      _os_log_impl(&dword_267B93000, v9, v10, "#EditMessageNeedsValueFlowStrategy asked to parse an unknown slot: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v13 = sub_267C4BE60();
    OUTLINED_FUNCTION_61_1(&type metadata for Errors, v13);
    *v14 = v2;
    goto LABEL_8;
  }

LABEL_13:

  v19 = *(v0 + 224);
  sub_267EF4B88();
  sub_267E57DFC(v19, (v0 + 56));
  v20 = OUTLINED_FUNCTION_26_0();
  v21(v20);
  if (!*(v0 + 80))
  {
    sub_267BF9988(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v47 = sub_267EF8A08();
    __swift_project_value_buffer(v47, qword_280240FB0);
    v48 = sub_267EF89F8();
    v49 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v49))
    {
      v50 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v50);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_26();
    }

    v4 = 0x8000000267F1A040;
    v56 = sub_267C266B0();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v56);
    *v14 = 0xD000000000000018;
LABEL_8:
    v14[1] = v4;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
    goto LABEL_31;
  }

  sub_267BE58F4((v0 + 56), v0 + 16);
  v22 = sub_267EF4918();
  v23 = sub_267EF97C8();

  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v24 = OUTLINED_FUNCTION_38_0();
  v27 = v25(v24);
  if (v26 && (v28 = v26, v29 = *(v0 + 200), __swift_project_boxed_opaque_existential_0((*(v0 + 192) + 16), *(*(v0 + 192) + 40)), v30 = OUTLINED_FUNCTION_20_25(), v31(v30), __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120)), OUTLINED_FUNCTION_20_25(), sub_267EF3B68(), sub_267EF2E38(), OUTLINED_FUNCTION_9(), __swift_storeEnumTagSinglePayload(v32, v33, v34, v35), v27 = sub_267D5EBA4(v29, v27, v28), v37 = v36, , sub_267BF9988(v29, &unk_28022AF10, &unk_267F001E0), __swift_destroy_boxed_opaque_existential_0((v0 + 96)), v37))
  {
    v38 = 0;
    *(v0 + 160) = MEMORY[0x277D837D0];
    *(v0 + 136) = v27;
    *(v0 + 144) = v37;
  }

  else
  {
    v37 = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    v38 = 1;
  }

  sub_267ECE2B8(v0 + 136, 0);
  sub_267BF9988(v0 + 136, &qword_28022AEF0, &qword_267EFCDE0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v39 = sub_267EF8A08();
  __swift_project_value_buffer(v39, qword_280240FB0);
  v40 = v23;
  v41 = sub_267EF89F8();
  v42 = sub_267EF95D8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_48();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v40;
    *v44 = v40;
    v45 = v40;
    _os_log_impl(&dword_267B93000, v41, v42, "#EditMessageNeedsValueFlowStrategy updated intent: %@", v43, 0xCu);
    sub_267BF9988(v44, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (v38)
  {
    v27 = 0;
    v37 = 0;
    v46 = 0;
    v62[2] = 0;
  }

  else
  {
    v46 = MEMORY[0x277D837D0];
  }

  v62[0] = v27;
  v62[1] = v37;
  v62[3] = v46;
  sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
  sub_267EF4388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C038, &unk_267F09310);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();
LABEL_31:

  return v15();
}

uint64_t sub_267DC9DE8()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF44C8();
  v1[13] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DC9EE8()
{
  v44 = v0;
  v4 = v0[14];
  v3 = v0[15];
  OUTLINED_FUNCTION_67_8();
  sub_267EF44B8();
  OUTLINED_FUNCTION_55_13();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_26_0();
  v5(v6);
  sub_267C7C6C0(v3, v1);
  OUTLINED_FUNCTION_52_12();
  if (v7)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_5_50();
  if (v3 != v21 || (v20 & 1) != 0)
  {
    v31 = sub_267EF9EA8();

    if (v31)
    {
      goto LABEL_15;
    }

LABEL_3:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v9 = OUTLINED_FUNCTION_108();
    v10(v9);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();
    if (os_log_type_enabled(v11, v12))
    {
      v5 = v0[15];
      v13 = v0[10];
      v14 = v0[11];
      v15 = OUTLINED_FUNCTION_48();
      v42 = OUTLINED_FUNCTION_52();
      v43 = v42;
      OUTLINED_FUNCTION_65_10(4.8149e-34);
      sub_267EF44B8();
      v16 = OUTLINED_FUNCTION_42_19();
      v5(v16);
      (*(v14 + 8))(v13, v13);
      v17 = sub_267BA33E8(v5, v2, &v43);

      *(v15 + 4) = v17;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v18, v19, "#EditMessageNeedsValueFlowStrategy unknown parameter: %s");
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      v22 = v0[11];

      v15 = v22 + 8;
      v23 = OUTLINED_FUNCTION_108();
      v24(v23);
    }

    v25 = v0[15];
    OUTLINED_FUNCTION_67_8();
    sub_267EF44B8();
    OUTLINED_FUNCTION_55_13();
    v26 = OUTLINED_FUNCTION_26_0();
    v5(v26);
    v27 = sub_267C4BE60();
    OUTLINED_FUNCTION_61_1(&type metadata for Errors, v27);
    *v28 = v25;
    v28[1] = v15;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

LABEL_15:
  __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_featureFlags), *(v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28() & 1) != 0 && (OUTLINED_FUNCTION_4_48(v0[9]), v32 = OUTLINED_FUNCTION_38_0(), v33(v32), OUTLINED_FUNCTION_131(v0 + 2), v34 = sub_267BF30D0(), __swift_destroy_boxed_opaque_existential_0(v0 + 2), (v34))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[16] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_60_0(v35);
    OUTLINED_FUNCTION_89();

    return sub_267DCC0C4();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[17] = v39;
    *v39 = v40;
    OUTLINED_FUNCTION_60_0(v39);
    OUTLINED_FUNCTION_89();

    return sub_267DCA524();
  }
}

uint64_t sub_267DCA2D4()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_267DCA3FC()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_267DCA524()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_267EF48A8();
  v1[15] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v1[18] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DCA5EC()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v15 = *(v0 + 104);

  v10 = type metadata accessor for EditMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  v11 = sub_267EF78E8();
  *(v0 + 40) = v10;
  *(v0 + 48) = &off_2878CF5F0;
  *(v0 + 16) = v11;
  OUTLINED_FUNCTION_62_1((v0 + 16), v10);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *(v12 + 16) = v15;
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_267DCA77C;

  return sub_267C5A0E4();
}

uint64_t sub_267DCA77C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 176) = v6;
  *(v7 + 184) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DCA898()
{
  v29 = v0;
  v1 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = *(v0 + 176);
    v5 = OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_52();
    v28 = v6;
    *v5 = 136315138;
    v7 = [v4 patternId];
    v8 = sub_267EF9028();
    v10 = v9;

    v11 = sub_267BA33E8(v8, v10, &v28);

    *(v5 + 4) = v11;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v17 = *(v0 + 112);
  sub_267EF4198();
  swift_allocObject();
  *(v0 + 192) = sub_267EF4188();
  sub_267DCD5D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  v18 = sub_267EF4908();
  *(v0 + 200) = v18;
  __swift_project_boxed_opaque_existential_0((v17 + 16), *(v17 + 40));
  OUTLINED_FUNCTION_51_13();
  v19 = OUTLINED_FUNCTION_63();
  v20(v19);
  OUTLINED_FUNCTION_62_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_44_0();
  v21 = sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 208) = v22;
  *v22 = v23;
  v22[1] = sub_267DCAB28;
  v24 = *(v0 + 176);
  v25 = *(v0 + 136);
  v26 = *(v0 + 96);

  return sub_267BCF3A4(v26, v24, v25, v18, v21 & 1);
}

uint64_t sub_267DCAABC()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267DCAB28()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = v5[22];
  v7 = v5[17];
  v8 = v5[16];
  v9 = v5[15];
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v3 + 216) = v0;

  (*(v8 + 8))(v7, v9);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267DCACE0()
{
  OUTLINED_FUNCTION_56();
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v2))
  {
    v3 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v3);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_267DCAD9C()
{
  OUTLINED_FUNCTION_12();

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267DCAE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  v3[31] = swift_task_alloc();
  v4 = sub_267EF8488();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v5 = sub_267EF8368();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_267EF8248();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v7 = sub_267EF2E38();
  v3[46] = v7;
  v3[47] = *(v7 - 8);
  v3[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DCB088, 0, 0);
}

uint64_t sub_267DCB088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_47_0();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = v28[30];
  v32 = v28[28];
  sub_267EF7958();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  v28[49] = v33;
  v164 = v33;
  v34 = sub_267EF4908();
  v35 = sub_267E80518(v34);

  *v32 = v35;
  v36 = v31 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sentMessageContext;
  v37 = *(v36 + *(type metadata accessor for TimedSentMessageContext(0) + 28));
  v28[50] = v37;
  type metadata accessor for MessagesGroup(0);
  v38 = v37;
  v39 = sub_267D2F9F8(v38);
  v40 = type metadata accessor for EditMessageAskForPayloadParameters(0);
  v165 = v28;
  v28[51] = v40;
  v41 = *(v40 + 36);

  *(v32 + v41) = v39;
  v42 = sub_267BCEA0C(v38);
  if (!v42)
  {
    goto LABEL_9;
  }

  v43 = sub_267BAF0DC(v42);

  if (v43 != 1)
  {
    goto LABEL_9;
  }

  v44 = sub_267BCEA0C(v38);
  if (!v44)
  {
    goto LABEL_9;
  }

  v45 = v44;
  if (!sub_267BAF0DC(v44))
  {

    goto LABEL_9;
  }

  sub_267BBD0EC(0, (v45 & 0xC000000000000001) == 0, v45);
  if ((v45 & 0xC000000000000001) != 0)
  {
    goto LABEL_54;
  }

  for (i = *(v45 + 32); ; i = MEMORY[0x26D609870](0, v45))
  {
    v47 = v165[48];
    a10 = v165[47];
    a11 = v165[46];
    a12 = i;
    v48 = v165[30];
    a13 = v165[28];

    v50 = v48[5];
    v49 = v48[6];
    __swift_project_boxed_opaque_existential_0(v48 + 2, v50);
    (*(v49 + 8))(v50, v49);
    __swift_project_boxed_opaque_existential_0(v165 + 22, v165[25]);
    sub_267EF3B68();
    v51 = sub_267BC20F4(v47, 0, 0, 0, a12);

    (*(a10 + 8))(v47, a11);
    __swift_destroy_boxed_opaque_existential_0(v165 + 22);
    v52 = *(v40 + 52);

    *(a13 + v52) = v51;
LABEL_9:
    v53 = v165[30];
    v54 = v53[6];
    __swift_project_boxed_opaque_existential_0(v53 + 2, v53[5]);
    v55 = OUTLINED_FUNCTION_57_12();
    v56(v55, v54);
    __swift_project_boxed_opaque_existential_0((v53 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_catProvider), *(v53 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_catProvider + 24));
    sub_267BB4A3C();
    v57 = [v38 speakableGroupName];
    if (v57)
    {
      v58 = v57;
      v59 = [v57 spokenPhrase];
      v60 = sub_267EF9028();
      v62 = v61;
    }

    else
    {
      OUTLINED_FUNCTION_62_1(v165 + 2, v165[5]);
      OUTLINED_FUNCTION_61_4();
      v63 = sub_267EF3C48();
      v64 = sub_267BCEA0C(v38);
      if (v63)
      {
        v65 = sub_267DA2578(v64);
      }

      else
      {
        sub_267DA2180();
      }

      v60 = v65;
      v62 = v66;
    }

    v67 = v165[45];
    v68 = v165[28];
    v165[52] = v62;
    v165[53] = v60;
    __swift_destroy_boxed_opaque_existential_0(v165 + 2);
    sub_267EF90F8();
    v69 = sub_267EF79B8();
    v165[54] = v69;
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
    sub_267BD3DDC(v67, v68 + *(v40 + 32));
    sub_267EF90F8();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v69);
    v76 = v68 + *(v40 + 40);
    v77 = v165;
    sub_267BD3DDC(v67, v76);
    v78 = v53[5];
    v79 = v53[6];
    __swift_project_boxed_opaque_existential_0(v53 + 2, v78);
    OUTLINED_FUNCTION_51_13();
    v80(v78, v79);
    v81 = v165[11];
    OUTLINED_FUNCTION_62_1(v77 + 7, v77[10]);
    LOBYTE(v69) = sub_267EF3C48();
    __swift_destroy_boxed_opaque_existential_0(v165 + 7);
    if ((v69 & 1) == 0)
    {

      goto LABEL_28;
    }

    v82 = sub_267EF4908();
    v83 = sub_267BDAF74(v82);
    *(v165 + 456) = v83 & 1;

    v84 = sub_267BCEA0C(v38);
    v38 = MEMORY[0x277D84F90];
    if (!v84)
    {
      break;
    }

    v40 = v84;
    v85 = sub_267BAF0DC(v84);
    if (!v85)
    {
      goto LABEL_35;
    }

    v86 = v85;
    LODWORD(v164) = v83;
    a16 = v38;
    v45 = &a16;
    sub_267BE8B74(0, v85 & ~(v85 >> 63), 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v81 = 0;
      v38 = a16;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v87 = MEMORY[0x26D609870](v81, v40);
        }

        else
        {
          v87 = *(v40 + 8 * v81 + 32);
        }

        v88 = v87;
        v89 = sub_267BBD380(v87);
        v91 = v90;

        a16 = v38;
        v93 = v38[2];
        v92 = v38[3];
        if (v93 >= v92 >> 1)
        {
          sub_267BE8B74((v92 > 1), v93 + 1, 1);
          v38 = a16;
        }

        ++v81;
        v38[2] = v93 + 1;
        v94 = &v38[2 * v93];
        v94[4] = v89;
        v94[5] = v91;
      }

      while (v86 != v81);
LABEL_35:

      v77 = v165;
      break;
    }

    __break(1u);
LABEL_54:
    ;
  }

  v77[55] = v38;
  if (v83)
  {
    v104 = swift_task_alloc();
    v77[56] = v104;
    *v104 = v77;
    v104[1] = sub_267DCBB34;
    OUTLINED_FUNCTION_46_0();

    return v107(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, v164, sub_267C8F96C, a16, a17, a18, a19, a20);
  }

  v164 = v77[44];
  sub_267EF4908();
  sub_267EF7C18();
  OUTLINED_FUNCTION_312();

  v114 = 0xE000000000000000;
  if (v81)
  {
    v114 = v81;
  }

  a9 = v114;
  OUTLINED_FUNCTION_44_0();
  sub_267EF8238();
  sub_267EF8348();
  v123 = v77[54];
  v124 = v165[51];
  v125 = v165[44];
  v126 = v165[28];
  (*(v165[39] + 8))(v165[40], v165[38]);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v123);
  v130 = *(v124 + 28);
  v77 = v165;
  sub_267BD3DDC(v125, v126 + v130);
LABEL_28:
  OUTLINED_FUNCTION_4_48(v77[30]);
  v95 = OUTLINED_FUNCTION_38_0();
  v96(v95);
  __swift_project_boxed_opaque_existential_0(v77 + 12, v77[15]);
  OUTLINED_FUNCTION_38_0();
  v97 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v77 + 12);
  if ((v97 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_48(v77[30]);
    v98 = OUTLINED_FUNCTION_38_0();
    v99(v98);
    v100 = v77[21];
    __swift_project_boxed_opaque_existential_0(v77 + 17, v77[20]);
    OUTLINED_FUNCTION_38_0();
    v101 = sub_267EF3C28();
    __swift_destroy_boxed_opaque_existential_0(v77 + 17);
    if ((v101 & 1) == 0)
    {
      v102 = OUTLINED_FUNCTION_69_8();
      if (!v103)
      {
        v102 = 0;
        v103 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_48_20(v102, v103);
      OUTLINED_FUNCTION_68_9();
      if (v100)
      {
        v164 = v100;
        (*(v77[36] + 8))(v77[37], v77[35]);
        OUTLINED_FUNCTION_35_19();

        OUTLINED_FUNCTION_17();
        goto LABEL_43;
      }

      v131 = v77[54];
      v132 = v165[51];
      v133 = v165[50];
      v134 = v165[43];
      v135 = v165[28];
      (*(v165[36] + 8))(v165[37], v165[35]);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v136, v137, v138, v131);
      sub_267BD3DDC(v134, v135 + *(v132 + 44));
      sub_267EF4908();
      v139 = sub_267EF7C18();
      OUTLINED_FUNCTION_312();

      if (v134)
      {
        v140 = v139;
      }

      else
      {
        v140 = 0;
      }

      if (v134)
      {
        v141 = v134;
      }

      else
      {
        v141 = 0xE000000000000000;
      }

      v142 = sub_267DA133C(v133, v140, v141);

      v165[27] = v142;
      sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
      sub_267EF8348();
      v164 = 0;
      v143 = v165[54];
      v144 = v165[51];
      OUTLINED_FUNCTION_49_16();
      a12 = v145;
      a13 = v146;
      v147 = v165[28];

      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v143);
      sub_267BD3DDC(v135, v147 + *(v144 + 48));
      v151 = sub_267EF4908();
      sub_267BE84FC(v151);

      v152 = sub_267EF70D8();
      OUTLINED_FUNCTION_79_5(v134, v153, v154, v152);
      OUTLINED_FUNCTION_22_0();
      sub_267EF8478();
      sub_267EF8348();
      v155 = v165[54];
      v156 = v165[51];
      v157 = v165[41];
      v158 = OUTLINED_FUNCTION_58_9();
      v159 = v165[28];
      (*(v160 + 8))(v158);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v161, v162, v163, v155);
      sub_267BD3DDC(v157, v159 + *(v156 + 24));
    }
  }

  OUTLINED_FUNCTION_36_18();

  OUTLINED_FUNCTION_17();
LABEL_43:
  OUTLINED_FUNCTION_46_0();

  return v116(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, a11, a12, a13, v164, v165, a16, a17, a18, a19, a20);
}
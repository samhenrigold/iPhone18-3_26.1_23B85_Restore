unint64_t sub_267C36828()
{
  result = qword_280229500;
  if (!qword_280229500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229500);
  }

  return result;
}

uint64_t sub_267C36888(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_267C3788C(1, 0, v2);
  if (v4 != result)
  {
    if (v4 < result)
    {
      __break(1u);
    }

    else
    {
      v5 = v4 - result;
      if (v4 > result)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < v2)
          {
            if (v4 - 1 < v2)
            {
              if (result + 1 < v2)
              {
                if (v4 < v2)
                {
                  v6 = a1 + 16 * result + 56;
                  do
                  {
                    swift_getObjectType();
                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    sub_267EF3DB8();
                    result = swift_unknownObjectRelease();
                    v6 += 16;
                    --v5;
                  }

                  while (v5);
                  return result;
                }

LABEL_18:
                __break(1u);
                return result;
              }

LABEL_17:
              __break(1u);
              goto LABEL_18;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_267C3698C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);
    swift_unknownObjectRetain();
    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = sub_267EF9EB8();
      v11 = sub_267BA33E8(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_267B93000, v5, v6, "%s was interrupted, returning nil for nextAction", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    (*(a2 + 24))(0, a1, a2);
    return 0;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3();
    return v14(v13);
  }
}

uint64_t sub_267C36B50()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 480) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C36C48()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[49];
  v2 = v0[48];
  sub_267C7B358();

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v3 = *(v1 + 96);
  v0[61] = v3;
  v0[62] = (v1 + 96) & 0xFFFFFFFFFFFFLL | 0x66E5000000000000;
  v3(v2, v1);
  v4 = v0[29];
  v5 = v0[30];
  __swift_project_boxed_opaque_existential_0(v0 + 26, v4);
  (*(v5 + 24))(v4, v5);
  v7 = v0[34];
  v6 = v0[35];
  __swift_project_boxed_opaque_existential_0(v0 + 31, v7);
  v8 = v0[7];
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_14_10(v9);

  return MEMORY[0x2821BB688](v8, v7, v6);
}

uint64_t sub_267C36D84()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C36E7C()
{
  v17 = v0;
  sub_267C7B344();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v2 = *(v0 + 480);
  OUTLINED_FUNCTION_21_3();
  v3 = v2;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_55_0();
    v16 = v6;
    OUTLINED_FUNCTION_20_1(4.8151e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v7 = sub_267EF9098();
    sub_267BA33E8(v7, v8, &v16);

    v9 = OUTLINED_FUNCTION_10_10();
    sub_267C37B60(v0 + 72);
    *(v1 + 14) = v9;
    OUTLINED_FUNCTION_11_8(&dword_267B93000, v10, v11, "#ReadAction failed to submit serial command(s) with error: %s. Skipping %ld sync command(s) and marking as interrupted");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    sub_267C37B60(v0 + 72);
  }

  v12 = OUTLINED_FUNCTION_1_18();
  v13(v12);

  OUTLINED_FUNCTION_25_7();

  OUTLINED_FUNCTION_1();

  return v14();
}

uint64_t sub_267C3700C()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[61];
  v2 = v0[49];
  v3 = v0[48];
  __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  v1(v3, v2);
  v4 = v0[39];
  v5 = v0[40];
  __swift_project_boxed_opaque_existential_0(v0 + 36, v4);
  (*(v5 + 24))(v4, v5);
  __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
  sub_267EF45D8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 41);
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);
  v6 = sub_267EF89F8();
  v7 = sub_267EF95D8();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v8, v9, "#ReadAction reading finished successfully.");
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_2_17();
  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[65] = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_18_6(v11);

  return v14(v12);
}

uint64_t sub_267C37210()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 528) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C37308()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_25_7();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_267C37364()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C373C0()
{
  OUTLINED_FUNCTION_29();
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  v2 = v0[64];
  OUTLINED_FUNCTION_21_3();
  v3 = v2;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_55_0();
    v16 = v6;
    OUTLINED_FUNCTION_20_1(4.8151e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v7 = sub_267EF9098();
    sub_267BA33E8(v7, v8, &v16);

    v9 = OUTLINED_FUNCTION_10_10();
    sub_267C37B60((v0 + 9));
    *(v1 + 14) = v9;
    OUTLINED_FUNCTION_11_8(&dword_267B93000, v10, v11, "#ReadAction failed to submit serial command(s) with error: %s. Skipping %ld sync command(s) and marking as interrupted");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    sub_267C37B60((v0 + 9));
  }

  v12 = OUTLINED_FUNCTION_1_18();
  v13(v12);

  OUTLINED_FUNCTION_25_7();

  OUTLINED_FUNCTION_1();

  return v14();
}

uint64_t sub_267C3753C()
{
  OUTLINED_FUNCTION_29();
  v17 = v0;
  v2 = *(v0 + 528);
  OUTLINED_FUNCTION_21_3();
  v3 = v2;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_55_0();
    v16 = v6;
    OUTLINED_FUNCTION_20_1(4.8151e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v7 = sub_267EF9098();
    sub_267BA33E8(v7, v8, &v16);

    v9 = OUTLINED_FUNCTION_10_10();
    sub_267C37B60(v0 + 72);
    *(v1 + 14) = v9;
    OUTLINED_FUNCTION_11_8(&dword_267B93000, v10, v11, "#ReadAction failed to submit serial command(s) with error: %s. Skipping %ld sync command(s) and marking as interrupted");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    sub_267C37B60(v0 + 72);
  }

  v12 = OUTLINED_FUNCTION_1_18();
  v13(v12);

  OUTLINED_FUNCTION_25_7();

  OUTLINED_FUNCTION_1();

  return v14();
}

uint64_t sub_267C376A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C377A0()
{
  OUTLINED_FUNCTION_12();
  **(v0 + 96) = 0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_267C37808()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C3788C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_267C37B90(a2, v7 & ~(v7 >> 63), a3, a2, a3);
  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = result;
  }

  if (v9 >= a2)
  {
    return a2;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_267C37900()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_10(v1);

  return sub_267C3786C();
}

uint64_t sub_267C379B8()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_10(v1);

  return sub_267C3786C();
}

uint64_t sub_267C37A38()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_10(v1);

  return sub_267C3786C();
}

uint64_t sub_267C37B90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v5 <= 0 && v5 > a2)
    {
      return 0;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && v5 < a2)
  {
    return 0;
  }

  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_19;
  }

  if (result < a4 || result > a5)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_267C37C08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_267C37C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267C37CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267B9AFEC(a3, v18);
  sub_267EF4148();
  __swift_project_boxed_opaque_existential_0(v18, v19);
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v4 = *(a1 + 16);
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_267BC7934(0, v4, 0);
    v5 = a1 + 32;
    do
    {
      sub_267B9AFEC(v5, v18);
      v6 = v19;
      v7 = v20;
      __swift_project_boxed_opaque_existential_0(v18, v19);
      v8 = sub_267EC0994(v6, v7);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(v18);
      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_267BC7934((v11 > 1), v12 + 1, 1);
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  sub_267EF4118();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267EFC020;
  *(v14 + 32) = sub_267BB90E4(2);
  *(v14 + 40) = v15;
  sub_267EF4108();
  sub_267EF4098();

  return sub_267EF4068();
}

void sub_267C37EAC()
{
  v1 = [*(v0 + 16) smsContext];
  if (v1)
  {
    v2 = v1;
    sub_267EF9B68();

    [v2 isGroupMessageCount];
    OUTLINED_FUNCTION_33();
    v3 = sub_267EF9E58();
    MEMORY[0x26D608E60](v3);

    MEMORY[0x26D608E60](0xD000000000000017, 0x8000000267F12950);

    sub_267EF9B68();

    OUTLINED_FUNCTION_33();
    v4 = sub_267EF9E58();
    MEMORY[0x26D608E60](v4);

    MEMORY[0x26D608E60](0xD000000000000019, 0x8000000267F12970);
  }

  OUTLINED_FUNCTION_35_4();
}

void sub_267C38060(uint64_t a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (!v3)
  {
    if (qword_280228818 != -1)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v34 = v3;
    v5 = 0;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 40 * v5);
      v8 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_0(v7, v8);
      v10 = (*(v9 + 16))(v8, v9);

      if (v10 >> 62)
      {
        v11 = sub_267EF9A68();
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      if (v11 < 1)
      {
        __break(1u);
LABEL_24:
        OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_17:
        v16 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
        v35 = sub_267EF89F8();
        v17 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_6_6(v17, v18, v19, v20, v21, v22, v23, v24, v32, v35))
        {
          v25 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_7_10(v25);
          OUTLINED_FUNCTION_2_18(&dword_267B93000, v26, v27, "#SMSReadMessageSelfLogger smsContext is not initialized!", v28, v29, v30, v31, v33, v34);
          OUTLINED_FUNCTION_4_4();
        }

LABEL_19:
        v3 = v34;
        break;
      }

      for (i = 0; i != v11; ++i)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = OUTLINED_FUNCTION_12_4();
          v14 = MEMORY[0x26D609870](v13);
        }

        else
        {
          v14 = *(v10 + 8 * i + 32);
        }

        v15 = v14;
        [v34 addIsGroupMessage:sub_267BE8214() & 1];
      }

LABEL_12:
      ++v5;

      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }
  }
}

void sub_267C38238()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77_0();
  v125 = v7;
  OUTLINED_FUNCTION_115();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v116 - v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77_0();
  v124 = v12;
  OUTLINED_FUNCTION_115();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v116 - v15;
  MEMORY[0x28223BE20](v14);
  v123 = v116 - v17;
  v127 = [*(v0 + 16) smsContext];
  if (v127)
  {
    swift_beginAccess();
    if (!*(v3[3] + 2))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v37 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v37, qword_280240FB0);
      v38 = sub_267EF89F8();
      v39 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v39))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v40, v41, v42, v43, v44, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      goto LABEL_95;
    }

    v120 = v1;
    v117 = v0;
    if (qword_280228818 == -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_4:
      v18 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
      v19 = sub_267EF89F8();
      v20 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v20))
      {
        v21 = OUTLINED_FUNCTION_32();
        *v21 = 0;
        _os_log_impl(&dword_267B93000, v19, v20, "#SMSReadMessageSelfLogger addPersonType", v21, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v22 = v3[15];
      if (v22)
      {
        v23 = v22;
        v24 = [v23 spokenPhrases];
        v25 = sub_267EF92F8();

        v26 = *(v25 + 16);

        if (v26)
        {
          [v127 addPersonType:10];
        }
      }

      v119 = v11;
      v0 = v3;
      sub_267DE1640();
      v28 = v27;
      v118 = v16;
      if ((v27 & 0xC000000000000001) != 0)
      {
        v0 = sub_267EF9A28();
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        sub_267C3C528();
        sub_267EF94F8();
        v28 = v130;
        v29 = v131;
        v30 = v132;
        v11 = v133;
        v31 = v134;
      }

      else
      {
        v11 = 0;
        v45 = -1 << *(v27 + 32);
        v29 = v27 + 56;
        v30 = ~v45;
        v46 = -v45;
        v47 = v46 < 64 ? ~(-1 << v46) : -1;
        v31 = v47 & *(v27 + 56);
      }

      v116[1] = v30;
      v16 = ((v30 + 64) >> 6);
      v3 = &selRef_personTypes;
      v122 = v28;
      if (v28 < 0)
      {
        break;
      }

LABEL_28:
      v48 = v11;
      v49 = v31;
      v50 = v11;
      if (v31)
      {
LABEL_32:
        v0 = (v49 - 1) & v49;
        v51 = *(*(v28 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));
        if (v51)
        {
          goto LABEL_36;
        }

LABEL_93:
        sub_267C095D8(v28);

        v113 = *(v117 + 24);
        v114 = __OFADD__(v113, 1);
        v115 = v113 + 1;
        if (!v114)
        {
          *(v117 + 24) = v115;
LABEL_95:
          OUTLINED_FUNCTION_47();
          return;
        }

        __break(1u);
        goto LABEL_99;
      }

      while (1)
      {
        v50 = (v48 + 1);
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v50 >= v16)
        {
          goto LABEL_93;
        }

        v49 = *(v29 + 8 * v50);
        ++v48;
        if (v49)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    while (1)
    {
      v0 = v28 & 0x7FFFFFFFFFFFFFFFLL;
      v52 = sub_267EF9A98();
      if (!v52)
      {
        goto LABEL_93;
      }

      v128 = v52;
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      swift_dynamicCast();
      v51 = v129;
      v50 = v11;
      v0 = v31;
      if (!v129)
      {
        goto LABEL_93;
      }

LABEL_36:
      if (([v51 isMe] & 1) == 0)
      {
        break;
      }

LABEL_85:
      v105 = OUTLINED_FUNCTION_24_2();
      [v105 v106];
LABEL_86:

      v11 = v50;
      v31 = v0;
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }
    }

    v126 = v0;
    sub_267DE9D58();
    if ((v53 & 1) == 0)
    {
LABEL_74:
      v87 = [v51 v3[6]];
      if (v87)
      {

        v88 = OUTLINED_FUNCTION_24_2();
        [v88 v89];
      }

      v90 = [v51 personHandle];
      if (v90)
      {
        v91 = v90;
        v92 = [v90 type];

        if (v92 == 2)
        {
          v93 = OUTLINED_FUNCTION_24_2();
          [v93 v94];
        }
      }

      v95 = [v51 personHandle];
      if (v95)
      {
        v96 = v95;
        v97 = [v95 type];

        if (v97 == 1)
        {
          v98 = OUTLINED_FUNCTION_24_2();
          [v98 v99];
        }
      }

      v100 = [v51 displayName];
      v101 = sub_267EF9028();
      v103 = v102;

      v104 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v104 = v101 & 0xFFFFFFFFFFFFLL;
      }

      v28 = v122;
      v0 = v126;
      if (!v104)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }

    v54 = [v51 nameComponents];
    if (v54)
    {
      v55 = v54;
      v56 = v118;
      sub_267EF2A18();

      v57 = 0;
    }

    else
    {
      v57 = 1;
      v56 = v118;
    }

    v58 = sub_267EF2A58();
    v59 = OUTLINED_FUNCTION_39_2(v56, v57);
    v60 = v123;
    sub_267BBE134(v59, v123, &unk_28022BCA0, &unk_267EFD990);
    v61 = OUTLINED_FUNCTION_13_7();
    if (__swift_getEnumTagSinglePayload(v61, v62, v58))
    {
      sub_267B9F98C(v60, &unk_28022BCA0, &unk_267EFD990);
    }

    else
    {
      v64 = sub_267EF29A8();
      v63 = v65;
      sub_267B9F98C(v60, &unk_28022BCA0, &unk_267EFD990);
      if (v63)
      {
        v121 = v64 & 0xFFFFFFFFFFFFLL;
LABEL_46:
        v66 = [v51 nameComponents];
        if (v66)
        {
          v67 = v66;
          v68 = v119;
          sub_267EF2A18();

          v69 = 0;
        }

        else
        {
          v69 = 1;
          v68 = v119;
        }

        v70 = OUTLINED_FUNCTION_39_2(v68, v69);
        v71 = v124;
        sub_267BBE134(v70, v124, &unk_28022BCA0, &unk_267EFD990);
        v72 = OUTLINED_FUNCTION_13_7();
        if (__swift_getEnumTagSinglePayload(v72, v73, v58))
        {
          OUTLINED_FUNCTION_29_3();
        }

        else
        {
          v76 = sub_267EF2988();
          v75 = v77;
          sub_267B9F98C(v71, &unk_28022BCA0, &unk_267EFD990);
          if (v75)
          {
            v74 = v76 & 0xFFFFFFFFFFFFLL;
LABEL_54:
            if ((v75 & 0x2000000000000000) != 0)
            {
              v78 = HIBYTE(v75) & 0xF;
            }

            else
            {
              v78 = v74;
            }

            if (v78)
            {
              [v127 addPersonType:2];
            }

            if ((v63 & 0x2000000000000000) != 0)
            {
              v79 = HIBYTE(v63) & 0xF;
            }

            else
            {
              v79 = v121;
            }

            if (v79)
            {
              [v127 addPersonType:3];

              if ((v75 & 0x2000000000000000) == 0)
              {
LABEL_67:
                if (v74)
                {
                  [v127 addPersonType:4];
                }

                goto LABEL_69;
              }
            }

            else
            {

              if ((v75 & 0x2000000000000000) == 0)
              {
                goto LABEL_69;
              }
            }

            v74 = HIBYTE(v75) & 0xF;
            if (v79)
            {
              goto LABEL_67;
            }

LABEL_69:
            v80 = [v51 nameComponents];
            if (v80)
            {
              v81 = v80;
              v82 = v120;
              sub_267EF2A18();

              v83 = 0;
            }

            else
            {
              v83 = 1;
              v82 = v120;
            }

            v84 = OUTLINED_FUNCTION_39_2(v82, v83);
            sub_267BBE134(v84, v125, &unk_28022BCA0, &unk_267EFD990);
            v85 = OUTLINED_FUNCTION_13_7();
            if (__swift_getEnumTagSinglePayload(v85, v86, v58))
            {
              OUTLINED_FUNCTION_29_3();
              v3 = &selRef_personTypes;
            }

            else
            {
              v107 = sub_267EF2A28();
              v109 = v108;
              OUTLINED_FUNCTION_29_3();
              v3 = &selRef_personTypes;
              if (v109)
              {

                v110 = HIBYTE(v109) & 0xF;
                if ((v109 & 0x2000000000000000) == 0)
                {
                  v110 = v107 & 0xFFFFFFFFFFFFLL;
                }

                if (v110)
                {
                  v111 = OUTLINED_FUNCTION_24_2();
                  [v111 v112];
                }
              }
            }

            goto LABEL_74;
          }
        }

        v74 = 0;
        v75 = 0xE000000000000000;
        goto LABEL_54;
      }
    }

    v121 = 0;
    v63 = 0xE000000000000000;
    goto LABEL_46;
  }

  if (qword_280228818 != -1)
  {
LABEL_99:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v32 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v32, qword_280240FB0);
  v127 = sub_267EF89F8();
  v33 = sub_267EF95E8();
  if (os_log_type_enabled(v127, v33))
  {
    v34 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_10(v34);
    _os_log_impl(&dword_267B93000, v127, v33, "#SMSReadMessageSelfLogger smsContext is not initialized!!!", v0, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C38BC8(uint64_t a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (!v3)
  {
    if (qword_280228818 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    v23 = v3;
    v4 = [v3 appendingActionReadMessagesCount];
    if (!__OFADD__(v4, a1))
    {
      [v23 setAppendingActionReadMessagesCount:v4 + a1];
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_7:
  v5 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
  v24 = sub_267EF89F8();
  v6 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_6_6(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
  {
    v14 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_10(v14);
    OUTLINED_FUNCTION_2_18(&dword_267B93000, v15, v16, "#SMSReadMessageSelfLogger smsContext is not initialized!", v17, v18, v19, v20, v22, v23);
    OUTLINED_FUNCTION_4_4();
  }

LABEL_9:
}

unint64_t sub_267C38CFC()
{
  v1 = [*(v0 + 16) smsContext];
  if (!v1)
  {
    return 0xD000000000000042;
  }

  v2 = v1;
  sub_267EF9B68();
  MEMORY[0x26D608E60](0x6E6F73726570200ALL, 0xEF203A7365707954);
  sub_267C3C378(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229520, &qword_267EFD978);
  sub_267EF9C58();

  MEMORY[0x26D608E60](0, 0xE000000000000000);

  v3 = [v2 isReply];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x26D608E60](v5, v6);

  OUTLINED_FUNCTION_28_8();
  v7 = OUTLINED_FUNCTION_33();
  MEMORY[0x26D608E60](v7);

  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD000000000000012, 0x8000000267F12880);
  v8 = [v2 textContext];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 smsAttachmentMetadata];

    if (v10)
    {
      [v10 smsAttachmentType];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229528, &qword_267EFD980);
  sub_267EF9C58();
  OUTLINED_FUNCTION_28_8();
  v12 = OUTLINED_FUNCTION_33();
  MEMORY[0x26D608E60](v12);

  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD000000000000028, 0x8000000267F128A0);
  v13 = [v2 audioContext];
  v14 = v13;
  if (v13)
  {
    [v13 messageDurationMs];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229530, &qword_267EFD988);
  sub_267EF9C58();
  OUTLINED_FUNCTION_28_8();
  v15 = OUTLINED_FUNCTION_33();
  MEMORY[0x26D608E60](v15);

  return 0;
}

void sub_267C390B0()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277D576E0]) init];
  [v1 setSmsContext_];

  v3 = *(v0 + 24);
  *(v0 + 24) = 0;

  *(v0 + 32) = 0;
}

void sub_267C3911C(void *a1, char a2)
{
  v5 = [*(v2 + 16) smsContext];
  if (v5)
  {
    v6 = v5;
    if ((a2 & 1) == 0)
    {
      [v5 clearPersonType];
    }

    sub_267C39388(a1);
    v7 = sub_267C7A4A0();
    v8 = *(v7 + 16);
    if (v8)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v9 = sub_267EF8A08();
      v10 = 0;
      v21 = v9;
      do
      {
        v11 = *(v7 + 4 * v10 + 32);
        OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
        v12 = sub_267EF89F8();
        v13 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134218240;
          *(v14 + 4) = v10;
          *(v14 + 12) = 1024;
          *(v14 + 14) = v11;
          _os_log_impl(&dword_267B93000, v12, v13, "#SendMessageSelfContext personType[%ld]: %d", v14, 0x12u);
          v9 = v21;
          OUTLINED_FUNCTION_32_0();
        }

        ++v10;

        [v6 addPersonType_];
      }

      while (v8 != v10);
    }

    OUTLINED_FUNCTION_35_4();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    oslog = sub_267EF89F8();
    v17 = sub_267EF95E8();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v18);
      _os_log_impl(&dword_267B93000, oslog, v17, "#SendMessageSelfContext smsContext is not initialized!!!", v2, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_35_4();
  }
}

void sub_267C39388(void *a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (v3)
  {
    v35 = v3;
    v4 = [a1 speakableGroupName];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 spokenPhrases];
      v7 = sub_267EF92F8();

      v8 = *(v7 + 16);

      if (v8)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v9 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
        v10 = sub_267EF89F8();
        v11 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v11))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_20();
          _os_log_impl(v12, v13, v14, v15, v16, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        [v35 addPersonType:10];
      }
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v17 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
    v36 = sub_267EF89F8();
    v18 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v18, v19, v20, v21, v22, v23, v24, v25, v33, v36))
    {
      v26 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v26);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v27, v28, "#SendMessageSelfContext smsContext is not initialized!!!", v29, v30, v31, v32, v34, v35);
      OUTLINED_FUNCTION_4_4();
    }
  }
}

void sub_267C3954C(char a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (v3)
  {
    v22 = v3;
    [v3 setIsReply:a1 & 1];
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
    v23 = sub_267EF89F8();
    v5 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v5, v6, v7, v8, v9, v10, v11, v12, v20, v23))
    {
      v13 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v13);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v14, v15, "#SendMessageSelfContext smsContext is not initialized!", v16, v17, v18, v19, v21, v22);
      OUTLINED_FUNCTION_4_4();
    }
  }
}

void sub_267C39660(SEL *a1, SEL *a2)
{
  v5 = [*(v2 + 16) smsContext];
  if (v5 && (v6 = v5, v25 = [v5 tapback], v6, v25))
  {
    [v25 *a1];
    [v25 *a2];
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v7 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
    v26 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v8, v9, v10, v11, v12, v13, v14, v15, v23, v26))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v16);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v17, v18, "#SendMessageSelfContext smsContext.tapback is not initialized!", v19, v20, v21, v22, v24, v25);
      OUTLINED_FUNCTION_4_4();
    }
  }
}

void sub_267C39770(char a1)
{
  v3 = [*(v1 + 16) smsContext];
  if (v3 && (v4 = v3, v23 = [v3 tapback], v4, v23))
  {
    [v23 setIsGUITapback:a1 & 1];
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v24 = sub_267EF89F8();
    v6 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_6_6(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
    {
      v14 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v14);
      OUTLINED_FUNCTION_2_18(&dword_267B93000, v15, v16, "#SendMessageSelfContext smsContext.tapback is not initialized!", v17, v18, v19, v20, v22, v23);
      OUTLINED_FUNCTION_4_4();
    }
  }
}

void sub_267C3986C()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v4 = sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77_0();
  v102 = v12;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v13);
  v15 = &v97 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_60();
  v103 = v18 - v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v101 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_34();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v97 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v97 - v27;
  v29 = [objc_allocWithZone(MEMORY[0x277D576C8]) init];
  if (v29)
  {
    v30 = v29;
    if (v0[32] == 1)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v31 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
      v32 = sub_267EF89F8();
      v33 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v33))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v34, v35, "#SMSSendMessageSelfLogger link is shared via text content for 3p SiriKit apps, returning .FLOWSMSATTACHMENTTYPE_LINK");
        OUTLINED_FUNCTION_32_0();
      }

      [v30 setSmsAttachmentType_];
      goto LABEL_30;
    }

    v100 = v26;
    v41 = sub_267E76140(v3);
    if (v41)
    {
      v42 = v41;
      v98 = v10;
      v99 = v6;
      v43 = sub_267BAF0DC(v41);
      if (v43)
      {
        v44 = v43;
        v104 = v4;
        v97 = v30;
        for (i = 0; ; ++i)
        {
          if (v44 == i)
          {

            goto LABEL_30;
          }

          if ((v42 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x26D609870](i, v42);
          }

          else
          {
            if (i >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v46 = *(v42 + 8 * i + 32);
          }

          v47 = v46;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if ([v46 sharedLink])
          {
            OUTLINED_FUNCTION_54_1();

            sub_267EF2B48();

            v53 = v99;
            v54 = v104;
            (*(v99 + 32))(v28, v15, v104);
            OUTLINED_FUNCTION_19_5();
            __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
            sub_267B9F98C(v28, &qword_280229E20, &unk_267EFDCC0);
            goto LABEL_34;
          }

          __swift_storeEnumTagSinglePayload(v28, 1, 1, v104);
          sub_267B9F98C(v28, &qword_280229E20, &unk_267EFDCC0);
          if ([v47 file])
          {
            break;
          }
        }

        OUTLINED_FUNCTION_54_1();

        v54 = v104;
        v53 = v99;
LABEL_34:
        v59 = v100;
        OUTLINED_FUNCTION_19_5();
        __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
        v64 = [v47 sharedLink];
        v66 = v97;
        v65 = v98;
        if (v64)
        {
          v67 = v64;
          v68 = v102;
          sub_267EF2B48();

          sub_267EF2A88();
          (*(v53 + 8))(v68, v54);
          sub_267B9F98C(v59, &qword_280229E20, &unk_267EFDCC0);
          OUTLINED_FUNCTION_19_5();
          __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
          v73 = v1;
          v74 = v103;
        }

        else
        {
          v75 = [v47 file];
          v74 = v103;
          if (!v75)
          {
LABEL_42:
            sub_267B9A598(v59, v74, &qword_280229E20, &unk_267EFDCC0);
            if (__swift_getEnumTagSinglePayload(v74, 1, v54) == 1)
            {
              v84 = OUTLINED_FUNCTION_12_4();
              sub_267B9F98C(v84, v85, &unk_267EFDCC0);

              v86 = v74;
            }

            else
            {
              (*(v53 + 32))(v65, v74, v54);
              v87 = sub_267D50E80();
              switch(v87)
              {
                case 0:
                  [v66 setSmsAttachmentType_];
                  break;
                case 1:
                  [v66 setSmsAttachmentType_];
                  break;
                case 2:
                  [v66 setSmsAttachmentType_];
                  break;
                case 3:
                  [v66 setSmsAttachmentType_];
                  break;
                case 4:
                  [v66 setSmsAttachmentType_];
                  break;
                default:
                  if (qword_280228818 != -1)
                  {
                    OUTLINED_FUNCTION_0(&qword_280228818);
                  }

                  v88 = sub_267EF8A08();
                  OUTLINED_FUNCTION_30_1(v88, qword_280240FB0);
                  v89 = sub_267EF89F8();
                  v90 = sub_267EF95E8();
                  if (OUTLINED_FUNCTION_5_2(v90))
                  {
                    v91 = swift_slowAlloc();
                    *v91 = 67109120;
                    v91[1] = v87;
                    OUTLINED_FUNCTION_20();
                    _os_log_impl(v92, v93, v94, v95, v96, 8u);
                    OUTLINED_FUNCTION_32_0();
                  }

                  v54 = v104;
                  break;
              }

              (*(v53 + 8))(v65, v54);
              v86 = v100;
            }

            sub_267B9F98C(v86, &qword_280229E20, &unk_267EFDCC0);
            goto LABEL_30;
          }

          v76 = v75;
          v77 = [v75 fileURL];
          if (v77)
          {
            v78 = v77;
            v79 = v101;
            sub_267EF2B48();

            sub_267B9F98C(v100, &qword_280229E20, &unk_267EFDCC0);
          }

          else
          {
            sub_267B9F98C(v100, &qword_280229E20, &unk_267EFDCC0);

            v79 = v101;
          }

          OUTLINED_FUNCTION_19_5();
          __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
          v59 = v100;
          v73 = v79;
        }

        sub_267BBE134(v73, v59, &qword_280229E20, &unk_267EFDCC0);
        goto LABEL_42;
      }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v48 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
    v49 = sub_267EF89F8();
    v50 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v50))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v51, v52, "#SMSSendMessageSelfLogger logAttachmentType, not logging attachment type. No attachments.");
      OUTLINED_FUNCTION_32_0();
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
LABEL_59:
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v36 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v38))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v39, v40, "#SMSSendMessageSelfLogger logAttachmentType, not logging attachment type. Error creating context.");
      OUTLINED_FUNCTION_32_0();
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_47();
}

void sub_267C3A088()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v106 - v13;
  v117 = sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_60();
  v111 = v18 - v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  v22 = &v106 - v21;
  v113 = v0;
  v23 = [*(v0 + 16) smsContext];
  if (v23)
  {
    v108 = v22;
    v109 = v14;
    v110 = v16;
    v112 = v23;
    v24 = [v5 outgoingMessageType];
    if (!v24)
    {
      OUTLINED_FUNCTION_110_2();
      if (!v42)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v71 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
      v72 = v5;
      v73 = sub_267EF89F8();
      v74 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_36(v74))
      {
        v75 = OUTLINED_FUNCTION_48();
        *v75 = 134217984;
        *(v75 + 4) = [v72 outgoingMessageType];

        v76 = "#SendMessageSelfContext unknown outgoing message type %ld";
LABEL_57:
        _os_log_impl(&dword_267B93000, v73, OS_LOG_TYPE_DEFAULT, v76, v75, 0xCu);
        OUTLINED_FUNCTION_32_0();

        goto LABEL_78;
      }

LABEL_58:

      goto LABEL_78;
    }

    if (v24 != 2)
    {
      if (v24 == 1)
      {
        v25 = &off_279C2E000;
        v26 = [objc_allocWithZone(MEMORY[0x277D576F0]) init];
        if (!v26)
        {
          goto LABEL_78;
        }

        v27 = v26;
        v28 = sub_267ED9A2C(v5);
        if (!v29)
        {
          goto LABEL_70;
        }

        v30 = v28;
        v31 = v29;
        v32 = [objc_allocWithZone(MEMORY[0x277D576E8]) init];
        if (!v32)
        {

LABEL_70:
          sub_267C3986C();
          v93 = v92;
          if (v92 && [v92 smsAttachmentType])
          {
            sub_267C3ABD4();
            v95 = v94;
            [v93 setLinkId_];
          }

          sub_267D28AC8();
          if ((v96 & 1) != 0 && (v93 || (v93 = [objc_allocWithZone(MEMORY[0x277D576C8]) v25[413]]) != 0))
          {
            [v93 setSmsAttachmentType_];
          }

          [v27 setSmsAttachmentMetadata_];
          v97 = v112;
          [v112 setTextContext_];
          [v97 setMessageType_];

          goto LABEL_78;
        }

        v33 = v32;
        v34 = sub_267EF9138();
        if ((v34 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!HIDWORD(v34))
        {
          [v33 setMessageCharLength_];
          v35 = swift_allocObject();
          *(v35 + 16) = 0;
          if ((v31 & 0x2000000000000000) != 0)
          {
            v36 = HIBYTE(v31) & 0xF;
          }

          else
          {
            v36 = v30 & 0xFFFFFFFFFFFFLL;
          }

          v37 = 11;
          if (((v31 >> 60) & ((v30 & 0x800000000000000) == 0)) == 0)
          {
            v37 = 7;
          }

          v115 = v36;
          v118 = v30;
          v119 = v31;
          v122 = 15;
          v123 = v37 | (v36 << 16);

          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229510, &qword_267EFD970);
          v116 = sub_267BB5034();
          sub_267C3C4C4();
          sub_267EF9928();

          swift_beginAccess();
          v38 = *(v35 + 16);

          if ((v38 & 0x8000000000000000) == 0)
          {
            v25 = &off_279C2E000;
            if (!HIDWORD(v38))
            {
              [v33 setMessageWordLength_];
              v118 = v30;
              v119 = v31;
              v120 = 0;
              v121 = v115;
              do
              {
                sub_267EF91A8();
                v40 = v39;
                if (!v39)
                {
                  break;
                }

                v41 = sub_267EF8F98();
              }

              while ((v41 & 1) == 0);

              [v33 setIsPunctuationUsed_];
              [v33 setFlowKeyboardUsageMetadata_];
              [v27 setSmsTextContentMetadata_];

              goto LABEL_70;
            }

            goto LABEL_91;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_110_2();
      if (!v42)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v77 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v77, qword_280240FB0);
      v72 = v5;
      v73 = sub_267EF89F8();
      v78 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_36(v78))
      {
        v75 = OUTLINED_FUNCTION_48();
        *v75 = 134217984;
        *(v75 + 4) = [v72 outgoingMessageType];

        v76 = "#SendMessageSelfContext unhandled outgoing message type %ld";
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    [v112 setMessageType_];
    v48 = sub_267E76140(v5);
    if (v48)
    {
      v49 = v48;
      v50 = sub_267BAF0DC(v48);
      v51 = 0;
      v115 = v49 & 0xC000000000000001;
      v116 = v50;
      v114 = v49 & 0xFFFFFFFFFFFFFF8;
      v106 = (v110 + 32);
      v107 = MEMORY[0x277D84F90];
      v52 = &qword_280229E20;
      v53 = &unk_267EFDCC0;
      v54 = v117;
      while (1)
      {
        if (v116 == v51)
        {

          v79 = v109;
          sub_267C8F020(v107, v109);

          OUTLINED_FUNCTION_8_6(v79);
          if (v42)
          {
            goto LABEL_68;
          }

          v80 = v108;
          v81 = OUTLINED_FUNCTION_12_4();
          v82(v81);
          v83 = [objc_allocWithZone(MEMORY[0x277D576D8]) init];
          if (v83)
          {
            v84 = v83;
            v85 = COERCE_DOUBLE(sub_267E0BC80());
            v86 = v110;
            if ((v87 & 1) == 0 && ((v88 = round(v85 * 1000.0), v88 > -1.0) ? (v89 = v88 < 4294967300.0) : (v89 = 0), v89))
            {
              [v84 setMessageDurationMs_];
              [v112 setAudioContext_];

              (*(v86 + 8))(v80, v54);
            }

            else
            {
              (*(v110 + 8))(v80, v54);
            }
          }

          else
          {
            (*(v110 + 8))(v80, v54);
          }

          goto LABEL_78;
        }

        if (v115)
        {
          v55 = MEMORY[0x26D609870](v51, v49);
        }

        else
        {
          if (v51 >= *(v114 + 16))
          {
            goto LABEL_86;
          }

          v55 = *(v49 + 8 * v51 + 32);
        }

        v56 = v55;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v57 = [v55 audioMessageFile];
        if (!v57)
        {
          break;
        }

        v58 = v57;
        v59 = v53;
        v60 = v52;
        v61 = [v57 fileURL];

        if (v61)
        {
          sub_267EF2B48();

          v62 = 0;
        }

        else
        {
          v62 = 1;
        }

        v54 = v117;
        __swift_storeEnumTagSinglePayload(v10, v62, 1, v117);
        v52 = v60;
        v63 = v60;
        v53 = v59;
        sub_267BBE134(v10, v1, v63, v59);
        OUTLINED_FUNCTION_8_6(v1);
        if (v42)
        {
LABEL_42:
          sub_267B9F98C(v1, v52, v53);
          ++v51;
        }

        else
        {
          v64 = *v106;
          (*v106)(v111, v1, v54);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_267C70BD8();
            v107 = v69;
          }

          v66 = *(v107 + 16);
          if (v66 >= *(v107 + 24) >> 1)
          {
            sub_267C70BD8();
            v107 = v70;
          }

          v67 = v107;
          *(v107 + 16) = v66 + 1;
          v68 = v67 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v66;
          v54 = v117;
          v64(v68, v111, v117);
          ++v51;
        }
      }

      v54 = v117;
      __swift_storeEnumTagSinglePayload(v1, 1, 1, v117);
      goto LABEL_42;
    }

    v79 = v109;
    v90 = OUTLINED_FUNCTION_13_7();
    __swift_storeEnumTagSinglePayload(v90, v91, 1, v117);
LABEL_68:
    sub_267B9F98C(v79, &qword_280229E20, &unk_267EFDCC0);
LABEL_78:
    OUTLINED_FUNCTION_110_2();
    if (!v42)
    {
LABEL_87:
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v98 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v98, qword_280240FB0);

    v99 = sub_267EF89F8();
    v100 = sub_267EF95D8();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = OUTLINED_FUNCTION_48();
      v102 = OUTLINED_FUNCTION_52();
      v118 = v102;
      *v101 = 136315138;
      v103 = sub_267C38CFC();
      v105 = sub_267BA33E8(v103, v104, &v118);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_267B93000, v99, v100, "#SendMessageSelfContext smsContext = %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_47();
  }

  else
  {
    OUTLINED_FUNCTION_110_2();
    if (!v42)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v43 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v43, qword_280240FB0);
    v117 = sub_267EF89F8();
    v44 = sub_267EF95E8();
    if (os_log_type_enabled(v117, v44))
    {
      v45 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v45);
      _os_log_impl(&dword_267B93000, v117, v44, "#SendMessageSelfContext smsContext is not initialized!!!", 0x280228000, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    OUTLINED_FUNCTION_47();
  }
}

void sub_267C3ABD4()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v115 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v113 = v6 - v7;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v105 - v10;
  v12 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v117 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_60();
  v111 = v15 - v16;
  OUTLINED_FUNCTION_115();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v105 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v112 = v21;
  OUTLINED_FUNCTION_115();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v105 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v105 - v26;
  v28 = sub_267BA9F38(0, &qword_2802294F0, 0x277D5AC78);
  sub_267EF2D18();
  v109 = v28;
  v110 = v27;
  v114 = sub_267BBC890(v27);
  v116 = [objc_allocWithZone(MEMORY[0x277D57568]) init];
  v29 = sub_267EF6FF8();
  v30 = sub_267EF6FC8();
  if (v30)
  {

    v29 = v30;
    sub_267EF6F98();
    OUTLINED_FUNCTION_54_1();

    v31 = sub_267EF37B8();
    v33 = v32;

    if (v33)
    {
      sub_267EF2CD8();
      OUTLINED_FUNCTION_8_6(v11);
      if (v34)
      {

        sub_267B9F98C(v11, &qword_280229430, &qword_267EFD2C0);
      }

      else
      {
        (*(v117 + 32))(v25, v11, v12);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v35 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v35, qword_280240FB0);

        v29 = sub_267EF89F8();
        v36 = sub_267EF95D8();

        v107 = v29;
        if (os_log_type_enabled(v29, v36))
        {
          v29 = OUTLINED_FUNCTION_48();
          v37 = OUTLINED_FUNCTION_52();
          v108 = v2;
          v38 = v37;
          v120[0] = v37;
          *v29 = 136315138;
          v39 = sub_267BA33E8(v31, v33, v120);

          *(v29 + 1) = v39;
          v40 = v107;
          _os_log_impl(&dword_267B93000, v107, v36, "#SendMessageSelfContext logForegroundApp with taskId: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          v2 = v108;
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_4_4();
        }

        else
        {
        }

        v41 = v116;
        v42 = v117;
        if (v116)
        {
          v43 = OUTLINED_FUNCTION_17_5();
          v44(v43);
          v45 = v41;
          v29 = sub_267BBC890(v29);
          [v45 setTaskId_];
        }

        (*(v42 + 8))(v25, v12);
      }
    }
  }

  sub_267C3BDE4();
  OUTLINED_FUNCTION_8_6(v1);
  if (v34)
  {
    sub_267B9F98C(v1, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    v46 = v117;
    v47 = v112;
    (*(v117 + 32))(v112, v1, v12);
    v48 = v116;
    if (v116)
    {
      v49 = OUTLINED_FUNCTION_17_5();
      v50(v49);
      v51 = v48;
      v52 = sub_267BBC890(v29);
      [v51 setFlowId_];
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v53 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v53, qword_280240FB0);
    (*(v46 + 16))(v20, v47, v12);

    v54 = sub_267EF89F8();
    v55 = sub_267EF95D8();

    if (!os_log_type_enabled(v54, v55))
    {

      v68 = *(v46 + 8);
      v68(v20, v12);
      v68(v47, v12);
      goto LABEL_28;
    }

    v56 = v55;
    v108 = v2;
    v57 = v46;
    v58 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v58 = 136315394;
    v59 = sub_267EF2CE8();
    v61 = v60;
    v62 = *(v57 + 8);
    v107 = v12;
    v106 = v62;
    v62(v20, v12);
    v63 = sub_267BA33E8(v59, v61, v120);

    *(v58 + 4) = v63;
    *(v58 + 12) = 2080;
    if (!v30 || (sub_267EF6F98(), v64 = sub_267EF37B8(), v66 = v65, , !v66))
    {

      v66 = 0xE300000000000000;
      v64 = 7104878;
    }

    v67 = sub_267BA33E8(v64, v66, v120);

    *(v58 + 14) = v67;
    _os_log_impl(&dword_267B93000, v54, v56, "#SendMessageSelfContext logForegroundApp with flowId: %s created for taskId: %s", v58, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v12 = v107;
    v106(v112, v107);
    v2 = v108;
  }

  v48 = v116;
  v46 = v117;
LABEL_28:
  v69 = v113;
  if (v30)
  {

    sub_267EF6FA8();
    OUTLINED_FUNCTION_54_1();

    sub_267EF86C8();
    v71 = v70;

    if (v71)
    {
      OUTLINED_FUNCTION_12_4();
      sub_267EF2CD8();
      OUTLINED_FUNCTION_8_6(v69);
      if (v34)
      {
        sub_267B9F98C(v69, &qword_280229430, &qword_267EFD2C0);
      }

      else
      {
        (*(v46 + 32))(v111, v69, v12);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v72 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);

        v73 = sub_267EF89F8();
        v74 = sub_267EF95D8();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = OUTLINED_FUNCTION_48();
          v76 = OUTLINED_FUNCTION_52();
          v120[0] = v76;
          *v75 = 136315138;
          v77 = OUTLINED_FUNCTION_12_4();
          *(v75 + 4) = sub_267BA33E8(v77, v78, v79);
          OUTLINED_FUNCTION_37_0(&dword_267B93000, v80, v81, "#SendMessageSelfContext logForegroundApp with trpId: %s");
          __swift_destroy_boxed_opaque_existential_0(v76);
          OUTLINED_FUNCTION_32_0();
          v48 = v116;
          OUTLINED_FUNCTION_32_0();
        }

        v82 = v117;
        v83 = v111;
        if (v48)
        {
          v84 = v110;
          (*(v117 + 16))(v110, v111, v12);
          v85 = v48;
          v86 = sub_267BBC890(v84);
          [v85 setTrpId_];

          v82 = v117;
          v83 = v111;
        }

        (*(v82 + 8))(v83, v12);
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v87 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v87, qword_280240FB0);

      v88 = sub_267EF89F8();
      v89 = sub_267EF95D8();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = OUTLINED_FUNCTION_48();
        v91 = OUTLINED_FUNCTION_52();
        v120[0] = v91;
        *v90 = 136315138;
        v92 = OUTLINED_FUNCTION_12_4();
        *(v90 + 4) = sub_267BA33E8(v92, v93, v94);
        OUTLINED_FUNCTION_37_0(&dword_267B93000, v95, v96, "#SendMessageSelfContext logForegroundApp with resultCandidateId: %s");
        __swift_destroy_boxed_opaque_existential_0(v91);
        OUTLINED_FUNCTION_32_0();
        v48 = v116;
        OUTLINED_FUNCTION_32_0();
      }

      if (v48)
      {
        v97 = OUTLINED_FUNCTION_12_4();
        sub_267C3C3E8(v97, v98, v48);
      }

      else
      {
      }
    }
  }

  sub_267B9A598(v115, &v118, &qword_280229508, &unk_267EFD960);
  if (v119)
  {
    sub_267BE58F4(&v118, v120);
    v99 = v121;
    v100 = v122;
    __swift_project_boxed_opaque_existential_0(v120, v121);
    v101 = swift_allocObject();
    v101[2] = v48;
    v101[3] = v2;
    v102 = v114;
    v101[4] = v114;
    v103 = v48;

    v104 = v102;
    sub_267C0BC60(sub_267C3C4B0, v101, v99, v100);

    __swift_destroy_boxed_opaque_existential_0(v120);
  }

  else
  {

    sub_267B9F98C(&v118, &qword_280229508, &unk_267EFD960);
  }

  OUTLINED_FUNCTION_47();
}

void sub_267C3B648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return;
  }

  v6 = sub_267E7D370(a1);
  if (!v6)
  {
LABEL_62:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_267BAF0DC(v6);
  v9 = 0;
  v59 = (v7 & 0xC000000000000001);
LABEL_4:
  if (v9 == v8)
  {

    return;
  }

  v10 = (v7 & 0xC000000000000001);
  sub_267BBD0EC(v9, v59 == 0, v7);
  if (v59)
  {
    v11 = MEMORY[0x26D609870](v9, v7);
  }

  else
  {
    v11 = *(v7 + 32 + 8 * v9);
  }

  v12 = v11;
  if (__OFADD__(v9++, 1))
  {
    __break(1u);
    goto LABEL_60;
  }

  if (qword_280228740 != -1)
  {
    swift_once();
  }

  v14 = qword_280240AA0;
  v15 = sub_267D24554(v12);
  if (!v16)
  {
    __break(1u);
    goto LABEL_62;
  }

  v17 = v16;
  if (*(v14 + 16))
  {
    v5 = v15;
    sub_267EF9FC8();
    sub_267EF9128();
    v18 = sub_267EFA018();
    v19 = ~(-1 << *(v14 + 32));
    while (1)
    {
      v4 = v18 & v19;
      if (((*(v14 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
      {
        break;
      }

      v20 = (*(v14 + 48) + 16 * v4);
      if (*v20 != v5 || v17 != v20[1])
      {
        v22 = sub_267EF9EA8();
        v18 = v4 + 1;
        if ((v22 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_4;
    }
  }

  v23 = sub_267D244E8(v12);
  if (v24)
  {
    v4 = v23;
    v7 = v24;
    v59 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
    [v59 setEventMetadata_];
    v25 = *(a3 + 24);
    v5 = 0x280228000uLL;
    if (v25)
    {
      v58 = v25;
      v26 = sub_267C3C44C(v58);
      if (v27)
      {
        v28 = v26;
        v29 = v27;

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v30 = sub_267EF8A08();
        __swift_project_value_buffer(v30, qword_280240FB0);

        v31 = sub_267EF89F8();
        v32 = sub_267EF95D8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v60[0] = v34;
          *v33 = 136315138;
          v35 = sub_267BA33E8(v28, v29, v60);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_267B93000, v31, v32, "#SendMessageSelfContext have foregroundAppBundleId sampled in previous turn %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x26D60A7B0](v34, -1, -1);
          MEMORY[0x26D60A7B0](v33, -1, -1);
        }

        else
        {
        }

        [v58 setLinkId_];
        if (!v59)
        {
          v54 = v58;
LABEL_53:

          return;
        }

        v48 = v59;
        [v48 setSmsAttachmentMetadataTier1_];

        v47 = v59;
LABEL_43:
        v49 = [v47 smsAttachmentMetadataTier1];
        if (v49)
        {

          if (*(v5 + 2072) != -1)
          {
            swift_once();
          }

          v50 = sub_267EF8A08();
          __swift_project_value_buffer(v50, qword_280240FB0);
          v51 = sub_267EF89F8();
          v52 = sub_267EF95D8();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_267B93000, v51, v52, "#SendMessageSelfContext emitting SmsAttachmentMetadataTier1 SELF event", v53, 2u);
            MEMORY[0x26D60A7B0](v53, -1, -1);
          }

          [objc_msgSend(objc_opt_self() sharedStream)];

          swift_unknownObjectRelease();
          return;
        }

        v54 = v59;
        goto LABEL_53;
      }
    }

    if ((sub_267EF9218() & 1) == 0 && (sub_267C3C2EC(0xAuLL) + 1) % 10)
    {

      v7 = 0xED00007070417033;
      v4 = 0x6465746361646572;
    }

    v36 = [objc_allocWithZone(MEMORY[0x277D576D0]) init];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
      v39 = sub_267EF8FF8();
      [v38 setForegroundAppBundleId_];

      [v38 setLinkId_];
    }

    v40 = *(a3 + 24);
    *(a3 + 24) = v37;
    v10 = v37;

    [v59 setSmsAttachmentMetadataTier1_];
    if (qword_280228818 == -1)
    {
LABEL_35:
      v41 = sub_267EF8A08();
      __swift_project_value_buffer(v41, qword_280240FB0);

      v42 = sub_267EF89F8();
      v43 = sub_267EF95D8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v60[0] = v45;
        *v44 = 136315138;
        v46 = sub_267BA33E8(v4, v7, v60);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_267B93000, v42, v43, "#SendMessageSelfContext sampling foregroundAppBundleId for the first time, result: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x26D60A7B0](v45, -1, -1);
        MEMORY[0x26D60A7B0](v44, -1, -1);
      }

      else
      {
      }

      v47 = v59;
      if (!v59)
      {
        return;
      }

      goto LABEL_43;
    }

LABEL_60:
    swift_once();
    goto LABEL_35;
  }
}

void sub_267C3BDE4()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - v7;
  v9 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  if (v2 && (sub_267EF6FA8(), sub_267EF8678(), v21 = v20, , v21))
  {
    sub_267EF2CD8();

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_267B9F98C(v8, &qword_280229430, &qword_267EFD2C0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v22 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
      v23 = sub_267EF89F8();
      v24 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_5_2(v24))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_38_1(&dword_267B93000, v25, v26, "#SendMessageSelfContext SELF Log, invalid executionRequestId string, cannot derive flowId form it");
        OUTLINED_FUNCTION_32_0();
      }

      OUTLINED_FUNCTION_13_7();
    }

    else
    {
      v57 = *(v11 + 32);
      v57(v19, v8, v9);
      v37 = objc_opt_self();
      v38 = sub_267EF2CF8();
      v39 = [v37 derivedIdentifierForComponent:3 fromSourceIdentifier:v38];

      sub_267EF2D08();
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v58 = v4;
      v40 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v40, qword_280240FB0);
      (*(v11 + 16))(v15, v0, v9);
      v41 = sub_267EF89F8();
      v42 = sub_267EF95D8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_48();
        v56 = v11 + 32;
        v44 = v43;
        v55 = OUTLINED_FUNCTION_52();
        v59 = v55;
        *v44 = 136315138;
        v54 = sub_267EF2CE8();
        v46 = v45;
        v47 = *(v11 + 8);
        v47(v15, v9);
        v48 = sub_267BA33E8(v54, v46, &v59);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_267B93000, v41, v42, "#SendMessageSelfContext SELF Log, created flowId: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();

        v47(v19, v9);
      }

      else
      {

        v49 = *(v11 + 8);
        v49(v15, v9);
        v49(v19, v9);
      }

      v57(v58, v0, v9);
    }

    OUTLINED_FUNCTION_19_5();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    OUTLINED_FUNCTION_47();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v27 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
    v28 = sub_267EF89F8();
    v29 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v29))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_38_1(&dword_267B93000, v30, v31, "#SendMessageSelfContext SELF Log, invalid executionRequestId, cannot derive flowId form it");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_19_5();
    OUTLINED_FUNCTION_47();

    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  }
}

unint64_t sub_267C3C2EC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D60A7C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D60A7C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267C3C378(void *a1)
{
  v1 = [a1 personTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267C3C3E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setResultCandidateId_];
}

uint64_t sub_267C3C44C(void *a1)
{
  v1 = [a1 foregroundAppBundleId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267C3C4C4()
{
  result = qword_280229518;
  if (!qword_280229518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229510, &qword_267EFD970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229518);
  }

  return result;
}

unint64_t sub_267C3C528()
{
  result = qword_280229540;
  if (!qword_280229540)
  {
    sub_267BA9F38(255, &qword_28022BB60, 0x277CD3E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229540);
  }

  return result;
}

uint64_t sub_267C3C590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_267C3C5D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_267C3C61C(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_267C3C668()
{
  sub_267C3D854();
  result = sub_267DCF850(0xD000000000000024, 0x8000000267F129D0);
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  }

  qword_280229548 = result;
  return result;
}

unint64_t sub_267C3C6D0()
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
    v4 = OUTLINED_FUNCTION_48();
    v0 = OUTLINED_FUNCTION_52();
    v39 = v0;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0x696C6F50746E6968, 0xEA00000000007963, &v39);
    _os_log_impl(&dword_267B93000, v2, v3, "#AnnounceHintExperimentController isExperimentEnabled for factorName: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v0);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_32_0();
  }

  v5 = [objc_opt_self() clientWithIdentifier_];
  v6 = sub_267EF8FF8();
  v7 = sub_267EF8FF8();
  v8 = [v5 levelForFactor:v6 withNamespaceName:v7];

  if (!v8)
  {
    v31 = sub_267EF89F8();
    v32 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_267B93000, v31, v32, "#AnnounceHintExperimentController trialClient.levelForFactor returned null, returning nil", v33, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    return 4;
  }

  v9 = v8;
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_48();
    v39 = OUTLINED_FUNCTION_5_4();
    *v0 = 136315138;
    v12 = [v9 debugDescription];
    v13 = sub_267EF9028();
    v14 = v5;
    v16 = v15;

    v17 = sub_267BA33E8(v13, v16, &v39);
    v5 = v14;

    *(v0 + 4) = v17;
    _os_log_impl(&dword_267B93000, v10, v11, "AnnounceHintExperimentController levelForFactor: %s", v0, 0xCu);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  v18 = sub_267BC31D0(v9);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xD000000000000017;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0x8000000267F12A00;
  }

  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_48();
    v25 = OUTLINED_FUNCTION_52();
    v39 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_267BA33E8(v20, v21, &v39);
    _os_log_impl(&dword_267B93000, v22, v23, "AnnounceHintExperimentController factorStringValue: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v26 = sub_267C3C61C(v20, v21);
  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();
  v29 = OUTLINED_FUNCTION_5_2(v28);
  if (v26 == 4)
  {
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_267B93000, v27, v28, "#AnnounceHintExperimentController Failed to construct HintPolicy from factorStringValue. Returning nil.", v30, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    return 4;
  }

  if (v29)
  {
    OUTLINED_FUNCTION_48();
    v39 = OUTLINED_FUNCTION_5_4();
    *v22 = 136315138;
    v34 = 0xE700000000000000;
    v35 = 0x6C6F72746E6F63;
    switch(v26)
    {
      case 1:
        v36 = 1701998445;
        goto LABEL_29;
      case 2:
        v34 = 0x8000000267F0F8F0;
        v35 = 0xD000000000000011;
        break;
      case 3:
        v36 = 1936942444;
LABEL_29:
        v35 = v36 | 0x746E694800000000;
        v34 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v37 = sub_267BA33E8(v35, v34, &v39);

    *(v22 + 4) = v37;
    _os_log_impl(&dword_267B93000, v27, v28, "#AnnounceHintExperimentController HintPolicy found: %s", v22, 0xCu);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  return v26;
}

void sub_267C3CBF8()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_267EF6FF8();
  if (!sub_267EF6FC8())
  {
    goto LABEL_9;
  }

  sub_267EF6FA8();

  v5 = sub_267EF8678();
  v7 = v6;

  if (!v7)
  {
    goto LABEL_9;
  }

  sub_267C3D854();

  v8 = sub_267DCF850(v5, v7);
  if (!v8)
  {

LABEL_9:
    v9 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    goto LABEL_12;
  }

  v9 = v8;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);

  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_52();
    v20 = v14;
    *v13 = 136315138;
    v15 = sub_267BA33E8(v5, v7, &v20);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_267B93000, v11, v12, "#AnnounceHintExperimentController trigger log for requestId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

LABEL_12:
  v16 = v9;
  sub_267EF93D8();
  v17 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v1;
  sub_267E8FA18();
}

uint64_t sub_267C3CED0()
{
  v16 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v0[7] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v15 = v5;
    *v4 = 136315138;
    if (qword_280228700 != -1)
    {
      OUTLINED_FUNCTION_1_19(&qword_280228700);
    }

    v6 = [qword_280229548 UUIDString];
    v7 = sub_267EF9028();
    v9 = v8;

    v10 = sub_267BA33E8(v7, v9, &v15);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_267B93000, v2, v3, "#AnnounceHintExperimentController async trigger log for codePath: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v0[8] = [objc_allocWithZone(sub_267EF8988()) init];
  if (qword_280228700 != -1)
  {
    OUTLINED_FUNCTION_1_19(&qword_280228700);
  }

  v11 = qword_280229548;
  v0[9] = qword_280229548;
  v14 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_267C3D104;

  return v14(v11, &unk_2878CA770);
}

uint64_t sub_267C3D104()
{
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267C3D464, 0, 0);
  }

  else
  {
    v4 = v2[6];
    v8 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
    v5 = swift_task_alloc();
    v2[12] = v5;
    *v5 = v2;
    v5[1] = sub_267C3D294;
    v6 = v2[9];

    return v8(v6, v4);
  }
}

uint64_t sub_267C3D294()
{
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 104) = v0;

  if (v0)
  {
    v5 = sub_267C3D588;
  }

  else
  {
    v5 = sub_267C3D3A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267C3D3A0(uint64_t a1)
{
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  v5 = *(v1 + 64);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#AnnounceHintExperimentController trigger log async complete", v6, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267C3D464()
{
  v14 = v0;
  v2 = *(v0 + 88);

  v3 = v2;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_48();
    v13 = OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_11(4.8149e-34);
    v6 = sub_267EF9F68();
    v8 = sub_267BA33E8(v6, v7, &v13);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v9, v10, "#AnnounceHintExperimentController error during trigger logging: %s");
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267C3D588()
{
  v14 = v0;
  v2 = *(v0 + 104);

  v3 = v2;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_48();
    v13 = OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_10_11(4.8149e-34);
    v6 = sub_267EF9F68();
    v8 = sub_267BA33E8(v6, v7, &v13);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v9, v10, "#AnnounceHintExperimentController error during trigger logging: %s");
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267C3D6AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_267C3D76C;

  return sub_267C3CEB0(a1, v4, v5, v6);
}

uint64_t sub_267C3D76C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

unint64_t sub_267C3D854()
{
  result = qword_280229550;
  if (!qword_280229550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229550);
  }

  return result;
}

uint64_t sub_267C3D898(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v6 = sub_267EF7D48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a1;
  (*(v7 + 104))(v9, *MEMORY[0x277D55428], v6);

  v10 = sub_267EF8F28();
  sub_267DCE6C4(v9, v10, a2, a3);

  return (*(v7 + 8))(v9, v6);
}

void sub_267C3D9E8(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229558, &unk_267F02FE0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    __swift_project_value_buffer(v16, qword_280240FB0);
    v17 = a1;
    v18 = sub_267EF89F8();
    v19 = sub_267EF95E8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_267B93000, v18, v19, "It's not INSendMessageIntent: %@", v20, 0xCu);
      sub_267B9F98C(v21, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v23 = sub_267EF8F28();
    v24 = *MEMORY[0x277D553B0];
    sub_267EF7CC8();
    OUTLINED_FUNCTION_22();
    (*(v25 + 104))(v9, v24);
    swift_storeEnumTagMultiPayload();
    a3(v9, v23);

    goto LABEL_21;
  }

  v34 = a1;
  if ((sub_267EF9718() & 1) == 0 && (sub_267EF96E8() & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_267B93000, v27, v28, "#AttachmentsAppResolver: received an intent without attachment", v29, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v30 = sub_267EF8F28();
    v31 = *MEMORY[0x277D553B0];
    sub_267EF7CC8();
    OUTLINED_FUNCTION_22();
    (*(v32 + 104))(v9, v31);
    swift_storeEnumTagMultiPayload();
    a3(v9, v30);

LABEL_21:
    sub_267B9F98C(v9, &qword_280229558, &unk_267F02FE0);
    return;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_267B93000, v11, v12, "#AttachmentsAppResolver: received an intent with attachments, select 1st-party app", v13, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF7C38();
  v14 = sub_267EF7C08();
  sub_267C3D898(v14, a3, a4);

  v15 = v34;
}

uint64_t sub_267C3DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C314BC(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_267C3DF88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_267EF2BA8();
  __swift_allocate_value_buffer(v3, qword_280229560);
  v4 = __swift_project_value_buffer(v3, qword_280229560);
  sub_267EF2B88();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_267C3E09C()
{
  OUTLINED_FUNCTION_12();
  v1[29] = v2;
  v1[30] = v0;
  v1[28] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  OUTLINED_FUNCTION_18(v4);
  v1[31] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF2BA8();
  v1[32] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[33] = v6;
  v1[34] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v7);
  v1[35] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C3E19C()
{
  if (qword_280228818 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v1 = sub_267EF8A08();
    __swift_project_value_buffer(v1, qword_280240FB0);
    v2 = sub_267EF89F8();
    v3 = sub_267EF95D8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v4);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v2, v3, "#SendMessageHandleIntentFlowStrategy makeIntentHandledResponse");
      OUTLINED_FUNCTION_26();
    }

    v5 = *(v0 + 240);

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
    v7 = sub_267EF4648();
    *(v0 + 288) = v7;
    v8 = sub_267EF4668();
    *(v0 + 296) = v8;
    v9 = sub_267EF4638();
    *(v0 + 304) = v9;
    v10 = *(v5 + 56);
    *(v10 + 214) = 1;
    v11 = sub_267E76140(v8);
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v70 = v10;
    v71 = v8;
    v72 = v7;
    v13 = sub_267BAF0DC(v11);
    v14 = 0;
    v6 = &off_279C2E000;
    while (1)
    {
      if (v13 == v14)
      {

        goto LABEL_19;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x26D609870](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = [v15 file];
      if (v17)
      {

        goto LABEL_18;
      }

      v18 = [v16 sharedLink];
      v19 = *(v0 + 280);
      if (v18)
      {
        v24 = v18;
        v25 = *(v0 + 264);
        v6 = *(v0 + 272);
        v26 = *(v0 + 256);

        sub_267EF2B48();

        (*(v25 + 32))(v19, v6, v26);
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v26);
        sub_267B9F98C(v19, &qword_280229E20, &unk_267EFDCC0);
LABEL_18:
        sub_267E98208(0);
LABEL_19:
        v8 = v71;
        v7 = v72;
        v10 = v70;
        goto LABEL_20;
      }

      v20 = *(v0 + 256);

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      sub_267B9F98C(v19, &qword_280229E20, &unk_267EFDCC0);
      ++v14;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

LABEL_20:
  v27 = sub_267C472B4(v9);
  if (v27 && (sub_267BAF0DC(v27), OUTLINED_FUNCTION_58_1(), , v6))
  {
    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v29))
    {
      v30 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v30);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_26();
    }

    v36 = *(v0 + 248);

    v37 = v8;
    v38 = v9;

    sub_267EF2CB8();
    v39 = type metadata accessor for TimedSentMessageContext(0);
    *(v36 + v39[5]) = 0x403E000000000000;
    *(v36 + v39[6]) = v7;
    *(v36 + v39[7]) = v37;
    *(v36 + v39[8]) = v38;
    *(v36 + v39[9]) = v10;
    v40 = v36;
    v41 = 0;
  }

  else
  {
    v42 = sub_267EF89F8();
    v43 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v43))
    {
      v44 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v44);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_26();
    }

    v50 = *(v0 + 248);

    v39 = type metadata accessor for TimedSentMessageContext(0);
    v40 = v50;
    v41 = 1;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
  sub_267C4CF24(*(v0 + 248));
  swift_beginAccess();
  sub_267B9A598(v10 + 224, v0 + 56, &qword_2802295C8, &qword_267EFDD28);
  if (*(v0 + 80))
  {
    sub_267B9A5E8((v0 + 56), v0 + 16);
    sub_267EF7C18();
    if (v51)
    {
      v52 = sub_267EF89F8();
      v53 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v53))
      {
        v54 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v54);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v55, v56, v57, v58, v59, 2u);
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_62_1((v0 + 16), *(v0 + 40));
      if (!*(v10 + 88))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
        sub_267EF8F28();
      }

      sub_267EEA0E0();

      *(v0 + 168) = 0;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      swift_beginAccess();
      sub_267C26980(v0 + 136, v10 + 224, &qword_2802295C8, &qword_267EFDD28);
      swift_endAccess();
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    sub_267B9F98C(v0 + 56, &qword_2802295C8, &qword_267EFDD28);
  }

  __swift_project_boxed_opaque_existential_0((*(v0 + 240) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(*(v0 + 240) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28() & 1) != 0 && (OUTLINED_FUNCTION_129((*(v0 + 240) + 16)), v60 = OUTLINED_FUNCTION_26_0(), v61(v60), OUTLINED_FUNCTION_92_3((v0 + 96)), OUTLINED_FUNCTION_66(), v62 = sub_267BF30D0(), __swift_destroy_boxed_opaque_existential_0((v0 + 96)), (v62))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 312) = v63;
    *v63 = v64;
    v63[1] = sub_267C3E888;
    OUTLINED_FUNCTION_15();

    return sub_267C42BEC();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 328) = v67;
    *v67 = v68;
    v67[1] = sub_267C3EA0C;
    OUTLINED_FUNCTION_15();

    return sub_267C3EFD8();
  }
}

uint64_t sub_267C3E888()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C3E980()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_30_2();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267C3EA0C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C3EB04()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_89_2();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C3EB8C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_89_2();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C3EC14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C3EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v10[5] = sub_267EF4648();
  v10[6] = sub_267EF4668();
  v11 = sub_267EF4638();
  v10[7] = v11;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = v11;
  v14 = sub_267EF89F8();
  v15 = sub_267EF95E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_48();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_267B9F98C(v17, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[8] = v24;
  *v24 = v25;
  v24[1] = sub_267C3EE0C;
  OUTLINED_FUNCTION_36_0();

  return sub_267CA5F80();
}

uint64_t sub_267C3EE0C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C3EF04()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_267C3EF6C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267C3EFD8()
{
  OUTLINED_FUNCTION_12();
  v1[68] = v0;
  v1[67] = v2;
  v1[66] = v3;
  v1[65] = v4;
  v1[64] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v6);
  v1[69] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v7);
  v1[70] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF4CC8();
  v1[71] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[72] = v9;
  v1[73] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF48A8();
  v1[74] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[75] = v11;
  v1[76] = OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90);
  OUTLINED_FUNCTION_18(v12);
  v1[77] = OUTLINED_FUNCTION_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v13);
  v1[78] = OUTLINED_FUNCTION_50();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v14 = sub_267EF2BA8();
  v1[81] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v1[82] = v15;
  v1[83] = OUTLINED_FUNCTION_50();
  v1[84] = swift_task_alloc();
  v16 = sub_267EF81B8();
  v1[85] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[86] = v17;
  v1[87] = OUTLINED_FUNCTION_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v18);
  v1[88] = OUTLINED_FUNCTION_2();
  v19 = sub_267EF79B8();
  v1[89] = v19;
  OUTLINED_FUNCTION_30_0(v19);
  v1[90] = v20;
  v1[91] = OUTLINED_FUNCTION_50();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_267C3F2D4()
{
  v220 = v0;
  if (qword_280228818 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v1 = sub_267EF8A08();
    v2 = __swift_project_value_buffer(v1, qword_280240FB0);
    *(v0 + 752) = v2;
    v209 = v2;
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = *(v0 + 544);
    v12 = *(v0 + 528);

    __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider), *(v11 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider + 24));
    LODWORD(v206) = sub_267BD1028();
    v212 = v0 + 728;
    *(v0 + 976) = v206 & 1;
    v13 = v11[5];
    v14 = v11[6];
    __swift_project_boxed_opaque_existential_0(v11 + 2, v13);
    OUTLINED_FUNCTION_77_1();
    v15(v13, v14);
    v16 = v11[7];
    v17 = [v12 speakableGroupName];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 spokenPhrase];
      sub_267EF9028();
    }

    else
    {
      v20 = *(v0 + 528);
      OUTLINED_FUNCTION_62_1((v0 + 16), *(v0 + 40));
      v21 = sub_267EF3C48();
      v22 = sub_267BCEA0C(v20);
      if (v21)
      {
        sub_267DA2578(v22);
      }

      else
      {
        sub_267DA2180();
      }
    }

    v23 = *(v0 + 528);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_267EF90F8();

    v24 = sub_267EF7C18();
    v26 = v25 ? v24 : 0;
    v27 = v25 ? v25 : 0xE000000000000000;
    v28 = sub_267DA133C(v23, v26, v27);
    *(v0 + 760) = v28;

    *(v0 + 496) = v28;
    sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
    sub_267EF8348();
    v29 = *(v0 + 536);
    v30 = *(v0 + 528);
    sub_267BA9F38(0, &qword_280229320, 0x277CD3D58);
    v31 = v29;
    v32 = sub_267E9299C(v30, v29);
    *(v0 + 768) = v32;
    [v32 setIntentHandlingStatus_];
    *(v0 + 504) = v32;
    sub_267EF8348();
    sub_267EF6FF8();
    v203 = v32;
    v197 = v28;
    if (sub_267EF6FC8())
    {
      sub_267EF6FA8();

      sub_267EF8698();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v36 = *(v0 + 704);
    v37 = *(v0 + 528);
    v38 = sub_267EF70D8();
    __swift_storeEnumTagSinglePayload(v36, v35, 1, v38);
    LODWORD(v200) = *(v16 + 210);
    *(v0 + 977) = v200;
    v218 = xmmword_267EFD5B0;
    v219 = 4;
    sub_267C5DD80(&v218, v39, v40, v41, v42, v43, v44, v45, v182, v186, v190);
    HIDWORD(v194) = sub_267C4507C();
    *(v0 + 978) = BYTE4(v194) & 1;
    *(v0 + 979) = sub_267C4689C() & 1;
    sub_267EF7C18();
    sub_267EF9778();

    v46 = sub_267EF96E8();
    v47 = sub_267E76140(v37);
    v48 = v47;
    *(v0 + 776) = v47;
    if ((v46 & 1) == 0)
    {
      break;
    }

    if (!v47)
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
      goto LABEL_57;
    }

    v49 = *(v0 + 656);
    v50 = 0;
    v216 = v47 & 0xC000000000000001;
    v217.i64[0] = sub_267BAF0DC(v47);
    v215 = v48 & 0xFFFFFFFFFFFFFF8;
    v182 = v49;
    v186 = (v49 + 32);
    v190 = MEMORY[0x277D84F90];
    v51 = &unk_267EFDCC0;
    while (1)
    {
      if (v217.i64[0] == v50)
      {
        v86 = *(v0 + 648);
        v87 = *(v0 + 640);

        sub_267C8F020(v190, v87);

        if (__swift_getEnumTagSinglePayload(v87, 1, v86) != 1)
        {
          (*v186)(*(v0 + 672), *(v0 + 640), *(v0 + 648));
          v88 = sub_267EF89F8();
          v89 = sub_267EF95D8();
          v90 = OUTLINED_FUNCTION_10_2(v89);
          if (v90)
          {
            v98 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v98);
            OUTLINED_FUNCTION_21();
            _os_log_impl(v99, v100, v101, v102, v103, 2u);
            OUTLINED_FUNCTION_26();
          }

          v104 = *(v0 + 744);
          v105 = *(v0 + 672);
          v106 = *(v0 + 544);
          v107 = *(v0 + 520);
          OUTLINED_FUNCTION_63_3(v90, v91, v92, v93, v94, v95, v96, v97, v182, v186, v190, v194, v197, v200, v203, v206, v209, v212);

          OUTLINED_FUNCTION_62_1((v106 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v106 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
          v108 = swift_task_alloc();
          *(v0 + 784) = v108;
          *(v108 + 16) = v107;
          *(v108 + 24) = v104;
          *(v108 + 32) = v105;
          *(v108 + 40) = vextq_s8(v217, v217, 8uLL);
          v109 = swift_task_alloc();
          *(v0 + 792) = v109;
          *v109 = v0;
          v109[1] = sub_267C40094;
          OUTLINED_FUNCTION_78_1();
          OUTLINED_FUNCTION_54_3();

          return sub_267CC6154();
        }

LABEL_57:
        sub_267B9F98C(*(v0 + 640), &qword_280229E20, &unk_267EFDCC0);
        v116 = sub_267EF89F8();
        sub_267EF95E8();
        OUTLINED_FUNCTION_56_2();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = OUTLINED_FUNCTION_32();
          *v118 = 0;
          _os_log_impl(&dword_267B93000, v116, v209, "#SendMessageHandleIntentFlowStrategy URL is missing for an audio message", v118, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        v119 = *(v0 + 736);
        v120 = *(v0 + 728);
        v121 = *(v0 + 720);
        v122 = *(v0 + 712);
        v123 = *(v0 + 704);
        v124 = *(v0 + 696);
        v125 = *(v0 + 688);
        v126 = *(v0 + 680);

        sub_267C266B0();
        swift_allocError();
        *v127 = 0xD000000000000024;
        v127[1] = 0x8000000267F12380;
        swift_willThrow();

        sub_267B9F98C(v123, &qword_2802295B0, &unk_267EFDCA0);
        (*(v125 + 8))(v124, v126);
        v128 = *(v121 + 8);
        v128(v120, v122);
        v128(v119, v122);
        v129 = v128;
        v129(*(v0 + 744), *(v0 + 712));

        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_54_3();

        __asm { BRAA            X1, X16 }
      }

      if (v216)
      {
        v52 = MEMORY[0x26D609870](v50, v48);
      }

      else
      {
        if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v52 = *(v48 + 8 * v50 + 32);
      }

      v53 = v52;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      v54 = v51;
      v55 = [v52 audioMessageFile];
      if (!v55)
      {
        v59 = *(v0 + 648);

        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
        v51 = v54;
        goto LABEL_37;
      }

      v56 = v55;
      v57 = [v55 fileURL];

      if (v57)
      {
        sub_267EF2B48();

        v58 = 0;
      }

      else
      {
        v58 = 1;
      }

      v63 = *(v0 + 648);
      v64 = *(v0 + 632);
      v65 = *(v0 + 624);

      __swift_storeEnumTagSinglePayload(v65, v58, 1, v63);
      v51 = v54;
      sub_267BBE134(v65, v64, &qword_280229E20, v54);
      if (__swift_getEnumTagSinglePayload(v64, 1, v63) == 1)
      {
LABEL_37:
        sub_267B9F98C(*(v0 + 632), &qword_280229E20, v51);
        ++v50;
      }

      else
      {
        v66 = *v186;
        (*v186)(*(v0 + 664), *(v0 + 632), *(v0 + 648));
        v67 = v190;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267C70BD8();
          v67 = v71;
        }

        v68 = *(v67 + 16);
        if (v68 >= *(v67 + 24) >> 1)
        {
          sub_267C70BD8();
          v67 = v72;
        }

        v69 = *(v0 + 664);
        v70 = *(v0 + 648);
        *(v67 + 16) = v68 + 1;
        v190 = v67;
        v66(v67 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v68, v69, v70);
        ++v50;
        v51 = v54;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  if (v47)
  {
    v73 = sub_267EF89F8();
    v74 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v74))
    {
      v75 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v75);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_129(v11 + 2);
    v81 = OUTLINED_FUNCTION_26_0();
    v82(v81);
    *(v0 + 816) = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    v83 = swift_task_alloc();
    *(v0 + 824) = v83;
    *v83 = v0;
    v83[1] = sub_267C403FC;
    OUTLINED_FUNCTION_54_3();

    __asm { BR              X0 }
  }

  if (sub_267D28BAC())
  {
    v136 = *(v0 + 744);
    v137 = *(v0 + 696);
    v138 = *(v0 + 528);
    v139 = *(v0 + 520);
    OUTLINED_FUNCTION_63_3(*(v0 + 544) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns, *(*(v0 + 544) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24), v130, v131, v132, v133, v134, v135, v183, v187, v191, v194, v197, v200, v203, v206, v209, v212);
    OUTLINED_FUNCTION_62_1(v140, v141);
    v142 = swift_task_alloc();
    *(v0 + 872) = v142;
    v142[1].i64[0] = v139;
    v142[1].i64[1] = v136;
    v142[2].i64[0] = v138;
    v142[2].i64[1] = v137;
    OUTLINED_FUNCTION_79_1(v142, v143, v144, v145, v146, v147, v148, v149, v150, v184, v188, v192, v195, v198, v201, v204, v207, v210, v213, v215, v216, v151);
    v152 = swift_task_alloc();
    *(v0 + 880) = v152;
    *v152 = v0;
    v152[1] = sub_267C40AA4;
    OUTLINED_FUNCTION_54_3();

    return sub_267CC66E0();
  }

  else
  {
    v154 = sub_267EF89F8();
    v155 = sub_267EF95D8();
    v156 = OUTLINED_FUNCTION_10_2(v155);
    if (v156)
    {
      v164 = OUTLINED_FUNCTION_32();
      *v164 = 0;
      _os_log_impl(&dword_267B93000, v154, v37, "#SendMessageHandleIntentFlowStrategy executing pattern to inform sent text message", v164, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v165 = *(v0 + 744);
    v166 = *(v0 + 696);
    v167 = *(v0 + 544);
    v168 = *(v0 + 528);
    v169 = *(v0 + 520);
    OUTLINED_FUNCTION_63_3(v156, v157, v158, v159, v160, v161, v162, v163, v183, v187, v191, v194, v197, v200, v203, v206, v209, v212);

    OUTLINED_FUNCTION_62_1((v167 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v167 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
    v170 = swift_task_alloc();
    *(v0 + 904) = v170;
    v170[1].i64[0] = v169;
    v170[1].i64[1] = v165;
    v170[2].i64[0] = v168;
    v170[2].i64[1] = v166;
    OUTLINED_FUNCTION_79_1(v170, v171, v172, v173, v174, v175, v176, v177, v178, v185, v189, v193, v196, v199, v202, v205, v208, v211, v214, v215, v216, v179);
    v180 = swift_task_alloc();
    *(v0 + 912) = v180;
    *v180 = v0;
    v180[1] = sub_267C40DA0;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_54_3();

    return sub_267CC6C48();
  }
}

uint64_t sub_267C40094()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 800) = v0;

  OUTLINED_FUNCTION_76_2();
  if (!v0)
  {
    *(v3 + 808) = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C401B8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(*(v0 + 656) + 8);
  v2 = *(v0 + 808);
  v3 = OUTLINED_FUNCTION_66();
  v1(v3);
  OUTLINED_FUNCTION_61_5(*(v0 + 808));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_85_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_19(v5);

  return sub_267C469FC(v7);
}

uint64_t sub_267C40258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = v22[95];
  v43 = v22[91];
  v44 = v22[92];
  OUTLINED_FUNCTION_24_3();
  v42 = v22[87];
  v25 = v22[86];
  v26 = v22[85];
  v27 = v22[84];
  v28 = v22[82];
  v29 = v22[81];

  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  (*(v28 + 8))(v27, v29);
  (*(v25 + 8))(v42, v26);
  v31 = *(v20 + 8);
  v31(v43, v21);
  v31(v44, v21);
  OUTLINED_FUNCTION_3_12();
  v32 = OUTLINED_FUNCTION_1_20();
  (v31)(v32);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, v42, v43, v44, a18, a19, a20);
}

uint64_t sub_267C403FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 832) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C404E4()
{
  v1 = (v0 + 296);
  sub_267EF8458();

  if (*(v0 + 440))
  {
    v2 = *(v0 + 832);
    sub_267B9A5E8((v0 + 416), v0 + 376);
    sub_267B9AFEC(v0 + 376, v0 + 456);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  }

  else
  {

    sub_267B9F98C(v0 + 416, &qword_28022BB10, &qword_267EFDCF0);
    sub_267EF8338();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  v7 = *(v0 + 616);
  v8 = sub_267EF8338();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  v10 = *(v0 + 816);
  if (EnumTagSinglePayload == 1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 336));

    sub_267B9F98C(v7, &unk_28022BB00, &unk_267EFCF90);
    *v1 = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  else
  {
    sub_267EF8318();

    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
    v11 = OUTLINED_FUNCTION_108();
    v12(v11);
  }

  v13 = *(v0 + 744);
  v14 = *(v0 + 736);
  v15 = *(v0 + 728);
  v16 = *(v0 + 696);
  v17 = *(v0 + 528);
  v18 = *(v0 + 520);
  OUTLINED_FUNCTION_62_1((*(v0 + 544) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(*(v0 + 544) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
  v19 = swift_task_alloc();
  *(v0 + 840) = v19;
  v19[2] = v18;
  v19[3] = v13;
  v19[4] = v1;
  v19[5] = v17;
  v19[6] = v16;
  v19[7] = v14;
  v19[8] = v15;
  v20 = swift_task_alloc();
  *(v0 + 848) = v20;
  *v20 = v0;
  v20[1] = sub_267C4075C;

  return sub_267CC5BA8();
}

uint64_t sub_267C4075C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 856) = v0;

  OUTLINED_FUNCTION_76_2();
  if (!v0)
  {
    *(v3 + 864) = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C40880()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 978) & ~*(v0 + 979);
  v2 = *(v0 + 864);
  sub_267B9F98C(v0 + 296, &qword_28022BB10, &qword_267EFDCF0);
  *(v0 + 936) = *(v0 + 864);
  *(v0 + 980) = v1 & 1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_85_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_19(v4);

  return sub_267C469FC(v6);
}

uint64_t sub_267C40924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = v22[95];
  v40 = v22[92];
  v25 = v22[91];
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_70_3(v26);

  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  sub_267B9F98C((v22 + 37), &qword_28022BB10, &qword_267EFDCF0);
  v27 = OUTLINED_FUNCTION_25_8();
  v28(v27);
  v29 = *(v20 + 8);
  v29(v25, v21);
  v29(v40, v21);
  OUTLINED_FUNCTION_3_12();
  v30 = OUTLINED_FUNCTION_1_20();
  (v29)(v30);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, v40, a18, a19, a20);
}

uint64_t sub_267C40AA4()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 888) = v0;

  OUTLINED_FUNCTION_76_2();
  if (!v0)
  {
    *(v3 + 896) = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C40BC8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_5(*(v0 + 896));
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_85_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_19(v4);

  return sub_267C469FC(v6);
}

uint64_t sub_267C40C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = *(v22 + 760);
  v25 = *(v22 + 736);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_70_3(v26);

  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  v27 = OUTLINED_FUNCTION_25_8();
  v28(v27);
  v29 = *(v20 + 8);
  v30 = OUTLINED_FUNCTION_26_0();
  v29(v30);
  (v29)(v25, v21);
  OUTLINED_FUNCTION_3_12();
  v31 = OUTLINED_FUNCTION_1_20();
  v29(v31);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C40DA0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 920) = v0;

  OUTLINED_FUNCTION_76_2();
  if (!v0)
  {
    *(v3 + 928) = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C40EC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_61_5(*(v0 + 928));
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_85_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_19(v4);

  return sub_267C469FC(v6);
}

uint64_t sub_267C40F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = *(v22 + 760);
  v25 = *(v22 + 736);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_70_3(v26);

  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  v27 = OUTLINED_FUNCTION_25_8();
  v28(v27);
  v29 = *(v20 + 8);
  v30 = OUTLINED_FUNCTION_26_0();
  v29(v30);
  (v29)(v25, v21);
  OUTLINED_FUNCTION_3_12();
  v31 = OUTLINED_FUNCTION_1_20();
  v29(v31);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C4109C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C41180()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 936);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 936);
    v5 = OUTLINED_FUNCTION_48();
    v29 = swift_slowAlloc();
    *v5 = 136315138;
    v6 = [v4 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_81_2();

    v7 = OUTLINED_FUNCTION_68_0();
    v10 = sub_267BA33E8(v7, v8, v9);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v16 = *(v0 + 544);
  sub_267C462E4();
  v17 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v17);
  *(v0 + 952) = sub_267EF4188();
  v18 = v16[5];
  v19 = v16[6];
  __swift_project_boxed_opaque_existential_0(v16 + 2, v18);
  (*(v19 + 8))(v18, v19);
  OUTLINED_FUNCTION_62_1((v0 + 96), *(v0 + 120));
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 960) = v20;
  *v20 = v21;
  v20[1] = sub_267C41380;
  OUTLINED_FUNCTION_36_0();

  return sub_267BCF3A4(v22, v23, v24, v25, v26);
}

uint64_t sub_267C41380()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 968) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C414AC()
{
  OUTLINED_FUNCTION_129((*(v0 + 544) + 16));
  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);
  OUTLINED_FUNCTION_62_1((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_26_0();
  v3 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  if (v3)
  {
    sub_267B9AFEC(v0 + 56, v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_11(*(v0 + 560));
      v4 = OUTLINED_FUNCTION_108();
      v5(v4);
      v6 = sub_267EF4CB8();
      if (sub_267BAF0DC(v6))
      {
        v7 = (v6 & 0xC000000000000001);
        sub_267BBD0EC(0, (v6 & 0xC000000000000001) == 0, v6);
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D609870](0, v6);
        }

        else
        {
          v8 = *(v6 + 32);
        }

        OUTLINED_FUNCTION_58_1();

        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          result = sub_267D99704(v9);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v11 = sub_267BAF0DC(result);

          if (v11)
          {
            v12 = OUTLINED_FUNCTION_75_0();
            v13(v12);
          }

          else
          {
            v23 = *(v0 + 752);
            v24 = sub_267EF89F8();
            sub_267EF95D8();
            OUTLINED_FUNCTION_56_2();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v26);
              OUTLINED_FUNCTION_48_3(&dword_267B93000, v24, v23, "#SendMessageHandleIntentFlowStrategy output is empty, adding AddViews");
              OUTLINED_FUNCTION_26();
            }

            v27 = *(v0 + 568);

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
            OUTLINED_FUNCTION_94();
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_267EFCA40;
            v29 = OUTLINED_FUNCTION_68_0();
            sub_267C463F4(v29);
            *(v28 + 32) = v30;
            v31 = MEMORY[0x277D5C1D8];
            *(v0 + 280) = v27;
            *(v0 + 288) = v31;
            __swift_allocate_boxed_opaque_existential_0((v0 + 256));
            sub_267EF4C78();
            sub_267EF4C88();
            sub_267EF4C98();

            v32 = OUTLINED_FUNCTION_108();
            v33(v32);
            __swift_destroy_boxed_opaque_existential_0((v0 + 56));
            sub_267B9A5E8((v0 + 256), v0 + 56);
          }
        }

        else
        {

          v21 = OUTLINED_FUNCTION_108();
          v22(v21);
        }
      }

      else
      {
        v19 = OUTLINED_FUNCTION_75_0();
        v20(v19);
      }
    }

    else
    {
      v14 = *(v0 + 560);
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      sub_267B9F98C(v14, &qword_28022BB70, &unk_267F0BA10);
    }
  }

  v34 = *(v0 + 980);
  sub_267C452EC();
  if (v34 == 1)
  {
    sub_267C45D6C(v0 + 56, (v0 + 176));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_267B9A5E8((v0 + 176), v0 + 56);
  }

  v35 = *(v0 + 752);
  v36 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_56_2();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_32();
    *v38 = 0;
    _os_log_impl(&dword_267B93000, v36, v35, "#SendMessageHandleIntentFlowStrategy returning output", v38, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v39 = *(v0 + 760);
  v54 = *(v0 + 736);
  v55 = *(v0 + 744);
  v40 = *(v0 + 720);
  v41 = *(v0 + 712);
  v49 = *(v0 + 936);
  v50 = *(v0 + 704);
  v52 = *(v0 + 696);
  v53 = *(v0 + 728);
  v42 = *(v0 + 688);
  v51 = *(v0 + 680);
  v43 = *(v0 + 608);
  v44 = *(v0 + 600);
  v45 = *(v0 + 592);
  v46 = *(v0 + 512);

  (*(v44 + 8))(v43, v45);
  sub_267B9F98C(v50, &qword_2802295B0, &unk_267EFDCA0);
  sub_267B9A5E8((v0 + 56), v46);
  (*(v42 + 8))(v52, v51);
  v47 = *(v40 + 8);
  v47(v53, v41);
  v47(v54, v41);
  v47(v55, v41);

  OUTLINED_FUNCTION_1();

  return v48();
}

uint64_t sub_267C41A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v24 = v22[117];
  v25 = v22[95];
  v44 = v22[91];
  v45 = v22[92];
  OUTLINED_FUNCTION_24_3();
  v26 = v22[86];
  v42 = v22[85];
  v43 = v22[87];
  v27 = v22[76];
  v28 = v22[75];
  v29 = v22[74];

  (*(v28 + 8))(v27, v29);
  sub_267B9F98C(v23, &qword_2802295B0, &unk_267EFDCA0);
  __swift_destroy_boxed_opaque_existential_0(v22 + 12);
  (*(v26 + 8))(v43, v42);
  v31 = *(v20 + 8);
  v31(v44, v21);
  v31(v45, v21);
  OUTLINED_FUNCTION_3_12();
  v32 = OUTLINED_FUNCTION_1_20();
  (v31)(v32);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, v42, v43, v44, v45, a18, a19, a20);
}

uint64_t sub_267C41BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_267EF2BA8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_267EF83D8();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C41D54, 0, 0);
}

uint64_t sub_267C41D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = v18[13];
  v20 = v18[11];
  v21 = v18[12];
  v22 = v18[9];
  v23 = v18[10];
  v47 = v18[8];
  v48 = v18[14];
  v24 = v18[4];
  v46 = v18[5];
  v25 = v18[2];
  sub_267EF7958();
  OUTLINED_FUNCTION_58_1();

  v27 = sub_267E80518(v26);

  *v25 = v27;
  v45 = type metadata accessor for SendMessageSentAudioMessageParameters(0);
  v28 = v45[10];
  sub_267B9F98C(v25 + v28, &unk_28022AE30, &qword_267EFC0B0);
  v29 = sub_267EF79B8();
  OUTLINED_FUNCTION_22();
  v43 = v30 + 16;
  v44 = *(v30 + 16);
  v44(v25 + v28, v24, v29);
  OUTLINED_FUNCTION_14_11(v25 + v28);
  (*(v22 + 16))(v23, v46, v47);
  sub_267EF83C8();
  OUTLINED_FUNCTION_72_2();
  (*(v21 + 8))(v19, v20);
  if (v24)
  {

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v47 = v18[6];
    v48 = v18[7];
    v31 = v18[2];
    OUTLINED_FUNCTION_14_11(v18[14]);
    OUTLINED_FUNCTION_50_4(v45[8]);
    v32 = v45[14];
    OUTLINED_FUNCTION_71_2();
    v44((v31 + v32), v47, v29);
    OUTLINED_FUNCTION_14_11(v31 + v32);
    v33 = v45[12];
    sub_267B9F98C(v31 + v33, &unk_28022AE30, &qword_267EFC0B0);
    v44((v31 + v33), v48, v29);
    OUTLINED_FUNCTION_14_11(v31 + v33);

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_89();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, v48, a15, a16, a17, a18);
}

uint64_t sub_267C41F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v9 = sub_267EF81B8();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v10 = sub_267EF81D8();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C42108, 0, 0);
}

uint64_t sub_267C42108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = *(v18 + 112);
  v19 = *(v18 + 120);
  v21 = *(v18 + 96);
  sub_267EF7958();
  OUTLINED_FUNCTION_58_1();

  v23 = sub_267E80518(v22);

  *v21 = v23;
  v24 = type metadata accessor for SendMessageSentAttachmentMessageParameters(0);
  v25 = v24[10];
  sub_267B9F98C(v21 + v25, &unk_28022AE30, &qword_267EFC0B0);
  v26 = sub_267EF79B8();
  OUTLINED_FUNCTION_22();
  v28 = *(v27 + 16);
  v29 = v27 + 16;
  v28(v21 + v25, v20, v26);
  OUTLINED_FUNCTION_14_11(v21 + v25);
  sub_267B9A598(v19, v18 + 56, &qword_28022BB10, &qword_267EFDCF0);
  if (*(v18 + 80))
  {
    v30 = *(v18 + 224);
    v31 = *(v18 + 96);
    sub_267B9A5E8((v18 + 56), v18 + 16);
    __swift_project_boxed_opaque_existential_0((v18 + 16), *(v18 + 40));
    swift_getDynamicType();
    sub_267EF83B8();
    sub_267EF90F8();

    OUTLINED_FUNCTION_14_11(v30);
    sub_267C26980(v30, v31 + v24[7], &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_92_3((v18 + 16));
    sub_267EF8348();
    v57 = v29;
    v32 = *(v18 + 216);
    v33 = *(v18 + 96);
    OUTLINED_FUNCTION_14_11(v32);
    sub_267C26980(v32, v33 + v24[6], &unk_28022AE30, &qword_267EFC0B0);
    __swift_destroy_boxed_opaque_existential_0((v18 + 16));
  }

  else
  {
    v57 = v29;
    sub_267B9F98C(v18 + 56, &qword_28022BB10, &qword_267EFDCF0);
  }

  sub_267ED9A2C(*(v18 + 128));
  if (v34)
  {
    (*(*(v18 + 168) + 16))(*(v18 + 176), *(v18 + 136), *(v18 + 160));
    OUTLINED_FUNCTION_108();
    sub_267EF81C8();
    sub_267EF8348();
    v35 = *(v18 + 208);
    v36 = *(v18 + 96);
    (*(*(v18 + 192) + 8))(*(v18 + 200), *(v18 + 184));
    OUTLINED_FUNCTION_14_11(v35);
    sub_267C26980(v35, v36 + v24[17], &unk_28022AE30, &qword_267EFC0B0);
  }

  v52 = *(v18 + 224);
  v53 = *(v18 + 216);
  v54 = *(v18 + 208);
  v55 = *(v18 + 200);
  v56 = *(v18 + 176);
  v37 = v28;
  v39 = *(v18 + 144);
  v38 = *(v18 + 152);
  v40 = *(v18 + 96);
  v41 = v24[14];
  sub_267B9F98C(v40 + v41, &unk_28022AE30, &qword_267EFC0B0);
  v37(v40 + v41, v39, v26);
  OUTLINED_FUNCTION_14_11(v40 + v41);
  v42 = v24[12];
  sub_267B9F98C(v40 + v42, &unk_28022AE30, &qword_267EFC0B0);
  v37(v40 + v42, v38, v26);
  OUTLINED_FUNCTION_14_11(v40 + v42);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v52, v53, v54, v55, v56, v57, a15, a16, a17, a18);
}

uint64_t sub_267C424F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_267EF81B8();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_267EF81D8();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C42654, 0, 0);
}

uint64_t sub_267C42654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_58_1();

  v25 = sub_267E80518(v24);

  *v20 = v25;
  v42 = type metadata accessor for SendMessageSentSpecialEmergencyMessageParameters(0);
  v26 = *(v42 + 36);
  sub_267B9F98C(v20 + v26, &unk_28022AE30, &qword_267EFC0B0);
  v27 = sub_267EF79B8();
  OUTLINED_FUNCTION_22();
  v40 = v28 + 16;
  v41 = *(v28 + 16);
  v41(v20 + v26, v23, v27);
  OUTLINED_FUNCTION_14_11(v20 + v26);
  sub_267ED9A2C(a13);
  (*(v21 + 16))(v22, a14, a15);
  OUTLINED_FUNCTION_108();
  sub_267EF81C8();
  OUTLINED_FUNCTION_72_2();
  v29 = OUTLINED_FUNCTION_25_8();
  v30(v29);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C42870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_267EF81B8();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_267EF81D8();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C429D0, 0, 0);
}

uint64_t sub_267C429D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_58_1();

  v25 = sub_267E80518(v24);

  *v20 = v25;
  v42 = type metadata accessor for SendMessageSentTextMessageParameters(0);
  v26 = *(v42 + 40);
  sub_267B9F98C(v20 + v26, &unk_28022AE30, &qword_267EFC0B0);
  v27 = sub_267EF79B8();
  OUTLINED_FUNCTION_22();
  v40 = v28 + 16;
  v41 = *(v28 + 16);
  v41(v20 + v26, v23, v27);
  OUTLINED_FUNCTION_14_11(v20 + v26);
  sub_267ED9A2C(a13);
  (*(v21 + 16))(v22, a14, a15);
  OUTLINED_FUNCTION_108();
  sub_267EF81C8();
  OUTLINED_FUNCTION_72_2();
  v29 = OUTLINED_FUNCTION_25_8();
  v30(v29);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267C42BEC()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_267EF8178();
  v1[30] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[31] = v5;
  v1[32] = OUTLINED_FUNCTION_50();
  v1[33] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v1[34] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[35] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF83E8();
  v1[36] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[37] = v8;
  v1[38] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295C0, &qword_267EFDCB8);
  OUTLINED_FUNCTION_18(v9);
  v1[39] = OUTLINED_FUNCTION_50();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v10 = sub_267EF48A8();
  v1[42] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[43] = v11;
  v1[44] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF79B8();
  v1[45] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[46] = v13;
  v1[47] = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267C42DF8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v0[48] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v2, v3, "#SendMessageHandleIntentFlowStrategy generating SMART output for handled response");
    OUTLINED_FUNCTION_26();
  }

  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v5 = sub_267EF4668();
  v0[50] = v5;
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  v6[1] = sub_267C42F40;

  return sub_267C469FC(v5);
}

uint64_t sub_267C42F40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 400);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C4303C()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 232);
  v2 = sub_267EF4668();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v3);
  OUTLINED_FUNCTION_77_1();
  v5(v3, v4);
  *(v0 + 416) = v1[14];
  v6 = [v2 speakableGroupName];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 spokenPhrase];
    sub_267EF9028();

    v2 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_62_1((v0 + 16), *(v0 + 40));
    v9 = sub_267EF3C48();
    v10 = sub_267BCEA0C(v2);
    if (v9)
    {
      sub_267DA2578(v10);
    }

    else
    {
      sub_267DA2180();
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267EF90F8();

  *(v0 + 520) = sub_267C4507C() & 1;
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  *v11 = v0;
  v11[1] = sub_267C43218;

  return sub_267C442D0();
}

uint64_t sub_267C43218()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v4;
  *(v2 + 440) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_267C43318(uint64_t a1)
{
  v2 = *(v1 + 520);
  if (v2 == 1)
  {
    sub_267C97B50();
  }

  v3 = *(v1 + 432);
  v4 = *(v1 + 232);
  sub_267C462E4();
  v5 = [v3 catId];
  sub_267EF9028();

  sub_267EF47D8();
  OUTLINED_FUNCTION_129((v4 + 16));
  v6 = OUTLINED_FUNCTION_26_0();
  v7(v6);
  OUTLINED_FUNCTION_92_3((v1 + 56));
  OUTLINED_FUNCTION_66();
  LOBYTE(v5) = OUTLINED_FUNCTION_28_3();
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  if (v5)
  {
    v8 = *(v1 + 432);
    v9 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v9);
    *(v1 + 448) = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v10 = swift_allocObject();
    *(v1 + 456) = v10;
    *(v10 + 16) = xmmword_267EFCA40;
    *(v10 + 32) = v8;
    OUTLINED_FUNCTION_35_5(MEMORY[0x277D5BD50]);
    v11 = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 464) = v12;
    *v12 = v13;
    v12[1] = sub_267C43A70;
    OUTLINED_FUNCTION_15();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  if (v2)
  {
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v21))
    {
      v22 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v22);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_26();
    }

    if (qword_280228708 != -1)
    {
      swift_once();
    }

    v28 = *(v1 + 320);
    v29 = *(v1 + 296);
    v30 = *(v1 + 304);
    v32 = *(v1 + 280);
    v31 = *(v1 + 288);
    v33 = *(v1 + 248);
    v72 = *(v1 + 328);
    v74 = *(v1 + 240);
    v34 = sub_267EF2BA8();
    v35 = __swift_project_value_buffer(v34, qword_280229560);
    (*(*(v34 - 8) + 16))(v30, v35, v34);
    (*(v29 + 104))(v30, *MEMORY[0x277D5D6E0], v31);
    sub_267C7FE68();
    sub_267EFA028();
    sub_267B9F98C(v32, &qword_2802295B8, &qword_267EFDCB0);
    sub_267EF83F8();
    sub_267B9F98C(v72, &qword_2802295C0, &qword_267EFDCB8);
    (*(v33 + 104))(v28, *MEMORY[0x277D5D358], v74);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v74);
    sub_267BBE134(v28, v72, &qword_2802295C0, &qword_267EFDCB8);
  }

  v73 = *(v1 + 312);
  v75 = *(v1 + 328);
  v36 = *(v1 + 264);
  v37 = *(v1 + 248);
  v71 = *(v1 + 240);
  sub_267EF4668();
  sub_267EF4638();
  sub_267EF7998();
  v38 = sub_267EF4668();
  sub_267CA85BC(v38);

  sub_267EF8468();
  (*(v37 + 104))(v36, *MEMORY[0x277D5D360], v71);
  sub_267B9A598(v75, v73, &qword_2802295C0, &qword_267EFDCB8);
  if (__swift_getEnumTagSinglePayload(v73, 1, v71) == 1)
  {
    v39 = *(v1 + 432);
    v40 = *(v1 + 264);
    v41 = *(v1 + 240);
    v42 = *(v1 + 248);
    sub_267B9F98C(*(v1 + 312), &qword_2802295C0, &qword_267EFDCB8);
    v43 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v43);
    *(v1 + 496) = sub_267EF4188();
    *(v1 + 120) = v41;
    OUTLINED_FUNCTION_28_9();
    *(v1 + 128) = sub_267C473D0(v44, v45, MEMORY[0x277D5D398]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 96));
    (*(v42 + 16))(boxed_opaque_existential_0, v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v47 = swift_allocObject();
    *(v1 + 504) = v47;
    *(v47 + 16) = xmmword_267EFCA40;
    *(v47 + 32) = v39;
    OUTLINED_FUNCTION_35_5(MEMORY[0x277D5BD38]);
    v48 = v39;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 512) = v49;
    *v49 = v50;
    v49[1] = sub_267C43F5C;
    OUTLINED_FUNCTION_15();

    __asm { BR              X4 }
  }

  v53 = *(v1 + 432);
  v54 = *(v1 + 256);
  v55 = *(v1 + 264);
  v56 = *(v1 + 240);
  v57 = *(v1 + 248);
  (*(v57 + 32))(v54, *(v1 + 312), v56);
  v58 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v58);
  *(v1 + 472) = sub_267EF4188();
  *(v1 + 160) = v56;
  OUTLINED_FUNCTION_28_9();
  v61 = sub_267C473D0(v59, v60, MEMORY[0x277D5D398]);
  *(v1 + 168) = v61;
  v62 = __swift_allocate_boxed_opaque_existential_0((v1 + 136));
  v63 = *(v57 + 16);
  v63(v62, v55, v56);
  *(v1 + 200) = v56;
  *(v1 + 208) = v61;
  v64 = __swift_allocate_boxed_opaque_existential_0((v1 + 176));
  v63(v64, v54, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v65 = swift_allocObject();
  *(v1 + 480) = v65;
  *(v65 + 16) = xmmword_267EFCA40;
  *(v65 + 32) = v53;
  OUTLINED_FUNCTION_35_5(MEMORY[0x277D5BD30]);
  v66 = v53;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 488) = v67;
  *v67 = v68;
  v67[1] = sub_267C43CB8;
  OUTLINED_FUNCTION_15();

  __asm { BR              X5 }
}

uint64_t sub_267C43A70()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C43B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  sub_267EF4648();
  sub_267C452EC();

  sub_267EF89F8();
  v19 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v19))
  {
    v20 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v20);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_10_12();

  v26 = OUTLINED_FUNCTION_62_2();
  v27(v26);
  v28 = OUTLINED_FUNCTION_26_0();
  v29(v28);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267C43CB8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C43DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = v18[41];
  v21 = *(v18[31] + 8);
  (v21)(v18[32], v18[30]);
  v22 = OUTLINED_FUNCTION_26_0();
  v21(v22);
  sub_267B9F98C(v20, &qword_2802295C0, &qword_267EFDCB8);
  sub_267EF4648();
  sub_267C452EC();

  sub_267EF89F8();
  v23 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v23))
  {
    v24 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v24);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v25, v26, v27, v28, v29, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_10_12();

  v30 = OUTLINED_FUNCTION_62_2();
  v31(v30);
  v32 = OUTLINED_FUNCTION_26_0();
  v33(v32);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267C43F5C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C44084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = v18[41];
  (*(v18[31] + 8))(v18[33], v18[30]);
  sub_267B9F98C(v20, &qword_2802295C0, &qword_267EFDCB8);
  sub_267EF4648();
  sub_267C452EC();

  sub_267EF89F8();
  v21 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v21))
  {
    v22 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v22);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_10_12();

  v28 = OUTLINED_FUNCTION_62_2();
  v29(v28);
  v30 = OUTLINED_FUNCTION_26_0();
  v31(v30);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267C441E4()
{
  (*(v0[46] + 8))(v0[47], v0[45]);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C442D0()
{
  OUTLINED_FUNCTION_12();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v4);
  v1[17] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C4434C()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD0, &qword_267F08290);
  v2 = sub_267EF4668();
  v0[18] = v2;
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider + 24));
  sub_267BD1028();
  sub_267EF7958();
  v3 = sub_267EF4648();
  v0[19] = sub_267E80518(v3);
  v4 = sub_267C4689C();
  if (sub_267EF96E8())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v7))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_64_4();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    type metadata accessor for SendMessageCATsSimple(0);
    sub_267EF7B68();
    v0[20] = sub_267EF79E8();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[21] = v13;
    *v13 = v14;
    v13[1] = sub_267C448A4;
    OUTLINED_FUNCTION_122();

    return sub_267E9E270(v15, v16, v17, v18);
  }

  else
  {
    v21 = sub_267E76140(v2);
    if (v21 && (v22 = sub_267BAF0DC(v21), , v22))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v23 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
      v24 = sub_267EF89F8();
      v25 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v25))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_86_0(&dword_267B93000, v26, v27, "#SendMessageHandleIntentFlowStrategy executing CAT to inform sent message with attachment");
        OUTLINED_FUNCTION_32_0();
      }

      v28 = v0[15];

      *v28 &= ~v4 & 1;
      type metadata accessor for SendMessageCATsSimple(0);
      sub_267EF7B68();
      v0[23] = sub_267EF79E8();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[24] = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_59_4(v29);
      OUTLINED_FUNCTION_122();

      return sub_267E9E000(v31, v32, v33, v34, v35);
    }

    else if (sub_267D28BAC())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v37 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v37, qword_280240FB0);
      v38 = sub_267EF89F8();
      v39 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v39))
      {
        v40 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v40);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v41, v42, v43, v44, v45, 2u);
        OUTLINED_FUNCTION_26();
      }

      type metadata accessor for SendMessageCATsSimple(0);
      sub_267EF7B68();
      v0[26] = sub_267EF79E8();
      v46 = swift_task_alloc();
      v0[27] = v46;
      *v46 = v0;
      v46[1] = sub_267C44BB4;
      OUTLINED_FUNCTION_122();

      return sub_267E9E400();
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v48 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
      v49 = sub_267EF89F8();
      v50 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v50))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_86_0(&dword_267B93000, v51, v52, "#SendMessageHandleIntentFlowStrategy executing CAT to inform sent text message");
        OUTLINED_FUNCTION_32_0();
      }

      type metadata accessor for SendMessageCATsSimple(0);
      sub_267EF7B68();
      v0[29] = sub_267EF79E8();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[30] = v53;
      *v53 = v54;
      OUTLINED_FUNCTION_59_4(v53);
      OUTLINED_FUNCTION_122();

      return sub_267E9E4A8(v55, v56, v57, v58, v59);
    }
  }
}

uint64_t sub_267C448A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_84();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 176) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C449BC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();

  v0 = OUTLINED_FUNCTION_18_7();

  return v1(v0);
}

uint64_t sub_267C44A2C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_84();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C44B44()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();

  v0 = OUTLINED_FUNCTION_18_7();

  return v1(v0);
}

uint64_t sub_267C44BB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  OUTLINED_FUNCTION_84();
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  v3[28] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C44CBC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();

  v0 = OUTLINED_FUNCTION_18_7();

  return v1(v0);
}

uint64_t sub_267C44D2C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  OUTLINED_FUNCTION_84();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 248) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C44E44()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();

  v0 = OUTLINED_FUNCTION_18_7();

  return v1(v0);
}

uint64_t sub_267C44EB4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C44F24()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C44F94()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C4500C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267C4507C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - v4;
  OUTLINED_FUNCTION_82_1();
  if (!v13)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v17 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_56_2();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v20);
    v21 = "#SendMessageHandleIntentFlowStrategy auto send wasn't triggered, not providing auto send hint";
LABEL_14:
    OUTLINED_FUNCTION_48_3(&dword_267B93000, v18, v0, v21);
    OUTLINED_FUNCTION_26();
LABEL_15:

    v25 = 0;
    return v25 & 1;
  }

  LOBYTE(v31) = 4;
  LOBYTE(v0) = v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore;
  sub_267C5DD80(&v30, v6, v7, v8, v9, v10, v11, v12, 4, 0, v31);
  if (!v14)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
    v18 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_56_2();
    if (!os_log_type_enabled(v18, v23))
    {
      goto LABEL_15;
    }

    v24 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v24);
    v21 = "#SendMessageHandleIntentFlowStrategy auto send enablement didn't occur, not providing auto send hint";
    goto LABEL_14;
  }

  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8698();

    v15 = sub_267EF70D8();
    v16 = 0;
  }

  else
  {
    v15 = sub_267EF70D8();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v16, 1, v15);
  v26 = v1[5];
  v27 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v26);
  OUTLINED_FUNCTION_77_1();
  v28(&v30, v26, v27);
  v25 = sub_267C97C34(v5, &v30);
  __swift_destroy_boxed_opaque_existential_0(&v30);
  sub_267B9F98C(v5, &qword_2802295B0, &unk_267EFDCA0);
  return v25 & 1;
}

void sub_267C452EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v0);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v1);
  v2 = sub_267EF70D8();
  OUTLINED_FUNCTION_23();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  OUTLINED_FUNCTION_82_1();
  if (v14)
  {
    v15 = sub_267EF6FF8();
    if (sub_267EF6FC8())
    {
      sub_267EF6FA8();

      sub_267EF8698();

      (*(v4 + 32))(v13, v11, v2);
      sub_267EF7088();
      sub_267C473D0(&qword_28022BB90, MEMORY[0x277D61CC8], MEMORY[0x277D61CD8]);
      v15 = sub_267EF8FE8();
      v16 = *(v4 + 8);
      v17 = v16(v8, v2);
      if ((v15 & 1) == 0)
      {
        sub_267BE84FC(v17);
        v27 = sub_267EF8398();
        if (v27)
        {
          v28 = v27;
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v29 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
          v30 = sub_267EF89F8();
          v31 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v31))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_64_4();
            _os_log_impl(v32, v33, v34, v35, v36, 2u);
            OUTLINED_FUNCTION_32_0();
          }

          sub_267EF93F8();
          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
          OUTLINED_FUNCTION_94();
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v41[4] = v28;
          v42 = v28;
          sub_267E8FA18();
        }

        else
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v43 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v43, qword_280240FB0);
          v44 = sub_267EF89F8();
          v45 = sub_267EF95E8();
          if (OUTLINED_FUNCTION_5_2(v45))
          {
            v46 = OUTLINED_FUNCTION_32();
            *v46 = 0;
            _os_log_impl(&dword_267B93000, v44, v45, "#SendMessageHandleIntentFlowStrategy UI tone not available", v46, 2u);
            OUTLINED_FUNCTION_32_0();
          }
        }

        v16(v13, v2);
        goto LABEL_30;
      }

      v16(v13, v2);
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_56_2();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v19, v15, "#SendMessageHandleIntentFlowStrategy display only mode, not playing UI tone");
      OUTLINED_FUNCTION_26();
    }

LABEL_30:
    OUTLINED_FUNCTION_47();
    return;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
  v48 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (os_log_type_enabled(v48, v23))
  {
    v24 = OUTLINED_FUNCTION_32();
    *v24 = 0;
    _os_log_impl(&dword_267B93000, v48, v23, "#SendMessageHandleIntentFlowStrategy not sent by auto send, not playing UI tone", v24, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C45810()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_267C45928;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295A8, &unk_267EFDC90);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_267C45CE8;
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 playWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_267C45928()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267C45A24()
{
  OUTLINED_FUNCTION_29();
  v13 = v0;
  v1 = *(v0 + 144);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v0 + 80) = v1;
    type metadata accessor for TLAlertPlaybackCompletionType(0);
    v7 = sub_267EF9098();
    v9 = sub_267BA33E8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_267B93000, v3, v4, "#SendMessageHandleIntentFlowStrategy played UI tone: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267C45B78()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  swift_willThrow();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = *(v0 + 160);
  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#SendMessageHandleIntentFlowStrategy error playing UI tone: %@", v8, 0xCu);
    sub_267B9F98C(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_267C45CE8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_267E98204();
  }

  else
  {

    return sub_267C095F8();
  }
}

void sub_267C45D6C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = sub_267EF4CC8();
  OUTLINED_FUNCTION_23();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  sub_267B9AFEC(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v12);
    sub_267B9F98C(v11, &qword_28022BB70, &unk_267F0BA10);
    v29 = OUTLINED_FUNCTION_66();
    sub_267B9AFEC(v29, v30);
LABEL_15:
    OUTLINED_FUNCTION_47();
    return;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  (*(v14 + 32))(v18, v11, v12);
  sub_267C97B50();
  v19 = sub_267EF4CB8();
  v20 = sub_267BAF0DC(v19);
  if (!v20)
  {

LABEL_14:
    sub_267EF4C78();
    sub_267EF4C88();
    v31 = MEMORY[0x277D5C1D8];
    a2[3] = v12;
    a2[4] = v31;
    __swift_allocate_boxed_opaque_existential_0(a2);
    sub_267EF4C98();
    (*(v14 + 8))(v18, v12);
    goto LABEL_15;
  }

  v21 = v20;
  v40[0] = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v32 = v18;
    v33 = v14;
    v34 = v12;
    v35 = v7;
    v22 = 0;
    v36 = a2;
    v37 = v19 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D609870](v22, v19);
      }

      else
      {
        if (v22 >= *(v37 + 16))
        {
          goto LABEL_17;
        }

        v24 = *(v19 + 8 * v22 + 32);
      }

      v25 = v24;
      v38 = v24;
      sub_267C460D0(&v38, &v39);

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      ++v22;
      if (v23 == v21)
      {

        a2 = v36;
        v14 = v33;
        v12 = v34;
        v18 = v32;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);

  __break(1u);
}

void sub_267C460D0(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    *a3 = v4;
    v18 = v4;
    return;
  }

  v6 = v5;
  v7 = qword_280228818;
  v8 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, "#SendMessageHandleIntentFlowStrategy adding auto send settings button", v12, 2u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  sub_267DA2FC4();
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCA40;
  *(inited + 32) = v14;
  v16 = v14;
  if (sub_267D99704(v6))
  {
    sub_267C9B4F0(inited);
    sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
    v17 = sub_267EF92D8();

    [v6 setViews_];

LABEL_10:
    *a3 = v6;
    return;
  }

  __break(1u);
}

uint64_t sub_267C462E4()
{
  v1 = sub_267EF3CF8();
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3CE8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  OUTLINED_FUNCTION_77_1();
  v5(v7, v3, v4);
  OUTLINED_FUNCTION_92_3(v7);
  OUTLINED_FUNCTION_108();
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_267C463F4(void *a1)
{
  v45 = sub_267EF3CF8();
  OUTLINED_FUNCTION_23();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v6 = v5 - v4;
  v47 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  sub_267EF2D18();
  v14 = sub_267EF2CE8();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v12, v47);
  sub_267E7F030(v14, v16, v13);

  sub_267EF4798();
  v18 = sub_267EF3CC8();
  v20 = v19;
  (*(v2 + 8))(v6, v45);
  sub_267EB7464(v18, v20, v13);
  v21 = [a1 patternId];
  sub_267EF9028();
  OUTLINED_FUNCTION_81_2();

  v22 = OUTLINED_FUNCTION_68_0();
  sub_267C47248(v22, v23, v13, v24);
  v25 = [objc_opt_self() patternNameFromType_];
  sub_267EF9028();
  OUTLINED_FUNCTION_81_2();

  v26 = OUTLINED_FUNCTION_68_0();
  sub_267C47248(v26, v27, v13, v28);
  v29 = [a1 responseMode];
  sub_267EF9028();
  OUTLINED_FUNCTION_81_2();

  v30 = OUTLINED_FUNCTION_68_0();
  sub_267C47248(v30, v31, v13, v32);
  v33 = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
  sub_267EF2D18();
  v34 = sub_267EF2CE8();
  v36 = v35;
  v17(v12, v47);
  sub_267C47248(v34, v36, v33, &selRef_setAceId_);
  v37 = [a1 dialog];
  sub_267BA9F38(0, &qword_2802295A0, 0x277D052C8);
  v38 = sub_267EF92F8();

  if (!sub_267BAF0DC(v38))
  {
    v41 = 0;
    goto LABEL_7;
  }

  sub_267BBD0EC(0, (v38 & 0xC000000000000001) == 0, v38);
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x26D609870](0, v38);
  }

  else
  {
    v39 = *(v38 + 32);
  }

  v40 = v39;

  v41 = [v40 dialogId];

  if (!v41)
  {
    sub_267EF9028();
    v41 = sub_267EF8FF8();
LABEL_7:
  }

  [v33 setDialogIdentifier_];

  v42 = v33;
  sub_267EF4848();
  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v43 = sub_267EF97F8();
  [v42 setListenAfterSpeaking_];

  [v42 setCanUseServerTTS_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_267EFCA40;
  *(v44 + 32) = v42;
  sub_267E7F03C(v44, v13);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C4689C()
{
  if (*(*(v0 + 56) + 144) != 1)
  {
    return 0;
  }

  v1 = v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults;
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults + 24);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults + 32);
  v4 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_62_1(v4, v5);
  if ((*(v3 + 8))(0xD000000000000017, 0x8000000267F12AB0, v2, v3))
  {
    return 0;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v9))
  {
    v10 = OUTLINED_FUNCTION_32();
    *v10 = 0;
    _os_log_impl(&dword_267B93000, v8, v9, "#SendMessageHandleIntentFlowStrategy offering tip on sending screenshot", v10, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_62_1(v13, v14);
  v6 = 1;
  (*(v12 + 48))(1, 0xD000000000000017, 0x8000000267F12AB0, v11, v12);
  return v6;
}

uint64_t sub_267C469FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C46A24()
{
  OUTLINED_FUNCTION_56();
  v1 = *(*(v0 + 24) + 56);
  if ((*(*(v1 + 216) + 24) & 1) == 0)
  {
    sub_267C97DB0();
  }

  sub_267ED9A2C(*(v0 + 16));
  if (v2)
  {

    v3 = *(v1 + 216);
    v4 = *(v3 + 16);
    if (*(v3 + 24) == 1)
    {
      *(v4 + 34) = 1;
      *(v3 + 24) = 0;
    }

    else
    {
      *(v4 + 34) = 0;
    }

    sub_267D0F73C();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267C46BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_267C46CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_267C46D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_267C46E50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C3E09C();
}

uint64_t sub_267C46EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_267C46FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_267C4708C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BAEBEC;

  return sub_267C3EC14(a1, a2);
}

uint64_t sub_267C47138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v9, a4);
}

void sub_267C47248(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_267EF8FF8();

  [a3 *a4];
}

uint64_t sub_267C472B4(void *a1)
{
  v1 = [a1 sentMessages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267C47324()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_267BAEBEC;

  return sub_267C457F0(v3, v4, v5, v6);
}

uint64_t sub_267C473D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267C4747C()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);
  OUTLINED_FUNCTION_36_0();

  return sub_267C42870(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267C47514()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);
  OUTLINED_FUNCTION_36_0();

  return sub_267C424F4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267C475AC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_31_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_11(v1);
  OUTLINED_FUNCTION_122();

  return sub_267C41F90(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267C47654()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_31_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_60_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_11(v3);

  return sub_267C41BF8(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_267C476F4()
{

  v1 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver));
  v3 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_267C4779C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver));
  return v0;
}

uint64_t sub_267C47844()
{
  sub_267C4779C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchForMessagesBaseFlowStrategy(uint64_t a1)
{
  result = qword_2802295D8;
  if (!qword_2802295D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267C478F0(uint64_t a1)
{
  sub_267C479A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_267C479A8(uint64_t a1)
{
  if (!qword_2802295E8)
  {
    sub_267EF4C08();
    sub_267BC1E68();
    v1 = sub_267EF7078();
    if (!v2)
    {
      atomic_store(v1, &qword_2802295E8);
    }
  }
}

unint64_t sub_267C47A10(char a1)
{
  result = 0x746165706572;
  switch(a1)
  {
    case 1:
      result = 0x796C706572;
      break;
    case 2:
      result = 0x6E6F43796C706572;
      break;
    case 3:
      result = 0x6F43746165706572;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x707845796C706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267C47B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v101 = a7;
  v94 = a4;
  v95 = a6;
  v96 = a3;
  sub_267EF2E98();
  OUTLINED_FUNCTION_58();
  v99 = v12;
  v100 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  sub_267EF2778();
  OUTLINED_FUNCTION_58();
  v97 = v17;
  v98 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v21 - 8);
  v22 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_58();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v92 - v30;
  if (a1 > 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v32 = sub_267EF8A08();
    v33 = OUTLINED_FUNCTION_13_8(v32, qword_280240FB0);
    v34 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v34))
    {
      v35 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v35);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v36, v37, "#AnnounceHintUtils has given all short message hints");
      OUTLINED_FUNCTION_26();
    }

    return 7;
  }

  sub_267BB16A4(a2, v7, &qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_8_7(v7);
  if (v76)
  {
    sub_267B9FF34(v7, &qword_28022BD90, &unk_267EFCDD0);
  }

  else
  {
    v93 = a5;
    (*(v24 + 32))(v31, v7, v22);
    sub_267EF2E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
    v39 = sub_267EF2E88();
    OUTLINED_FUNCTION_58();
    v41 = v40;
    v42 = v22;
    v43 = v24;
    v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_267EFC020;
    (*(v41 + 104))(v45 + v44, *MEMORY[0x277CC9968], v39);
    sub_267E6EAA0();
    sub_267EF2CB8();
    sub_267EF2E48();

    v46 = *(v43 + 8);
    v46(v28, v42);
    (*(v99 + 8))(v15, v100);
    v47 = sub_267EF2758();
    v49 = v48;
    (*(v97 + 8))(v20, v98);
    if ((v49 & 1) == 0)
    {
      if (v96 < 3 || v47 < 7)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v67 = sub_267EF8A08();
        v68 = OUTLINED_FUNCTION_13_8(v67, qword_280240FB0);
        v69 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_7_2(v69))
        {
          v70 = OUTLINED_FUNCTION_32();
          *v70 = 0;
          OUTLINED_FUNCTION_14_5();
          _os_log_impl(v71, v72, v73, v74, v70, 2u);
          OUTLINED_FUNCTION_32_0();
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_7(v95);
        if (v76 && (v101 & 1) == 0)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v77 = sub_267EF8A08();
          v78 = OUTLINED_FUNCTION_13_8(v77, qword_280240FB0);
          v79 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_7_2(v79))
          {
            v80 = OUTLINED_FUNCTION_32();
            *v80 = 0;
            OUTLINED_FUNCTION_14_5();
            _os_log_impl(v81, v82, v83, v84, v80, 2u);
            OUTLINED_FUNCTION_32_0();
          }

          v85 = OUTLINED_FUNCTION_9_7();
          (v46)(v85);
          return 3;
        }

        OUTLINED_FUNCTION_8_7(v94);
        if (v76 && (v93 & 1) == 0)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v86 = sub_267EF8A08();
          v87 = OUTLINED_FUNCTION_13_8(v86, qword_280240FB0);
          v88 = sub_267EF95D8();
          if (os_log_type_enabled(v87, v88))
          {
            v38 = 2;
            v89 = OUTLINED_FUNCTION_32();
            *v89 = 0;
            _os_log_impl(&dword_267B93000, v87, v88, "#AnnounceHintUtils no reply hint usage date, and repeat not disabled", v89, 2u);
            OUTLINED_FUNCTION_32_0();

            v90 = OUTLINED_FUNCTION_9_7();
            (v46)(v90);
          }

          else
          {

            v91 = OUTLINED_FUNCTION_9_7();
            (v46)(v91);
            return 2;
          }

          return v38;
        }
      }

      v75 = OUTLINED_FUNCTION_9_7();
      (v46)(v75);
      return 7;
    }

    v50 = OUTLINED_FUNCTION_9_7();
    (v46)(v50);
    LOBYTE(a5) = v93;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v51 = sub_267EF8A08();
  v52 = OUTLINED_FUNCTION_13_8(v51, qword_280240FB0);
  v53 = sub_267EF95E8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = OUTLINED_FUNCTION_32();
    *v54 = 0;
    _os_log_impl(&dword_267B93000, v52, v53, "#AnnounceHintUtils error generating daySinceLastHint", v54, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  if (v101)
  {
    if ((a5 & 1) == 0)
    {
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v57);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v58, v59, "#AnnounceHintUtils no last hint usage date, and reply not disabled");
        OUTLINED_FUNCTION_26();
      }

      return 1;
    }

    return 7;
  }

  v60 = sub_267EF89F8();
  v61 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v61))
  {
    v62 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v62);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v63, v64, "#AnnounceHintUtils no last hint usage date, and repeat not disabled");
    OUTLINED_FUNCTION_26();
  }

  return 0;
}

void sub_267C48258(uint64_t a1, uint64_t a2)
{
  sub_267BB16A4(a1, &v13, &unk_28022BBF0, &unk_267F01C60);
  if (v14)
  {
    sub_267BE58F4(&v13, v15);
    v3 = v16;
    v4 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    if ((*(v4 + 144))(v3, v4) & 1) != 0 || (v11 = v16, v12 = v17, __swift_project_boxed_opaque_existential_0(v15, v16), ((*(v12 + 136))(v11, v12)))
    {
      sub_267BEB520(a2 + 152, &v13);
      ConversationEventStore.setDisabled(event:)();
      sub_267B9EF14(&v13);
    }

    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_267B9FF34(&v13, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    v6 = OUTLINED_FUNCTION_13_8(v5, qword_280240FB0);
    v7 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v9, v10, "AnnounceHintUtils smsIntent nil");
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_267C483F0(uint64_t a1)
{
  v70 = sub_267EF2E98();
  OUTLINED_FUNCTION_58();
  v68 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = sub_267EF2778();
  OUTLINED_FUNCTION_58();
  v67 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v69 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v13 - 8);
  v14 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_58();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_60();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  sub_267BB16A4(a1, v1, &qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_8_7(v1);
  if (v24)
  {
    sub_267B9FF34(v1, &qword_28022BD90, &unk_267EFCDD0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v25 = sub_267EF8A08();
    v26 = OUTLINED_FUNCTION_13_8(v25, qword_280240FB0);
    v27 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v27))
    {
      v28 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v28);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v29, v30, "#AnnounceHintUtils no hint date to check time from");
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  else
  {
    v66 = v8;
    (*(v16 + 32))(v23, v1, v14);
    sub_267E579A0(v71);
    HIDWORD(v64) = sub_267E57BAC(1);
    sub_267C48D80(v71);
    sub_267EF2E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
    v31 = sub_267EF2E88();
    OUTLINED_FUNCTION_58();
    v65 = v14;
    v33 = v32;
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_267EFC020;
    v36 = *(v33 + 104);
    v37 = (v16 + 8);
    v38 = (v68 + 8);
    v68 = v67 + 8;
    if ((v64 & 0x100000000) != 0)
    {
      v36(v35 + v34, *MEMORY[0x277CC99A8], v31);
      sub_267E6EAA0();
      sub_267EF2CB8();
      v39 = v69;
      v40 = v23;
      sub_267EF2E48();

      v41 = *v37;
      v42 = v65;
      (*v37)(v20, v65);
      (*v38)(v7, v70);
      sub_267EF2768();
      OUTLINED_FUNCTION_15_6();
      v43(v39, v66);
      if (v39)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v44 = sub_267EF8A08();
        v45 = OUTLINED_FUNCTION_13_8(v44, qword_280240FB0);
        v46 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_7_2(v46))
        {
          v47 = OUTLINED_FUNCTION_32();
          *v47 = 0;
          OUTLINED_FUNCTION_14_5();
          _os_log_impl(v48, v49, v50, v51, v47, 2u);
          OUTLINED_FUNCTION_32_0();
        }
      }

      else
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v56 = sub_267EF8A08();
        v45 = OUTLINED_FUNCTION_13_8(v56, qword_280240FB0);
        v57 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_7_2(v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 134217984;
          *(v58 + 4) = v7;
          OUTLINED_FUNCTION_14_5();
          _os_log_impl(v59, v60, v61, v62, v58, 0xCu);
          OUTLINED_FUNCTION_32_0();
        }
      }

      v41(v40, v42);
    }

    else
    {
      v36(v35 + v34, *MEMORY[0x277CC9968], v31);
      sub_267E6EAA0();
      sub_267EF2CB8();
      v52 = v69;
      sub_267EF2E48();

      v53 = *v37;
      v54 = v65;
      (*v37)(v20, v65);
      (*v38)(v7, v70);
      sub_267EF2758();
      OUTLINED_FUNCTION_15_6();
      v55(v52, v66);
      v53(v23, v54);
    }
  }

  return v7;
}

uint64_t sub_267C48A28(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v6) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_60();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v38 = sub_267C483F0(a1);
  v16 = v15;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v17 = sub_267EF8A08();
  __swift_project_value_buffer(v17, qword_280240FB0);
  sub_267BB16A4(a1, v14, &qword_28022BD90, &unk_267EFCDD0);
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  if (os_log_type_enabled(v18, v19))
  {
    HIDWORD(v35) = v16;
    v36 = v6;
    v6 = a3;
    v37 = a4;
    v20 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v20 = 136315650;
    v21 = OUTLINED_FUNCTION_9_7();
    sub_267BB16A4(v21, v22, v23, v24);
    v25 = sub_267EF2CC8();
    if (__swift_getEnumTagSinglePayload(v11, 1, v25) == 1)
    {
      sub_267B9FF34(v11, &qword_28022BD90, &unk_267EFCDD0);
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    else
    {
      v27 = sub_267EF2C08();
      v26 = v28;
      (*(*(v25 - 8) + 8))(v11, v25);
    }

    a3 = v6;
    sub_267B9FF34(v14, &qword_28022BD90, &unk_267EFCDD0);
    v29 = sub_267BA33E8(v27, v26, &v39);

    *(v20 + 4) = v29;
    *(v20 + 12) = 1024;
    LOBYTE(v6) = v36;
    a4 = v37;
    *(v20 + 14) = v36 & 1;
    *(v20 + 18) = 2080;
    if (a4)
    {
      v30 = 0xE300000000000000;
      v31 = 7104878;
    }

    else
    {
      v31 = sub_267EF9498();
      v30 = v32;
    }

    v33 = sub_267BA33E8(v31, v30, &v39);

    *(v20 + 20) = v33;
    _os_log_impl(&dword_267B93000, v18, v19, "#AnnounceHintUtils lastHeadGestureToMuteHint %s announcementIsSummarized %{BOOL}d announcementDuration %s", v20, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();

    v16 = HIDWORD(v35);
  }

  else
  {

    sub_267B9FF34(v14, &qword_28022BD90, &unk_267EFCDD0);
  }

  result = 0;
  if (((v38 < 7) & ~v16) == 0 && (v6 & 1) == 0)
  {
    return (*&a3 > 5.0) & ~a4;
  }

  return result;
}

char *sub_267C48DD4(char *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229600, &qword_267EFDE30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v158 - v6);
  v169 = sub_267EF6A08();
  v201 = *(v169 - 8);
  v8 = MEMORY[0x28223BE20](v169);
  v170 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v158 - v10);
  v181 = sub_267EF6A88();
  v179 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_267EF6B88();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v178 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_267EF6B38();
  MEMORY[0x28223BE20](v14 - 8);
  v175 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_267EF2E38();
  v160 = *(v198 - 8);
  v16 = MEMORY[0x28223BE20](v198);
  v197 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v190 = &v158 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v189 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v195 = (&v158 - v22);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v23 = MEMORY[0x28223BE20](v167);
  v174 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  *&v166 = &v158 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v173 = &v158 - v28;
  MEMORY[0x28223BE20](v27);
  v194 = (&v158 - v29);
  v172 = sub_267EF6B18();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v193 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_267EF6718();
  v31 = *(v196 - 8);
  v32 = MEMORY[0x28223BE20](v196);
  v187 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v158 - v34;
  v36 = sub_267EF89E8();
  v184 = *(v36 - 1);
  MEMORY[0x28223BE20](v36);
  v38 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228820 != -1)
  {
LABEL_104:
    swift_once();
  }

  v199 = v1;
  v200 = v11;
  v185 = v36;
  v192 = v3;
  v39 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  v182 = v39;
  v183 = v38;
  sub_267EF89A8();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v40 = sub_267EF8A08();
  v41 = __swift_project_value_buffer(v40, qword_280240FB0);
  v42 = *(v31 + 16);
  v188 = a1;
  v43 = v196;
  v186 = v42;
  v42(v35, a1, v196);
  v191 = v41;
  v44 = sub_267EF89F8();
  v45 = sub_267EF95D8();
  v46 = os_log_type_enabled(v44, v45);
  v168 = v7;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v202[0] = v48;
    *v47 = 136315138;
    sub_267C4AED4();
    v49 = sub_267EF9E58();
    v51 = v50;
    (*(v31 + 8))(v35, v196);
    v52 = sub_267BA33E8(v49, v51, v202);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_267B93000, v44, v45, "#SearchForMessagesNLIntentTransformer transforming from: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x26D60A7B0](v48, -1, -1);
    v53 = v47;
    v43 = v196;
    MEMORY[0x26D60A7B0](v53, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v35, v43);
  }

  v54 = v199;
  v55 = v187;
  v186(v187, v188, v43);
  type metadata accessor for SmsNLv3Intent(0);
  swift_allocObject();
  v56 = sub_267EC41AC(v55);
  if (!v56)
  {
    v83 = sub_267EF89F8();
    v84 = sub_267EF95D8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_267B93000, v83, v84, "#SearchForMessagesNLIntentTransformer NL intent not in sms domain, returning an empty SiriKit intent", v85, 2u);
      MEMORY[0x26D60A7B0](v85, -1, -1);
    }

    v86 = [objc_allocWithZone(MEMORY[0x277CD4048]) init];
    goto LABEL_97;
  }

  v57 = v56;
  sub_267EC4E04();
  v186 = v58;
  sub_267EC4E04();
  v161 = v59;
  __swift_project_boxed_opaque_existential_0(v54 + 2, v54[5]);
  sub_267EC4468();
  v61 = v60;
  v63 = v62;
  v162 = sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  v64 = sub_267EF2D28();
  v65 = v194;
  v188 = v64;
  __swift_storeEnumTagSinglePayload(v194, 1, 1, v64);
  v66 = sub_267EF6C28();
  __swift_storeEnumTagSinglePayload(v195, 1, 1, v66);
  v164 = OUTLINED_FUNCTION_28_3();
  v67 = sub_267EF6FF8();
  v68 = sub_267EF6FC8();
  v69 = v173;
  sub_267BC9B04(v65, v173, &qword_280229430, &qword_267EFD2C0);

  v70 = sub_267EF89F8();
  v71 = sub_267EF95D8();

  v72 = os_log_type_enabled(v70, v71);
  v196 = v63;
  v165 = v67;
  v187 = v68;
  v163 = v61;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v204 = v159;
    *v73 = 136315394;
    v202[0] = v61;
    v202[1] = v63;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v74 = sub_267EF9098();
    v76 = sub_267BA33E8(v74, v75, &v204);

    *(v73 + 4) = v76;
    *(v73 + 12) = 2080;
    sub_267BC9B04(v69, v166, &qword_280229430, &qword_267EFD2C0);
    v77 = sub_267EF9098();
    v79 = v78;
    sub_267B9FED8(v69, &qword_280229430, &qword_267EFD2C0);
    v80 = sub_267BA33E8(v77, v79, &v204);

    *(v73 + 14) = v80;
    _os_log_impl(&dword_267B93000, v70, v71, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v73, 0x16u);
    v81 = v159;
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v81, -1, -1);
    v82 = v73;
    v68 = v187;
    MEMORY[0x26D60A7B0](v82, -1, -1);
  }

  else
  {

    sub_267B9FED8(v69, &qword_280229430, &qword_267EFD2C0);
  }

  v87 = v180;
  v88 = v179;
  v89 = v178;
  v90 = v188;
  if (v68 && (sub_267EF6F98(), v91 = sub_267EF37B8(), v93 = v92, , v93))
  {
    v179 = v93;
    v180 = v91;
  }

  else
  {

    v180 = 0;
    v179 = 0xE000000000000000;
  }

  v202[0] = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  v178 = sub_267EF9098();
  v173 = v94;
  __swift_project_boxed_opaque_existential_0(v199 + 12, v199[15]);
  sub_267EF3B68();
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v95 = swift_allocObject();
  v166 = xmmword_267EFC020;
  *(v95 + 16) = xmmword_267EFC020;
  v96 = 0x8000000267F10280;
  v97 = 0xD000000000000013;
  if (v196)
  {
    v97 = v163;
    v96 = v196;
  }

  *(v95 + 32) = v97;
  *(v95 + 40) = v96;
  sub_267BC9B04(v195, v189, &qword_280229428, &unk_267F00E50);
  v98 = v174;
  sub_267BC9B04(v194, v174, &qword_280229430, &qword_267EFD2C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98, 1, v90);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9FED8(v98, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v90 - 8) + 8))(v98, v90);
  }

  v11 = v193;
  v100 = v181;
  v188 = v57;
  sub_267EF6B28();
  (*(v176 + 104))(v89, *MEMORY[0x277D56148], v177);
  (*(v88 + 104))(v87, *MEMORY[0x277D560D0], v100);
  sub_267EF6AF8();

  sub_267B9FED8(v195, &qword_280229428, &unk_267F00E50);
  sub_267B9FED8(v194, &qword_280229430, &qword_267EFD2C0);
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    v3 = sub_267EF8678();
    v11 = v193;
  }

  else
  {
    v3 = 0;
  }

  v101 = v192;
  v7 = v199;
  v102 = v186;
  v1 = v11;
  sub_267EF6B08();
  if (!*(v102 + 16))
  {

LABEL_44:
    v36 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v35 = sub_267DA509C((v7 + 7), v102);

  v36 = *(v35 + 16);
  if (!v36)
  {

    v111 = sub_267EF89F8();
    v112 = sub_267EF95D8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_267B93000, v111, v112, "#SearchForMessagesNLIntentTransformer Recipient nodes do not have a fresh query value, skipping contact resolution", v113, 2u);
      MEMORY[0x26D60A7B0](v113, -1, -1);
    }

    goto LABEL_44;
  }

  sub_267B9B050((v7 + 2), v202);
  v103 = __swift_project_boxed_opaque_existential_0(v202, v203);
  v31 = 0;
  v7 = (v201 + 16);
  v194 = v103;
  v195 = (v201 + 32);
  a1 = v201 + 8;
  v196 = MEMORY[0x277D84F90];
  v38 = v169;
  while (v36 != v31)
  {
    if (v31 >= *(v35 + 16))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v1 = v200;
    v11 = ((v201[80] + 32) & ~v201[80]);
    v3 = *(v201 + 9);
    (*(v201 + 2))(v200, v11 + v35 + v3 * v31, v38);
    if (sub_267EF6988())
    {
      (*a1)(v1, v38);
      ++v31;
    }

    else
    {
      v190 = *v195;
      (v190)(v170, v1, v38);
      v1 = v196;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v204 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_267C72284(0, v1[2] + 1, 1);
        v38 = v169;
        v1 = v204;
      }

      v106 = v1[2];
      v105 = v1[3];
      v107 = v106 + 1;
      if (v106 >= v105 >> 1)
      {
        v108 = v106 + 1;
        v196 = v1[2];
        sub_267C72284(v105 > 1, v106 + 1, 1);
        v107 = v108;
        v106 = v196;
        v38 = v169;
        v1 = v204;
      }

      ++v31;
      v1[2] = v107;
      v196 = v1;
      (v190)(v11 + v1 + v106 * v3, v170, v38);
    }
  }

  v3 = v193;
  v1 = v194;
  v109 = v192;
  v110 = sub_267EF6888();
  if (v109)
  {
    (*(v171 + 8))(v3, v172);

    __swift_destroy_boxed_opaque_existential_0(v202);
    goto LABEL_56;
  }

  v31 = v110;
  v192 = 0;

  v36 = MEMORY[0x277D84F90];
  v204 = MEMORY[0x277D84F90];
  v38 = sub_267BAF0DC(v31);
  v35 = 0;
  v200 = v31 & 0xFFFFFFFFFFFFFF8;
  v201 = (v31 & 0xC000000000000001);
  v11 = (v160 + 8);
  a1 = v197;
  while (v38 != v35)
  {
    if (v201)
    {
      v131 = MEMORY[0x26D609870](v35, v31);
    }

    else
    {
      if (v35 >= *(v200 + 16))
      {
        goto LABEL_101;
      }

      v131 = *(v31 + 8 * v35 + 32);
    }

    v36 = v131;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_100;
    }

    v7 = v199[16];
    __swift_project_boxed_opaque_existential_0(v199 + 12, v199[15]);
    sub_267EF3B68();
    v3 = sub_267DEA1E8();

    v132 = (*v11)(a1, v198);
    v1 = &v204;
    MEMORY[0x26D608F90](v132);
    if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
    v36 = v204;
    ++v35;
  }

  __swift_destroy_boxed_opaque_existential_0(v202);
  v101 = v192;
  v7 = v199;
LABEL_45:
  if (!*(v161 + 16))
  {

LABEL_53:
    v201 = MEMORY[0x277D84F90];
LABEL_54:
    v120 = v168;
    sub_267EC5E7C();
    v121 = sub_267C4A858(v120);
    if (v101)
    {

      sub_267B9FED8(v120, &qword_280229600, &qword_267EFDE30);
      (*(v171 + 8))(v193, v172);
      goto LABEL_56;
    }

    v124 = v121;
    sub_267B9FED8(v120, &qword_280229600, &qword_267EFDE30);
    v125 = v124;
    v126 = sub_267EC4D94();
    if (v127)
    {
      v128 = v126;
      v129 = v127;
      v130 = swift_allocObject();
      *(v130 + 16) = v166;
      *(v130 + 32) = v128;
      *(v130 + 40) = v129;
    }

    else
    {
      v130 = 0;
    }

    v135 = sub_267EC4360() - 1;
    v200 = v125;
    if (v135 > 9u)
    {
      v136 = 0;
    }

    else
    {
      v136 = qword_267EFDE38[v135];
    }

    v137 = v36;
    v138 = sub_267EC5F4C();
    if (v138)
    {
      v139 = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_267EFCA40;
      *(v140 + 32) = v139;
    }

    else
    {
      v140 = 0;
    }

    v141 = sub_267EC4CFC();
    if (v142)
    {
      v143 = v141;
      v144 = v142;
      v145 = swift_allocObject();
      *(v145 + 16) = v166;
      *(v145 + 32) = v143;
      *(v145 + 40) = v144;
    }

    else
    {
      v145 = 0;
    }

    v146 = objc_allocWithZone(MEMORY[0x277CD4048]);
    v147 = sub_267BC7400(v137, v201, v130, v136, v124, 0, 0, v140, v145);
    __swift_project_boxed_opaque_existential_0(v199 + 17, v199[20]);
    v86 = v147;
    sub_267EF4278();
    __swift_project_boxed_opaque_existential_0(v202, v203);
    sub_267EF42B8();
    if (v148)
    {
      v149 = sub_267EF8FF8();
    }

    else
    {
      v149 = 0;
    }

    v150 = v200;
    __swift_destroy_boxed_opaque_existential_0(v202);
    [v86 _setOriginatingDeviceIdsIdentifier_];

    v151 = sub_267EF89F8();
    v152 = sub_267EF95D8();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *v153 = 138412290;
      *(v153 + 4) = v86;
      *v154 = v86;
      v155 = v86;
      _os_log_impl(&dword_267B93000, v151, v152, "#SearchForMessagesNLIntentTransformer transformed to: %@", v153, 0xCu);
      sub_267B9FED8(v154, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v154, -1, -1);
      MEMORY[0x26D60A7B0](v153, -1, -1);
    }

    (*(v171 + 8))(v193, v172);
LABEL_97:
    sub_267EF9688();
    v156 = v183;
    sub_267EF89B8();
    (*(v184 + 8))(v156, v185);
    return v86;
  }

  v114 = sub_267DA509C((v7 + 7), v161);

  if (!*(v114 + 16))
  {

    v117 = sub_267EF89F8();
    v118 = sub_267EF95D8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_267B93000, v117, v118, "#SearchForMessagesNLIntentTransformer Sender nodes do not have a fresh query value, skipping contact resolution", v119, 2u);
      MEMORY[0x26D60A7B0](v119, -1, -1);
    }

    goto LABEL_53;
  }

  v1 = __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  v115 = v193;
  v116 = sub_267EF6888();
  if (!v101)
  {
    v31 = v116;
    v196 = v36;
    v192 = 0;

    v3 = MEMORY[0x277D84F90];
    v202[0] = MEMORY[0x277D84F90];
    v38 = sub_267BAF0DC(v31);
    v35 = 0;
    v200 = v31 & 0xFFFFFFFFFFFFFF8;
    v201 = (v31 & 0xC000000000000001);
    v11 = (v160 + 8);
    a1 = v197;
    while (v38 != v35)
    {
      if (v201)
      {
        v133 = MEMORY[0x26D609870](v35, v31);
      }

      else
      {
        if (v35 >= *(v200 + 16))
        {
          goto LABEL_103;
        }

        v133 = *(v31 + 8 * v35 + 32);
      }

      v36 = v133;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_102;
      }

      v7 = v199[16];
      __swift_project_boxed_opaque_existential_0(v199 + 12, v199[15]);
      sub_267EF3B68();
      sub_267DEA1E8();

      v134 = (*v11)(a1, v198);
      v1 = v202;
      MEMORY[0x26D608F90](v134);
      v36 = *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36 >= *((v202[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v3 = v202[0];
      ++v35;
    }

    v201 = v3;

    v101 = v192;
    v36 = v196;
    goto LABEL_54;
  }

  (*(v171 + 8))(v115, v172);

LABEL_56:
  v122 = v185;
  v123 = v184;
  sub_267EF9688();
  v86 = v183;
  sub_267EF89B8();
  (*(v123 + 8))(v86, v122);
  return v86;
}

uint64_t sub_267C4A858(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F8, &qword_267EFDE28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229600, &qword_267EFDE30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  sub_267BC9B04(a1, &v17 - v10, &qword_280229600, &qword_267EFDE30);
  v12 = sub_267EF58C8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_267B9FED8(v11, &qword_280229600, &qword_267EFDE30);
    return 0;
  }

  else
  {
    v14 = sub_267EF58B8();
    (*(*(v12 - 8) + 8))(v11, v12);
    sub_267B9B050(v3 + 96, v18);
    v15 = swift_allocObject();
    sub_267B9A5E8(v18, v15 + 16);
    sub_267EF6C78();
    sub_267BA9F38(0, &qword_280229608, 0x277CD3B68);
    sub_267EF7058();
    v16 = sub_267EF7068();
    (*(v6 + 8))(v8, v5);
    *&v18[0] = v14;
    v16(&v19, v18);
    if (v2)
    {

      return 0;
    }

    else
    {

      return v19;
    }
  }
}

void *sub_267C4AB10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  return v0;
}

uint64_t sub_267C4AB48()
{
  sub_267C4AB10();

  return swift_deallocClassInstance();
}

uint64_t sub_267C4AB9C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char **a5@<X8>)
{
  v29 = a5;
  sub_267B9B050(a2, v36);
  sub_267B9B050(a3, v35);
  v8 = a4[3];
  v9 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v8);
  (*(v9 + 8))(v34, v8, v9);
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v10);
  (*(v11 + 16))(v33, v10, v11);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_267EF68A8();
  v31 = v15;
  v32 = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0(v30);
  OUTLINED_FUNCTION_5_0();
  v17 = *(v16 + 32);
  v17();
  type metadata accessor for SearchForMessagesNLIntentTransformer();
  inited = swift_initStackObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  inited[5] = v15;
  inited[6] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  (v17)(boxed_opaque_existential_0, v21, v15);
  sub_267B9A5E8(v35, (inited + 7));
  sub_267B9A5E8(v34, (inited + 12));
  sub_267B9A5E8(v33, (inited + 17));
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v36);
  v24 = v36[7];
  v25 = sub_267C48DD4(a1);
  if (v24)
  {
    swift_setDeallocating();
    sub_267C4AB10();
    return swift_deallocClassInstance();
  }

  else
  {
    v27 = v25;
    swift_setDeallocating();
    sub_267C4AB10();
    result = swift_deallocClassInstance();
    *v29 = v27;
  }

  return result;
}

unint64_t sub_267C4AED4()
{
  result = qword_2802293D8;
  if (!qword_2802293D8)
  {
    sub_267EF6718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802293D8);
  }

  return result;
}

uint64_t sub_267C4AF2C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229690, &unk_267F03B30);
  *v16 = sub_267EF4668();
  swift_storeEnumTagMultiPayload();
  sub_267C4BDA0(v16, v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state);
  *(v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_childFlowFactory) = a1;

  *(v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_app) = sub_267EF4648();
  v18 = sub_267EF4638();

  (*(*(v17 - 8) + 8))(a2, v17);
  *(v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_confirmIntentResponse) = v18;
  *(v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_searchForMessagesState) = a4;
  v19 = (v7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_handleIntentFlowProducer);
  *v19 = a5;
  v19[1] = a6;
  sub_267BE58F4(a3, v7 + 16);
  return v7;
}

uint64_t sub_267C4B0B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C4B198()
{
  OUTLINED_FUNCTION_8_8();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267C4B220()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267C4B304()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  (*(v5 + 8))(v3, v4);
  OUTLINED_FUNCTION_8_8();

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267C4B3C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = &unk_267EFDF98;
  v9[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267C4B4D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BDA00C();
}

uint64_t sub_267C4B56C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 104) = v3;
  *(v1 + 40) = v4;
  *(v1 + 64) = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  *(v1 + 72) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229690, &unk_267F03B30);
  *(v1 + 80) = v5;
  *(v1 + 88) = *(v5 - 8);
  *(v1 + 96) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C4B664()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_confirmIntentResponse);
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  sub_267BA9F38(0, &qword_280229680, 0x277CD4050);

  v5 = v2;
  v6 = v4;
  sub_267EF4658();
  (*(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_handleIntentFlowProducer))(*(v3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_childFlowFactory), v1);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_267B93000, v8, v9, "#SearchForMessagesHandleIntentFlow pushing handle intent flow", v10, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 104);

  *v13 = v16;
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state;
  swift_beginAccess();
  sub_267BDABD0(v13, v15 + v17);
  swift_endAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;

  sub_267EF3FD8();

  (*(v12 + 8))(v11, v14);

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267C4B908()
{
  sub_267C4BE04(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state);
}

uint64_t sub_267C4B98C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C4BE04(v0 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesHandleIntentFlow_state);

  return v0;
}

uint64_t sub_267C4BA10()
{
  sub_267C4B98C();

  return swift_deallocClassInstance();
}

uint64_t sub_267C4BA90(uint64_t a1)
{
  result = type metadata accessor for SearchForMessagesHandleIntentFlow.State(319);
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

void sub_267C4BB4C(uint64_t a1)
{
  sub_267BA9F38(319, &qword_280229118, 0x277CD4048);
  if (v1 <= 0x3F)
  {
    sub_267C4BBF8();
    if (v2 <= 0x3F)
    {
      sub_267C4BC20(319);
      if (v3 <= 0x3F)
      {
        sub_267C4BC98(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_267C4BBF8()
{
  result = qword_280229660;
  if (!qword_280229660)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_280229660);
  }

  return result;
}

void sub_267C4BC20(uint64_t a1)
{
  if (!qword_280229668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229670, qword_267EFDED0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280229668);
    }
  }
}

void sub_267C4BC98(uint64_t a1)
{
  if (!qword_280229678)
  {
    sub_267BA9F38(255, &qword_280229118, 0x277CD4048);
    sub_267BA9F38(255, &qword_280229680, 0x277CD4050);
    v1 = sub_267EF2F98();
    if (!v2)
    {
      atomic_store(v1, &qword_280229678);
    }
  }
}

unint64_t sub_267C4BD48()
{
  result = qword_280229688;
  if (!qword_280229688)
  {
    type metadata accessor for SearchForMessagesHandleIntentFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229688);
  }

  return result;
}

uint64_t sub_267C4BDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C4BE04(uint64_t a1)
{
  v2 = type metadata accessor for SearchForMessagesHandleIntentFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267C4BE60()
{
  result = qword_28022BBB0;
  if (!qword_28022BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BBB0);
  }

  return result;
}

uint64_t sub_267C4BEB4()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267C4B4D0();
}

uint64_t sub_267C4BF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_267EF7B88();
  MEMORY[0x28223BE20](v8 - 8);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  v9 = sub_267EF78E8();
  type metadata accessor for ReadSenderInfoAction();
  swift_allocObject();
  v10 = sub_267C138B4(a1, a2, v9);
  v11 = sub_267C4C3C8(&qword_2802296C0, type metadata accessor for ReadSenderInfoAction, &unk_267F03058);
  *(v4 + 16) = v10;
  *(v4 + 24) = v11;
  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow25ReadSenderInfoActionGroup_transition;
  v13 = sub_267EF4548();
  (*(*(v13 - 8) + 32))(v4 + v12, a3, v13);
  __swift_storeEnumTagSinglePayload(v4 + v12, 0, 1, v13);
  return v4;
}

uint64_t sub_267C4C0FC()
{
  swift_unknownObjectRelease();
  sub_267BA064C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow25ReadSenderInfoActionGroup_transition);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReadSenderInfoActionGroup(uint64_t a1)
{
  result = qword_2802296A0;
  if (!qword_2802296A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267C4C1BC(uint64_t a1)
{
  sub_267C4C258(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_267C4C258(uint64_t a1)
{
  if (!qword_2802296B0)
  {
    sub_267EF4548();
    v1 = sub_267EF9888();
    if (!v2)
    {
      atomic_store(v1, &qword_2802296B0);
    }
  }
}

uint64_t sub_267C4C358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C4C3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267C4C410()
{
  type metadata accessor for MessagesContextProvider(0);
  v0 = swift_allocObject();
  type metadata accessor for TimedSpokenContext(0);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_78();
  result = __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  qword_280240640 = v0;
  return result;
}

uint64_t sub_267C4C48C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for TimedSpokenContext(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229440, &qword_267EFD2E0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_6_7();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v54 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_60();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v25 = OBJC_IVAR____TtC16SiriMessagesFlow23MessagesContextProvider__spokenContext;
  swift_beginAccess();
  sub_267B9A598(v1 + v25, v12, &qword_280229440, &qword_267EFD2E0);
  v57 = v2;
  if (__swift_getEnumTagSinglePayload(v12, 1, v2))
  {
    sub_267B9F98C(v12, &qword_280229440, &qword_267EFD2E0);
    v26 = v1;
  }

  else
  {
    v53 = v18;
    v27 = v54;
    (*(v54 + 16))(v22, v12, v13);
    sub_267B9F98C(v12, &qword_280229440, &qword_267EFD2E0);
    (*(v27 + 32))(v24, v22, v13);
    v28 = v25;
    OUTLINED_FUNCTION_5_12();
    sub_267B9A598(v29, v30, v31, v32);
    v26 = v1;
    if (__swift_getEnumTagSinglePayload(v10, 1, v57) == 1)
    {
      (*(v27 + 8))(v24, v13);
      sub_267B9F98C(v10, &qword_280229440, &qword_267EFD2E0);
    }

    else
    {
      v33 = v5;
      sub_267C4D768(v10, v5, type metadata accessor for TimedSpokenContext);
      v34 = v53;
      sub_267EF2CB8();
      sub_267EF2C38();
      v36 = v35;
      v37 = *(v27 + 8);
      v37(v34, v13);
      v37(v24, v13);
      v38 = *(v33 + *(v57 + 20));
      sub_267C4D7C8(v33, type metadata accessor for TimedSpokenContext);
      v25 = v28;
      if (v38 < v36)
      {
        v39 = v56;
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
        swift_beginAccess();
        sub_267C26980(v39, v1 + v28, &qword_280229440, &qword_267EFD2E0);
        swift_endAccess();
      }
    }
  }

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
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59[0] = v48;
    *v47 = 136315138;
    sub_267B9A598(v26 + v25, v56, &qword_280229440, &qword_267EFD2E0);
    v49 = sub_267EF9098();
    v51 = sub_267BA33E8(v49, v50, v59);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_267B93000, v45, v46, "#MessagesContextProvider Returning TimedSpokenContext: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  return sub_267B9A598(v26 + v25, v58, &qword_280229440, &qword_267EFD2E0);
}

uint64_t sub_267C4C9C0@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_6_7();
  v12 = MEMORY[0x28223BE20](v11);
  v55 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  v16 = sub_267EF2CC8();
  OUTLINED_FUNCTION_58();
  v59 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_60();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - v26;
  v28 = OBJC_IVAR____TtC16SiriMessagesFlow23MessagesContextProvider__sentMessageContext;
  swift_beginAccess();
  sub_267B9A598(v1 + v28, v15, &qword_280229228, &qword_267EFDD20);
  v56 = v2;
  if (__swift_getEnumTagSinglePayload(v15, 1, v2))
  {
    sub_267B9F98C(v15, &qword_280229228, &qword_267EFDD20);
    v29 = v1;
  }

  else
  {
    v54 = v21;
    sub_267C4D704(v15, v9);
    sub_267B9F98C(v15, &qword_280229228, &qword_267EFDD20);
    v30 = v59;
    (*(v59 + 16))(v25, v9, v16);
    sub_267C4D7C8(v9, type metadata accessor for TimedSentMessageContext);
    (*(v30 + 32))(v27, v25, v16);
    v31 = v1;
    v32 = v1 + v28;
    v33 = v55;
    sub_267B9A598(v32, v55, &qword_280229228, &qword_267EFDD20);
    v34 = v56;
    if (__swift_getEnumTagSinglePayload(v33, 1, v56) == 1)
    {
      (*(v59 + 8))(v27, v16);
      sub_267B9F98C(v33, &qword_280229228, &qword_267EFDD20);
      v29 = v31;
    }

    else
    {
      sub_267C4D768(v33, v6, type metadata accessor for TimedSentMessageContext);
      v35 = v54;
      sub_267EF2CB8();
      sub_267EF2C38();
      v37 = v36;
      v38 = *(v59 + 8);
      v38(v35, v16);
      v38(v27, v16);
      v39 = *(v6 + *(v34 + 20));
      sub_267C4D7C8(v6, type metadata accessor for TimedSentMessageContext);
      v29 = v31;
      if (v39 < v37)
      {
        v40 = v58;
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v34);
        swift_beginAccess();
        sub_267C26980(v40, v31 + v28, &qword_280229228, &qword_267EFDD20);
        swift_endAccess();
      }
    }
  }

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
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v61[0] = v48;
    *v47 = 136315138;
    sub_267B9A598(v29 + v28, v58, &qword_280229228, &qword_267EFDD20);
    v49 = sub_267EF9098();
    v51 = sub_267BA33E8(v49, v50, v61);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_267B93000, v45, v46, "#MessagesContextProvider Returning TimedSentMessageContext: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  return sub_267B9A598(v29 + v28, v60, &qword_280229228, &qword_267EFDD20);
}

uint64_t sub_267C4CF48(uint64_t a1, uint64_t *a2, uint64_t *a3, const char *a4, void *a5, ...)
{
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  MEMORY[0x28223BE20](v10);
  v12 = v37 - v11;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  OUTLINED_FUNCTION_5_12();
  sub_267B9A598(v14, v15, v16, v17);
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37[0] = a5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v37[1] = a1;
    v23 = v22;
    v39[0] = v22;
    *v21 = 136315138;
    OUTLINED_FUNCTION_5_12();
    sub_267B9A598(v24, v25, v26, v27);
    v28 = sub_267EF9098();
    v30 = v29;
    sub_267B9F98C(v12, a2, a3);
    v31 = sub_267BA33E8(v28, v30, v39);

    *(v21 + 4) = v31;
    _os_log_impl(&dword_267B93000, v18, v19, v38, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267B9F98C(v12, a2, a3);
  }

  swift_beginAccess();
  OUTLINED_FUNCTION_5_12();
  sub_267C26980(v32, v33, v34, v35);
  return swift_endAccess();
}

uint64_t sub_267C4D184()
{
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow23MessagesContextProvider__spokenContext, &qword_280229440, &qword_267EFD2E0);
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow23MessagesContextProvider__sentMessageContext, &qword_280229228, &qword_267EFDD20);

  return swift_deallocClassInstance();
}

void sub_267C4D240(uint64_t a1)
{
  sub_267C4D364(319, &qword_2802296E8, type metadata accessor for TimedSpokenContext);
  if (v1 <= 0x3F)
  {
    sub_267C4D364(319, &qword_2802296F0, type metadata accessor for TimedSentMessageContext);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_267C4D364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_267EF9888();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_267C4D400(uint64_t a1)
{
  result = sub_267EF2CC8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Conversation();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF2CC8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267EF2CC8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267C4D610(uint64_t a1)
{
  result = sub_267EF2CC8();
  if (v2 <= 0x3F)
  {
    result = sub_267EF7C38();
    if (v3 <= 0x3F)
    {
      result = sub_267BA9F38(319, &qword_28022AE60, 0x277CD4078);
      if (v4 <= 0x3F)
      {
        result = sub_267BA9F38(319, &qword_280229718, 0x277CD4080);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SendMessageState();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_267C4D704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedSentMessageContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C4D768(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267C4D7C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267C4D820@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v101 = sub_267EF5168();
  OUTLINED_FUNCTION_58();
  v114 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1(&v77 - v4);
  v98 = sub_267EF5188();
  OUTLINED_FUNCTION_58();
  v108 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v8 - v7);
  v96 = sub_267EF51F8();
  OUTLINED_FUNCTION_58();
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v12 - v11);
  v103 = sub_267EF4C68();
  OUTLINED_FUNCTION_58();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229720, &qword_267EFE108);
  MEMORY[0x28223BE20](v19 - 8);
  v102 = &v77 - v20;
  v21 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_0();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v77 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v30);
  v115 = &v77 - v31;
  result = sub_267EF4B78();
  v33 = result;
  v34 = 0;
  v110 = *(result + 16);
  v112 = v23 + 16;
  v106 = v23 + 88;
  v113 = *MEMORY[0x277D5C160];
  v35 = (v23 + 8);
  v94 = v23 + 96;
  v93 = v14 + 32;
  v92 = v111 + 8;
  v91 = v108 + 8;
  v90 = *MEMORY[0x277D5DAB0];
  v89 = v114 + 104;
  v88 = (v114 + 8);
  v87 = v14 + 8;
  v84 = v14 + 16;
  v83 = v23 + 104;
  v108 = v23;
  v80 = (v23 + 32);
  v82 = MEMORY[0x277D84F90];
  v107 = v29;
  v109 = result;
  v86 = v18;
LABEL_2:
  v36 = v102;
  while (1)
  {
    if (v110 == v34)
    {

      sub_267C8F050(v82, v79);
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    v37 = v108;
    v105 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v38 = *(v108 + 72);
    v114 = v34;
    v104 = v38;
    v39 = v33 + v105 + v38 * v34;
    v40 = *(v108 + 16);
    v41 = v115;
    v42 = v35;
    v40(v115, v39, v21);
    v111 = v40;
    v40(v29, v41, v21);
    v43 = (*(v37 + 88))(v29, v21);
    if (v43 == v113)
    {
      OUTLINED_FUNCTION_1_6();
      v44(v29, v21);
      OUTLINED_FUNCTION_1_6();
      v45 = v103;
      v46(v18, v29, v103);
      v47 = v95;
      sub_267EF4C48();
      v48 = v97;
      sub_267EF51D8();
      OUTLINED_FUNCTION_1_6();
      v49(v47, v96);
      v50 = v99;
      sub_267EF5178();
      OUTLINED_FUNCTION_1_6();
      v51(v48, v98);
      OUTLINED_FUNCTION_1_6();
      v52 = v45;
      v53 = v100;
      v54 = v101;
      v55(v100, v90, v101);
      sub_267C4E1B8();
      sub_267EF9298();
      sub_267EF9298();
      v56 = *v88;
      (*v88)(v53, v54);
      v56(v50, v54);
      if (v116 == v119)
      {
        OUTLINED_FUNCTION_1_6();
        v57 = v85;
        v58 = v86;
        v59(v85, v86, v52);
        OUTLINED_FUNCTION_1_6();
        v60(v57, v113, v21);
        v61 = sub_267E57DFC(v57, &v116);
        v35 = v42;
        v62 = *v42;
        (*v42)(v57, v21, v61);
        v63 = v117;
        v18 = v58;
        if (v117)
        {
          v64 = v118;
          __swift_project_boxed_opaque_existential_0(&v116, v117);
          LOBYTE(v64) = (*(v64 + 208))(v63, v64);
          OUTLINED_FUNCTION_1_6();
          v65(v58, v103);
          __swift_destroy_boxed_opaque_existential_0(&v116);
          v36 = v102;
          if (v64)
          {
            (v111)(v102, v115, v21);
            __swift_storeEnumTagSinglePayload(v36, 0, 1, v21);
            goto LABEL_14;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_6();
          v68(v58, v103);
          sub_267B9FF34(&v116, &unk_28022BBF0, &unk_267F01C60);
          v36 = v102;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_6();
        v66 = v86;
        v67(v86, v52);
        v18 = v66;
        v36 = v102;
        v35 = v42;
      }
    }

    else
    {
      (*v35)(v29, v21);
    }

    __swift_storeEnumTagSinglePayload(v36, 1, 1, v21);
    v62 = *v35;
LABEL_14:
    v33 = v109;
    v62(v115, v21);
    if (__swift_getEnumTagSinglePayload(v36, 1, v21) != 1)
    {
      v69 = *v80;
      v70 = v78;
      (*v80)(v78, v36, v21);
      v69(v81, v70, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v114;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_267C712C4();
        v82 = v75;
      }

      v73 = *(v82 + 16);
      if (v73 >= *(v82 + 24) >> 1)
      {
        sub_267C712C4();
        v82 = v76;
      }

      v34 = v72 + 1;
      v74 = v82;
      *(v82 + 16) = v73 + 1;
      result = (v69)(v74 + v105 + v73 * v104, v81, v21);
      v29 = v107;
      goto LABEL_2;
    }

    result = sub_267B9FF34(v36, &qword_280229720, &qword_267EFE108);
    v34 = v114 + 1;
    v29 = v107;
  }

  __break(1u);
  return result;
}
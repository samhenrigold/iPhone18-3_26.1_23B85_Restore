uint64_t sub_266D48AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266D48B64()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_4_3(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  v12 = *(v0 + 8);
  if (v12)
  {
    if (sub_266DA890C())
    {
      v12 = sub_266DA853C();
    }

    else
    {
      v12 = 0;
    }
  }

  sub_266CA1A78(v12, (v2 + 16), v1);

  OUTLINED_FUNCTION_4_13(v1);
  if (v13)
  {
    sub_266D48AFC(v1);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72(&qword_2800C9438);
    }

    v14 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v14, qword_2800CD620);
    v15 = sub_266DA948C();
    v16 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v16))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v17, v18, "FindFriendNLv4IntentWrapper enableNotificationContactId unable to obtain resolved entity");
      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_22_15();
    v20(v19);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72(&qword_2800C9438);
    }

    v21 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v21, qword_2800CD620);
    v22 = OUTLINED_FUNCTION_23_17();
    v23(v22);
    v24 = sub_266DA948C();
    v25 = sub_266DAAB0C();
    v26 = os_log_type_enabled(v24, v25);
    v41[0] = v7;
    if (v26)
    {
      OUTLINED_FUNCTION_14_0();
      v27 = OUTLINED_FUNCTION_11_26();
      v41[1] = v27;
      *v2 = 136315138;
      OUTLINED_FUNCTION_1_54();
      sub_266D492A4(v28, v29, MEMORY[0x277D5FEB8]);
      sub_266DAB13C();
      v31 = v30;
      v32 = *(v7 + 8);
      v33 = OUTLINED_FUNCTION_26_8();
      v32(v33);
      v34 = OUTLINED_FUNCTION_9_21();
      v36 = sub_266C22A3C(v34, v31, v35);

      *(v2 + 4) = v36;
      _os_log_impl(&dword_266C08000, v24, v25, "FindFriendNLv4IntentWrapper enableNotificationContactId resolved entity: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_34();
    }

    else
    {

      v32 = *(v7 + 8);
      v37 = OUTLINED_FUNCTION_26_8();
      v32(v37);
    }

    v38 = sub_266D4E468();
    v39 = v38;
    if (v38)
    {
      v40 = [v38 contactIdentifier];

      if (v40)
      {
        sub_266DAA70C();
      }
    }

    (v32)(v11, v5);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266D48F10()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_4_3(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = sub_266DA957C();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = *(v0 + 8);
  if (v17)
  {
    v17 = sub_266DA88FC();
    if (v17)
    {
      v18 = sub_266DA87AC();

      if (v18)
      {
        v17 = sub_266DA853C();
      }

      else
      {
        v17 = 0;
      }
    }
  }

  sub_266CA1A78(v17, (v2 + 16), v6);

  OUTLINED_FUNCTION_4_13(v6);
  if (v19)
  {
    sub_266D48AFC(v6);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72(&qword_2800C9438);
    }

    v20 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v20, qword_2800CD620);
    v21 = sub_266DA948C();
    v22 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v22))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v23, v24, "FindFriendNLv4IntentWrapper enableNotificationLocationId unable to obtain resolved entity");
      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    (*(v9 + 32))(v16, v6, v7);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72(&qword_2800C9438);
    }

    v25 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v25, qword_2800CD620);
    (*(v9 + 16))(v13, v16, v7);
    v26 = sub_266DA948C();
    v27 = sub_266DAAB0C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_14_0();
      v39 = OUTLINED_FUNCTION_13_0();
      v41 = v39;
      *v28 = 136315138;
      OUTLINED_FUNCTION_1_54();
      sub_266D492A4(v29, v30, MEMORY[0x277D5FEB8]);
      sub_266DAB13C();
      v40 = v16;
      v32 = v31;
      v33 = OUTLINED_FUNCTION_14_28();
      v1(v33);
      v34 = OUTLINED_FUNCTION_9_21();
      v36 = sub_266C22A3C(v34, v32, v35);
      v16 = v40;

      *(v28 + 4) = v36;
      _os_log_impl(&dword_266C08000, v26, v27, "FindFriendNLv4IntentWrapper enableNotificationLocationId resolved entity: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      v37 = OUTLINED_FUNCTION_14_28();
      v1(v37);
    }

    sub_266DA954C();
    (v1)(v16, v7);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D492A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266D492EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_266D4932C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_0_72(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_34()
{

  JUMPOUT(0x26D5F2480);
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_13@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 184) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_266DA957C();
}

void OUTLINED_FUNCTION_27_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_266D494F4()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  sub_266DA816C();
  v6 = sub_266C5DE2C(v4, *v5);
  (*(v2 + 8))(v4, v1);
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800E6498);
  v8 = sub_266DA948C();
  v9 = sub_266DAAB0C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v16[7] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD650, &qword_266DBB728);
    v12 = sub_266DAA72C();
    v14 = sub_266C22A3C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_266C08000, v8, v9, "FindDevice.ConfirmIntentStrategy parsed task as %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D5F2480](v11, -1, -1);
    OUTLINED_FUNCTION_33_6();
  }

  if (v6 < 2u)
  {
    return sub_266DA7CBC();
  }

  if (v6 == 2)
  {
    return sub_266DA7CAC();
  }

  return sub_266DA7CCC();
}

uint64_t sub_266D4972C()
{
  OUTLINED_FUNCTION_22_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB458, &unk_266DB4F10);
  OUTLINED_FUNCTION_4_3(v5);
  v1[6] = OUTLINED_FUNCTION_62();
  v6 = sub_266DA81AC();
  v1[7] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D49800()
{
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v2 = sub_266DA94AC();
  v3 = __swift_project_value_buffer(v2, qword_2800E6498);
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40_4(v6);
    _os_log_impl(&dword_266C08000, v4, v5, "FindDevice.ConfirmIntentStrategy parsing confirmation response", v1, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
  v10 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v11 = sub_266DA7FCC();
  v12 = __swift_project_boxed_opaque_existential_1((v10 + 136), *(v10 + 160));
  sub_266DA816C();
  v13 = sub_266C5DE2C(v7, *v12);
  (*(v8 + 8))(v7, v9);
  v14 = sub_266DA948C();
  if (v13 != 3)
  {
    if (v13)
    {
      v25 = sub_266DAAB0C();
      v26 = OUTLINED_FUNCTION_95(v25);
      v17 = MEMORY[0x277D5BED0];
      if (v26)
      {
        v18 = "FindDevice.ConfirmIntentStrategy user did NOT confirm task, returning ConfirmIntentAnswer with rejected confirmation response";
        goto LABEL_14;
      }
    }

    else
    {
      v15 = sub_266DAAB0C();
      v16 = OUTLINED_FUNCTION_95(v15);
      v17 = MEMORY[0x277D5BED8];
      if (v16)
      {
        v18 = "FindDevice.ConfirmIntentStrategy user confirmed task, returning ConfirmIntentAnswer with confirmed confirmation response";
LABEL_14:
        v27 = OUTLINED_FUNCTION_11();
        *v27 = 0;
        _os_log_impl(&dword_266C08000, v14, v3, v18, v27, 2u);
        MEMORY[0x26D5F2480](v27, -1, -1);
      }
    }

    v28 = v0[6];

    v29 = *v17;
    v30 = sub_266DA7F5C();
    OUTLINED_FUNCTION_9_3();
    (*(v31 + 104))(v28, v29, v30);
    OUTLINED_FUNCTION_50_5(v28);
    type metadata accessor for FindDeviceAndPlaySoundIntent();
    sub_266DA7F1C();

    OUTLINED_FUNCTION_15_4();
    goto LABEL_16;
  }

  v19 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_95(v19))
  {
    v20 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40_4(v20);
    OUTLINED_FUNCTION_45_0(&dword_266C08000, v21, v22, "FindDevice.ConfirmIntentStrategy unable to make task from parse");
    OUTLINED_FUNCTION_33_6();
  }

  sub_266C488FC();
  swift_allocError();
  *v23 = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_28();
LABEL_16:

  return v24();
}

uint64_t sub_266D49B10()
{
  OUTLINED_FUNCTION_22_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[26] = OUTLINED_FUNCTION_64();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[30] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[33] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[37] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[38] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[39] = v12;
  v1[40] = *(v13 + 64);
  v1[41] = OUTLINED_FUNCTION_64();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_266D49D60()
{
  OUTLINED_FUNCTION_84();
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E6498);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_11();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "FindDevice.ConfirmIntentStrategy.makeFlowCancelledResponse() called", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v6 = *(v0 + 192);
  v5 = *(v0 + 200);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v7 = sub_266DA7FCC();
  *(v0 + 392) = v7;
  *(v0 + 400) = *(v6 + 88);
  v8 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v8, v9, 1, v5);
  v10 = sub_266D14B44(v7);
  if (v10)
  {
    if (sub_266C3A14C())
    {
      OUTLINED_FUNCTION_63();
      sub_266CB9F54();
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D5F1780](0, v10);
      }

      else
      {
        v11 = *(v10 + 32);
      }

      v12 = v11;

      v13 = sub_266C1CEB4(v12);
      v15 = v14;
      LOBYTE(v10) = sub_266CC7C44();

      goto LABEL_12;
    }

    LOBYTE(v10) = 0;
  }

  v13 = 0;
  v15 = 0;
LABEL_12:
  v16 = *(v0 + 376);
  *v16 = 4;
  *(v16 + 8) = v13;
  *(v16 + 16) = v15;
  *(v16 + 24) = v10 & 1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_50_5(v16);
  *(v0 + 488) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  swift_allocObject();
  *(v0 + 408) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v17 = swift_allocObject();
  *(v0 + 416) = v17;
  *(v17 + 16) = xmmword_266DAE3B0;
  *(v0 + 489) = 1;
  v18 = sub_266CAA15C();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 424) = v19;
  *v19 = v20;
  v19[1] = sub_266D4A028;

  return sub_266D945C8((v0 + 489), v18 & 1);
}

uint64_t sub_266D4A028()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[54] = v0;

  if (v0)
  {
    sub_266C47654(v5[47], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
    v11 = sub_266D1C708;
  }

  else
  {
    v5[55] = v3;
    v11 = sub_266D4A160;
  }

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D4A6A4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D4A7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v27 = *(v23 + 224);
  v26 = *(v23 + 232);

  sub_266C477B4(v27);
  sub_266C477B4(v26);
  v28 = OUTLINED_FUNCTION_6_28();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D4A91C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D4AA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v23 + 216);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_6_28();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D4AB84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D4AC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v23 + 208);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_6_28();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D4ADEC()
{
  OUTLINED_FUNCTION_22_0();
  v1[283] = v0;
  v1[282] = v2;
  v1[281] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[284] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[285] = OUTLINED_FUNCTION_64();
  v1[286] = swift_task_alloc();
  v1[287] = swift_task_alloc();
  v1[288] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[289] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[290] = v6;
  v1[291] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[292] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[293] = v8;
  v1[294] = OUTLINED_FUNCTION_64();
  v1[295] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[296] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[297] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[298] = v12;
  v1[299] = *(v13 + 64);
  v1[300] = OUTLINED_FUNCTION_64();
  v1[301] = swift_task_alloc();
  v1[302] = swift_task_alloc();
  v1[303] = swift_task_alloc();
  v1[304] = swift_task_alloc();
  v1[305] = swift_task_alloc();
  v1[306] = swift_task_alloc();
  v1[307] = swift_task_alloc();
  v14 = sub_266DA74AC();
  v1[308] = v14;
  OUTLINED_FUNCTION_11_3(v14);
  v1[309] = v15;
  v1[310] = OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_266D4B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v24 = sub_266DA94AC();
  __swift_project_value_buffer(v24, qword_2800E6498);
  v25 = sub_266DA948C();
  v26 = sub_266DAAB0C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40_4(v27);
    _os_log_impl(&dword_266C08000, v25, v26, "FindDevice.ConfirmIntentStrategy.makePromptForConfirmation() called", v23, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v28 = sub_266DA7FCC();
  v22[311] = v28;
  v29 = sub_266D14B44(v28);
  if (v29)
  {
    v30 = v29;
    if (sub_266C3A14C())
    {
      OUTLINED_FUNCTION_63();
      sub_266CB9F54();
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26D5F1780](0, v30);
      }

      else
      {
        v31 = *(v30 + 32);
      }

      v32 = v31;
      v22[312] = v31;

      if (sub_266D14B44(v28))
      {
        v33 = sub_266C3A14C();

        if (v33 == 1)
        {
          v34 = v22[283];
          sub_266C26ACC(v34, (v22 + 167));
          v35 = swift_allocObject();
          v22[313] = v35;
          memcpy((v35 + 16), v22 + 167, 0xB0uLL);
          *(v35 + 192) = v32;
          v36 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA088, &qword_266DAFC60);
          swift_asyncLet_begin();
          sub_266C26ACC(v34, (v22 + 189));
          v37 = swift_allocObject();
          v22[314] = v37;
          memcpy((v37 + 16), v22 + 189, 0xB0uLL);
          *(v37 + 192) = v36;
          v38 = v36;
          sub_266CA8EC8();
          swift_asyncLet_begin();
          v39 = v38;
          OUTLINED_FUNCTION_25_0();

          return MEMORY[0x282200928](v40);
        }
      }
    }

    else
    {
    }
  }

  v42 = sub_266DA948C();
  v43 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_95(v43))
  {
    v44 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40_4(v44);
    OUTLINED_FUNCTION_45_0(&dword_266C08000, v45, v46, "SiriFindMy does not support pinging multiple devices. Devices parameter expected to have exactly one device.");
    OUTLINED_FUNCTION_33_6();
  }

  sub_266C488FC();
  v65 = swift_allocError();
  *v47 = 6;
  swift_willThrow();

  OUTLINED_FUNCTION_34_7();
  v57 = v22[296];
  v58 = v22[295];
  v59 = v22[294];
  v60 = v22[291];
  v61 = v22[288];
  v62 = v22[287];
  v63 = v22[286];
  v64 = v22[285];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v58, v59, v60, v61, v62, v63, v64, v65, a19, a20, a21, a22);
}

uint64_t sub_266D4B4BC()
{
  v1 = (v0 + 2584);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2232);
  v4 = *(v0 + 2496);
  v32 = v3;
  sub_266C2BA84(v2, v3);
  v5 = sub_266C22F3C(v4);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v31 = sub_266CAB3DC(v4);
  v10 = v9;
  v11 = sub_266CC7C44();

  sub_266C2BAF0(0, 0xF000000000000000);
  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v13 = *(v0 + 2496);
  if (v12)
  {

    v14 = v7;
    v15 = v8;
  }

  else
  {
    v30 = v2;
    v16 = *(v0 + 2480);
    v17 = *(v0 + 2472);
    v29 = *(v0 + 2464);

    sub_266DA749C();
    v14 = sub_266DA747C();
    v15 = v18;

    v19 = v16;
    v1 = (v0 + 2584);
    (*(v17 + 8))(v19, v29);
    v2 = v30;
  }

  v20 = v11 & 1;
  v21 = *(v0 + 2456);
  v22 = 0xE000000000000000;
  if (v10)
  {
    v22 = v10;
  }

  v23 = v31;
  if (!v10)
  {
    v23 = 0;
  }

  v24 = *(v0 + 2448);
  v25 = *(v0 + 2272);
  v26 = *(v0 + 2264);
  *(v0 + 1688) = v7;
  *(v0 + 1696) = v8;
  *(v0 + 1704) = v23;
  *(v0 + 1712) = v22;
  *(v0 + 1720) = v20;
  *(v0 + 1721) = *v1;
  *(v0 + 1724) = *(v1 + 3);
  *(v0 + 1728) = v2;
  *(v0 + 1736) = v32;
  *(v0 + 1744) = v14;
  *(v0 + 1752) = v15;
  *(v0 + 1760) = 1701736302;
  *(v0 + 1768) = 0xE400000000000000;
  *(v0 + 2520) = *(v26 + 88);
  memcpy(v21, (v0 + 1688), 0x58uLL);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_50_5(v21);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v27 = swift_allocObject();
  *(v0 + 2528) = v27;
  *(v27 + 16) = xmmword_266DAE3B0;
  sub_266C2AAC4(v0 + 1688, v0 + 1816);

  return MEMORY[0x282200930](v0 + 656);
}

uint64_t sub_266D4B720()
{
  OUTLINED_FUNCTION_34();
  *(v1 + 2536) = v0;
  if (v0)
  {
    sub_266C47654(*(v1 + 2448), &qword_2800CA050, &qword_266DB0080);
    v2 = OUTLINED_FUNCTION_32();
    sub_266C47654(v2, v3, &qword_266DB0080);
    v4 = sub_266D4C65C;
  }

  else
  {
    v4 = sub_266D4B7CC;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_266D4BD2C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 2184));
  __swift_destroy_boxed_opaque_existential_0((v2 + 2104));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D4BE34()
{
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_84();
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2296);

  sub_266C477B4(v4);
  sub_266C477B4(v3);
  v5 = OUTLINED_FUNCTION_3_49();
  v6(v5);
  v7 = OUTLINED_FUNCTION_6_14();
  v8(v7);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);
  sub_266C2AB6C(v1 + 1688);
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200920](v9);
}

uint64_t sub_266D4BF5C()
{
  v1 = *(v0 + 2488);

  OUTLINED_FUNCTION_15_4();

  return v2();
}

uint64_t sub_266D4C0EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 2024));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D4C1EC()
{
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_84();
  v3 = *(v1 + 2288);

  sub_266C477B4(v3);
  v4 = OUTLINED_FUNCTION_3_49();
  v5(v4);
  v6 = OUTLINED_FUNCTION_6_14();
  v7(v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);
  sub_266C2AB6C(v1 + 1688);
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200920](v8);
}

uint64_t sub_266D4C2C0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1944));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D4C3C0()
{
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_84();
  v3 = *(v1 + 2280);

  sub_266C477B4(v3);
  v4 = OUTLINED_FUNCTION_3_49();
  v5(v4);
  v6 = OUTLINED_FUNCTION_6_14();
  v7(v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);
  sub_266C2AB6C(v1 + 1688);
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200920](v8);
}

uint64_t sub_266D4C494()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D4C594()
{
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_84();

  v3 = OUTLINED_FUNCTION_3_49();
  v4(v3);
  v5 = OUTLINED_FUNCTION_6_14();
  v6(v5);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v0, &qword_2800CA048, &unk_266DAFC00);
  sub_266C2AB6C(v1 + 1688);
  OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200920](v7);
}

uint64_t sub_266D4C65C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 2528);
  sub_266C2AB6C(v0 + 1688);
  *(v1 + 16) = 0;

  return MEMORY[0x282200920](v0 + 656);
}

uint64_t sub_266D4C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  v21 = *(v20 + 2488);

  v39 = *(v20 + 2536);
  OUTLINED_FUNCTION_34_7();
  v31 = *(v20 + 2368);
  v32 = *(v20 + 2360);
  v33 = *(v20 + 2352);
  v34 = *(v20 + 2328);
  v35 = *(v20 + 2304);
  v36 = *(v20 + 2296);
  v37 = *(v20 + 2288);
  v38 = *(v20 + 2280);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, a18, a19, a20);
}

uint64_t sub_266D4C87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266D4C8A0);
}

uint64_t sub_266D4C8A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_266D4C9D8;

  return v7(v2, v3, v4);
}

uint64_t sub_266D4C9D8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D4CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266D4CAFC);
}

uint64_t sub_266D4CAFC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = sub_266CC7CC0((v0[3] + 40));
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_266D4CBA4;

  return sub_266D43DD4(v1);
}

uint64_t sub_266D4CBA4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    v9 = sub_266D4CCCC;
  }

  else
  {

    *(v5 + 64) = v3;
    v9 = sub_266D4CCBC;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266D4CCCC()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D4CD2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D4972C();
}

uint64_t sub_266D4CDDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D4ADEC();
}

uint64_t sub_266D4CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266C48BB4;

  return MEMORY[0x2821B9D18](a1, a2, a3, a4);
}

uint64_t sub_266D4CF48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D49B10();
}

uint64_t sub_266D4CFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266C48BB4;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_266D4D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266C4716C;

  return MEMORY[0x2821BA0B8](a1, a2, a3);
}

unint64_t sub_266D4D15C(void *a1)
{
  a1[1] = sub_266C26A78();
  a1[2] = sub_266D4D194();
  result = sub_266D4D1E8();
  a1[3] = result;
  return result;
}

unint64_t sub_266D4D194()
{
  result = qword_2800CD640;
  if (!qword_2800CD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD640);
  }

  return result;
}

unint64_t sub_266D4D1E8()
{
  result = qword_2800CD648;
  if (!qword_2800CD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD648);
  }

  return result;
}

uint64_t sub_266D4D23C()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_45_7(v1);

  return sub_266D4C87C(v3, v4, v5);
}

uint64_t objectdestroy_20Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_266D4D338()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_45_7(v1);

  return sub_266D4CAD8(v3, v4, v5);
}

uint64_t objectdestroyTm_11()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v36 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v37 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v37, v38, v1))
        {
          v39 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v40 + 8))(v36 + v39);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v36 + v1[11]);
          v41 = type metadata accessor for Address(0);
          v42 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v42, v43, v41))
          {
            sub_266DA919C();
            v44 = OUTLINED_FUNCTION_109();
            v118 = v45;
            if (!__swift_getEnumTagSinglePayload(v44, v46, v45))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v47 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v48 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v48, v49, v50, v51, v52, v53, v54, v55, v116, v118))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v56 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v117 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v117))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v116 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v116, 1, v117))
              {
                OUTLINED_FUNCTION_9_3();
                (*(v34 + 8))(v32 + v35);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v57);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v58 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v59 = v0 + v10;
  v60 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v60, v61, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v73 + 8))(v1 + v59);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v66 = v59 + *(type metadata accessor for Friend(0) + 40);
        v67 = type metadata accessor for FriendLocation(0);
        v68 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v68, v69, v67))
        {
          break;
        }

        v70 = v66 + *(v67 + 32);
LABEL_57:
        v101 = type metadata accessor for Location(0);
        v102 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v102, v103, v101))
        {
          v104 = *(v101 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v105 + 8))(v70 + v104);

          v106 = v70 + *(v101 + 44);
          v107 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v107))
          {
            v108 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v106, 1, v108))
            {
              OUTLINED_FUNCTION_9_3();
              (*(v109 + 8))(v106, v108);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v110 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v106 + v110, 1, v108))
            {
              OUTLINED_FUNCTION_9_3();
              (*(v111 + 8))(v106 + v110, v108);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v75 = v59 + *(type metadata accessor for Friend(0) + 40);
        v76 = type metadata accessor for FriendLocation(0);
        v77 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v77, v78, v76))
        {

          v79 = v75 + *(v76 + 32);
          v80 = type metadata accessor for Location(0);
          v81 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v81, v82, v80))
          {
            v83 = *(v80 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v84 + 8))(v79 + v83);

            v2 = (v79 + *(v80 + 44));
            v85 = type metadata accessor for Address(0);
            v86 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v86, v87, v85))
            {
              sub_266DA919C();
              v88 = OUTLINED_FUNCTION_109();
              v119 = v89;
              if (!__swift_getEnumTagSinglePayload(v88, v90, v89))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v91 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v92 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v116, v119))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v100 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v70 = v59 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v59 + 40), v112);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v59 + 40), v74);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v59 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v59);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v72 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v72 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v113 + 8))(v1 + v59);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v114 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v114 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v62 + 8))(v0 + v10);
        v63 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v64 = *(v63 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v65 + 8))(v59 + v64);
        if (*(v59 + *(v63 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t sub_266D4E120@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F70, &qword_266DAF970);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  sub_266DA8E0C();
  v14 = sub_266DA8E1C();
  (*(v11 + 8))(v13, v10);
  v22[0] = a1;
  v14(&v23, v22);

  v22[0] = sub_266C39CB4(a1);
  v22[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
  sub_266DAA72C();

  sub_266DA853C();

  v16 = sub_266DA94FC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  sub_266C9A2C4();
  sub_266DA952C();

  v17 = sub_266DA957C();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  if (__swift_getEnumTagSinglePayload(v9, 1, v17))
  {
    sub_266C3A088(v9, &qword_2800CA8B8, &qword_266DB30F0);
    v18 = sub_266DA957C();
    v19 = a2;
    v20 = 1;
  }

  else
  {
    (*(*(v17 - 8) + 32))(a2, v9, v17);
    v19 = a2;
    v20 = 0;
    v18 = v17;
  }

  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
}

uint64_t sub_266D4E5EC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD658);
  v1 = __swift_project_value_buffer(v0, qword_2800CD658);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266D4E6B4(char a1)
{
  v1 = sub_266DAA6FC();
  AceObjectSetBoolForProperty();
}

void sub_266D4E724(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_266D4E790(char a1)
{
  v11 = sub_266DAAB7C();
  v1 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v4 = v3 - v2;
  v5 = sub_266DAAB6C();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v6 = sub_266DA9FDC();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_0_6();
  v7 = [objc_allocWithZone(MEMORY[0x277D54C68]) init];
  sub_266C29814(0, &qword_28156EFC0, 0x277D85C78);
  v8 = v7;
  sub_266DA9FBC();
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C5D904();
  sub_266DAAD0C();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v11);
  v9 = sub_266DAABBC();
  [v8 setDiscoveryFlags_];
  [v8 setRssiThreshold_];
  [v8 setChangeFlags_];
  [v8 setScanRate_];
  [v8 setOverrideScreenOff_];
  [v8 setDispatchQueue_];

  return v8;
}

uint64_t sub_266D4EA50()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F268);
  v1 = __swift_project_value_buffer(v0, qword_28156F268);
  if (qword_2800C90F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FC80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266D4EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_16_18();
  v33 = v30;
  v34 = sub_266D4EF18();
  i = MEMORY[0x277D84FA0];
  if (!v35)
  {
    goto LABEL_29;
  }

  v31 = v34;
  v37 = v35;
  OUTLINED_FUNCTION_29_4(v34);
  MEMORY[0x26D5F1C20](1);
  sub_266DAA7BC();
  sub_266DAB2DC();
  OUTLINED_FUNCTION_11_27();
  v32 = v39 & ~v38;
  if ((*(i + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32))
  {
    v40 = ~v38;
    v41 = i[6];
    do
    {
      v42 = v41 + 24 * v32;
      if (!*(v42 + 16))
      {
        v43 = *v42 == v31 && *(v42 + 8) == v37;
        if (v43 || (sub_266DAB17C() & 1) != 0)
        {

          i = MEMORY[0x277D84FA0];
          goto LABEL_29;
        }
      }

      v32 = (v32 + 1) & v40;
    }

    while (((*(i + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = i;
  v45 = i[2];
  if (i[3] <= v45)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      OUTLINED_FUNCTION_25_14(v45);
      v46 = sub_266D4FF88();
    }

    else
    {
      OUTLINED_FUNCTION_25_14(v45);
      v46 = sub_266D507C8();
    }

    OUTLINED_FUNCTION_29_4(v46);
    MEMORY[0x26D5F1C20](1);
    sub_266DAA7BC();
    sub_266DAB2DC();
    OUTLINED_FUNCTION_11_27();
    v32 = v48 & ~v47;
    if (((*(i + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32) & 1) == 0)
    {
      goto LABEL_27;
    }

    v49 = ~v47;
    v50 = i[6];
    while (1)
    {
      v51 = v50 + 24 * v32;
      if (!*(v51 + 16))
      {
        v52 = *v51 == v31 && *(v51 + 8) == v37;
        if (v52 || (sub_266DAB17C() & 1) != 0)
        {
          goto LABEL_61;
        }
      }

      v32 = (v32 + 1) & v49;
      if (((*(i + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32) & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_60;
  }

  for (i = MEMORY[0x277D84FA0]; ; i = v77)
  {
LABEL_27:
    *(i + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v32;
    v53 = i[6] + 24 * v32;
    *v53 = v31;
    *(v53 + 8) = v37;
    *(v53 + 16) = 0;
    v54 = i[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      __break(1u);
      goto LABEL_59;
    }

    i[2] = v56;
LABEL_29:
    v57 = sub_266D50990(v33);
    if (!v58)
    {
      goto LABEL_57;
    }

    v37 = v57;
    v33 = v58;
    OUTLINED_FUNCTION_29_4(v57);
    MEMORY[0x26D5F1C20](2);
    sub_266DAA7BC();
    sub_266DAB2DC();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_20_14();
    if (v60)
    {
      v32 = ~v59;
      v61 = i[6];
      while (1)
      {
        v62 = v61 + 24 * v31;
        if (*(v62 + 16) == 1)
        {
          v63 = *v62 == v37 && *(v62 + 8) == v33;
          if (v63 || (sub_266DAB17C() & 1) != 0)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_18_19();
        if ((v64 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_57;
    }

LABEL_39:
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v77 = i;
    v66 = i[2];
    if (i[3] > v66)
    {
      if ((v65 & 1) == 0)
      {
        sub_266D503C8();
      }

      goto LABEL_55;
    }

    if (v65)
    {
      OUTLINED_FUNCTION_25_14(v66);
      v67 = sub_266D4FF88();
    }

    else
    {
      OUTLINED_FUNCTION_25_14(v66);
      v67 = sub_266D507C8();
    }

    OUTLINED_FUNCTION_29_4(v67);
    MEMORY[0x26D5F1C20](2);
    sub_266DAA7BC();
    sub_266DAB2DC();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_20_14();
    if (v69)
    {
      break;
    }

LABEL_55:
    *(i + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v31;
    v74 = i[6] + 24 * v31;
    *v74 = v37;
    *(v74 + 8) = v33;
    *(v74 + 16) = 1;
    v75 = i[2];
    v55 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (!v55)
    {
      i[2] = v76;
LABEL_57:
      OUTLINED_FUNCTION_17_23();
      return;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    sub_266D503C8();
  }

  v32 = ~v68;
  v70 = i[6];
  while (1)
  {
    v71 = v70 + 24 * v31;
    if (*(v71 + 16) == 1)
    {
      v72 = *v71 == v37 && *(v71 + 8) == v33;
      if (v72 || (sub_266DAB17C() & 1) != 0)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_18_19();
    if ((v73 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

LABEL_61:
  sub_266DAB1EC();
  __break(1u);
}

uint64_t sub_266D4EF18()
{
  v1 = [v0 bleDevice];
  if (!v1)
  {
    return 0;
  }

  v2 = sub_266D50920(v1);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  v7 = sub_266DA739C();
  sub_266C2BAF0(v5, v6);
  v8 = [v7 fm_MACAddressString];
  v4 = sub_266DAA70C();

  return v4;
}

void sub_266D4EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v14 = a7 & 1;
  *(v13 + 32) = a7 & 1;
  v36 = sub_266D50A9C;
  v37 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_266C73FC4;
  v35 = &block_descriptor_4;
  v15 = _Block_copy(&aBlock);
  v16 = a5;
  v17 = a6;

  [v16 setInterruptionHandler_];
  _Block_release(v15);
  OUTLINED_FUNCTION_1_51();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  *(v18 + 32) = v14;
  v19 = a3;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  v36 = sub_266D50AC0;
  v37 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_266C73FC4;
  v35 = &block_descriptor_6_0;
  v20 = _Block_copy(&aBlock);
  v21 = v16;
  v22 = v17;

  [v21 setInvalidationHandler_];
  _Block_release(v20);
  OUTLINED_FUNCTION_1_51();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  *(v23 + 32) = v14;
  *(v23 + 40) = a1;
  *(v23 + 48) = a2;
  v36 = sub_266D50AD0;
  v37 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_266C5D6BC;
  v35 = &block_descriptor_12;
  v24 = _Block_copy(&aBlock);
  v25 = v21;
  v26 = v22;

  [v25 setDeviceFoundHandler_];
  _Block_release(v24);
  OUTLINED_FUNCTION_1_51();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  *(v27 + 32) = v14;
  *(v27 + 40) = v19;
  *(v27 + 48) = a4;
  v36 = sub_266D50B2C;
  v37 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_266D4E724;
  v35 = &block_descriptor_18;
  v28 = _Block_copy(&aBlock);
  v29 = v25;
  v30 = v26;

  [v29 activateWithCompletion_];
  _Block_release(v28);
}

void sub_266D4F32C(void *a1, void *a2, char a3)
{
  if (qword_2800C9448 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_28156F268);
  v6 = a1;
  v7 = a2;
  oslog = sub_266DA948C();
  v8 = sub_266DAAAEC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_266DAA72C();
    v13 = sub_266C22A3C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_266C08000, oslog, v8, "Discovery %s Interrupted", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D5F2480](v10, -1, -1);
    MEMORY[0x26D5F2480](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_266D4F4D4(void *a1, void *a2, char a3, uint64_t (*a4)(char *))
{
  if (qword_2800C9448 != -1)
  {
    swift_once();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_28156F268);
  v8 = a1;
  v9 = a2;
  v10 = sub_266DA948C();
  v11 = sub_266DAAB0C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_266DAA72C();
    v16 = sub_266C22A3C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_266C08000, v10, v11, "Discovery %s Invalidated", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D5F2480](v13, -1, -1);
    MEMORY[0x26D5F2480](v12, -1, -1);
  }

  v19 = 1;
  return a4(&v19);
}

uint64_t sub_266D4F674(void *a1, void *a2, void *a3, int a4, void (*a5)(void))
{
  LODWORD(v34) = a4;
  v9 = 0x656C62206F6ELL;
  v10 = sub_266D50990(a1);
  v12 = 0x736469206F6ELL;
  if (v11)
  {
    v12 = v10;
  }

  v36 = v12;
  v13 = 0xE600000000000000;
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  v15 = [a1 bleDevice];
  if (v15 && sub_266D50B5C(v15))
  {
    v9 = sub_266DAA6BC();
    v13 = v16;
  }

  v37 = v9;
  if (qword_2800C9448 != -1)
  {
    swift_once();
  }

  v17 = sub_266DA94AC();
  __swift_project_value_buffer(v17, qword_28156F268);
  v18 = a2;
  v19 = a3;
  v20 = a1;

  v21 = sub_266DA948C();
  v22 = sub_266DAAB0C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38[0] = v25;
    *v23 = 136315906;
    v26 = sub_266DAA72C();
    v35 = a5;
    v28 = sub_266C22A3C(v26, v27, v38);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v20;
    *v24 = v20;
    *(v23 + 22) = 2080;
    v29 = v20;
    v30 = sub_266C22A3C(v36, v14, v38);

    *(v23 + 24) = v30;
    *(v23 + 32) = 2080;
    v31 = sub_266C22A3C(v37, v13, v38);

    *(v23 + 34) = v31;
    a5 = v35;
    _os_log_impl(&dword_266C08000, v21, v22, "Discovery %s device found: %@ %s %s", v23, 0x2Au);
    sub_266C5DA24(v24);
    MEMORY[0x26D5F2480](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v25, -1, -1);
    MEMORY[0x26D5F2480](v23, -1, -1);
  }

  else
  {
  }

  v38[3] = sub_266C29814(0, &qword_28156EFA0, 0x277D54C48);
  v38[4] = &off_287866430;
  v38[0] = v20;
  v32 = v20;
  a5(v38);
  return __swift_destroy_boxed_opaque_existential_0(v38);
}

void sub_266D4F9BC(void *a1, void *a2, void *a3, char a4, void (*a5)(void))
{
  if (qword_2800C9448 != -1)
  {
    swift_once();
  }

  v9 = sub_266DA94AC();
  __swift_project_value_buffer(v9, qword_28156F268);
  v10 = a2;
  v11 = a3;
  v12 = sub_266DA948C();
  v13 = sub_266DAAB0C();

  if (os_log_type_enabled(v12, v13))
  {
    v35 = a1;
    v14 = swift_slowAlloc();
    v34 = v10;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    v16 = sub_266DAA72C();
    v18 = a5;
    v19 = sub_266C22A3C(v16, v17, &v36);

    *(v14 + 4) = v19;
    a5 = v18;
    _os_log_impl(&dword_266C08000, v12, v13, "Discovery %s activate completion", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v20 = v15;
    v10 = v34;
    MEMORY[0x26D5F2480](v20, -1, -1);
    v21 = v14;
    a1 = v35;
    MEMORY[0x26D5F2480](v21, -1, -1);
  }

  if (a1)
  {
    v22 = v10;
    v23 = v11;
    v24 = a1;
    v25 = sub_266DA948C();
    v26 = sub_266DAAAEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v27 = 136315394;
      v30 = sub_266DAA72C();
      v32 = sub_266C22A3C(v30, v31, &v36);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2112;
      v33 = sub_266DA72EC();
      *(v27 + 14) = v33;
      *v28 = v33;
      _os_log_impl(&dword_266C08000, v25, v26, "Discovery %s activate error: %@", v27, 0x16u);
      sub_266C5DA24(v28);
      MEMORY[0x26D5F2480](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D5F2480](v29, -1, -1);
      MEMORY[0x26D5F2480](v27, -1, -1);
    }

    LOBYTE(v36) = 0;
    a5(&v36);
  }
}

void sub_266D4FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_3_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD670, &qword_266DBB758);
  OUTLINED_FUNCTION_12_23();
  sub_266DAADBC();
  OUTLINED_FUNCTION_24_11();
  if (!v36)
  {
LABEL_25:

    *v30 = v32;
    OUTLINED_FUNCTION_17_23();
    return;
  }

  OUTLINED_FUNCTION_26_12();
  v37 = (v31 + 56);
  OUTLINED_FUNCTION_0_73();
  if (!v35)
  {
LABEL_4:
    v38 = v33;
    while (1)
    {
      v33 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v33 >= v34)
      {
        break;
      }

      ++v38;
      if (v37[v33])
      {
        OUTLINED_FUNCTION_4_47();
        v35 = v40 & v39;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_10_18();
    if (v50 != v51)
    {
      *v37 = -1 << v49;
    }

    else
    {
      OUTLINED_FUNCTION_28_10(v49);
    }

    v30 = a9;
    *(v31 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_5_40();
LABEL_9:
    OUTLINED_FUNCTION_15_22();
    v43 = *v41;
    v42 = v41[1];
    OUTLINED_FUNCTION_30_12(v44);
    sub_266DAB2CC();
    if (v42)
    {
      sub_266DAA7BC();
    }

    sub_266DAB2DC();
    OUTLINED_FUNCTION_2_61();
    if (v45)
    {
      break;
    }

    OUTLINED_FUNCTION_14_26();
LABEL_19:
    OUTLINED_FUNCTION_1_55(v46);
    *v48 = v43;
    v48[1] = v42;
    OUTLINED_FUNCTION_10_20();
    if (!v35)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_13_19();
  while (1)
  {
    OUTLINED_FUNCTION_21_17();
    if (v45)
    {
      if (v47)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_13_20();
    if (!v45)
    {
      OUTLINED_FUNCTION_12_20();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_266D4FE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_3_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7A0, &unk_266DB1B50);
  OUTLINED_FUNCTION_12_23();
  sub_266DAADBC();
  OUTLINED_FUNCTION_24_11();
  if (!v36)
  {
LABEL_23:

    *v30 = v32;
    OUTLINED_FUNCTION_17_23();
    return;
  }

  OUTLINED_FUNCTION_26_12();
  v37 = (v31 + 56);
  OUTLINED_FUNCTION_0_73();
  if (!v35)
  {
LABEL_4:
    v38 = v33;
    while (1)
    {
      v33 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v33 >= v34)
      {
        break;
      }

      ++v38;
      if (v37[v33])
      {
        OUTLINED_FUNCTION_4_47();
        v35 = v40 & v39;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_10_18();
    if (v50 != v51)
    {
      *v37 = -1 << v49;
    }

    else
    {
      OUTLINED_FUNCTION_28_10(v49);
    }

    v30 = a9;
    *(v31 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_5_40();
LABEL_9:
    OUTLINED_FUNCTION_15_22();
    v42 = *v41;
    v43 = v41[1];
    OUTLINED_FUNCTION_30_12(v44);
    sub_266DAA7BC();
    sub_266DAB2DC();
    OUTLINED_FUNCTION_2_61();
    if (v45)
    {
      break;
    }

    OUTLINED_FUNCTION_14_26();
LABEL_17:
    OUTLINED_FUNCTION_1_55(v46);
    *v48 = v42;
    v48[1] = v43;
    OUTLINED_FUNCTION_10_20();
    if (!v35)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_13_19();
  while (1)
  {
    OUTLINED_FUNCTION_21_17();
    if (v45)
    {
      if (v47)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_13_20();
    if (!v45)
    {
      OUTLINED_FUNCTION_12_20();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_266D4FF88()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA798, &qword_266DB1B48);
  result = sub_266DAADBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_266D500F8(*v14, *(v14 + 8), *(v14 + 16), v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v2 + 48) + 24 * (v11 | (v5 << 6));
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v2 + 32);
    if (v15 >= 64)
    {
      sub_266D2EA1C(0, (v15 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v15;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_266D500F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_266DAB2AC();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x26D5F1C20](0);
      goto LABEL_7;
    }

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  MEMORY[0x26D5F1C20](v8);
  sub_266DAA7BC();
LABEL_7:
  sub_266DAB2DC();
  result = sub_266DAAD3C();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v10 = *(a4 + 48) + 24 * result;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

void sub_266D501EC()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD670, &qword_266DBB758);
  v6 = *v0;
  v7 = sub_266DAADAC();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_14_30();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_9_22();
    while (v4)
    {
      OUTLINED_FUNCTION_23_18();
LABEL_15:
      *(*(v7 + 48) + 16 * (v13 | (v2 << 6))) = *(*(v6 + 48) + 16 * (v13 | (v2 << 6)));
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_4_47();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void sub_266D502D8()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7A0, &unk_266DB1B50);
  v6 = *v0;
  v7 = sub_266DAADAC();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_14_30();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_9_22();
    while (v4)
    {
      OUTLINED_FUNCTION_23_18();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_4_47();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void *sub_266D503C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA798, &qword_266DB1B48);
  v2 = *v0;
  v3 = sub_266DAADAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + 8 * v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_266D509F4(v19, v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_266D5052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_3_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD670, &qword_266DBB758);
  OUTLINED_FUNCTION_12_23();
  sub_266DAADBC();
  OUTLINED_FUNCTION_24_11();
  if (v36)
  {
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_0_73();
    if (v35)
    {
      while (1)
      {
        OUTLINED_FUNCTION_5_40();
LABEL_9:
        OUTLINED_FUNCTION_15_22();
        v42 = *v40;
        v41 = v40[1];
        OUTLINED_FUNCTION_30_12(v43);
        sub_266DAB2CC();
        if (v41)
        {

          sub_266DAA7BC();
        }

        sub_266DAB2DC();
        OUTLINED_FUNCTION_2_61();
        if (v44)
        {
          break;
        }

        OUTLINED_FUNCTION_14_26();
LABEL_19:
        OUTLINED_FUNCTION_1_55(v45);
        *v47 = v42;
        v47[1] = v41;
        OUTLINED_FUNCTION_10_20();
        if (!v35)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_13_19();
      while (1)
      {
        OUTLINED_FUNCTION_21_17();
        if (v44)
        {
          if (v46)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_13_20();
        if (!v44)
        {
          OUTLINED_FUNCTION_12_20();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v37 = v33;
      while (1)
      {
        v33 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v33 >= v34)
        {

          v30 = a9;
          goto LABEL_23;
        }

        ++v37;
        if (*(v31 + 56 + 8 * v33))
        {
          OUTLINED_FUNCTION_4_47();
          v35 = v39 & v38;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v30 = v32;
    OUTLINED_FUNCTION_17_23();
  }
}

void sub_266D50688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_3_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA7A0, &unk_266DB1B50);
  OUTLINED_FUNCTION_12_23();
  sub_266DAADBC();
  OUTLINED_FUNCTION_24_11();
  if (v36)
  {
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_0_73();
    if (v35)
    {
      while (1)
      {
        OUTLINED_FUNCTION_5_40();
LABEL_9:
        OUTLINED_FUNCTION_15_22();
        v41 = *v40;
        v42 = v40[1];
        OUTLINED_FUNCTION_30_12(v43);

        sub_266DAA7BC();
        sub_266DAB2DC();
        OUTLINED_FUNCTION_2_61();
        if (v44)
        {
          break;
        }

        OUTLINED_FUNCTION_14_26();
LABEL_17:
        OUTLINED_FUNCTION_1_55(v45);
        *v47 = v41;
        v47[1] = v42;
        OUTLINED_FUNCTION_10_20();
        if (!v35)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_13_19();
      while (1)
      {
        OUTLINED_FUNCTION_21_17();
        if (v44)
        {
          if (v46)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_13_20();
        if (!v44)
        {
          OUTLINED_FUNCTION_12_20();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v37 = v33;
      while (1)
      {
        v33 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v33 >= v34)
        {

          v30 = a9;
          goto LABEL_21;
        }

        ++v37;
        if (*(v31 + 56 + 8 * v33))
        {
          OUTLINED_FUNCTION_4_47();
          v35 = v39 & v38;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v30 = v32;
    OUTLINED_FUNCTION_17_23();
  }
}

uint64_t sub_266D507C8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA798, &qword_266DB1B48);
  result = sub_266DAADBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_266D500F8(v14, v15, v16, v4))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v2 + 48) + 24 * (v10 | (v5 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_266D509F4(*v13, v15, v16);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266D50920(void *a1)
{
  v2 = [a1 bluetoothAddress];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DA73CC();

  return v3;
}

uint64_t sub_266D50990(void *a1)
{
  v1 = [a1 idsIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266D509F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_266D50A0C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_266D50A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_0()
{

  OUTLINED_FUNCTION_1_51();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266D50B5C(void *a1)
{
  v2 = [a1 advertisementFields];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA6AC();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for DeviceDiscovery.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D50CB4()
{
  result = qword_2800CD678;
  if (!qword_2800CD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD678);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_10@<X0>(uint64_t a1@<X8>)
{

  return sub_266D2EA1C(0, (a1 + 63) >> 6, v1);
}

void *OUTLINED_FUNCTION_29_4(uint64_t a1, ...)
{

  return sub_266DAB2AC();
}

void *OUTLINED_FUNCTION_30_12(uint64_t a1, ...)
{

  return sub_266DAB2AC();
}

uint64_t sub_266D50FB4()
{
  v0 = swift_allocObject();
  v1 = qword_2800E6528;
  v2 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + qword_2800E6530, 1, 1, v2);
  return sub_266DA8FCC();
}

uint64_t sub_266D51034()
{
  type metadata accessor for FindmyVisualPerson(0);
  swift_allocObject();

  return sub_266D510D0(v0);
}

uint64_t sub_266D510D0(uint64_t a1)
{
  sub_266C64D14(a1 + qword_2800E6528, v1 + qword_2800E6508);
  sub_266C64D14(a1 + qword_2800E6530, v1 + qword_2800E6510);

  return MEMORY[0x2821B7AE0](a1);
}

uint64_t sub_266D5113C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
  if (v16 || (OUTLINED_FUNCTION_13_6(0x49746361746E6F63, 0xE900000000000064) & 1) != 0)
  {
    sub_266C64D14(v3 + qword_2800E6508, v15);
    v17 = sub_266DA919C();
    OUTLINED_FUNCTION_1_46(v15);
    if (!v16)
    {
      goto LABEL_24;
    }

    v18 = v15;
    goto LABEL_9;
  }

  v20 = a1 == 0x63417463656C6573 && a2 == 0xEC0000006E6F6974;
  if (v20 || (OUTLINED_FUNCTION_13_6(0x63417463656C6573, 0xEC0000006E6F6974) & 1) != 0)
  {
    sub_266C64D14(v3 + qword_2800E6510, v13);
    v17 = sub_266DA919C();
    OUTLINED_FUNCTION_1_46(v13);
    if (!v16)
    {
      goto LABEL_24;
    }

    v18 = v13;
    goto LABEL_9;
  }

  v21 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v21 || (OUTLINED_FUNCTION_13_6(0x676E697274536F74, 0xE800000000000000) & 1) != 0)
  {
    sub_266DA8FFC();
    v17 = sub_266DA919C();
    OUTLINED_FUNCTION_1_46(v10);
    if (!v16)
    {
LABEL_24:
      *(a3 + 24) = v17;
      __swift_allocate_boxed_opaque_existential_1(a3);
      OUTLINED_FUNCTION_0_65();
      return (*(v22 + 32))();
    }

    v18 = v10;
LABEL_9:
    result = sub_266C55ECC(v18);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_266DA900C();
  v23 = sub_266DA901C();

  return v23(a1, a2);
}

uint64_t sub_266D51430(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

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

uint64_t sub_266D51484(char a1)
{
  if (a1)
  {
    return 0x63417463656C6573;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_266D514EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266D51430(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266D5151C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266D51484(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266D51550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D51430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D51578(uint64_t a1)
{
  v2 = sub_266D51D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D515B4(uint64_t a1)
{
  v2 = sub_266D51D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D5163C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD6B0, &qword_266DBB8B0);
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v12 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_266D51D50();
  sub_266DAB34C();
  if (v1)
  {
    v13 = 0;
    __swift_destroy_boxed_opaque_existential_0(v21);
    type metadata accessor for FindmyVisualPerson(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18[1] = v10;
    sub_266DA919C();
    v20[0] = 0;
    sub_266D51DA4(&qword_2800CA6B8, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_2_62();
    sub_266C64C34(v8, v19 + qword_2800E6508);
    v20[0] = 1;
    OUTLINED_FUNCTION_2_62();
    sub_266C64C34(v6, v19 + qword_2800E6510);
    v15 = v21;
    sub_266C233D0(v21, v20);
    v13 = sub_266DA8FAC();
    v16 = OUTLINED_FUNCTION_0_74();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return v13;
}

uint64_t sub_266D51974(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD6A0, &qword_266DBB8A8);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_266DA900C();
  v11 = sub_266DA901C();
  result = v11(a1);
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_266D51D50();
    sub_266DAB36C();
    v13 = qword_2800E6508;
    v16 = 0;
    sub_266DA919C();
    sub_266D51DA4(&qword_2800CA6D0, MEMORY[0x277D55C50]);
    OUTLINED_FUNCTION_4_48(v3 + v13);
    v15 = 1;
    OUTLINED_FUNCTION_4_48(v3 + qword_2800E6510);
    return (*(v7 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_266D51B78(void *a1, void *a2)
{
  sub_266C55ECC(v2 + *a1);
  v4 = v2 + *a2;

  return sub_266C55ECC(v4);
}

uint64_t sub_266D51BE4(uint64_t (*a1)(void), uint64_t *a2, void *a3)
{
  v5 = a1();
  v6 = *a2;

  sub_266C55ECC(v7 + v6);
  sub_266C55ECC(v5 + *a3);

  v8 = *(*v5 + 48);
  v9 = *(*v5 + 52);

  return MEMORY[0x2821FE8D8](v5, v8, v9);
}

void sub_266D51CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_266C63E94(319);
  if (v4 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

unint64_t sub_266D51D50()
{
  result = qword_2800CD6A8;
  if (!qword_2800CD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6A8);
  }

  return result;
}

uint64_t sub_266D51DA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_266DA919C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FindmyVisualPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D51EC8()
{
  result = qword_2800CD6B8;
  if (!qword_2800CD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6B8);
  }

  return result;
}

unint64_t sub_266D51F20()
{
  result = qword_2800CD6C0;
  if (!qword_2800CD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6C0);
  }

  return result;
}

unint64_t sub_266D51F78()
{
  result = qword_2800CD6C8;
  if (!qword_2800CD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6C8);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_62()
{

  return sub_266DAB00C();
}

uint64_t OUTLINED_FUNCTION_4_48(uint64_t a1)
{

  return sub_266DAB0DC();
}

void sub_266D52030()
{
  qword_2800CD6D0 = 0xD000000000000027;
  *algn_2800CD6D8 = 0x8000000266DC37F0;
  qword_2800CD6E0 = 0x6156676E69727473;
  unk_2800CD6E8 = 0xEB0000000065756CLL;
}

uint64_t static DIDisambiguationResponse.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_2800C9450 != -1)
  {
    swift_once();
  }

  v2 = *algn_2800CD6D8;
  v3 = qword_2800CD6E0;
  v4 = unk_2800CD6E8;
  *a1 = qword_2800CD6D0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t DIDisambiguationResponse.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DIDisambiguationResponse.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static DIDisambiguationResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_266DAB17C();
  }
}

uint64_t sub_266D521B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266DAB17C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266D5223C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D521B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266D52268(uint64_t a1)
{
  v2 = sub_266D5240C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D522A4(uint64_t a1)
{
  v2 = sub_266D5240C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIDisambiguationResponse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD6F0, &qword_266DBBA10);
  OUTLINED_FUNCTION_0_75();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D5240C();
  sub_266DAB36C();
  sub_266DAB0EC();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_266D5240C()
{
  result = qword_2800CD6F8;
  if (!qword_2800CD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD6F8);
  }

  return result;
}

uint64_t DIDisambiguationResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD700, &qword_266DBBA18);
  OUTLINED_FUNCTION_0_75();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D5240C();
  sub_266DAB34C();
  if (!v2)
  {
    v11 = sub_266DAB01C();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_266D525C8(void *a1)
{
  a1[1] = sub_266D52600();
  a1[2] = sub_266D52654();
  result = sub_266D526A8();
  a1[3] = result;
  return result;
}

unint64_t sub_266D52600()
{
  result = qword_2800CD708;
  if (!qword_2800CD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD708);
  }

  return result;
}

unint64_t sub_266D52654()
{
  result = qword_2800CD710;
  if (!qword_2800CD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD710);
  }

  return result;
}

unint64_t sub_266D526A8()
{
  result = qword_2800CD718;
  if (!qword_2800CD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD718);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIDisambiguationResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_266D527F0()
{
  result = qword_2800CD720;
  if (!qword_2800CD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD720);
  }

  return result;
}

unint64_t sub_266D52848()
{
  result = qword_2800CD728;
  if (!qword_2800CD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD728);
  }

  return result;
}

unint64_t sub_266D528A0()
{
  result = qword_2800CD730;
  if (!qword_2800CD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD730);
  }

  return result;
}

uint64_t sub_266D5290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266DA74DC();
  v7 = sub_266D52BA8(a1, v6 & 1);
  v9 = round(v8);
  if ((v7 | 2) == 2)
  {
    v8 = v9;
  }

  v10 = sub_266D529E8(v7, a3, v8);
  sub_266DA750C();
  OUTLINED_FUNCTION_8_0();
  (*(v11 + 8))(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_8_0();
  (*(v12 + 8))(a1);
  return v10;
}

uint64_t sub_266D529E8(char a1, uint64_t a2, double a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_266DA8F8C();
  swift_allocObject();
  sub_266DA8F7C();
  sub_266DA8F5C();

  sub_266DAA77C();

  v6 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_266DA8F4C();

  sub_266C55ECC(v5);

  v7 = sub_266DA8F6C();

  sub_266DA8F3C();

  return v7;
}

uint64_t sub_266D52BA8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_266D52D0C(v8);
  OUTLINED_FUNCTION_1_56(v10);

  sub_266DA705C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = sub_266D52D0C(v9);
  OUTLINED_FUNCTION_1_56(v12);

  sub_266DA705C();
  v14 = v13;
  v11(v7, v4);
  if (v14 >= 0.35)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

id sub_266D52D0C(char a1)
{
  v1 = [objc_opt_self() *off_279C03640[a1]];

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_56(uint64_t a1)
{

  return MEMORY[0x28211B788](a1, v1);
}

_BYTE *storeEnumTagSinglePayload for FMFStateError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266D52E68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_266D52EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_266D52F20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aa_fmfAccount];
  *a2 = result;
  return result;
}

unint64_t sub_266D52F60()
{
  result = qword_2800CD738;
  if (!qword_2800CD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD738);
  }

  return result;
}

uint64_t sub_266D52FB4()
{
  v1 = v0;
  if (sub_266D530C4())
  {
    return 4;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  if ((sub_266D1E118() & 1) == 0)
  {
    return 3;
  }

  v3 = sub_266DAA6FC();
  v4 = MGGetBoolAnswer();

  if (!v4)
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (sub_266C68774())
  {
    return 2;
  }

  v5 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  KeyPath = swift_getKeyPath();
  LOBYTE(v5) = sub_266C68428(KeyPath, 4607302, 0xE300000000000000, v5);

  if (v5)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D530C4()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 15, v0[18]);
  if (sub_266DA7B9C() & 1) != 0 || (v2 = v0[18], v3 = v1[19], __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]), (sub_266C6A310(v2, v3)))
  {
    v4 = v1[13];
    v5 = v1[14];
    __swift_project_boxed_opaque_existential_1(v1 + 10, v4);
    v6 = (*(v5 + 8))(v4, v5) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_266D53184()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD740);
  v1 = __swift_project_value_buffer(v0, qword_2800CD740);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_266D5324C(void *a1, uint64_t a2)
{
  sub_266C233D0(a1, v2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState);
  sub_266C6F3B0(a2, v2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_sessionManager);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SetSharedLocationVisibilityIntentHandler(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_266D543BC(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

void sub_266D532D8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
  v5 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_266D53344(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
  v4 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_266D533D0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_266DA7F0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  _Block_copy(a3);
  if ([a1 visibility])
  {
    v25[1] = a2;
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState + 24));
    sub_266DA7EFC();
    v11 = sub_266DA7B1C();
    (*(v7 + 8))(v9, v6);
    if (v11)
    {
      [a1 visibility];
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = sub_266C23320;
      v12[4] = v10;
      v13 = a1;

      sub_266C358C4();
    }

    else
    {
      if (qword_2800C9458 != -1)
      {
        swift_once();
      }

      v20 = sub_266DA94AC();
      __swift_project_value_buffer(v20, qword_2800CD740);
      v21 = sub_266DA948C();
      v22 = sub_266DAAB0C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266C08000, v21, v22, "Device is not authenticated, attempting to unlock before handling the request.", v23, 2u);
        MEMORY[0x26D5F2480](v23, -1, -1);
      }

      v24 = [objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse()) init];
      [v24 _setRequiresAuthentication_];
      (a3)[2](a3, v24);
    }
  }

  else
  {
    if (qword_2800C9458 != -1)
    {
      swift_once();
    }

    v14 = sub_266DA94AC();
    __swift_project_value_buffer(v14, qword_2800CD740);
    v15 = sub_266DA948C();
    v16 = sub_266DAAAFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266C08000, v15, v16, "SetSharedLocationVisibilityIntent visibility is unknown, cannot handle intent.", v17, 2u);
      MEMORY[0x26D5F2480](v17, -1, -1);
    }

    v18 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
    v19 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(5, 0);
    (a3)[2](a3, v19);
  }

  _Block_release(a3);
}

void sub_266D537F0(void *a1, void (*a2)(id), char *a3)
{
  v7 = sub_266DA7F0C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 visibility])
  {
    v26 = a3;
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState), *(v3 + OBJC_IVAR____TtC10SiriFindMy40SetSharedLocationVisibilityIntentHandler_deviceState + 24));
    sub_266DA7EFC();
    v11 = sub_266DA7B1C();
    (*(v8 + 8))(v10, v7);
    if (v11)
    {
      [a1 visibility];
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = v26;
      v13 = a1;

      sub_266C358C4();
    }

    else
    {
      if (qword_2800C9458 != -1)
      {
        OUTLINED_FUNCTION_0_76(&qword_2800C9458);
      }

      v20 = sub_266DA94AC();
      __swift_project_value_buffer(v20, qword_2800CD740);
      v21 = sub_266DA948C();
      v22 = sub_266DAAB0C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266C08000, v21, v22, "Device is not authenticated, attempting to unlock before handling the request.", v23, 2u);
        MEMORY[0x26D5F2480](v23, -1, -1);
      }

      v24 = [objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse()) init];
      [v24 _setRequiresAuthentication_];
      a2(v24);
    }
  }

  else
  {
    if (qword_2800C9458 != -1)
    {
      OUTLINED_FUNCTION_0_76(&qword_2800C9458);
    }

    v14 = sub_266DA94AC();
    __swift_project_value_buffer(v14, qword_2800CD740);
    v15 = sub_266DA948C();
    v16 = sub_266DAAAFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266C08000, v15, v16, "SetSharedLocationVisibilityIntent visibility is unknown, cannot handle intent.", v17, 2u);
      MEMORY[0x26D5F2480](v17, -1, -1);
    }

    v18 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
    v26 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(5, 0);
    (a2)();
    v19 = v26;
  }
}

void sub_266D53B90(__int16 a1, void *a2, void (*a3)(void))
{
  if ((a1 & 0x100) == 0)
  {
    if (qword_2800C9458 != -1)
    {
      swift_once();
    }

    v5 = sub_266DA94AC();
    __swift_project_value_buffer(v5, qword_2800CD740);
    v6 = a2;
    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41 = v10;
      *v9 = 136315138;
      v11 = sub_266CE02F0([v6 visibility]);
      v13 = sub_266C22A3C(v11, v12, &v41);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_266C08000, v7, v8, "Visibility successfully set to %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    v14 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
    v15 = 4;
LABEL_13:
    v40 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(v15, 0);
    a3();

    return;
  }

  if (a1 == 2)
  {
    if (qword_2800C9458 != -1)
    {
      swift_once();
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CD740);
    v17 = a2;
    v18 = sub_266DA948C();
    v19 = sub_266DAAB0C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = v21;
      *v20 = 136315138;
      v22 = sub_266CE02F0([v17 visibility]);
      v24 = sub_266C22A3C(v22, v23, &v41);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_266C08000, v18, v19, "Visibility is already set to  %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D5F2480](v21, -1, -1);
      MEMORY[0x26D5F2480](v20, -1, -1);
    }

    v25 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
    v15 = 100;
    goto LABEL_13;
  }

  if (qword_2800C9458 != -1)
  {
    swift_once();
  }

  v26 = sub_266DA94AC();
  __swift_project_value_buffer(v26, qword_2800CD740);
  v27 = a2;
  v28 = sub_266DA948C();
  v29 = sub_266DAAAEC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315394;
    v32 = SharedLocationVisibility.description.getter([v27 visibility]);
    v34 = sub_266C22A3C(v32, v33, &v41);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = sub_266DAA72C();
    v37 = sub_266C22A3C(v35, v36, &v41);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_266C08000, v28, v29, "Error when attempting to set shared location visibility to %s: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v31, -1, -1);
    MEMORY[0x26D5F2480](v30, -1, -1);
  }

  v38 = objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntentResponse());
  v39 = SetSharedLocationVisibilityIntentResponse.init(code:userActivity:)(5, 0);
  a3();
}

void sub_266D5406C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

id SetSharedLocationVisibilityIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetSharedLocationVisibilityIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetSharedLocationVisibilityIntentHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SetSharedLocationVisibilityIntentHandler(uint64_t a1)
{
  result = qword_2800CD760;
  if (!qword_2800CD760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D54248(uint64_t a1)
{
  result = type metadata accessor for FindFriendSessionManager(319);
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

uint64_t objectdestroyTm_12()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266D543BC(uint64_t a1)
{
  FriendSessionManager = type metadata accessor for FindFriendSessionManager(0);
  (*(*(FriendSessionManager - 8) + 8))(a1, FriendSessionManager);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_76(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_266D5443C(uint64_t a1)
{
  v2 = type metadata accessor for ContactNLIntent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156F6C0 != -1)
  {
    swift_once();
  }

  sub_266D54868();
  sub_266DA873C();
  if (v18 == 6)
  {
    sub_266C180F8(a1);
    return 1;
  }

  else if (v18 == 7)
  {
    sub_266C180F8(a1);
    return 2;
  }

  else
  {
    if (qword_2800C9460 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_2800CD770);
    sub_266C1805C(a1, v4);
    v7 = sub_266DA948C();
    v8 = sub_266DAAAEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      sub_266DA873C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD788, &qword_266DBBDE8);
      v11 = sub_266DAA72C();
      v13 = v12;
      sub_266C180F8(v4);
      v14 = sub_266C22A3C(v11, v13, &v17);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_266C08000, v7, v8, "Unexpected contact verb of %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      MEMORY[0x26D5F2480](v9, -1, -1);

      v15 = a1;
    }

    else
    {

      sub_266C180F8(a1);
      v15 = v4;
    }

    sub_266C180F8(v15);
    return 0;
  }
}

uint64_t sub_266D546D8(uint64_t a1)
{
  if (qword_28156F710 != -1)
  {
LABEL_22:
    swift_once();
  }

  type metadata accessor for ContactNLIntent(0);
  sub_266D54868();
  v3 = OUTLINED_FUNCTION_0_77();
  v4 = 0;
  v5 = *(v3 + 16);
  v6 = 1;
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_1_57(v4);
    v4 = v1;
    if (v7)
    {
      goto LABEL_18;
    }
  }

  v8 = OUTLINED_FUNCTION_0_77();
  v9 = 0;
  v10 = *(v8 + 16);
  v6 = 2;
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_1_57(v9);
    v9 = v1;
    if (v11)
    {
      goto LABEL_18;
    }
  }

  v12 = OUTLINED_FUNCTION_0_77();
  v13 = 0;
  v14 = *(v12 + 16);
  v6 = 3;
  while (v14 != v13)
  {
    if (v13 >= *(v12 + 16))
    {
      goto LABEL_21;
    }

    v15 = v13 + 1;
    sub_266C175B0(*(v12 + v13 + 32));
    v13 = v15;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_18:

  sub_266C180F8(a1);
  return v6;
}

unint64_t sub_266D54868()
{
  result = qword_28156F668;
  if (!qword_28156F668)
  {
    type metadata accessor for ContactNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F668);
  }

  return result;
}

uint64_t sub_266D548C0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD770);
  v1 = __swift_project_value_buffer(v0, qword_2800CD770);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_0_77()
{

  return sub_266DA874C();
}

void OUTLINED_FUNCTION_1_57(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 32);

  sub_266C175B0(v3);
}

uint64_t sub_266D549C4(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))(a1);
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = result + 56;
  v11 = v9 & *(result + 56);
  v12 = (v8 + 63) >> 6;
  while (v11)
  {
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    if (*(v15 + 16) != 2)
    {
      if (*(v15 + 16))
      {
        v17 = v6;
        v4 = *v15;
        v16 = *(v15 + 8);

        v5 = v16;
      }

      else
      {
        v17 = *v15;
      }

      v6 = v17;
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v10 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_9;
    }
  }

  if (!v5)
  {
    return v6;
  }

  return v4;
}

uint64_t sub_266D54B2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a6 != 1)
    {
      return 0;
    }

LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return sub_266DAB17C();
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_266D54B94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return MEMORY[0x26D5F1C20](0);
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x26D5F1C20](v4);

  return sub_266DAA7BC();
}

uint64_t sub_266D54C18(uint64_t a1, uint64_t a2, char a3)
{
  sub_266DAB2AC();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x26D5F1C20](0);
      return sub_266DAB2DC();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x26D5F1C20](v4);
  sub_266DAA7BC();
  return sub_266DAB2DC();
}

uint64_t sub_266D54CDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_266DAB2AC();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26D5F1C20](0);
      return sub_266DAB2DC();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x26D5F1C20](v3);
  sub_266DAA7BC();
  return sub_266DAB2DC();
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy16TransportAddressO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_266D54D94()
{
  result = qword_2800CD790;
  if (!qword_2800CD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD790);
  }

  return result;
}

uint64_t sub_266D54DE8(unint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_266DA7B1C())
  {
    return 0;
  }

  Array<A>.hasNonNearbyDevices.getter(a1);
  if ((v6 & 1) == 0)
  {
    Array<A>.hasItems.getter(a1);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  return sub_266C6A2A0(v8, v9) & 1;
}

uint64_t SpeakableString.hash(into:)(uint64_t a1)
{
  sub_266DA917C();
  sub_266DAA7BC();

  sub_266DA918C();
  sub_266DAA7BC();
}

uint64_t SpeakableString.hashValue.getter()
{
  sub_266DAB2AC();
  v0 = sub_266DA917C();
  OUTLINED_FUNCTION_9_19(v0, v1, v2);

  v3 = sub_266DA918C();
  OUTLINED_FUNCTION_9_19(v3, v4, v5);

  return sub_266DAB2DC();
}

uint64_t sub_266D54F70(uint64_t a1)
{
  sub_266DAB2AC();
  sub_266DA917C();
  sub_266DAA7BC();

  sub_266DA918C();
  sub_266DAA7BC();

  return sub_266DAB2DC();
}

unint64_t sub_266D54FF0()
{
  result = qword_2800CCC28;
  if (!qword_2800CCC28)
  {
    sub_266DA919C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCC28);
  }

  return result;
}

uint64_t sub_266D55048(uint64_t a1, int a2)
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

uint64_t sub_266D55088(uint64_t result, int a2, int a3)
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

uint64_t sub_266D550E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_266D5510C);
}

uint64_t sub_266D5510C()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = &unk_266DBBFD0;
  *(v3 + 56) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 64) = v4;
  *v4 = v5;
  v4[1] = sub_266D55210;
  v6 = *(v0 + 16);

  return MEMORY[0x282200740](v6);
}

uint64_t sub_266D55210()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266D55338);
  }

  else
  {

    OUTLINED_FUNCTION_28();

    return v6();
  }
}

uint64_t sub_266D55338()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D553B4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 16);
  swift_willThrow();
  v2 = v1;
  OUTLINED_FUNCTION_28();

  return v3();
}

uint64_t sub_266D55424(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_266D55444);
}

uint64_t sub_266D55444()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 80);
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  sub_266D403B8(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 48);
  *(v4 + 64) = *(v0 + 64);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 96) = v6;
  *v6 = v7;
  v6[1] = sub_266D55558;
  v8 = *(v0 + 72);

  return v10(v8, v3, v2, &unk_266DBBFB8, v4, &unk_266DBBFC0, 0);
}

uint64_t sub_266D55558()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266D55680);
  }

  else
  {

    OUTLINED_FUNCTION_28();

    return v6();
  }
}

uint64_t sub_266D55680()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D556DC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6E8, &qword_266DB64B0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D557A8);
}

uint64_t sub_266D557A8()
{
  OUTLINED_FUNCTION_34();
  *(v0 + 48) = *(*__swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24)) + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC168, &qword_266DB5CB8);
  v2 = sub_266D55E60();
  MEMORY[0x26D5F02C0](v1, v2);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 96) = v3;
  *v3 = v4;
  v3[1] = sub_266D55890;

  return v6(v0 + 16);
}

uint64_t sub_266D55890()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_266D559D8);
}

uint64_t sub_266D559D8()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 32);
  if (v1 == 1)
  {
    sub_266D55E0C();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
    *v4 = *(v0 + 16) & 1;
    *(v4 + 8) = v6;
    *(v4 + 16) = v1;
    *(v4 + 24) = v5 & 1;
  }

  OUTLINED_FUNCTION_28();

  return v3();
}

uint64_t sub_266D55ACC()
{
  OUTLINED_FUNCTION_34();
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v0 = sub_266DA94AC();
  __swift_project_value_buffer(v0, &unk_28156F1E0);
  v1 = sub_266DA948C();
  v2 = sub_266DAAB0C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266C08000, v1, v2, "Timed out waiting on MeDeviceInfo", v3, 2u);
    MEMORY[0x26D5F2480](v3, -1, -1);
  }

  sub_266D55E0C();
  swift_allocError();
  *v4 = 1;
  swift_willThrow();
  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266D55C08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C4716C;

  return sub_266D55424(a1);
}

uint64_t sub_266D55CA0()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_266C48BB4;

  return sub_266D556DC(v3, v0 + 16);
}

uint64_t sub_266D55D34()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_266C4716C;

  return sub_266D1F220();
}

unint64_t sub_266D55E0C()
{
  result = qword_2800CD798;
  if (!qword_2800CD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD798);
  }

  return result;
}

unint64_t sub_266D55E60()
{
  result = qword_2800CC170;
  if (!qword_2800CC170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC168, &qword_266DB5CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC170);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FMFCoreMeDeviceInfoProvider.MeDeviceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D55FA4()
{
  result = qword_2800CD7A0;
  if (!qword_2800CD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD7A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return swift_task_alloc();
}

uint64_t sub_266D56020(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_266D56060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D560F0()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D56198()
{
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E6498);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    *OUTLINED_FUNCTION_11() = 0;
    OUTLINED_FUNCTION_32_1(&dword_266C08000, v4, v5, "FindDevice.HandleIntentStrategy.makeIntentExecutionBehavior() called");
    OUTLINED_FUNCTION_6_1();
  }

  v7 = v0[6];
  v6 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  v11 = *(v9 + 80);
  type metadata accessor for FindDeviceAndPlaySoundIntent();

  v12 = v11;
  v13 = v10;
  sub_266DA7A3C();
  sub_266DA7A9C();
  sub_266DA7A8C();
  (*(v7 + 8))(v6, v8);

  v14 = OUTLINED_FUNCTION_15_5();

  return v15(v14);
}

uint64_t sub_266D56300(void *a1, uint64_t a2)
{
  v3 = sub_266D14B44(a1);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v3;
  if (!sub_266C3A14C())
  {

LABEL_19:
    v17 = 0;
    return v17 & 1;
  }

  sub_266CB9F54();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26D5F1780](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  swift_beginAccess();
  v8 = *(a2 + v7);
  if (v8 != 4 && v8 != 1)
  {
LABEL_18:

    goto LABEL_19;
  }

  v10 = [v6 isEarbuds];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 isHeadphones];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 BOOLValue];

    if (((v12 | v15) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = sub_266CC7C44();

  v17 = v16 ^ 1;
  return v17 & 1;
}

uint64_t sub_266D56454(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_266D56480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30_2();
  a18 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v23 = sub_266DA7FCC();
  v20[8] = v23;
  v24 = sub_266DA7FBC();
  v20[9] = v24;
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v25 = sub_266DA94AC();
  __swift_project_value_buffer(v25, qword_2800E6498);
  v26 = v24;
  v27 = sub_266DA948C();
  v28 = sub_266DAAB0C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    a9 = v30;
    *v29 = 136315138;
    v31 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
    OUTLINED_FUNCTION_150(&v26[OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code], (v20 + 2));
    DeviceAndPlaySoundIntentResponse = FindDeviceAndPlaySoundIntentResponseCode.description.getter(*&v26[v31]);
    v34 = sub_266C22A3C(DeviceAndPlaySoundIntentResponse, v33, &a9);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_266C08000, v27, v28, "FindDevice.HandleIntentStrategy.makeIntentHandledResponse() called with code: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  if (sub_266D56300(v23, v26))
  {
    v35 = sub_266DA948C();
    v36 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v36))
    {
      v37 = OUTLINED_FUNCTION_11();
      *v37 = 0;
      _os_log_impl(&dword_266C08000, v35, v36, "Ping is interruptible by speech, skipping final success dialog.", v37, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266DA7C4C();
    sub_266DA7C3C();

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_26_4();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v20[10] = v47;
    *v47 = v48;
    v47[1] = sub_266D56720;
    OUTLINED_FUNCTION_26_4();

    return sub_266D568D8();
  }
}

uint64_t sub_266D56720()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D5681C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_15_4();

  return v2();
}

uint64_t sub_266D56878()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266D568D8()
{
  OUTLINED_FUNCTION_22_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[26] = OUTLINED_FUNCTION_64();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[30] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[33] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[37] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[38] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[39] = v12;
  v1[40] = *(v13 + 64);
  v1[41] = OUTLINED_FUNCTION_64();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB488, &qword_266DB3B68);
  OUTLINED_FUNCTION_4_3(v14);
  v1[49] = OUTLINED_FUNCTION_62();
  v15 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v15);
  v1[50] = OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_266D56B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v22[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v23 = sub_266DA7FCC();
  v22[52] = v23;
  v24 = sub_266D14B44(v23);
  if (v24)
  {
    v25 = v24;
    if (sub_266C3A14C())
    {
      OUTLINED_FUNCTION_63();
      sub_266CB9F54();
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26D5F1780](0, v25);
      }

      else
      {
        v26 = *(v25 + 32);
      }

      v27 = v26;
      v22[53] = v26;

      v28 = sub_266D9BD18(v27);
      if (!v29)
      {
        goto LABEL_22;
      }

      if (v28 == 1296389193 && v29 == 0xE400000000000000)
      {
      }

      else
      {
        v31 = sub_266DAB17C();

        if ((v31 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      [v27 setDeviceLocality_];
LABEL_22:
      v46 = v22[50];
      v47 = v22[24];
      type metadata accessor for FindmyDevice(0);
      __swift_project_boxed_opaque_existential_1((v47 + 40), *(v47 + 64));
      v48 = v27;
      sub_266DA7AFC();
      v49 = sub_266D9AF54(v48, v46, 0, 0xF000000000000000, 0, 0, 0, 0);
      v22[54] = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v22[55] = v50;
      v51 = OUTLINED_FUNCTION_101(v50);
      v22[56] = v51;
      *(v51 + 16) = xmmword_266DAE3B0;
      *(v51 + 32) = v49;

      sub_266CAA15C();
      v52 = swift_task_alloc();
      v22[57] = v52;
      *v52 = v22;
      v52[1] = sub_266D56F84;
      OUTLINED_FUNCTION_25_0();

      return sub_266D43ED8(v53, v54);
    }
  }

  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v32 = sub_266DA94AC();
  __swift_project_value_buffer(v32, qword_2800E6498);
  v33 = sub_266DA948C();
  v34 = sub_266DAAAFC();
  if (OUTLINED_FUNCTION_16_0(v34))
  {
    v35 = OUTLINED_FUNCTION_11();
    *v35 = 0;
    _os_log_impl(&dword_266C08000, v33, v34, "Devices slot is nil or empty: cannot create handle intent output.", v35, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266C488FC();
  v65 = swift_allocError();
  *v36 = 6;
  swift_willThrow();

  v56 = v22[38];
  v57 = v22[37];
  v58 = v22[36];
  v59 = v22[35];
  v60 = v22[32];
  v61 = v22[29];
  v62 = v22[28];
  v63 = v22[27];
  v64 = v22[26];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, a19, a20, a21, a22);
}

uint64_t sub_266D56F84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 464) = v5;
  *(v3 + 472) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D5708C()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[53];
  v4 = v0[49];
  v5 = v0[47];
  v116 = v0[38];
  v117 = v0[52];
  v119 = v0[36];
  v6 = v0[25];
  v7 = sub_266DA7FBC();
  sub_266CAFC70(v4);

  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = v3;
  v12 = sub_266C1CEB4(v11);
  v14 = v13;
  LOBYTE(v3) = sub_266CC7C44();

  *v5 = 4;
  *(v5 + 8) = v12;
  *(v5 + 16) = v14;
  *(v5 + 24) = v3 & 1;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v15 = OUTLINED_FUNCTION_101(v2);
  v0[60] = v15;
  *(v15 + 16) = xmmword_266DAE3B0;
  *(v15 + 32) = v1;
  v16 = v1;
  sub_266D14B44(v117);
  sub_266CC2614();

  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    OUTLINED_FUNCTION_63();
    sub_266CB9F54();
    if ((v15 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x26D5F1780](0, v15);
    }

    else
    {
      v21 = *(v15 + 32);
    }

    v22 = v21;
    v23 = [v21 catId];

    sub_266DAA70C();
    OUTLINED_FUNCTION_114_1();
  }

  else
  {
    OUTLINED_FUNCTION_92_1();
  }

  v24 = v0[45];
  v26 = v0[39];
  v25 = v0[40];
  v108 = v0[38];
  v110 = v0[37];
  v27 = v0[35];
  v28 = v0[34];
  v104 = v0[33];
  v106 = v0[36];
  v112 = v0[32];
  v114 = v0[48];
  v118 = v0[25];
  OUTLINED_FUNCTION_128();
  sub_266C67BE8(v29, v30, v31, &qword_266DB0080);
  OUTLINED_FUNCTION_143();
  v32 = (v25 + *(v26 + 80) + ((*(v26 + 80) + 24) & ~*(v26 + 80))) & ~*(v26 + 80);
  v33 = swift_allocObject();
  v0[61] = v33;
  OUTLINED_FUNCTION_142(v33);
  sub_266C475DC(v24, v33 + v32);
  (*(v28 + 16))(v27, v106, v104);
  v34 = swift_task_alloc();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 40) = v116;
  *(v34 + 48) = v119;
  *(v34 + 56) = v108;
  *(v34 + 64) = 514;
  *(v34 + 72) = sub_266C48BBC;
  *(v34 + 80) = v33;
  *(v34 + 88) = v110;

  sub_266DA800C();

  v43 = OUTLINED_FUNCTION_45_8(v35, v36, v37, v38, v39, v40, v41, v42, v102, v104, v106, v108, v110, v112, v114);
  v45 = sub_266C67BE8(v43, v44, &qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_33_9(v45, v46, v47, v48, v49, v50, v51, v52, v103, v105, v107, v109, v111, v113, v115, v116, v118);
  if (v59)
  {
    v53 = v0 + 44;
  }

  else
  {
    v54 = v0[25];
    OUTLINED_FUNCTION_9_23(v0[44], v0[29]);
    v55 = OUTLINED_FUNCTION_32();
    sub_266C67BE8(v55, v56, v57, v58);
    OUTLINED_FUNCTION_19_2();
    if (!v59)
    {
      v79 = v0[28];
      v80 = v0[25];
      OUTLINED_FUNCTION_2_63();
      sub_266D63620(v81, v79, v82);
      v0[15] = v80;
      v83 = sub_266C4DB4C();
      OUTLINED_FUNCTION_95_1(v83);
      v84 = OUTLINED_FUNCTION_41();
      sub_266D6367C(v84, v85, v54);
      v86 = OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_54_6(v86);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_24_1();
      v0[62] = v87;
      *v87 = v88;
      v87[1] = sub_266D576A8;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_112();

      __asm { BR              X5 }
    }

    v53 = v0 + 43;
    OUTLINED_FUNCTION_1_58();
    sub_266D636D8(v60, v61);
  }

  OUTLINED_FUNCTION_77_2(*v53);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  v62 = v0[25];
  if (v63 == 1)
  {
    v64 = v0[47];
    OUTLINED_FUNCTION_77_2(v0[42]);
    v65 = OUTLINED_FUNCTION_34_5();
    sub_266C67BE8(v65, v66, v67, &qword_266DB0080);
    OUTLINED_FUNCTION_30_13();
    if (v59)
    {
      sub_266C47654(v0[41], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_24_1();
      v0[65] = v68;
      *v68 = v69;
      v68[1] = sub_266D57EF8;
      OUTLINED_FUNCTION_112();

      __asm { BR              X3 }
    }

    v92 = v0[25];
    v91 = v0[26];
    OUTLINED_FUNCTION_5_41();
    sub_266D63620(v93, v91, v94);
    v0[5] = v92;
    v95 = sub_266C4DB4C();
    OUTLINED_FUNCTION_147(v95);
    v96 = OUTLINED_FUNCTION_41();
    sub_266D6367C(v96, v97, v64);
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_24_1();
    v0[64] = v98;
    *v98 = v99;
    v98[1] = sub_266D57C48;
  }

  else
  {
    v72 = v0[27];
    OUTLINED_FUNCTION_2_63();
    sub_266D63620(v73, v72, v74);
    v0[10] = v62;
    v75 = sub_266C4DB4C();
    v76 = OUTLINED_FUNCTION_117(v75);
    OUTLINED_FUNCTION_54_6(v76);
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_24_1();
    v0[63] = v77;
    *v77 = v78;
    v77[1] = sub_266D57998;
  }

  OUTLINED_FUNCTION_112();

  __asm { BR              X4 }
}

uint64_t sub_266D576A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_138();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D577A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v49 = v26[47];
  v50 = v26[48];
  v27 = v26[31];
  v28 = v26[32];
  v30 = v26[29];
  v29 = v26[30];
  v31 = v26[28];

  sub_266D636D8(v31, type metadata accessor for Snippets);
  sub_266D636D8(v30, type metadata accessor for Snippets);
  (*(v27 + 8))(v28, v29);
  v32 = OUTLINED_FUNCTION_38();
  v33(v32);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v34, v35, v36);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v37, v38, v39);
  OUTLINED_FUNCTION_10_21();
  sub_266C47654(v31, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(type metadata accessor for Snippets, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(v27 + 8, &qword_2800CB488, &qword_266DB3B68);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v49, v50, a24, a25, a26);
}

uint64_t sub_266D57998()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D57A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_96_3();
  v32 = *(v27 + 216);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v32, v33);
  v34 = OUTLINED_FUNCTION_22_5();
  v35(v34);
  v36 = OUTLINED_FUNCTION_38();
  v37(v36);
  v38 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v38, v39, v40);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v41, v42, v43);
  OUTLINED_FUNCTION_10_21();
  sub_266C47654(v30 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v31, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(v26, &qword_2800CB488, &qword_266DB3B68);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D57C48()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D57D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_96_3();
  v32 = *(v27 + 208);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v32, v33);
  v34 = OUTLINED_FUNCTION_22_5();
  v35(v34);
  v36 = OUTLINED_FUNCTION_38();
  v37(v36);
  v38 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v38, v39, v40);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v41, v42, v43);
  OUTLINED_FUNCTION_10_21();
  sub_266C47654(v30 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v31, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(v26, &qword_2800CB488, &qword_266DB3B68);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D57EF8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D57FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v28 = v26[47];
  v29 = v26[34];
  v31 = v26[31];
  v30 = v26[32];
  v32 = v26[30];

  v33 = OUTLINED_FUNCTION_48_3();
  v34(v33);
  v35 = OUTLINED_FUNCTION_38();
  v36(v35);
  v37 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v37, v38, v39);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v40, v41, v42);
  OUTLINED_FUNCTION_10_21();
  sub_266C47654(v31, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v27, &qword_2800CA048, &unk_266DAFC00);

  sub_266C47654(v28, &qword_2800CB488, &qword_266DB3B68);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D581AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[53];
  v24 = v22[52];

  v43 = v22[59];
  v34 = v22[38];
  v35 = v22[37];
  v36 = v22[36];
  v37 = v22[35];
  v38 = v22[32];
  v39 = v22[29];
  v40 = v22[28];
  v41 = v22[27];
  v42 = v22[26];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, a20, a21, a22);
}

uint64_t sub_266D58300()
{
  OUTLINED_FUNCTION_22_0();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[28] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[29] = OUTLINED_FUNCTION_64();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[33] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[34] = v6;
  v1[35] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[36] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[37] = v8;
  v1[38] = OUTLINED_FUNCTION_64();
  v1[39] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[40] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[41] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[42] = v12;
  v1[43] = *(v13 + 64);
  v1[44] = OUTLINED_FUNCTION_64();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_266D58550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v19 = sub_266DA94AC();
  __swift_project_value_buffer(v19, qword_2800E6498);
  v20 = sub_266DA948C();
  v21 = sub_266DAAB0C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_11();
    *v22 = 0;
    _os_log_impl(&dword_266C08000, v20, v21, "FindDevice.HandleIntentStrategy.makePreHandleIntentOutput() called", v22, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v23 = sub_266DA7FCC();
  v18[52] = v23;
  v24 = sub_266DA7FBC();
  v18[53] = v24;
  v25 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  OUTLINED_FUNCTION_150(&v24[OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code], (v18 + 22));
  if (*&v24[v25] == 2)
  {
    v26 = sub_266DA948C();
    v27 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v27))
    {
      v28 = OUTLINED_FUNCTION_11();
      *v28 = 0;
      _os_log_impl(&dword_266C08000, v26, v27, "Skipping pre-handle output because our status is .continueInApp", v28, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266DA7C4C();
    sub_266DA7C3C();

    OUTLINED_FUNCTION_7_34();

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_60();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v38 = sub_266D14B44(v23);
  if (v38)
  {
    v39 = v38;
    if (sub_266C3A14C())
    {
      OUTLINED_FUNCTION_63();
      sub_266CB9F54();
      if ((v39 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x26D5F1780](0, v39);
      }

      else
      {
        v40 = *(v39 + 32);
      }

      v41 = v40;

      v42 = sub_266CC7C44();

      if (v42)
      {
        v43 = v18[27];
        v45 = v43[14];
        v44 = v43[15];
        __swift_project_boxed_opaque_existential_1(v43 + 11, v45);
        (*(*(v44 + 8) + 16))(v45);
      }
    }

    else
    {
    }
  }

  if (sub_266D56300(v23, v24))
  {
    v46 = sub_266DA948C();
    v47 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v47))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_32_1(&dword_266C08000, v48, v49, "Ping is interruptible by speech, sending success dialog in pre-handle.");
      OUTLINED_FUNCTION_6_1();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v18[64] = v50;
    *v50 = v51;
    v50[1] = sub_266D59AF0;
    OUTLINED_FUNCTION_60();

    return sub_266D568D8();
  }

  v53 = sub_266D14B44(v23);
  if (v53)
  {
    v54 = v53;
    if (sub_266C3A14C())
    {
      OUTLINED_FUNCTION_63();
      sub_266CB9F54();
      if ((v54 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x26D5F1780](0, v54);
      }

      else
      {
        v55 = *(v54 + 32);
      }

      v56 = v55;
      v57 = v18[27];

      v58 = sub_266CC7CC0((v57 + 40));

      goto LABEL_31;
    }
  }

  v58 = 0;
LABEL_31:
  v18[54] = v58;
  sub_266CAA15C();
  v59 = swift_task_alloc();
  v18[55] = v59;
  *v59 = v18;
  v59[1] = sub_266D58A0C;
  OUTLINED_FUNCTION_60();

  return sub_266D43FFC(v60, v61);
}

uint64_t sub_266D58A0C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v4;
  *(v2 + 456) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v5);
}

void sub_266D58B10()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[28];
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v11 = OUTLINED_FUNCTION_101(v10);
  v0[58] = v11;
  *(v11 + 16) = xmmword_266DAE3B0;
  *(v11 + 32) = v1;
  sub_266DA7E5C();
  v12 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  if (v2)
  {
    v94 = *(v0[54] + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe);
  }

  else
  {
    v94 = 0;
  }

  v15 = v0[56];
  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = v15;
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    OUTLINED_FUNCTION_63();
    sub_266CB9F54();
    if ((v11 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x26D5F1780](0, v11);
    }

    else
    {
      v21 = *(v11 + 32);
    }

    v22 = v21;
    v23 = [v21 catId];

    v90 = sub_266DAA70C();
    v93 = v24;
  }

  else
  {
    v90 = 0;
    v93 = 0;
  }

  v25 = v0[48];
  v27 = v0[42];
  v26 = v0[43];
  v87 = v0[41];
  v88 = v0[40];
  v28 = v0[38];
  v29 = v0[37];
  v85 = v0[36];
  v86 = v0[39];
  v89 = v0[51];
  v91 = v0[28];
  v92 = v0[47];
  OUTLINED_FUNCTION_128();
  sub_266C67BE8(v30, v31, v32, &qword_266DB0080);
  OUTLINED_FUNCTION_143();
  v33 = (v26 + *(v27 + 80) + ((*(v27 + 80) + 24) & ~*(v27 + 80))) & ~*(v27 + 80);
  v34 = swift_allocObject();
  v0[59] = v34;
  OUTLINED_FUNCTION_142(v34);
  sub_266C475DC(v25, v34 + v33);
  (*(v29 + 16))(v28, v86, v85);
  v35 = swift_task_alloc();
  *(v35 + 16) = v94;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = v90;
  *(v35 + 48) = v93;
  *(v35 + 56) = v87;
  *(v35 + 64) = 514;
  *(v35 + 72) = sub_266C48BBC;
  *(v35 + 80) = v34;
  *(v35 + 88) = v88;

  sub_266DA800C();

  sub_266C67BE8(v89, v92, &qword_2800CA050, &qword_266DB0080);
  if (__swift_getEnumTagSinglePayload(v92, 1, v91) == 1)
  {
    v36 = v0 + 47;
  }

  else
  {
    v37 = v0[28];
    OUTLINED_FUNCTION_9_23(v0[47], v0[32]);
    v38 = OUTLINED_FUNCTION_32();
    sub_266C67BE8(v38, v39, v40, v41);
    OUTLINED_FUNCTION_19_2();
    if (!v42)
    {
      v62 = v0[31];
      v63 = v0[28];
      OUTLINED_FUNCTION_2_63();
      sub_266D63620(v64, v62, v65);
      v0[15] = v63;
      v66 = sub_266C4DB4C();
      OUTLINED_FUNCTION_95_1(v66);
      v67 = OUTLINED_FUNCTION_41();
      sub_266D6367C(v67, v68, v37);
      v69 = OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_54_6(v69);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_24_1();
      v0[60] = v70;
      *v70 = v71;
      v70[1] = sub_266D59124;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_112();

      __asm { BR              X5 }
    }

    v36 = v0 + 46;
    OUTLINED_FUNCTION_1_58();
    sub_266D636D8(v43, v44);
  }

  OUTLINED_FUNCTION_77_2(*v36);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  v45 = v0[28];
  if (v46 == 1)
  {
    v47 = v0[50];
    OUTLINED_FUNCTION_77_2(v0[45]);
    v48 = OUTLINED_FUNCTION_34_5();
    sub_266C67BE8(v48, v49, v50, &qword_266DB0080);
    OUTLINED_FUNCTION_30_13();
    if (v42)
    {
      sub_266C47654(v0[44], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_24_1();
      v0[63] = v51;
      *v51 = v52;
      v51[1] = sub_266D5988C;
      OUTLINED_FUNCTION_112();

      __asm { BR              X3 }
    }

    v75 = v0[28];
    v74 = v0[29];
    OUTLINED_FUNCTION_5_41();
    sub_266D63620(v76, v74, v77);
    v0[5] = v75;
    v78 = sub_266C4DB4C();
    OUTLINED_FUNCTION_147(v78);
    v79 = OUTLINED_FUNCTION_41();
    sub_266D6367C(v79, v80, v47);
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_24_1();
    v0[62] = v81;
    *v81 = v82;
    v81[1] = sub_266D59618;
  }

  else
  {
    v55 = v0[30];
    OUTLINED_FUNCTION_2_63();
    sub_266D63620(v56, v55, v57);
    v0[10] = v45;
    v58 = sub_266C4DB4C();
    v59 = OUTLINED_FUNCTION_117(v58);
    OUTLINED_FUNCTION_54_6(v59);
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_24_1();
    v0[61] = v60;
    *v60 = v61;
    v60[1] = sub_266D593A4;
  }

  OUTLINED_FUNCTION_112();

  __asm { BR              X4 }
}

uint64_t sub_266D59124()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_138();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D59220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v23 = *(v19 + 248);
  v24 = *(v19 + 256);

  OUTLINED_FUNCTION_2_63();
  sub_266D636D8(v23, v25);
  sub_266D636D8(v24, v18);
  v26 = OUTLINED_FUNCTION_18_20();
  v27(v26);
  v28 = OUTLINED_FUNCTION_24_4();
  v29(v28);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v21, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v20, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D593A4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D594A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v22 = *(v18 + 240);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v22, v23);
  v24 = OUTLINED_FUNCTION_18_20();
  v25(v24);
  v26 = OUTLINED_FUNCTION_24_4();
  v27(v26);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v20, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v19, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D59618()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D59718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v22 = *(v18 + 232);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v22, v23);
  v24 = OUTLINED_FUNCTION_18_20();
  v25(v24);
  v26 = OUTLINED_FUNCTION_24_4();
  v27(v26);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v20, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v19, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D5988C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D5998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();

  v22 = OUTLINED_FUNCTION_18_20();
  v23(v22);
  v24 = OUTLINED_FUNCTION_24_4();
  v25(v24);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_45_2();
  sub_266C47654(v20, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v19, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D59AF0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 520) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D59BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_94_0();
  v19 = *(v18 + 416);

  OUTLINED_FUNCTION_7_34();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_60();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_266D59CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  v21 = *(v20 + 416);

  OUTLINED_FUNCTION_64_1();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266D59DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  v21 = *(v20 + 416);

  OUTLINED_FUNCTION_64_1();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266D59EC8()
{
  OUTLINED_FUNCTION_22_0();
  v1[90] = v0;
  v1[89] = v2;
  v1[88] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[91] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[92] = OUTLINED_FUNCTION_64();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[108] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[109] = v6;
  v1[110] = OUTLINED_FUNCTION_64();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v7 = sub_266DA7C0C();
  v1[114] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[115] = v8;
  v1[116] = OUTLINED_FUNCTION_64();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[121] = OUTLINED_FUNCTION_64();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[125] = OUTLINED_FUNCTION_64();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[129] = v12;
  v1[130] = *(v13 + 64);
  v1[131] = OUTLINED_FUNCTION_64();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_266D5A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_3();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30_2();
  a18 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B90, &qword_266DBB6E0);
  v23 = sub_266DA7FBC();
  *(v20 + 1256) = v23;
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v24 = sub_266DA94AC();
  __swift_project_value_buffer(v24, qword_2800E6498);
  v25 = v23;
  v26 = sub_266DA948C();
  v27 = sub_266DAAB0C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    a9 = v29;
    *v28 = 136315138;
    v30 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
    OUTLINED_FUNCTION_150(&v25[OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code], v20 + 680);
    DeviceAndPlaySoundIntentResponse = FindDeviceAndPlaySoundIntentResponseCode.description.getter(*&v25[v30]);
    v33 = sub_266C22A3C(DeviceAndPlaySoundIntentResponse, v32, &a9);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_266C08000, v26, v27, "FindDevice.HandleIntentStrategy.makeFailureHandlingIntentResponse() called with response code: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v34 = OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code;
  OUTLINED_FUNCTION_150(&v25[OBJC_IVAR___FindDeviceAndPlaySoundIntentResponse_code], v20 + 656);
  switch(*&v25[v34])
  {
    case 'd':
      v60 = *(v20 + 1240);
      v61 = *(v20 + 728);
      *(v20 + 1264) = *(*(v20 + 720) + 136);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
      *v60 = 5;
      *(v60 + 8) = xmmword_266DB27B0;
      *(v60 + 24) = 0;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      v65 = OUTLINED_FUNCTION_57_1();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v61);
      *(v20 + 1668) = 1;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      OUTLINED_FUNCTION_7_7(v68);
      *(v20 + 1272) = sub_266DA93CC();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v70 = OUTLINED_FUNCTION_101(v69);
      *(v20 + 1280) = v70;
      *(v70 + 16) = xmmword_266DAE3B0;
      v71 = swift_task_alloc();
      *(v20 + 1288) = v71;
      *v71 = v20;
      OUTLINED_FUNCTION_88_0(v71);
      OUTLINED_FUNCTION_26_4();

      return sub_266D44CAC();
    case 'e':
      v73 = *(v20 + 1176);
      v74 = *(v20 + 728);
      *(v20 + 1352) = *(*(v20 + 720) + 136);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
      *v73 = 5;
      *(v73 + 8) = xmmword_266DB27A0;
      *(v73 + 24) = 0;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      v78 = OUTLINED_FUNCTION_57_1();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v74);
      *(v20 + 1667) = 1;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      OUTLINED_FUNCTION_7_7(v81);
      *(v20 + 1360) = sub_266DA93CC();
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v83 = OUTLINED_FUNCTION_101(v82);
      *(v20 + 1368) = v83;
      *(v83 + 16) = xmmword_266DAE3B0;
      v84 = swift_task_alloc();
      *(v20 + 1376) = v84;
      *v84 = v20;
      OUTLINED_FUNCTION_88_0(v84);
      OUTLINED_FUNCTION_26_4();

      return sub_266D44C04();
    case 'f':
      v44 = [v25 &selRef__mapItemByStrippingOptionalData];
      if (!v44)
      {
        goto LABEL_19;
      }

      v45 = v44;
      v46 = sub_266CC7C44();

      if ((v46 & 1) == 0)
      {
        goto LABEL_19;
      }

      *(v20 + 1440) = [v25 &selRef__mapItemByStrippingOptionalData];
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v20 + 1448) = v47;
      *v47 = v48;
      v47[1] = sub_266D5D56C;
      OUTLINED_FUNCTION_26_4();

      return sub_266D61118();
    case 'i':
    case 'j':
      __swift_project_boxed_opaque_existential_1((*(v20 + 720) + 224), *(*(v20 + 720) + 248));
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v20 + 1464) = v35;
      *v35 = v36;
      v35[1] = sub_266D5D8A0;
      OUTLINED_FUNCTION_26_4();

      return sub_266CA23EC();
    case 'k':
      v39 = sub_266DA7FCC();
      v40 = sub_266D63580(v39);
      if (!v40)
      {
        goto LABEL_32;
      }

      v41 = v40;
      if (sub_266C3A14C())
      {
        sub_266CB9F54();
        if ((v41 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x26D5F1780](0, v41);
        }

        else
        {
          v42 = *(v41 + 32);
        }

        v43 = v42;
      }

      else
      {

LABEL_32:
        v43 = 0;
      }

      *(v20 + 1480) = v43;
      *(v20 + 1488) = *(*(v20 + 720) + 136);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
      if (v43)
      {
        v101 = sub_266C1CEB4(v43);
        v103 = v102;
        v104 = sub_266CC7C44();
      }

      else
      {
        v104 = 0;
        v101 = 0;
        v103 = 0;
      }

      v105 = *(v20 + 1128);
      v106 = *(v20 + 728);
      *v105 = 4;
      *(v105 + 8) = v101;
      *(v105 + 16) = v103;
      *(v105 + 24) = v104 & 1;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      v107 = OUTLINED_FUNCTION_57_1();
      __swift_storeEnumTagSinglePayload(v107, v108, v109, v106);
      *(v20 + 1666) = 1;
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      OUTLINED_FUNCTION_7_7(v110);
      *(v20 + 1496) = sub_266DA93CC();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v112 = OUTLINED_FUNCTION_101(v111);
      *(v20 + 1504) = v112;
      *(v112 + 16) = xmmword_266DAE3B0;
      v113 = swift_task_alloc();
      *(v20 + 1512) = v113;
      *v113 = v20;
      OUTLINED_FUNCTION_88_0(v113);
      OUTLINED_FUNCTION_26_4();

      return sub_266D44B5C();
    default:
LABEL_19:
      *(v20 + 1576) = *(*(v20 + 720) + 136);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
      v54 = [v25 device];
      if (v54)
      {
        v55 = v54;
        v56 = sub_266C1CEB4(v54);
        v58 = v57;
        v59 = sub_266CC7C44();
      }

      else
      {
        v59 = 0;
        v56 = 0;
        v58 = 0;
      }

      v86 = *(v20 + 1080);
      v87 = *(v20 + 728);
      *v86 = 4;
      *(v86 + 8) = v56;
      *(v86 + 16) = v58;
      *(v86 + 24) = v59 & 1;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v86, 0, 1, v87);
      *(v20 + 1664) = 1;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      OUTLINED_FUNCTION_7_7(v88);
      *(v20 + 1584) = sub_266DA93CC();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v90 = OUTLINED_FUNCTION_101(v89);
      *(v20 + 1592) = v90;
      *(v90 + 16) = xmmword_266DAE3B0;
      *(v20 + 1665) = 3;
      v91 = sub_266DA7FCC();
      sub_266CAA15C();

      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v20 + 1600) = v92;
      *v92 = v93;
      v92[1] = sub_266D5F0D4;
      OUTLINED_FUNCTION_26_4();

      return sub_266D945C8(v94, v95);
  }
}

uint64_t sub_266D5AB84()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[162] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v5[155]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[163] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D5B198()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 616));
  __swift_destroy_boxed_opaque_existential_0((v2 + 576));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5B2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_129();
  v65 = *(v62 + 848);

  OUTLINED_FUNCTION_6_36();
  sub_266D636D8(v65, v66);
  v67 = OUTLINED_FUNCTION_4_4();
  sub_266D636D8(v67, v68);
  v69 = OUTLINED_FUNCTION_16_19();
  v70(v69);
  v71 = OUTLINED_FUNCTION_48_3();
  v72(v71);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v65, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5B568()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 536));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_129();
  v66 = *(v63 + 840);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_16_19();
  v69(v68);
  v70 = OUTLINED_FUNCTION_48_3();
  v71(v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5B920()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 496));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5BA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_129();
  v66 = *(v63 + 832);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_16_19();
  v69(v68);
  v70 = OUTLINED_FUNCTION_48_3();
  v71(v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5BCD8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D5BDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_129();

  v65 = OUTLINED_FUNCTION_16_19();
  v66(v65);
  v67 = OUTLINED_FUNCTION_48_3();
  v68(v67);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5C080()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[173] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v5[147]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[174] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D5C684()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 456));
  __swift_destroy_boxed_opaque_existential_0((v2 + 416));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_125();
  v65 = *(v62 + 816);

  OUTLINED_FUNCTION_6_36();
  sub_266D636D8(v65, v66);
  v67 = OUTLINED_FUNCTION_4_4();
  sub_266D636D8(v67, v68);
  v69 = OUTLINED_FUNCTION_17_24();
  v70(v69);
  v71 = OUTLINED_FUNCTION_48_3();
  v72(v71);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v65, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5CA54()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 376));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_125();
  v66 = *(v63 + 808);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_17_24();
  v69(v68);
  v70 = OUTLINED_FUNCTION_48_3();
  v71(v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5CE0C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 336));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5CF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_125();
  v66 = *(v63 + 800);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_17_24();
  v69(v68);
  v70 = OUTLINED_FUNCTION_48_3();
  v71(v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5D1C4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D5D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_125();

  v65 = OUTLINED_FUNCTION_17_24();
  v66(v65);
  v67 = OUTLINED_FUNCTION_48_3();
  v68(v67);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5D56C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 1456) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D5D66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5D8A0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 1472) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

void sub_266D5D99C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_3_51(*(v0 + 1472));

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D5DBD8()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[190] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v5[141]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[191] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D5E1DC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5E2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_136();
  v66 = *(v62 + 784);

  OUTLINED_FUNCTION_6_36();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_4_4();
  sub_266D636D8(v68, v69);
  v70 = OUTLINED_FUNCTION_13_21();
  v71(v70);
  v72 = OUTLINED_FUNCTION_22_5();
  v73(v72);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v66, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5E5B0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_136();
  v67 = *(v63 + 776);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v67, v68);
  v69 = OUTLINED_FUNCTION_13_21();
  v70(v69);
  v71 = OUTLINED_FUNCTION_22_5();
  v72(v71);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5E96C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_136();
  v67 = *(v63 + 768);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v67, v68);
  v69 = OUTLINED_FUNCTION_13_21();
  v70(v69);
  v71 = OUTLINED_FUNCTION_22_5();
  v72(v71);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5ED28()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D5EE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_136();

  v66 = OUTLINED_FUNCTION_13_21();
  v67(v66);
  v68 = OUTLINED_FUNCTION_22_5();
  v69(v68);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5F0D4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[201] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v5[135]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[202] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D5F6C0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_138();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5F7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_131();
  v65 = *(v62 + 752);

  OUTLINED_FUNCTION_6_36();
  sub_266D636D8(v65, v66);
  v67 = OUTLINED_FUNCTION_4_4();
  sub_266D636D8(v67, v68);
  v69 = OUTLINED_FUNCTION_15_23();
  v70(v69);
  v71 = OUTLINED_FUNCTION_48_3();
  v72(v71);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v65, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5FA84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_131();
  v66 = *(v63 + 744);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_15_23();
  v69(v68);
  v70 = OUTLINED_FUNCTION_48_3();
  v71(v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D5FE3C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D5FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_131();
  v66 = *(v63 + 736);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v66, v67);
  v68 = OUTLINED_FUNCTION_15_23();
  v69(v68);
  v70 = OUTLINED_FUNCTION_48_3();
  v71(v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v64, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_266D601F4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D602F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_131();

  v65 = OUTLINED_FUNCTION_15_23();
  v66(v65);
  v67 = OUTLINED_FUNCTION_48_3();
  v68(v67);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_19_5();
  sub_266C47654(v63, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v62, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_78();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_52_6();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

void sub_266D6059C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1256);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_3_51(*(v0 + 1296));

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D607E8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1256);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_3_51(*(v0 + 1384));

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D60A34()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1256);

  OUTLINED_FUNCTION_3_51(*(v0 + 1456));

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D60C78()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[185];
  v2 = v0[157];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_3_51(v0[190]);

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D60ECC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1256);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_3_51(*(v0 + 1608));

  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D61118()
{
  OUTLINED_FUNCTION_22_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[26] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[27] = OUTLINED_FUNCTION_64();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[31] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[32] = v6;
  v1[33] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[34] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[35] = v8;
  v1[36] = OUTLINED_FUNCTION_64();
  v1[37] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[38] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[39] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[40] = v12;
  v1[41] = *(v13 + 64);
  v1[42] = OUTLINED_FUNCTION_64();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_266D61368()
{
  v34 = v0;
  if (qword_2800C93D8 != -1)
  {
    OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
  }

  v1 = *(v0 + 192);
  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800E6498);
  v3 = v1;
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315138;
    *(v0 + 176) = v6;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD7B0, &unk_266DBC210);
    v10 = sub_266DAA72C();
    v12 = sub_266C22A3C(v10, v11, &v33);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_266C08000, v4, v5, "FindDevice.HandleIntentStrategy.handleItemTimeout called with %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v13 = *(v0 + 192);
  *(v0 + 400) = *(*(v0 + 200) + 136);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  if (v13)
  {
    v18 = sub_266C1CEB4(v3);
    v20 = v19;
    v21 = sub_266CC7C44();
  }

  else
  {
    v21 = 0;
    v18 = 0;
    v20 = 0;
  }

  v22 = *(v0 + 384);
  v23 = *(v0 + 208);
  *v22 = 4;
  *(v22 + 8) = v18;
  *(v22 + 16) = v20;
  *(v22 + 24) = v21 & 1;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  v24 = OUTLINED_FUNCTION_57_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  *(v0 + 488) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  OUTLINED_FUNCTION_7_7(v27);
  *(v0 + 408) = sub_266DA93CC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v29 = OUTLINED_FUNCTION_101(v28);
  *(v0 + 416) = v29;
  *(v29 + 16) = xmmword_266DAE3B0;
  v30 = swift_task_alloc();
  *(v0 + 424) = v30;
  *v30 = v0;
  v30[1] = sub_266D61608;
  v31 = *(v0 + 192);

  return sub_266D626D4(v31);
}

uint64_t sub_266D61608()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[54] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v5[48]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[55] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D61BE8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_138();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D61CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v25 = *(v22 + 232);

  OUTLINED_FUNCTION_6_36();
  sub_266D636D8(v25, v26);
  v27 = OUTLINED_FUNCTION_4_4();
  sub_266D636D8(v27, v28);
  v29 = OUTLINED_FUNCTION_11_28();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  OUTLINED_FUNCTION_17_5();
  v33 = OUTLINED_FUNCTION_38();
  sub_266C47654(v33, v34, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D61E60()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D61F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v25 = *(v22 + 224);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v25, v26);
  v27 = OUTLINED_FUNCTION_11_28();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  v31 = OUTLINED_FUNCTION_38();
  sub_266C47654(v31, v32, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D620D0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D621D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v25 = *(v22 + 216);

  OUTLINED_FUNCTION_1_58();
  sub_266D636D8(v25, v26);
  v27 = OUTLINED_FUNCTION_11_28();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  v31 = OUTLINED_FUNCTION_38();
  sub_266C47654(v31, v32, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D62340()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D62440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();

  v24 = OUTLINED_FUNCTION_11_28();
  v25(v24);
  v26 = OUTLINED_FUNCTION_18_3();
  v27(v26);
  OUTLINED_FUNCTION_17_5();
  v28 = OUTLINED_FUNCTION_38();
  sub_266C47654(v28, v29, &qword_266DB0080);
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v23, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D625A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  v21 = v20[52];
  v31 = v20[39];
  v32 = v20[38];
  v33 = v20[37];
  v34 = v20[36];
  v35 = v20[33];
  v36 = v20[30];
  v37 = v20[29];
  v38 = v20[28];
  v39 = v20[27];

  *(v21 + 16) = 0;

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, a18, a19, a20);
}

uint64_t sub_266D626D4(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  v2[48] = type metadata accessor for Location(0);
  v2[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D627C4);
}

uint64_t sub_266D627C4()
{
  v1 = *(v0 + 368);
  if (v1 && (v2 = [*(v0 + 368) location]) != 0)
  {
    sub_266C5FF68(v2, *(v0 + 424));
  }

  else
  {
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 376) + 144), *(*(v0 + 376) + 168));
  v7 = OUTLINED_FUNCTION_38();
  v9 = v8(v7);
  if (!v1 || (v9 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = *(v0 + 416);
  v11 = *(v0 + 384);
  v12 = *(v0 + 368);
  sub_266C67BE8(*(v0 + 424), v10, &qword_2800C9B20, &unk_266DB1EC0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_266C47654(*(v0 + 416), &qword_2800C9B20, &unk_266DB1EC0);
LABEL_9:
    if (qword_2800C93D8 != -1)
    {
      OUTLINED_FUNCTION_1_11(&qword_2800C93D8);
    }

    v13 = *(v0 + 424);
    v14 = *(v0 + 400);
    v16 = *(v0 + 368);
    v15 = *(v0 + 376);
    v17 = sub_266DA94AC();
    __swift_project_value_buffer(v17, qword_2800E6498);
    sub_266D635E8(v15, v0 + 16);
    sub_266C67BE8(v13, v14, &qword_2800C9B20, &unk_266DB1EC0);
    v18 = v16;
    v19 = sub_266DA948C();
    v20 = sub_266DAAB0C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 400);
    if (v21)
    {
      v43 = *(v0 + 384);
      v23 = swift_slowAlloc();
      *v23 = 67109632;
      v25 = *(v0 + 184);
      v24 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v25);
      v26 = (*(v24 + 8))(v25, v24) & 1;
      sub_266C26F18(v0 + 16);
      *(v23 + 4) = v26;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v1 == 0;

      *(v23 + 14) = 1024;
      v27 = __swift_getEnumTagSinglePayload(v22, 1, v43) == 1;
      sub_266C47654(v22, &qword_2800C9B20, &unk_266DB1EC0);
      *(v23 + 16) = v27;
      _os_log_impl(&dword_266C08000, v19, v20, "Can't speak deviceLocation. (featureEnabled: %{BOOL}d, deviceIsNil: %{BOOL}d, locationIsNil: %{BOOL}d)", v23, 0x14u);
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
      sub_266C47654(*(v0 + 400), &qword_2800C9B20, &unk_266DB1EC0);
      sub_266C26F18(v0 + 16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD7B8, &qword_266DBC220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266DAE4A0;
    if (v1)
    {
      v29 = sub_266CC7CC0((*(v0 + 376) + 40));
    }

    else
    {
      v29 = 0;
    }

    v30 = 0;
    *(inited + 32) = v29;
    v31 = MEMORY[0x277D84F90];
    for (i = MEMORY[0x277D84F90]; ; v31 = i)
    {
      *(v0 + 448) = v31;
      if ((v30 & 1) != 0 || !*(inited + 32))
      {
        break;
      }

      MEMORY[0x26D5F1270](v32);
      if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((i & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      sub_266DAA96C();
      v30 = 1;
    }

    swift_setDeallocating();
    sub_266C6F5A8();
    v33 = swift_task_alloc();
    *(v0 + 456) = v33;
    *v33 = v0;
    OUTLINED_FUNCTION_88_0(v33);

    return sub_266D44134(v31);
  }

  v35 = *(v0 + 384);
  v36 = *(v0 + 376);
  sub_266D63620(*(v0 + 416), *(v0 + 392), type metadata accessor for Location);
  __swift_project_boxed_opaque_existential_1((v36 + 88), *(v36 + 112));
  v37 = OUTLINED_FUNCTION_4_4();
  sub_266D6367C(v37, v38, type metadata accessor for Location);
  v39 = OUTLINED_FUNCTION_57_1();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
  v12;
  v42 = swift_task_alloc();
  *(v0 + 432) = v42;
  *v42 = v0;
  v42[1] = sub_266D62CC8;

  return DeviceLocationDescriptionProviding.notFoundNearbyDescription(device:deviceLocation:)();
}

uint64_t sub_266D62CC8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v2[40] = v1;
  v2[41] = v4;
  v2[42] = v0;
  v6 = *(v5 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v9 + 440) = v0;

  sub_266C47654(v6, &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266D62DF8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 424);

  OUTLINED_FUNCTION_70_2();
  sub_266C47654(v1, &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_93_0();

  v2 = OUTLINED_FUNCTION_15_5();

  return v3(v2);
}

uint64_t sub_266D62EB0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v2[43] = v1;
  v2[44] = v4;
  v2[45] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v7 + 464) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D62FD0()
{
  OUTLINED_FUNCTION_56();
  sub_266C47654(*(v0 + 424), &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_93_0();

  v1 = OUTLINED_FUNCTION_15_5();

  return v2(v1);
}

uint64_t sub_266D63074()
{
  OUTLINED_FUNCTION_56();
  sub_266C47654(*(v0 + 424), &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_93_0();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266D63114()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 424);

  OUTLINED_FUNCTION_70_2();
  sub_266C47654(v1, &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_93_0();

  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266D631C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266C4716C;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_266D6328C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D58300();
}

uint64_t sub_266D63334(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266C48BB4;

  return sub_266D56454(a1, a2);
}

uint64_t sub_266D633DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D59EC8();
}

uint64_t sub_266D63484()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4DA10;

  return sub_266D560F0();
}

unint64_t sub_266D6352C()
{
  result = qword_2800CD7A8;
  if (!qword_2800CD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD7A8);
  }

  return result;
}

uint64_t sub_266D63580(void *a1)
{
  v2 = [a1 devices];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for DeviceDetail();
  v3 = sub_266DAA93C();

  return v3;
}

uint64_t sub_266D63620(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_4_4();
  v5(v4);
  return a2;
}

uint64_t sub_266D6367C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_4_4();
  v5(v4);
  return a2;
}

uint64_t sub_266D636D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_13()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v34 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v35 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v35, v36, v1))
        {
          v37 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v38 + 8))(v34 + v37);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v34 + v1[11]);
          v39 = type metadata accessor for Address(0);
          v40 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {
            sub_266DA919C();
            v42 = OUTLINED_FUNCTION_109();
            v114 = v43;
            if (!__swift_getEnumTagSinglePayload(v42, v44, v43))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v45 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v46 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v46, v47, v48, v49, v50, v51, v52, v53, v112, v114))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v54 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v113 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v113))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v112 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v112, 1, v113))
              {
                (*(*(v113 - 8) + 8))(v32 + v112);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v55);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v56 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v57 = v0 + v10;
  v58 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v58, v59, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v57);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v64 = v57 + *(type metadata accessor for Friend(0) + 40);
        v65 = type metadata accessor for FriendLocation(0);
        v66 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v66, v67, v65))
        {
          break;
        }

        v68 = v64 + *(v65 + 32);
LABEL_57:
        v99 = type metadata accessor for Location(0);
        v100 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          v102 = *(v99 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v103 + 8))(v68 + v102);

          v104 = v68 + *(v99 + 44);
          v105 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v105))
          {
            v106 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v104, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v107 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v104 + v107, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104 + v107, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v73 = v57 + *(type metadata accessor for Friend(0) + 40);
        v74 = type metadata accessor for FriendLocation(0);
        v75 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v75, v76, v74))
        {

          v77 = v73 + *(v74 + 32);
          v78 = type metadata accessor for Location(0);
          v79 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v79, v80, v78))
          {
            v81 = *(v78 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v82 + 8))(v77 + v81);

            v2 = (v77 + *(v78 + 44));
            v83 = type metadata accessor for Address(0);
            v84 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
            {
              sub_266DA919C();
              v86 = OUTLINED_FUNCTION_109();
              v115 = v87;
              if (!__swift_getEnumTagSinglePayload(v86, v88, v87))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v89 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v90 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v90, v91, v92, v93, v94, v95, v96, v97, v112, v115))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v98 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v68 = v57 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v108);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v72);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v57 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v69 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v70 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v70 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v109 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v110 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v110 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v60 + 8))(v0 + v10);
        v61 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v62 = *(v61 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v63 + 8))(v57 + v62);
        if (*(v57 + *(v61 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}
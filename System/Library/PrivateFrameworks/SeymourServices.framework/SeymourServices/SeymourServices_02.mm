uint64_t sub_226EC7504(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v23 = a2;
  v24 = a3;
  v4 = sub_22766B3B0();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3F0();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B410();
  v22 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_226EA1CF4();
  v17 = sub_22766C950();
  sub_22766B400();
  sub_22766C550();
  sub_22766B430();
  v21 = *(v11 + 8);
  v21(v13, v10);
  v18 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);

  sub_22766B3D0();
  v28 = MEMORY[0x277D84F90];
  sub_226E9D3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C50](v16, v9, v6, v19);
  _Block_release(v19);

  (*(v27 + 8))(v6, v4);
  (*(v25 + 8))(v9, v26);
  v21(v16, v22);
}

uint64_t sub_226EC78B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_226EC78E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226EC7A48();
  *a1 = result;
  return result;
}

uint64_t sub_226EC7924(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    *(v8 + 8) = a2 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

id sub_226EC7A48()
{
  v1 = sub_227666FB0();
  v3 = v2;
  v5 = v4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663B00();
  sub_226EB2DFC(v1, v3, v5);
  if (v19 == 14)
  {
    return 0;
  }

  result = MEMORY[0x22AA91B00]();
  v9 = v0[7];
  v10 = *v0 + v9;
  if (__OFADD__(*v0, v9))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v8;
    v6 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
    sub_22766CE20();

    MEMORY[0x22AA98450](v11, v12);

    v13 = sub_22766BFD0();

    [v6 setUniqueName_];

    [v6 setVersion_];
    [v6 setMinimumEngineVersion_];
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD000000000000017, 0x800000022769CB10);
    v14 = sub_227666F70();
    MEMORY[0x22AA98450](v14);

    MEMORY[0x22AA98450](0xD0000000000000B3, 0x800000022769CC20);
    v15 = sub_227666F70();
    MEMORY[0x22AA98450](v15);

    MEMORY[0x22AA98450](0x35203D3E202927, 0xE700000000000000);
    v16 = sub_22766BFD0();

    [v6 setPredicate_];

    [v6 setEarnLimit_];
    v17 = sub_22766BFD0();
    [v6 setValueExpression_];

    v18 = [objc_opt_self() kilocalorieUnit];
    [v6 setCanonicalUnit_];

    [v6 setVisibilityPredicate_];
    [v6 setDuplicateRemovalStrategy_];
    [v6 setDuplicateRemovalCalendarUnit_];
    result = [v6 setEarnDateStrategy_];
    if ((v10 & 0x8000000000000000) == 0)
    {
      [v6 setDisplayOrder_];
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226EC7DAC(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_226EC7FC0, 0, 0);
}

uint64_t sub_226EC7EAC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22748C368;
  }

  else
  {
    v2 = sub_226EC8060;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226EC7FC0()
{
  *(v0[17] + 64) = v0[24];
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_226EB8590;

  return sub_226EBD8B4(0);
}

uint64_t sub_226EC8060(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v4 = *(v1 + 72);
    sub_226F6649C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
LABEL_5:

    v10 = *(v1 + 8);

    return v10();
  }

  v6 = *(v1 + 104);
  *(v1 + 32) = *(v1 + 16);
  v8 = sub_227667710();
  v9 = *(v1 + 80);
  if (v6)
  {
    (*(v9 + 8))(*(v1 + 88), *(v1 + 72), v8);
    goto LABEL_5;
  }

  v12 = v8;
  v13 = v7;
  (*(v9 + 8))();

  v14 = *(v1 + 8);

  return v14(v12, v13);
}

uint64_t sub_226EC81E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v7 = sub_2274E97E4;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_226EC8318;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226EC8318()
{
  (*(v0 + 16))(*(v0 + 56), *(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

void sub_226EC8394()
{
  v1 = *(sub_22766B780() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + v4);

  sub_226EC343C(v5, v6, v7, v0 + v3, v8, v0 + ((v2 + v4 + 8) & ~v2));
}

uint64_t sub_226EC8438(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_226ECC838;

  return v6(v3 + 33);
}

uint64_t sub_226EC8528(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_226EC870C(a1, v4, v7, v6, v5);
}

uint64_t sub_226EC85F8()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_226FB6668;
  }

  else
  {
    v2 = sub_226EC8898;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226EC870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_226ECC65C;

  return sub_226EC87C4(a2, a3, a4, a5);
}

uint64_t sub_226EC87C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a4;
  *(v4 + 40) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC8BD0, 0, 0);
}

uint64_t sub_226EC8898()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  sub_226E93170(v0[32], v1, &qword_27D7B9330, &qword_227673B00);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_226E97D1C(v0[31], &qword_27D7B9330, &qword_227673B00);
    sub_22766A610();
    v4 = sub_22766B380();
    v5 = sub_22766C8B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226E8E000, v4, v5, "No achievement environment cache in the database, building a new one", v6, 2u);
      MEMORY[0x22AA9A450](v6, -1, -1);
    }

    v7 = v0[37];
    v8 = v0[35];
    v9 = v0[33];
    v10 = v0[26];

    v7(v8, v9);
    sub_226E91B50(v10 + 56, (v0 + 10));
    sub_226E91B50(v10 + 16, (v0 + 15));
    sub_226E91B50(v10 + 176, (v0 + 20));
    sub_226FB68A4(v10 + 112, (v0 + 2));
    v11 = v0[13];
    v12 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v11);
    v13 = *(v11 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v12, v11);
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 15), v0[18]);
    v0[41] = sub_226FB6958(*v14, v0 + 20, v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);

    v15 = swift_task_alloc();
    v0[42] = v15;
    *v15 = v0;
    v15[1] = sub_226FB62F8;
    v16 = v0[29];

    return sub_227002FA4(v16, 0, 0xE000000000000000, 0, 0xE000000000000000);
  }

  else
  {
    v18 = v0[31];
    v19 = v0[27];
    v20 = v0[28];
    v21 = v0[25];
    sub_226E97D1C(v0[32], &qword_27D7B9330, &qword_227673B00);
    (*(v20 + 32))(v21, v18, v19);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_226EC8BD0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[11];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[12] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 194;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_226EC9234;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D54, v2, v4);
  }

  else
  {
    v7 = (v0[7] + *v0[7]);
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_226ECB3C0;

    return v7(v0 + 17);
  }
}

uint64_t sub_226EC8E18()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_226F52D8C;
  }

  else
  {
    v2 = sub_226EC8F2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226EC8F2C()
{
  v1 = v0[12];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_226EC9E50;
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[12];

  return (v10)(v6, sub_226EC938C, v8, v7, v2, v3);
}

uint64_t sub_226EC9090@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22766B7A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB18, &qword_2276801E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  sub_22766B7B0();
  sub_22766B810();
  (*(v7 + 8))(v9, v6);
  v10 = sub_22766B790();
  v12 = v11;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t sub_226EC9234()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v3 = sub_227480A2C;
  }

  else
  {
    v5 = v2[10];
    v4 = v2[11];
    v6 = v2[9];

    (*(v5 + 8))(v4, v6);
    v3 = sub_226EC9414;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_226EC938C(void *a1)
{
  __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  v3 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  return (v3)(a1);
}

uint64_t sub_226EC9414()
{
  v3 = (*(v0 + 56) + **(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_226ECB3C0;

  return v3(v0 + 136);
}

uint64_t sub_226EC9508(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226EC95A4(a1, v1);
}

uint64_t sub_226EC95A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226EC95C4, 0, 0);
}

uint64_t sub_226EC95C4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_226ECA990;

    return sub_226EC96DC();
  }

  else
  {
    **(v0 + 80) = 3;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_226EC96DC()
{
  v1[4] = v0;
  v2 = sub_22766A8A0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94D8, &qword_2276743E0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC9804, 0, 0);
}

id sub_226EC9804()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[4] + OBJC_IVAR____TtC15SeymourServices25ContentAvailabilitySystem__fakeFitnessModeString, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (v0[3])
  {
    v4 = MEMORY[0x22AA95A00](v0[2]);
    if (v4 != 3)
    {
LABEL_6:

      v13 = v0[1];

      return v13(v4);
    }
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = sub_2276693C0();
  (*(v6 + 104))(v5, *MEMORY[0x277D4F900], v7);
  v9 = sub_226EC9A38(v5, v8);

  (*(v6 + 8))(v5, v7);
  if (v9)
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = [result fitnessMode];

    v4 = MEMORY[0x22AA959F0](v12);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_0((v0[4] + 240), *(v0[4] + 264));
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_226FCBA24;

  return sub_227036F64();
}

uint64_t sub_226EC9A38(uint64_t a1, uint64_t a2)
{
  v3 = sub_22766A8A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2271BFC90(&unk_2813A5880, MEMORY[0x277D4F998], MEMORY[0x277D4F9A0]), v7 = sub_22766BF50(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2271BFC90(&qword_2813A5878, MEMORY[0x277D4F998], MEMORY[0x277D4F9A8]);
      v15 = sub_22766BFB0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_226EC9C54(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_22766AEC0();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_227667A70();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC9FF8, 0, 0);
}

uint64_t sub_226EC9E50()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F53004, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    *(v2 + 280) = v4;
    *v4 = v3;
    v4[1] = sub_226ECB2C0;
    v5 = *(v2 + 144);

    return sub_226ECA1B4(v5);
  }
}

uint64_t sub_226EC9FF8(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[12];
  sub_22766A610();
  sub_22766B370();
  v6 = *(v4 + 8);
  v1[30] = v6;
  v1[31] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v7 = swift_task_alloc();
  v1[32] = v7;
  *v7 = v1;
  v7[1] = sub_226EC8E18;
  v8 = v1[24];

  return sub_226ECA330(v8);
}

void sub_226ECA114(uint64_t *a1)
{
  v3 = *(sub_22766BE40() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_226ECA4A0(a1, v1 + v4, v6, v7);
}

uint64_t sub_226ECA1B4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v2[6] = swift_task_alloc();
  v3 = sub_2276638D0();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ECAA90, 0, 0);
}

uint64_t sub_226ECA2C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226ECA330(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = sub_227667A70();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9330, &qword_227673B00);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v4 = sub_22766B390();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ECAE04, 0, 0);
}

void sub_226ECA4A0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, void *, uint64_t), uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v6 = sub_22766BE40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v45 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = sub_22766B390();
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  v21 = (v7 + 16);
  if (a1[1])
  {
    v48 = a1[1];
    v22 = *a1;
    sub_22766A730();
    v23 = *v21;
    (*v21)(v14, a2, v6);
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v47 = v22;
      v27 = v26;
      v46 = swift_slowAlloc();
      v54 = v46;
      *v27 = 136315138;
      v23(v49, v14, v6);
      v28 = sub_22766C060();
      v30 = v29;
      (*(v7 + 8))(v14, v6);
      v31 = sub_226E97AE8(v28, v30, &v54);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_226E8E000, v24, v25, "ScriptConnection received successful response for %s", v27, 0xCu);
      v32 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v32, -1, -1);
      v33 = v27;
      v22 = v47;
      MEMORY[0x22AA9A450](v33, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v14, v6);
    }

    (*(v50 + 8))(v20, v51);
    v53(v22, v48, 0);
  }

  else
  {
    sub_22766A730();
    v34 = *v21;
    (*v21)(v9, a2, v6);
    v35 = sub_22766B380();
    v36 = sub_22766C8B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v37 = 136315138;
      v34(v49, v9, v6);
      v38 = sub_22766C060();
      v40 = v39;
      (*(v7 + 8))(v9, v6);
      v41 = sub_226E97AE8(v38, v40, &v54);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_226E8E000, v35, v36, "ScriptConnection received invalid response for %s", v37, 0xCu);
      v42 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA9A450](v42, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    (*(v50 + 8))(v17, v51);
    sub_226F6649C();
    v43 = swift_allocError();
    *v44 = 3;
    v53(v43, 0, 1);
  }
}

uint64_t sub_226ECA990(char a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_226ECB250, 0, 0);
}

uint64_t sub_226ECAA90()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_226ECA2C0(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226ECAFC4(v0[6]);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[8];
    v9 = v0[7];
    v10 = v0[5];
    v11 = *(v8 + 32);
    v11(v6, v0[6], v9);
    v12 = v10[11];
    v19 = v10[10];
    __swift_project_boxed_opaque_existential_0(v10 + 7, v19);
    (*(v8 + 16))(v7, v6, v9);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v0[12] = v14;
    *(v14 + 16) = v10;
    v11(v14 + v13, v7, v9);
    v15 = *(v12 + 24);

    v18 = (v15 + *v15);
    v16 = swift_task_alloc();
    v0[13] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
    *v16 = v0;
    v16[1] = sub_226F52994;

    return (v18)(v0 + 2, sub_226F530E0, v14, v17, v19, v12);
  }
}

uint64_t sub_226ECAD40()
{
  v1 = sub_2276638D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226ECAE04(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[26];
  sub_22766A610();
  sub_22766B370();
  v6 = *(v4 + 8);
  v1[37] = v6;
  v1[38] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = v5[25];
  v8 = v5[26];
  __swift_project_boxed_opaque_existential_0(v5 + 22, v7);
  v13 = (*(v8 + 24) + **(v8 + 24));
  v9 = swift_task_alloc();
  v1[39] = v9;
  *v9 = v1;
  v9[1] = sub_226EC85F8;
  v10 = v1[32];
  v11 = v1[30];

  return v13(v10, sub_226ECB02C, 0, v11, v7, v8);
}

uint64_t sub_226ECAFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226ECB02C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9338, &qword_227673B10);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_226ECB4D4(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    swift_deallocClassInstance();
    sub_226ED7114(v16, a2);
  }
}

uint64_t sub_226ECB250()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = *(v0 + 104);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226ECB2C0(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_226ECB7D4, 0, 0);
}

uint64_t sub_226ECB3C0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_227480AA8;
  }

  else
  {
    v2 = sub_226ECBC08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_226ECB4D4(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC500, &qword_22767DE38);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_226ECBC84(a1);
  if (!v2)
  {
    v12 = v11;
    v24 = 0;
    v13 = *(v1 + 2);
    if (sub_226ECC184(v13))
    {
      v14 = sub_22766C2B0();
    }

    else
    {
      v14 = 0;
    }

    [v12 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v7, *MEMORY[0x277D4F000], v4);
    v26 = 1;
    v15 = v13;
    sub_227669760();
    *&v10[*(v8 + 28)] = v12;
    *&v10[*(v8 + 32)] = v15;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v10;
    v17 = sub_227669730();
    if (v25 == 1)
    {
      sub_2272652A8(MEMORY[0x277D84FA0], sub_226ECC94C, 0);
      v1 = v18;
    }

    else
    {
      v19 = MEMORY[0x22AA99A00](v17);
      v20 = v24;
      v21 = sub_22725CE34(v10, MEMORY[0x277D84FA0], sub_226ECC94C, 0);
      if (!v20)
      {
        v1 = v21;
      }

      objc_autoreleasePoolPop(v19);
    }

    sub_226E97D1C(v10, &qword_27D7BC500, &qword_22767DE38);
  }

  return v1;
}

uint64_t sub_226ECB7D4(uint64_t a1)
{
  v53 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[19];
  v5 = v1[20];
  sub_22766A610();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[30];
  v11 = v1[27];
  v49 = v1[25];
  v12 = v1[23];
  if (v9)
  {
    v46 = v1[30];
    v13 = v1[22];
    v44 = v1[27];
    v15 = v1[19];
    v14 = v1[20];
    v47 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v52 = v17;
    *v16 = 136315138;
    v47(v13, v12, v15);
    v18 = sub_22766C060();
    v43 = v8;
    v20 = v19;
    v51 = *(v14 + 8);
    v51(v12, v15);
    v21 = sub_226E97AE8(v18, v20, &v52);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226E8E000, v7, v43, "Evaluating for ACHAchievementProgress with environment cache: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    v22 = v16;
    v6 = v47;
    MEMORY[0x22AA9A450](v22, -1, -1);

    v46(v44, v49);
  }

  else
  {
    v23 = v1[19];
    v24 = v1[20];

    v51 = *(v24 + 8);
    v51(v12, v23);
    v10(v11, v49);
  }

  v25 = v1[18];
  v26 = v1[17];
  v6(v1[21], v1[24], v1[19]);
  sub_226ECA2C0(v25, v26);
  v27 = sub_2276638D0();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v26, 1, v27);
  v30 = v1[17];
  if (v29 == 1)
  {
    sub_226ECAFC4(v1[17]);
  }

  else
  {
    sub_2276637D0();
    (*(v28 + 8))(v30, v27);
  }

  v31 = v1[18];
  v48 = v1[19];
  v50 = v1[24];
  v32 = v1[14];
  v33 = v1[15];
  v34 = v1[12];
  v35 = v1[13];
  v36 = v1[11];
  v37 = objc_allocWithZone(sub_22766A3C0());
  v38 = sub_22766A3B0();
  sub_226E91B50(v34 + 136, (v1 + 2));
  v39 = v38;
  sub_22766AEB0();
  sub_226ECC54C(v36);
  v40 = sub_22766AEA0();

  v45 = sub_226ECCE1C(v40);

  (*(v32 + 8))(v33, v35);
  sub_226ECAFC4(v31);
  v51(v50, v48);

  v41 = v1[1];

  return v41(v45);
}

uint64_t sub_226ECBC08()
{
  v1 = *(v0 + 136);
  sub_226ECC52C(*(v0 + 40), *(v0 + 48));

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_226ECBC84(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
    swift_willThrow();
  }

  else
  {
    v48 = v11;
    v49 = v8;
    v50 = v2;
    v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v20 = sub_22766BFD0();
    v21 = [v19 initWithEntityName_];
    v46 = v21;

    [v21 setFetchBatchSize_];
    v22 = v1;
    v23 = qword_2813B2078;
    swift_beginAccess();
    v24 = v16;
    v25 = *(v6 + 16);
    v25(v24, v22 + v23, v5);
    sub_22766A090();
    v45 = *(v6 + 8);
    v47 = v24;
    v45(v24, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v26 = sub_22766C2B0();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    v28 = v51;
    v3 = v46;
    [v46 setPredicate_];

    v53 = v23;
    v29 = v22 + v23;
    v30 = v22;
    v52 = v25;
    v25(v28, v29, v5);
    v31 = v45;
    v32 = sub_22766A0C0();
    LOBYTE(v27) = v33;
    v31(v28, v5);
    if ((v27 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v34 = v48;
    v52(v48, v30 + v53, v5);
    v35 = sub_22766A0E0();
    v37 = v36;
    v31(v34, v5);
    if ((v37 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v38 = v49;
    v52(v49, v30 + v53, v5);
    v39 = sub_22766A0B0();
    v40 = v31;
    v31(v38, v5);
    v41 = v47;
    if (v39 >> 62)
    {
      v42 = sub_22766CD20();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42)
    {
      v52(v41, v30 + v53, v5);
      sub_22766A0B0();
      v40(v41, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v42 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_226ECC184(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278(v31[0], v31[1]);

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_226ECC59C(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_22766CD20();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_226EBB21C(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_226ECC65C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

void *sub_226ECC76C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_226ECC838()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_2274843B4;
  }

  else
  {
    v2 = sub_226ECCA4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_226ECC94C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D530A8], sub_226ECCDEC, sub_226ECDDEC);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226ED62E0(v7);

    sub_226EB707C(v8, MEMORY[0x277D530A8], sub_226ED647C);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_226ECCA4C(uint64_t a1)
{
  v2 = *(v1 + 33);
  if (v2 == 3)
  {
    sub_226F6649C();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
LABEL_4:
    v6 = *(v1 + 8);

    return v6();
  }

  v4 = *(v1 + 24);
  *(v1 + 32) = v2;
  sub_226ECCD98();
  v5 = sub_227667710();
  if (v4)
  {
    goto LABEL_4;
  }

  v8 = *(v1 + 8);

  return v8(v5);
}

uint64_t *sub_226ECCB68(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22766CCE0();
  sub_226E99364(0, a5, a6);
  sub_226ECCEB4(a7, a5, a6);
  result = sub_22766C700();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22766CD50())
      {
        goto LABEL_30;
      }

      sub_226E99364(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

unint64_t sub_226ECCD98()
{
  result = qword_28139B1E8;
  if (!qword_28139B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B1E8);
  }

  return result;
}

void *sub_226ECCDEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226ECCE4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226ECCE74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_226ECCEB4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_226E99364(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226ECCF44(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_226ECD0AC(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_226ECD1AC, 0, 0);
}

uint64_t sub_226ECD1AC()
{
  v1 = *(v0[23] + 456);
  sub_226ECD3C0(v0[29]);
  sub_226E99364(0, &qword_281398A50, 0x277CE8CC0);
  v2 = sub_22766C2B0();
  v0[30] = v2;

  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_226ECD694;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0B0, &qword_22767C688);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_226ECD448;
  v0[13] = &block_descriptor_19;
  v0[14] = v3;
  [v1 provideAchievementProgressUpdates:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_226ECD318(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;
  v11[5] = v9;
  a5(0);

  return sub_227669270();
}

uint64_t sub_226ECD448(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_226ECD514(void (*a1)(char *), uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v24[1] = a2;
  v25 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v24 - v21;
  v26[0] = a5;
  v26[1] = a6;
  (a3)(v26, v20);
  swift_storeEnumTagMultiPayload();
  sub_226E95D18(v15, v18, a7, a8);
  sub_226E95D18(v18, v22, a7, a8);
  v25(v22);
  return sub_226E97D1C(v22, a7, a8);
}

uint64_t sub_226ECD694()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {

    v2 = sub_2271CE9D8;
  }

  else
  {
    v2 = sub_226ECD7AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226ECD7AC()
{
  v1 = *(v0 + 256);

  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 232);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = sub_22766CD20();
    }

    else
    {
      v7 = *(*(v0 + 232) + 16);
    }

    *(v6 + 4) = v7;

    *(v6 + 12) = 1024;
    *(v6 + 14) = v1;
    _os_log_impl(&dword_226E8E000, v2, v3, "Populating progress for  [%ld] templates to client with result: %{BOOL}d", v6, 0x12u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));

  v8 = *(v0 + 8);

  return v8();
}

void *sub_226ECD968(uint64_t *a1, void (*a2)(void))
{
  a2(0);

  return sub_227667720();
}

uint64_t sub_226ECDA34@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D88, &qword_2276720C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8D88, &qword_2276720C8);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226ED4D28;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226ED2C00;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_226ECDD74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ECDDAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_226ECDDEC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2276622D0();
  v193 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v192 = v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v172 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v172 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v172 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v191 = v172 - v22;
  v23 = [a1 activePlanFirstCompletedSessionIdentifier];
  if (!v23)
  {
    goto LABEL_15;
  }

  v187 = v16;
  v188 = a2;
  v24 = v23;
  v25 = sub_22766C000();
  v27 = v26;

  v28 = [a1 activePlanMostRecentlyCompletedSessionIdentifier];
  if (!v28)
  {
    goto LABEL_11;
  }

  v179 = v25;
  v29 = v28;
  v178 = sub_22766C000();
  v31 = v30;

  v32 = [a1 currentBestEnergyBurnedPerModality];
  if (!v32)
  {

LABEL_11:

LABEL_15:
    v37 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
    swift_willThrow();

    return;
  }

  v181 = v32;
  v33 = [a1 numberOfGuidedWorkoutsOver5MinutesPerModality];
  if (!v33)
  {

    v36 = &v202;
LABEL_14:

    goto LABEL_15;
  }

  v175 = v33;
  v34 = [a1 numberOfWorkoutsOver5MinutesPerModality];
  if (!v34)
  {

    v36 = &v200 + 1;
    goto LABEL_14;
  }

  v174 = v34;
  v35 = [a1 currentStreak];
  if (v35)
  {
    sub_2275E3B6C(v35);
    if (v2)
    {

      return;
    }

    v40 = sub_2276667B0();
    (*(*(v40 - 8) + 56))(v19, 0, 1, v40);
    sub_226F9630C(v19, v191);
  }

  else
  {
    v39 = sub_2276667B0();
    (*(*(v39 - 8) + 56))(v191, 1, 1, v39);
  }

  v172[3] = [a1 longestWeeklyStreak];
  v172[2] = [a1 numberOfWorkoutsOver5Minutes];
  sub_22766CA80();
  v189 = sub_226ECF2F4(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22766CBB0();
  v186 = a1;
  v185 = v6;
  v184 = v27;
  v183 = v31;
  v180 = v10;
  v41 = MEMORY[0x277D84F98];
  if (v201)
  {
    v177 = v13;
    while (1)
    {
      sub_226F04970(&v200, &v199);
      sub_226E97CC0(&v199, v198);
      type metadata accessor for ManagedEnergyBurnedRecord();
      if (!swift_dynamicCast())
      {

        (*(v193 + 8))(v13, v6);
        goto LABEL_108;
      }

      v42 = v41;
      v43 = v197;
      v44 = [v197 modalityIdentifier];
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v46 = sub_22766C000();
      a1 = v47;

      [v43 energyBurned];
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E78, &qword_2276724C0);
      v50 = sub_22766D010();

      v51 = sub_226E92000(v46, a1);
      v6 = v52;

      if (v6)
      {
        goto LABEL_127;
      }

      v190 = v43;
      v53 = v50 + 64;
      *(v50 + 64 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v54 = (*(v50 + 48) + 16 * v51);
      *v54 = v46;
      v54[1] = a1;
      *(*(v50 + 56) + 8 * v51) = v49;
      v55 = *(v50 + 16);
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_128;
      }

      v194 = v3;
      *(v50 + 16) = v57;
      v41 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v198[0] = v42;
      v59 = -1 << *(v50 + 32);
      if (-v59 < 64)
      {
        v60 = ~(-1 << -v59);
      }

      else
      {
        v60 = -1;
      }

      v61 = v60 & *(v50 + 64);
      v182 = -1 << *(v50 + 32);
      v62 = (63 - v59) >> 6;

      v63 = 0;
      v195 = v50;
      while (v61)
      {
        v196 = isUniquelyReferenced_nonNull_native;
        v64 = v63;
LABEL_38:
        v66 = __clz(__rbit64(v61)) | (v64 << 6);
        v67 = (*(v50 + 48) + 16 * v66);
        v68 = *v67;
        v6 = v67[1];
        v69 = *(*(v50 + 56) + 8 * v66);

        a1 = sub_226E92000(v68, v6);
        v71 = v41[2];
        v72 = (v70 & 1) == 0;
        v73 = v71 + v72;
        if (__OFADD__(v71, v72))
        {
          goto LABEL_122;
        }

        v74 = v70;
        if (v41[3] >= v73)
        {
          if ((v196 & 1) == 0)
          {
            sub_226FF02D4();
          }
        }

        else
        {
          sub_226FE24C8(v73, v196 & 1);
          v75 = sub_226E92000(v68, v6);
          if ((v74 & 1) != (v76 & 1))
          {
            goto LABEL_134;
          }

          a1 = v75;
        }

        v61 &= v61 - 1;
        v41 = v198[0];
        if (v74)
        {

          *(v41[7] + 8 * a1) = v69;
        }

        else
        {
          *(v198[0] + 8 * (a1 >> 6) + 64) |= 1 << a1;
          v77 = (v41[6] + 16 * a1);
          *v77 = v68;
          v77[1] = v6;
          *(v41[7] + 8 * a1) = v69;
          v78 = v41[2];
          v56 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v56)
          {
            goto LABEL_124;
          }

          v41[2] = v79;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v63 = v64;
        v50 = v195;
      }

      v65 = v63;
      while (1)
      {
        v64 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_114;
        }

        if (v64 >= v62)
        {
          break;
        }

        v61 = *(v53 + 8 * v64);
        ++v65;
        if (v61)
        {
          v196 = isUniquelyReferenced_nonNull_native;
          goto LABEL_38;
        }
      }

      sub_226EBB21C(v50);

      __swift_destroy_boxed_opaque_existential_0(&v199);
      v13 = v177;
      v6 = v185;
      sub_22766CBB0();
      a1 = v186;
      v3 = v194;
      v10 = v180;
      if (!v201)
      {
        goto LABEL_47;
      }
    }

    (*(v193 + 8))(v177, v6);
LABEL_108:
    v164 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v164 - 8) + 104))(v165, *MEMORY[0x277D51028], v164);
    swift_willThrow();

    goto LABEL_118;
  }

LABEL_47:
  v172[1] = v41;
  v80 = *(v193 + 8);
  v193 += 8;
  v173 = v80;
  v80(v13, v6);
  sub_22766CA80();
  sub_22766CBB0();
  if (v201)
  {
    v81 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_226F04970(&v200, &v199);
      sub_226E97CC0(&v199, v198);
      type metadata accessor for ManagedGuidedWorkoutCount();
      if (!swift_dynamicCast())
      {

        v173(v10, v6);
        goto LABEL_112;
      }

      v182 = v81;
      v82 = v197;
      v83 = [v197 modalityIdentifier];
      if (!v83)
      {
        break;
      }

      v84 = v83;
      v85 = sub_22766C000();
      v87 = v86;

      v88 = [v82 count];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
      v89 = sub_22766D010();

      v90 = sub_226E92000(v85, v87);
      v92 = v91;

      if (v92)
      {
        goto LABEL_130;
      }

      v177 = v82;
      v194 = v3;
      v93 = v89 + 8;
      *(v89 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v90;
      v94 = (v89[6] + 16 * v90);
      *v94 = v85;
      v94[1] = v87;
      *(v89[7] + 8 * v90) = v88;
      v95 = v89[2];
      v56 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v56)
      {
        goto LABEL_131;
      }

      v97 = v89;
      v89[2] = v96;
      v81 = v182;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v198[0] = v81;
      v99 = -1 << v97[32];
      if (-v99 < 64)
      {
        v100 = ~(-1 << -v99);
      }

      else
      {
        v100 = -1;
      }

      v101 = v100 & *(v97 + 8);
      v176 = -1 << v97[32];
      v102 = (63 - v99) >> 6;

      v103 = 0;
      v190 = v97;
      while (v101)
      {
        v196 = v98;
        v104 = v103;
LABEL_67:
        v106 = __clz(__rbit64(v101)) | (v104 << 6);
        v107 = *(v97 + 7);
        v108 = (*(v97 + 6) + 16 * v106);
        v109 = *v108;
        v110 = v108[1];
        v195 = *(v107 + 8 * v106);

        v112 = sub_226E92000(v109, v110);
        v113 = v81[2];
        v114 = (v111 & 1) == 0;
        v115 = v113 + v114;
        if (__OFADD__(v113, v114))
        {
          goto LABEL_123;
        }

        v116 = v111;
        if (v81[3] >= v115)
        {
          if ((v196 & 1) == 0)
          {
            sub_226FF016C();
          }
        }

        else
        {
          sub_226FE2228(v115, v196 & 1);
          v117 = sub_226E92000(v109, v110);
          if ((v116 & 1) != (v118 & 1))
          {
            goto LABEL_134;
          }

          v112 = v117;
        }

        v101 &= v101 - 1;
        v81 = v198[0];
        if (v116)
        {

          *(v81[7] + 8 * v112) = v195;
        }

        else
        {
          *(v198[0] + 8 * (v112 >> 6) + 64) |= 1 << v112;
          v119 = (v81[6] + 16 * v112);
          *v119 = v109;
          v119[1] = v110;
          *(v81[7] + 8 * v112) = v195;
          v120 = v81[2];
          v56 = __OFADD__(v120, 1);
          v121 = v120 + 1;
          if (v56)
          {
            goto LABEL_126;
          }

          v81[2] = v121;
        }

        v98 = 1;
        v103 = v104;
        v97 = v190;
      }

      v105 = v103;
      while (1)
      {
        v104 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          __break(1u);
          goto LABEL_121;
        }

        if (v104 >= v102)
        {
          break;
        }

        v101 = v93[v104];
        ++v105;
        if (v101)
        {
          v196 = v98;
          goto LABEL_67;
        }
      }

      sub_226EBB21C(v97);

      __swift_destroy_boxed_opaque_existential_0(&v199);
      v10 = v180;
      v6 = v185;
      sub_22766CBB0();
      a1 = v186;
      v3 = v194;
      if (!v201)
      {
        goto LABEL_77;
      }
    }

    v173(v10, v6);
LABEL_112:
    v168 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v168 - 8) + 104))(v169, *MEMORY[0x277D51028], v168);
    swift_willThrow();

    goto LABEL_117;
  }

  v81 = MEMORY[0x277D84F98];
LABEL_77:
  v182 = v81;
  v173(v10, v6);
  sub_22766CA80();
  sub_22766CBB0();
  if (!v201)
  {
LABEL_109:
    v173(v192, v6);
    v166 = v191;
    sub_226ED5818(v191, v187);
    sub_227667A20();

    v167 = v166;
LABEL_119:
    sub_226ED5C08(v167);
    return;
  }

  v122 = MEMORY[0x277D84F98];
LABEL_80:
  sub_226F04970(&v200, &v199);
  sub_226E97CC0(&v199, v198);
  type metadata accessor for ManagedModalityWorkoutCount();
  if (!swift_dynamicCast())
  {
LABEL_114:
    v173(v192, v6);

LABEL_116:
    v170 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v170 - 8) + 104))(v171, *MEMORY[0x277D51028], v170);
    swift_willThrow();

LABEL_117:

LABEL_118:

    __swift_destroy_boxed_opaque_existential_0(&v199);
    v167 = v191;
    goto LABEL_119;
  }

  v123 = v122;
  v124 = v197;
  v125 = [v197 modalityIdentifier];
  if (!v125)
  {
    v173(v192, v6);

    goto LABEL_116;
  }

  v126 = v125;
  v127 = sub_22766C000();
  v129 = v128;

  v180 = v124;
  v130 = [v124 count];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
  v131 = sub_22766D010();

  v132 = sub_226E92000(v127, v129);
  v134 = v133;

  if ((v134 & 1) == 0)
  {
    v194 = v3;
    v135 = v131 + 64;
    *(v131 + 64 + ((v132 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v132;
    v136 = (*(v131 + 48) + 16 * v132);
    *v136 = v127;
    v136[1] = v129;
    *(*(v131 + 56) + 8 * v132) = v130;
    v137 = *(v131 + 16);
    v56 = __OFADD__(v137, 1);
    v138 = v137 + 1;
    if (v56)
    {
      goto LABEL_133;
    }

    v139 = v131;
    *(v131 + 16) = v138;
    v122 = v123;
    v140 = swift_isUniquelyReferenced_nonNull_native();
    v198[0] = v123;
    v141 = -1 << *(v131 + 32);
    if (-v141 < 64)
    {
      v142 = ~(-1 << -v141);
    }

    else
    {
      v142 = -1;
    }

    v143 = v142 & *(v131 + 64);
    v177 = v141;
    v144 = (63 - v141) >> 6;

    v145 = 0;
    v190 = v139;
    while (v143)
    {
      v196 = v140;
      v146 = v145;
LABEL_97:
      v148 = __clz(__rbit64(v143)) | (v146 << 6);
      v149 = v139[7];
      v150 = (v139[6] + 16 * v148);
      v151 = *v150;
      v152 = v150[1];
      v195 = *(v149 + 8 * v148);

      v154 = sub_226E92000(v151, v152);
      v155 = v122[2];
      v156 = (v153 & 1) == 0;
      v157 = v155 + v156;
      if (__OFADD__(v155, v156))
      {
        goto LABEL_125;
      }

      v158 = v153;
      if (v122[3] >= v157)
      {
        if ((v196 & 1) == 0)
        {
          sub_226FF016C();
        }
      }

      else
      {
        sub_226FE2228(v157, v196 & 1);
        v159 = sub_226E92000(v151, v152);
        if ((v158 & 1) != (v160 & 1))
        {
          goto LABEL_134;
        }

        v154 = v159;
      }

      v143 &= v143 - 1;
      v122 = v198[0];
      if (v158)
      {

        *(v122[7] + 8 * v154) = v195;
      }

      else
      {
        *(v198[0] + 8 * (v154 >> 6) + 64) |= 1 << v154;
        v161 = (v122[6] + 16 * v154);
        *v161 = v151;
        v161[1] = v152;
        *(v122[7] + 8 * v154) = v195;
        v162 = v122[2];
        v56 = __OFADD__(v162, 1);
        v163 = v162 + 1;
        if (v56)
        {
          goto LABEL_129;
        }

        v122[2] = v163;
      }

      v140 = 1;
      v145 = v146;
      v139 = v190;
    }

    v147 = v145;
    while (1)
    {
      v146 = v147 + 1;
      if (__OFADD__(v147, 1))
      {
        break;
      }

      if (v146 >= v144)
      {
        sub_226EBB21C(v139);

        __swift_destroy_boxed_opaque_existential_0(&v199);
        v6 = v185;
        sub_22766CBB0();
        a1 = v186;
        v3 = v194;
        if (!v201)
        {
          goto LABEL_109;
        }

        goto LABEL_80;
      }

      v143 = *(v135 + 8 * v146);
      ++v147;
      if (v143)
      {
        v196 = v140;
        goto LABEL_97;
      }
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  sub_22766D220();
  __break(1u);
}

uint64_t sub_226ECF2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226ECF350@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A660();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[70];
    v10 = v8[71];
    __swift_project_boxed_opaque_existential_0(v8 + 67, v9);

    sub_226ECF5D8(sub_226ED201C, v8, v9, MEMORY[0x277D83B88], v10, a2);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

char *sub_226ECF5A4@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_226ECF80C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226ECF5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[1] = a6;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v15 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v6, v14);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  (*(v12 + 32))(&v18[v16], v15, a3);
  v19 = &v18[v17];
  *v19 = a1;
  *(v19 + 1) = a2;

  return sub_227669220();
}

uint64_t sub_226ECF758()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

char *sub_226ECF80C(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllMusicGenres", 37, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_226ED00DC(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

uint64_t sub_226ECFB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v49, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = v9;
  v49 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_226ED1C60;
  v30[1] = v22;
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v49, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_226ED44E8;
  v40[1] = v33;

  sub_227669270();
  (*(v48 + 8))(v36, v37);
}

char *sub_226ED00DC(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC470, &qword_22767DB08);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_226ED04F4(a1);
  if (!v2)
  {
    v12 = v11;
    v24 = 0;
    v13 = *(v1 + 2);
    if (sub_226ED09F4(v13))
    {
      v14 = sub_22766C2B0();
    }

    else
    {
      v14 = 0;
    }

    [v12 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v7, *MEMORY[0x277D4F000], v4);
    v26 = 1;
    v15 = v13;
    sub_227669760();
    *&v10[*(v8 + 28)] = v12;
    *&v10[*(v8 + 32)] = v15;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v10;
    v17 = sub_227669730();
    if (v25 == 1)
    {
      sub_2272630A0(MEMORY[0x277D84FA0], sub_22711C97C, 0);
      v1 = v18;
    }

    else
    {
      v19 = MEMORY[0x22AA99A00](v17);
      v20 = v24;
      v21 = sub_22725AB9C(v10, MEMORY[0x277D84FA0], sub_22711C97C, 0);
      if (!v20)
      {
        v1 = v21;
      }

      objc_autoreleasePoolPop(v19);
    }

    sub_226E97D1C(v10, &qword_27D7BC470, &qword_22767DB08);
  }

  return v1;
}

uint64_t sub_226ED042C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_226ED04F4(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
    swift_willThrow();
  }

  else
  {
    v48 = v11;
    v49 = v8;
    v50 = v2;
    v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v20 = sub_22766BFD0();
    v21 = [v19 initWithEntityName_];
    v46 = v21;

    [v21 setFetchBatchSize_];
    v22 = v1;
    v23 = qword_2813B2078;
    swift_beginAccess();
    v24 = v16;
    v25 = *(v6 + 16);
    v25(v24, v22 + v23, v5);
    sub_22766A090();
    v45 = *(v6 + 8);
    v47 = v24;
    v45(v24, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v26 = sub_22766C2B0();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    v28 = v51;
    v3 = v46;
    [v46 setPredicate_];

    v53 = v23;
    v29 = v22 + v23;
    v30 = v22;
    v52 = v25;
    v25(v28, v29, v5);
    v31 = v45;
    v32 = sub_22766A0C0();
    LOBYTE(v27) = v33;
    v31(v28, v5);
    if ((v27 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v34 = v48;
    v52(v48, v30 + v53, v5);
    v35 = sub_22766A0E0();
    v37 = v36;
    v31(v34, v5);
    if ((v37 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v38 = v49;
    v52(v49, v30 + v53, v5);
    v39 = sub_22766A0B0();
    v40 = v31;
    v31(v38, v5);
    v41 = v47;
    if (v39 >> 62)
    {
      v42 = sub_22766CD20();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42)
    {
      v52(v41, v30 + v53, v5);
      sub_22766A0B0();
      v40(v41, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v42 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_226ED09F4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278(v31[0], v31[1]);

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_226ED0E6C@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_226ED0F04(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_226ED0F04(uint64_t a1)
{
  v22 = sub_227669890();
  v18 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v21);
  sub_226E9DD3C("CatalogDataStore::queryAllSkillLevels", 37, 2, &dword_226E8E000, 0, v19);
  v5 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  v13 = sub_226ED13FC(100);
  swift_setDeallocating();

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v19, v20);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_227669920();
  }

  (*(v18 + 8))(v4, v22);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

void sub_226ED1274(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  if (a2)
  {
    v23 = a1;
    v24 = 1;
    v20 = a1;
    a5(&v23);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(v17);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(a10, v22);

    (*(v16 + 8))(v19, v15);
  }
}

char *sub_226ED13FC(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC448, &qword_22767DAE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = sub_226ED1760(a1);
  if (!v2)
  {
    v12 = v11;
    v24 = 0;
    v13 = *(v1 + 2);
    if (sub_226ED1C74(v13))
    {
      v14 = sub_22766C2B0();
    }

    else
    {
      v14 = 0;
    }

    [v12 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v7, *MEMORY[0x277D4F000], v4);
    v26 = 1;
    v15 = v13;
    sub_227669760();
    *&v10[*(v8 + 28)] = v12;
    *&v10[*(v8 + 32)] = v15;
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v10;
    v17 = sub_227669730();
    if (v25 == 1)
    {
      sub_22726456C(MEMORY[0x277D84FA0], sub_226ED2698, 0);
      v1 = v18;
    }

    else
    {
      v19 = MEMORY[0x22AA99A00](v17);
      v20 = v24;
      v21 = sub_22725C0C0(v10, MEMORY[0x277D84FA0], sub_226ED2698, 0);
      if (!v20)
      {
        v1 = v21;
      }

      objc_autoreleasePoolPop(v19);
    }

    sub_226E97D1C(v10, &qword_27D7BC448, &qword_22767DAE0);
  }

  return v1;
}

id sub_226ED1760(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
    swift_willThrow();
  }

  else
  {
    v48 = v11;
    v49 = v8;
    v50 = v2;
    v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v20 = sub_22766BFD0();
    v21 = [v19 initWithEntityName_];
    v46 = v21;

    [v21 setFetchBatchSize_];
    v22 = v1;
    v23 = qword_2813B2078;
    swift_beginAccess();
    v24 = v16;
    v25 = *(v6 + 16);
    v25(v24, v22 + v23, v5);
    sub_22766A090();
    v45 = *(v6 + 8);
    v47 = v24;
    v45(v24, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v26 = sub_22766C2B0();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    v28 = v51;
    v3 = v46;
    [v46 setPredicate_];

    v53 = v23;
    v29 = v22 + v23;
    v30 = v22;
    v52 = v25;
    v25(v28, v29, v5);
    v31 = v45;
    v32 = sub_22766A0C0();
    LOBYTE(v27) = v33;
    v31(v28, v5);
    if ((v27 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v34 = v48;
    v52(v48, v30 + v53, v5);
    v35 = sub_22766A0E0();
    v37 = v36;
    v31(v34, v5);
    if ((v37 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v38 = v49;
    v52(v49, v30 + v53, v5);
    v39 = sub_22766A0B0();
    v40 = v31;
    v31(v38, v5);
    v41 = v47;
    if (v39 >> 62)
    {
      v42 = sub_22766CD20();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42)
    {
      v52(v41, v30 + v53, v5);
      sub_22766A0B0();
      v40(v41, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v42 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_226ED1C74(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278(v31[0], v31[1]);

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226ED2038@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_226ED2064(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226ED2064(void *a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD8, qword_2276814A0);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  v43 = v14;
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  v39[0] = v15;
  v39[1] = v12;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  v16 = sub_227666B80();
  v18 = v17;
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v42[0] = v16;
  v42[1] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226ED25F8(v42, v40);
  v20 = v41;
  if (v41)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE0 qword_2276814E0))];

  sub_226EBC888(v42);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v42, 0);
  swift_endAccess();

  v33 = sub_226ED2668(0);
  if (v2)
  {
  }

  else
  {
    v34 = v33;
    [v33 setResultType_];
    [v34 setFetchLimit_];
    [v34 setFetchOffset_];
    [v34 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v35 = v43;
    v2 = sub_22766C9D0();

    swift_setDeallocating();
    v37 = qword_2813B2078;
    v38 = sub_22766A100();
    (*(*(v38 - 8) + 8))(v13 + v37, v38);
    swift_deallocClassInstance();
  }

  return v2;
}

uint64_t sub_226ED25F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_226ED2700(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
    swift_willThrow();
  }

  else
  {
    v48 = v11;
    v49 = v8;
    v50 = v2;
    v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v20 = sub_22766BFD0();
    v21 = [v19 initWithEntityName_];
    v46 = v21;

    [v21 setFetchBatchSize_];
    v22 = v1;
    v23 = qword_2813B2078;
    swift_beginAccess();
    v24 = v16;
    v25 = *(v6 + 16);
    v25(v24, v22 + v23, v5);
    sub_22766A090();
    v45 = *(v6 + 8);
    v47 = v24;
    v45(v24, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v26 = sub_22766C2B0();

    v27 = [objc_opt_self() andPredicateWithSubpredicates_];

    v28 = v51;
    v3 = v46;
    [v46 setPredicate_];

    v53 = v23;
    v29 = v22 + v23;
    v30 = v22;
    v52 = v25;
    v25(v28, v29, v5);
    v31 = v45;
    v32 = sub_22766A0C0();
    LOBYTE(v27) = v33;
    v31(v28, v5);
    if ((v27 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v34 = v48;
    v52(v48, v30 + v53, v5);
    v35 = sub_22766A0E0();
    v37 = v36;
    v31(v34, v5);
    if ((v37 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v38 = v49;
    v52(v49, v30 + v53, v5);
    v39 = sub_22766A0B0();
    v40 = v31;
    v31(v38, v5);
    v41 = v47;
    if (v39 >> 62)
    {
      v42 = sub_22766CD20();
    }

    else
    {
      v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42)
    {
      v52(v41, v30 + v53, v5);
      sub_22766A0B0();
      v40(v41, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v42 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

void sub_226ED2C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), void (*a6)(char *, char *))
{
  v12 = MEMORY[0x22AA99A00]();
  v13 = MEMORY[0x22AA99A00]();
  v14 = a3(a2);
  if (v6)
  {
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = v14;
    objc_autoreleasePoolPop(v13);
    v16 = a4(v15);

    sub_226EB707C(v16, a5, a6);
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t sub_226ED2CD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);

  return sub_227669270();
}

uint64_t sub_226ED2D7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_226ED2DB4(unint64_t a1)
{
  v2 = v1;
  v28 = sub_2276633A0();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v35 = MEMORY[0x277D84F90];
    result = sub_226ED3590(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v29 = a1 & 0xC000000000000001;
    v7 = v35;
    v23 = v2;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = v30 + 32;
    v26 = i;
    v27 = a1;
    while (!__OFADD__(v9, 1))
    {
      if (v29)
      {
        v10 = MEMORY[0x22AA991A0](v9, a1);
      }

      else
      {
        if (v9 >= *(v24 + 16))
        {
          goto LABEL_23;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 identifier];
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = v12;
      v34 = v9 + 1;
      sub_22766C000();

      v14 = [v11 name];
      v15 = v11;
      if (!v14)
      {

LABEL_20:
        v21 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
        swift_willThrow();

        return v7;
      }

      v16 = v14;
      v33 = v7;
      sub_22766C000();
      v31 = v17;

      v32 = v15;
      v18 = [v15 kind];
      if (v18)
      {
        v19 = v18;
        sub_22766C000();
      }

      sub_227663360();

      v7 = v33;
      v35 = v33;
      v2 = *(v33 + 16);
      v20 = *(v33 + 24);
      if (v2 >= v20 >> 1)
      {
        sub_226ED3590((v20 > 1), v2 + 1, 1);
        v7 = v35;
      }

      *(v7 + 16) = v2 + 1;
      (*(v30 + 32))(v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v2, v5, v28);
      ++v9;
      a1 = v27;
      if (v34 == v26)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_226ED315C@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D88, &qword_2276720C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  if (a2)
  {

    sub_227667720();
    a3(&v25);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v19 = *(v10 + 32);
      v19(v15, v8, v9);
      v20 = swift_allocObject();
      *(v20 + 16) = sub_226ED4D28;
      *(v20 + 24) = 0;
      (*(v10 + 16))(v12, v15, v9);
      v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v22 = swift_allocObject();
      v19((v22 + v21), v12, v9);
      v23 = (v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v23 = sub_226ED2C00;
      v23[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      return (*(v10 + 8))(v15, v9);
    }

    sub_226E97D1C(v8, &qword_27D7B8D88, &qword_2276720C8);
  }

  sub_226F6649C();
  v16 = swift_allocError();
  *v17 = 2;
  swift_willThrow();
  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_226ED34DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ED3528()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_226ED3590(void *a1, int64_t a2, char a3)
{
  result = sub_226ED3568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226ED35D0@<X0>(char a1@<W0>, void (*a2)(char *, double)@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D88, &qword_2276720C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  v18 = a1;
  a2(&v18, v12);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B8D88, &qword_2276720C8);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a4, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_226ECFB7C(v14, a4);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a4, v15, 1, v10);
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(type metadata accessor for MetricServiceSubscriptionState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_227665AD0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_44Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 57) & ~v2;
  v4 = *(v1 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226ED3ACC@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A660();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    v12 = v11[70];
    v13 = v11[71];
    __swift_project_boxed_opaque_existential_0(v11 + 67, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_226ED3E84, v14, v12, MEMORY[0x277D83B88], v13, a3);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

uint64_t sub_226ED3D50()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226ED3D88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_226ED3E50@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_226ED3EA4(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_226ED3EA4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v8, v5);
  v9 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD8, qword_2276814A0);
  v14 = swift_allocObject();
  v15 = v10;
  v16 = v11;

  sub_22766A070();
  v44 = v15;
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v40[0] = v16;
  v40[1] = v13;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;
  swift_getKeyPath();
  v17 = sub_227666B80();
  v19 = v18;
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v43[0] = v17;
  v43[1] = v19;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v20 = sub_22766C820();
  sub_226ED25F8(v43, v41);
  v21 = v42;
  if (v42)
  {
    v22 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_22766D170();
    (*(v23 + 8))(v26, v21);
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v29 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE0 qword_2276814E0))];

  sub_226EBC888(v43);
  swift_beginAccess();
  v30 = v29;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v43, 0);
  swift_endAccess();

  v34 = sub_226ED2668(0);
  if (v3)
  {
  }

  else
  {
    v35 = v34;
    [v34 setResultType_];
    [v35 setFetchLimit_];
    [v35 setFetchOffset_];
    [v35 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v36 = v44;
    v3 = sub_22766C9D0();

    swift_setDeallocating();
    v38 = qword_2813B2078;
    v39 = sub_22766A100();
    (*(*(v39 - 8) + 8))(v14 + v38, v39);
    swift_deallocClassInstance();
  }

  return v3;
}

uint64_t sub_226ED4434(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(v1 + 16))();
  return v3(a1);
}

void sub_226ED4548(void *a1)
{
  if (a1)
  {
    v2 = [a1 array];
    v3 = sub_22766C2C0();

    v4 = sub_226ED47E8(v3);

    if (v4)
    {
      v22 = a1;
      v5 = 0;
      v6 = v4 + 40;
      v7 = *(v4 + 16);
      v23 = MEMORY[0x277D84F90];
LABEL_4:
      v8 = (v6 + 16 * v5);
      while (1)
      {
        if (v7 == v5)
        {

          return;
        }

        if (v5 >= *(v4 + 16))
        {
          break;
        }

        ++v5;
        v9 = v8 + 2;
        v10 = *v8;
        ObjectType = swift_getObjectType();
        v12 = *(v10 + 8);
        swift_unknownObjectRetain();
        v13 = v12(ObjectType, v10);
        v15 = v14;
        swift_unknownObjectRelease();
        v8 = v9;
        if (v15)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v16 = v23;
          }

          else
          {
            v16 = sub_226EB3F78(0, *(v23 + 2) + 1, 1, v23);
          }

          v18 = *(v16 + 2);
          v17 = *(v16 + 3);
          if (v18 >= v17 >> 1)
          {
            v16 = sub_226EB3F78((v17 > 1), v18 + 1, 1, v16);
          }

          *(v16 + 2) = v18 + 1;
          v23 = v16;
          v19 = &v16[16 * v18];
          *(v19 + 4) = v13;
          *(v19 + 5) = v15;
          v6 = v4 + 40;
          goto LABEL_4;
        }
      }

      __break(1u);
    }

    else
    {
      v20 = sub_227664DD0();
      sub_2274B4B24(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
      swift_willThrow();
    }
  }

  else
  {
    sub_226F62704();
    sub_22766C300();
  }
}

uint64_t sub_226ED47E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  sub_226ED4BF0(0, v2, 0);
  v3 = v11;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_226E97CC0(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_226ED4BF0((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 16 * v7 + 32) = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_226ED4910(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20[-1] - v14;
  if (a2)
  {
    v20[0] = a1;
    v20[1] = 0;
    v21 = 1;
    v16 = a1;
    a5(v20);
    sub_226EB4548(a1, 1);
  }

  else
  {
    v20[0] = a1;
    (a3)(v20, v13);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_2273F86A4, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void *sub_226ED4ABC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC28, &qword_227679668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_226ED4BF0(void *a1, int64_t a2, char a3)
{
  result = sub_226ED4ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226ED4C1C()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22766C000();

  return v3;
}

void sub_226ED4C84(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  a3(v9, &v8);
  v6 = v9[0];
  v7 = v9[1];
  v10 = 0;
  a1(v9);

  sub_226EC33EC(v6, v7, 0);
}

uint64_t sub_226ED4D28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227667710();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

void sub_226ED4D78(void *a1)
{
  v4 = sub_227662190();
  v5 = [a1 identifier];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [a1 dateReleased];
  if (!v7)
  {
LABEL_11:

LABEL_12:
    v15 = sub_227664DD0();
    sub_2273FA7FC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();
    goto LABEL_13;
  }

  v8 = v7;
  sub_22766C000();

  v9 = [a1 mediaType];
  if (!v9)
  {
LABEL_10:

    goto LABEL_11;
  }

  v10 = v9;
  sub_22766C000();

  v11 = [a1 modalityIdentifier];
  if (!v11)
  {
LABEL_9:

    goto LABEL_10;
  }

  v12 = v11;
  sub_22766C000();

  v13 = [a1 contentRating];
  if (!v13)
  {

    goto LABEL_9;
  }

  v14 = v13;
  sub_22766C000();

  sub_226ED4548([a1 equipmentIdentifierss]);
  if (v2)
  {

LABEL_13:

    return;
  }

  sub_226ED4548([a1 musicGenreIdentifierss]);
  sub_226ED4548([a1 trainerIdentifierss]);
  sub_226ED4548([a1 contributorIdentifierss]);
  sub_226ED4548([a1 themeIdentifierss]);
  sub_226ED4548([a1 bodyFocusIdentifierss]);
  sub_226ED4548([a1 skillLevelIdentifierss]);
  v17 = [a1 traits];
  if (v17)
  {
    v18 = v17;
    v24 = MEMORY[0x22AA99A00]();
    v21 = sub_226EDE6A4(v18);
    objc_autoreleasePoolPop(v24);
    sub_226EDE22C(v21);

    sub_226ED978C();
    sub_227663AE0();
    sub_227662100();
    [a1 duration];
    [a1 episode];
    sub_226ED56C4();
    sub_227663AE0();
    v22 = [a1 title];
    if (v22)
    {
      v23 = v22;
      sub_22766C000();
    }

    sub_227666AB0();
    goto LABEL_13;
  }

  v19 = sub_227664DD0();
  sub_2273FA7FC(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
  swift_willThrow();
}

unint64_t sub_226ED56C4()
{
  result = qword_28139B908;
  if (!qword_28139B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B908);
  }

  return result;
}

void sub_226ED5718(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226ED5C70(a2, MEMORY[0x277D53E10], sub_226ED62C0, MEMORY[0x277D53DD8]);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226ED71E0(v7);

    sub_226EB707C(v8, MEMORY[0x277D53E10], sub_226ED737C);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_226ED5818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226ED5888(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v23 = a3;
  v5 = sub_22766B3B0();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B3F0();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B410();
  v22 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  sub_226EA1CF4();
  v18 = sub_22766C950();
  sub_22766B400();
  sub_22766C550();
  sub_22766B430();
  v19 = *(v12 + 8);
  v19(v14, v11);
  aBlock[4] = v24;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);

  sub_22766B3D0();
  v29 = MEMORY[0x277D84F90];
  sub_226E9ECD0(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C50](v17, v10, v7, v20);
  _Block_release(v20);

  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v10, v27);
  v19(v17, v22);
}

uint64_t sub_226ED5C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226ED5C70(unint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v40 = a4;
  v6 = v4;
  v39 = a2(0);
  v42 = *(v39 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v39);
  v10 = &v31 - v9;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v12 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v12;
    }

    v43 = MEMORY[0x277D84F90];
    result = (a3)(0, i & ~(i >> 63), 0, v8);
    if (i < 0)
    {
      break;
    }

    v32 = a3;
    v33 = v6;
    v6 = 0;
    v41 = a1 & 0xC000000000000001;
    v12 = v43;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = v42 + 32;
    v37 = v10;
    v38 = a1;
    v36 = i;
    while (1)
    {
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v41)
      {
        v15 = MEMORY[0x22AA991A0](v6, a1);
      }

      else
      {
        if (v6 >= *(v34 + 16))
        {
          goto LABEL_21;
        }

        v15 = *(a1 + 8 * v6 + 32);
      }

      v16 = v15;
      v17 = [v15 identifier];
      if (!v17)
      {
        goto LABEL_18;
      }

      v18 = v17;
      v19 = sub_22766C000();
      v21 = v20;

      v22 = [v16 name];
      if (!v22)
      {

LABEL_18:
        v29 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51028], v29);
        swift_willThrow();

        return v12;
      }

      v23 = v22;
      v24 = sub_22766C000();
      v26 = v25;

      v27 = v37;
      v40(v19, v21, v24, v26);

      v43 = v12;
      v10 = *(v12 + 16);
      v28 = *(v12 + 24);
      a3 = (v10 + 1);
      if (v10 >= v28 >> 1)
      {
        v32(v28 > 1, v10 + 1, 1);
        v12 = v43;
      }

      *(v12 + 16) = a3;
      (*(v42 + 32))(v12 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v10, v27, v39);
      ++v6;
      a1 = v38;
      if (v14 == v36)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

void sub_226ED5FDC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_227663FA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD538, &unk_22768B7F0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_226E93170(a1, v20 - v14, &qword_27D7BD538, &unk_22768B7F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_226EB4544, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void *sub_226ED62C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226ED675C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226ED62E0(uint64_t a1)
{
  v2 = sub_227667A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139B510, MEMORY[0x277D530A8], MEMORY[0x277D530B0]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226ED647C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226ED647C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139B510, MEMORY[0x277D530A8], MEMORY[0x277D530B0]);
  v33 = a2;
  v11 = sub_22766BF50();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_226EB99C8(&qword_27D7BA6A0, MEMORY[0x277D530A8], MEMORY[0x277D530B8]);
      v21 = sub_22766BFB0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_226ED6790(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_226ED6790(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227667A70();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CE6A0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D530A8], &qword_27D7BA6A8, &qword_227678ED0);
      goto LABEL_12;
    }

    sub_226ED6AB8(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B510, MEMORY[0x277D530A8], MEMORY[0x277D530B0]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_27D7BA6A0, MEMORY[0x277D530A8], MEMORY[0x277D530B8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226ED6AB8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227667A70();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA6A8, &qword_227678ED0);
  v7 = sub_22766CDC0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_226EB99C8(&qword_28139B510, MEMORY[0x277D530A8], MEMORY[0x277D530B0]);
      result = sub_22766BF50();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_226ED6DD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_227663FA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  v12 = a2[5];
  v13 = a2[6];
  __swift_project_boxed_opaque_existential_0(a2 + 2, v12);
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v6 + 32))(v15 + v14, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_226ECF5D8(sub_226ED7730, v15, v12, MEMORY[0x277D84F78] + 8, v13, v18);
}

uint64_t sub_226ED702C()
{
  v1 = sub_227663FA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_75Tm()
{
  v1 = sub_22766BE40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226ED71E0(uint64_t a1)
{
  v2 = sub_227669530();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139B238, MEMORY[0x277D53E10], MEMORY[0x277D53E18]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226ED737C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226ED737C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227669530();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B238, MEMORY[0x277D53E10], MEMORY[0x277D53E18]);
  v33 = a2;
  v11 = sub_22766BF50();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_226EB99C8(&qword_28139B230, MEMORY[0x277D53E10], MEMORY[0x277D53E20]);
      v21 = sub_22766BFB0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_226ED7A5C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_226ED765C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22766CC90();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    a2(v8, *(a1 + 36), 0, a1);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

void sub_226ED77B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[3];
  v8 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB428, &qword_22767A998);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  v12 = qword_2813B2078;
  swift_beginAccess();
  v13 = sub_226ED811C(v9 + v12, v8, v7);
  if (v13)
  {
    if (v13 == 1)
    {

LABEL_4:
      v14 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB218, &qword_227679D88);
      v15 = sub_227663FA0();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_227670CD0;
      (*(v16 + 16))(v18 + v17, a3, v15);
      sub_226EDAE6C(v18, v14[1], *(v14 + 16), v14[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v19 = sub_226EB0E3C(0);
    if (!v24)
    {
      v20 = v19;
      [v19 setResultType_];
      sub_226ED9864();
      v21 = sub_22766C9E0();
      v22 = sub_226EDAB24(v21);

      sub_226EDAB78(v22, v11);

      goto LABEL_4;
    }
  }
}

uint64_t sub_226ED7A5C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227669530();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226ED8164(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53E10], &qword_27D7BA560, &qword_227678E08);
      goto LABEL_12;
    }

    sub_226ED7E00(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B238, MEMORY[0x277D53E10], MEMORY[0x277D53E18]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B230, MEMORY[0x277D53E10], MEMORY[0x277D53E20]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226ED7D3C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_226ED7E00(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227669530();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA560, &qword_227678E08);
  v7 = sub_22766CDC0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_226EB99C8(&unk_28139B238, MEMORY[0x277D53E10], MEMORY[0x277D53E18]);
      result = sub_22766BF50();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_226ED8164(uint64_t a1)
{
  v2 = v1;
  v36 = sub_227669530();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA560, &qword_227678E08);
  result = sub_22766CDC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_226EB99C8(&unk_28139B238, MEMORY[0x277D53E10], MEMORY[0x277D53E18]);
      result = sub_22766BF50();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_226ED84C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v10 = a4(0);
  v11 = (a3 + 32);
  v12 = *(a3 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v15 = v11[3];
    v14 = v11[4];
    __swift_project_boxed_opaque_existential_0(v11, v15);
    v16 = *(v14 + 24);
    v17 = sub_226EB1040(a5, a6, a7);
    v18 = v16(a1, v10, a2, v10, v17, v15, v14);
    v11 = v13;
    if (v18)
    {
      return v18;
    }
  }

  return 0;
}

char *sub_226ED85A4(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC450, &qword_22767DAE8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_2272467A0(a1);
  if (!v2)
  {
    v12 = v11;
    v25 = 0;
    v13 = *(v1 + 2);
    sub_227275DA8(v13);
    if (v14)
    {
      v15 = sub_22766C2B0();
    }

    else
    {
      v15 = 0;
    }

    [v12 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v7, *MEMORY[0x277D4F000], v4);
    v27 = 1;
    v16 = v13;
    sub_227669760();
    *&v10[*(v8 + 28)] = v12;
    *&v10[*(v8 + 32)] = v16;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v10;
    v18 = sub_227669730();
    if (v26 == 1)
    {
      sub_227264388(MEMORY[0x277D84FA0], sub_226ED5718, 0);
      v1 = v19;
    }

    else
    {
      v20 = MEMORY[0x22AA99A00](v18);
      v21 = v25;
      v22 = sub_22725BED4(v10, MEMORY[0x277D84FA0], sub_226ED5718, 0);
      if (!v21)
      {
        v1 = v22;
      }

      objc_autoreleasePoolPop(v20);
    }

    sub_226E97D1C(v10, &qword_27D7BC450, &qword_22767DAE8);
  }

  return v1;
}

void sub_226ED88C8(void *a1)
{
  v3 = sub_227662190();
  v4 = [a1 identifier];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  sub_22766C000();

  v6 = [a1 dateReleased];
  if (!v6)
  {
LABEL_8:

LABEL_9:
    v10 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51028], v10);
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v6;
  sub_22766C000();

  v8 = [a1 contentRating];
  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v8;
  sub_22766C000();

  sub_226ED4548([a1 contributorIdentifierss]);
  if (v1)
  {
  }

  else
  {
    sub_226ED4548([a1 equipmentIdentifierss]);
    sub_226ED4548([a1 musicGenreIdentifierss]);
    sub_226ED4548([a1 modalityIdentifierss]);
    sub_226ED4548([a1 trainerIdentifierss]);
    sub_226ED4548([a1 themeIdentifierss]);
    sub_226ED4548([a1 workoutIdentifierss]);
    sub_226ED978C();
    sub_227663AE0();
    sub_227662100();
    sub_2276669B0();
  }

LABEL_10:
}

uint64_t sub_226ED8E38(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v74) = a3;
  v70 = a2;
  v73 = a1;
  v61 = sub_2276627D0();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276624A0();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2276691E0();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v72 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766A100();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = sub_22766B390();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v53 - v26;
  v28 = *(a5 + 32);
  v71 = a4;
  v66 = a5;
  v28(a4, a5, v25);
  v29 = 0;
  if (sub_227669C10())
  {
    v74 = v23;
    sub_22766A770();
    v54 = *(v14 + 16);
    v54(v19, v73, v13);
    v30 = sub_22766B380();
    v55 = sub_22766C8B0();
    v57 = v30;
    v31 = os_log_type_enabled(v30, v55);
    v68 = v21;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v76[0] = v33;
      *v32 = 136315394;
      v75 = v70;
      swift_getMetatypeMetadata();
      v34 = sub_22766C060();
      v56 = v20;
      v36 = sub_226E97AE8(v34, v35, v76);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v54(v16, v19, v13);
      v37 = sub_22766C060();
      v39 = v38;
      (*(v14 + 8))(v19, v13);
      v40 = v37;
      v20 = v56;
      v41 = sub_226E97AE8(v40, v39, v76);

      *(v32 + 14) = v41;
      v42 = v57;
      _os_log_impl(&dword_226E8E000, v57, v55, "Journaling deletion of %s objects, clauses: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v32, -1, -1);

      v43 = v68;
    }

    else
    {

      (*(v14 + 8))(v19, v13);
      v43 = v21;
    }

    (*(v43 + 8))(v27, v20);
    sub_227117ADC(&qword_27D7BAB58, MEMORY[0x277D4F440], MEMORY[0x277D4F438]);
    v44 = sub_2276683C0();
    v46 = v45;
    v56 = v20;
    (*(v66 + 24))(v76, v71);
    PersistenceEntityName.rawValue.getter();
    sub_227662740();
    sub_226F5E0B4(v44, v46);
    sub_2276691B0();
    sub_227117ADC(&qword_27D7BAB60, MEMORY[0x277D53AB0], MEMORY[0x277D53AA8]);
    v47 = sub_2276683C0();
    v49 = v48;
    v73 = *(v59 + 16);
    v50 = v58;
    sub_2276627C0();
    sub_227662770();
    (*(v60 + 8))(v50, v61);
    v51 = v62;
    sub_227662400();

    sub_2276625B0();
    sub_226EDC420(v47, v49);
    sub_226EDC420(v44, v46);
    (*(v63 + 8))(v51, v64);
    (*(v67 + 8))(v72, v69);
    return 1;
  }

  return v29;
}

unint64_t sub_226ED978C()
{
  result = qword_28139BA10;
  if (!qword_28139BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BA10);
  }

  return result;
}

unint64_t sub_226ED9864()
{
  result = qword_281398AE0;
  if (!qword_281398AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398AE0);
  }

  return result;
}

uint64_t sub_226ED9908@<X0>(uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a3;
  v33 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2D8, &qword_22767A270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_227667900();
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = v17;

    sub_227667720();
    (v32)(v19);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v32 = *(v10 + 32);
      v32(v15, v8, v9);
      v24 = swift_allocObject();
      v31 = v24;
      *(v24 + 16) = sub_226EDAAD4;
      *(v24 + 24) = 0;
      (*(v10 + 16))(v12, v15, v9);
      v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v26 = swift_allocObject();
      v32((v26 + v25), v12, v9);
      v27 = (v26 + ((v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
      v28 = v31;
      *v27 = sub_226EDA930;
      v27[1] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v10 + 8))(v15, v9);
      return (*(v30 + 8))(v19, v16);
    }

    sub_226E97D1C(v8, &qword_27D7BB2D8, &qword_22767A270);
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
    (*(v30 + 8))(v19, v16);
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_226ED9FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_226EDA6C4;
  v30[1] = v22;
  sub_227665AD0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_226EDA784;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_226EDA714@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_226EDA7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v10 + 32))(v15 + v14, v13, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669270();
}

void sub_226EDAA38(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v8, a5);
  v6 = v8[0];
  v7 = v8[1];
  v9 = 0;
  a1(v8);

  sub_226EC33EC(v6, v7, 0);
}

uint64_t sub_226EDAAD4@<X0>(uint64_t *a1@<X8>)
{
  sub_227665AD0();
  result = sub_227667710();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

void sub_226EDAB78(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226ED9864();
    sub_227125F6C(&qword_281398AD0, sub_226ED9864, MEMORY[0x277D85378]);
    sub_22766C700();
    v3 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v19 = v5;
  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_226EBB21C(v3);
      return;
    }

    while (1)
    {
      v18 = [a2 objectWithID_];
      [a2 deleteObject_];

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = sub_22766CD50();
      if (v17)
      {
        v20 = v17;
        sub_226ED9864();
        swift_dynamicCast();
        v16 = v21;
        v14 = v6;
        v15 = v7;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_226EDADA0()
{
  sub_226EDADF8();

  return swift_deallocClassInstance();
}

uint64_t sub_226EDADF8()
{
  v1 = *(v0 + 16);

  v2 = qword_2813B2078;
  v3 = sub_22766A100();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_226EDAE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, double))
{
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a5(a1, a2, a3, a4, v13);
  if (v5)
  {
    sub_22766A770();
    v17 = v5;
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_22766D250();
      v24 = sub_226E97AE8(v22, v23, &v28);
      v27 = v11;
      v25 = v24;

      *(v20 + 4) = v25;
      _os_log_impl(&dword_226E8E000, v18, v19, "ERROR: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);

      (*(v12 + 8))(v15, v27);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_226EDB0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v56 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227663FA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226EDB658(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v50 = v10;
    v51 = v14;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v48 = v8;
    v49 = v7;
    v18 = *(a1 + 16);
    if (v18)
    {
      v20 = v12 + 16;
      v19 = *(v12 + 16);
      v54 = "ManagedCompletedMarketingVideo";
      v55 = v19;
      v21 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v52 = *(v12 + 72);
      v53 = (v12 + 8);
      v22 = v51;
      while (1)
      {
        v23 = v20;
        v55(v22, v21, v11);
        v24 = objc_opt_self();
        v25 = v22;
        v26 = sub_22766BFD0();
        v27 = v56;
        v28 = [v24 insertNewObjectForEntityForName:v26 inManagedObjectContext:v56];

        type metadata accessor for ManagedConfiguration();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {

          v33 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v34 = swift_allocError();
          (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
          swift_willThrow();
          v22 = v25;
          goto LABEL_16;
        }

        v30 = v29;
        v31 = sub_226EB1040(&unk_28139BA38, MEMORY[0x277D50560], &unk_22767AD88);
        v32 = v57;
        (*(v31 + 64))(v30, v27, v11, v31);
        v22 = v25;
        v57 = v32;
        if (v32)
        {
          break;
        }

        (*v53)(v25, v11);

        v21 += v52;
        --v18;
        v20 = v23;
        if (!v18)
        {
          goto LABEL_12;
        }
      }

      v34 = v57;
LABEL_16:
      v36 = v50;
      sub_22766A770();
      v37 = v34;
      v38 = sub_22766B380();
      v39 = sub_22766C8B0();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v49;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v34;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        _os_log_impl(&dword_226E8E000, v38, v39, "%@", v42, 0xCu);
        sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        v46 = v42;
        v22 = v51;
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v48 + 8))(v36, v41);
      swift_willThrow();
      sub_226EDC474(0);
      (*v53)(v22, v11);
    }

    else
    {
LABEL_12:
      sub_226EDC474(0);
    }
  }
}

uint64_t sub_226EDB658(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB58, &qword_22768B7E8);
    v10 = sub_226E9CFD0(&qword_281399120, &qword_27D7BEB58, &qword_22768B7E8, MEMORY[0x277D83970]);
    v11 = sub_226EB1040(&unk_28139BA38, MEMORY[0x277D50560], &unk_22767AD88);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_226EDB7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v98 = a1;
  v91 = sub_22766B390();
  v87 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v73 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v73 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v90 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v73 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = &v73 - v16;
  MEMORY[0x28223BE20](v17);
  v99 = &v73 - v18;
  MEMORY[0x28223BE20](v19);
  v83 = &v73 - v20;
  v21 = sub_22766CB90();
  MEMORY[0x28223BE20](v21 - 8);
  v100 = &v73 - v22;
  v23 = *(a3 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_getAssociatedTypeWitness();
  v74 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v73 - v29;
  v31 = *(a5 + 32);
  v79 = a5;
  v77 = a5 + 32;
  v76 = v31;
  (v31)(AssociatedTypeWitness, a5, v28);
  v78 = v7;
  v32 = 0;
  if (sub_227669C10())
  {
    (*(v23 + 16))(v26, v98, a3);
    sub_22766C230();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = v100;
    v98 = AssociatedConformanceWitness;
    sub_22766CBB0();
    v35 = v92;
    v36 = *(v92 + 48);
    v97 = v92 + 48;
    v96 = v36;
    v37 = v36(v34, 1, AssociatedTypeWitness);
    v39 = v83;
    if (v37 != 1)
    {
      v42 = *(v35 + 32);
      v41 = v35 + 32;
      v94 = v42;
      v95 = (v41 - 16);
      v43 = (v41 - 24);
      ++v87;
      *&v38 = 136315650;
      v75 = v38;
      v84 = (v41 - 24);
      v86 = v27;
      v85 = v30;
      v92 = v41;
      v42(v83, v34, AssociatedTypeWitness);
      while (1)
      {
        v45 = *v95;
        (*v95)(v99, v39, AssociatedTypeWitness);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB68, &qword_227679560);
        if (swift_dynamicCast())
        {
          sub_226E92AB8(v102, &v104);
          v46 = v93;
          sub_22766A770();
          v47 = v88;
          v45(v88, v39, AssociatedTypeWitness);
          v48 = sub_22766B380();
          v49 = sub_22766C8B0();
          v50 = os_log_type_enabled(v48, v49);
          v82 = v45;
          if (v50)
          {
            v51 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *&v102[0] = v81;
            *v51 = v75;
            v45(v80, v47, AssociatedTypeWitness);
            v52 = sub_22766C060();
            v54 = v53;
            v55 = *v43;
            (*v43)(v47, AssociatedTypeWitness);
            v56 = sub_226E97AE8(v52, v54, v102);

            *(v51 + 4) = v56;
            *(v51 + 12) = 2080;
            v101 = v76(AssociatedTypeWitness, v79);
            v57 = sub_2271115CC();
            v58 = MEMORY[0x277D4F1D0];
            v59 = MEMORY[0x22AA958B0](MEMORY[0x277D4F1D0], v57);
            v61 = sub_226E97AE8(v59, v60, v102);

            *(v51 + 14) = v61;
            *(v51 + 22) = 2080;
            v101 = v78;
            v62 = v57;
            v63 = v55;
            v64 = v93;
            v65 = MEMORY[0x22AA958B0](v58, v62);
            v67 = sub_226E97AE8(v65, v66, v102);

            *(v51 + 24) = v67;
            v68 = v91;
            _os_log_impl(&dword_226E8E000, v48, v49, "Journaling %s, as it needs %s and we have %s", v51, 0x20u);
            v69 = v81;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v69, -1, -1);
            v70 = v51;
            v39 = v83;
            MEMORY[0x22AA9A450](v70, -1, -1);

            (*v87)(v64, v68);
          }

          else
          {

            v63 = *v43;
            (*v43)(v47, AssociatedTypeWitness);
            (*v87)(v46, v91);
          }

          v71 = v105;
          v72 = v106;
          __swift_project_boxed_opaque_existential_0(&v104, v105);
          sub_227111128(*(v89 + 16), v71, v72);
          v43 = v84;
          v63(v39, AssociatedTypeWitness);
          __swift_destroy_boxed_opaque_existential_0(&v104);
          v27 = v86;
          v30 = v85;
        }

        else
        {
          (*v43)(v39, AssociatedTypeWitness);
          v103 = 0;
          memset(v102, 0, sizeof(v102));
          sub_226E97D1C(v102, &qword_27D7BAB70, &qword_227679568);
        }

        v44 = v100;
        sub_22766CBB0();
        if (v96(v44, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        v94(v39, v44, AssociatedTypeWitness);
      }
    }

    (*(v74 + 8))(v30, v27);
    return 1;
  }

  return v32;
}

void sub_226EDC364(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22714BEB8(&qword_28139BA28, MEMORY[0x277D50560], MEMORY[0x277D50558]);
  v5 = sub_2276683C0();
  if (!v3)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_227662560();
    sub_226EDC420(v7, v8);
    [a1 setData_];
  }
}

uint64_t sub_226EDC420(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_226EDC474(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_226EDC5C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_227663FA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 296), *(a2 + 320));
  result = sub_226EAF48C(a1, v14);
  if (v5)
  {
    return result;
  }

  v88 = a5;
  v89 = a3;
  v90 = a4;
  v91 = v12;
  v92 = v11;
  v97 = 0;
  v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = v16[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v21 = swift_allocObject();
  v22 = &qword_2813B2078;
  v23 = v17;
  v24 = v18;

  sub_22766A070();
  *(v21 + 16) = v23;
  *(v21 + 24) = v24;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  swift_getKeyPath();
  v93 = v14;
  sub_227663F60();
  v96[3] = MEMORY[0x277D839F8];
  v96[0] = v25;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v26 = sub_22766C820();
  sub_226E93170(v96, v94, &unk_27D7BC990, &qword_227670A30);
  v27 = v95;
  if (v95)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v94, v95);
    v29 = *(v27 - 8);
    v30 = MEMORY[0x28223BE20](v28);
    v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    v22 = &qword_2813B2078;
    __swift_destroy_boxed_opaque_existential_0(v94);
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v35 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v96, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v36 = v35;
  v37 = sub_22766A080();
  v39 = v38;
  MEMORY[0x22AA985C0]();
  if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_91;
  }

LABEL_6:
  sub_22766C3A0();
  (v37)(v96, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v41 = v97;
  sub_2273FC7CC(KeyPath);
  v97 = v41;
  v43 = v93;
  if (!v41)
  {
    v46 = sub_226F3E6A8(v42);

    swift_setDeallocating();

    v47 = *v22;
    v48 = sub_22766A100();
    (*(*(v48 - 8) + 8))(v21 + v47, v48);
    swift_deallocClassInstance();
    v49 = 1 << *(v46 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v37 = v50 & *(v46 + 56);
    v21 = (v49 + 63) >> 6;

    v51 = v96 + 1;
    v36 = 0;
    v52 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v37)
          {
            while (1)
            {
              v53 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v53 >= v21)
              {

                sub_226F44E94(v52);

                sub_227668640();
                return (*(v91 + 8))(v43, v92);
              }

              v37 = *(v46 + 56 + 8 * v53);
              ++v36;
              if (v37)
              {
                v36 = v53;
                goto LABEL_16;
              }
            }

            __break(1u);
LABEL_91:
            sub_22766C360();
            goto LABEL_6;
          }

LABEL_16:
          v54 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
          v55 = (*(v46 + 48) + ((v36 << 10) | (16 * v54)));
          v56 = *v55;
          v57 = v55[1];
          v58 = HIBYTE(v57) & 0xF;
          v59 = v56 & 0xFFFFFFFFFFFFLL;
          if ((v57 & 0x2000000000000000) != 0)
          {
            v60 = HIBYTE(v57) & 0xF;
          }

          else
          {
            v60 = v56 & 0xFFFFFFFFFFFFLL;
          }
        }

        while (!v60);
        if ((v57 & 0x1000000000000000) == 0)
        {
          break;
        }

        v87 = v51;

        sub_2274ADCE8(v56, v57, 10);
        v22 = v79;

        v51 = v87;
        if ((v22 & 0x100000000) == 0)
        {
LABEL_82:
          v87 = v51;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2273A683C(0, *(v52 + 16) + 1, 1, v52);
            v52 = result;
          }

          v81 = v52;
          v82 = *(v52 + 16);
          v83 = v81;
          v84 = *(v81 + 24);
          if (v82 >= v84 >> 1)
          {
            result = sub_2273A683C((v84 > 1), v82 + 1, 1, v83);
            v83 = result;
          }

          *(v83 + 16) = v82 + 1;
          v85 = v83 + 4 * v82;
          v52 = v83;
          *(v85 + 32) = v22;
          v51 = v87;
        }
      }

      if ((v57 & 0x2000000000000000) != 0)
      {
        v96[0] = v56;
        v96[1] = v57 & 0xFFFFFFFFFFFFFFLL;
        if (v56 == 43)
        {
          if (!v58)
          {
            goto LABEL_95;
          }

          if (--v58)
          {
            LODWORD(v22) = 0;
            v71 = v51;
            while (1)
            {
              v72 = *v71 - 48;
              if (v72 > 9)
              {
                break;
              }

              v73 = 10 * v22;
              if ((v73 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v22 = v73 + v72;
              if (__CFADD__(v73, v72))
              {
                break;
              }

              ++v71;
              if (!--v58)
              {
                goto LABEL_77;
              }
            }
          }
        }

        else if (v56 == 45)
        {
          if (!v58)
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            return result;
          }

          if (--v58)
          {
            LODWORD(v22) = 0;
            v65 = v51;
            while (1)
            {
              v66 = *v65 - 48;
              if (v66 > 9)
              {
                break;
              }

              v67 = 10 * v22;
              if ((v67 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v22 = v67 - v66;
              if (v67 < v66)
              {
                break;
              }

              ++v65;
              if (!--v58)
              {
                goto LABEL_77;
              }
            }
          }
        }

        else if (v58)
        {
          LODWORD(v22) = 0;
          v76 = v96;
          while (1)
          {
            v77 = *v76 - 48;
            if (v77 > 9)
            {
              break;
            }

            v78 = 10 * v22;
            if ((v78 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v22 = v78 + v77;
            if (__CFADD__(v78, v77))
            {
              break;
            }

            ++v76;
            if (!--v58)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

      if ((v56 & 0x1000000000000000) != 0)
      {
        result = (v57 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v80 = v51;
        result = sub_22766CEC0();
        v51 = v80;
      }

      v61 = *result;
      if (v61 == 43)
      {
        if (v59 < 1)
        {
          goto LABEL_93;
        }

        v58 = v59 - 1;
        if (v59 == 1)
        {
          goto LABEL_76;
        }

        v22 = 0;
        if (result)
        {
          v68 = (result + 1);
          while (1)
          {
            v69 = *v68 - 48;
            if (v69 > 9)
            {
              goto LABEL_76;
            }

            v70 = 10 * v22;
            if ((v70 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_76;
            }

            v22 = v70 + v69;
            if (__CFADD__(v70, v69))
            {
              goto LABEL_76;
            }

            ++v68;
            if (!--v58)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v61 == 45)
      {
        if (v59 < 1)
        {
          goto LABEL_94;
        }

        v58 = v59 - 1;
        if (v59 == 1)
        {
          goto LABEL_76;
        }

        v22 = 0;
        if (result)
        {
          v62 = (result + 1);
          while (1)
          {
            v63 = *v62 - 48;
            if (v63 > 9)
            {
              break;
            }

            v64 = 10 * v22;
            if ((v64 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v22 = v64 - v63;
            if (v64 < v63)
            {
              break;
            }

            ++v62;
            if (!--v58)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v22 = 0;
          LOBYTE(v58) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v59)
        {
          goto LABEL_76;
        }

        v22 = 0;
        if (result)
        {
          do
          {
            v74 = *result - 48;
            if (v74 > 9)
            {
              goto LABEL_76;
            }

            v75 = 10 * v22;
            if ((v75 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_76;
            }

            v22 = v75 + v74;
            if (__CFADD__(v75, v74))
            {
              goto LABEL_76;
            }

            ++result;
          }

          while (--v59);
        }
      }

      LOBYTE(v58) = 0;
LABEL_77:
      LOBYTE(v94[0]) = v58;
      if ((v58 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  swift_setDeallocating();

  v44 = *v22;
  v45 = sub_22766A100();
  (*(*(v45 - 8) + 8))(v21 + v44, v45);
  swift_deallocClassInstance();
  return (*(v91 + 8))(v43, v92);
}

uint64_t sub_226EDCF78()
{
  v0 = sub_227665270();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  sub_22766A710();
  sub_22766B370();
  v45 = *(v5 + 8);
  v45(v19, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D515A0], v0);
  if ([objc_opt_self() acknowledgePrivacyOverride] == 2)
  {
    sub_22766A730();
    v20 = sub_22766B380();
    v21 = sub_22766C890();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "[OptInPrivacy] Privacy acknowledgement disabled via AMSDefaults.acknowledgePrivacyOverride: API will always return optedIn!", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    v45(v16, v4);
    (*(v1 + 8))(v3, v0);
    return 1;
  }

  v44 = v0;
  v24 = objc_opt_self();
  sub_227665260();
  v25 = sub_22766BFD0();

  v26 = [v24 acknowledgementNeededForPrivacyIdentifier_];

  if (v26)
  {
    sub_22766A730();
    v27 = sub_22766B380();
    v28 = sub_22766C870();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_226E8E000, v27, v28, "[OptInPrivacy] acknowledgementNeeded = 1", v29, 2u);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    v45(v13, v4);
    (*(v1 + 8))(v3, v44);
    return 0;
  }

  sub_227665260();
  v30 = sub_22766BFD0();

  v31 = [v24 hasPreviouslyAcknowledgedPrivacyIdentifier_];

  if (!v31)
  {
    sub_22766A730();
    v39 = sub_22766B380();
    v40 = sub_22766C870();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v44;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_226E8E000, v39, v40, "[OptInPrivacy] User never consented, needs acknowledgement.", v43, 2u);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    v45(v7, v4);
    (*(v1 + 8))(v3, v42);
    return 0;
  }

  sub_227665260();
  v32 = sub_22766BFD0();

  v33 = [v24 hasRejectedPrivacyIdentifier_];

  sub_22766A730();
  v34 = sub_22766B380();
  v35 = sub_22766C870();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v44;
  if (v36)
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    *(v38 + 4) = v33 ^ 1;
    _os_log_impl(&dword_226E8E000, v34, v35, "[OptInPrivacy] Opted-In = %{BOOL}d.", v38, 8u);
    MEMORY[0x22AA9A450](v38, -1, -1);
  }

  v45(v10, v4);
  (*(v1 + 8))(v3, v37);
  if (v33)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_226EDD55C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_2276666A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v12 = *(v9 + 8);
  v12(v11, v8);
  sub_22766A730();
  sub_22766B370();
  v12(v11, v8);
  sub_226EDCF78();
  sub_227666690();
  sub_227666670();
  (*(v2 + 16))(v4, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v13, v4, v1);
  sub_227669280();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_226EDD98C(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  swift_beginAccess();
  sub_226EDDC10(v2 + 56, &v17);
  if (v18)
  {
    sub_226E92AB8(&v17, v19);
    sub_226E91B50(v19, &v17);
    sub_226EDDC60(a2, v8);
    v9 = (*(v6 + 80) + 57) & ~*(v6 + 80);
    v10 = swift_allocObject();
    sub_226E92AB8(&v17, v10 + 16);
    *(v10 + 56) = a1;
    sub_226EDDCD0(v8, v10 + v9);
    v11 = swift_allocObject();
    *(v11 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v11 + 24) = 40;
    *(v11 + 32) = 2;
    *(v11 + 40) = 84;
    *(v11 + 48) = &unk_2276866E0;
    *(v11 + 56) = v10;
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    sub_22746E72C(&v17);
    v13 = sub_2276636A0();
    sub_226F09790();
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D50080], v13);
    *(swift_allocObject() + 16) = v14;
    return sub_227669280();
  }
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices18JetIdentifierStoreC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226EDDC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226EDDCD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226EDDD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226EDDDA8(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  swift_beginAccess();
  sub_226EDDC10(v2 + 56, &v17);
  if (v18)
  {
    sub_226E92AB8(&v17, v19);
    sub_226E91B50(v19, &v17);
    sub_226EDDC60(a2, v8);
    v9 = (*(v6 + 80) + 57) & ~*(v6 + 80);
    v10 = swift_allocObject();
    sub_226E92AB8(&v17, v10 + 16);
    *(v10 + 56) = a1;
    sub_226EDDCD0(v8, v10 + v9);
    v11 = swift_allocObject();
    *(v11 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v11 + 24) = 40;
    *(v11 + 32) = 2;
    *(v11 + 40) = 74;
    *(v11 + 48) = &unk_2276866C0;
    *(v11 + 56) = v10;
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    sub_22746E72C(&v17);
    v13 = sub_2276636A0();
    sub_226F09790();
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D50080], v13);
    *(swift_allocObject() + 16) = v14;
    return sub_227669280();
  }
}

uint64_t sub_226EDE020()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EDE058()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EDE0C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v8 = *(v5 + 8);
  v8(v7, v4);
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  sub_22766A730();
  sub_22766B370();
  v8(v7, v4);
  return sub_226EDD55C(a1);
}

uint64_t sub_226EDE22C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
  v4 = sub_226EB6150(&qword_28139BC68, &qword_27D7BEF50, &qword_227671540, sub_226F4364C);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_2270AF954(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

void *sub_226EDE33C(void *a1, int64_t a2, char a3)
{
  result = sub_226EDE318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226EDE35C(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_226EDE45C, 0, 0);
}

uint64_t sub_226EDE45C()
{
  v15 = v0;
  v1 = v0[5];
  sub_226E99364(0, &qword_281398A50, 0x277CE8CC0);
  v2 = sub_22766CA40();

  v0[2] = v2;
  sub_227669DE0();
  sub_227669D90();
  v3 = objc_allocWithZone(MEMORY[0x277CE8CC0]);
  v4 = sub_22766BFD0();

  v5 = [v3 initWithTemplateUniqueName:v4 progressQuantity:0 goalQuantity:0];
  v0[11] = v5;

  sub_226ECCF08(&v14, v5);
  v6 = v1[70];
  v7 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v6);
  v8 = *(v7 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
  *v9 = v0;
  v9[1] = sub_2271760F4;
  v11 = v0[5];

  return (v13)(v0 + 3, sub_22717AEA4, v11, v10, v6, v7);
}

uint64_t sub_226EDE784(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a4;
  v7 = sub_22766B390();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766C050();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v35 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227662750();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276624A0();
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v42 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v34 - v21;
  result = type metadata accessor for TransportSerializableJournalRecorder(0);
  if (*(a1 + *(result + 28)) == 1)
  {
    v24 = result;
    v44 = a2;
    v45 = a3;

    MEMORY[0x22AA98450](95, 0xE100000000000000);
    v25 = *(a1 + *(v24 + 20));
    sub_227662720();
    v26 = sub_2276626A0();
    (*(v12 + 8))(v14, v11);
    v27 = [v25 stringFromDate_];

    v28 = sub_22766C000();
    v30 = v29;

    MEMORY[0x22AA98450](v28, v30);

    sub_227662400();

    sub_227662410();
    v31 = *(v41 + 8);
    v31(v19, v15);
    sub_226FB165C();
    v34[1] = v31;
    sub_226FB1748();
    __swift_project_boxed_opaque_existential_0(v38, v38[3]);
    v44 = sub_227667710();
    v45 = v32;
    v33 = v35;
    sub_22766C040();
    sub_226FB2548();
    sub_22766CBF0();
    (*(v36 + 8))(v33, v37);
    v31(v22, v15);
  }

  return result;
}

void sub_226EDEE20(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52828], sub_226F1F928, sub_226ED4D78);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226EDEFE4(v7);

    sub_226EB707C(v8, MEMORY[0x277D52828], sub_226EDF180);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t objectdestroy_30Tm()
{
  v1 = sub_227668D10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EDEFE4(uint64_t a1)
{
  v2 = sub_227666B60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139B5D8, MEMORY[0x277D52828], MEMORY[0x277D52830]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226EDF180(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226EDF180(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666B60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&qword_28139B5D8, MEMORY[0x277D52828], MEMORY[0x277D52830]);
  v33 = a2;
  v11 = sub_22766BF50();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_226EB99C8(&qword_28139B5D0, MEMORY[0x277D52828], MEMORY[0x277D52838]);
      v21 = sub_22766BFB0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_226EDF4AC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t type metadata accessor for TransportSerializableJournalRecorder(uint64_t a1)
{
  result = qword_281399978;
  if (!qword_281399978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226EDF4AC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666B60();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226EDFD58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52828], &qword_27D7BA5D0, &qword_227678E60);
      goto LABEL_12;
    }

    sub_226EDFA20(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&qword_28139B5D8, MEMORY[0x277D52828], MEMORY[0x277D52830]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B5D0, MEMORY[0x277D52828], MEMORY[0x277D52838]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

void sub_226EDF774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB20, &unk_2276801F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-1] - v5;
  v7 = sub_227669C50();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AA991A0](0, a2, v9);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v12 = *(a2 + 32);
  }

  v13 = v12;
  sub_22766CAA0();
  v15 = v14;

  if (v15)
  {

    sub_227669C40();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      goto LABEL_9;
    }

    sub_226E97D1C(v6, &qword_27D7BCB20, &unk_2276801F0);
  }

  if ([objc_opt_self() valueWithBool:0 inContext:a1])
  {
    return;
  }

  __break(1u);
LABEL_9:
  (*(v8 + 32))(v11, v6, v7);
  v19[3] = v7;
  v19[4] = sub_226EE00B4();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(v8 + 16))(boxed_opaque_existential_0, v11, v7);
  v17 = sub_227669600();
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (![objc_opt_self() valueWithBool:v17 & 1 inContext:a1])
  {
LABEL_14:
    __break(1u);
    return;
  }

  (*(v8 + 8))(v11, v7);
}

uint64_t sub_226EDFA20(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227666B60();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5D0, &qword_227678E60);
  v7 = sub_22766CDC0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_226EB99C8(&qword_28139B5D8, MEMORY[0x277D52828], MEMORY[0x277D52830]);
      result = sub_22766BF50();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_226EDFD58(uint64_t a1)
{
  v2 = v1;
  v36 = sub_227666B60();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5D0, &qword_227678E60);
  result = sub_22766CDC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_226EB99C8(&qword_28139B5D8, MEMORY[0x277D52828], MEMORY[0x277D52830]);
      result = sub_22766BF50();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_226EE00B4()
{
  result = qword_28139B1E0;
  if (!qword_28139B1E0)
  {
    sub_227669C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B1E0);
  }

  return result;
}

char *sub_226EE010C(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_2272412A0(a1);
  if (!v2)
  {
    v12 = v11;
    v25 = 0;
    v13 = *(v1 + 2);
    sub_2272764F8(v13);
    if (v14)
    {
      v15 = sub_22766C2B0();
    }

    else
    {
      v15 = 0;
    }

    [v12 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v7, *MEMORY[0x277D4F000], v4);
    v27 = 1;
    v16 = v13;
    sub_227669760();
    *&v10[*(v8 + 28)] = v12;
    *&v10[*(v8 + 32)] = v16;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v10;
    v18 = sub_227669730();
    if (v26 == 1)
    {
      sub_227264934(MEMORY[0x277D84FA0], sub_226EDEE20, 0);
      v1 = v19;
    }

    else
    {
      v20 = MEMORY[0x22AA99A00](v18);
      v21 = v25;
      v22 = sub_22725C498(v10, MEMORY[0x277D84FA0], sub_226EDEE20, 0);
      if (!v21)
      {
        v1 = v22;
      }

      objc_autoreleasePoolPop(v20);
    }

    sub_226E97D1C(v10, &qword_27D7BC490, &qword_22767DB28);
  }

  return v1;
}

void sub_226EE0434(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52790], sub_226F1F948, sub_226ED88C8);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226EE0534(v7);

    sub_226EB707C(v8, MEMORY[0x277D52790], sub_226EE06D0);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_226EE0534(uint64_t a1)
{
  v2 = sub_227666A40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139B600, MEMORY[0x277D52790], MEMORY[0x277D52798]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_226EE06D0(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226EE06D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666A40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226EB99C8(&unk_28139B600, MEMORY[0x277D52790], MEMORY[0x277D52798]);
  v33 = a2;
  v11 = sub_22766BF50();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_226EB99C8(&qword_28139B5F8, MEMORY[0x277D52790], MEMORY[0x277D527A0]);
      v21 = sub_22766BFB0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_226EE09B0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_226EE09B0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_227666A40();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226EE0F94(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52790], &qword_27D7BAA50, &qword_227679148);
      goto LABEL_12;
    }

    sub_226EE0C78(v11 + 1);
  }

  v13 = *v3;
  sub_226EB99C8(&unk_28139B600, MEMORY[0x277D52790], MEMORY[0x277D52798]);
  v14 = sub_22766BF50();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_226EB99C8(&qword_28139B5F8, MEMORY[0x277D52790], MEMORY[0x277D527A0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226EE0C78(uint64_t a1)
{
  v2 = v1;
  v33 = sub_227666A40();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAA50, &qword_227679148);
  v7 = sub_22766CDC0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_226EB99C8(&unk_28139B600, MEMORY[0x277D52790], MEMORY[0x277D52798]);
      result = sub_22766BF50();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_226EE0F94(uint64_t a1)
{
  v2 = v1;
  v36 = sub_227666A40();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAA50, &qword_227679148);
  result = sub_22766CDC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_226EB99C8(&unk_28139B600, MEMORY[0x277D52790], MEMORY[0x277D52798]);
      result = sub_22766BF50();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

char *sub_226EE12F0(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC608, &qword_22767E0E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_227240DA0(a1);
  if (!v2)
  {
    v12 = v11;
    v25 = 0;
    v13 = *(v1 + 2);
    sub_2272768A0(v13);
    if (v14)
    {
      v15 = sub_22766C2B0();
    }

    else
    {
      v15 = 0;
    }

    [v12 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v7, *MEMORY[0x277D4F000], v4);
    v27 = 1;
    v16 = v13;
    sub_227669760();
    *&v10[*(v8 + 28)] = v12;
    *&v10[*(v8 + 32)] = v16;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v10;
    v18 = sub_227669730();
    if (v26 == 1)
    {
      sub_227264B18(MEMORY[0x277D84FA0], sub_226EE0434, 0);
      v1 = v19;
    }

    else
    {
      v20 = MEMORY[0x22AA99A00](v18);
      v21 = v25;
      v22 = sub_22725C684(v10, MEMORY[0x277D84FA0], sub_226EE0434, 0);
      if (!v21)
      {
        v1 = v22;
      }

      objc_autoreleasePoolPop(v20);
    }

    sub_226E97D1C(v10, &qword_27D7BC608, &qword_22767E0E8);
  }

  return v1;
}

void sub_226EE162C(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24[-1] - v15;
  if (a2)
  {
    v24[0] = a1;
    v24[1] = 0;
    v25 = 1;
    v17 = a1;
    a5(v24);
    v18 = MEMORY[0x277D84FB8];
    v19 = a1;
    v20 = 1;
  }

  else
  {
    v24[0] = a1;

    a3(v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(v23, v22);

    (*(v14 + 8))(v16, v13);
    v18 = MEMORY[0x277D84FB8];
    v19 = a1;
    v20 = 0;
  }

  sub_226EB4668(v19, v20, v18);
}

uint64_t sub_226EE18AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);

  return sub_227669270();
}

uint64_t sub_226EE1970@<X0>(uint64_t *a2@<X8>)
{
  sub_227666A40();
  v4 = MEMORY[0x277D52790];
  sub_226EE1A34(&qword_28139B5E8, MEMORY[0x277D52790], MEMORY[0x277D52788]);
  sub_226EE1A34(&unk_28139B600, v4, MEMORY[0x277D52798]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226EE1A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_38Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_38Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void *sub_226EE1BC4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_226EE1BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22766C000();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EE1CA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE1D14()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE1D78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE1DB0()
{
  v1 = type metadata accessor for MetricRecordingContext(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = v0 + v4;
  v7 = *(v1 + 20);
  v8 = sub_227666C80();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = *(v2 + 32);
  v10 = sub_2276666A0();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  v11 = *(v2 + 36);
  type metadata accessor for MetricServiceSubscriptionState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = sub_227665AD0();
    (*(*(v13 - 8) + 8))(v6 + v11, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE1F40()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE1FF8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE2030()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE2068()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE20CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE210C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226EE21B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE2298()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE22D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE2318()
{
  v1 = sub_227664E20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE2498()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2514()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE25C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE260C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE2644()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE277C()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE2848()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2880(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_226EE2898(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_226EE28B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_226EE28C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE2908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SyncEncryptionKey(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_226EE2A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SyncEncryptionKey(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_226EE2B20()
{
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE2BE4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EE2C34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE2C80()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE2D08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2D48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2DB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE2E14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE2E4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE2E84()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226EE2ED0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EE2F94()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE31F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE3228()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE3260()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EE32AC()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v23 = *(v2 + 80);
  v3 = (v23 + 240) & ~v23;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v22 = *(v5 + 80);
  v6 = (v4 + v22) & ~v22;
  v7 = *(v5 + 64);
  v21 = sub_227667A70();
  v8 = *(v21 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v13 = *(v12 + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  v20 = *(v12 + 64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  (*(v2 + 8))(&v0[v3], v1);
  v15 = sub_2276638D0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v0[v6], 1, v15))
  {
    (*(v16 + 8))(&v0[v6], v15);
  }

  (*(v8 + 8))(&v0[v10], v21);
  v17 = sub_22766A4C0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v0[v14], 1, v17))
  {
    (*(v18 + 8))(&v0[v14], v17);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | v9 | v13 | 7);
}

uint64_t sub_226EE35FC()
{
  v1 = sub_2276638D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE36C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE370C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE3754()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EE3840@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276645A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EE386C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276692B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226EE3898()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226EE38E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EE3A00()
{
  v1 = sub_227664530();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EE3AC4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}
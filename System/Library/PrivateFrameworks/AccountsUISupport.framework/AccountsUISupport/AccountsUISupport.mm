uint64_t ConfigurationResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  ConfigurationResolver.init()();
  return v0;
}

uint64_t ConfigurationResolver.init()()
{
  v1 = _s5StateOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state);
  swift_storeEnumTagMultiPayload();
  *v4 = 0;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80) + 28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D38, &qword_23DD6EE88);
  bzero(v4 + v5, *(*(v6 - 8) + 64));
  sub_23DD5A454(v3, v4 + v5);
  sub_23DD6E2D8();
  return v0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23DD5A454(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConfigurationResolver.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80);
  sub_23DD5A544(v1 + *(v2 + 28));
  v3 = OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_logger;
  v4 = sub_23DD6E2E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_23DD5A544(uint64_t a1)
{
  v2 = _s5StateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConfigurationResolver.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80);
  sub_23DD5A544(v1 + *(v2 + 28));
  v3 = OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_logger;
  v4 = sub_23DD6E2E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DD5A688()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5A75C;
  v2 = *(v0 + 32);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E010, v2, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5A75C()
{

  return MEMORY[0x2822009F8](sub_23DD5A858, 0, 0);
}

uint64_t sub_23DD5A858()
{
  v1 = v0[3];
  v0[6] = v0[2];
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 24) + **(v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_23DD5A97C;

  return v5(ObjectType, v1);
}

uint64_t sub_23DD5A97C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_23DD5AAF4;
  }

  else
  {
    v2 = sub_23DD5AA90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD5AA90()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DD5AAF4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConfigurationResolver.validate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23DD6E288();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_23DD6E2B8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D40, &qword_23DD6EEB8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5ACB0, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23DD6E1C8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_23DD6E1D8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_23DD6E1B8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_23DD6E208();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D80, &qword_23DD6EEF0);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5BE54, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23DD6E1C8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_23DD6E228();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_23DD6E1D8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_23DD6E1B8();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_23DD6E258();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311DC0, &qword_23DD6EF28);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5D21C, 0, 0);
}

uint64_t sub_23DD5ACB0()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v3 = sub_23DD6E2A8();
  *(v0 + 112) = v3;
  v4 = MEMORY[0x277CE8708];
  sub_23DD5E574(&qword_27E311D48, MEMORY[0x277CE8708], MEMORY[0x277CE8718]);
  sub_23DD5E574(&qword_27E311D50, v4, MEMORY[0x277CE8710]);
  *v2 = v0;
  v2[1] = sub_23DD5AE08;
  v5 = *(v0 + 88);

  return static CodableResult<>.logAndIgnoreErrors(closure:)(v5, &unk_23DD6EEC8, v1, v3);
}

uint64_t sub_23DD5AE08()
{

  return MEMORY[0x2822009F8](sub_23DD5AF20, 0, 0);
}

uint64_t sub_23DD5AF20()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v1 - 8);
  v4 = *(v3 + 48);
  if (v4(v2, 1, v1) == 1)
  {
    v5 = v0[7];
    v6 = v0[5];
    v7 = v0[6];
    (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
    (*(v7 + 104))(v5, *MEMORY[0x277CE86F0], v6);
    sub_23DD6E298();
    if (v4(v2, 1, v1) != 1)
    {
      sub_23DD5E468(v0[11], &qword_27E311D40, &qword_23DD6EEB8);
    }
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_23DD5B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5B100, 0, 0);
}

uint64_t sub_23DD5B100()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5B1D4;
  v2 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v2, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5B1D4()
{

  return MEMORY[0x2822009F8](sub_23DD5B2D0, 0, 0);
}

uint64_t sub_23DD5B2D0()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 40) + **(v1 + 40));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_23DD5B400;
  v4 = v0[6];
  v5 = v0[4];

  return v7(v5, v4, ObjectType, v1);
}

uint64_t sub_23DD5B400()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23DD5E79C;
  }

  else
  {
    v2 = sub_23DD5E7A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t _s17AccountsUISupport21ConfigurationResolverC7resolvey0aB6Shared22PreliminaryInformationV8NextStepOAGYaAG5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23DD6E268();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5B5D8, 0, 0);
}

uint64_t sub_23DD5B5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = sub_23DD6E278();
  v4 = MEMORY[0x277CE86C8];
  v5 = sub_23DD5E574(&qword_27E311D58, MEMORY[0x277CE86C8], MEMORY[0x277CE86D8]);
  v6 = sub_23DD5E574(&qword_27E311D60, v4, MEMORY[0x277CE86D0]);
  v7 = MEMORY[0x277CE8698];
  v8 = sub_23DD5E574(&qword_27E311D68, MEMORY[0x277CE8698], MEMORY[0x277CE8690]);
  sub_23DD5E574(&qword_27E311D70, v7, MEMORY[0x277CE86A8]);
  sub_23DD5E574(&qword_27E311D78, v7, MEMORY[0x277CE86A0]);
  *v2 = v0;
  v2[1] = sub_23DD5B7DC;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(v10, &unk_23DD6EEE0, v1, v3, v9, v5, v6, v8);
}

uint64_t sub_23DD5B7DC()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23DD5E790, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23DD5B920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5B944, 0, 0);
}

uint64_t sub_23DD5B944()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5BA18;
  v2 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v2, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5BA18()
{

  return MEMORY[0x2822009F8](sub_23DD5BB14, 0, 0);
}

uint64_t sub_23DD5BB14()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 56) + **(v1 + 56));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_23DD5B400;
  v4 = v0[6];
  v5 = v0[4];

  return v7(v5, v4, ObjectType, v1);
}

uint64_t sub_23DD5BE54()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  v3 = sub_23DD6E1F8();
  *(v0 + 160) = v3;
  v4 = MEMORY[0x277CE8618];
  sub_23DD5E574(&qword_27E311D88, MEMORY[0x277CE8618], MEMORY[0x277CE8628]);
  sub_23DD5E574(&qword_27E311D90, v4, MEMORY[0x277CE8620]);
  *v2 = v0;
  v2[1] = sub_23DD5BFAC;
  v5 = *(v0 + 136);

  return static CodableResult<>.logAndIgnoreErrors(closure:)(v5, &unk_23DD6EF00, v1, v3);
}

uint64_t sub_23DD5BFAC()
{

  return MEMORY[0x2822009F8](sub_23DD5C0C4, 0, 0);
}

uint64_t sub_23DD5C0C4()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = *(v1 - 8);
  v4 = *(v3 + 48);
  if (v4(v2, 1, v1) == 1)
  {
    v5 = v0[13];
    v6 = v0[12];
    v7 = v0[9];
    v12 = v0[11];
    v13 = v0[10];
    v8 = v0[7];
    v14 = v0[8];
    v9 = v0[6];
    v15 = v0[5];
    (*(v0[15] + 16))();
    (*(v6 + 104))(v5, *MEMORY[0x277CE8600], v12);
    (*(v7 + 104))(v13, *MEMORY[0x277CE8610], v14);
    (*(v9 + 104))(v8, *MEMORY[0x277CE8608], v15);
    sub_23DD6E1E8();
    if (v4(v2, 1, v1) != 1)
    {
      sub_23DD5E468(v0[17], &qword_27E311D80, &qword_23DD6EEF0);
    }
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23DD5C2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5C318, 0, 0);
}

uint64_t sub_23DD5C318()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5C3EC;
  v2 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v2, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5C3EC()
{

  return MEMORY[0x2822009F8](sub_23DD5C4E8, 0, 0);
}

uint64_t sub_23DD5C4E8()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 72) + **(v1 + 72));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_23DD5B400;
  v4 = v0[6];
  v5 = v0[4];

  return v7(v5, v4, ObjectType, v1);
}

uint64_t _s17AccountsUISupport21ConfigurationResolverC7resolvey0aB6Shared15PasswordAccountO08ResolvedH0VAG5KnownVYaAK5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23DD6E1A8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5C6DC, 0, 0);
}

uint64_t sub_23DD5C6DC()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = sub_23DD6E198();
  v4 = MEMORY[0x277CE85C8];
  v5 = sub_23DD5E574(&qword_27E311D98, MEMORY[0x277CE85C8], MEMORY[0x277CE85D8]);
  v6 = sub_23DD5E574(&qword_27E311DA0, v4, MEMORY[0x277CE85D0]);
  v7 = MEMORY[0x277CE85E8];
  v8 = sub_23DD5E574(&qword_27E311DA8, MEMORY[0x277CE85E8], MEMORY[0x277CE85E0]);
  sub_23DD5E574(&qword_27E311DB0, v7, MEMORY[0x277CE85F8]);
  sub_23DD5E574(&qword_27E311DB8, v7, MEMORY[0x277CE85F0]);
  *v2 = v0;
  v2[1] = sub_23DD5C8E0;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(v10, &unk_23DD6EF18, v1, v3, v9, v5, v6, v8);
}

uint64_t sub_23DD5C8E0()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23DD5CA24, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23DD5CA24()
{
  (*(v0[7] + 32))(v0[5], v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23DD5CAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5CAD4, 0, 0);
}

uint64_t sub_23DD5CAD4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5CBA8;
  v2 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v2, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5CBA8()
{

  return MEMORY[0x2822009F8](sub_23DD5CCA4, 0, 0);
}

uint64_t sub_23DD5CCA4()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 88) + **(v1 + 88));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_23DD5CDD4;
  v4 = v0[6];
  v5 = v0[4];

  return v7(v5, v4, ObjectType, v1);
}

uint64_t sub_23DD5CDD4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23DD5CF4C;
  }

  else
  {
    v2 = sub_23DD5CEE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD5CEE8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DD5CF4C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DD5D21C()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_23DD6E248();
  *(v0 + 184) = v3;
  v4 = MEMORY[0x277CE8658];
  sub_23DD5E574(&qword_27E311DC8, MEMORY[0x277CE8658], MEMORY[0x277CE8668]);
  sub_23DD5E574(&qword_27E311DD0, v4, MEMORY[0x277CE8660]);
  *v2 = v0;
  v2[1] = sub_23DD5D374;
  v5 = *(v0 + 160);

  return static CodableResult<>.logAndIgnoreErrors(closure:)(v5, &unk_23DD6EF38, v1, v3);
}

uint64_t sub_23DD5D374()
{

  return MEMORY[0x2822009F8](sub_23DD5D48C, 0, 0);
}

uint64_t sub_23DD5D48C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = *(v1 - 8);
  v4 = *(v3 + 48);
  if (v4(v2, 1, v1) == 1)
  {
    v5 = v0[16];
    v6 = v0[15];
    v7 = v0[12];
    v12 = v0[14];
    v13 = v0[13];
    v14 = v0[11];
    v15 = v0[10];
    v8 = v0[9];
    v16 = v0[8];
    v9 = v0[6];
    v17 = v0[7];
    v18 = v0[5];
    (*(v0[18] + 16))();
    (*(v6 + 104))(v5, *MEMORY[0x277CE8600], v12);
    (*(v7 + 104))(v13, *MEMORY[0x277CE8610], v14);
    (*(v8 + 104))(v15, *MEMORY[0x277CE8650], v16);
    (*(v9 + 104))(v17, *MEMORY[0x277CE8608], v18);
    sub_23DD6E238();
    if (v4(v2, 1, v1) != 1)
    {
      sub_23DD5E468(v0[20], &qword_27E311DC0, &qword_23DD6EF28);
    }
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23DD5D700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5D724, 0, 0);
}

uint64_t sub_23DD5D724()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5D7F8;
  v2 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v2, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5D7F8()
{

  return MEMORY[0x2822009F8](sub_23DD5D8F4, 0, 0);
}

uint64_t sub_23DD5D8F4()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 104) + **(v1 + 104));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_23DD5B400;
  v4 = v0[6];
  v5 = v0[4];

  return v7(v5, v4, ObjectType, v1);
}

uint64_t _s17AccountsUISupport21ConfigurationResolverC7resolvey0aB6Shared15PasswordAccountO08ResolvedH0VAG7UnknownVYaAK5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23DD6E218();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5DAE8, 0, 0);
}

uint64_t sub_23DD5DAE8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = sub_23DD6E198();
  v4 = MEMORY[0x277CE85C8];
  v5 = sub_23DD5E574(&qword_27E311D98, MEMORY[0x277CE85C8], MEMORY[0x277CE85D8]);
  v6 = sub_23DD5E574(&qword_27E311DA0, v4, MEMORY[0x277CE85D0]);
  v7 = MEMORY[0x277CE8638];
  v8 = sub_23DD5E574(&qword_27E311DD8, MEMORY[0x277CE8638], MEMORY[0x277CE8630]);
  sub_23DD5E574(&qword_27E311DE0, v7, MEMORY[0x277CE8648]);
  sub_23DD5E574(&qword_27E311DE8, v7, MEMORY[0x277CE8640]);
  *v2 = v0;
  v2[1] = sub_23DD5B7DC;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(v10, dword_23DD6EF50, v1, v3, v9, v5, v6, v8);
}

uint64_t sub_23DD5DCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5DD10, 0, 0);
}

uint64_t sub_23DD5DD10()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5DDE4;
  v2 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v2, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5DDE4()
{

  return MEMORY[0x2822009F8](sub_23DD5DEE0, 0, 0);
}

uint64_t sub_23DD5DEE0()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 120) + **(v1 + 120));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_23DD5B400;
  v4 = v0[6];
  v5 = v0[4];

  return v7(v5, v4, ObjectType, v1);
}

uint64_t sub_23DD5E018(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5B0DC(a1, v5, v4);
}

uint64_t sub_23DD5E0C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5B920(a1, v5, v4);
}

uint64_t sub_23DD5E170(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5C2F4(a1, v5, v4);
}

uint64_t sub_23DD5E21C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E2C8;

  return sub_23DD5CAB0(a1, v5, v4);
}

uint64_t sub_23DD5E2C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DD5E3BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5D700(a1, v5, v4);
}

uint64_t sub_23DD5E468(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DD5E4C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5DCEC(a1, v5, v4);
}

uint64_t sub_23DD5E574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ConfigurationResolver(uint64_t a1)
{
  result = qword_27E311DF0;
  if (!qword_27E311DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DD5E610(uint64_t a1)
{
  sub_23DD5E708(319);
  if (v1 <= 0x3F)
  {
    sub_23DD6E2E8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DD5E708(uint64_t a1)
{
  if (!qword_27E311E00)
  {
    _s5StateOMa(255);
    v1 = sub_23DD6E178();
    if (!v2)
    {
      atomic_store(v1, &qword_27E311E00);
    }
  }
}

uint64_t sub_23DD5E760()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23DD5E7B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DD5E7F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_23DD5E8B8(uint64_t a1)
{
  sub_23DD5E92C(319);
  if (v1 <= 0x3F)
  {
    _s5StateO4DoneVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23DD5E92C(uint64_t a1)
{
  if (!qword_27E311E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E311E20, &qword_23DD6EFD0);
    v1 = sub_23DD6E338();
    if (!v2)
    {
      atomic_store(v1, &qword_27E311E18);
    }
  }
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

uint64_t sub_23DD5EA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DD6E148();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DD5EADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23DD6E148();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23DD5EB94(uint64_t a1)
{
  result = sub_23DD6E148();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23DD5EC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  done = _s5StateO4DoneVMa(0);
  MEMORY[0x28223BE20](done);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = _s5StateOMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23DD60874(v2, v14, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23DD60980(v14, v7);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
      v17 = *(v16 + 48);
      (*(v9 + 16))(a2, a1, v8);
      v26 = *&v7[*(done + 20)];
      swift_unknownObjectRetain();
      sub_23DD608DC(v7, _s5StateO4DoneVMa);
      *(a2 + v17) = v26;
      return (*(*(v16 - 8) + 56))(a2, 0, 2, v16);
    }

    else
    {
      sub_23DD608DC(v2, _s5StateOMa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E58, &qword_23DD6F028);
      v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_23DD6EF90;
      (*(v9 + 16))(v24 + v23, a1, v8);
      *v2 = v24;
      swift_storeEnumTagMultiPayload();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
      return (*(*(v25 - 8) + 56))(a2, 2, 2, v25);
    }
  }

  else
  {
    sub_23DD608DC(v2, _s5StateOMa);
    v19 = *v14;
    (*(v9 + 16))(v11, a1, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_23DD609E4(0, v19[2] + 1, 1, v19);
    }

    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_23DD609E4((v20 > 1), v21 + 1, 1, v19);
    }

    v19[2] = v21 + 1;
    (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v11, v8);
    *v2 = v19;
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
    return (*(*(v22 - 8) + 56))(a2, 1, 2, v22);
  }
}

uint64_t sub_23DD5F04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E38, &qword_23DD6EFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = _s5StateO14ServicesActionOMa(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = (a2 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80);
  sub_23DD5EC08(a1, v16);
  os_unfair_lock_unlock(v17);
  sub_23DD60874(v16, v14, _s5StateO14ServicesActionOMa);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
  v19 = (*(*(v18 - 8) + 48))(v14, 2, v18);
  if (v19)
  {
    if (v19 != 1)
    {
      v20 = sub_23DD6E378();
      (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = a2;

      sub_23DD5FB8C(0, 0, v10, &unk_23DD6EFF8, v21);
    }
  }

  else
  {
    v22 = *(v5 + 32);
    v24[0] = *&v14[*(v18 + 48)];
    v22(v7, v14, v4);
    v24[1] = v24[0];
    sub_23DD6E358();
    (*(v5 + 8))(v7, v4);
  }

  return sub_23DD608DC(v16, _s5StateO14ServicesActionOMa);
}

uint64_t sub_23DD5F3B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DD5F3F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5E2C8;

  return sub_23DD5F574();
}

uint64_t sub_23DD5F480()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DD5F4C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5E2C8;

  return sub_23DD5F3F0();
}

uint64_t sub_23DD5F574()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = _s5StateOMa(0);
  v1[9] = swift_task_alloc();
  v1[10] = _s5StateO4DoneVMa(0);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5F6A0, 0, 0);
}

uint64_t sub_23DD5F6A0()
{
  sub_23DD6E158();
  swift_allocObject();
  v0[12] = sub_23DD6E168();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_23DD5F794;
  v2 = v0[11];

  return sub_23DD5FF24(v2, 0xD000000000000028, 0x800000023DD70000);
}

uint64_t sub_23DD5F794(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_23DD5F894, 0, 0);
}

uint64_t sub_23DD5F894()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[4];

  v6 = sub_23DD6093C(&qword_27E311E48, &protocol conformance descriptor for $DistributedService);
  v7 = (v2 + *(v4 + 20));
  *v7 = v1;
  v7[1] = v6;
  v8 = (v5 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state);
  os_unfair_lock_lock((v5 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80) + 28);
  sub_23DD60874(v8 + v9, v3, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23DD608DC(v0[9], _s5StateOMa);
    }

    return sub_23DD6E418();
  }

  else
  {
    v12 = v0[11];
    v13 = v0[9];
    sub_23DD608DC(v8 + v9, _s5StateOMa);
    v14 = *v13;
    sub_23DD60874(v12, v8 + v9, _s5StateO4DoneVMa);
    swift_storeEnumTagMultiPayload();
    os_unfair_lock_unlock(v8);
    v15 = *(v14 + 16);
    if (v15)
    {
      v26 = v6;
      v16 = v0[6];
      v19 = *(v16 + 16);
      v17 = v16 + 16;
      v18 = v19;
      v20 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v21 = *(v17 + 56);
      do
      {
        v22 = v0[14];
        v23 = v0[7];
        v24 = v0[5];
        v18(v23, v20, v24);
        v0[2] = v22;
        v0[3] = v26;

        sub_23DD6E358();
        (*(v17 - 8))(v23, v24);
        v20 += v21;
        --v15;
      }

      while (v15);
    }

    sub_23DD608DC(v0[11], _s5StateO4DoneVMa);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_23DD5FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E38, &qword_23DD6EFE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23DD5FE4C(a3, v25 - v10);
  v12 = sub_23DD6E378();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23DD5FEBC(v11);
  }

  else
  {
    sub_23DD6E368();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23DD6E348();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23DD6E318() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23DD5FEBC(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DD5FEBC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23DD5FE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E38, &qword_23DD6EFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DD5FEBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E38, &qword_23DD6EFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DD5FF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23DD6E128();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_23DD6E148();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_23DD6E0D8();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[4] = type metadata accessor for $DistributedService(0);
  v4[5] = v8;

  return MEMORY[0x2822009F8](sub_23DD600C4, 0, 0);
}

uint64_t sub_23DD600C4()
{
  sub_23DD6E118();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_23DD60174;
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[12];

  return MEMORY[0x2821E7778](v3, v4, v2);
}

uint64_t sub_23DD60174()
{
  v2 = *v1;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_23DD603C0;
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];
    v2[22] = v2[4];
    (*(v5 + 8))(v4, v6);
    v3 = sub_23DD602BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD602BC()
{
  (*(v0[14] + 32))(v0[6], v0[15], v0[13]);
  sub_23DD6093C(&qword_27E311E50, &protocol conformance descriptor for $DistributedService);
  v1 = sub_23DD6E138();

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23DD603C0()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  (*(v3 + 32))(v1, v0[19], v4);
  (*(v3 + 16))(v2, v1, v4);
  sub_23DD6E3D8();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23EEFEBA0](0xD000000000000027, 0x800000023DD700D0);
  sub_23DD6E408();
  return sub_23DD6E418();
}

uint64_t sub_23DD604DC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23DD605D4;

  return v6(a1);
}

uint64_t sub_23DD605D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DD606CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DD60704(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD604DC(a1, v4);
}

uint64_t sub_23DD607BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E2C8;

  return sub_23DD604DC(a1, v4);
}

uint64_t sub_23DD60874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD608DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DD6093C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for $DistributedService(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DD60980(uint64_t a1, uint64_t a2)
{
  done = _s5StateO4DoneVMa(0);
  (*(*(done - 8) + 32))(a2, a1, done);
  return a2;
}

void *sub_23DD609E4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E58, &qword_23DD6F028);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23DD60BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DD60C78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23DD60D08(uint64_t a1)
{
  sub_23DD60D60(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_23DD60D60(uint64_t a1)
{
  if (!qword_27E311E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E311E20, &qword_23DD6EFD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E311E70);
    }
  }
}

uint64_t sub_23DD60DD8()
{
  v0 = sub_23DD6E2E8();
  __swift_allocate_value_buffer(v0, qword_27E311E80);
  __swift_project_value_buffer(v0, qword_27E311E80);
  return sub_23DD6E2D8();
}

uint64_t sub_23DD60E48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_23DD6E4D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_23DD6E4D8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23DD60F4C(char a1)
{
  sub_23DD6E4E8();
  MEMORY[0x23EEFED70](a1 & 1);
  return sub_23DD6E508();
}

uint64_t sub_23DD60F94(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_23DD61060(uint64_t a1)
{
  sub_23DD6E4E8();
  sub_23DD60F24(v3, *v1);
  return sub_23DD6E508();
}

uint64_t sub_23DD610D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD60E48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD61128@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23DD645D4();
  *a2 = result;
  return result;
}

uint64_t sub_23DD61164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23DD611B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23DD6120C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23DD6E4D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23DD612DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23DD61330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23DD61384()
{
  sub_23DD6E4E8();
  MEMORY[0x23EEFED70](0);
  return sub_23DD6E508();
}

uint64_t sub_23DD613C8(uint64_t a1)
{
  sub_23DD6E4E8();
  MEMORY[0x23EEFED70](0);
  return sub_23DD6E508();
}

uint64_t sub_23DD61408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD6120C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23DD61454@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23DD6149C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23DD614F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableResult.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v61 = a2[2];
  v4 = v61;
  v62 = v3;
  v63 = v5;
  v64 = v6;
  v10 = v5;
  v58 = a1;
  v59 = v5;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v50 = type metadata accessor for CodableResult.FailureCodingKeys(255, &v61);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23DD6E498();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v49 = &v39 - v13;
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v4;
  v62 = v3;
  v63 = v10;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v15 = type metadata accessor for CodableResult.SuccessCodingKeys(255, &v61);
  v16 = swift_getWitnessTable();
  v43 = v15;
  v41 = v16;
  v46 = sub_23DD6E498();
  v45 = *(v46 - 8);
  v17 = MEMORY[0x28223BE20](v46);
  v42 = &v39 - v18;
  v44 = *(v4 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v40 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 - 1);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v6;
  v57 = v4;
  v61 = v4;
  v62 = v3;
  v54 = v3;
  v55 = v8;
  v63 = v59;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  type metadata accessor for CodableResult.CodingKeys(255, &v61);
  swift_getWitnessTable();
  v24 = sub_23DD6E498();
  v59 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_23DD6E528();
  (*(v21 + 16))(v23, v60, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v51;
    v28 = v47;
    v29 = v54;
    (*(v51 + 32))(v47, v23, v54);
    LOBYTE(v61) = 1;
    v30 = v49;
    v31 = v24;
    sub_23DD6E478();
    v32 = v53;
    sub_23DD6E488();
    (*(v52 + 8))(v30, v32);
    (*(v27 + 8))(v28, v29);
    v24 = v31;
  }

  else
  {
    v33 = v44;
    v34 = v40;
    v35 = v57;
    (*(v44 + 32))(v40, v23, v57);
    LOBYTE(v61) = 0;
    v36 = v42;
    sub_23DD6E478();
    v37 = v46;
    sub_23DD6E488();
    (*(v45 + 8))(v36, v37);
    (*(v33 + 8))(v34, v35);
  }

  return (*(v59 + 8))(v26, v24);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t CodableResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v87 = a1;
  v73 = a9;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v70 = type metadata accessor for CodableResult.FailureCodingKeys(255, &v82);
  WitnessTable = swift_getWitnessTable();
  v62 = sub_23DD6E468();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v71 = &v56 - v16;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v17 = type metadata accessor for CodableResult.SuccessCodingKeys(255, &v82);
  v18 = swift_getWitnessTable();
  v67 = v17;
  v66 = v18;
  v60 = sub_23DD6E468();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v68 = &v56 - v19;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  type metadata accessor for CodableResult.CodingKeys(255, &v82);
  v78 = swift_getWitnessTable();
  v74 = sub_23DD6E468();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v21 = &v56 - v20;
  v63 = a2;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v76 = a3;
  v65 = a4;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v64 = a6;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v22 = type metadata accessor for CodableResult(0, &v82);
  v72 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v56 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - v29;
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v75 = v21;
  v31 = v79;
  sub_23DD6E518();
  if (!v31)
  {
    v58 = v25;
    v78 = v28;
    v57 = v30;
    v79 = v22;
    v32 = v75;
    v33 = v74;
    *&v80 = sub_23DD6E458();
    sub_23DD6E338();
    swift_getWitnessTable();
    *&v82 = sub_23DD6E3C8();
    *(&v82 + 1) = v34;
    *&v83 = v35;
    *(&v83 + 1) = v36;
    sub_23DD6E3B8();
    swift_getWitnessTable();
    sub_23DD6E388();
    v37 = v80;
    if (v80 == 2 || (v56 = v82, v80 = v82, v81 = v83, (sub_23DD6E398() & 1) == 0))
    {
      v46 = sub_23DD6E3F8();
      swift_allocError();
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E98, &qword_23DD6F050);
      *v48 = v79;
      sub_23DD6E438();
      sub_23DD6E3E8();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
      swift_willThrow();
      (*(v77 + 8))(v32, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37)
      {
        LOBYTE(v80) = 1;
        v38 = v71;
        v39 = v33;
        sub_23DD6E428();
        v41 = v72;
        v40 = v73;
        v42 = v77;
        v43 = v62;
        sub_23DD6E448();
        (*(v61 + 8))(v38, v43);
        (*(v42 + 8))(v32, v39);
        swift_unknownObjectRelease();
        v44 = v58;
      }

      else
      {
        LOBYTE(v80) = 0;
        v49 = v68;
        v50 = v33;
        sub_23DD6E428();
        v41 = v72;
        v40 = v73;
        v51 = v77;
        v52 = v60;
        sub_23DD6E448();
        (*(v59 + 8))(v49, v52);
        (*(v51 + 8))(v32, v50);
        swift_unknownObjectRelease();
        v44 = v78;
      }

      v45 = v79;
      swift_storeEnumTagMultiPayload();
      v54 = *(v41 + 32);
      v55 = v57;
      v54(v57, v44, v45);
      v54(v40, v55, v45);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t static CodableResult<>.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a7;
  v51 = a1;
  v52 = a2;
  v49 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v11);
  v44 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = v15;
  v53[1] = v16;
  v50 = v16;
  v53[2] = v17;
  v53[3] = v18;
  v53[4] = v19;
  v53[5] = v20;
  v53[6] = v21;
  v22 = type metadata accessor for CodableResult(0, v53);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v44 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v30 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v32 = &v44 - v31;
  v33 = *(v30 + 48);
  v34 = *(v23 + 16);
  v34(&v44 - v31, v51, v22);
  v34(&v32[v33], v52, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34(v26, v32, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v49;
      v35 = v50;
      v37 = v45;
      (*(v49 + 32))(v45, &v32[v33], v50);
      v38 = sub_23DD6E308();
      v39 = *(v36 + 8);
      v39(v37, v35);
      v39(v26, v35);
      goto LABEL_10;
    }

    (*(v49 + 8))(v26, v50);
LABEL_7:
    v38 = 0;
    v23 = v47;
    v22 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v34(v28, v32, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v48 + 8))(v28, a3);
    goto LABEL_7;
  }

  v40 = v48;
  v41 = v44;
  (*(v48 + 32))(v44, &v32[v33], a3);
  v38 = sub_23DD6E308();
  v42 = *(v40 + 8);
  v42(v41, a3);
  v42(v28, a3);
LABEL_10:
  (*(v23 + 8))(v32, v22);
  return v38 & 1;
}

uint64_t _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a1;
  v8[10] = a5;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a8;
  v8[7] = v18;
  v8[8] = v19;
  v11 = type metadata accessor for CodableResult(0, (v8 + 2));
  v8[11] = v11;
  v8[12] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[13] = v12;
  v8[14] = *(a5 - 8);
  v13 = swift_task_alloc();
  v8[15] = v13;
  v8[16] = swift_task_alloc();
  v16 = (a2 + *a2);
  v14 = swift_task_alloc();
  v8[17] = v14;
  *v14 = v8;
  v14[1] = sub_23DD62B28;

  return v16(v12, v13);
}

uint64_t sub_23DD62B28()
{

  if (v0)
  {
    v1 = sub_23DD62CEC;
  }

  else
  {
    v1 = sub_23DD62C38;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23DD62C38()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23DD62CEC()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[9];
  v4 = *(v0[14] + 32);
  v4(v1, v0[15], v2);
  v4(v3, v1, v2);
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t _s20AccountsUISupportXPC13CodableResultO3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v12);
  }

  (*(v7 + 32))(v10, v12, v6);
  (*(v7 + 16))(a2, v10, v6);
  swift_willThrowTypedImpl();
  return (*(v7 + 8))(v10, v6);
}

uint64_t _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v24;
  v8[14] = a1;
  v8[15] = a5;
  v8[18] = *(a5 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v15 = *(a8 + 8);
  v8[23] = v15;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = v22;
  v8[7] = v23;
  v8[8] = v15;
  v16 = type metadata accessor for CodableResult(0, (v8 + 2));
  v8[24] = v16;
  v8[25] = *(v16 - 8);
  v17 = swift_task_alloc();
  v8[26] = v17;
  v20 = (a2 + *a2);
  v18 = swift_task_alloc();
  v8[27] = v18;
  *v18 = v8;
  v18[1] = sub_23DD631EC;

  return v20(v17);
}

uint64_t sub_23DD631EC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_23DD63710;
  }

  else
  {
    v2 = sub_23DD63300;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD63300()
{
  v1 = *(v0 + 224);
  _s20AccountsUISupportXPC13CodableResultO3getxyq_YKF(*(v0 + 192), *(v0 + 176), *(v0 + 112));
  v2 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v0 + 176);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 120);
    (*(v2 + 8))(*(v0 + 208), *(v0 + 192));
    v7 = *(v5 + 32);
    v7(v4, v3, v6);
    v8 = sub_23DD6E4B8();
    if (v8)
    {
      v9 = v8;
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 120));
    }

    else
    {
      v11 = *(v0 + 152);
      v12 = *(v0 + 120);
      v9 = swift_allocError();
      v7(v13, v11, v12);
    }

    *(v0 + 96) = v9;
    MEMORY[0x23EEFEFB0](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311EA0, &qword_23DD6F068);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 160);
      v14 = *(v0 + 168);
      v16 = *(v0 + 136);
      v17 = *(v0 + 144);
      v18 = *(v0 + 120);
      MEMORY[0x23EEFEFA0](v9);
      (*(v17 + 32))(v15, v14, v18);
      (*(v17 + 16))(v16, v15, v18);
      swift_willThrowTypedImpl();
      (*(v17 + 8))(v15, v18);
      v19 = *(v0 + 96);
    }

    else
    {
      MEMORY[0x23EEFEFA0](*(v0 + 96));
      if (qword_27E311E78 != -1)
      {
        swift_once();
      }

      v20 = sub_23DD6E2E8();
      __swift_project_value_buffer(v20, qword_27E311E80);
      MEMORY[0x23EEFEFB0](v9);
      v21 = sub_23DD6E2C8();
      v22 = sub_23DD6E3A8();
      MEMORY[0x23EEFEFA0](v9);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        MEMORY[0x23EEFEFB0](v9);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&dword_23DD59000, v21, v22, "XPC failure: %@", v23, 0xCu);
        sub_23DD63EB0(v24);
        MEMORY[0x23EEFF0E0](v24, -1, -1);
        MEMORY[0x23EEFF0E0](v23, -1, -1);
      }

      swift_getErrorValue();
      sub_23DD6E4C8();
      sub_23DD6E188();

      swift_willThrowTypedImpl();
      v19 = v9;
    }

    MEMORY[0x23EEFEFA0](v19);

    v10 = *(v0 + 8);
  }

  else
  {
    (*(v2 + 8))();

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_23DD63710()
{
  v1 = v0[28];
  v0[12] = v1;
  MEMORY[0x23EEFEFB0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311EA0, &qword_23DD6F068);
  if (swift_dynamicCast())
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[17];
    v5 = v0[18];
    v6 = v0[15];
    MEMORY[0x23EEFEFA0](v1);
    (*(v5 + 32))(v3, v2, v6);
    (*(v5 + 16))(v4, v3, v6);
    swift_willThrowTypedImpl();
    (*(v5 + 8))(v3, v6);
    v7 = v0[12];
  }

  else
  {
    MEMORY[0x23EEFEFA0](v0[12]);
    if (qword_27E311E78 != -1)
    {
      swift_once();
    }

    v8 = sub_23DD6E2E8();
    __swift_project_value_buffer(v8, qword_27E311E80);
    MEMORY[0x23EEFEFB0](v1);
    v9 = sub_23DD6E2C8();
    v10 = sub_23DD6E3A8();
    MEMORY[0x23EEFEFA0](v1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      MEMORY[0x23EEFEFB0](v1);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_23DD59000, v9, v10, "XPC failure: %@", v11, 0xCu);
      sub_23DD63EB0(v12);
      MEMORY[0x23EEFF0E0](v12, -1, -1);
      MEMORY[0x23EEFF0E0](v11, -1, -1);
    }

    swift_getErrorValue();
    sub_23DD6E4C8();
    sub_23DD6E188();

    swift_willThrowTypedImpl();
    v7 = v1;
  }

  MEMORY[0x23EEFEFA0](v7);

  v14 = v0[1];

  return v14();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static CodableResult<>.logAndIgnoreErrors(closure:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_23DD63B48;

  return v8(a1);
}

uint64_t sub_23DD63B48()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_23DD63CE8;
  }

  else
  {
    v2 = sub_23DD63C5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD63C5C()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23DD63CE8()
{
  if (qword_27E311E78 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_23DD6E2E8();
  __swift_project_value_buffer(v2, qword_27E311E80);
  MEMORY[0x23EEFEFB0](v1);
  v3 = sub_23DD6E2C8();
  v4 = sub_23DD6E3A8();
  MEMORY[0x23EEFEFA0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EEFEFB0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_23DD59000, v3, v4, "XPC failure: %@", v7, 0xCu);
    sub_23DD63EB0(v8);
    MEMORY[0x23EEFF0E0](v8, -1, -1);
    MEMORY[0x23EEFF0E0](v7, -1, -1);
    MEMORY[0x23EEFEFA0](v6);
  }

  else
  {

    MEMORY[0x23EEFEFA0](v6);
  }

  (*(*(v0[3] - 8) + 56))(v0[2], 1, 1);
  v10 = v0[1];

  return v10();
}

uint64_t sub_23DD63EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E311EA8, &qword_23DD6F070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DD63F20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23DD63F9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_23DD640C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_23DD642A4(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DD64334(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DD64408(unsigned int *a1, int a2)
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

_WORD *sub_23DD6445C(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
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

uint64_t $DistributedService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v4 = sub_23DD6E108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static $DistributedService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for $DistributedService(0);
  sub_23DD6E158();
  sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  result = sub_23DD6DF98();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
    v8 = sub_23DD6E108();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t type metadata accessor for $DistributedService(uint64_t a1)
{
  result = qword_27E312110;
  if (!qword_27E312110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t $DistributedService.deinit()
{
  v1 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  sub_23DD6E158();
  sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);
  sub_23DD6DFB8();
  v2 = sub_23DD6E108();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedService.__deallocating_deinit()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  if ((is_remote & 1) == 0)
  {
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);
    sub_23DD6DFB8();
  }

  v3 = sub_23DD6E108();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t $DistributedService.hashValue.getter()
{
  sub_23DD6E4E8();
  type metadata accessor for $DistributedService(0);
  sub_23DD6DEDC(&qword_27E3120C0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  sub_23DD6E2F8();
  return sub_23DD6E508();
}

uint64_t $DistributedService.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedService.init(actorSystem:)(a1);
  return v2;
}

uint64_t $DistributedService.init(actorSystem:)(uint64_t a1)
{
  v8 = sub_23DD6E108();
  v3 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem;
  *(v1 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = a1;
  type metadata accessor for $DistributedService(0);
  v9 = a1;
  sub_23DD6E158();
  sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);

  sub_23DD6DFA8();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id, v5, v8);
  v9 = *(v1 + v6);

  sub_23DD6DF58();

  return v1;
}

uint64_t $DistributedService.unownedExecutor.getter()
{
  if ((sub_23DD6E088() & 1) == 0)
  {
    type metadata accessor for $DistributedService(0);
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    return sub_23DD6DF48();
  }

  return v0;
}

uint64_t sub_23DD64E08(uint64_t a1, uint64_t a2)
{
  if ((sub_23DD6E088() & 1) == 0)
  {
    type metadata accessor for $DistributedService(0);
    return sub_23DD6DF48();
  }

  return v2;
}

uint64_t sub_23DD64E5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for $DistributedService(0);
  sub_23DD6E158();
  sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);
  result = sub_23DD6DF98();
  if (!v4 && !result)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
    v10 = sub_23DD6E108();
    (*(*(v10 - 8) + 16))(v8 + v9, a1, v10);
    *(v8 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = v6;

    return v8;
  }

  return result;
}

uint64_t DistributedService<>.checkIsAvailable()(uint64_t a1, uint64_t a2)
{
  v3 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD65018, v3, v2);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_23DD6E098();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  v3[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();
  v7 = swift_checkMetadataState();
  v3[13] = v7;
  v3[14] = *(v7 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD659AC, 0, 0);
}

uint64_t sub_23DD65034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5E2C8;

  return sub_23DD650D4();
}

uint64_t sub_23DD650D4()
{
  v1[3] = v0;
  v2 = sub_23DD6E098();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_23DD6E0E8();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD651F0, 0, 0);
}

uint64_t sub_23DD651F0()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[3] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[10] = v1;
    v0[2] = v1;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);

    sub_23DD6DF88();
    v2 = type metadata accessor for $DistributedService(0);
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990], MEMORY[0x277D7E988]);
    sub_23DD6E018();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311EA0, &qword_23DD6F068);
    sub_23DD6DFF8();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v5 = swift_task_alloc();
    v0[11] = v5;
    v6 = sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_23DD6552C;
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[3];
    v10 = MEMORY[0x277D84950];

    return MEMORY[0x2821FF450](v9, v8, v7, v3, v2, v3, v6, v10);
  }

  else
  {
    v4 = v0[3];

    return MEMORY[0x2822009F8](sub_23DD65018, v4, 0);
  }
}

uint64_t sub_23DD6552C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_23DD65700;
  }

  else
  {
    v2 = sub_23DD65640;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD65640()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23DD65700()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23DD659AC()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311EA0, &qword_23DD6F068);
    sub_23DD6DFF8();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_23DD65D04;
    v7 = v0[12];
    v8 = v0[8];
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[2];
    v12 = MEMORY[0x277D84950];

    return MEMORY[0x2821FF450](v10, v9, v7, v1, v11, v1, v8, v12);
  }

  else
  {
    v13 = (*(v0[3] + 16) + **(v0[3] + 16));
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_23DD65EF8;
    v3 = v0[3];
    v4 = v0[2];

    return v13(v4, v3);
  }
}

uint64_t sub_23DD65D04()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_23DD66048;
  }

  else
  {
    v2 = sub_23DD65E18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD65E18()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23DD65EF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DD66048()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);
  (*(v0[14] + 8))(v0[15], v0[13]);

  v4 = v0[1];

  return v4();
}

uint64_t DistributedService<>.validate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD6DF28, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_23DD6E2B8();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120C8, &qword_23DD6F578);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD66C00, 0, 0);
}

{
  v5 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD67FB0, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_23DD6E208();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D8, &qword_23DD6F6B8);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD68918, 0, 0);
}

{
  v5 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD6DF28, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_23DD6E258();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E8, &qword_23DD6F7F8);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6AD04, 0, 0);
}

uint64_t sub_23DD661AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD66268(a1, a2);
}

uint64_t sub_23DD66268(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_23DD6E2B8();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120C8, &qword_23DD6F578);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_23DD6E0E8();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6644C, 0, 0);
}

uint64_t sub_23DD6644C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);

    sub_23DD6DF88();
    v2 = type metadata accessor for $DistributedService(0);
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990], MEMORY[0x277D7E988]);
    sub_23DD6E018();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v3 = sub_23DD6E2A8();
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_23DD6682C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = MEMORY[0x277D84A98];
    v10 = v0[3];
    v11 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v10, v8, v7, v6, v9, v3, v2, v11);
  }

  else
  {
    v4 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD6DF28, v4, 0);
  }
}

uint64_t sub_23DD6682C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_23DD6DF3C;
  }

  else
  {
    v2 = sub_23DD6DF30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD66C00()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v7 = sub_23DD6E2A8();
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_23DD67020;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v13, v11, v10, v9, v14, v7, v12, v15);
  }

  else
  {
    v16 = (*(v0[5] + 32) + **(v0[5] + 32));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_23DD6DF44;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v16(v5, v3, v4, v2);
  }
}

uint64_t sub_23DD67020()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_23DD6DF24;
  }

  else
  {
    v2 = sub_23DD6DF40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t DistributedService<>.resolve(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD6DF2C, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_23DD6E2B8();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120C8, &qword_23DD6F578);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD67B10, 0, 0);
}

{
  v5 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD68DB4, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_23DD6E208();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D8, &qword_23DD6F6B8);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD69A30, 0, 0);
}

{
  v5 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD6DF2C, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_23DD6E258();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E8, &qword_23DD6F7F8);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6BAF4, 0, 0);
}

uint64_t sub_23DD671C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD67280(a1, a2);
}

uint64_t sub_23DD67280(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_23DD6E2B8();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120C8, &qword_23DD6F578);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_23DD6E0E8();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD67464, 0, 0);
}

uint64_t sub_23DD67464()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);

    sub_23DD6DF88();
    v2 = type metadata accessor for $DistributedService(0);
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990], MEMORY[0x277D7E988]);
    sub_23DD6E018();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D0, &qword_23DD6F608);
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_23DD6682C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = MEMORY[0x277D84A98];
    v10 = v0[3];
    v11 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v10, v8, v7, v6, v9, v3, v2, v11);
  }

  else
  {
    v4 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD6DF2C, v4, 0);
  }
}

uint64_t sub_23DD67B10()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D0, &qword_23DD6F608);
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_23DD67020;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v13, v11, v10, v9, v14, v7, v12, v15);
  }

  else
  {
    v16 = (*(v0[5] + 48) + **(v0[5] + 48));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_23DD6DF44;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v16(v5, v3, v4, v2);
  }
}

uint64_t sub_23DD67FD0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD6808C(a1, a2);
}

uint64_t sub_23DD6808C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_23DD6E208();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D8, &qword_23DD6F6B8);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_23DD6E0E8();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD68270, 0, 0);
}

uint64_t sub_23DD68270()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);

    sub_23DD6DF88();
    v2 = type metadata accessor for $DistributedService(0);
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990], MEMORY[0x277D7E988]);
    sub_23DD6E018();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v3 = sub_23DD6E1F8();
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_23DD6682C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = MEMORY[0x277D84A98];
    v10 = v0[3];
    v11 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v10, v8, v7, v6, v9, v3, v2, v11);
  }

  else
  {
    v4 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD67FB0, v4, 0);
  }
}

uint64_t sub_23DD68918()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v7 = sub_23DD6E1F8();
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_23DD67020;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v13, v11, v10, v9, v14, v7, v12, v15);
  }

  else
  {
    v16 = (*(v0[5] + 64) + **(v0[5] + 64));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_23DD6DF44;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v16(v5, v3, v4, v2);
  }
}

uint64_t sub_23DD68DD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD68E90(a1, a2);
}

uint64_t sub_23DD68E90(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_23DD6E208();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D8, &qword_23DD6F6B8);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_23DD6E0E8();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD69074, 0, 0);
}

uint64_t sub_23DD69074()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);

    sub_23DD6DF88();
    v2 = type metadata accessor for $DistributedService(0);
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990], MEMORY[0x277D7E988]);
    sub_23DD6E018();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E0, &qword_23DD6F748);
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_23DD69468;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = MEMORY[0x277D84A98];
    v10 = v0[3];
    v11 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v10, v8, v7, v6, v9, v3, v2, v11);
  }

  else
  {
    v4 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD68DB4, v4, 0);
  }
}

uint64_t sub_23DD69468()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_23DD6967C;
  }

  else
  {
    v2 = sub_23DD6957C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD6957C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23DD6967C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);
  (*(v0[16] + 8))(v0[17], v0[15]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23DD69A30()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E0, &qword_23DD6F748);
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_23DD69E64;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v13, v11, v10, v9, v14, v7, v12, v15);
  }

  else
  {
    v16 = (*(v0[5] + 80) + **(v0[5] + 80));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_23DD6A0A0;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v16(v5, v3, v4, v2);
  }
}

uint64_t sub_23DD69E64()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_23DD6A234;
  }

  else
  {
    v2 = sub_23DD69F78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23DD69F78()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23DD6A0A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DD6A234()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v0[22] + 8))(v0[23], v0[21]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23DD6A3BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD6A478(a1, a2);
}

uint64_t sub_23DD6A478(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_23DD6E258();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E8, &qword_23DD6F7F8);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_23DD6E0E8();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6A65C, 0, 0);
}

uint64_t sub_23DD6A65C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);

    sub_23DD6DF88();
    v2 = type metadata accessor for $DistributedService(0);
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990], MEMORY[0x277D7E988]);
    sub_23DD6E018();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v3 = sub_23DD6E248();
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_23DD6682C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = MEMORY[0x277D84A98];
    v10 = v0[3];
    v11 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v10, v8, v7, v6, v9, v3, v2, v11);
  }

  else
  {
    v4 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD6DF28, v4, 0);
  }
}

uint64_t sub_23DD6AD04()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v7 = sub_23DD6E248();
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_23DD67020;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v13, v11, v10, v9, v14, v7, v12, v15);
  }

  else
  {
    v16 = (*(v0[5] + 96) + **(v0[5] + 96));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_23DD6DF44;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v16(v5, v3, v4, v2);
  }
}

uint64_t sub_23DD6B1A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD6B25C(a1, a2);
}

uint64_t sub_23DD6B25C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_23DD6E258();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E8, &qword_23DD6F7F8);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_23DD6E0E8();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6B440, 0, 0);
}

uint64_t sub_23DD6B440()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0], MEMORY[0x277D7E980]);

    sub_23DD6DF88();
    v2 = type metadata accessor for $DistributedService(0);
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990], MEMORY[0x277D7E988]);
    sub_23DD6E018();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120F0, &unk_23DD6F890);
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_23DD6682C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = MEMORY[0x277D84A98];
    v10 = v0[3];
    v11 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v10, v8, v7, v6, v9, v3, v2, v11);
  }

  else
  {
    v4 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD6DF2C, v4, 0);
  }
}

uint64_t sub_23DD6BAF4()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120F0, &unk_23DD6F890);
    sub_23DD6E008();
    sub_23DD6DFD8();
    sub_23DD6E0A8();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_23DD67020;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v14 = MEMORY[0x277D84A98];
    v15 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v13, v11, v10, v9, v14, v7, v12, v15);
  }

  else
  {
    v16 = (*(v0[5] + 112) + **(v0[5] + 112));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_23DD6DF44;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v16(v5, v3, v4, v2);
  }
}

uint64_t sub_23DD6BF28(uint64_t a1, uint64_t a2)
{
  sub_23DD6E4E8();
  type metadata accessor for $DistributedService(0);
  sub_23DD6E2F8();
  return sub_23DD6E508();
}

uint64_t sub_23DD6BF88(uint64_t a1)
{
  type metadata accessor for $DistributedService(0);
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  return sub_23DD6E058();
}

uint64_t sub_23DD6C004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23DD6E4E8();
  type metadata accessor for $DistributedService(0);
  sub_23DD6E2F8();
  return sub_23DD6E508();
}

uint64_t sub_23DD6C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a4;
  v7 = *a5;
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_23DD5E2C8;

  return DistributedService<>.checkIsAvailable()(v6, v7);
}

uint64_t sub_23DD6C10C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_23DD6DFC8();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_23DD6DF38;

  return DistributedService<>.validate(_:)(a3, v13, v14, v15);
}

uint64_t sub_23DD6C29C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_23DD6DFC8();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_23DD6DF38;

  return DistributedService<>.resolve(_:)(a3, v13, v14, v15);
}

uint64_t sub_23DD6C42C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_23DD6DFC8();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_23DD6DF38;

  return DistributedService<>.validate(_:)(a3, v13, v14, v15);
}

uint64_t sub_23DD6C5BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_23DD6DFC8();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_23DD6C74C;

  return DistributedService<>.resolve(_:)(a3, v13, v14, v15);
}

uint64_t sub_23DD6C74C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_23DD6C8C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_23DD6DFC8();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_23DD6DF38;

  return DistributedService<>.validate(_:)(a3, v13, v14, v15);
}

uint64_t sub_23DD6CA54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_23DD6DFC8();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_23DD6DF38;

  return DistributedService<>.resolve(_:)(a3, v13, v14, v15);
}

uint64_t sub_23DD6CCBC(uint64_t a1)
{
  result = sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23DD6CDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v5 = sub_23DD6E108();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23DD6CE68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for $DistributedService(0);
  v5 = sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t sub_23DD6CEF4(uint64_t a1)
{
  type metadata accessor for $DistributedService(0);
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  sub_23DD6DEDC(&qword_27E312128, MEMORY[0x277D7E9B8], MEMORY[0x277D7E9C0]);
  return sub_23DD6E068();
}

uint64_t sub_23DD6CFBC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedService(0);
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  sub_23DD6DEDC(&qword_27E312120, MEMORY[0x277D7E9B8], MEMORY[0x277D7E9D0]);
  result = sub_23DD6E078();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23DD6D094(uint64_t a1)
{
  result = sub_23DD6E108();
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

uint64_t sub_23DD6D13C(int a1, int a2, int a3, int a4, int a5, int a6, id a7)
{
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = result;
    v12 = (*(result + 24) + **(result + 24));
    v11 = swift_task_alloc();
    *(v7 + 16) = v11;
    *v11 = v7;
    v11[1] = sub_23DD5E794;

    return v12(a7, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6D27C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 40) + **(result + 40));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_23DD6DF38;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6D48C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 56) + **(result + 56));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_23DD6DF38;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6D69C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 72) + **(result + 72));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_23DD6DF38;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6D8AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 88) + **(result + 88));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_23DD6DF38;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6DABC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 104) + **(result + 104));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_23DD6DF38;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6DCCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 120) + **(result + 120));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_23DD6DF38;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6DEDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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